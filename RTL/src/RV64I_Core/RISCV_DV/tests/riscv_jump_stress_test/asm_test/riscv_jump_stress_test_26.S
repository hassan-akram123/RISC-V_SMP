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
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
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
                  li x0, 0xeaa1e3e
                  li x1, 0xf687c738
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x8
                  li x6, 0xf03acbb9
                  li x7, 0x0
                  li x8, 0x3
                  li x9, 0xfcdbd687
                  li x10, 0x9
                  li x11, 0x2
                  li x12, 0xfda63a2c
                  li x13, 0xf
                  li x14, 0x21a0ac0d
                  li x15, 0xfaf97fc3
                  li x17, 0x80000000
                  li x18, 0xd34d248f
                  li x19, 0xa13014e1
                  li x20, 0xfc82b135
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xfc92326c
                  li x24, 0x5809c0fd
                  li x25, 0xf
                  li x26, 0x80000000
                  li x27, 0xb
                  li x28, 0xfdcc6b67
                  li x29, 0xce385bf0
                  li x30, 0xe
                  li x31, 0x7
                  la x5, user_stack_end
main:             jal          ra, 0f
0:                jal          ra, 11f
1:                jal          sp, 9f
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          tp, 8f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          t1, 6b
8:                jal          ra, 1b
9:                jal          a0, 2b
10:               jal          ra, 12f
11:               jal          ra, 7b
12:               andi         a7, t1, 101
main_1:           jal          ra, 8f
0:                jal          ra, 3f
1:                jal          ra, 14f
2:                jal          t1, 11f
3:                jal          sp, 2b
4:                jal          tp, 6f
5:                jal          t3, 10f
6:                jal          t1, 13f
7:                jal          ra, 5b
8:                jal          t5, 9f
9:                jal          ra, 0b
10:               jal          ra, 12f
11:               jal          ra, 4b
12:               jal          t1, 1b
13:               jal          gp, 7b
14:               andi         s3, a5, 1358
                  nop
                  andi         s9, a5, -1551
                  beq          a2, t0, 9f
                  lui          ra, 688181
                  bltu         s1, ra, 8f
                  blt          t3, s4, 10f
                  sltiu        ra, a3, -1682
                  or           t3, a6, a6
8:                sltu         s0, zero, s5
9:                xor          a7, a1, t6
10:               bgeu         t1, t2, 22f
                  srl          s11, t6, s6
                  or           s9, s11, s5
                  bne          t6, a2, 24f
                  andi         gp, t5, -1517
                  sltiu        t2, a5, 346
                  add          s2, a3, a5
                  andi         tp, s6, 549
                  bge          s11, t3, 30f
                  bge          a6, a6, 23f
                  xor          a4, a6, s9
                  xor          zero, a4, s0
22:               beq          s1, s0, 30f
23:               srai         t5, s0, 13
24:               or           s0, s3, ra
                  add          s9, a7, a3
                  bne          sp, a0, 46f
                  lui          s1, 371789
                  ori          s8, s8, -1049
                  beq          s9, s3, 44f
30:               auipc        gp, 868330
                  or           t2, t3, s2
                  slli         gp, s9, 23
                  bge          s5, sp, 53f
                  and          a5, s7, s4
                  sra          s0, t3, a5
                  slt          s5, t1, t5
                  sub          a2, a3, s0
                  addi         s9, t0, -1784
                  bgeu         s1, t0, 51f
                  bne          a6, s10, 45f
                  bne          a5, a7, 49f
                  slt          a1, s9, a6
                  beq          s9, s9, 46f
44:               xori         t5, s0, 1648
45:               or           gp, t1, t5
46:               auipc        s8, 27886
                  sltu         s3, s1, sp
                  ori          s5, s6, -645
49:               addi         s0, zero, -760
                  addi         s7, ra, -297
51:               sltiu        s0, sp, -1147
                  or           a5, s1, a1
53:               bltu         s8, a3, 66f
                  slti         t6, gp, -630
                  sltiu        s1, t2, 1661
                  auipc        gp, 729449
                  beq          a7, s4, 64f
                  sll          t2, s0, s1
                  bne          s2, s5, 62f
                  blt          a4, sp, 67f
                  xor          s4, gp, tp
62:               sra          t6, t6, s3
                  bgeu         t0, s5, 70f
64:               addi         t2, s2, 319
                  sll          s10, s10, t0
66:               slt          ra, gp, s5
67:               beq          a4, s4, 80f
                  srai         sp, t3, 31
                  xori         t2, t2, -517
70:               srl          t6, s10, s3
                  andi         a7, t4, -1370
                  xor          s11, t3, s11
                  srli         s11, t4, 3
                  ori          s0, t1, -1451
                  bne          s10, a3, 87f
                  srl          tp, a7, a0
                  sltu         s9, gp, a1
                  sll          s4, s4, a2
                  srli         tp, s2, 31
                  slli         s11, a2, 21
                  la           t5, sub_1
                  addi         t5, t5, 348
                  or           s6, a4, s0
                  slti         tp, s2, 1841
                  slti         s0, s4, 1045
                  bgeu         gp, a0, main_j1 #branch to jump instr
                  andi         s4, s8, 806
                  slli         t3, a2, 1
                  srai         a5, s3, 3
                  add          s1, a0, s2
main_j1:          jalr         ra, t5, -347 #jump main -> sub_1
                  xor          ra, a6, a3
                  slli         t6, a0, 19
80:               sll          s4, s6, t4
                  xori         s11, s11, 1711
                  sltu         a0, t5, s1
                  bne          t4, a5, 103f
                  slt          t5, a0, a2
                  sll          gp, s1, a5
                  srl          s2, s1, t1
87:               ori          a1, t1, 1753
                  slt          a5, s2, ra
                  xori         gp, s0, 982
                  xor          t6, a6, s8
                  sub          t5, t6, a7
                  and          t6, s10, t0
                  lui          zero, 127590
                  blt          a1, a7, 113f
                  beq          sp, sp, 112f
                  bge          s1, a2, 98f
                  beq          s4, a0, 103f
98:               andi         a7, a4, -1942
                  bgeu         a5, ra, 109f
                  bltu         s8, s9, 117f
                  srai         a0, sp, 26
                  beq          t3, s10, 107f
103:              srli         s4, s8, 23
                  and          s10, t1, ra
                  ori          zero, a4, -1578
                  beq          a4, a4, 114f
107:              srli         s4, zero, 26
                  addi         s9, ra, 743
109:              slti         gp, t4, -192
                  ori          s3, s3, -964
                  auipc        s6, 195865
112:              andi         s7, s11, -672
113:              sll          zero, t0, ra
114:              or           t1, t5, s10
                  xori         t5, a5, 1202
                  slt          a5, s4, a2
117:              andi         s1, a7, 1902
                  addi         a7, s3, 1754
                  beq          s9, t4, 122f
                  sll          s10, s3, gp
                  srl          ra, t4, s2
122:              srli         a7, a2, 15
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slti         t5, t0, 392
                  or           a5, s6, a0
                  bne          t2, s4, sub_1_stack_p
                  slti         s6, a3, -1843
                  xor          zero, a1, s11
                  sll          s3, a3, a0
                  sra          s11, a3, a4
sub_1_stack_p:    addi         t0, t0, -36
                  slli         s6, t6, 4
                  sltu         s9, t5, t1
                  sw           ra, 4(t0)
                  auipc        s7, 704668
                  srli         s1, s4, 17
                  and          s5, t0, s0
                  sra          a3, t1, s9
                  srli         s11, t2, 23
                  auipc        tp, 413192
                  xor          a4, s1, s1
                  or           a5, ra, s1
                  xori         a5, t6, -919
                  ori          a0, s1, 1040
                  sltiu        zero, t6, 139
sub_1_j3:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  nop
                  andi         t5, a1, -1134
                  addi         a3, t3, 1369
                  bne          t1, t1, sub_1_j5 #branch to jump instr
                  srli         a4, gp, 24
                  srai         s6, a4, 19
                  sra          s7, s0, a0
                  sub          s4, ra, t6
                  sltiu        t2, ra, -1944
                  add          t1, s11, s8
sub_1_j5:         jal          ra, sub_2 #jump sub_1 -> sub_2
sub_1_6:          jal          ra, 8f
0:                jal          ra, 23f
1:                jal          ra, 3f
2:                jal          ra, 30f
3:                jal          ra, 27f
4:                jal          t1, 16f
5:                jal          a5, 6f
6:                jal          t1, 4b
7:                jal          t2, 29f
8:                jal          t1, 22f
9:                jal          ra, 24f
10:               jal          ra, 19f
11:               jal          ra, 20f
12:               jal          ra, 26f
13:               jal          ra, 15f
14:               jal          t1, 7b
15:               jal          ra, 14b
16:               jal          ra, 13b
17:               jal          s4, 1b
18:               jal          t1, 2b
19:               jal          ra, 0b
20:               jal          ra, 25f
21:               jal          ra, 17b
22:               jal          ra, 5b
23:               jal          a2, 11b
24:               jal          ra, 10b
25:               jal          t1, 28f
26:               jal          ra, 9b
27:               jal          ra, 12b
28:               jal          ra, 18b
29:               jal          ra, 21b
30:               xor          s5, t4, a3
sub_1_5:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          t1, 5f
2:                jal          t2, 9f
3:                jal          ra, 8f
4:                jal          t1, 11f
5:                jal          s10, 7f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          ra, 2b
9:                jal          ra, 4b
10:               jal          ra, 6b
11:               nop
sub_1_1:          jal          ra, 19f
0:                jal          s7, 10f
1:                jal          s0, 6f
2:                jal          s3, 25f
3:                jal          ra, 14f
4:                jal          t1, 9f
5:                jal          ra, 20f
6:                jal          ra, 13f
7:                jal          a2, 24f
8:                jal          ra, 3b
9:                jal          s8, 17f
10:               jal          t1, 7b
11:               jal          a5, 12f
12:               jal          t1, 21f
13:               jal          t1, 2b
14:               jal          ra, 5b
15:               jal          gp, 4b
16:               jal          ra, 0b
17:               jal          t1, 8b
18:               jal          a1, 15b
19:               jal          s5, 22f
20:               jal          ra, 16b
21:               jal          s0, 18b
22:               jal          s5, 23f
23:               jal          ra, 11b
24:               jal          ra, 1b
25:               addi         s6, s0, 268
sub_1_4:          jal          ra, 9f
0:                jal          ra, 1f
1:                jal          t1, 2f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          t1, 7f
5:                jal          s4, 4b
6:                jal          ra, 11f
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          ra, 0b
10:               jal          ra, 3b
11:               nop
sub_1_3:          jal          ra, 11f
0:                jal          gp, 2f
1:                jal          sp, 6f
2:                jal          ra, 4f
3:                jal          ra, 14f
4:                jal          ra, 3b
5:                jal          t1, 18f
6:                jal          s10, 12f
7:                jal          gp, 13f
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          t1, 5b
11:               jal          s10, 7b
12:               jal          t1, 16f
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               jal          ra, 17f
16:               jal          s9, 10b
17:               jal          t1, 9b
18:               sltu         a5, a1, a1
sub_1_11:         jal          ra, 17f
0:                jal          gp, 1f
1:                jal          a0, 5f
2:                jal          ra, 16f
3:                jal          ra, 15f
4:                jal          ra, 6f
5:                jal          ra, 10f
6:                jal          sp, 21f
7:                jal          tp, 19f
8:                jal          gp, 22f
9:                jal          ra, 23f
10:               jal          t1, 7b
11:               jal          t2, 8b
12:               jal          ra, 0b
13:               jal          ra, 18f
14:               jal          tp, 12b
15:               jal          tp, 24f
16:               jal          ra, 11b
17:               jal          ra, 4b
18:               jal          ra, 2b
19:               jal          t1, 9b
20:               jal          ra, 13b
21:               jal          ra, 14b
22:               jal          s9, 3b
23:               jal          t1, 20b
24:               sub          a1, t0, a4
sub_1_22:         jal          ra, 12f
0:                jal          ra, 10f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          tp, 7f
4:                jal          t6, 6f
5:                jal          t1, 0b
6:                jal          t1, 1b
7:                jal          a1, 5b
8:                jal          t1, 13f
9:                jal          a3, 11f
10:               jal          sp, 9b
11:               jal          t1, 8b
12:               jal          ra, 3b
13:               jal          gp, 4b
14:               srai         s3, s2, 4
sub_1_10:         jal          ra, 3f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          ra, 0b
3:                jal          s9, 6f
4:                jal          t2, 1b
5:                jal          ra, 8f
6:                jal          t1, 2b
7:                jal          ra, 4b
8:                jal          t1, 10f
9:                jal          sp, 5b
10:               xor          t5, t4, s0
sub_1_9:          jal          ra, 9f
0:                jal          s11, 22f
1:                jal          ra, 4f
2:                jal          a2, 10f
3:                jal          ra, 19f
4:                jal          a5, 25f
5:                jal          ra, 12f
6:                jal          ra, 24f
7:                jal          t1, 21f
8:                jal          ra, 11f
9:                jal          t1, 23f
10:               jal          ra, 26f
11:               jal          ra, 0b
12:               jal          t1, 15f
13:               jal          ra, 5b
14:               jal          a3, 2b
15:               jal          ra, 17f
16:               jal          ra, 20f
17:               jal          t1, 27f
18:               jal          sp, 7b
19:               jal          t5, 16b
20:               jal          s0, 18b
21:               jal          s3, 8b
22:               jal          a7, 14b
23:               jal          t1, 6b
24:               jal          ra, 3b
25:               jal          ra, 28f
26:               jal          ra, 13b
27:               jal          ra, 1b
28:               ori          a3, t5, 1700
sub_1_14:         jal          ra, 8f
0:                jal          ra, 5f
1:                jal          t1, 11f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          gp, 6f
5:                jal          s9, 4b
6:                jal          ra, 2b
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          t1, 12f
11:               jal          gp, 13f
12:               jal          ra, 0b
13:               srli         a3, s9, 1
sub_1_20:         jal          ra, 4f
0:                jal          gp, 6f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          ra, 19f
4:                jal          s9, 1b
5:                jal          gp, 23f
6:                jal          sp, 10f
7:                jal          ra, 12f
8:                jal          ra, 2b
9:                jal          s7, 13f
10:               jal          ra, 25f
11:               jal          ra, 29f
12:               jal          ra, 8b
13:               jal          t1, 7b
14:               jal          ra, 22f
15:               jal          ra, 28f
16:               jal          gp, 27f
17:               jal          sp, 14b
18:               jal          ra, 21f
19:               jal          s5, 16b
20:               jal          tp, 26f
21:               jal          ra, 11b
22:               jal          ra, 24f
23:               jal          ra, 3b
24:               jal          s2, 9b
25:               jal          t1, 30f
26:               jal          ra, 5b
27:               jal          ra, 15b
28:               jal          t1, 17b
29:               jal          s4, 20b
30:               addi         a0, a3, -1527
sub_1_17:         jal          ra, 4f
0:                jal          gp, 9f
1:                jal          tp, 21f
2:                jal          t1, 1b
3:                jal          ra, 14f
4:                jal          ra, 20f
5:                jal          t1, 19f
6:                jal          tp, 13f
7:                jal          sp, 2b
8:                jal          ra, 7b
9:                jal          t1, 6b
10:               jal          s9, 18f
11:               jal          s6, 8b
12:               jal          t1, 15f
13:               jal          t5, 5b
14:               jal          ra, 10b
15:               jal          t1, 3b
16:               jal          s2, 17f
17:               jal          tp, 0b
18:               jal          ra, 11b
19:               jal          sp, 12b
20:               jal          gp, 16b
21:               and          t3, s6, s9
sub_1_15:         jal          ra, 6f
0:                jal          t1, 21f
1:                jal          ra, 12f
2:                jal          a1, 19f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          sp, 17f
6:                jal          a1, 15f
7:                jal          tp, 23f
8:                jal          s0, 24f
9:                jal          ra, 4b
10:               jal          ra, 22f
11:               jal          ra, 10b
12:               jal          t1, 18f
13:               jal          gp, 9b
14:               jal          ra, 5b
15:               jal          t1, 3b
16:               jal          ra, 8b
17:               jal          ra, 2b
18:               jal          ra, 20f
19:               jal          ra, 0b
20:               jal          t1, 16b
21:               jal          ra, 11b
22:               jal          t2, 7b
23:               jal          a1, 1b
24:               sra          ra, t0, a4
sub_1_21:         jal          ra, 17f
0:                jal          ra, 2f
1:                jal          t1, 10f
2:                jal          ra, 16f
3:                jal          s2, 4f
4:                jal          ra, 12f
5:                jal          s11, 0b
6:                jal          ra, 15f
7:                jal          ra, 5b
8:                jal          t1, 1b
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          ra, 20f
12:               jal          ra, 19f
13:               jal          ra, 14f
14:               jal          a2, 6b
15:               jal          s5, 18f
16:               jal          sp, 11b
17:               jal          ra, 13b
18:               jal          ra, 8b
19:               jal          ra, 9b
20:               sltu         s7, t4, a0
sub_1_12:         jal          ra, 14f
0:                jal          gp, 9f
1:                jal          t1, 7f
2:                jal          t1, 6f
3:                jal          ra, 1b
4:                jal          t1, 12f
5:                jal          ra, 15f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          ra, 13f
11:               jal          t6, 8b
12:               jal          ra, 16f
13:               jal          ra, 4b
14:               jal          ra, 5b
15:               jal          ra, 11b
16:               auipc        s7, 274461
sub_1_2:          jal          ra, 6f
0:                jal          a4, 10f
1:                jal          t1, 2f
2:                jal          s4, 0b
3:                jal          ra, 9f
4:                jal          ra, 5f
5:                jal          t1, 1b
6:                jal          t1, 3b
7:                jal          ra, 8f
8:                jal          ra, 4b
9:                jal          ra, 7b
10:               or           s5, s10, t5
sub_1_19:         jal          ra, 8f
0:                jal          ra, 15f
1:                jal          t1, 12f
2:                jal          ra, 13f
3:                jal          tp, 7f
4:                jal          a1, 2b
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          a3, 0b
10:               jal          t1, 6b
11:               jal          s7, 1b
12:               jal          ra, 5b
13:               jal          t1, 10b
14:               jal          t1, 3b
15:               sra          t5, s3, t0
sub_1_23:         jal          ra, 4f
0:                jal          a7, 11f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          t1, 6f
5:                jal          s10, 14f
6:                jal          ra, 10f
7:                jal          t3, 0b
8:                jal          ra, 9f
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          ra, 1b
12:               jal          ra, 5b
13:               jal          s10, 12b
14:               srl          t5, s6, s9
sub_1_13:         jal          ra, 14f
0:                jal          ra, 8f
1:                jal          gp, 15f
2:                jal          ra, 5f
3:                jal          ra, 13f
4:                jal          ra, 16f
5:                jal          t2, 11f
6:                jal          t2, 12f
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               jal          ra, 3b
12:               jal          gp, 0b
13:               jal          t1, 18f
14:               jal          ra, 10b
15:               jal          ra, 17f
16:               jal          ra, 6b
17:               jal          ra, 2b
18:               sub          s5, ra, a6
sub_1_0:          jal          ra, 9f
0:                jal          ra, 12f
1:                jal          ra, 21f
2:                jal          ra, 25f
3:                jal          tp, 8f
4:                jal          a7, 2b
5:                jal          s1, 27f
6:                jal          ra, 14f
7:                jal          a2, 23f
8:                jal          t1, 22f
9:                jal          ra, 3b
10:               jal          t5, 5b
11:               jal          ra, 15f
12:               jal          s1, 28f
13:               jal          t1, 16f
14:               jal          ra, 26f
15:               jal          a0, 20f
16:               jal          s0, 4b
17:               jal          ra, 1b
18:               jal          t1, 19f
19:               jal          s1, 10b
20:               jal          ra, 0b
21:               jal          ra, 13b
22:               jal          tp, 24f
23:               jal          gp, 11b
24:               jal          a2, 6b
25:               jal          tp, 7b
26:               jal          ra, 18b
27:               jal          ra, 17b
28:               srl          ra, s8, t4
sub_1_18:         jal          ra, 11f
0:                jal          ra, 7f
1:                jal          sp, 10f
2:                jal          ra, 15f
3:                jal          t1, 17f
4:                jal          s11, 12f
5:                jal          ra, 18f
6:                jal          t1, 16f
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          a2, 5b
10:               jal          ra, 2b
11:               jal          t1, 13f
12:               jal          t2, 0b
13:               jal          ra, 1b
14:               jal          t1, 3b
15:               jal          ra, 14b
16:               jal          ra, 8b
17:               jal          a1, 4b
18:               xor          t2, t4, s5
sub_1_7:          jal          ra, 13f
0:                jal          t1, 7f
1:                jal          t1, 8f
2:                jal          ra, 6f
3:                jal          t1, 5f
4:                jal          ra, 14f
5:                jal          ra, 15f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          a4, 0b
9:                jal          ra, 11f
10:               jal          ra, 2b
11:               jal          ra, 1b
12:               jal          ra, 10b
13:               jal          s10, 9b
14:               jal          ra, 12b
15:               sra          t1, a0, s11
sub_1_8:          jal          ra, 0f
0:                jal          ra, 12f
1:                jal          ra, 7f
2:                jal          ra, 13f
3:                jal          ra, 9f
4:                jal          gp, 19f
5:                jal          ra, 6f
6:                jal          t2, 4b
7:                jal          ra, 18f
8:                jal          ra, 1b
9:                jal          sp, 10f
10:               jal          ra, 8b
11:               jal          ra, 2b
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          s11, 15b
17:               jal          ra, 11b
18:               jal          s2, 5b
19:               andi         a7, tp, -849
                  slt          a5, t4, a1
                  sra          tp, t4, tp
                  slt          s5, a3, a5
                  srli         zero, a1, 24
                  blt          t4, s5, 5f
5:                slti         a0, ra, 1625
                  beq          tp, s8, 16f
                  auipc        a2, 973259
                  sra          zero, a6, a1
                  bltu         s5, sp, 12f
                  srai         s8, t1, 17
                  bge          s0, a5, 12f
12:               sub          a2, a3, t5
                  beq          a2, tp, 26f
                  sra          s11, a1, s1
                  srl          s2, s0, s2
16:               srl          s6, a3, a1
                  sra          a3, sp, sp
                  add          s10, tp, t2
                  lui          a2, 511666
                  sltu         t1, t6, a4
                  xor          t1, s2, a7
                  and          s5, s7, a7
                  andi         gp, t3, -960
                  lui          a2, 802905
                  or           s6, a7, t6
26:               srli         t5, s7, 10
                  sltu         t1, tp, a3
                  auipc        s11, 441912
                  blt          t4, t2, 33f
                  srl          tp, s10, t4
                  and          a4, s4, t4
                  andi         t6, a5, -103
33:               bgeu         s4, tp, 34f
34:               slli         t5, t4, 2
                  beq          t3, a7, 42f
                  and          s8, a1, t3
                  ori          s6, a5, 822
                  addi         s1, zero, 1363
                  ori          s4, s9, 899
                  bltu         s4, gp, 51f
                  bgeu         t5, tp, 59f
42:               auipc        s2, 392168
                  bne          a5, t1, 48f
                  sltiu        t5, s8, -1039
                  ori          a0, s4, 2042
                  sra          s1, s10, s7
                  beq          a6, t0, 65f
48:               auipc        s11, 696842
                  slt          ra, s4, t1
                  xor          ra, s2, t2
51:               bne          s5, s6, 56f
                  sltu         t6, s8, s11
                  ori          a5, t3, 1654
                  slt          a3, gp, t3
                  xor          s6, s8, s10
56:               and          a7, t4, tp
                  andi         s5, zero, -320
                  srl          a4, a2, sp
59:               sltiu        s7, a6, 96
                  srli         s2, a5, 4
                  bne          s0, zero, 75f
                  lui          s9, 453244
                  xor          s8, sp, sp
                  lui          s11, 131986
65:               sub          s6, tp, sp
                  xori         zero, a4, -977
                  srli         a0, gp, 12
                  sltiu        zero, s6, 212
                  lui          s5, 448948
                  lui          s7, 240047
                  xori         s3, a6, 534
                  bge          s3, t4, 75f
                  bgeu         a7, s3, 76f
                  srai         s0, s1, 27
75:               sll          a0, gp, t5
76:               srli         zero, ra, 21
                  srli         s7, s10, 29
                  add          s9, s7, sp
                  add          a3, t1, s7
                  blt          t2, a0, 89f
                  sll          s9, a0, a0
                  xor          sp, a6, s4
                  sll          a4, s4, t1
                  nop
                  xori         s10, s9, -1240
                  sra          t3, t3, zero
                  sltu         gp, t2, s5
                  srli         t5, a7, 10
89:               sll          a4, s4, a4
                  xor          t2, s7, t3
                  slt          t2, a0, s1
                  sltu         s3, s0, t1
                  nop
                  addi         s5, a6, 977
                  blt          t5, t1, 113f
                  bne          t1, t5, 113f
                  bgeu         a0, t0, 104f
                  andi         a3, ra, -536
                  sltu         s11, a2, sp
                  bgeu         t3, a3, 109f
                  nop
                  xor          a1, s10, t1
                  bge          t1, a4, 121f
104:              beq          t5, s10, 112f
                  bgeu         s7, t0, 117f
                  xor          s6, ra, s7
                  bltu         s8, a3, 120f
                  auipc        s8, 833476
109:              beq          a4, gp, 127f
                  nop
                  xor          a1, s0, tp
112:              ori          tp, t1, 1609
113:              slt          t6, ra, s0
                  lui          tp, 521461
                  bltu         a4, ra, 116f
116:              andi         a2, s11, -1052
117:              slt          s0, a5, s2
                  sra          a5, t3, t2
                  srai         tp, t0, 28
120:              sra          a2, t2, s4
121:              bge          s1, s0, 129f
                  srai         t5, a4, 6
                  or           s10, gp, a2
                  sra          s5, t5, t3
                  sltiu        s1, t2, 1640
                  slt          a2, t4, t4
127:              auipc        t5, 1023305
                  auipc        s5, 56474
129:              srai         s2, sp, 21
                  sub          s1, s0, a1
                  addi         s1, ra, -1381
                  nop
                  sltu         a2, a2, tp
                  srli         s6, a1, 13
                  sll          a2, s0, s6
                  beq          a1, zero, 146f
                  sll          s3, s3, s7
                  xori         ra, a5, -453
                  andi         s10, t5, 598
                  add          zero, s7, s10
                  blt          a4, tp, 159f
                  ori          s10, a4, 1610
                  bltu         sp, gp, 144f
144:              andi         a1, s5, 2034
                  or           tp, s6, s5
146:              xori         a5, s6, 1639
                  andi         zero, gp, 1740
                  add          ra, sp, a1
                  sll          s2, a3, s1
                  andi         t1, s1, 1250
                  ori          tp, a4, -2031
                  or           t3, t2, t4
                  slli         s6, t4, 7
                  auipc        a2, 684655
                  lui          s5, 866964
                  slti         s7, ra, -930
                  srl          s0, s6, zero
                  srl          s3, s8, s10
159:              blt          t0, a3, 176f
                  bgeu         tp, s1, 174f
                  add          s5, sp, a5
                  bgeu         s0, t0, 165f
                  sltu         a1, ra, s4
                  andi         t3, s1, -1032
165:              slt          a5, t3, s0
                  xori         gp, t2, -1793
                  bgeu         t0, s5, 172f
                  sll          s5, a5, a1
                  bgeu         s10, t4, 187f
                  bne          t3, ra, 178f
                  xor          s10, s7, t1
172:              and          s6, s6, s8
                  addi         zero, sp, -1652
174:              addi         a2, zero, 1806
                  slli         s9, gp, 30
176:              nop
                  and          tp, s10, t3
178:              lui          s1, 859651
                  sll          gp, s5, t3
                  xor          s8, t1, a5
                  sra          zero, t6, s11
                  lui          t6, 199763
                  slli         t6, a4, 4
                  srl          s5, a0, sp
                  bltu         s8, s4, 195f
                  addi         s10, a0, 155
187:              beq          a1, t5, 205f
                  bne          t6, a1, 191f
                  bgeu         gp, t6, 202f
                  srl          s5, sp, s9
191:              sltu         s2, s4, t4
                  slti         s7, a4, -1427
                  bne          ra, s6, 194f
194:              add          s3, t1, s7
195:              slti         a5, t5, -151
                  lui          s2, 99833
                  auipc        a4, 466171
                  lui          zero, 328962
                  sra          tp, t3, t0
                  srai         ra, ra, 0
                  bge          t2, a1, 204f
202:              blt          s9, s11, 203f
203:              slli         a5, a5, 11
204:              nop
205:              sra          s10, s11, a7
                  srai         s4, a1, 8
                  srl          s8, a6, s9
                  xor          a3, a2, s0
                  and          t2, s11, a6
                  beq          sp, gp, 223f
                  ori          s8, a7, -1161
                  sltu         s9, t3, s10
                  ori          a4, ra, -1015
                  srai         s5, s5, 23
                  srli         a1, a6, 22
                  add          s4, s11, a7
                  xor          a0, s0, s11
                  xor          s9, a3, tp
                  slti         t3, a3, -1869
                  andi         gp, a6, 1062
                  addi         s1, s5, 1207
                  xori         ra, a4, 1275
223:              slti         tp, t6, -212
                  bgeu         t5, s11, 236f
                  slli         a5, a0, 18
                  slli         s8, sp, 8
                  add          t3, ra, a5
                  sll          s5, t5, gp
                  sltu         gp, a6, zero
                  add          a7, s6, s8
                  srai         s9, s1, 14
                  sra          t2, s3, s3
                  lui          a1, 58429
                  sra          s5, t1, sp
                  sltu         s0, s1, s6
236:              bltu         s8, a5, 247f
                  addi         t1, s0, -195
                  srli         ra, a1, 2
                  lui          sp, 680828
                  beq          s9, a5, 258f
                  bltu         s0, a2, 259f
                  add          tp, a6, s11
                  slt          s7, s2, a2
                  bge          t0, zero, 248f
                  sltiu        s7, s6, 1644
                  beq          s6, s9, 253f
247:              add          t1, s2, sp
248:              xor          gp, t4, t0
                  sll          a0, ra, s6
                  slli         a2, s4, 19
                  sub          a1, a3, t4
                  srl          zero, gp, t1
253:              slti         a2, sp, -254
                  slti         s10, s4, -1413
                  bge          s4, a5, 262f
                  bge          s5, a6, 261f
                  slt          s4, s7, s3
258:              slli         t1, s5, 14
259:              sltiu        s9, a2, 1477
                  xor          a4, t0, s4
261:              ori          a1, a7, 352
262:              sub          s11, a7, t3
                  bltu         a7, t2, 281f
                  slt          tp, a0, a2
                  beq          tp, t5, 274f
                  blt          s1, s5, 267f
267:              beq          t2, a0, 277f
                  bltu         a4, a2, 277f
                  slti         t1, gp, 666
                  lui          t2, 418176
                  add          s2, t3, s9
                  or           t3, s2, a6
                  auipc        a5, 226945
274:              bne          a3, a1, 292f
                  sub          t1, a5, a4
                  addi         s11, t2, 675
277:              sltiu        s9, ra, -1890
                  bge          s4, s1, 286f
                  xori         a3, t6, 1034
                  andi         gp, s10, -1806
281:              bgeu         ra, s10, 299f
                  beq          a6, t3, 287f
                  sra          s10, a3, a6
                  sltiu        zero, s9, 445
                  sltiu        tp, s6, 1846
286:              bgeu         t5, gp, 304f
287:              sub          s2, t2, a6
                  beq          a3, a5, 306f
                  bge          s10, a1, 299f
                  bltu         s11, s3, 291f
291:              srli         s10, s6, 18
292:              ori          s7, s4, -212
                  andi         tp, a0, -252
                  auipc        s6, 584244
                  bgeu         s5, gp, 296f
296:              sltiu        sp, a1, 1751
                  sub          s4, zero, a1
                  addi         s2, a7, -1521
299:              slli         a2, t1, 23
                  bgeu         s0, t1, 313f
                  slli         t2, s10, 31
                  xori         t2, s6, 318
                  srai         gp, gp, 26
304:              sltu         a1, t3, s7
                  srli         ra, a7, 27
306:              ori          gp, s9, -155
                  slt          t3, sp, t0
                  xor          a2, t6, s7
                  ori          s5, t4, 1566
                  srl          t1, t3, a2
                  nop
                  or           a0, a7, t0
313:              sub          a5, sp, a5
                  slli         t1, a3, 13
                  bge          t3, a6, 326f
                  slti         tp, s11, -1699
                  nop
                  sltu         t5, s11, a6
                  bgeu         s7, t2, 320f
320:              slt          s6, s4, s8
                  auipc        s0, 559977
                  bgeu         a2, a5, 325f
                  slt          s5, s3, s3
                  sra          s0, s9, sp
325:              srai         gp, s10, 8
326:              slti         s3, a0, 1565
                  srli         s0, zero, 5
                  srai         s3, t0, 8
                  bge          a5, s3, 343f
                  or           tp, zero, t3
                  bltu         t0, t2, 343f
                  bgeu         s4, s0, 349f
                  slli         s5, a2, 31
                  bltu         s8, a0, 338f
                  srai         sp, s3, 8
                  auipc        a4, 281356
                  lui          s1, 662567
338:              slli         s8, t1, 25
                  srai         ra, ra, 30
                  beq          s8, s1, 347f
                  sltu         a3, s9, sp
                  sub          a0, s0, a7
343:              bne          s0, sp, 361f
                  xori         t2, a3, 950
                  lui          a7, 326992
                  addi         s8, s3, -1361
347:              addi         a0, s8, 1667
                  bltu         s4, s11, 355f
349:              srl          t6, s6, a7
                  srl          s9, gp, s10
                  srl          s5, sp, gp
                  andi         s6, s3, -1232
                  beq          s9, a5, 354f
354:              sltu         zero, s4, t0
355:              ori          s2, tp, 348
                  auipc        s4, 280507
                  sltiu        s3, a7, 423
                  xori         a3, a5, 311
                  and          s8, t1, t6
                  sltiu        s4, zero, 1598
361:              add          a7, sp, s10
                  sll          s0, a0, tp
                  add          a2, a3, s7
                  sltiu        sp, s1, -1473
                  xor          a2, s6, t5
                  slt          t5, t1, s2
                  slt          a3, a0, a1
                  auipc        s5, 813522
                  andi         t1, t1, 899
                  xori         a5, gp, 1190
                  srai         s1, s5, 12
                  slti         a4, t2, -1762
                  auipc        ra, 956080
                  srl          s9, ra, t5
                  or           a3, s0, a4
                  slti         gp, t5, -1630
                  blt          s9, s11, 382f
                  add          a0, ra, s5
                  bgeu         s10, s6, 387f
                  srli         a0, s3, 8
                  lui          s7, 107107
382:              slt          a5, s10, s5
                  slli         ra, ra, 29
                  slt          a5, a0, s4
                  xor          t3, s3, s6
                  bge          s0, s4, 399f
387:              sra          tp, s2, a3
                  srai         s3, s0, 26
                  slti         s7, s1, 1066
                  lui          s5, 534361
                  srl          t5, t4, s11
                  sub          a0, ra, s7
                  bgeu         a5, s3, 402f
                  sub          sp, a0, t3
                  andi         a1, s8, 256
                  bltu         tp, s8, 405f
                  auipc        s5, 490832
                  bgeu         s1, a7, 416f
399:              or           zero, sp, t3
                  andi         a4, t4, -399
                  sub          a5, ra, tp
402:              nop
                  slt          a7, s8, a1
                  blt          t6, t5, 414f
405:              and          s1, t1, gp
                  beq          a7, ra, 409f
                  sub          tp, t0, s6
                  xor          s7, a0, s8
409:              bne          sp, t3, 427f
                  xori         s0, s2, 1130
                  nop
                  slli         t3, a0, 19
                  srai         s7, s8, 7
                  add          t6, t5, s11
                  ori          a1, t4, -1991
                  or           s4, a7, a1
                  srli         t1, a3, 24
                  slli         t1, t4, 10
                  bge          a6, sp, sub_1_j4 #branch to jump instr
                  slt          sp, t4, t3
                  srl          a2, s5, a4
sub_1_j4:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  bltu         a7, a5, 415f
                  slti         s11, t2, 616
414:              bge          a0, s9, 422f
415:              add          s6, t2, tp
416:              blt          ra, a7, 424f
                  bne          s7, a6, 422f
                  sltiu        t3, t1, 1583
                  srli         sp, ra, 6
                  auipc        s9, 915515
                  addi         s6, ra, 1662
422:              beq          t2, t0, 440f
                  bge          s4, a5, 433f
424:              and          s3, s6, a7
                  sra          t1, a3, a2
                  sra          s11, s5, s11
427:              bgeu         t6, s8, 436f
                  sub          a0, a0, ra
                  or           s0, ra, s1
                  bne          t4, s3, 443f
                  bgeu         t0, t2, 449f
                  and          t5, t4, s5
433:              bne          ra, a4, 440f
                  slti         s8, ra, 773
                  and          a7, s3, s11
436:              sub          t2, s9, s4
                  sub          s11, t3, s6
                  and          s2, t0, a2
                  bgeu         s10, s5, 456f
440:              bne          tp, t4, 453f
                  sra          s4, t1, a0
                  ori          s11, s0, -1043
443:              bltu         t3, s8, 451f
                  bge          s9, s0, 462f
                  andi         a4, s3, -1588
                  blt          s11, sp, 449f
                  and          s9, s5, t0
                  xor          t2, s11, s1
449:              sltu         a0, tp, t4
                  lui          s5, 723732
451:              xori         s4, s9, 637
                  sll          s4, a4, s2
453:              and          a5, t3, a6
                  xori         t6, t3, 1727
                  or           tp, t1, s3
456:              srai         a3, ra, 24
                  sltu         s0, s4, s5
                  addi         t1, a1, -845
                  blt          a2, a2, 477f
                  xori         s4, gp, -1711
                  ori          t3, s4, 40
462:              bge          s9, t3, 465f
                  auipc        s9, 956548
                  srai         s0, s11, 26
465:              sll          a7, s1, t2
                  ori          a1, s6, -439
                  slti         t1, s5, -51
                  xor          t2, s0, zero
                  sra          s11, gp, s9
                  beq          t1, s5, 484f
                  slt          s1, ra, gp
                  sltiu        t3, t2, 628
                  beq          s5, gp, 476f
                  srli         s0, a4, 21
                  bltu         s11, a4, 479f
476:              auipc        a5, 17610
477:              xori         s7, a1, -789
                  slli         a7, a7, 31
479:              xor          s3, sp, a2
                  sll          t6, t1, s0
                  xor          zero, s11, t1
                  srai         a7, ra, 21
                  slti         s8, s2, 567
484:              sltu         s8, a4, t4
                  addi         a7, sp, -627
                  add          a2, a7, t5
                  xor          gp, a7, gp
                  bne          a2, t6, 493f
                  slli         a3, a6, 24
                  bge          s3, t2, 501f
                  andi         a3, ra, -1785
                  srl          s2, a6, a5
493:              bne          t5, sp, 511f
                  or           s8, a0, s5
                  srli         t3, s2, 5
                  lui          t2, 35453
                  and          s5, s3, t1
                  slt          a4, zero, s7
                  and          a0, s11, ra
                  sll          a4, s3, s3
501:              nop
                  sra          a0, a1, s9
                  srl          zero, a4, t5
                  nop
                  auipc        s9, 172448
                  bge          t4, sp, 507f
507:              bge          t1, s9, 525f
                  add          gp, s0, a4
                  srl          t1, zero, a7
                  bltu         s1, s6, 522f
511:              or           s1, t6, s7
                  slt          t6, a5, s2
                  bgeu         s3, t3, 522f
                  addi         a0, a5, -103
                  addi         a0, ra, 215
                  slti         s11, t6, -1396
                  auipc        s5, 623375
                  and          s5, t4, a7
                  slli         tp, t0, 2
                  sltiu        a4, a4, -630
                  xori         s3, gp, 798
522:              bge          t2, s3, 523f
523:              addi         s6, s8, 1885
                  sll          t1, t1, s4
525:              blt          a0, a0, 526f
526:              bgeu         t4, s3, 536f
                  sll          tp, s10, s2
                  or           tp, t1, ra
                  srai         ra, t4, 1
                  srl          ra, tp, s1
                  slti         s11, s2, 1314
                  beq          a2, ra, 539f
                  slt          s10, t3, t5
                  slli         t2, s1, 2
                  srli         a4, zero, 22
536:              bgeu         tp, s9, 537f
537:              sltu         sp, s7, a0
                  bgeu         s0, s11, 539f
539:              slt          s6, s6, s5
                  addi         zero, s8, -288
                  beq          s1, t6, 545f
                  nop
                  srl          zero, a5, a1
                  and          t5, s4, t6
545:              xori         a2, t6, -459
                  xor          zero, t5, tp
                  slti         a5, t1, -406
                  bge          tp, sp, 562f
                  add          gp, t2, a4
                  bltu         s0, s7, 560f
                  sltu         t6, t1, tp
                  sra          a5, s5, a7
                  xori         sp, a3, 1136
                  sltu         gp, s1, s0
                  nop
                  slt          a2, a7, a1
                  add          s8, t1, s1
                  lui          s8, 635497
                  slt          a2, a7, s10
560:              srl          s3, t0, a2
                  slli         s8, s6, 23
562:              add          t2, s1, a4
                  blt          s8, s7, 581f
                  slti         s4, zero, 1943
                  andi         t5, a7, 1662
                  bltu         t5, s4, 583f
                  bge          s1, s4, 572f
                  sltiu        s7, s6, 2007
                  srai         s9, t4, 29
                  xor          a5, a1, t5
                  slli         s3, s3, 12
572:              bne          zero, sp, 573f
573:              or           s5, s3, a6
                  srli         ra, a7, 2
                  bne          s8, a7, 580f
                  sub          a7, a1, t6
                  and          ra, a2, s0
                  blt          sp, s6, 588f
                  addi         t5, t2, 1262
580:              sra          t1, s6, zero
581:              addi         s4, s8, 1352
                  sll          s8, s10, s10
583:              bge          zero, t3, 596f
                  bge          zero, t6, 591f
                  andi         zero, s2, -1846
                  xor          a1, a7, sp
                  and          t1, a6, s2
588:              auipc        s9, 756228
                  nop
                  srli         s0, a6, 21
591:              add          a4, a1, t2
                  ori          t2, s4, 1416
                  sll          a3, a3, a0
                  or           s0, ra, s8
                  sll          sp, s5, s2
596:              nop
                  sltiu        t3, a3, -111
                  beq          a5, s11, 599f
599:              bgeu         s6, s11, 602f
                  beq          t5, gp, 618f
                  addi         t2, s11, 964
602:              sll          t6, t4, t5
                  beq          a6, s7, 621f
                  bge          zero, t2, 612f
                  blt          a1, s5, 614f
                  sltu         s11, s7, s11
                  slti         s1, s11, -1053
                  srl          a2, t5, s3
                  or           t2, a0, a3
                  bne          t5, gp, 628f
                  bne          s3, t4, 612f
612:              or           s9, s9, t1
                  beq          a5, s10, 616f
614:              sltiu        a7, s0, -1947
                  and          t1, t0, s9
616:              sltiu        t1, t5, 865
                  auipc        a5, 421161
618:              sra          zero, a2, a6
                  auipc        s9, 608229
                  xori         a1, a5, -1974
621:              beq          a6, s6, 628f
                  blt          s8, s1, 631f
                  andi         s9, s9, -1734
                  bgeu         a5, s4, 627f
                  auipc        t6, 945408
                  lui          t6, 463530
627:              blt          a4, a4, 645f
628:              sra          s9, a4, sp
                  andi         ra, s8, -541
                  sll          s2, t2, t2
631:              ori          s2, t5, -259
                  bne          t3, s9, 644f
                  xori         a5, t2, 346
                  ori          t2, s6, -543
                  bltu         t3, s9, 646f
                  slli         s10, s10, 12
                  bge          s8, a1, 650f
                  sub          t6, a3, t1
                  bltu         t1, s2, 657f
                  bne          s6, t1, 648f
                  slli         s10, t2, 14
                  add          s11, a1, a7
                  lui          s1, 1032689
644:              sltu         s10, a5, a4
645:              sub          s11, t3, s2
646:              srl          s3, gp, t2
                  srl          a7, t5, a0
648:              ori          s5, t5, 1
                  auipc        s10, 1027615
650:              xori         t5, t6, 430
                  bltu         a6, s5, 660f
                  ori          s9, t6, -1993
                  sll          t2, t4, s5
                  and          a3, a1, s3
                  lui          tp, 635549
                  bgeu         a5, a4, 666f
657:              sltiu        gp, s10, -1428
                  addi         t2, zero, -193
                  nop
660:              and          a7, t1, s7
                  sltu         s11, t3, t5
                  bge          t2, s10, 680f
                  addi         a1, sp, -46
                  and          zero, s8, t6
                  sll          s3, s1, s3
666:              slt          a1, a3, t4
                  sub          a1, t3, s6
                  bgeu         a7, a5, 676f
                  auipc        s1, 581938
                  sltiu        t2, a6, 624
                  bne          t5, zero, 689f
                  sub          s6, s10, t1
                  auipc        gp, 998687
                  sra          s4, s7, s6
                  lui          s3, 706081
676:              sltu         s11, s10, s5
                  ori          s5, t3, -280
                  bge          s11, a2, 683f
sub_1_16:         jal          ra, 3f
0:                jal          t1, 6f
1:                jal          ra, 10f
2:                jal          ra, 24f
3:                jal          t1, 7f
4:                jal          s4, 2b
5:                jal          a7, 28f
6:                jal          tp, 4b
7:                jal          a5, 27f
8:                jal          ra, 19f
9:                jal          ra, 12f
10:               jal          ra, 18f
11:               jal          t1, 0b
12:               jal          a4, 13f
13:               jal          t1, 25f
14:               jal          ra, 22f
15:               jal          a3, 11b
16:               jal          ra, 17f
17:               jal          t1, 1b
18:               jal          t1, 5b
19:               jal          a1, 26f
20:               jal          t1, 14b
21:               jal          ra, 9b
22:               jal          ra, 30f
23:               jal          ra, 29f
24:               jal          t1, 8b
25:               jal          ra, 15b
26:               jal          s0, 16b
27:               jal          sp, 23b
28:               jal          t1, 20b
29:               jal          ra, 21b
30:               srai         a4, s11, 19
                  slti         t1, gp, 1069
680:              slt          s5, t3, s8
                  sra          a2, a6, s10
                  sll          ra, sp, s11
683:              xori         a5, a5, -1946
                  lui          s4, 877769
                  bltu         a2, ra, 696f
                  bne          s4, a0, 689f
                  srli         a2, tp, 20
                  sra          sp, tp, t5
689:              ori          t3, a3, -1796
                  ori          s0, s4, -1105
                  and          s2, t6, s11
                  sub          s1, a7, s3
                  lui          sp, 838415
                  blt          gp, s8, 706f
                  and          s9, t5, sp
696:              nop
                  andi         s4, s2, 202
                  ori          sp, a7, -1348
                  auipc        s3, 660645
                  xori         a3, s2, -1688
                  slti         s2, s1, -1296
                  ori          t5, a2, 1902
                  sra          s7, s11, s11
                  slti         ra, t6, -87
                  sltiu        gp, t6, 1493
706:              xor          zero, a2, t3
                  or           a3, s9, s6
                  bgeu         s8, zero, 718f
                  blt          t4, a4, 716f
                  sub          a7, s8, a5
                  srli         a5, gp, 19
                  ori          a7, s0, -1456
                  slt          s7, t4, a2
                  blt          s7, s0, 727f
                  add          t6, t6, s4
716:              srli         s2, t0, 7
                  slti         s3, s10, 568
718:              slli         s0, a0, 27
                  slli         a7, t5, 31
                  bltu         a7, t2, 721f
721:              lui          t1, 164025
                  andi         t6, s11, 443
                  lui          s0, 1003012
                  srai         s4, zero, 15
                  add          s3, sp, gp
                  bgeu         a1, t5, 733f
727:              lui          t3, 184053
                  auipc        t2, 707576
                  srai         t3, t3, 5
                  sltu         s2, ra, ra
                  slt          t5, ra, ra
                  srl          s4, a3, s0
733:              bge          s2, s5, 734f
734:              sll          s3, s7, a5
                  and          s2, a6, s10
                  and          sp, t6, ra
                  lui          s10, 136403
                  sll          a4, s8, s2
                  auipc        gp, 861089
                  bgeu         ra, a3, 757f
                  srli         s3, sp, 4
                  slti         a0, t3, 710
                  blt          tp, t1, 746f
                  lui          t2, 591096
                  andi         s5, a4, -662
746:              lui          a0, 115282
                  sub          t2, s1, s10
                  andi         t5, t1, -165
                  beq          zero, ra, 750f
750:              slti         s5, t5, 642
                  srl          a0, s11, a4
                  blt          s10, s0, 756f
                  add          a4, ra, t3
                  slli         s5, t5, 12
                  auipc        s10, 17005
756:              add          a7, s6, t4
757:              sll          s5, sp, ra
                  sra          gp, t6, s10
                  xor          s1, t4, s8
                  bne          t2, a1, 778f
                  ori          s5, t4, 867
                  bltu         s2, s5, 770f
                  srai         s8, s10, 18
                  srli         a0, ra, 6
                  ori          a4, t1, 1824
                  bgeu         a7, t3, 779f
                  slti         s11, s11, 382
                  sll          a1, s9, gp
                  auipc        s1, 290492
770:              xori         tp, t0, -1786
                  bltu         t5, t2, 774f
                  bgeu         a5, gp, 790f
                  srai         s5, t3, 13
774:              slti         a7, t5, 377
                  bge          s2, ra, 793f
                  bgeu         t0, s5, 790f
                  lui          t6, 945838
778:              srl          t5, s3, sp
779:              blt          s0, s1, 780f
780:              sll          a1, a5, s6
                  srai         s0, a3, 0
                  slt          t6, a6, a5
                  auipc        s10, 408375
                  bltu         a4, sp, 789f
                  auipc        s9, 310442
                  bne          t6, sp, 804f
                  bne          s2, s0, 796f
                  sub          t2, s7, a2
789:              add          a7, s0, sp
790:              nop
                  andi         s7, t6, -279
                  ori          a2, a6, -902
793:              beq          s2, t3, 806f
                  xor          s9, t2, s9
                  nop
796:              slt          a5, ra, a3
                  nop
                  slli         s6, t3, 1
                  sub          t6, ra, t0
                  add          s7, tp, t5
                  bne          t1, a0, 802f
802:              ori          s6, s7, 1063
                  xor          s11, t0, t4
804:              xori         a2, t6, 1740
                  bltu         zero, s11, 810f
806:              lui          a1, 131473
                  slli         tp, a6, 3
                  xori         a5, s8, 394
                  srai         s11, s10, 14
810:              sltu         a3, t6, s6
                  beq          s5, s6, 816f
                  srai         t2, sp, 29
                  srli         a3, a0, 9
                  auipc        s10, 597188
                  auipc        t2, 885051
816:              sll          s4, zero, s10
                  srl          s10, a0, t1
                  or           s7, s5, a5
                  nop
                  or           t3, gp, s3
                  beq          zero, t5, 835f
                  sra          a1, ra, a1
                  or           s2, s4, s11
                  slti         sp, t1, -314
                  nop
                  nop
                  xor          gp, t3, tp
                  addi         t3, s7, -1256
                  blt          a3, s3, 839f
                  beq          a3, gp, 847f
                  srli         s11, s11, 31
                  slli         s11, a6, 22
                  sll          zero, ra, zero
                  auipc        s2, 929088
835:              lui          a2, 841323
                  bltu         s10, s4, 845f
                  slli         t2, s4, 26
                  sub          t3, s9, a2
839:              sltiu        zero, a5, 511
                  slti         ra, s2, 841
                  beq          a4, gp, 859f
                  sll          t2, s1, tp
                  bge          t4, s11, 853f
                  add          a7, tp, a1
845:              slli         a4, t5, 28
                  srli         a7, s0, 28
847:              and          s9, s10, a6
                  sltu         s4, t0, s11
                  slti         a0, s4, 2007
                  nop
                  lui          s4, 515718
                  and          a5, s7, zero
853:              slti         t6, t4, 1612
                  xor          ra, a7, s2
                  sub          zero, t6, a1
                  srai         t1, a1, 6
                  srl          s4, s8, sp
                  sltu         a1, s11, s5
859:              slt          t3, t1, t2
                  nop
                  sltu         a5, sp, a7
                  blt          a5, a5, 863f
863:              sll          s9, s8, a2
                  srl          t5, t1, t4
                  sll          gp, a5, t0
                  sra          t3, t0, t4
                  bltu         s4, a5, 885f
                  sra          s8, a2, s5
                  xor          s8, s0, sp
                  auipc        sp, 181617
                  blt          zero, s11, 879f
                  add          s7, s3, s9
                  andi         a7, zero, -985
                  sub          s4, s3, gp
                  add          a7, sp, a6
                  auipc        s8, 191522
                  and          t5, s2, t0
                  auipc        zero, 33998
879:              sub          tp, sp, a5
                  srai         a0, a7, 7
                  sub          a7, tp, gp
                  sra          s10, s10, ra
                  srl          s4, s4, a0
                  bne          a4, t1, 892f
885:              beq          s11, a7, 892f
                  srli         s10, t0, 27
                  sltiu        s6, a0, 1803
                  slt          t6, t2, t1
                  or           s10, t5, a0
                  bne          a7, a3, 908f
                  slli         t5, t0, 18
892:              sub          s11, a4, a6
                  srai         a5, a1, 25
                  nop
                  srl          a4, s0, a6
                  bne          t3, s9, 914f
                  bge          s9, t6, 900f
                  sltu         sp, s8, a3
                  sltu         s11, a2, s4
900:              auipc        s9, 374883
                  auipc        t2, 391343
                  and          zero, a5, s3
                  bltu         a4, tp, 912f
                  and          a7, a6, a2
                  sltu         s3, ra, a2
                  andi         s7, gp, 918
                  addi         a2, a1, 317
908:              blt          s2, t5, 919f
                  srli         a2, s11, 14
                  srli         s4, a4, 7
                  xori         s9, s8, 436
912:              slti         t1, s11, 815
                  sltu         s9, t0, t4
914:              andi         a4, s2, 1
                  auipc        s2, 766132
                  bltu         s8, t6, 934f
                  sll          s10, a5, a3
                  ori          gp, zero, 1304
919:              andi         a2, s4, -189
                  slti         s8, s11, -706
                  andi         ra, a2, -1660
                  sll          s6, tp, a1
                  or           s9, s5, t0
                  sll          s6, tp, t5
                  srai         s8, s10, 21
                  slti         s3, sp, -1812
                  sub          s8, s8, s6
                  addi         gp, s0, 25
                  sub          s1, s7, s7
                  andi         s1, s4, -828
                  sltiu        a5, s3, -770
                  addi         t6, a4, -1549
                  beq          s3, a3, 936f
934:              srl          a2, a1, t5
                  slti         zero, s1, 1547
936:              blt          s10, t4, 937f
937:              and          t2, zero, t4
                  beq          s1, t1, 941f
                  add          sp, t5, t6
                  ori          s4, t6, 927
941:              sll          zero, a0, s6
                  srl          s7, a5, t0
                  srl          s4, s0, a1
                  bgeu         gp, s8, 962f
                  slti         s4, sp, 1290
                  beq          t3, a6, 947f
947:              andi         s10, t4, 1218
                  bgeu         s9, t0, 952f
                  bltu         s8, tp, 956f
                  xor          s11, s2, t4
                  blt          s0, a6, 964f
952:              andi         s5, sp, 67
                  sll          zero, s4, a6
                  sll          tp, zero, ra
                  srai         t5, s7, 24
956:              addi         a0, ra, -1362
                  sra          s8, s1, s7
                  srai         a4, a7, 0
                  add          t2, a3, a4
                  sltiu        a2, zero, 1449
                  xor          gp, s4, a0
962:              slt          s2, t4, a3
                  slt          s3, t3, s11
964:              srli         t2, a6, 7
                  ori          a0, t5, -239
                  bltu         s5, t5, 978f
                  or           a4, s5, a1
                  sra          ra, a0, s3
                  xori         s11, t2, 2046
                  sltu         ra, s0, a1
                  blt          t2, a7, 972f
972:              slli         s1, a1, 10
                  xor          a3, ra, a0
                  auipc        a5, 1022447
                  lui          a0, 175181
                  srl          ra, t5, sp
                  sltiu        s1, t0, -656
978:              srl          tp, gp, s11
                  beq          t0, s11, 997f
                  srl          tp, s4, a3
                  slti         t3, s3, -703
                  slti         a4, s2, 1607
                  and          t6, s5, s7
                  srli         s3, tp, 2
                  auipc        s9, 558589
                  xori         s11, t6, 669
                  xor          s9, s1, a0
                  lui          t5, 998864
                  auipc        s0, 697118
                  xor          a1, s5, a1
                  nop
                  srli         t6, t0, 9
                  ori          t6, gp, -1672
                  or           s3, a3, s3
                  bgeu         t6, a1, 1003f
                  andi         s7, zero, -644
997:              xor          t1, a7, a6
                  sll          s10, s11, s3
                  xor          s9, a6, a2
                  blt          sp, gp, 1007f
                  or           s0, t0, t2
                  slli         sp, t0, 4
1003:             ori          s9, a2, 1489
                  beq          t0, gp, 1009f
                  beq          t5, s6, 1015f
                  bne          gp, t2, 1015f
1007:             sltiu        s5, s9, 1010
                  xori         t6, s6, -1775
1009:             ori          s11, t0, -2040
                  or           t1, a4, s2
                  or           t1, s0, s5
                  sra          s2, t0, s1
                  or           t1, tp, s10
                  sltiu        s9, s1, 855
1015:             auipc        s11, 173332
                  auipc        s0, 124832
                  xori         s11, ra, -1010
                  andi         sp, t4, 1491
                  xori         tp, a1, 1635
                  bne          gp, a1, 1031f
                  and          a4, s11, s0
                  srli         ra, t3, 24
                  sra          s8, t5, a7
                  sra          s4, tp, t6
                  slt          s7, s2, s8
                  add          zero, t0, s4
                  or           s0, a2, s5
                  lui          a4, 1033633
                  sltu         a5, s3, a0
                  add          zero, a1, sp
1031:             slli         t3, s3, 3
                  xori         ra, s7, -746
                  nop
                  add          t2, s2, t0
                  addi         sp, t1, 296
                  srli         a5, a1, 0
                  xor          t3, a0, tp
                  sra          s8, t1, t3
                  blt          tp, t0, 1057f
                  sra          s11, t3, s3
                  andi         s9, s8, 1385
                  ori          zero, s9, 1243
                  blt          a3, s11, 1057f
                  blt          t6, t6, 1062f
                  beq          gp, s11, 1048f
                  sltiu        a4, a4, 1246
                  sltiu        a7, t4, -171
1048:             sltu         s8, ra, t2
                  addi         t1, a1, 1077
                  slli         sp, s5, 12
                  blt          gp, sp, 1060f
                  nop
                  sltiu        s1, a0, 1016
                  sltiu        s10, a7, 1080
                  sra          a5, t0, s5
                  xori         t5, s2, -818
1057:             andi         t5, t3, -1169
                  lui          s3, 105019
                  andi         s6, a6, -1771
1060:             or           a0, s0, tp
                  xori         a1, t3, -1258
1062:             bne          a7, t1, 1079f
                  bgeu         zero, sp, 1073f
                  slti         s11, s10, -1242
                  xori         s7, s8, 140
                  sltiu        s5, s5, 561
                  or           t5, t1, a7
                  nop
                  sra          a5, s3, t1
                  slt          s11, gp, a4
                  slti         a1, s1, -1127
                  srl          s10, a7, t4
1073:             or           t5, s11, sp
                  slli         s2, t0, 20
                  nop
                  blt          gp, s6, 1089f
                  sub          a0, s10, s9
                  xor          s11, s10, s11
1079:             srl          zero, s11, gp
                  and          a3, a0, t1
                  or           t2, a2, sp
                  bne          s6, a6, 1085f
                  srai         tp, s7, 28
                  auipc        s6, 335801
1085:             addi         s4, sp, 101
                  sltiu        gp, t1, -1753
                  sra          sp, s5, a3
                  slti         s3, s8, -496
1089:             sltiu        gp, s11, 896
                  ori          s4, a7, -1338
                  sltiu        ra, s4, -984
                  add          s10, ra, gp
                  srl          s3, t2, s4
                  sltu         gp, s6, a0
                  nop
                  sll          a3, a1, s0
                  auipc        t5, 772119
                  sub          s3, a3, zero
                  xor          sp, a3, s10
                  bgeu         t0, t5, 1101f
1101:             nop
                  sra          s0, a6, s8
                  slti         t6, s5, 530
                  and          s8, s1, a7
                  sltiu        s10, t4, -147
                  sltiu        sp, zero, 1706
                  xori         zero, s0, 89
                  sll          ra, gp, a6
                  auipc        s3, 640553
                  srai         t6, a3, 28
                  bgeu         a3, t1, 1129f
                  auipc        gp, 529384
                  blt          s6, a7, 1117f
                  srl          s2, s11, s8
                  blt          a0, s4, 1118f
                  blt          t1, s9, 1121f
1117:             sll          t6, t0, a5
1118:             srai         s0, s5, 24
                  bgeu         zero, a3, 1127f
                  auipc        s8, 771490
1121:             srai         s8, a7, 26
                  slti         s1, s4, -748
                  lui          a2, 416740
                  add          s1, sp, ra
                  sltu         t3, s5, a5
                  xor          gp, a0, a0
1127:             auipc        s7, 196360
                  add          zero, s7, a7
1129:             xor          s7, a2, a7
                  xor          t3, s6, s6
                  srai         s7, s4, 17
                  srl          s10, zero, t1
                  addi         ra, t1, -666
                  ori          t5, a0, 1583
                  auipc        a7, 338756
                  sltiu        a3, s7, 1113
                  lui          s2, 771731
                  bne          a7, s11, 1150f
                  srli         a5, t1, 26
                  bge          a4, a0, 1141f
1141:             bne          t3, s4, 1154f
                  bge          sp, s9, 1160f
                  beq          t3, s4, 1144f
1144:             bge          a6, zero, 1162f
                  bltu         s10, s5, 1152f
                  sub          s8, a7, s11
                  nop
                  sll          a5, s6, sp
                  slli         a7, s11, 0
1150:             andi         a3, zero, 1002
                  sll          s10, t5, a5
1152:             sltu         s2, t2, s3
                  bne          s0, s6, 1170f
1154:             lui          a2, 715728
                  sltiu        s10, a5, 984
                  andi         s11, a0, -1631
                  sltu         s6, a4, ra
                  slti         s2, t3, 282
                  ori          t2, s0, -1061
                  sltiu        s7, s9, 393
                  bgeu         t1, t5, sub_1_j2 #branch to jump instr
                  addi         t3, a7, 1292
                  xori         s7, a5, -1300
                  srli         t5, s11, 3
                  ori          s10, s9, -792
                  xor          s11, a4, s2
                  andi         s11, s11, -731
sub_1_j2:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  xori         s6, ra, 1213
                  add          s5, s9, a6
1160:             lui          t2, 697429
                  slti         s11, sp, -1644
1162:             srai         s8, sp, 22
                  bge          s11, a5, 1175f
                  ori          gp, t0, 1460
                  srl          s6, t5, a6
                  sra          a3, s11, t0
                  ori          t2, s0, 1793
                  add          s11, zero, s9
                  bltu         a6, a2, 1170f
1170:             ori          s9, a0, -1599
                  sll          a2, s9, s7
                  sltu         s5, a7, s7
                  sll          gp, s7, t6
                  andi         s8, a1, 568
1175:             srai         t2, t1, 4
                  addi         a1, t3, 1964
                  bgeu         t3, zero, 1188f
                  srli         a3, s0, 20
                  bgeu         s1, a3, 1184f
                  bltu         s4, s11, 1190f
                  sll          s2, zero, s2
                  nop
                  nop
1184:             sra          s8, a3, zero
                  beq          t5, t5, 1203f
                  nop
                  sltu         zero, s5, s6
1188:             lui          a1, 712903
                  bgeu         ra, s3, 1197f
1190:             and          s3, t3, t1
                  srai         sp, t2, 30
                  or           s8, a4, a3
                  nop
                  srai         a1, gp, 2
                  beq          t5, ra, 1205f
                  and          a5, t5, a6
1197:             sll          s2, a2, a3
                  ori          t6, a5, 971
                  nop
                  blt          s2, tp, 1201f
1201:             slli         t6, s7, 18
                  add          s8, t2, s11
1203:             sub          s10, a5, s10
                  nop
1205:             or           s7, a4, s11
                  bne          t4, s9, 1207f
1207:             srl          a4, a4, a5
                  slt          s5, ra, ra
                  srai         s4, gp, 0
                  blt          t4, s5, 1211f
1211:             or           a1, s1, s5
                  sltiu        s9, s10, 1918
                  lw           ra, 4(t0)
                  add          s9, a6, a4
                  slt          t6, t6, t6
                  addi         t0, t0, 36
                  nop
                  lui          s7, 144898
1785:             addi x22, x1, 0
1785:             jalr x22, x22, 0
sub_2:            srl          t3, zero, t2
                  srai         t1, a1, 18
                  addi         t0, t0, -52
                  sw           ra, 4(t0)
                  auipc        s0, 942763
sub_2_3:          jal          ra, 5f
0:                jal          ra, 13f
1:                jal          ra, 0b
2:                jal          t1, 15f
3:                jal          ra, 18f
4:                jal          ra, 10f
5:                jal          sp, 12f
6:                jal          ra, 14f
7:                jal          ra, 6b
8:                jal          s6, 19f
9:                jal          t1, 2b
10:               jal          ra, 3b
11:               jal          ra, 17f
12:               jal          ra, 9b
13:               jal          a4, 7b
14:               jal          ra, 11b
15:               jal          ra, 4b
16:               jal          ra, 1b
17:               jal          t1, 8b
18:               jal          ra, 16b
19:               auipc        gp, 183975
sub_2_5:          jal          ra, 4f
0:                jal          ra, 18f
1:                jal          ra, 13f
2:                jal          ra, 6f
3:                jal          t5, 5f
4:                jal          ra, 8f
5:                jal          t1, 11f
6:                jal          s2, 24f
7:                jal          ra, 10f
8:                jal          ra, 21f
9:                jal          ra, 16f
10:               jal          s4, 23f
11:               jal          s4, 9b
12:               jal          ra, 22f
13:               jal          ra, 14f
14:               jal          sp, 12b
15:               jal          t1, 2b
16:               jal          ra, 19f
17:               jal          s2, 0b
18:               jal          t1, 20f
19:               jal          ra, 1b
20:               jal          ra, 3b
21:               jal          ra, 17b
22:               jal          t1, 7b
23:               jal          t1, 15b
24:               nop
sub_2_2:          jal          ra, 7f
0:                jal          ra, 3f
1:                jal          sp, 14f
2:                jal          a1, 0b
3:                jal          ra, 1b
4:                jal          t1, 12f
5:                jal          ra, 6f
6:                jal          sp, 10f
7:                jal          gp, 8f
8:                jal          t1, 13f
9:                jal          ra, 11f
10:               jal          t1, 4b
11:               jal          t1, 2b
12:               jal          ra, 9b
13:               jal          t1, 5b
14:               sra          s2, a7, s7
sub_2_4:          jal          ra, 2f
0:                jal          ra, 1f
1:                jal          t5, 6f
2:                jal          ra, 10f
3:                jal          ra, 13f
4:                jal          gp, 14f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          sp, 16f
10:               jal          ra, 12f
11:               jal          s8, 5b
12:               jal          ra, 3b
13:               jal          ra, 11b
14:               jal          ra, 18f
15:               jal          a2, 17f
16:               jal          t6, 15b
17:               jal          t1, 7b
18:               srai         t3, t3, 20
                  lui          t5, 847281
                  sll          s2, a0, a7
                  nop
                  lui          s3, 624202
                  srli         sp, tp, 20
                  bne          s5, zero, 18f
                  add          t1, ra, a4
                  sltiu        s11, a7, -553
                  beq          t0, s1, 9f
9:                addi         a0, s7, 435
                  slli         tp, gp, 16
                  sltu         a7, s8, t5
                  lui          t6, 52846
                  xor          t3, t2, t5
                  sll          s10, s5, s9
                  bne          s8, t2, 19f
                  bne          s11, a0, 35f
                  slt          s2, t5, s5
18:               bge          t0, zero, 23f
19:               srl          t5, ra, a7
                  or           tp, tp, sp
                  xori         s6, t3, -731
                  xor          s1, a0, a3
23:               blt          t4, s5, 43f
                  slli         zero, a1, 29
                  and          s11, s1, s6
                  ori          s0, t2, 1347
                  slli         gp, s9, 27
                  sra          s1, a7, s6
                  bne          a4, a6, 30f
30:               srli         s1, a1, 7
                  and          a7, a3, s7
                  bltu         s1, a4, 37f
                  blt          sp, a1, 53f
                  sltiu        s1, t2, 832
35:               or           s4, t3, a3
                  sltu         a5, a0, s0
37:               sltu         a7, sp, ra
                  slt          s5, s9, s1
                  bne          s8, s6, 46f
                  or           s6, tp, t2
                  and          s1, zero, t3
                  sub          s10, t6, s9
43:               lui          a4, 126824
                  lui          s4, 711745
                  srli         s11, a7, 17
46:               sub          t1, s6, a1
                  sltiu        gp, s6, 1011
                  sltiu        t2, s7, 1373
                  xori         s0, a1, 150
                  slti         a0, a6, 835
                  lui          s4, 801524
                  or           s8, a1, s11
53:               addi         t6, t0, 962
                  sltu         t2, zero, s7
                  blt          s10, s6, 74f
                  slti         ra, ra, 927
                  sll          s1, s1, a6
                  beq          a0, t4, 62f
                  xor          t6, a0, a2
                  add          a2, a0, t5
                  add          ra, s1, a3
62:               xori         a2, t5, 1122
                  addi         s6, a1, -194
                  or           t5, t2, t3
                  bne          s3, a4, 69f
                  slli         s6, a1, 23
                  andi         a0, t1, 556
                  sll          s11, a2, s10
69:               xor          a7, s1, s1
                  ori          s11, a1, 1042
                  sra          a3, s8, s3
                  bne          zero, s0, 92f
                  bge          ra, a5, 93f
74:               srai         t3, gp, 4
                  sltiu        s5, s9, 2045
                  xori         a3, s9, -1513
                  sra          s6, s1, s3
                  slli         s0, t2, 4
                  sra          a3, s0, s10
                  bne          zero, a5, 88f
                  add          s8, tp, ra
                  sltu         a0, t6, a3
                  srai         s5, s6, 4
                  bltu         a5, a5, 91f
                  auipc        zero, 402507
                  bgeu         sp, a3, 95f
                  ori          a5, t2, -1968
88:               sll          s3, t0, a6
                  nop
                  ori          t2, t3, -334
91:               and          zero, sp, t4
92:               blt          t6, s7, 102f
93:               xori         a5, s7, 1549
                  srli         gp, t4, 30
95:               srai         a0, a4, 27
                  srai         a4, a7, 17
                  srai         s2, ra, 6
                  slt          s4, zero, t4
                  slti         t1, s3, 1268
                  slti         s7, s9, -668
                  addi         a1, s9, -134
102:              slli         a5, s0, 31
                  xor          zero, s9, s5
                  sll          s5, tp, s3
                  beq          a1, t0, 124f
                  sra          zero, a4, a7
                  srli         a4, zero, 22
                  beq          s9, t5, 110f
                  or           s1, s3, s11
110:              add          s11, a1, s11
                  lui          a2, 671640
                  lui          s5, 330485
                  blt          s0, s10, 115f
                  bltu         ra, tp, 130f
115:              sll          s7, a1, t3
                  and          s7, s5, t6
                  slli         gp, a7, 24
                  slli         gp, s1, 22
                  sll          s11, ra, a3
                  sltu         t2, s1, t5
                  lui          a7, 1000196
                  sub          a7, a4, a3
                  bltu         s7, gp, 135f
124:              srl          t5, tp, s3
                  sll          a5, s0, s3
                  xori         zero, a3, -824
                  sll          t2, t5, s6
                  sltu         s7, t0, s8
                  slt          a4, s8, t5
130:              slti         s9, t0, -961
                  ori          t3, t6, 1615
                  xor          s0, s11, s2
                  srli         zero, t6, 2
                  addi         s1, t0, 1083
135:              xor          zero, a0, a5
                  add          s9, a5, s1
                  srl          s11, a1, sp
                  addi         s2, s6, 127
                  sub          s6, a2, s0
                  beq          s3, s10, 160f
                  xori         t3, a0, 1013
                  or           s0, s3, ra
                  ori          s0, s4, 1642
                  bltu         s2, a4, 145f
145:              xori         a7, tp, -1347
                  or           s3, s11, a7
                  slli         s6, tp, 16
                  auipc        t5, 36207
                  ori          ra, a3, -1172
                  bne          t4, a7, 170f
                  xori         s7, s0, 1559
                  sra          s8, s5, a6
                  blt          s5, s6, 161f
                  bne          s8, s8, 173f
                  slli         a1, a2, 28
                  and          s9, s8, a2
                  srai         s2, a3, 7
                  srai         a7, s8, 13
                  sll          a0, t3, s2
160:              srai         s0, a2, 15
161:              blt          tp, a2, 162f
162:              add          t1, gp, s11
                  sll          gp, a7, a4
                  slli         t3, a6, 1
                  srl          s11, s9, a5
                  srai         sp, s10, 13
                  lui          s11, 472461
                  slti         s10, a7, 1360
                  slli         s4, t3, 9
170:              slli         s10, s0, 22
                  slti         s4, t5, -106
                  slti         t6, tp, 493
173:              sll          zero, s5, s7
                  sub          a0, s7, s11
                  srl          s1, s5, a0
                  bne          a5, t6, 184f
                  sra          t1, s10, ra
                  srai         s4, a4, 14
                  sll          sp, s2, s0
                  sltiu        a0, s6, -1216
                  sll          t6, a4, a5
                  sra          t5, ra, tp
                  sll          a5, a2, s2
184:              andi         zero, ra, 140
                  lui          t5, 686576
                  sub          a2, s0, t2
                  srl          t5, s3, s2
                  sltu         s3, s4, a5
                  sll          t1, t3, a6
                  nop
                  sltiu        t2, a4, 1092
                  add          s8, a0, t0
                  addi         s2, t0, 2044
                  srl          s10, s3, a7
                  sltiu        a2, t4, -1616
                  ori          a3, s4, 617
                  srl          s11, s0, a6
                  bne          s7, ra, 214f
                  sltiu        s4, a3, 1101
                  andi         s2, t6, 472
sub_2_6:          jal          ra, 12f
0:                jal          a1, 17f
1:                jal          t1, 2f
2:                jal          ra, 16f
3:                jal          t2, 9f
4:                jal          t1, 18f
5:                jal          s11, 1b
6:                jal          sp, 8f
7:                jal          s6, 14f
8:                jal          ra, 7b
9:                jal          t1, 13f
10:               jal          a3, 0b
11:               jal          ra, 5b
12:               jal          ra, 15f
13:               jal          ra, 6b
14:               jal          t1, 4b
15:               jal          tp, 10b
16:               jal          t1, 3b
17:               jal          tp, 11b
18:               nop
                  andi         a5, s9, -1893
                  auipc        a3, 633995
                  add          s9, s6, t4
                  slti         a5, s11, 1643
                  xori         zero, s0, 1165
                  sub          t6, a4, t4
                  bgeu         sp, s8, 215f
                  bgeu         a5, s1, 218f
                  slt          s11, ra, t1
                  srli         tp, t0, 19
                  slti         s6, s11, -1239
                  srai         s11, s5, 0
                  sll          t6, t4, s4
214:              sll          a5, sp, s3
215:              srai         a3, s9, 13
                  beq          s5, t2, 235f
                  slt          t1, s8, t5
218:              sll          s6, s0, t2
                  slt          t1, s6, a1
                  bgeu         sp, ra, 229f
                  srai         a2, s3, 29
                  blt          t1, s0, 227f
                  slli         a1, t5, 9
                  lui          sp, 373008
                  sub          a5, t2, a6
                  sltiu        s8, s10, 1156
227:              nop
                  bne          s11, s8, 229f
229:              or           s8, a4, t4
                  nop
                  beq          s1, t1, 251f
                  sll          s5, s1, s7
                  slti         t5, s6, -1758
                  nop
235:              ori          s7, s0, 992
                  xor          s7, s10, a0
                  slti         s6, a6, -1674
                  auipc        a5, 308544
                  slt          a0, a5, ra
                  sltiu        s10, a4, 509
                  xor          a5, s10, t4
                  sub          t3, a6, t0
                  xor          a0, s7, s8
                  or           t2, gp, t4
                  slli         a0, s1, 12
                  beq          gp, s11, 247f
247:              srai         t5, gp, 6
                  slt          a2, t6, zero
                  xori         zero, t5, -395
                  bltu         s6, gp, 251f
251:              xori         tp, a1, -891
                  or           s9, a6, a7
                  bge          zero, t2, 257f
                  bge          s10, t6, 258f
                  srai         zero, a0, 18
                  andi         tp, s10, -1108
257:              slti         a0, t6, -1053
258:              sra          s2, a4, t4
                  xori         s2, s3, -754
                  srli         s1, s5, 19
                  nop
                  andi         zero, t0, 571
                  or           s11, a2, s3
                  srl          s9, s3, ra
                  slli         t2, s10, 7
                  or           gp, a2, a5
                  slti         s5, gp, -1840
                  and          s8, s10, s5
                  bge          sp, s3, 274f
                  bge          ra, ra, 282f
                  bgeu         sp, s5, 273f
                  and          s8, s2, s7
273:              srl          s11, gp, sp
274:              and          t6, t0, s3
                  bne          t0, t0, 282f
                  beq          s1, s6, 296f
                  slti         s5, s8, -2029
                  sub          tp, a0, t0
                  xor          s9, tp, t5
                  add          s3, zero, s0
                  bne          t2, a0, 300f
282:              addi         t5, s0, 214
                  bge          a0, t2, 287f
                  sra          a7, s5, a2
                  xori         s10, tp, -13
                  bgeu         ra, t1, 306f
287:              slli         s7, t1, 31
                  auipc        s4, 683854
                  bgeu         a4, sp, 296f
                  bltu         a0, t4, 310f
                  add          zero, t0, s3
                  nop
                  nop
                  slt          gp, a0, a6
                  bltu         zero, s0, 297f
296:              bne          s0, a6, 316f
sub_2_1:          jal          ra, 10f
0:                jal          t1, 11f
1:                jal          ra, 12f
2:                jal          ra, 1b
3:                jal          s2, 7f
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          t1, 0b
8:                jal          ra, 6b
9:                jal          t1, 3b
10:               jal          s7, 8b
11:               jal          t1, 4b
12:               sll          s10, s5, a0
297:              bltu         s9, a3, 310f
                  xori         tp, t3, 429
                  xor          s8, ra, s1
300:              sltu         s4, s4, tp
                  blt          t1, a1, 320f
                  srli         s9, a5, 14
                  sub          a3, a1, s11
                  lui          ra, 50708
                  add          tp, a1, t2
306:              slt          t3, s4, a4
                  sll          a3, a4, a2
                  bne          a0, a5, 327f
                  ori          t1, s0, -308
310:              xori         s10, s8, 200
                  sub          s0, a2, s1
                  sltu         t2, t1, a5
                  bgeu         t4, a1, 333f
                  lui          t6, 247325
                  beq          s4, t1, 316f
316:              srai         s11, sp, 10
                  slti         zero, s9, 1704
                  xori         gp, s3, -569
                  beq          a3, s5, 320f
320:              srai         s8, sp, 17
                  xor          s1, sp, a0
                  sltiu        s2, t6, 43
                  srli         a0, a5, 31
                  xori         s7, t4, -710
                  addi         s11, ra, -795
                  add          s10, t5, a4
327:              srli         ra, t3, 22
                  sltu         a2, s3, s1
                  beq          gp, t6, 339f
                  bgeu         t1, a1, 349f
                  bgeu         t1, a6, 336f
                  bgeu         t0, s8, 352f
333:              sll          a2, t5, zero
                  bgeu         t1, gp, 336f
                  sub          a5, tp, s10
336:              slti         t6, t1, 1569
                  slli         s7, s4, 5
                  sltu         a4, s11, t5
339:              auipc        s8, 252781
                  sra          t2, t1, s6
                  sltu         sp, t4, s9
                  auipc        t2, 402242
                  xori         gp, a6, -739
                  sltu         s11, s4, t0
                  lui          s7, 832918
                  lui          s1, 99643
                  bne          a2, a3, 363f
                  lui          s10, 173471
349:              slti         s3, gp, -130
                  slli         a1, a4, 11
                  bge          s7, s8, 358f
352:              srai         s5, a3, 15
                  blt          s9, a0, 361f
                  sltiu        s9, s1, -1971
                  srai         a1, s10, 14
                  or           t1, t2, a1
                  srai         a3, a0, 15
358:              slti         s1, s2, 1219
                  beq          a1, a7, 368f
                  sll          zero, a0, tp
361:              auipc        s3, 341863
                  add          s7, t2, t5
363:              add          s8, sp, t2
                  srl          a1, s10, t1
                  bltu         ra, s2, 385f
                  addi         zero, s4, -505
                  slti         a2, s5, 931
368:              srl          s3, t0, t1
                  addi         a2, a5, 1207
                  or           a7, s4, s11
                  sra          a7, s9, a3
                  bltu         s9, a2, 373f
373:              ori          s0, t5, 22
                  slt          a3, s7, s6
                  sub          t1, s4, a1
sub_2_0:          jal          ra, 4f
0:                jal          ra, 8f
1:                jal          s2, 9f
2:                jal          ra, 0b
3:                jal          gp, 7f
4:                jal          ra, 3b
5:                jal          ra, 1b
6:                jal          s9, 10f
7:                jal          ra, 2b
8:                jal          t1, 5b
9:                jal          ra, 6b
10:               sub          s7, ra, a7
                  beq          s11, s0, 395f
                  lui          t2, 365451
                  andi         gp, a1, -780
                  add          gp, s9, a4
                  sltiu        s1, t2, -144
                  xori         a0, tp, -45
                  xor          t5, a4, s0
                  srai         t5, a7, 16
                  and          s6, a3, s7
385:              slti         t3, s9, 643
                  and          t1, s8, tp
                  and          gp, s2, a5
                  sll          gp, s9, a0
                  bgeu         a7, a5, 398f
                  srli         a4, t6, 0
                  bgeu         a4, s11, 392f
392:              lui          sp, 511374
                  slti         s11, t1, 648
                  sltiu        t2, a5, 1606
395:              sltiu        t2, s6, -1528
                  nop
                  sub          s9, s3, a3
398:              sra          a5, a7, a7
                  sub          t1, a5, s11
                  sll          s9, tp, s9
                  lw           ra, 4(t0)
                  lui          s2, 365650
                  addi         t0, t0, 52
                  sll          s3, s8, a3
                  nop
                  srli         s1, a7, 20
                  nop
542:              addi x27, x1, 1
542:              jalr x27, x27, 0
sub_5:            srli         a0, a1, 14
                  slti         a0, s9, 138
                  blt          gp, t0, sub_5_stack_p
                  slt          a2, s1, t5
                  srai         a3, t5, 5
                  srai         a4, s4, 12
sub_5_stack_p:    addi         t0, t0, -12
                  nop
                  and          a5, a0, t5
                  sll          a3, s8, s11
                  ori          a0, s5, 1394
                  sw           ra, 4(t0)
                  xor          sp, s1, sp
sub_5_15:         jal          ra, 6f
0:                jal          ra, 16f
1:                jal          t1, 4f
2:                jal          s9, 1b
3:                jal          ra, 0b
4:                jal          a7, 14f
5:                jal          s1, 12f
6:                jal          t1, 9f
7:                jal          s10, 15f
8:                jal          ra, 5b
9:                jal          ra, 18f
10:               jal          ra, 20f
11:               jal          t1, 19f
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          t1, 2b
16:               jal          ra, 17f
17:               jal          ra, 7b
18:               jal          ra, 3b
19:               jal          sp, 10b
20:               addi         t6, t5, 1092
sub_5_4:          jal          ra, 13f
0:                jal          ra, 24f
1:                jal          t1, 17f
2:                jal          s4, 21f
3:                jal          s6, 15f
4:                jal          s8, 27f
5:                jal          ra, 26f
6:                jal          ra, 28f
7:                jal          ra, 20f
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          ra, 22f
11:               jal          sp, 23f
12:               jal          ra, 0b
13:               jal          ra, 10b
14:               jal          t1, 11b
15:               jal          ra, 8b
16:               jal          tp, 19f
17:               jal          t1, 9b
18:               jal          ra, 14b
19:               jal          ra, 2b
20:               jal          ra, 18b
21:               jal          s4, 3b
22:               jal          gp, 4b
23:               jal          s0, 6b
24:               jal          sp, 16b
25:               jal          ra, 7b
26:               jal          a5, 25b
27:               jal          t1, 12b
28:               addi         zero, t1, 2019
sub_5_19:         jal          ra, 28f
0:                jal          t1, 16f
1:                jal          tp, 27f
2:                jal          sp, 26f
3:                jal          s11, 23f
4:                jal          t1, 1b
5:                jal          gp, 21f
6:                jal          t1, 18f
7:                jal          tp, 20f
8:                jal          ra, 12f
9:                jal          a4, 2b
10:               jal          ra, 25f
11:               jal          s11, 24f
12:               jal          ra, 4b
13:               jal          t1, 0b
14:               jal          ra, 11b
15:               jal          ra, 8b
16:               jal          ra, 19f
17:               jal          ra, 15b
18:               jal          t3, 14b
19:               jal          s0, 3b
20:               jal          ra, 9b
21:               jal          ra, 10b
22:               jal          ra, 29f
23:               jal          sp, 22b
24:               jal          t1, 7b
25:               jal          a7, 13b
26:               jal          ra, 17b
27:               jal          ra, 5b
28:               jal          ra, 6b
29:               lui          a2, 586372
sub_5_9:          jal          ra, 4f
0:                jal          ra, 17f
1:                jal          s11, 5f
2:                jal          ra, 3f
3:                jal          t1, 15f
4:                jal          ra, 1b
5:                jal          t1, 7f
6:                jal          ra, 2b
7:                jal          sp, 9f
8:                jal          ra, 14f
9:                jal          ra, 6b
10:               jal          t2, 18f
11:               jal          ra, 0b
12:               jal          ra, 16f
13:               jal          s10, 10b
14:               jal          s1, 13b
15:               jal          t1, 11b
16:               jal          ra, 8b
17:               jal          t1, 12b
18:               slt          s1, s2, s8
sub_5_20:         jal          ra, 5f
0:                jal          ra, 9f
1:                jal          t2, 16f
2:                jal          ra, 11f
3:                jal          ra, 15f
4:                jal          t1, 3b
5:                jal          a7, 20f
6:                jal          ra, 13f
7:                jal          a4, 17f
8:                jal          a3, 6b
9:                jal          t1, 8b
10:               jal          a0, 19f
11:               jal          ra, 18f
12:               jal          ra, 1b
13:               jal          ra, 4b
14:               jal          a5, 21f
15:               jal          s3, 22f
16:               jal          ra, 0b
17:               jal          ra, 2b
18:               jal          ra, 14b
19:               jal          tp, 7b
20:               jal          tp, 10b
21:               jal          t1, 12b
22:               sll          s0, s2, a2
sub_5_18:         jal          ra, 27f
0:                jal          ra, 6f
1:                jal          ra, 12f
2:                jal          ra, 26f
3:                jal          sp, 11f
4:                jal          ra, 17f
5:                jal          ra, 28f
6:                jal          gp, 22f
7:                jal          t1, 20f
8:                jal          ra, 4b
9:                jal          t1, 24f
10:               jal          ra, 30f
11:               jal          tp, 25f
12:               jal          t1, 14f
13:               jal          t1, 16f
14:               jal          ra, 5b
15:               jal          ra, 8b
16:               jal          ra, 2b
17:               jal          ra, 3b
18:               jal          ra, 7b
19:               jal          t1, 10b
20:               jal          tp, 19b
21:               jal          t1, 23f
22:               jal          t1, 15b
23:               jal          ra, 9b
24:               jal          ra, 18b
25:               jal          t1, 21b
26:               jal          sp, 1b
27:               jal          t1, 29f
28:               jal          ra, 0b
29:               jal          s11, 13b
30:               and          a7, t2, tp
sub_5_21:         jal          ra, 8f
0:                jal          ra, 1f
1:                jal          a5, 16f
2:                jal          ra, 10f
3:                jal          t3, 11f
4:                jal          ra, 14f
5:                jal          t1, 7f
6:                jal          ra, 13f
7:                jal          ra, 3b
8:                jal          t1, 15f
9:                jal          s4, 6b
10:               jal          t1, 12f
11:               jal          ra, 9b
12:               jal          t6, 0b
13:               jal          ra, 4b
14:               jal          s10, 2b
15:               jal          t1, 5b
16:               srai         a4, sp, 11
sub_5_5:          jal          ra, 8f
0:                jal          tp, 12f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          tp, 13f
8:                jal          ra, 2b
9:                jal          ra, 14f
10:               jal          t1, 11f
11:               jal          ra, 3b
12:               jal          ra, 1b
13:               jal          s7, 10b
14:               nop
sub_5_11:         jal          ra, 11f
0:                jal          s5, 19f
1:                jal          t1, 8f
2:                jal          a4, 12f
3:                jal          ra, 20f
4:                jal          gp, 14f
5:                jal          s1, 4b
6:                jal          ra, 5b
7:                jal          tp, 13f
8:                jal          ra, 10f
9:                jal          ra, 21f
10:               jal          ra, 24f
11:               jal          ra, 3b
12:               jal          ra, 23f
13:               jal          tp, 1b
14:               jal          gp, 0b
15:               jal          t1, 16f
16:               jal          ra, 22f
17:               jal          ra, 9b
18:               jal          a3, 2b
19:               jal          ra, 26f
20:               jal          ra, 25f
21:               jal          s3, 18b
22:               jal          ra, 17b
23:               jal          ra, 6b
24:               jal          ra, 15b
25:               jal          ra, 7b
26:               slt          s4, t2, s5
sub_5_17:         jal          ra, 10f
0:                jal          t1, 13f
1:                jal          s6, 6f
2:                jal          t1, 12f
3:                jal          ra, 0b
4:                jal          t1, 7f
5:                jal          ra, 4b
6:                jal          s5, 3b
7:                jal          s10, 11f
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          t1, 1b
12:               jal          ra, 8b
13:               jal          a7, 14f
14:               add          a2, t6, t4
sub_5_14:         jal          ra, 11f
0:                jal          t1, 13f
1:                jal          gp, 6f
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          s3, 2b
5:                jal          t1, 0b
6:                jal          tp, 3b
7:                jal          ra, 5b
8:                jal          ra, 12f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 1b
12:               jal          a5, 4b
13:               lui          ra, 640191
sub_5_3:          jal          ra, 10f
0:                jal          ra, 2f
1:                jal          s0, 9f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          gp, 17f
6:                jal          ra, 14f
7:                jal          t3, 13f
8:                jal          ra, 12f
9:                jal          t1, 7b
10:               jal          t1, 15f
11:               jal          s7, 4b
12:               jal          a1, 11b
13:               jal          ra, 18f
14:               jal          ra, 16f
15:               jal          sp, 8b
16:               jal          ra, 3b
17:               jal          gp, 0b
18:               auipc        s4, 282339
sub_5_22:         jal          ra, 6f
0:                jal          t1, 4f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          ra, 15f
4:                jal          s11, 14f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          t1, 12f
9:                jal          s2, 1b
10:               jal          sp, 18f
11:               jal          ra, 10b
12:               jal          t1, 11b
13:               jal          a7, 2b
14:               jal          t1, 16f
15:               jal          ra, 19f
16:               jal          a5, 17f
17:               jal          t1, 13b
18:               jal          ra, 5b
19:               and          a1, s7, t4
sub_5_13:         jal          ra, 4f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          ra, 3f
3:                jal          ra, 9f
4:                jal          s10, 2b
5:                jal          ra, 10f
6:                jal          s9, 1b
7:                jal          t1, 5b
8:                jal          ra, 0b
9:                jal          ra, 8b
10:               jal          t1, 6b
11:               slti         a2, gp, 1849
sub_5_2:          jal          ra, 14f
0:                jal          s5, 17f
1:                jal          ra, 24f
2:                jal          ra, 10f
3:                jal          sp, 6f
4:                jal          ra, 7f
5:                jal          ra, 29f
6:                jal          ra, 13f
7:                jal          ra, 11f
8:                jal          ra, 28f
9:                jal          ra, 15f
10:               jal          ra, 9b
11:               jal          t1, 2b
12:               jal          ra, 3b
13:               jal          a2, 20f
14:               jal          t1, 21f
15:               jal          t1, 25f
16:               jal          ra, 8b
17:               jal          ra, 12b
18:               jal          tp, 23f
19:               jal          ra, 1b
20:               jal          ra, 19b
21:               jal          ra, 22f
22:               jal          ra, 0b
23:               jal          ra, 5b
24:               jal          t1, 16b
25:               jal          a4, 18b
26:               jal          ra, 27f
27:               jal          ra, 4b
28:               jal          s6, 26b
29:               andi         a7, t1, -65
sub_5_12:         jal          ra, 19f
0:                jal          t1, 8f
1:                jal          tp, 9f
2:                jal          t1, 16f
3:                jal          sp, 23f
4:                jal          t1, 0b
5:                jal          s5, 2b
6:                jal          ra, 24f
7:                jal          t1, 11f
8:                jal          ra, 20f
9:                jal          ra, 14f
10:               jal          t1, 25f
11:               jal          ra, 4b
12:               jal          ra, 7b
13:               jal          s7, 22f
14:               jal          a0, 12b
15:               jal          ra, 6b
16:               jal          ra, 26f
17:               jal          s4, 13b
18:               jal          t1, 5b
19:               jal          t1, 17b
20:               jal          ra, 3b
21:               jal          sp, 1b
22:               jal          tp, 21b
23:               jal          t1, 15b
24:               jal          tp, 10b
25:               jal          ra, 18b
26:               slti         s0, tp, -1663
sub_5_1:          jal          ra, 4f
0:                jal          ra, 11f
1:                jal          s11, 5f
2:                jal          ra, 7f
3:                jal          a5, 2b
4:                jal          s1, 9f
5:                jal          t2, 12f
6:                jal          gp, 10f
7:                jal          gp, 8f
8:                jal          t1, 0b
9:                jal          s11, 6b
10:               jal          ra, 3b
11:               jal          s0, 1b
12:               and          s7, a5, s11
sub_5_0:          jal          ra, 5f
0:                jal          ra, 3f
1:                jal          ra, 16f
2:                jal          sp, 12f
3:                jal          gp, 7f
4:                jal          gp, 8f
5:                jal          tp, 11f
6:                jal          s5, 13f
7:                jal          ra, 15f
8:                jal          ra, 10f
9:                jal          t1, 18f
10:               jal          ra, 0b
11:               jal          ra, 17f
12:               jal          ra, 9b
13:               jal          ra, 4b
14:               jal          t1, 2b
15:               jal          ra, 14b
16:               jal          ra, 6b
17:               jal          ra, 1b
18:               jal          ra, 19f
19:               and          s9, t3, s6
                  srli         t3, a0, 30
                  slti         a5, t6, -1510
                  and          tp, t6, t3
                  bge          gp, s2, 7f
                  nop
                  ori          gp, s1, -1702
                  slt          s6, s5, tp
7:                xori         a0, s2, -1495
                  nop
                  bgeu         t0, t3, 18f
                  and          s8, t6, s4
                  sub          s5, a6, s4
                  bne          tp, s8, 18f
                  bne          t5, a0, 25f
                  sub          tp, s8, zero
                  slli         s2, a6, 2
                  srl          s7, s7, t4
                  sra          s11, tp, s2
18:               addi         s11, zero, -402
                  sltiu        ra, s7, 278
                  sub          gp, a7, a1
                  slli         s9, t6, 17
                  slti         gp, s5, 560
                  blt          t5, a1, 27f
                  slti         s10, t3, -412
25:               lui          s6, 679871
                  auipc        t2, 515172
27:               sltiu        gp, s4, -532
                  and          s10, t3, a7
                  slli         s1, s3, 1
                  bltu         s4, t2, 50f
                  and          s0, s11, s3
                  xori         s10, a0, 1589
                  sra          t5, t4, s5
                  sltu         a2, a1, ra
                  sll          t1, s9, s6
                  bltu         s4, s0, 49f
                  nop
                  srli         s1, t4, 10
                  bltu         s2, s9, 54f
                  bltu         a6, a7, 47f
                  andi         s8, a0, 1536
                  sra          ra, s5, s3
                  bge          s4, s9, 45f
                  addi         s7, s9, 667
45:               bgeu         s1, s3, 55f
                  lui          gp, 385631
47:               bne          s7, s8, 53f
                  srl          zero, s1, t2
49:               slti         tp, a6, 998
50:               bge          a5, sp, 56f
                  andi         a5, s0, 1590
                  blt          s10, a4, 54f
53:               ori          a0, zero, 827
54:               lui          t2, 881003
55:               xori         sp, s8, 583
56:               sltiu        s1, a3, -1214
                  xori         zero, s4, -866
                  slti         t2, t6, -1966
                  beq          zero, a7, 75f
                  xor          s1, s11, s0
                  and          s6, t4, s9
                  xori         s3, a4, 2015
                  beq          s8, a3, 67f
                  xori         t6, t5, -160
                  sll          t3, s9, s11
                  and          zero, a2, s2
67:               blt          a6, gp, 73f
                  andi         gp, s5, -1897
                  auipc        s4, 375250
                  bltu         t5, t0, 78f
                  nop
                  beq          a5, s3, 83f
73:               addi         a0, a2, -1075
                  srai         s9, s10, 15
75:               add          s10, a2, s4
                  sltu         s10, a7, s1
                  addi         a7, a2, -845
78:               xor          zero, t5, s10
                  xor          s7, gp, a7
                  bgeu         s10, s11, 94f
                  or           a7, s1, t3
                  or           a3, t3, sp
83:               sltu         a0, s5, s6
                  or           s9, s9, t4
                  srl          a1, s1, ra
                  ori          s10, a0, 456
                  or           s2, gp, s1
                  bgeu         t2, s0, 90f
                  srai         gp, s11, 5
90:               srai         a4, t5, 4
                  sltu         t5, s1, s9
                  nop
                  slt          tp, s2, t4
94:               sll          t6, s0, a6
                  sll          s1, s11, s2
                  addi         a5, s0, 1553
                  and          t5, a0, t2
                  bge          s1, s6, 114f
                  sltiu        a7, a2, -1894
                  srli         s6, s2, 3
                  sll          s0, s2, a4
                  xori         a1, a5, -1854
                  ori          t6, a1, -996
                  slt          s8, a2, a7
                  xor          s10, a3, t2
                  bltu         s4, t2, 109f
                  bne          s7, t5, 123f
                  bge          s7, tp, 118f
109:              nop
                  srai         s1, a5, 15
                  add          s2, t1, s5
                  bgeu         a6, a0, 124f
                  slli         s0, a7, 14
114:              ori          s7, tp, 1251
                  addi         s6, a1, -711
                  bne          s5, s11, 122f
                  slt          s7, s4, a4
118:              sltiu        ra, t0, 1204
                  auipc        tp, 771235
                  sltu         a7, a7, t5
                  sltiu        s9, a6, 1740
122:              xori         s1, s9, 1918
123:              sub          s9, a4, tp
124:              sll          s7, a3, s11
                  sltu         a3, ra, s7
                  sra          s8, t0, s11
                  srl          t2, a3, s7
                  ori          s9, s6, -1402
                  ori          s7, t0, 991
                  bne          s11, t0, 134f
                  sra          t1, tp, t4
                  srl          s0, s11, s7
                  add          s5, s1, s6
134:              blt          s7, s8, 138f
                  srai         a3, s7, 16
                  and          ra, a7, t6
                  srli         a4, s4, 15
138:              andi         zero, s3, 536
                  sltiu        s5, t6, 491
                  nop
                  sltu         ra, s3, sp
                  slli         s10, t5, 15
                  sub          sp, t4, t3
                  lui          s2, 353807
                  sll          s0, sp, s5
                  sub          s0, t2, a7
                  sub          zero, s11, a5
                  srl          tp, s6, a1
                  and          s5, t5, a1
                  xor          gp, t6, a5
                  sub          ra, zero, t4
                  nop
                  bltu         a5, s8, 161f
                  srli         a5, a3, 11
                  sra          s4, s8, s1
                  nop
                  and          t6, tp, t4
                  ori          s3, a4, -64
                  sub          s2, a3, a4
                  bne          a7, t4, 162f
161:              sltiu        s9, a4, 432
162:              andi         t1, a0, 1138
                  auipc        a3, 85876
                  bltu         a4, t3, 173f
                  andi         a3, t1, 426
                  andi         s7, s2, 616
                  srai         s8, t6, 2
                  add          t1, s2, s9
                  sltiu        a0, sp, 970
                  bge          a5, a1, 186f
                  auipc        a4, 757881
                  sra          s1, s9, s4
173:              bltu         gp, t6, 179f
                  auipc        s0, 706226
                  andi         a1, t6, 484
                  auipc        s7, 1005719
                  beq          s6, a6, 181f
                  or           sp, zero, s2
179:              sra          s10, a3, gp
                  sra          s9, a7, t5
181:              bge          s4, tp, 197f
                  lui          t5, 562014
                  beq          s4, a7, 186f
                  sll          tp, t4, a7
                  or           s9, a0, s9
186:              bgeu         s6, a3, 190f
                  sub          s8, t0, t2
                  lui          a7, 639778
                  sll          t2, t3, tp
190:              or           a1, t3, s1
                  slt          t1, t6, t6
                  sub          s10, a6, sp
                  or           t6, t0, s2
                  sll          s5, sp, a2
                  sltu         a1, s11, sp
                  auipc        t3, 842276
197:              slti         t5, s4, -796
                  srai         s4, a0, 21
                  xor          s7, s0, a0
                  bltu         tp, gp, 208f
                  sub          s5, ra, t5
                  slli         a4, a5, 19
sub_5_7:          jal          ra, 7f
0:                jal          ra, 4f
1:                jal          ra, 10f
2:                jal          a1, 13f
3:                jal          ra, 5f
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          s1, 1b
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          ra, 12f
10:               jal          t1, 0b
11:               jal          s5, 14f
12:               jal          s10, 11b
13:               jal          t1, 8b
14:               add          t1, ra, a4
                  srai         sp, s8, 21
                  auipc        t5, 837286
                  andi         ra, gp, -1813
                  bltu         s0, a4, 218f
                  blt          s3, ra, 222f
208:              srai         a3, s2, 8
                  bne          s5, s7, 217f
                  and          s4, s0, s0
                  or           s1, a3, s0
                  ori          s11, ra, -1526
                  lui          a3, 710845
                  xor          t6, sp, t3
                  slli         ra, t3, 17
                  nop
217:              bgeu         s5, s0, 231f
218:              bge          t0, gp, 231f
                  slli         s11, s3, 23
                  srai         s1, t0, 31
                  auipc        s0, 523578
222:              srl          s1, a2, t1
                  sll          s10, s7, s2
                  lui          s10, 1046617
                  auipc        s5, 1042870
                  slt          s0, zero, s6
                  slti         s9, t6, 890
                  nop
                  bgeu         s5, s11, 241f
                  bltu         s1, a4, 236f
231:              xor          s0, s11, ra
                  sltiu        s0, s3, -1609
                  blt          s4, s2, 240f
                  sll          s2, s8, s11
                  xori         s9, s11, -381
236:              sltu         tp, s11, a0
                  or           a7, a6, s5
                  srli         zero, a6, 12
                  sra          sp, t1, s4
240:              ori          s11, gp, -459
241:              srli         a4, t2, 15
                  and          tp, s9, a7
                  sub          s0, s4, ra
                  beq          a6, a6, 250f
                  and          s3, s9, t0
                  sltu         s1, a3, s9
                  ori          s5, t2, 1931
                  andi         sp, t1, 830
                  srai         s8, a0, 24
250:              andi         a4, a2, -1685
                  and          s5, s11, t1
                  blt          tp, s7, 268f
                  xori         s1, t0, -237
                  bge          t2, t1, 260f
                  blt          s8, t6, 265f
                  or           s2, t0, s5
                  xori         a7, sp, -447
                  srli         t5, t0, 4
                  sub          sp, s5, s6
260:              srl          a1, a6, t5
                  slti         tp, a4, -117
                  and          t2, t3, t1
                  sltiu        s1, s3, -759
                  slti         a2, s8, -328
265:              srai         s8, gp, 1
                  lui          s9, 431421
                  sltu         s4, t3, a2
268:              blt          a1, s11, 278f
                  ori          zero, t1, -1562
                  slti         t3, s4, -1374
sub_5_6:          jal          ra, 2f
0:                jal          t1, 10f
1:                jal          ra, 6f
2:                jal          a3, 15f
3:                jal          ra, 14f
4:                jal          ra, 7f
5:                jal          gp, 3b
6:                jal          ra, 0b
7:                jal          ra, 17f
8:                jal          t1, 16f
9:                jal          ra, 1b
10:               jal          t1, 4b
11:               jal          ra, 13f
12:               jal          t1, 8b
13:               jal          ra, 9b
14:               jal          ra, 12b
15:               jal          ra, 5b
16:               jal          ra, 11b
17:               xor          ra, t1, t1
                  srl          s5, ra, a0
                  add          t1, t4, a4
                  sltiu        s11, t1, 2005
                  bne          t4, a4, 278f
                  auipc        a4, 27540
                  sll          t1, zero, a1
                  bltu         t3, a5, 297f
278:              sll          t5, s0, s10
                  slli         s10, a7, 5
                  sltu         s9, a5, s0
                  sub          a7, gp, a4
                  srl          s7, s7, a2
                  or           ra, s11, s4
                  bgeu         a4, gp, 290f
                  add          tp, gp, a7
                  bge          s8, s1, 290f
                  beq          t4, s9, 298f
                  or           sp, a2, a7
                  xori         s3, s5, -1600
290:              xor          a1, s10, a1
                  add          s4, tp, t3
                  srli         s10, s6, 5
                  sltiu        t2, a7, -165
                  srai         s10, ra, 18
                  bge          s6, tp, 299f
                  andi         s1, t2, 592
297:              addi         gp, a2, 1177
298:              bltu         s11, t4, 300f
299:              sltu         t5, a4, a1
300:              xori         a0, s1, 1476
                  lui          s7, 138810
                  sltu         s2, a6, ra
                  xori         s0, s0, 410
                  sltu         s9, s0, a2
                  blt          t6, s3, 307f
                  auipc        s0, 413422
307:              lui          zero, 194803
                  add          t6, s1, s10
                  sub          s8, s2, a6
                  xori         t2, a5, 143
                  sltu         t1, gp, s7
                  nop
                  slt          a7, s9, ra
                  nop
                  bltu         s7, t0, 331f
                  addi         a0, t4, -1815
                  xori         zero, s1, 615
                  srl          gp, zero, s4
                  lui          s10, 235879
                  beq          a4, sp, 328f
                  bgeu         s7, gp, 341f
                  srai         a3, a1, 9
                  add          t2, t2, a1
                  or           s10, gp, ra
                  srl          s9, s7, tp
                  ori          s9, s5, 1476
                  slli         s11, a6, 12
328:              slti         a7, s8, -708
                  sltu         zero, ra, s7
                  slt          t2, a6, tp
331:              or           a2, s11, sp
                  nop
                  lui          s1, 1005617
                  and          t3, gp, s9
                  ori          s5, s8, 902
                  slti         s2, gp, -1140
                  lui          s11, 311341
                  xori         s5, a5, 1304
                  sub          a4, a6, t4
                  blt          t2, s9, 350f
341:              bgeu         t6, t3, 352f
                  sub          a3, a3, a5
                  sltu         s3, s4, s1
                  sra          s1, t0, zero
                  sra          s2, ra, a1
                  ori          a3, t2, -375
                  andi         a2, s2, 1991
                  lui          t1, 63319
                  bgeu         a4, s3, 355f
350:              and          s11, a7, s11
                  bge          tp, a0, 355f
352:              sub          a5, s0, s5
                  nop
                  sra          zero, gp, a2
355:              sub          sp, t0, t6
                  and          s2, s6, sp
                  xor          t2, s2, s1
                  blt          s0, ra, 362f
                  srl          s11, a4, a1
                  sltiu        t5, a4, 4
                  slt          s4, s2, s2
362:              sub          s6, s1, t3
                  andi         t1, a2, -1491
                  ori          t3, a2, 22
                  xor          s6, s2, t5
                  srl          zero, s3, a3
                  nop
                  slt          a5, s3, s9
                  or           s11, t6, s2
                  xori         t6, a6, 791
                  bge          a3, s7, 375f
                  slt          a7, s2, s1
                  or           a1, t6, s10
                  bltu         s5, t2, 376f
375:              srli         s3, s7, 28
376:              slti         t1, a7, -369
                  srl          s7, a1, s8
                  bgeu         t3, a6, 385f
                  slt          s6, t0, s10
                  srai         t6, a0, 6
                  xori         a1, zero, 1929
                  slt          a0, zero, s4
                  ori          s4, gp, 176
                  sltu         s0, t0, zero
385:              ori          t1, s4, -1796
                  xor          a4, s4, sp
                  sltiu        tp, t0, 1357
                  sltiu        a0, s6, -724
                  ori          sp, s1, -1913
                  andi         a1, s1, 90
                  srai         a1, t2, 2
                  srai         t1, a7, 26
                  nop
                  xori         s4, s2, -900
                  bne          a6, s2, 399f
                  addi         s2, a2, -1000
                  sub          s8, s11, t1
                  bne          s7, a0, 401f
399:              slli         a1, gp, 27
                  lui          a1, 624869
401:              ori          s6, zero, -141
                  srli         a7, sp, 2
                  bltu         t2, s0, 409f
                  xori         s0, s4, 886
                  bgeu         ra, t3, 419f
                  bge          s7, a1, 418f
                  lui          t1, 422518
                  and          a0, sp, a7
409:              or           a2, zero, t2
                  xori         t3, t1, 303
                  blt          s1, a1, 413f
                  addi         gp, a0, 276
413:              andi         a4, ra, -1078
                  sltiu        t3, a0, 2004
                  bltu         s9, sp, 428f
                  srli         s11, a0, 16
                  srli         s7, gp, 6
418:              slti         s0, a6, -184
419:              add          a7, ra, t2
                  lui          t5, 118440
                  ori          s10, t2, 730
                  sltiu        a3, ra, -1528
                  srai         ra, s10, 3
                  sltiu        s10, a5, -329
                  srli         t2, t6, 1
                  blt          a5, a2, 435f
                  blt          s9, s5, 439f
428:              ori          s3, a5, -1336
                  addi         a3, s2, -1890
                  blt          a7, s8, 446f
                  bgeu         t2, t1, 437f
                  xori         zero, s4, -1917
                  lui          a3, 772870
                  xori         s11, a4, 1612
435:              beq          a1, ra, 441f
                  slli         a4, sp, 13
437:              slt          a3, t3, a3
                  nop
439:              slti         tp, a3, -862
                  sub          s1, t5, a6
441:              xor          a1, s0, a3
                  sub          t1, s8, s0
                  bne          t0, gp, 458f
                  nop
                  lui          a4, 943511
446:              srli         a4, s11, 30
                  sra          s6, t1, s7
                  slt          s8, s10, gp
                  bltu         t1, s0, 455f
                  add          s3, t5, t6
                  lui          s4, 427079
                  or           a2, s4, tp
                  add          tp, s4, t2
                  addi         a4, t6, 1933
455:              xor          t1, s0, s5
                  bltu         ra, sp, 460f
                  srli         s4, a7, 20
458:              beq          a4, s10, 460f
                  slti         ra, t6, -1070
460:              slli         s8, t3, 1
                  beq          s2, s5, 469f
                  xor          s7, t1, a6
                  sra          s7, t4, s8
                  andi         a2, a5, 1425
                  bge          zero, a4, 481f
                  sltiu        sp, s10, 207
                  or           s1, a1, t5
                  sra          s2, a1, a4
469:              lui          tp, 66355
                  slt          s3, a4, ra
                  and          a2, s3, ra
                  slli         a4, t2, 8
                  sll          a0, t5, a1
                  bgeu         a3, a2, 484f
                  nop
                  slli         gp, a5, 11
                  lui          s10, 600407
                  auipc        s6, 357173
                  xori         a2, a3, 921
                  srl          s9, a2, t0
481:              sll          t3, t3, a7
                  sra          a5, t5, t6
                  sra          s2, s6, a6
484:              slti         zero, t1, 433
                  nop
                  auipc        t2, 230492
                  andi         sp, s2, 188
                  addi         s2, s1, -131
                  and          s7, t2, a6
                  bne          gp, s0, 494f
                  nop
                  xori         s4, s0, -1291
                  xori         a0, s3, -211
494:              slti         t2, t0, 1964
                  srl          t2, sp, s3
                  sll          t6, s0, tp
                  srai         t1, t6, 31
                  lui          t1, 528557
                  and          s11, a7, a3
                  lui          s2, 443498
                  sll          t6, t3, t0
                  sub          t2, zero, gp
                  slli         s4, s2, 7
                  beq          a5, t3, 519f
                  beq          s7, s5, 508f
                  xor          s9, a3, a2
                  xori         a4, a2, 1362
508:              nop
                  xori         s3, s1, -1203
                  slti         sp, s1, -1905
                  slli         a4, t2, 9
                  or           s0, s7, a3
                  bgeu         s6, a1, 527f
                  xori         tp, a2, -1631
                  ori          s8, s5, -445
                  slti         s5, s5, -132
                  lui          s0, 340389
                  slli         a5, a1, 10
519:              bge          a3, s9, 535f
                  or           s11, t2, zero
                  andi         s6, s11, 375
                  xori         a1, a4, -1936
                  or           a0, s5, gp
                  xor          zero, t0, a6
                  slli         s6, s8, 29
                  sll          sp, s5, zero
527:              or           a2, a3, zero
                  or           s6, s8, a6
                  or           s10, t4, t2
                  slli         s8, a1, 31
                  xor          zero, t6, zero
                  addi         a3, s4, 74
                  ori          s11, t5, 1520
                  beq          a4, s11, 538f
535:              sltiu        a7, a6, -1952
                  beq          a2, gp, 540f
                  bne          t1, s0, 545f
538:              add          s9, t0, s2
                  sltiu        t6, s9, -1092
540:              andi         tp, t6, 1044
                  sll          t5, a2, gp
                  sra          s3, t2, tp
                  beq          s4, ra, 549f
                  andi         sp, t3, -337
545:              slti         gp, s7, -1672
                  xor          zero, s8, s3
                  ori          t1, a1, 1211
                  and          zero, t1, s3
549:              bltu         s11, a4, 555f
                  and          t1, gp, tp
                  srli         a3, a4, 18
                  sll          s2, s8, s6
                  bltu         tp, sp, 569f
                  xori         a7, t2, 433
555:              bne          s1, ra, 559f
                  sub          t3, s3, tp
                  lui          tp, 781156
                  sub          t6, s9, t3
559:              sltu         a0, s6, s1
                  add          t6, ra, a0
                  nop
                  srli         s9, s11, 14
                  blt          a3, s8, 575f
                  slt          a4, t4, t4
                  bne          t0, t0, 578f
                  slt          s3, zero, a1
                  bltu         a5, zero, 577f
                  add          a1, t2, a4
569:              blt          a7, s4, 578f
                  nop
                  and          s7, s8, s0
                  and          a4, a5, a5
                  beq          s5, ra, 579f
                  slt          sp, s1, t3
575:              srai         zero, a6, 16
                  sll          a1, a6, s8
577:              sll          t2, t0, t4
578:              addi         s10, s9, -1650
579:              sra          a4, a1, s8
                  slli         a7, t2, 9
                  and          s6, tp, a6
                  addi         s9, a2, 917
                  lui          s10, 495355
                  auipc        s9, 56666
                  sub          s9, t2, t6
                  srl          s2, sp, a3
                  sll          t1, s0, sp
                  beq          ra, t4, 595f
                  bne          sp, sp, 597f
                  andi         sp, a1, 1172
                  bge          s2, s6, 593f
                  add          a3, tp, a4
593:              sltu         s4, t1, a3
                  xori         t3, s9, -1155
595:              auipc        t3, 343216
                  bgeu         s8, s8, 600f
597:              nop
                  sub          s1, gp, s3
                  bltu         t1, t5, 601f
600:              slti         s9, s1, -1674
601:              slt          s8, t5, zero
                  or           t3, s7, s9
                  slt          tp, s11, s11
                  srli         s8, s7, 22
                  sltiu        s3, gp, -794
                  ori          t2, s10, -1235
                  srl          tp, t3, tp
                  andi         s4, s0, -1842
                  bltu         a3, a7, 625f
                  or           s7, sp, s11
                  sll          a5, tp, t3
                  xor          t1, t5, s10
                  srl          sp, a4, a7
                  srai         a4, s7, 17
                  beq          s3, s0, 621f
                  ori          ra, a2, -748
                  andi         s5, t6, 289
                  sra          t2, t5, t3
                  sra          a3, s1, t1
                  sltu         s1, s6, s11
621:              bgeu         a3, a6, 632f
                  beq          a4, s2, 632f
                  slti         s10, a7, 1526
                  sll          a3, t2, t1
625:              add          tp, a3, a6
                  srli         s9, t3, 23
                  bge          s10, a5, 633f
                  sltiu        s10, s0, -1221
                  srl          s9, tp, s0
                  or           a1, s4, s6
                  blt          a2, t2, 651f
632:              slt          t5, tp, t2
633:              srl          ra, s5, a6
                  sll          t3, t0, a5
                  add          a5, tp, s8
                  nop
                  beq          s2, t2, 649f
                  nop
                  bge          ra, s10, 641f
                  xor          s3, sp, s2
641:              sll          t6, a7, a1
                  or           s6, gp, s11
                  andi         a7, s6, -1607
                  andi         s0, t6, 1446
                  and          t2, a1, s3
                  lui          s3, 504092
                  bne          s1, s1, 651f
                  beq          zero, s1, 664f
649:              srli         ra, s10, 13
                  beq          t0, s2, 663f
651:              lui          sp, 822252
                  nop
                  beq          a6, s7, 665f
                  xor          s10, a6, a3
                  addi         t1, s5, -927
                  auipc        s2, 339931
                  and          s7, s0, a2
                  sub          s3, t3, s1
                  slti         t6, s5, -1457
                  bne          t6, t1, 671f
                  auipc        tp, 387628
                  bge          t6, s7, 678f
663:              and          s9, t2, t6
664:              andi         s4, t6, -706
665:              add          ra, s10, s0
                  addi         a0, t6, -1314
                  srl          t5, gp, s1
                  sll          zero, t1, t5
                  or           a2, a5, s3
                  slti         s2, a4, 1600
671:              add          a0, s4, s4
                  addi         s3, a3, 379
                  sltiu        s8, t0, 277
                  srli         sp, t1, 31
                  srli         ra, gp, 29
                  ori          gp, a6, 186
                  sra          t5, s8, t1
678:              blt          s4, s8, 694f
                  add          t2, t1, t0
                  addi         a7, t1, 931
                  slli         t1, a7, 27
                  sub          a1, s8, s6
                  srli         tp, a5, 26
                  blt          a0, t0, 690f
                  nop
                  lui          a5, 772179
                  srli         a5, a3, 15
                  srl          s7, t0, t2
                  srai         s4, s1, 9
690:              blt          zero, t3, 696f
                  srli         s9, t2, 25
                  lui          s4, 960031
                  sltu         s7, ra, s7
694:              slti         s4, s1, 313
                  beq          a7, a2, 715f
696:              srli         zero, s1, 22
                  bge          t6, s7, 709f
                  addi         s2, t6, 765
                  and          s0, s5, a7
                  xor          s4, s9, a4
                  bgeu         gp, zero, 705f
                  and          t1, s10, t4
                  slli         a2, s8, 28
                  slti         a3, t5, -1055
705:              bgeu         a3, a1, 708f
                  srli         s1, s10, 29
                  xori         a2, a0, -904
708:              srai         a4, sp, 3
709:              srli         a7, s0, 18
                  slti         s8, s5, 995
                  srai         a4, t2, 31
                  slli         zero, s8, 0
                  sra          s4, s11, a5
                  bltu         a7, a4, 720f
715:              nop
                  bne          t1, zero, 720f
                  slti         t5, a4, 1216
                  srli         s1, a2, 4
                  ori          t2, tp, -542
720:              slli         s8, a3, 13
                  ori          a7, a2, 753
                  srl          a0, s11, s3
                  xor          t3, a6, t1
                  srai         s1, s11, 6
                  srl          s6, s1, tp
                  bge          s6, s2, 732f
                  slti         s4, t6, 710
                  slt          s10, t4, s9
                  slli         a4, a7, 3
                  andi         s6, s9, 1484
                  slt          ra, a4, a7
732:              srai         s7, s3, 16
                  slt          gp, s11, zero
                  sll          a7, a5, t3
                  nop
                  slli         tp, s3, 7
                  sll          s6, s1, s2
                  beq          t5, t1, 744f
                  sltu         zero, a1, s10
                  beq          gp, a7, 744f
                  addi         s6, s8, -1738
                  nop
                  addi         tp, a3, 283
744:              ori          s10, t4, 2021
                  ori          ra, a3, 838
                  bge          t6, t3, 756f
                  srli         s9, s7, 25
                  sll          a1, s7, a2
                  slli         a5, a5, 29
                  bne          tp, t3, 758f
                  slli         a1, gp, 26
                  slti         sp, s0, -837
                  bge          zero, s1, 763f
                  srli         a4, a0, 29
                  bgeu         s2, a1, 769f
756:              sra          a0, a3, sp
                  lui          a3, 735995
758:              blt          a4, a0, 767f
                  auipc        s9, 442605
                  sltu         a3, ra, s11
                  and          s2, s11, t5
                  add          s1, s2, s1
763:              sll          s5, s2, gp
                  slt          tp, a5, a3
                  auipc        ra, 901264
                  add          a2, s9, gp
767:              auipc        sp, 241054
                  slti         a5, s4, 1842
769:              bgeu         a2, s10, 771f
                  ori          s4, a0, 978
771:              srli         s0, t6, 30
                  sltu         s6, s2, a2
                  nop
sub_5_23:         jal          ra, 7f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          sp, 6f
4:                jal          a4, 12f
5:                jal          t1, 15f
6:                jal          ra, 2b
7:                jal          t5, 8f
8:                jal          ra, 4b
9:                jal          t1, 0b
10:               jal          tp, 13f
11:               jal          tp, 9b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          s4, 1b
15:               srl          a3, a2, s3
                  bgeu         t1, ra, 776f
                  srl          s3, a2, zero
776:              bne          a0, t2, 791f
                  blt          t0, t1, 784f
                  sltu         s1, s4, zero
                  srl          s4, tp, a3
                  bltu         zero, s6, 782f
                  bne          s11, sp, 789f
782:              or           s9, s2, t5
                  xori         s2, s3, 189
784:              sra          a4, a5, t0
                  slli         t3, a6, 2
                  sltiu        s2, a1, 1887
                  xori         s8, a1, 2013
                  sub          t6, tp, a4
789:              sra          t3, s4, a4
                  slli         t2, t6, 10
791:              bltu         a6, t3, 795f
                  nop
                  xori         zero, s7, -144
sub_5_16:         jal          ra, 23f
0:                jal          t1, 28f
1:                jal          sp, 16f
2:                jal          t5, 5f
3:                jal          ra, 19f
4:                jal          ra, 7f
5:                jal          t1, 29f
6:                jal          t1, 18f
7:                jal          ra, 25f
8:                jal          t1, 13f
9:                jal          ra, 0b
10:               jal          ra, 22f
11:               jal          ra, 8b
12:               jal          s7, 14f
13:               jal          a2, 24f
14:               jal          ra, 20f
15:               jal          t1, 11b
16:               jal          sp, 4b
17:               jal          ra, 3b
18:               jal          ra, 15b
19:               jal          ra, 2b
20:               jal          sp, 21f
21:               jal          t1, 6b
22:               jal          a0, 27f
23:               jal          ra, 10b
24:               jal          ra, 17b
25:               jal          t1, 26f
26:               jal          ra, 12b
27:               jal          ra, 9b
28:               jal          ra, 1b
29:               sll          t2, t5, s6
                  add          tp, a2, t6
795:              or           gp, s1, tp
                  sub          a4, t4, s0
                  nop
                  beq          sp, s2, 804f
                  bltu         a5, s0, 811f
                  and          gp, gp, a2
                  nop
                  srli         t1, ra, 29
                  blt          s3, gp, 819f
804:              slt          s1, a4, s6
                  beq          gp, s1, 818f
                  or           a3, t2, s10
                  auipc        s11, 375324
                  addi         t5, t1, -1429
                  beq          s2, s1, 811f
                  beq          a7, t3, 812f
811:              bltu         t2, gp, 827f
812:              sll          s6, t3, s3
                  blt          a7, t1, 823f
                  sltiu        t6, a6, 468
                  lui          t5, 215845
                  sll          a4, t2, a7
                  bgeu         a2, t1, 819f
818:              bgeu         t6, a3, 822f
819:              xori         a0, t3, -1150
                  bgeu         a2, t2, 828f
                  srli         s0, s1, 31
822:              lui          s9, 952214
823:              srl          t1, t1, a6
                  sub          s1, sp, s11
                  auipc        a1, 14355
                  srai         sp, gp, 1
827:              bgeu         s10, a2, 831f
828:              sll          s11, t2, s3
                  slt          sp, s7, a2
                  add          t6, zero, t3
831:              sub          a1, sp, t0
                  andi         s9, t6, 1073
                  slt          a1, a4, a3
                  slt          a5, a5, s2
                  andi         t2, a1, 1809
                  sltu         s4, tp, a1
                  nop
                  beq          zero, t4, 844f
                  srl          s0, zero, t0
                  sll          s1, t4, s6
                  or           s7, tp, a2
                  bltu         a2, s5, 857f
                  beq          a5, t0, 855f
844:              slti         tp, s1, 1935
                  slti         t2, zero, -819
                  bgeu         a7, s7, 852f
                  beq          s2, t4, 851f
                  slli         a1, ra, 10
                  sra          s3, t1, t2
                  sra          s11, s0, a1
851:              and          t6, ra, t2
852:              slli         s11, ra, 14
                  sub          s9, zero, a0
                  srai         a3, a4, 13
855:              xor          sp, gp, s5
                  bgeu         a2, a7, 866f
857:              beq          s1, t3, 873f
                  srli         a1, s0, 11
                  sltu         tp, s5, s0
                  bne          a0, s0, 874f
                  xori         a0, t4, 1597
                  sltiu        s11, sp, -2026
                  bltu         s8, sp, 872f
                  sltu         sp, a4, t6
                  bgeu         s8, a4, 869f
866:              srl          t6, s10, t0
                  bne          s9, a0, 873f
                  srai         s0, s3, 0
869:              and          ra, t6, a3
                  addi         s7, a3, -1280
                  srai         s5, s0, 22
872:              ori          t2, s11, -1759
873:              auipc        s10, 964574
874:              xor          s6, a2, zero
                  xori         s2, s2, -800
                  sll          s1, a3, s7
                  auipc        sp, 167311
                  bltu         a0, a4, 884f
                  srai         a4, t1, 15
                  sub          zero, sp, t3
                  xori         t2, s2, 221
                  blt          a4, tp, 890f
                  sra          a2, a4, a3
884:              bltu         s4, a1, 891f
                  bltu         zero, a1, 888f
                  and          a2, a0, t1
                  sll          s7, t3, a7
888:              addi         a5, a2, -1151
                  bne          a6, a2, 900f
890:              and          a7, s11, s2
891:              andi         t6, a6, 138
                  beq          t3, t0, 912f
                  sltu         sp, s3, s8
                  or           s2, s1, a7
                  bgeu         gp, a1, 899f
                  srli         s8, a5, 0
                  or           s5, s5, a5
                  blt          a5, t1, 904f
899:              sub          t3, s11, s0
900:              slli         a4, tp, 6
                  sltiu        gp, t3, 672
                  or           s11, zero, a5
                  ori          a3, s5, 1375
904:              or           a3, a1, s8
                  bne          t4, a0, 911f
                  srai         s0, ra, 7
                  srli         s7, s8, 22
                  bltu         t0, t0, 924f
                  slti         a2, tp, -167
                  sra          sp, s0, a6
911:              sltiu        sp, t5, -74
912:              sltu         a4, t1, a5
                  addi         s7, s7, 644
                  sltiu        s1, ra, 116
                  beq          a2, a3, 923f
                  beq          s5, s3, 926f
                  srai         t6, s3, 13
                  srli         s10, s4, 20
                  bge          a6, a6, 928f
                  andi         s7, tp, 495
                  blt          t3, a0, 931f
                  sub          t5, s6, s7
923:              sltiu        t1, s7, -403
924:              nop
                  andi         a7, a6, 1692
926:              bltu         s10, t3, 941f
                  slli         s4, s6, 27
928:              slti         a1, t4, -1090
                  slt          s1, s0, t5
                  xori         a5, t2, 1198
931:              auipc        s0, 215031
                  srli         t6, a2, 6
                  sltu         t2, gp, a6
                  bne          sp, a1, 950f
                  and          s5, s10, s6
                  blt          s1, s4, 938f
                  sll          a7, sp, zero
938:              srl          t3, s0, a7
                  sltu         sp, a1, a1
                  auipc        a2, 45063
941:              auipc        tp, 619436
                  bgeu         s1, t2, 945f
                  sll          s6, a6, s11
                  sll          s0, t4, t3
945:              bge          s3, a0, 949f
                  andi         a7, s11, 1591
                  bgeu         t5, a7, 958f
                  srai         s11, a2, 3
949:              auipc        s7, 676439
950:              andi         a2, a0, 833
                  bne          t5, s2, 955f
                  andi         a3, s1, 523
                  sra          t1, a4, s3
                  bge          a5, gp, 966f
955:              slli         t1, s4, 4
                  xor          a2, s1, s1
                  srl          s7, tp, s6
958:              and          s0, s0, gp
                  slti         s11, s5, 119
                  addi         s3, t0, -1262
                  bne          t2, sp, 981f
                  xori         gp, s6, 1325
                  bge          sp, t3, 967f
                  sll          t1, a4, s6
                  bge          t1, t6, 971f
966:              nop
967:              beq          s10, s11, 983f
                  beq          s0, a1, 972f
                  lui          gp, 333613
                  bge          t5, ra, 972f
971:              xor          t1, s5, ra
972:              ori          s4, tp, 1826
                  bge          tp, s11, 979f
                  add          zero, zero, a5
                  lui          tp, 571915
                  sra          s0, s1, t2
                  lui          s10, 656235
                  ori          a4, s6, -1954
979:              add          t6, a2, a6
                  xori         s10, gp, 80
981:              slli         a1, s2, 10
                  andi         s1, a7, 1858
983:              andi         a5, s1, 1038
                  slti         a1, s6, 1668
                  andi         t6, gp, -748
                  slti         a7, a3, 1361
                  addi         s2, a6, -843
                  sll          a0, s5, tp
                  sll          s7, s1, s11
                  andi         s8, t0, -487
                  ori          s7, tp, -767
                  auipc        gp, 213628
                  slt          s10, s0, a2
                  nop
                  auipc        s1, 641218
                  auipc        s4, 375644
                  add          s9, s7, s8
                  sll          ra, s11, s2
                  bgeu         zero, t6, 1011f
                  sll          s8, s2, a3
                  add          a7, t3, sp
                  lui          a1, 929373
                  bltu         s10, a6, 1011f
                  srli         t1, s9, 31
                  ori          t3, s6, -278
                  add          s4, zero, t4
                  or           s7, t0, gp
                  sltu         zero, t4, t4
                  lui          zero, 724329
                  srli         tp, s3, 26
1011:             srai         t3, s1, 14
                  ori          ra, a5, -115
                  beq          t6, t3, 1020f
                  srl          s2, a6, t5
                  bge          t3, tp, 1028f
                  bne          a7, a7, 1020f
                  bne          s8, sp, 1031f
                  sra          s9, t1, a3
                  andi         a2, zero, -1187
1020:             sub          a3, t0, t2
                  srai         t1, s4, 29
                  slli         t1, zero, 23
                  blt          t3, t4, 1025f
                  xor          a3, s8, a0
1025:             xor          s2, s5, t6
                  bne          t4, t2, 1032f
                  sltu         a0, t6, s6
1028:             lui          s3, 203219
                  beq          a7, t6, 1033f
                  srl          a7, t2, a2
1031:             lui          t2, 10584
1032:             beq          s5, s11, 1034f
1033:             bne          s8, s0, 1040f
1034:             blt          ra, s6, 1043f
                  blt          ra, s11, 1041f
                  bgeu         s7, s5, 1046f
                  auipc        a5, 362829
                  auipc        s4, 575874
                  blt          s5, a3, 1054f
1040:             sltu         ra, ra, a6
1041:             blt          a2, a0, 1055f
                  slli         a7, sp, 25
1043:             bne          t2, tp, 1047f
                  sub          s10, t1, a7
                  sll          t2, t5, t0
1046:             addi         s10, s2, -969
1047:             sltiu        a2, gp, 961
                  srl          t6, sp, t4
                  add          s5, t5, a1
                  ori          sp, t5, 213
                  add          s9, a5, tp
                  and          s9, a3, t5
                  add          a2, gp, a6
1054:             xori         a3, a7, 1614
1055:             sltu         t2, s6, s5
                  sra          t6, a1, s8
                  blt          t2, a1, 1063f
                  lui          s11, 1041868
                  xori         s2, zero, 7
                  auipc        a7, 1032175
                  beq          t2, a6, 1081f
                  slti         ra, zero, -1648
1063:             ori          s9, s9, -1060
                  nop
                  bgeu         s4, t3, 1075f
                  xori         tp, a6, -1966
sub_5_8:          jal          ra, 6f
0:                jal          ra, 2f
1:                jal          t1, 0b
2:                jal          ra, 8f
3:                jal          s0, 1b
4:                jal          ra, 7f
5:                jal          s9, 10f
6:                jal          ra, 3b
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          gp, 4b
10:               add          a1, s4, a1
                  slli         s8, s1, 2
                  andi         s1, a1, -260
                  ori          s5, a0, 865
                  bge          s3, s6, 1076f
                  sub          s9, t3, s5
                  beq          a6, sp, 1085f
                  lui          sp, 845431
                  bltu         sp, tp, 1076f
1075:             sra          s7, s3, zero
1076:             sltiu        s3, t2, 1336
                  andi         s9, t0, -256
                  srai         s3, zero, 1
                  bltu         s9, s4, 1087f
                  lui          ra, 352705
1081:             sra          s8, t3, s5
                  sll          a4, s4, t0
                  auipc        s9, 159271
                  andi         a2, s4, 471
1085:             bltu         t0, s6, 1097f
                  sll          s9, a4, tp
1087:             auipc        s2, 76055
                  blt          a3, t2, 1104f
                  srai         ra, s9, 8
                  beq          s3, gp, 1094f
                  bgeu         a7, s4, 1107f
                  add          s7, s4, t3
                  lui          a7, 693016
1094:             bge          t6, t3, 1105f
                  sltiu        gp, sp, 208
                  or           s10, t2, t6
1097:             addi         t6, t4, 288
                  andi         a3, s11, 1071
                  sltiu        t5, a1, 1370
                  slli         s7, t4, 21
                  sub          t2, gp, t2
                  ori          a1, s10, -403
                  xor          t1, s1, s2
1104:             nop
1105:             slt          ra, s2, a1
                  srl          s9, t2, sp
1107:             nop
                  sub          t5, a0, s11
                  sll          s4, s1, a5
                  srai         tp, zero, 5
                  ori          s4, t4, 453
                  sll          zero, t0, sp
                  auipc        zero, 722140
                  sub          a7, s4, t2
                  ori          t5, a1, 549
                  ori          s4, t1, 976
                  and          s8, s6, t1
                  lui          zero, 605351
                  sub          gp, a0, s11
                  sub          s7, sp, s10
                  slli         t6, s3, 9
                  bltu         t3, gp, 1130f
                  slt          t3, a5, sp
                  blt          s1, a5, 1130f
                  bltu         s1, tp, 1137f
                  sub          a4, a1, a4
                  blt          s10, a6, 1133f
                  ori          a0, s3, 1048
                  srl          s11, t3, t5
1130:             sra          t3, a2, s9
                  slt          a3, s11, t2
                  lui          a2, 988085
1133:             ori          s8, t6, 1160
                  sra          a2, a3, t1
                  sll          s3, zero, s3
                  beq          t4, tp, 1139f
1137:             lui          a1, 852867
                  or           s9, t0, s6
1139:             bge          s8, a4, 1143f
                  slti         s7, a3, 1046
                  nop
                  sltu         ra, s0, a2
1143:             bne          tp, s4, 1145f
                  slt          sp, s4, t0
1145:             slt          a4, a0, a5
                  bgeu         gp, s6, 1162f
                  andi         t2, s10, -225
                  or           sp, ra, s2
                  bne          a6, t4, 1153f
                  nop
                  beq          ra, t3, 1157f
                  xori         a0, s11, 881
1153:             xor          s11, s6, sp
                  xor          s9, s1, ra
                  ori          s0, s7, 125
                  sra          s10, s7, t0
1157:             blt          a5, s11, 1161f
                  slt          a3, gp, a7
                  sltiu        t5, s8, -565
                  bge          s5, s6, 1174f
1161:             sra          t3, s6, s11
1162:             sltu         a7, t6, t6
                  srli         s10, s6, 9
                  srai         s4, a0, 31
                  ori          t5, tp, -1429
                  andi         s0, t4, -1213
                  or           s4, tp, s4
                  or           s10, ra, t6
                  sltu         a0, a3, s5
                  nop
                  addi         a1, ra, 875
                  sltu         a0, tp, t2
                  add          a7, a5, t5
1174:             nop
                  or           s0, t6, a3
                  sll          a1, t4, a3
                  nop
                  xori         t2, s7, 738
                  slt          t6, a6, t0
                  slt          s2, s0, ra
                  beq          ra, t6, 1183f
                  sra          a0, s2, s10
1183:             andi         a0, s11, -371
                  blt          t2, ra, 1194f
                  srai         t6, s0, 18
                  bge          s3, sp, 1198f
                  add          t5, s8, s6
                  bge          sp, s9, 1204f
                  andi         s7, gp, 1580
                  and          zero, s11, t6
                  sub          s11, a2, a3
                  slti         a4, s1, 987
                  blt          s6, a2, 1196f
1194:             slt          sp, s11, t2
                  slli         t5, s9, 27
1196:             beq          s7, t2, 1206f
                  sltiu        sp, s6, 1707
1198:             auipc        s5, 730997
                  sll          s6, a3, s2
                  blt          sp, s2, 1202f
                  auipc        sp, 890729
1202:             slt          ra, a1, s8
                  add          s1, t0, a6
1204:             xor          s3, t6, a7
                  xor          s4, ra, a4
1206:             sra          ra, a5, s11
                  sll          tp, t0, s11
                  sub          a5, t6, gp
                  nop
                  beq          s6, s2, 1214f
                  slt          s5, s10, a7
                  sra          a7, s5, t5
                  andi         t5, tp, 1485
1214:             ori          s0, sp, 236
                  xor          a0, a4, s4
                  xori         ra, s0, -1488
                  addi         s5, s4, 269
                  lui          s1, 399337
                  or           gp, a0, tp
                  sll          s1, t4, s8
                  sltiu        tp, zero, 1534
                  or           t3, t0, t5
                  srai         s7, s9, 20
sub_5_10:         jal          ra, 10f
0:                jal          tp, 3f
1:                jal          ra, 7f
2:                jal          ra, 15f
3:                jal          t1, 5f
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          ra, 14f
7:                jal          ra, 11f
8:                jal          ra, 0b
9:                jal          s6, 13f
10:               jal          s7, 1b
11:               jal          ra, 9b
12:               jal          t6, 8b
13:               jal          ra, 4b
14:               jal          t1, 2b
15:               xor          gp, a6, s1
                  ori          tp, s4, -1681
                  or           t5, s10, t2
                  srl          s6, t5, s10
                  srl          t1, s3, t3
                  or           ra, a5, a0
                  sltu         s1, a0, s8
                  nop
                  sll          sp, a5, t5
                  srli         s7, s7, 6
                  lui          a3, 228687
                  andi         s7, tp, -394
                  slt          a2, sp, s6
                  lui          s8, 545267
                  sll          t2, gp, gp
                  slli         a0, ra, 17
                  lw           ra, 4(t0)
                  add          t3, s9, a0
                  addi         t0, t0, 12
                  xori         s9, s1, -1527
                  xori         s10, s9, 39
                  ori          s4, s5, 979
                  xor          t2, a1, a1
                  ori          sp, s3, -749
                  or           tp, t2, a2
                  sltiu        a5, a6, -807
1774:             addi x3, x1, 1
1774:             jalr x3, x3, 0
sub_3:            ori          s6, s5, -1312
                  addi         t0, t0, -40
                  sra          t2, a6, s3
                  sltiu        t1, t0, 537
                  srli         t1, s4, 24
                  add          zero, s7, t3
                  xor          s7, a4, gp
                  sltu         s0, s1, s0
                  andi         s5, tp, -1220
                  xori         s8, zero, -1976
                  sw           ra, 4(t0)
                  add          t1, zero, t1
                  auipc        a5, 419536
                  add          s1, s2, s2
                  bge          gp, a6, 10f
                  slt          s3, a3, sp
                  sub          a2, s4, s10
                  or           a0, a6, sp
                  slli         a2, a7, 17
                  xor          a4, s10, a3
                  or           t3, t4, a7
                  nop
10:               sltu         s8, a7, s11
                  slt          t5, s2, tp
                  lw           ra, 4(t0)
                  lui          s6, 972534
                  slli         s8, ra, 19
                  addi         t0, t0, 40
                  sra          s3, s11, s6
29:               addi x17, x1, 1
29:               jalr x17, x17, 0
sub_4:            bne          s7, sp, sub_4_stack_p
sub_4_stack_p:    addi         t0, t0, -24
                  sltiu        s0, a3, 473
                  sw           ra, 4(t0)
                  slti         zero, t3, -626
                  slt          s3, s7, a1
                  and          a5, a4, t2
                  add          gp, ra, s6
                  slt          a0, a7, s5
                  slti         a7, zero, 308
                  slt          a4, t3, ra
                  xori         s4, s2, -980
                  or           a3, s11, s2
                  addi         a4, a1, 2016
                  and          s10, gp, t2
                  and          t2, s7, a6
                  sra          a4, a0, s1
                  slli         s8, s8, 22
                  srl          s1, a7, t6
                  ori          s8, a6, -1118
                  xori         t1, s7, 1476
                  lw           ra, 4(t0)
                  or           s8, t0, t6
                  sub          s5, s7, tp
                  slli         a3, s4, 27
                  sltu         s0, s10, t6
                  addi         t0, t0, 24
                  slt          s3, t2, t3
                  andi         t3, t1, 1576
                  sub          s6, s3, t3
                  sra          a7, s10, tp
31:               addi x24, x1, 1
31:               jalr x24, x24, 0
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
mmode_intr_vector_1:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
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
                  add x16, x5, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x16, x5, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x31, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x31, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x31, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x31, x19, ecall_handler
                  li x19, 0x1
                  beq x31, x19, instr_fault_handler
                  li x19, 0x5
                  beq x31, x19, load_fault_handler
                  li x19, 0x7
                  beq x31, x19, store_fault_handler
                  li x19, 0xc
                  beq x31, x19, pt_fault_handler
                  li x19, 0xd
                  beq x31, x19, pt_fault_handler
                  li x19, 0xf
                  beq x31, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
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
                  add x5, x16, zero
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
                  add x5, x16, zero
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
                  add x5, x16, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x5, x16, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x5, x16, zero
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
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x5, x16, zero
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
