.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 0
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x1898e8da
                  li x1, 0x58a539b7
                  li x2, 0xe9999bec
                  li x3, 0x80000000
                  li x4, 0xe
                  li x5, 0x0
                  li x6, 0xc
                  li x7, 0x382885a1
                  li x8, 0xfa29bd57
                  li x9, 0xf7351f27
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xfc8d1202
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xf5c05cc2
                  li x18, 0x0
                  li x19, 0xd
                  li x20, 0x80000000
                  li x22, 0xc
                  li x23, 0x2
                  li x24, 0xb7704f0c
                  li x25, 0xfd4e2f33
                  li x26, 0x80000000
                  li x27, 0x5c90c40b
                  li x28, 0x0
                  li x29, 0x9b285c
                  li x30, 0x80000000
                  la x31, user_stack_end
main:             jal          ra, 8f
0:                jal          ra, 11f
1:                jal          ra, 22f
2:                jal          s4, 21f
3:                jal          t1, 26f
4:                jal          a1, 2b
5:                jal          a5, 15f
6:                jal          t1, 4b
7:                jal          t1, 3b
8:                jal          ra, 25f
9:                jal          ra, 12f
10:               jal          sp, 0b
11:               jal          t5, 20f
12:               jal          ra, 6b
13:               jal          ra, 9b
14:               jal          ra, 16f
15:               jal          ra, 7b
16:               jal          t3, 17f
17:               jal          ra, 5b
18:               jal          ra, 1b
19:               jal          ra, 24f
20:               jal          sp, 23f
21:               jal          ra, 14b
22:               jal          t1, 19b
23:               jal          ra, 18b
24:               jal          ra, 13b
25:               jal          gp, 10b
26:               lui          t0, 749654
main_2:           jal          ra, 14f
0:                jal          a1, 19f
1:                jal          t1, 24f
2:                jal          ra, 23f
3:                jal          ra, 22f
4:                jal          ra, 8f
5:                jal          ra, 16f
6:                jal          t1, 13f
7:                jal          a4, 4b
8:                jal          ra, 6b
9:                jal          t0, 21f
10:               jal          s7, 12f
11:               jal          t1, 3b
12:               jal          ra, 15f
13:               jal          ra, 11b
14:               jal          a3, 0b
15:               jal          t1, 18f
16:               jal          ra, 10b
17:               jal          ra, 7b
18:               jal          t5, 9b
19:               jal          t3, 20f
20:               jal          a1, 5b
21:               jal          ra, 17b
22:               jal          ra, 2b
23:               jal          t1, 1b
24:               add          tp, a3, t5
                  add          a3, s5, a2
                  slli         t1, s9, 1
                  bgeu         a3, a0, 5f
                  srl          s8, s8, a3
                  addi         a1, s4, 838
5:                add          a3, sp, ra
                  slli         tp, a6, 16
                  sll          s10, a1, s11
                  sub          a5, a1, t5
                  bge          ra, a0, 11f
                  lui          a3, 150745
11:               xor          zero, zero, a1
                  bgeu         zero, a3, 29f
                  auipc        s1, 11765
                  slt          tp, a7, s11
                  slti         sp, s9, 619
                  sra          s3, sp, s8
                  andi         s10, t0, -30
                  blt          s6, t1, 23f
                  and          s11, zero, s7
                  xori         t4, a0, 1387
                  nop
                  bge          t4, s7, 38f
23:               auipc        t3, 868925
                  sltu         s9, s8, a5
                  add          t3, a6, s4
                  slli         s6, zero, 13
                  sltiu        ra, a3, 1514
                  ori          s3, s8, 409
29:               slt          a1, a4, t0
                  and          s3, s2, t0
                  add          a1, sp, s7
                  sltiu        t0, tp, -599
                  bge          a2, tp, 44f
                  bge          a0, a0, 43f
                  srai         s7, t6, 0
                  bne          s0, s4, 55f
                  sra          a5, s5, a2
38:               or           a7, s11, t5
                  sub          t4, a2, s4
                  lui          a3, 299754
                  bgeu         t6, a4, 48f
                  srai         a0, tp, 16
43:               slli         s7, s10, 0
44:               xor          s9, s10, a2
                  srl          s4, s0, s0
                  bne          s9, a4, 57f
                  slli         s0, s8, 7
48:               or           t1, a4, a2
                  sra          t1, zero, t2
                  sll          a6, s9, zero
                  sltu         s10, s0, a2
                  bltu         s9, zero, 65f
                  srai         ra, s10, 23
                  bltu         s0, gp, 65f
55:               xor          ra, s11, a5
                  add          a5, a0, s3
57:               sll          a1, a3, s8
                  slt          s0, ra, s8
                  beq          s5, a7, 67f
                  bne          s8, ra, 69f
                  xori         s6, s4, 100
                  nop
                  nop
                  blt          t6, gp, 70f
65:               srl          t5, a0, sp
                  and          zero, s7, a7
67:               slt          s3, tp, sp
                  bltu         gp, a4, 87f
69:               bne          ra, t1, 89f
70:               bgeu         a4, s0, 87f
                  ori          t5, a6, 1744
                  slti         s0, s1, 941
                  slti         s4, t0, 1995
                  sub          s8, a7, a4
                  sltu         a3, a3, gp
                  lui          t4, 843562
                  srai         a6, s11, 27
                  bne          s3, t3, 86f
                  srl          a4, a4, s6
                  andi         zero, s5, 863
                  sra          a2, s11, t4
                  lui          t3, 224616
                  srli         t3, t4, 27
                  bltu         t6, t1, 90f
                  lui          t3, 897582
86:               or           sp, s6, a5
87:               bne          s2, zero, 97f
                  slli         t0, s11, 23
89:               srl          a0, s3, s4
90:               and          s7, t0, a1
                  nop
                  or           a2, s1, s2
                  sll          s1, s2, t3
                  beq          s1, a1, 105f
                  add          t3, a4, s1
                  and          s0, sp, t3
97:               auipc        a0, 705318
                  addi         t1, s0, 1581
                  add          gp, a3, s3
                  xor          s0, gp, a1
                  sra          t0, s9, a6
                  xor          a7, t3, zero
                  sub          s9, a7, a3
                  add          s7, t4, s8
105:              srl          a2, a5, s3
                  xori         t3, a7, 256
                  or           s9, s5, s10
                  slli         s4, a1, 31
main_0:           jal          ra, 9f
0:                jal          ra, 22f
1:                jal          ra, 7f
2:                jal          ra, 26f
3:                jal          ra, 25f
4:                jal          gp, 10f
5:                jal          t1, 0b
6:                jal          ra, 21f
7:                jal          t1, 17f
8:                jal          gp, 24f
9:                jal          gp, 3b
10:               jal          t1, 23f
11:               jal          ra, 15f
12:               jal          t1, 16f
13:               jal          t1, 14f
14:               jal          ra, 8b
15:               jal          ra, 18f
16:               jal          t1, 19f
17:               jal          t0, 13b
18:               jal          ra, 20f
19:               jal          a6, 2b
20:               jal          ra, 1b
21:               jal          ra, 4b
22:               jal          t1, 6b
23:               jal          a5, 12b
24:               jal          s11, 5b
25:               jal          ra, 11b
26:               addi         t2, a1, -1561
                  nop
                  bge          t1, t3, 117f
                  sra          s0, tp, t5
                  srli         s11, s11, 21
                  bge          a7, s8, 123f
                  or           a6, s3, a5
                  srli         s11, a2, 16
                  sltu         zero, t4, a7
117:              slt          zero, a1, t4
                  andi         s9, s2, -483
                  sll          a3, a6, s0
                  sll          t3, t2, a4
                  slli         a5, s6, 31
                  nop
123:              beq          s3, tp, 139f
                  bne          s5, t4, 131f
                  andi         a3, t5, 1390
                  bgeu         gp, a4, 137f
                  srai         s3, gp, 28
                  bne          a0, s3, 142f
                  bne          sp, a2, 130f
130:              lui          zero, 276843
131:              srl          s3, a2, s0
                  sub          sp, s5, a3
                  and          zero, a3, t6
                  sltiu        t5, a2, -1066
                  sll          t5, s6, a5
                  sll          tp, t2, t1
137:              srai         a7, t1, 29
                  andi         a4, s4, -512
139:              bgeu         t2, t1, 146f
                  sll          s3, a7, a5
                  add          t5, t6, s6
142:              srai         s9, s8, 12
                  sltu         a3, ra, ra
                  add          s8, ra, s1
                  bne          t0, t6, 152f
146:              blt          t3, ra, 155f
                  xor          s4, a4, s9
                  bgeu         a3, a6, 155f
                  addi         s6, t5, 511
                  and          t4, a3, s7
                  srli         t0, t0, 4
                  xor          zero, t1, a7
                  or           sp, s11, sp
                  la           t1, sub_1
                  add          s4, s9, ra
                  addi         t1, t1, 277
                  bge          s1, sp, main_j1 #branch to jump instr
                  xori         gp, a5, 559
                  and          s10, gp, t6
main_j1:          jalr         ra, t1, -276 #jump main -> sub_1
152:              sltiu        gp, t3, -813
                  xor          s8, s7, s1
                  sra          t1, a5, t6
155:              slti         a4, t6, 187
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bgeu         tp, t2, sub_1_stack_p
                  lui          t5, 418643
                  sltu         a4, a3, t2
sub_1_stack_p:    addi         t6, t6, -28
                  sltiu        t1, s7, 1679
                  sltu         t1, s8, t3
                  sw           ra, 4(t6)
                  xor          a3, t0, s11
sub_1_35:         jal          ra, 1f
0:                jal          ra, 8f
1:                jal          t5, 4f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          t1, 6f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          tp, 11f
9:                jal          gp, 2b
10:               jal          ra, 9b
11:               andi         a4, a0, -395
sub_1_18:         jal          ra, 2f
0:                jal          ra, 16f
1:                jal          t5, 19f
2:                jal          t2, 14f
3:                jal          t5, 8f
4:                jal          s4, 11f
5:                jal          s7, 22f
6:                jal          tp, 13f
7:                jal          ra, 5b
8:                jal          ra, 15f
9:                jal          t1, 4b
10:               jal          t1, 17f
11:               jal          ra, 20f
12:               jal          t1, 0b
13:               jal          a0, 21f
14:               jal          s8, 6b
15:               jal          ra, 10b
16:               jal          ra, 3b
17:               jal          sp, 18f
18:               jal          ra, 9b
19:               jal          ra, 7b
20:               jal          ra, 1b
21:               jal          ra, 12b
22:               xor          t5, t4, s9
sub_1_6:          jal          ra, 3f
0:                jal          a6, 19f
1:                jal          ra, 21f
2:                jal          a5, 7f
3:                jal          ra, 2b
4:                jal          ra, 20f
5:                jal          ra, 1b
6:                jal          t1, 22f
7:                jal          ra, 8f
8:                jal          t1, 17f
9:                jal          ra, 18f
10:               jal          t1, 13f
11:               jal          ra, 9b
12:               jal          t1, 16f
13:               jal          ra, 11b
14:               jal          sp, 0b
15:               jal          t1, 14b
16:               jal          ra, 15b
17:               jal          ra, 4b
18:               jal          s9, 6b
19:               jal          s11, 10b
20:               jal          ra, 5b
21:               jal          ra, 12b
22:               and          s8, t2, sp
sub_1_15:         jal          ra, 16f
0:                jal          ra, 2f
1:                jal          s6, 13f
2:                jal          t0, 1b
3:                jal          a0, 18f
4:                jal          s1, 14f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          t1, 17f
8:                jal          a1, 7b
9:                jal          t1, 6b
10:               jal          ra, 3b
11:               jal          ra, 0b
12:               jal          t3, 9b
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          t1, 11b
16:               jal          ra, 15b
17:               jal          ra, 12b
18:               srai         sp, s5, 18
sub_1_19:         jal          ra, 1f
0:                jal          ra, 13f
1:                jal          ra, 5f
2:                jal          a2, 14f
3:                jal          ra, 6f
4:                jal          t1, 3b
5:                jal          s8, 8f
6:                jal          gp, 9f
7:                jal          t3, 2b
8:                jal          ra, 10f
9:                jal          ra, 12f
10:               jal          t1, 11f
11:               jal          a7, 4b
12:               jal          ra, 0b
13:               jal          ra, 7b
14:               addi         a4, gp, 953
sub_1_9:          jal          ra, 11f
0:                jal          ra, 9f
1:                jal          a2, 7f
2:                jal          a5, 14f
3:                jal          ra, 13f
4:                jal          s3, 0b
5:                jal          t4, 15f
6:                jal          ra, 5b
7:                jal          t1, 16f
8:                jal          ra, 3b
9:                jal          tp, 6b
10:               jal          gp, 4b
11:               jal          t1, 12f
12:               jal          ra, 2b
13:               jal          ra, 1b
14:               jal          t0, 10b
15:               jal          ra, 8b
16:               add          zero, s8, s0
sub_1_33:         jal          ra, 12f
0:                jal          ra, 11f
1:                jal          ra, 8f
2:                jal          ra, 5f
3:                jal          ra, 4f
4:                jal          t1, 7f
5:                jal          t0, 14f
6:                jal          ra, 1b
7:                jal          ra, 2b
8:                jal          t1, 9f
9:                jal          t1, 13f
10:               jal          ra, 15f
11:               jal          t0, 6b
12:               jal          ra, 3b
13:               jal          t1, 10b
14:               jal          a4, 0b
15:               nop
sub_1_34:         jal          ra, 18f
0:                jal          t1, 14f
1:                jal          s3, 17f
2:                jal          t1, 16f
3:                jal          ra, 6f
4:                jal          ra, 22f
5:                jal          ra, 15f
6:                jal          ra, 19f
7:                jal          ra, 10f
8:                jal          t1, 0b
9:                jal          t1, 20f
10:               jal          t1, 5b
11:               jal          gp, 1b
12:               jal          s8, 11b
13:               jal          a4, 8b
14:               jal          ra, 2b
15:               jal          ra, 3b
16:               jal          t2, 21f
17:               jal          t1, 4b
18:               jal          s1, 9b
19:               jal          s6, 12b
20:               jal          ra, 13b
21:               jal          ra, 7b
22:               sltiu        s0, a1, -1567
sub_1_31:         jal          ra, 6f
0:                jal          t1, 1f
1:                jal          ra, 7f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          t3, 0b
5:                jal          gp, 10f
6:                jal          sp, 15f
7:                jal          t1, 5b
8:                jal          t1, 3b
9:                jal          t1, 18f
10:               jal          t1, 19f
11:               jal          t0, 14f
12:               jal          s7, 17f
13:               jal          ra, 16f
14:               jal          a2, 4b
15:               jal          s11, 8b
16:               jal          ra, 20f
17:               jal          ra, 13b
18:               jal          ra, 11b
19:               jal          ra, 2b
20:               slli         s1, a3, 29
sub_1_36:         jal          ra, 11f
0:                jal          t1, 16f
1:                jal          a3, 6f
2:                jal          ra, 3f
3:                jal          t1, 15f
4:                jal          t1, 13f
5:                jal          tp, 12f
6:                jal          t1, 2b
7:                jal          ra, 9f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          ra, 4b
11:               jal          t1, 8b
12:               jal          a7, 0b
13:               jal          ra, 14f
14:               jal          t1, 5b
15:               jal          t1, 10b
16:               add          t1, t6, s3
sub_1_5:          jal          ra, 18f
0:                jal          ra, 9f
1:                jal          ra, 13f
2:                jal          a1, 14f
3:                jal          ra, 1b
4:                jal          a6, 15f
5:                jal          t1, 11f
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          t0, 3b
9:                jal          t0, 17f
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               jal          t1, 10b
13:               jal          t1, 7b
14:               jal          t1, 19f
15:               jal          tp, 12b
16:               jal          ra, 0b
17:               jal          s8, 4b
18:               jal          t1, 16b
19:               sra          ra, a5, sp
sub_1_7:          jal          ra, 15f
0:                jal          ra, 3f
1:                jal          ra, 18f
2:                jal          ra, 12f
3:                jal          t1, 7f
4:                jal          ra, 9f
5:                jal          ra, 1b
6:                jal          t5, 11f
7:                jal          s6, 17f
8:                jal          ra, 6b
9:                jal          a7, 20f
10:               jal          ra, 19f
11:               jal          a3, 0b
12:               jal          gp, 4b
13:               jal          t4, 5b
14:               jal          t1, 2b
15:               jal          ra, 13b
16:               jal          gp, 8b
17:               jal          a5, 14b
18:               jal          ra, 10b
19:               jal          s8, 16b
20:               xori         a1, a7, -1001
sub_1_4:          jal          ra, 0f
0:                jal          tp, 4f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          ra, 2b
7:                jal          s10, 11f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               sltiu        s7, a7, -275
sub_1_24:         jal          ra, 10f
0:                jal          t1, 5f
1:                jal          s8, 15f
2:                jal          ra, 0b
3:                jal          a4, 12f
4:                jal          ra, 16f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          ra, 21f
8:                jal          t1, 14f
9:                jal          ra, 1b
10:               jal          ra, 9b
11:               jal          ra, 20f
12:               jal          t1, 11b
13:               jal          ra, 17f
14:               jal          a7, 19f
15:               jal          t1, 8b
16:               jal          s11, 22f
17:               jal          ra, 2b
18:               jal          s4, 13b
19:               jal          t3, 6b
20:               jal          gp, 4b
21:               jal          ra, 18b
22:               sub          gp, s4, s1
sub_1_16:         jal          ra, 10f
0:                jal          a4, 9f
1:                jal          t4, 25f
2:                jal          s7, 6f
3:                jal          t1, 2b
4:                jal          t3, 7f
5:                jal          ra, 17f
6:                jal          t1, 15f
7:                jal          ra, 19f
8:                jal          t1, 3b
9:                jal          s8, 12f
10:               jal          a5, 13f
11:               jal          t1, 14f
12:               jal          ra, 5b
13:               jal          t2, 23f
14:               jal          s10, 27f
15:               jal          t5, 4b
16:               jal          s6, 26f
17:               jal          ra, 21f
18:               jal          ra, 11b
19:               jal          ra, 1b
20:               jal          ra, 24f
21:               jal          t3, 22f
22:               jal          t1, 18b
23:               jal          t3, 20b
24:               jal          ra, 8b
25:               jal          a3, 16b
26:               jal          ra, 0b
27:               add          s1, s9, t4
sub_1_14:         jal          ra, 0f
0:                jal          ra, 5f
1:                jal          t3, 3f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          ra, 4b
8:                jal          t1, 9f
9:                jal          t1, 6b
10:               sltu         s0, tp, t5
sub_1_10:         jal          ra, 0f
0:                jal          t1, 10f
1:                jal          t1, 4f
2:                jal          ra, 21f
3:                jal          ra, 14f
4:                jal          ra, 13f
5:                jal          t1, 20f
6:                jal          ra, 12f
7:                jal          gp, 19f
8:                jal          t1, 5b
9:                jal          s4, 17f
10:               jal          s6, 6b
11:               jal          ra, 22f
12:               jal          a2, 1b
13:               jal          t1, 18f
14:               jal          ra, 16f
15:               jal          t1, 3b
16:               jal          ra, 7b
17:               jal          ra, 2b
18:               jal          sp, 9b
19:               jal          ra, 8b
20:               jal          t1, 11b
21:               jal          t1, 15b
22:               xori         a7, s3, 869
sub_1_32:         jal          ra, 3f
0:                jal          ra, 13f
1:                jal          a4, 22f
2:                jal          ra, 18f
3:                jal          ra, 20f
4:                jal          ra, 17f
5:                jal          t1, 6f
6:                jal          t2, 15f
7:                jal          ra, 8f
8:                jal          tp, 0b
9:                jal          ra, 4b
10:               jal          ra, 11f
11:               jal          ra, 16f
12:               jal          ra, 9b
13:               jal          tp, 10b
14:               jal          t2, 12b
15:               jal          ra, 14b
16:               jal          s0, 19f
17:               jal          t2, 21f
18:               jal          ra, 1b
19:               jal          t1, 2b
20:               jal          s0, 5b
21:               jal          t1, 7b
22:               jal          s3, 23f
23:               srli         s10, s5, 27
sub_1_26:         jal          ra, 14f
0:                jal          t1, 9f
1:                jal          a3, 13f
2:                jal          tp, 4f
3:                jal          ra, 20f
4:                jal          ra, 5f
5:                jal          ra, 18f
6:                jal          ra, 10f
7:                jal          ra, 21f
8:                jal          gp, 3b
9:                jal          t1, 16f
10:               jal          s7, 7b
11:               jal          a3, 17f
12:               jal          ra, 2b
13:               jal          t1, 15f
14:               jal          ra, 11b
15:               jal          s6, 6b
16:               jal          ra, 8b
17:               jal          ra, 12b
18:               jal          t1, 0b
19:               jal          t1, 1b
20:               jal          ra, 19b
21:               srl          ra, t3, s11
sub_1_3:          jal          ra, 9f
0:                jal          t0, 11f
1:                jal          ra, 12f
2:                jal          ra, 3f
3:                jal          t1, 13f
4:                jal          t1, 10f
5:                jal          a5, 0b
6:                jal          t0, 8f
7:                jal          t1, 2b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          t1, 6b
11:               jal          ra, 1b
12:               jal          t1, 4b
13:               nop
sub_1_11:         jal          ra, 10f
0:                jal          gp, 13f
1:                jal          ra, 23f
2:                jal          s0, 9f
3:                jal          a2, 22f
4:                jal          t1, 27f
5:                jal          t3, 29f
6:                jal          ra, 17f
7:                jal          t1, 28f
8:                jal          t1, 18f
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          a0, 15f
12:               jal          ra, 4b
13:               jal          t0, 11b
14:               jal          sp, 7b
15:               jal          ra, 19f
16:               jal          ra, 21f
17:               jal          ra, 5b
18:               jal          ra, 16b
19:               jal          t1, 25f
20:               jal          ra, 12b
21:               jal          ra, 14b
22:               jal          a2, 24f
23:               jal          gp, 2b
24:               jal          ra, 6b
25:               jal          t1, 26f
26:               jal          t1, 1b
27:               jal          ra, 3b
28:               jal          t1, 20b
29:               xori         a7, a7, 502
sub_1_12:         jal          ra, 19f
0:                jal          s7, 14f
1:                jal          ra, 22f
2:                jal          ra, 16f
3:                jal          t0, 2b
4:                jal          t1, 13f
5:                jal          t1, 12f
6:                jal          ra, 20f
7:                jal          ra, 5b
8:                jal          ra, 6b
9:                jal          sp, 10f
10:               jal          s1, 11f
11:               jal          t0, 0b
12:               jal          sp, 15f
13:               jal          ra, 17f
14:               jal          t1, 21f
15:               jal          s4, 4b
16:               jal          ra, 18f
17:               jal          t1, 1b
18:               jal          ra, 8b
19:               jal          ra, 7b
20:               jal          sp, 23f
21:               jal          ra, 3b
22:               jal          t1, 9b
23:               srli         t0, t1, 23
sub_1_0:          jal          ra, 4f
0:                jal          ra, 8f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          a3, 12f
4:                jal          ra, 7f
5:                jal          s0, 10f
6:                jal          ra, 11f
7:                jal          s6, 3b
8:                jal          sp, 14f
9:                jal          ra, 13f
10:               jal          a4, 15f
11:               jal          t1, 16f
12:               jal          ra, 2b
13:               jal          sp, 5b
14:               jal          s11, 1b
15:               jal          ra, 0b
16:               srl          a2, s7, s10
sub_1_17:         jal          ra, 7f
0:                jal          t1, 1f
1:                jal          t1, 24f
2:                jal          a1, 18f
3:                jal          ra, 19f
4:                jal          t1, 5f
5:                jal          s3, 20f
6:                jal          ra, 9f
7:                jal          a2, 6b
8:                jal          t5, 21f
9:                jal          tp, 10f
10:               jal          ra, 22f
11:               jal          t3, 15f
12:               jal          t1, 14f
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          ra, 2b
16:               jal          gp, 0b
17:               jal          t1, 16b
18:               jal          sp, 13b
19:               jal          ra, 23f
20:               jal          ra, 12b
21:               jal          t1, 17b
22:               jal          ra, 11b
23:               jal          t1, 25f
24:               jal          ra, 3b
25:               jal          s1, 26f
26:               or           tp, s0, a6
sub_1_28:         jal          ra, 10f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          s0, 12f
3:                jal          ra, 4f
4:                jal          sp, 13f
5:                jal          s9, 6f
6:                jal          t1, 7f
7:                jal          s6, 2b
8:                jal          tp, 14f
9:                jal          t1, 5b
10:               jal          a7, 1b
11:               jal          a4, 8b
12:               jal          s7, 0b
13:               jal          ra, 11b
14:               sltu         a0, s7, s4
sub_1_30:         jal          ra, 18f
0:                jal          sp, 25f
1:                jal          ra, 12f
2:                jal          t1, 19f
3:                jal          t1, 7f
4:                jal          t1, 10f
5:                jal          ra, 2b
6:                jal          s1, 22f
7:                jal          ra, 1b
8:                jal          t1, 15f
9:                jal          ra, 24f
10:               jal          s10, 23f
11:               jal          ra, 5b
12:               jal          sp, 11b
13:               jal          ra, 4b
14:               jal          ra, 26f
15:               jal          a1, 16f
16:               jal          ra, 9b
17:               jal          ra, 8b
18:               jal          t5, 3b
19:               jal          ra, 21f
20:               jal          ra, 13b
21:               jal          t1, 6b
22:               jal          ra, 0b
23:               jal          ra, 17b
24:               jal          t2, 14b
25:               jal          a4, 20b
26:               sra          s4, s3, t3
sub_1_13:         jal          ra, 14f
0:                jal          ra, 16f
1:                jal          ra, 4f
2:                jal          t1, 19f
3:                jal          a5, 26f
4:                jal          ra, 3b
5:                jal          s9, 0b
6:                jal          s3, 17f
7:                jal          ra, 22f
8:                jal          ra, 24f
9:                jal          s4, 12f
10:               jal          a0, 7b
11:               jal          s9, 1b
12:               jal          t1, 5b
13:               jal          ra, 21f
14:               jal          a2, 23f
15:               jal          ra, 9b
16:               jal          ra, 11b
17:               jal          ra, 28f
18:               jal          t1, 25f
19:               jal          ra, 20f
20:               jal          ra, 18b
21:               jal          t3, 6b
22:               jal          s3, 8b
23:               jal          s0, 2b
24:               jal          a0, 27f
25:               jal          ra, 15b
26:               jal          ra, 10b
27:               jal          t0, 13b
28:               slt          t5, a6, s0
sub_1_20:         jal          ra, 1f
0:                jal          ra, 12f
1:                jal          tp, 4f
2:                jal          ra, 8f
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          tp, 6f
6:                jal          a5, 18f
7:                jal          ra, 14f
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          ra, 15f
11:               jal          ra, 16f
12:               jal          a4, 13f
13:               jal          ra, 19f
14:               jal          t1, 11b
15:               jal          t1, 20f
16:               jal          t4, 2b
17:               jal          sp, 7b
18:               jal          ra, 10b
19:               jal          t3, 21f
20:               jal          ra, 17b
21:               slli         t2, s5, 4
sub_1_1:          jal          ra, 11f
0:                jal          ra, 17f
1:                jal          ra, 23f
2:                jal          t1, 16f
3:                jal          t1, 22f
4:                jal          ra, 5f
5:                jal          s3, 15f
6:                jal          t1, 12f
7:                jal          ra, 19f
8:                jal          ra, 14f
9:                jal          ra, 24f
10:               jal          ra, 9b
11:               jal          ra, 20f
12:               jal          tp, 18f
13:               jal          a7, 3b
14:               jal          ra, 10b
15:               jal          ra, 6b
16:               jal          t1, 1b
17:               jal          ra, 4b
18:               jal          ra, 8b
19:               jal          ra, 21f
20:               jal          t1, 13b
21:               jal          ra, 2b
22:               jal          tp, 7b
23:               jal          t1, 0b
24:               sub          a2, s5, a5
sub_1_25:         jal          ra, 21f
0:                jal          t4, 10f
1:                jal          t1, 5f
2:                jal          t1, 11f
3:                jal          ra, 16f
4:                jal          ra, 27f
5:                jal          ra, 26f
6:                jal          ra, 15f
7:                jal          tp, 23f
8:                jal          t1, 18f
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               jal          ra, 25f
12:               jal          t1, 22f
13:               jal          ra, 20f
14:               jal          t4, 4b
15:               jal          t1, 24f
16:               jal          a6, 13b
17:               jal          t1, 9b
18:               jal          t1, 0b
19:               jal          t4, 8b
20:               jal          ra, 12b
21:               jal          ra, 1b
22:               jal          ra, 7b
23:               jal          ra, 6b
24:               jal          ra, 14b
25:               jal          tp, 17b
26:               jal          t1, 19b
27:               sll          a7, t6, t4
sub_1_22:         jal          ra, 9f
0:                jal          ra, 10f
1:                jal          t1, 4f
2:                jal          t1, 6f
3:                jal          s3, 2b
4:                jal          t1, 3b
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          s9, 13f
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 8b
12:               jal          s9, 11b
13:               slli         gp, t0, 16
sub_1_2:          jal          ra, 2f
0:                jal          a3, 12f
1:                jal          sp, 10f
2:                jal          t1, 1b
3:                jal          ra, 6f
4:                jal          t1, 8f
5:                jal          ra, 11f
6:                jal          gp, 21f
7:                jal          s6, 4b
8:                jal          t2, 19f
9:                jal          t1, 17f
10:               jal          sp, 20f
11:               jal          ra, 7b
12:               jal          ra, 16f
13:               jal          t1, 0b
14:               jal          s9, 5b
15:               jal          ra, 14b
16:               jal          t1, 18f
17:               jal          t1, 13b
18:               jal          ra, 3b
19:               jal          t1, 9b
20:               jal          s10, 15b
21:               auipc        s10, 880234
                  bne          s3, tp, 15f
                  lui          t3, 580650
                  xori         s9, s2, 783
                  auipc        s1, 790282
                  blt          zero, a7, 23f
                  xor          t3, ra, t6
                  srli         ra, s0, 0
                  srl          a0, s8, t2
                  sll          t0, a0, s3
                  srli         t5, a5, 17
                  sltiu        t4, tp, -1261
                  slt          t1, sp, t4
                  blt          t5, s1, 31f
                  sra          ra, a4, s10
                  andi         a5, s0, -483
15:               auipc        s8, 487010
                  bgeu         s7, t4, 27f
                  sll          s6, a3, t1
                  sub          a0, s8, a0
                  xor          s0, s1, s10
                  sll          s3, a1, s8
                  or           t1, sp, s5
                  sll          s1, t4, a7
23:               or           t2, gp, a6
                  srai         s6, tp, 20
                  srli         s9, t6, 11
                  andi         t1, s11, 1669
27:               addi         a4, a0, 1026
                  srl          t0, tp, t1
                  bge          a4, s9, 41f
                  sltiu        a2, s6, -1598
31:               slli         s8, s9, 31
                  bge          s1, a0, 39f
                  sltiu        s4, a3, -1698
                  sltu         s6, a7, s8
                  nop
                  sub          t0, s6, s5
                  slli         ra, a0, 4
                  blt          s10, a4, 44f
39:               srl          a0, a3, ra
                  beq          t0, s9, 50f
41:               bne          gp, s6, 59f
                  srli         a1, t6, 13
                  sub          a1, a6, a3
44:               add          a0, t2, s7
                  andi         a6, a0, -1478
                  blt          t1, a0, 62f
                  bge          a1, s0, 66f
                  slt          s6, ra, zero
                  sltu         a2, a6, ra
50:               bge          a4, zero, 65f
                  auipc        ra, 844410
                  add          t1, s7, s1
                  sub          gp, s8, s8
                  add          tp, t1, a7
                  add          gp, t1, zero
                  srl          a4, a4, s9
                  addi         s3, t1, -492
                  bne          t1, t2, 74f
59:               srai         s10, s11, 30
                  sub          s7, s2, s2
                  xori         t5, a5, 1067
62:               srl          s3, gp, s4
                  bgeu         s2, t0, 65f
                  sra          s8, t3, zero
65:               sltiu        t3, t3, 219
66:               add          sp, t2, s3
                  sltu         s6, s0, s7
                  slli         s6, a1, 6
                  srl          s8, a2, a1
                  bge          a5, s11, 76f
                  bge          s2, t0, 89f
                  slti         t5, s1, 152
                  xor          tp, s6, s4
74:               bltu         a2, a7, 75f
75:               nop
76:               auipc        sp, 304515
                  nop
                  andi         s0, s8, 850
                  slli         a0, s5, 31
                  or           ra, tp, ra
                  bge          a0, t5, 97f
                  xor          t2, s2, a1
                  blt          s6, ra, 84f
84:               srli         a2, t3, 12
                  beq          gp, t5, 90f
                  slt          s8, a3, t5
                  ori          ra, s0, -1490
                  srl          a3, ra, t4
89:               bgeu         a6, s1, 94f
90:               sll          s8, t6, sp
                  bltu         a1, s11, 94f
                  srai         t5, zero, 14
                  and          s6, s6, a2
94:               sra          gp, t2, sp
                  addi         s8, s5, -1063
                  slt          s0, s10, t6
97:               lui          a5, 242685
                  and          t3, s9, t4
                  srl          t4, s9, s10
                  srl          a5, t4, a6
                  sll          s8, s9, a0
                  bltu         zero, a4, 116f
                  addi         t1, t4, -1910
                  slli         s1, s1, 31
                  bge          t2, sp, 115f
                  andi         t1, a4, 1765
                  sub          a2, s3, a1
                  auipc        t3, 790178
                  sltiu        sp, t0, -323
                  srli         a5, s0, 29
                  andi         a4, t1, 1226
                  slt          tp, s8, a0
                  sltu         a6, t2, s11
                  add          a1, s6, a1
115:              sltiu        a6, s7, 662
116:              auipc        t4, 180963
                  sltiu        s4, s1, -129
                  nop
                  srai         a5, s4, 30
                  srli         t0, sp, 26
                  sll          zero, ra, s2
                  auipc        a1, 659327
                  slti         t3, t0, 401
                  auipc        s0, 1017582
                  beq          s9, s6, 135f
                  lui          t4, 615759
                  xori         a1, a1, 664
                  lui          a1, 209233
                  beq          gp, t6, 142f
                  bne          s8, gp, 140f
                  add          t4, s11, s0
                  slt          s0, a7, s8
                  srl          t2, s10, t6
                  srl          a7, a1, t1
135:              blt          t2, t0, 136f
136:              srl          s11, s7, s0
                  ori          s8, a6, 716
                  sll          t0, s1, s1
                  srl          a4, t4, a4
140:              bge          zero, s1, 153f
                  andi         s11, s2, -1831
142:              sra          a1, t6, gp
                  srli         t1, gp, 13
                  or           t3, t2, s8
                  srl          gp, a3, a1
                  bgeu         t3, s6, 158f
                  srai         a2, s7, 30
                  sltu         a5, s10, t5
                  beq          s4, zero, 165f
                  slt          s11, t0, s8
                  and          t4, sp, a4
                  bgeu         t0, a1, 171f
153:              and          a5, ra, a0
                  bge          a5, t3, 164f
                  srli         tp, a5, 20
                  slli         zero, t4, 5
                  nop
158:              and          t3, a6, zero
                  xori         s10, gp, -539
                  bge          s1, a0, 161f
161:              and          s6, s8, a3
                  nop
                  slti         sp, s2, 110
164:              bge          s10, s0, 176f
165:              sltu         t2, s9, t0
                  bltu         a3, s7, 185f
                  or           s10, t1, s10
                  srli         a0, s11, 22
                  andi         a6, s3, -436
                  srli         s9, s4, 26
171:              xor          ra, gp, a3
                  beq          t2, a6, 177f
                  ori          gp, s0, -1239
                  lui          s3, 331949
                  bltu         s7, s11, 190f
176:              slt          s8, s10, t0
177:              xori         t3, s5, -535
                  srl          t5, s6, tp
                  sub          t1, t2, s7
                  andi         a4, a1, 1708
                  andi         a6, s11, -267
                  auipc        tp, 216086
                  xor          a0, s10, a7
                  slt          a1, s9, s4
185:              lui          a7, 213936
                  addi         a0, s0, -1167
                  addi         sp, a7, -1523
                  or           s9, t2, a7
                  slli         s3, s7, 13
190:              bne          t6, tp, 208f
                  srai         s11, s5, 13
                  slti         sp, s3, -243
                  ori          a2, s2, 550
                  add          s0, tp, tp
                  sltiu        s8, s0, 1416
                  and          a4, a4, a5
                  sltiu        t0, t0, -1149
                  or           s0, a7, tp
                  blt          s5, a6, 218f
                  xor          s0, a2, s8
                  ori          s8, sp, 1063
                  slti         t0, t2, 11
                  or           a6, s7, t5
                  nop
                  slti         s1, s6, -1641
                  sltiu        s7, s4, 434
                  auipc        s4, 10400
208:              srai         t0, t6, 14
                  bge          t6, a5, 214f
                  and          s7, sp, t6
                  srl          s9, s6, s11
                  andi         a0, a0, 789
                  slti         s4, a6, 1996
214:              blt          a5, s3, 224f
                  bne          a2, tp, 230f
                  nop
                  sltu         s4, s3, a2
218:              srai         t5, ra, 29
                  slti         sp, s9, 108
                  auipc        t2, 186407
                  xor          a0, a0, s3
                  sub          a5, s2, s2
                  ori          s4, t5, -1602
224:              sltu         t0, s10, a7
                  addi         a0, gp, 1767
                  srli         ra, t3, 2
                  lui          t5, 468757
                  add          a0, s2, s1
                  andi         s7, s5, -479
230:              sltu         gp, a0, t1
                  beq          sp, s7, 243f
                  sub          s10, a7, s7
                  sra          ra, s3, ra
                  srai         s3, s4, 12
                  sltiu        s11, s5, -485
                  slti         a0, s0, -1655
                  sll          ra, s1, s11
                  and          ra, a4, s0
                  xor          sp, s2, a2
                  srai         s8, gp, 2
                  xori         s11, s4, 1678
                  addi         a1, t0, -1996
243:              slli         s11, s4, 10
                  sub          t0, t4, t1
                  srli         a2, s7, 7
                  srai         t2, s2, 15
                  nop
                  slti         a7, a1, -190
                  slti         t5, s8, -303
                  sub          a2, s5, a0
                  add          s11, s10, s0
                  srl          zero, t4, a0
                  bne          zero, a0, 271f
                  bge          a1, sp, 267f
                  bgeu         gp, a3, 268f
                  ori          a7, s11, -1987
                  sltu         t3, zero, zero
                  srl          t2, s6, gp
                  beq          ra, t5, 273f
                  nop
                  sra          t4, a1, sp
                  bne          s4, a0, 269f
                  nop
                  ori          s9, ra, -1773
                  sub          a6, zero, s10
                  sub          a3, t2, ra
267:              bge          t5, a5, 269f
268:              srai         a7, s1, 16
269:              slli         a2, a7, 0
                  auipc        t3, 371485
271:              slti         a4, s11, 729
                  lui          a3, 700090
273:              sltu         s3, s11, s9
                  sltu         t5, zero, s6
                  add          s11, a2, t2
                  sltiu        zero, a7, 1150
                  auipc        s4, 809629
                  xori         s8, gp, 1415
                  addi         ra, t5, -1147
                  xor          s10, tp, t2
                  srai         sp, t2, 11
                  or           a3, t1, s7
                  bgeu         s3, s7, 294f
                  and          tp, tp, s2
                  slt          t2, s11, a2
                  or           gp, s1, t2
                  srl          gp, t5, a3
                  and          s1, s5, a3
                  auipc        s10, 254233
                  bltu         a4, t2, 293f
                  nop
                  slli         sp, a0, 6
293:              blt          a4, s1, 299f
294:              xor          a3, s11, a7
                  srli         a3, t1, 4
                  sltu         gp, t1, s9
                  srli         s9, tp, 8
                  nop
299:              nop
                  bgeu         a5, t6, 310f
                  bltu         a1, s10, 302f
302:              srl          a0, sp, zero
                  lui          s7, 473371
                  ori          a5, t5, -1850
                  auipc        t2, 588832
                  slti         t5, sp, 819
                  srai         ra, a0, 1
                  blt          a3, a7, 324f
                  or           s3, a0, sp
310:              nop
                  slti         a6, a7, -1225
                  bgeu         s1, t4, 322f
                  srli         s7, gp, 2
                  bltu         a6, a6, 315f
315:              bge          t3, t1, 331f
                  srl          s4, s5, s9
                  srli         a4, a7, 30
                  xor          a6, t5, t6
                  blt          s9, t2, 325f
                  xori         gp, s3, -311
                  srai         s4, s9, 2
322:              lui          s6, 692933
                  add          tp, tp, tp
324:              bgeu         a1, a4, 334f
325:              sra          s11, s3, s9
                  lui          s6, 748594
                  bltu         s3, a6, 333f
                  beq          s11, t0, 331f
                  sltu         zero, s11, t0
                  or           t5, zero, t0
331:              add          a7, s11, s7
                  bne          a2, gp, 337f
333:              sra          t5, t6, s8
334:              srli         a2, t6, 17
                  srli         a7, t5, 5
                  sub          s3, s6, t1
337:              andi         s6, a6, 1672
                  add          s1, s3, t1
                  sra          s0, s5, s0
                  or           t5, t1, a4
                  or           zero, a0, a7
                  sub          t2, a1, t6
                  or           a7, t5, a3
                  auipc        a2, 740055
                  andi         t5, t4, -1730
                  bltu         ra, a1, 358f
                  xor          ra, t2, s2
                  and          tp, s10, s1
                  auipc        t2, 1673
                  or           s9, a6, t4
                  addi         ra, t3, 711
                  nop
                  bne          t3, s3, 366f
                  slti         s10, s5, 507
                  add          s9, a0, a3
                  xori         s4, a4, 227
                  bltu         s8, s4, 375f
358:              or           a4, gp, tp
                  nop
                  bgeu         t3, t3, 379f
                  slti         gp, s3, 995
                  srli         sp, a4, 27
                  and          ra, a1, t3
                  slti         a3, a1, -1686
                  sll          t4, s11, s7
366:              addi         s11, a2, -1837
                  lui          s3, 42379
                  slti         gp, t3, 1136
                  add          s7, sp, t5
                  xor          s0, tp, ra
                  sltu         s11, t1, s3
                  andi         s11, a5, -1438
                  bgeu         s2, s7, 383f
                  beq          s6, a5, 384f
375:              srai         a0, gp, 22
                  blt          s9, a2, 386f
                  or           sp, s2, s11
                  sltu         s1, a6, t5
379:              slt          s6, s9, t4
                  slli         s7, a0, 29
                  sltu         sp, s0, s5
                  sub          ra, s11, t5
383:              or           t5, t0, s9
384:              sra          a7, t5, s5
                  bgeu         s11, zero, 399f
386:              beq          s7, s10, 401f
                  slti         a7, s11, 1755
                  xori         tp, t6, -153
                  slli         s8, t3, 3
                  sll          t0, s6, a0
                  beq          gp, s9, 396f
                  slti         a0, t2, -378
                  lui          sp, 260107
                  sltiu        sp, t1, -789
                  and          t3, s0, s0
396:              bgeu         s2, t0, 412f
                  bge          gp, a1, 413f
                  blt          a4, a2, 417f
                  la           s8, sub_2
                  addi         s8, s8, -43
                  slt          t1, s8, s1
                  slli         t5, t0, 8
                  ori          t0, tp, -797
                  bltu         s3, a4, sub_1_j2 #branch to jump instr
                  slti         t3, s3, -1192
                  sra          sp, sp, a6
sub_1_j2:         jalr         ra, s8, 43 #jump sub_1 -> sub_2
399:              slti         s11, s7, -779
                  sra          s0, s0, a4
401:              beq          s10, s2, 402f
402:              srl          s1, s8, s10
                  beq          gp, t0, 410f
                  sltiu        zero, t5, 1216
                  bltu         a5, zero, 421f
                  slli         a2, s8, 3
                  or           gp, a5, s5
                  slli         a3, s10, 21
                  auipc        tp, 972053
410:              and          s0, a5, s5
                  andi         s9, t4, -201
412:              sub          s9, gp, a4
413:              slti         s4, sp, -32
                  addi         a6, a2, 1985
                  add          t3, zero, s7
                  lui          t3, 25653
417:              srli         t5, s5, 5
                  srai         s0, s3, 2
                  slt          s11, s4, a2
                  addi         s8, ra, -87
421:              ori          a3, s8, 281
                  beq          a7, s7, 433f
                  bgeu         t6, a6, 442f
                  lui          t5, 699756
                  add          s0, s11, a2
                  beq          a7, s3, 444f
                  add          t2, a5, a7
                  lui          s10, 167422
                  bne          a2, t3, 435f
                  srl          a7, s9, t3
                  sltu         a2, t1, a1
                  auipc        s7, 892412
433:              xor          sp, a5, a0
                  sltu         t4, t6, ra
435:              and          s3, t3, sp
                  sltiu        t3, a3, -700
                  or           a5, sp, s10
                  bge          s2, zero, 451f
                  srli         a5, s5, 21
                  xor          t5, a2, s4
                  lui          s11, 573191
442:              lui          a2, 627945
                  sltiu        s7, gp, 1988
444:              sltu         sp, ra, a1
                  bgeu         gp, t4, 457f
                  bne          s2, t6, 461f
                  add          sp, t1, s4
                  sra          t3, s7, s10
                  auipc        t1, 627126
                  xor          a0, s8, a2
451:              sub          s8, a0, a4
                  and          s10, t2, s7
                  sra          s11, a4, zero
                  xori         tp, s8, 37
                  lui          a3, 555771
                  andi         s6, t5, -2032
457:              slti         sp, s1, 1274
                  nop
sub_1_37:         jal          ra, 5f
0:                jal          t1, 19f
1:                jal          ra, 16f
2:                jal          ra, 8f
3:                jal          ra, 22f
4:                jal          s10, 21f
5:                jal          t0, 15f
6:                jal          t1, 12f
7:                jal          ra, 18f
8:                jal          t1, 17f
9:                jal          t0, 7b
10:               jal          ra, 14f
11:               jal          t1, 2b
12:               jal          t1, 4b
13:               jal          s3, 0b
14:               jal          ra, 13b
15:               jal          s4, 9b
16:               jal          t1, 11b
17:               jal          t1, 6b
18:               jal          ra, 10b
19:               jal          t1, 20f
20:               jal          ra, 1b
21:               jal          a4, 3b
22:               slti         t4, a0, -1924
                  addi         a0, tp, 295
                  bltu         s0, t2, 461f
461:              lui          a5, 1015109
                  auipc        s4, 708265
                  and          a1, a7, s2
                  sra          a5, s7, t1
                  sltu         s3, s3, ra
                  and          a1, t5, ra
                  addi         t0, sp, -1055
                  bltu         s2, t5, 470f
                  lui          s10, 987438
470:              slt          a1, a5, t5
                  sra          s1, gp, t4
                  bge          a4, s4, 473f
473:              srai         gp, s10, 24
                  and          ra, t4, a6
                  slli         a4, t5, 20
                  sltiu        s4, a6, -2008
                  blt          s2, t4, 480f
                  srli         gp, s8, 22
                  sll          s7, s1, t6
480:              blt          a7, s5, 495f
                  bge          s2, s9, 491f
                  sltiu        a1, a2, -646
                  sll          s1, gp, a5
                  bltu         t1, a5, 490f
                  srli         s8, tp, 5
                  nop
                  nop
                  sra          s3, s11, sp
                  bltu         s0, t3, 490f
490:              srai         a6, a2, 28
491:              srl          t2, s1, s0
                  sll          s7, s11, t0
                  bne          s7, s1, 511f
                  bge          a6, t5, 506f
495:              xori         t5, s11, 76
                  slti         zero, sp, -2048
                  bge          zero, s8, 513f
                  and          tp, s10, t1
                  xor          t3, s0, t1
                  xori         s7, t6, 21
                  bltu         t0, s11, 517f
                  addi         t3, s6, 1591
                  bne          s3, s10, 521f
                  and          t0, a0, gp
                  bgeu         s11, a4, 524f
506:              srli         t2, s9, 19
                  slli         tp, ra, 15
                  auipc        a1, 364430
                  srli         t5, tp, 20
                  sra          a4, s6, a4
511:              lui          sp, 795739
                  sra          a0, a7, gp
513:              bne          t2, gp, 519f
                  beq          s11, a5, 526f
                  bge          s2, gp, 516f
516:              beq          t3, t4, 526f
517:              or           ra, s0, a0
                  sltu         s8, s5, s0
519:              xor          sp, a0, a5
                  and          sp, ra, t2
sub_1_27:         jal          ra, 8f
0:                jal          ra, 4f
1:                jal          ra, 12f
2:                jal          s9, 16f
3:                jal          ra, 5f
4:                jal          ra, 15f
5:                jal          t1, 9f
6:                jal          ra, 17f
7:                jal          s9, 2b
8:                jal          gp, 6b
9:                jal          t1, 11f
10:               jal          t1, 0b
11:               jal          ra, 13f
12:               jal          ra, 7b
13:               jal          t1, 18f
14:               jal          s6, 1b
15:               jal          ra, 14b
16:               jal          ra, 3b
17:               jal          t1, 10b
18:               slli         t4, t4, 13
521:              ori          a4, s1, 389
                  nop
                  beq          s1, tp, 525f
524:              xor          t4, t6, s5
525:              auipc        a1, 521369
526:              slti         t5, s1, 1832
                  sltu         s8, t4, zero
                  andi         t5, t1, -1435
                  srli         s8, a4, 13
                  srl          a6, t5, a3
                  slli         s6, t5, 24
                  andi         a7, t1, 1117
                  beq          t0, s8, 546f
                  sra          s11, s11, a1
                  beq          a6, s2, 554f
                  bne          sp, t0, 550f
                  add          t4, gp, s1
                  slt          a2, s8, s11
                  bge          s4, tp, 555f
                  ori          a5, s4, -1420
                  or           sp, s6, a0
                  sub          a5, a4, t0
                  andi         a4, s5, 1630
                  sra          gp, s6, t0
                  bne          ra, t4, 556f
546:              srli         a6, sp, 5
                  add          s11, t1, s4
                  slli         zero, s0, 25
                  sltu         t4, a6, a2
550:              xori         a1, a3, 314
                  sub          s0, sp, ra
                  nop
                  slti         t3, s6, 2024
554:              srl          a0, a5, s5
555:              beq          s0, s11, 560f
556:              lui          s1, 937094
                  bge          t3, s10, 567f
                  sra          s11, s3, t0
                  and          a1, s7, t2
560:              bne          t4, sp, 567f
                  add          a6, a5, a1
                  addi         a2, sp, -796
                  srai         gp, t0, 8
                  bgeu         t5, t3, 565f
565:              auipc        s0, 362391
                  srai         s9, t5, 15
567:              sltu         s10, s11, tp
                  beq          t6, t5, 573f
                  addi         a6, t5, -217
                  ori          a6, a1, -92
                  andi         a7, s5, -521
                  bge          zero, s2, 585f
573:              andi         s4, s2, -1626
                  slli         a0, s7, 21
                  srli         s11, s3, 4
                  or           zero, s7, a7
                  and          s10, gp, s10
                  slt          a7, a5, s7
                  sub          a7, a0, t2
                  nop
                  auipc        s8, 861091
                  slli         a1, a3, 21
                  andi         s4, t4, 145
                  srai         t5, s1, 23
585:              srli         a1, ra, 6
                  or           sp, s3, ra
                  xor          a2, a7, s5
                  slti         s11, t2, 548
                  bge          t3, t5, 604f
                  srai         s3, a3, 9
                  sub          t0, s4, gp
                  beq          a3, s11, 611f
                  sra          s9, s0, gp
                  bgeu         t4, s8, 604f
                  bltu         s4, a6, 610f
                  auipc        t1, 867179
                  nop
                  srli         s0, ra, 16
                  xor          sp, t6, a0
                  srl          t4, a6, s2
                  blt          a5, a6, 614f
                  xor          s9, a4, a3
                  sltiu        a0, t1, -111
604:              xor          s11, s1, s11
                  sltiu        t3, a0, -410
                  bge          s0, a3, 625f
                  addi         a5, a1, 656
                  sltu         a6, ra, s2
                  srl          s4, a5, a0
610:              sll          a2, ra, a6
611:              sltiu        s1, a3, 756
                  bne          s1, ra, 623f
                  bge          s0, a5, 623f
614:              slli         a5, s4, 6
                  sll          s3, s7, s3
                  addi         t4, tp, 878
                  addi         t1, a7, -1401
                  auipc        s9, 913564
                  ori          s7, sp, 1904
                  auipc        s4, 281666
                  or           zero, t6, s6
                  bge          a3, sp, 629f
623:              srli         gp, a4, 11
                  sltiu        gp, a4, 598
625:              slt          s8, s10, a7
                  srl          a7, sp, gp
                  slt          a1, a6, a3
                  srl          a5, s4, t5
629:              srai         s7, t4, 13
                  slt          t4, s10, ra
                  srl          t3, s0, a6
                  andi         a4, sp, -341
                  sub          t4, t1, s2
                  slt          t0, s0, t4
                  ori          s3, s6, -1754
                  xor          s8, s8, s11
                  xor          t2, s0, a6
                  xori         s0, zero, 1238
                  srai         zero, s2, 6
                  sra          t0, t4, s7
                  sltu         a3, t6, sp
                  srli         s1, a4, 0
                  srai         a6, s4, 18
                  add          t5, sp, s4
                  beq          t4, s3, 660f
                  bgeu         s5, s0, 647f
647:              sll          s4, a7, s1
                  xori         t0, t5, -425
                  and          a6, ra, s10
                  lui          s7, 168822
                  slt          tp, s6, s5
                  sra          s9, t5, s9
                  slti         s6, s3, -644
                  bne          a5, s3, 655f
655:              auipc        a7, 465207
                  beq          s9, t4, 668f
                  slli         a6, gp, 5
                  blt          ra, a3, 663f
                  bge          s7, gp, 664f
660:              andi         ra, t6, -1509
                  sub          s4, zero, s2
                  addi         s1, t4, -794
663:              slti         s0, t3, 731
664:              addi         a6, s2, -1091
                  auipc        t0, 202217
                  lui          a0, 306461
                  xori         sp, s2, -1751
668:              addi         t5, s10, 1851
                  xori         a2, ra, -1973
                  srl          tp, tp, zero
sub_1_21:         jal          ra, 4f
0:                jal          ra, 14f
1:                jal          ra, 6f
2:                jal          ra, 8f
3:                jal          ra, 15f
4:                jal          a2, 11f
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          a0, 13f
8:                jal          ra, 3b
9:                jal          a0, 12f
10:               jal          t1, 9b
11:               jal          t1, 7b
12:               jal          ra, 1b
13:               jal          a1, 5b
14:               jal          s7, 2b
15:               sra          t5, t0, t6
                  nop
                  bltu         a2, s2, 682f
                  lui          s4, 723938
                  bge          s9, a0, 680f
                  addi         a6, a7, 1832
                  sll          a7, s0, t0
                  bne          s4, s2, 687f
                  sub          a1, s1, s7
                  bge          s5, a1, 693f
680:              slt          a5, a5, a6
                  lui          a1, 300988
682:              blt          s11, s3, 700f
                  add          sp, s11, tp
                  bne          ra, s5, 697f
                  addi         s8, t6, 388
                  slti         a4, s2, 315
687:              addi         t4, a7, -1056
                  bltu         t1, t6, 689f
689:              sub          a5, s1, t5
                  bltu         a0, a5, 700f
                  addi         s10, s9, -108
                  bltu         a2, a5, 710f
693:              sltu         s6, s2, s5
                  xor          a3, zero, s9
                  and          a3, t2, s6
                  sub          a0, s2, a3
697:              xor          s8, gp, a1
                  sltu         s6, a2, tp
                  xori         sp, s9, 1687
700:              srl          s1, a1, s10
                  ori          a4, s9, 1283
                  or           a0, t1, s4
                  srai         a2, a4, 12
                  srai         s0, a7, 29
                  addi         sp, s8, -5
                  srl          t4, s10, ra
                  sub          s11, a1, a1
                  sltu         s3, a6, s10
                  bltu         a1, t2, 721f
710:              add          t4, s1, zero
                  slt          ra, t1, s1
                  blt          s10, s4, 718f
                  bne          s1, a2, 716f
                  bgeu         s8, tp, 730f
                  sub          a6, s4, s5
716:              nop
                  bltu         tp, a0, 736f
718:              sll          s9, s11, zero
                  srai         s9, s8, 22
                  bne          s7, s0, 736f
721:              bge          a5, a0, 737f
                  srai         a6, t6, 0
                  slli         s4, t5, 24
                  ori          a4, a0, -913
                  srl          a1, ra, t2
                  bgeu         a4, s8, 728f
                  slti         t2, a4, -1909
728:              blt          a2, s4, 747f
                  auipc        s3, 564233
730:              srli         s4, s0, 17
                  or           gp, s9, s4
                  add          t3, s8, t5
                  auipc        s8, 46541
                  srli         s4, tp, 24
                  auipc        s7, 772230
736:              and          a7, a3, a6
737:              srli         a6, s6, 0
                  sll          a6, a1, t6
                  xori         zero, a7, -944
                  srl          t0, zero, sp
                  sltiu        t2, zero, -292
                  xori         a1, s9, 1096
                  srli         s4, sp, 14
                  ori          gp, a6, 2023
                  bge          t5, ra, 758f
                  sltu         tp, s0, s4
747:              bltu         a1, s7, 750f
                  srli         t3, a6, 6
                  xori         ra, s2, -50
750:              add          s6, s9, s6
                  bge          a6, s11, 761f
                  auipc        s4, 957370
                  xori         s3, s9, -1823
                  blt          a1, s6, 764f
                  srli         a4, s2, 15
                  xori         t2, s7, -1466
                  bge          s4, t3, 776f
758:              addi         s9, t0, -1955
                  sra          tp, a0, s1
                  blt          a6, s0, 770f
761:              ori          s6, a5, 203
                  slt          s0, zero, t1
                  beq          s11, a1, 769f
764:              srai         t2, a5, 9
                  sltiu        t3, a6, -1012
                  bltu         s11, zero, 784f
                  or           a2, s4, a2
                  and          a4, s11, s4
769:              bgeu         s6, a4, 771f
770:              andi         a7, a5, 985
771:              bgeu         a5, s6, 790f
                  blt          s11, s6, 786f
                  sub          zero, t4, s6
                  bne          a2, a7, 775f
775:              bne          s1, s10, 791f
776:              sll          ra, t0, a4
                  sub          s3, s0, s7
                  lui          s0, 138823
                  andi         t1, sp, 988
                  auipc        tp, 123975
                  addi         a1, a4, 852
                  xori         a1, sp, 315
                  andi         s10, a4, 764
784:              srai         s6, gp, 30
                  sra          t3, tp, s1
786:              slli         tp, a4, 22
                  slt          a1, sp, s6
                  andi         a7, gp, -1254
                  sub          t2, t2, gp
790:              or           t1, s1, s7
791:              lui          a2, 587325
                  slt          t2, s11, s3
                  andi         t0, gp, -1841
                  sltiu        s6, s6, -1915
                  xori         a1, a7, 399
                  auipc        s3, 124661
                  auipc        s7, 862078
                  srli         s1, s5, 11
                  slt          a2, t5, zero
                  slt          a6, a2, gp
                  beq          s10, s3, 806f
                  andi         s1, s8, -1493
                  or           t1, gp, s3
                  addi         a0, s9, -1226
                  xori         a5, a4, 1375
806:              slti         s10, s3, -2021
                  srai         t5, s7, 10
                  slli         s0, zero, 24
                  slt          sp, gp, a5
                  andi         tp, ra, -1988
                  addi         s11, s3, 1971
                  slti         t0, s3, 2030
                  nop
                  bltu         s4, s2, 830f
                  addi         a2, a1, -1343
                  ori          sp, s0, -678
                  bne          t3, t0, 818f
818:              blt          gp, a5, 831f
                  slt          s3, t6, a2
                  ori          t3, t6, 1707
                  ori          t1, a2, 268
                  sltiu        a0, a0, -1649
                  sub          a2, t2, t2
                  srl          s11, a6, a7
                  lui          s1, 113538
                  bne          t1, s3, 836f
                  blt          a7, s8, 843f
                  sra          ra, a2, s10
                  xori         sp, s5, -1037
830:              slt          s0, t1, s4
831:              add          tp, s3, gp
                  srli         s9, s4, 25
                  sra          a2, tp, t3
                  sra          ra, a2, s10
                  beq          zero, t4, 853f
836:              ori          t5, sp, -1308
                  bge          a5, a3, 842f
                  xor          a3, t1, a1
                  bltu         s3, a3, 850f
                  srli         a3, a6, 9
                  bge          s6, a4, 856f
842:              slti         t4, t6, -115
843:              bgeu         t0, t1, 855f
                  sll          t5, s6, a5
                  slti         gp, t4, 853
                  addi         s4, a6, 935
                  slti         t1, sp, 161
                  or           t1, s2, s11
                  bgeu         a5, a6, 861f
850:              andi         a6, s5, 200
                  andi         s4, t5, 1916
                  sll          s8, sp, s5
853:              srl          a3, a7, t2
                  beq          a0, t2, 860f
855:              bne          s5, a0, 856f
856:              sub          ra, gp, ra
                  andi         s11, s8, -1752
                  slti         t1, a7, -193
                  addi         t4, t6, 1883
860:              xor          t0, a6, a4
861:              bge          t0, zero, 880f
                  slt          ra, gp, s2
                  bltu         a4, s7, 878f
                  srl          a4, gp, a3
                  sub          a7, a0, ra
                  blt          a1, zero, 873f
                  slli         a3, a7, 21
                  blt          s5, s4, 880f
                  xor          a0, s3, a1
                  add          s0, s11, s8
                  slli         t1, zero, 11
                  bgeu         s2, ra, 891f
873:              blt          t5, zero, 892f
                  xori         t1, ra, 1460
                  andi         t0, a0, -1160
                  srli         a6, s1, 29
                  xori         s1, t5, 21
878:              slli         s4, t5, 4
                  xori         s10, s0, -1892
880:              slt          s3, s10, s3
                  or           a4, s4, t5
                  xori         s7, s11, -883
                  sltu         sp, s2, a3
                  add          tp, a3, a4
                  lui          a3, 496534
                  sra          s4, t2, a5
                  srl          sp, t6, s7
                  sltiu        ra, ra, -1405
                  slti         gp, a4, -1899
                  add          ra, s5, s2
891:              slli         a3, s9, 31
892:              nop
                  bne          s0, tp, 909f
                  xor          gp, t1, a2
                  sltiu        a6, s10, 646
                  sub          gp, t2, s10
                  andi         a1, sp, -1149
                  sll          tp, gp, s5
                  slti         a3, ra, -1906
                  xor          t1, s6, t6
                  bne          a7, s0, 916f
                  beq          s0, ra, 912f
                  bgeu         s5, s2, 919f
                  sltiu        t3, ra, -1595
                  nop
                  blt          s9, sp, 924f
                  andi         t0, zero, -1559
                  bne          t2, a2, 914f
909:              slli         s8, t4, 23
                  slt          t0, t0, gp
                  ori          a3, a4, 1592
912:              auipc        a4, 128524
                  nop
914:              xor          tp, s2, t6
                  addi         a1, sp, 579
916:              add          sp, t6, s0
                  auipc        t0, 113747
                  addi         s8, t1, 1617
919:              nop
                  srai         a6, t1, 18
                  srai         t1, a4, 11
                  sll          t3, s1, t6
                  bne          t4, a1, 925f
924:              xor          s11, a0, t3
925:              ori          a3, t1, -991
                  sra          a0, sp, s2
                  slli         ra, s11, 3
                  beq          s7, a6, 938f
                  bge          s6, a7, 932f
                  nop
                  or           s1, zero, s10
932:              srli         s4, s1, 18
                  slli         gp, zero, 19
                  ori          a0, a2, 2028
                  blt          s3, t3, 940f
                  addi         zero, t5, -360
                  sltu         a0, a7, t1
938:              beq          a2, t4, 954f
                  andi         s4, s10, 1115
940:              beq          s10, t3, 953f
                  sltu         tp, a5, s8
                  andi         s3, a3, 1018
                  bge          t3, a2, 962f
                  bne          ra, s8, 954f
                  nop
                  add          s1, gp, t1
                  and          s4, t0, s0
                  andi         t0, sp, -1337
                  slt          tp, a4, t2
                  sltu         s8, a5, gp
                  srli         s3, ra, 28
                  slti         a0, s10, -423
953:              slti         a3, s0, -860
954:              nop
                  xor          s1, t2, s7
                  beq          s8, t6, 957f
957:              bge          tp, t1, 975f
                  nop
                  auipc        t2, 934612
                  xor          a0, s6, s0
                  bge          s0, t2, 967f
962:              nop
                  blt          a0, tp, 973f
                  auipc        s6, 211605
                  blt          a6, s5, 970f
                  srai         zero, t0, 16
967:              nop
                  add          t3, zero, a3
                  slt          ra, s0, a2
970:              srl          t2, tp, gp
                  xor          s10, t0, a1
                  sltu         s10, t4, a4
973:              bltu         t5, s7, 984f
                  beq          t4, a3, 987f
975:              bltu         a3, t6, 987f
                  nop
                  bne          s4, t6, 978f
978:              or           sp, t3, a1
                  sub          t3, sp, s2
                  sll          s9, a0, s8
                  add          s6, s8, s7
                  bne          a7, s2, 989f
                  srli         t0, t4, 25
984:              and          s10, t0, ra
                  srl          a7, ra, s1
                  ori          s8, t1, -409
987:              andi         a5, t5, -1129
                  slti         s9, a6, -731
989:              bltu         a7, a6, 990f
990:              addi         t2, a7, 890
                  slli         a4, s3, 20
                  bge          t5, a7, 1006f
                  andi         t2, s9, 2003
                  beq          s3, s8, 1009f
                  sra          t4, tp, a5
                  sltu         s7, s7, s11
                  sltu         t5, t1, ra
                  and          s6, sp, t3
sub_1_29:         jal          ra, 0f
0:                jal          ra, 6f
1:                jal          t1, 10f
2:                jal          ra, 9f
3:                jal          s1, 7f
4:                jal          ra, 11f
5:                jal          t3, 8f
6:                jal          ra, 3b
7:                jal          tp, 2b
8:                jal          ra, 4b
9:                jal          ra, 1b
10:               jal          t1, 5b
11:               jal          t1, 12f
12:               nop
                  add          a3, s1, ra
                  srl          a3, s0, a6
                  andi         t2, s4, 1262
                  sra          t2, s4, t0
                  xor          s10, a2, t2
                  andi         t4, t3, -2036
                  srai         a0, t3, 20
1006:             sltiu        a6, a7, -1476
                  srl          s11, s9, a1
                  beq          a2, s11, 1024f
1009:             lui          a3, 692931
                  nop
                  bgeu         a4, t3, 1013f
                  ori          t1, sp, -1639
1013:             srl          a7, a1, a0
                  beq          s3, a4, 1030f
                  andi         t1, t2, 1731
                  bltu         t3, s5, 1027f
                  and          s9, a7, a4
                  slti         s1, s9, -1949
                  ori          s9, t3, 1940
                  nop
                  sltu         a5, t4, ra
                  beq          s0, ra, 1028f
                  andi         a3, s4, 1545
1024:             sra          a1, a0, s7
                  sltiu        a7, a5, 1612
                  srai         tp, t6, 20
1027:             srl          t0, tp, s7
1028:             nop
                  andi         ra, ra, -1285
1030:             srli         s10, s3, 24
                  or           s7, t5, zero
                  addi         zero, tp, -365
                  slt          a6, s11, s7
                  ori          s10, s7, 1412
                  and          a6, s3, a6
                  nop
                  nop
                  and          s8, t3, s5
                  and          s6, a3, a7
                  lui          gp, 718733
                  or           a2, a2, t1
                  sub          t2, ra, s5
                  bltu         ra, a7, 1062f
                  slt          a3, s7, a2
                  sll          s11, s5, t1
                  bgeu         t4, t6, 1059f
                  bge          t4, s3, 1060f
                  sub          gp, a6, s3
                  ori          ra, s11, -307
                  andi         a1, s3, -734
                  addi         zero, t4, -1063
                  and          a3, t0, s2
                  sra          a6, gp, s8
                  nop
                  srai         s10, t3, 25
                  slti         ra, a6, -1356
                  srli         s9, sp, 16
                  slt          t3, a4, t4
1059:             blt          s11, t1, 1071f
1060:             slli         a7, s7, 5
                  add          a3, t6, a6
1062:             srai         a2, t3, 8
                  nop
                  bltu         s7, a1, 1069f
                  srli         s6, zero, 16
                  beq          sp, s8, 1080f
                  xor          a6, t3, s8
                  sub          a3, a7, t6
1069:             bne          a1, s7, 1079f
                  srai         s6, t5, 22
1071:             srai         s11, s4, 5
                  bgeu         a5, sp, 1087f
                  slt          a5, ra, sp
                  xori         a0, a6, 210
                  bgeu         s11, t4, 1085f
                  blt          tp, gp, 1083f
                  ori          tp, a6, -1798
                  blt          a5, t2, 1090f
1079:             blt          s1, a0, 1089f
1080:             slti         a1, s7, -310
                  blt          t4, s4, 1086f
                  nop
1083:             blt          t4, tp, 1089f
                  sll          s4, s10, zero
                  or           t5, s3, t1
                  sra          s4, t2, a3
                  andi         s7, s8, 1284
                  la           tp, sub_2
                  add          s10, s6, sp
                  xori         a5, sp, 1958
                  sll          sp, t2, s11
                  addi         tp, tp, 89
                  and          s9, tp, a2
                  and          t0, zero, a6
                  bne          a1, zero, sub_1_j3 #branch to jump instr
                  lui          t2, 58222
sub_1_j3:         jalr         ra, tp, -89 #jump sub_1 -> sub_2
1085:             blt          s0, a2, 1100f
1086:             sub          s3, s11, s1
1087:             sll          a0, t0, s6
                  bgeu         a0, t3, 1106f
1089:             slti         s6, s5, 1934
1090:             slti         t2, t2, 1039
                  auipc        s0, 935669
                  nop
                  or           s3, s3, s11
                  or           a0, t5, t3
                  add          s1, gp, zero
                  sll          s4, sp, ra
                  xori         s9, tp, -855
                  addi         t0, tp, 666
                  slt          t2, a3, s5
1100:             sll          s9, a7, a3
                  xor          s3, s1, s10
                  bltu         a0, gp, 1121f
                  add          zero, a6, s0
                  auipc        s10, 934380
                  sltiu        a4, tp, -376
1106:             blt          a0, s1, 1107f
1107:             add          ra, a2, t4
                  bltu         zero, a1, 1109f
1109:             sltu         gp, t5, ra
                  and          sp, s4, t2
                  slt          s4, s5, tp
                  srli         s4, a0, 19
                  sltu         s1, tp, s5
                  slli         t4, s10, 24
                  sll          a6, t2, a2
                  sub          t5, s5, t4
                  srl          a7, s4, t2
                  xor          s9, t2, s5
                  sub          s8, a3, sp
                  slti         a4, t2, 1510
1121:             sub          tp, s5, s4
                  blt          s1, s0, 1141f
                  blt          zero, a6, 1124f
1124:             srli         s8, s6, 15
                  bge          a7, s1, 1128f
                  sub          s1, s7, t2
                  srl          s0, s10, s11
1128:             sub          a2, t3, tp
                  nop
                  slt          t3, s7, t6
                  bne          a1, s1, 1147f
                  slti         s8, a0, 405
                  beq          s0, t5, 1143f
                  sltiu        gp, a3, -827
                  bgeu         s0, a5, 1153f
                  srli         a0, s9, 11
                  addi         s0, sp, 554
                  bltu         a6, s5, 1156f
                  xor          s4, s11, t2
                  ori          a2, gp, 396
1141:             sra          t5, t2, t0
                  xor          t4, a6, t1
1143:             sub          s7, a1, t4
                  blt          a4, gp, 1156f
                  andi         tp, tp, 1866
                  beq          a7, s6, 1151f
1147:             sltiu        ra, ra, -1167
                  nop
                  or           tp, s2, zero
                  sub          t5, t4, s1
1151:             xor          s6, a1, a0
                  ori          sp, a4, -311
1153:             sll          s4, s7, t6
                  sltu         s0, s2, s11
                  xori         s4, s5, 1364
1156:             slli         a3, t1, 23
                  sll          gp, gp, a5
                  bltu         s6, s5, 1165f
                  sltu         s11, s8, ra
                  srai         a3, a1, 3
                  xori         tp, a6, 760
                  srli         a3, s2, 22
                  sll          s9, s0, a7
                  andi         t2, s7, -18
1165:             or           s4, s0, a0
                  and          a2, s3, s6
                  or           a7, s6, a6
                  bltu         t4, s1, 1187f
                  add          a6, a0, a3
                  beq          s7, s0, 1184f
                  bge          s11, t6, 1183f
                  blt          a7, t6, 1173f
1173:             slti         a0, a4, -1775
                  nop
                  and          a6, s6, s10
                  ori          a7, a2, 1388
                  or           s1, tp, a0
                  nop
                  blt          t5, s1, 1198f
                  auipc        zero, 598242
                  ori          t5, a1, 732
                  ori          a6, a2, -1980
1183:             sll          a5, zero, s8
1184:             add          a1, s5, a2
                  sltiu        t3, s5, -227
                  srai         t5, a7, 10
1187:             slti         a1, t6, 727
                  sub          t0, gp, a2
                  sub          s6, a3, s0
                  slti         s6, t3, 497
                  slt          t4, s5, a6
                  slli         a4, a6, 17
                  sltu         s8, t5, zero
                  srli         t3, t6, 13
                  ori          t0, t1, -462
                  addi         s4, gp, -301
                  andi         s10, s9, -271
1198:             addi         t1, t1, -146
                  bge          s6, t1, 1209f
                  sub          s1, s5, ra
                  bgeu         s1, a2, 1211f
                  srl          zero, s6, a2
                  or           s11, t0, s4
                  add          a0, a6, s2
                  add          s9, s5, s2
                  srai         gp, a2, 13
                  or           gp, a7, t0
                  xor          s3, s11, s5
1209:             ori          t2, a1, 1645
                  beq          a1, s2, 1220f
1211:             beq          t4, s11, 1214f
                  srai         s11, a3, 2
                  auipc        gp, 471494
1214:             and          s1, s9, zero
                  srli         s7, s0, 2
                  add          t0, a3, s0
                  blt          sp, s1, 1223f
                  sltiu        a4, a1, -1307
                  srli         a6, a6, 16
1220:             lui          t2, 822232
                  or           sp, t6, s6
                  bne          t5, a2, 1235f
1223:             and          a2, s9, s9
                  sra          t2, t4, s0
                  bgeu         s6, zero, 1236f
                  addi         s4, s11, -738
                  auipc        a0, 403946
                  sub          s4, a7, s4
                  slti         a7, s7, -974
                  srl          a3, t4, a5
                  bge          a7, t4, 1249f
                  lui          gp, 37396
                  slti         gp, s4, -1692
                  lui          sp, 354990
1235:             slti         s7, a5, 1868
1236:             srli         tp, s1, 9
                  srl          s8, s4, s11
                  bltu         s4, t2, 1243f
                  bge          s9, s5, 1255f
                  bltu         a3, a6, 1255f
                  slli         a7, s9, 0
                  bgeu         t5, a1, 1244f
1243:             slt          a7, t1, gp
1244:             slti         t5, s9, -230
                  blt          t4, s8, 1258f
                  sll          a0, tp, s5
                  slt          s1, a2, s0
                  xori         a5, s0, -52
1249:             srli         t1, s1, 2
                  xori         a0, t0, -1884
                  sra          t0, s5, zero
                  bgeu         s5, t0, 1271f
                  auipc        s9, 858979
                  sra          zero, t3, s0
1255:             slti         t5, t3, 1073
                  bgeu         s1, a5, 1262f
                  andi         s1, gp, 384
1258:             sll          s7, tp, tp
                  bne          a0, a0, 1275f
                  bne          t1, gp, 1261f
1261:             xori         s10, s4, 1395
1262:             xor          a1, s11, sp
                  slli         s4, a6, 20
                  bne          s7, s4, 1265f
1265:             srai         a3, t1, 3
                  ori          t0, s4, -1516
                  sltu         s1, t2, s0
                  sll          a4, t1, s3
                  beq          s7, t0, 1285f
                  sub          s1, s1, s10
1271:             sll          s6, s1, zero
                  bltu         a3, s8, 1282f
                  sra          t5, s6, a4
                  add          s9, s0, t6
1275:             sll          s9, tp, s6
                  beq          s3, sp, 1291f
                  ori          t1, t5, 1039
                  srai         zero, gp, 17
                  xor          s8, sp, s7
                  addi         s7, t6, -412
                  lui          gp, 628097
1282:             sltu         t2, t5, a5
                  beq          sp, sp, 1284f
1284:             slli         s7, t5, 6
1285:             bgeu         a3, t6, 1303f
                  bge          a0, a5, 1293f
                  auipc        t4, 355192
                  bne          s2, a5, 1304f
                  sra          a7, a5, s9
                  beq          t6, t2, 1301f
1291:             bgeu         s0, s7, 1306f
                  nop
1293:             nop
                  bltu         a3, t6, 1313f
                  slti         a3, t6, 289
                  xori         a5, s8, 67
                  sra          a7, tp, a3
                  nop
                  bltu         a7, a7, 1312f
                  sll          s3, a6, tp
1301:             slti         a0, a7, 1098
                  bgeu         s9, t4, 1305f
1303:             srl          s4, t3, a2
1304:             slt          t1, t4, a3
1305:             andi         t2, a0, 2009
1306:             nop
                  bge          s1, a1, 1320f
                  bne          s1, s1, 1327f
                  xori         a7, s10, -1586
                  slli         a5, tp, 0
                  sltu         t5, s5, s10
1312:             srai         t5, s8, 8
1313:             slti         t3, s4, 1061
                  lui          s0, 644824
                  srl          zero, s0, a1
                  blt          s11, s7, 1321f
                  srli         gp, s8, 23
                  bgeu         s7, t0, 1324f
                  sltu         t3, sp, t2
1320:             blt          a1, t0, 1321f
1321:             sub          ra, a5, s7
                  beq          a5, s2, 1340f
                  srl          s6, s7, a1
1324:             addi         a5, t4, -494
                  xor          gp, a6, a0
                  sra          a2, s0, s4
1327:             bne          s1, t4, 1343f
                  addi         a1, s8, 1377
                  srli         t4, a0, 8
                  srl          s6, a0, s4
                  sltu         t4, a3, a6
                  sltu         a2, t2, s6
                  bltu         s7, s9, 1343f
                  lui          a0, 231493
                  sra          gp, s6, zero
                  bge          t3, zero, 1351f
                  srli         s11, t0, 19
                  addi         t1, s4, -508
                  lui          a6, 399199
1340:             slli         a2, gp, 30
                  or           gp, tp, a5
                  srai         s11, a7, 12
1343:             blt          a2, a0, 1353f
                  nop
                  slli         s0, s8, 6
                  bne          s4, a0, 1348f
                  auipc        a6, 289173
1348:             ori          s4, s11, -1295
                  sra          a4, t2, t5
                  bge          s7, a0, 1362f
1351:             auipc        a6, 786573
                  srl          s9, t1, tp
1353:             bgeu         a7, s6, 1359f
                  sub          a0, a0, s11
                  bge          a3, zero, 1365f
                  sub          ra, t6, tp
                  srai         ra, s11, 10
                  andi         a6, a6, -970
1359:             sltu         t0, t2, s2
                  slt          a5, a0, a2
                  xori         sp, a0, -477
1362:             andi         t1, s4, 425
                  sltiu        s9, a2, -1582
                  addi         s7, tp, 1594
1365:             xori         t2, s3, 662
                  bne          sp, gp, 1376f
                  xor          sp, t0, a4
                  andi         s10, s2, -1961
                  bne          a7, s10, 1370f
1370:             bne          s8, a7, 1375f
                  beq          t0, s1, 1383f
                  and          a4, s2, t1
                  sra          s9, t1, t2
                  nop
1375:             bne          s4, s5, 1394f
1376:             lui          a1, 103003
                  or           a5, s9, sp
                  lui          ra, 903102
                  sra          a4, a5, tp
                  slti         t4, t5, -114
                  sub          t5, s7, s7
                  xori         zero, s3, -1327
1383:             andi         t4, t4, 1199
                  beq          sp, s7, 1398f
                  xor          s1, s1, a2
                  beq          zero, a1, 1402f
                  addi         a1, t1, -76
                  bgeu         a6, a4, 1393f
                  sra          a4, s9, a6
                  sra          a0, a5, s9
                  addi         a4, t3, -1667
                  bne          s11, ra, 1399f
1393:             bge          s6, s9, 1403f
1394:             sll          a6, s3, tp
                  sll          t5, s4, t1
                  srl          s3, a1, t0
                  sltiu        zero, s8, -18
1398:             bge          t6, s4, 1414f
1399:             bge          sp, s2, 1405f
                  beq          s1, ra, 1412f
                  beq          t1, a2, 1406f
1402:             bne          s4, s6, 1403f
1403:             sub          t4, t0, a0
                  auipc        a0, 616727
1405:             bltu         t2, a6, 1411f
1406:             add          s1, a6, t4
                  xori         a2, t0, -206
                  add          s7, a6, a5
                  addi         tp, a4, 330
                  xori         s11, s3, -1448
1411:             sra          ra, t6, s9
1412:             nop
                  srli         s0, s10, 5
1414:             lui          t4, 432012
                  xor          s11, t0, s0
                  xor          t4, t6, a5
                  srli         a2, s1, 27
                  bge          s4, s9, 1420f
                  andi         s10, s3, -1693
1420:             blt          t3, gp, 1432f
                  srl          s0, a0, a2
                  sra          tp, a6, a3
                  sll          t3, s4, t6
                  ori          s6, s5, -958
                  sub          a5, s3, s6
                  beq          s8, s4, 1436f
                  ori          a6, s3, -319
                  bge          a7, s10, 1447f
                  nop
                  srl          t4, s6, ra
                  auipc        a4, 311223
1432:             auipc        a2, 36923
                  lui          a5, 76713
                  bne          t4, t4, 1449f
                  andi         a2, a0, -255
1436:             bne          t4, s2, 1439f
                  lui          a2, 985561
                  lui          ra, 951977
1439:             blt          t3, gp, 1452f
                  bgeu         t3, sp, 1441f
1441:             bltu         a6, s8, 1455f
                  xori         a4, s3, 774
                  blt          t4, s7, 1459f
                  srli         a6, t6, 29
                  xor          s3, t2, a3
                  blt          a3, a6, 1462f
1447:             and          s0, gp, s8
                  slti         s11, s6, 9
1449:             or           s1, s11, t0
                  sra          s11, ra, a7
                  auipc        a6, 153064
1452:             bltu         s5, a1, 1470f
                  bgeu         a1, t6, 1454f
1454:             or           a6, t3, t3
1455:             auipc        s3, 958931
                  bltu         t1, zero, 1475f
                  blt          s1, s5, 1475f
                  slti         t4, s7, -265
1459:             addi         s7, s5, 950
                  xori         t1, a4, -192
                  blt          t2, ra, 1471f
1462:             sltu         a2, zero, a4
                  slti         gp, a0, 1145
                  slti         t2, sp, 1904
                  andi         a0, a1, 1918
                  srli         a0, ra, 19
                  add          zero, a4, tp
                  or           t5, s4, s8
                  blt          s10, gp, 1484f
1470:             addi         sp, s10, -1739
1471:             slti         s11, a4, 473
                  slli         sp, s3, 6
                  lui          s3, 942656
                  xor          s1, t4, a7
1475:             xor          t1, ra, s5
                  bge          t0, a6, 1487f
                  blt          t0, zero, 1487f
                  bgeu         sp, gp, 1497f
                  bne          s5, sp, 1492f
                  sltiu        s0, s9, -277
                  slli         zero, gp, 10
                  auipc        t3, 552781
                  beq          s2, s1, 1494f
1484:             or           a4, s3, s5
                  and          a6, a4, tp
                  bne          t5, t1, 1502f
1487:             nop
                  slli         s1, s3, 4
                  sra          a5, s11, ra
                  xori         a4, tp, 70
                  slt          t1, a3, s8
1492:             andi         s4, t6, -1900
                  addi         a1, s7, -787
1494:             srl          t2, s7, s0
                  bltu         s6, t4, 1501f
                  sltu         a2, t3, t3
1497:             sra          s3, s11, s7
                  xor          t4, s10, a7
                  and          t0, t0, s6
                  sra          t3, a0, sp
1501:             auipc        a0, 821239
1502:             and          t0, a3, s4
                  sltiu        s8, sp, 1643
                  blt          s11, ra, 1519f
                  andi         t1, ra, -158
                  slt          s6, s8, a0
                  slli         a4, a3, 1
                  bge          a2, s11, 1520f
                  lui          t2, 888062
                  sltu         t4, t5, t6
                  add          a1, s8, zero
                  bge          t2, t3, 1531f
                  bge          ra, t1, 1526f
                  sub          s11, a7, s3
                  srai         a6, t4, 14
                  andi         s6, s6, -1799
                  sltiu        t1, sp, 896
                  andi         t5, a4, -865
1519:             auipc        s7, 449727
1520:             srli         s8, s3, 16
                  srli         a5, s10, 30
                  sll          tp, s8, s8
                  or           s4, s9, s9
                  nop
                  slti         sp, s5, -1324
1526:             beq          a6, a2, 1540f
                  bge          s11, s10, 1529f
                  xor          zero, a5, s8
1529:             srl          s6, s8, t1
                  add          s8, sp, s9
1531:             slt          a2, s9, a5
                  sub          a6, t1, s11
                  srl          t3, s9, a4
                  sltu         t1, a1, t4
                  add          s1, t6, a3
                  beq          a1, sp, 1552f
                  bltu         s9, t3, 1542f
                  andi         tp, s2, -1355
                  xori         s11, s2, -890
1540:             auipc        a5, 257144
                  sltu         t5, a3, a2
1542:             addi         t3, a5, 1673
                  or           a4, t0, ra
                  and          a1, zero, s5
                  ori          s0, gp, 91
                  or           t3, t6, a5
                  auipc        s10, 434650
                  bge          s7, a1, 1558f
                  bgeu         s10, tp, 1562f
                  blt          t1, a5, 1569f
                  bne          s0, gp, 1570f
1552:             add          a2, gp, a6
                  srli         t2, s11, 29
                  bltu         s8, zero, 1555f
1555:             sll          s9, zero, t2
                  nop
                  sll          s4, s3, a7
1558:             sub          a4, s1, s10
                  ori          a5, s9, -262
                  sll          s6, tp, sp
                  blt          s4, s11, 1566f
1562:             bne          s9, a7, 1563f
1563:             sub          a5, a4, s9
                  bltu         s3, sp, 1579f
                  sltu         s1, gp, ra
1566:             xor          a3, ra, s7
                  bne          s2, zero, 1568f
1568:             bltu         s1, s9, 1586f
1569:             bltu         s2, a5, 1581f
1570:             andi         t4, ra, -730
                  sltiu        s11, tp, -1669
                  auipc        a1, 417238
                  auipc        a2, 937471
                  xori         s7, a7, -1828
                  xor          t4, gp, sp
                  addi         zero, t2, -863
                  sub          a2, zero, s9
                  addi         t5, zero, -1475
1579:             andi         s4, a6, -1066
                  sltiu        s10, t2, -1813
1581:             or           zero, s3, t3
                  sltu         t2, a2, s4
                  bgeu         gp, t1, 1601f
                  srai         gp, s4, 7
                  add          s0, s3, t4
1586:             ori          zero, t6, 1938
                  slli         s9, a4, 27
                  lui          tp, 291848
                  xor          a6, t2, ra
                  andi         s9, t4, -423
                  lui          a7, 587234
                  lui          a4, 654922
                  xori         gp, a7, -1379
                  srli         t2, s7, 13
                  srai         s3, s5, 20
                  lui          a0, 862467
                  sltu         sp, s3, zero
                  auipc        tp, 55054
                  xor          t3, t5, t4
                  srli         zero, s9, 6
1601:             slti         s9, gp, -691
                  nop
                  sra          s10, s1, t0
                  blt          t5, s4, 1611f
                  slli         s10, s4, 12
                  or           ra, s3, s9
                  srai         a1, s7, 13
                  slt          s6, t3, a4
                  nop
                  srli         a7, s0, 22
1611:             andi         s3, tp, -851
                  bne          t6, t3, 1615f
                  and          s1, a5, t0
                  bne          s0, t5, 1630f
1615:             slli         a6, s6, 6
                  bne          s4, t5, 1626f
                  andi         s1, s4, 1407
                  beq          s4, t2, 1628f
                  blt          ra, s7, 1629f
                  slli         a5, a5, 14
                  lui          t0, 790546
                  xor          sp, t4, a7
                  auipc        t5, 21346
                  nop
                  bltu         s10, t1, 1631f
1626:             srli         s7, gp, 9
                  sltiu        sp, t6, 1982
1628:             sub          s10, s4, sp
1629:             auipc        s0, 451164
1630:             slli         t1, a1, 10
1631:             slt          s7, t4, a0
                  bne          zero, s5, 1642f
                  bltu         s8, a3, 1634f
1634:             bne          a3, s5, 1644f
                  nop
                  addi         s9, s11, -715
                  srli         s9, s1, 27
                  sll          gp, a2, s10
                  add          s1, a3, s2
                  bltu         a2, a1, 1652f
                  sub          a0, s5, t4
1642:             sll          a3, t1, t3
                  sltu         a4, t5, a2
1644:             lui          t2, 598104
                  srai         a2, s6, 16
                  sltu         s3, a3, s2
                  or           a4, t1, sp
                  srai         s6, tp, 23
                  and          a1, gp, s2
                  addi         s7, s0, 1580
                  nop
1652:             nop
                  bltu         s0, a5, 1669f
                  bgeu         a7, a3, 1672f
                  bgeu         s3, a4, 1661f
                  slli         s3, s10, 6
                  sltiu        sp, ra, -27
                  sltu         a7, t1, zero
                  sltu         t3, a6, a0
                  bgeu         a7, a7, 1679f
1661:             beq          t0, a3, 1671f
                  blt          a3, t1, 1668f
                  sub          s9, t2, a7
                  srli         s1, s1, 8
                  sltu         s10, a6, s9
                  sub          s4, s10, t5
                  srl          t5, s2, s9
1668:             or           s6, a3, t0
1669:             ori          a1, a3, 1878
                  bltu         a5, a2, 1682f
1671:             bne          t2, s1, 1673f
1672:             add          s1, ra, s1
1673:             slti         tp, sp, -1279
                  slt          a6, s1, a7
                  sll          gp, s0, a5
                  ori          a0, a6, 367
                  lui          gp, 438387
                  slli         a2, a3, 15
1679:             srai         s8, s6, 11
                  bne          s1, s2, 1691f
                  add          s9, t6, s3
1682:             addi         a0, s1, 1055
                  or           a6, t5, s7
                  srai         s0, s7, 31
                  auipc        s10, 1042890
                  srl          a0, a3, t6
                  srai         s8, s8, 0
                  sub          s4, t0, sp
                  auipc        t0, 120714
                  bne          a1, ra, 1708f
1691:             sra          s9, a2, t4
                  slt          t4, a1, a3
                  addi         s8, a3, 1060
                  sll          t2, zero, a5
                  lui          s9, 342378
                  xori         gp, a3, 227
                  srai         a7, t3, 2
                  blt          s5, t4, 1711f
sub_1_23:         jal          ra, 6f
0:                jal          t1, 4f
1:                jal          ra, 13f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          s6, 8f
8:                jal          ra, 1b
9:                jal          t1, 7b
10:               jal          s4, 0b
11:               jal          s6, 9b
12:               jal          t1, 11b
13:               sltiu        s8, t3, 1996
                  sub          sp, s9, gp
                  auipc        t0, 278162
                  srai         a0, t4, 23
                  bgeu         a7, s0, 1718f
                  lui          a6, 414367
                  xor          a5, a1, a7
                  nop
                  bne          t2, s4, 1711f
                  sltiu        t5, a6, -328
1708:             srli         tp, a4, 6
                  xori         ra, t1, -282
                  ori          s7, sp, -492
1711:             bge          a1, a0, 1724f
                  sltiu        t3, t4, -959
                  sll          s6, t1, sp
                  sub          a5, s8, s6
                  sra          s0, a0, a1
                  beq          s4, zero, 1723f
                  srl          tp, t2, a2
1718:             xor          sp, s9, gp
                  and          s8, s11, s0
                  slti         s10, s7, -411
                  sra          tp, t3, s7
                  add          a1, a3, a7
1723:             auipc        t1, 298059
1724:             xori         gp, s2, 1628
                  slti         a1, sp, 1291
                  slli         t3, a0, 16
                  bge          t2, a3, 1737f
                  addi         s4, s9, 1663
                  sra          a2, t4, ra
                  slti         a5, ra, 1484
                  bne          a1, s7, 1746f
                  blt          s3, a0, 1733f
1733:             ori          t4, s0, 1620
                  xori         s0, s3, 257
                  srai         a7, s2, 28
                  bne          a3, s9, 1752f
1737:             srai         s8, s3, 10
                  beq          s0, a2, 1741f
                  xor          sp, sp, t4
                  bltu         s6, s7, 1741f
1741:             srli         tp, t4, 15
                  blt          a2, t5, 1757f
                  auipc        sp, 503523
                  or           s9, s10, s7
                  xori         s11, s9, 285
1746:             srli         s8, t5, 21
                  sltiu        t4, sp, 433
                  slti         a0, s7, -60
                  sltu         a1, gp, zero
                  blt          t1, s2, 1769f
                  srai         s3, t4, 20
1752:             sltiu        s3, t4, 539
                  addi         a0, a7, -1810
                  sub          ra, s10, ra
                  add          ra, t0, s5
                  bltu         s0, a3, 1761f
1757:             or           a6, a1, t0
                  srai         a1, a4, 23
                  sll          t2, s0, t6
                  bgeu         s10, a7, 1779f
1761:             bne          a0, gp, 1775f
                  srai         s1, s8, 2
                  addi         t0, t0, 2026
                  auipc        s1, 137944
                  bgeu         a4, t3, 1779f
                  slt          tp, a1, gp
                  or           gp, t3, s6
                  andi         t5, t2, 1944
1769:             blt          tp, a2, 1770f
1770:             bgeu         a7, s9, 1781f
                  slti         s8, t3, 840
                  bge          a5, a6, 1782f
                  sltiu        t4, s1, 1305
                  or           a0, a1, s4
1775:             bgeu         a4, ra, 1791f
                  andi         s11, s10, 445
                  srai         a2, s7, 10
                  beq          ra, a6, 1785f
1779:             addi         t3, s2, 1901
                  blt          t4, s1, 1793f
1781:             bge          t2, t2, 1794f
1782:             sra          ra, s0, s2
                  slli         a2, tp, 14
                  sltu         s3, s11, zero
1785:             srai         s10, a4, 11
                  srli         s9, ra, 4
                  sltiu        t1, a2, 512
                  lui          s1, 67678
                  bge          gp, s7, 1791f
                  sra          s1, s8, t3
1791:             slli         a1, s2, 12
                  nop
1793:             or           s0, s1, t6
1794:             bltu         a3, s3, 1813f
                  add          tp, s5, a4
                  beq          s8, gp, 1808f
                  slti         t1, a7, -1309
                  ori          sp, s3, 364
                  beq          s3, gp, 1804f
                  sltu         ra, s3, a2
                  sll          t5, s4, s2
                  andi         gp, s8, 586
                  bne          t5, a0, 1818f
1804:             xori         ra, sp, 170
                  srai         s7, a1, 24
                  slt          a7, s9, s1
                  bge          a1, a1, 1812f
1808:             nop
                  xori         s8, zero, -1986
                  auipc        t5, 610101
                  add          a7, a3, s3
1812:             and          a4, s10, s7
1813:             sltiu        a3, s8, 1320
                  slti         s3, s10, -428
                  sltu         s6, s9, s1
                  slt          sp, s2, s6
                  and          s3, zero, sp
1818:             srli         a0, s7, 17
                  ori          s0, t0, -268
                  sll          s1, s0, ra
                  nop
                  auipc        t2, 84965
                  slti         s3, gp, -1255
                  sltiu        t1, t6, 788
                  auipc        a2, 1012868
                  bltu         t4, a4, 1844f
                  bgeu         t3, t1, 1833f
                  ori          a2, ra, 588
                  sll          a1, t0, t0
                  sltiu        a3, s3, 1233
                  nop
                  blt          t4, t3, 1848f
1833:             slli         s8, s6, 31
                  sltiu        gp, a0, -1465
                  sltu         s9, s0, a4
                  andi         s10, s0, -799
                  bgeu         t1, t5, 1856f
                  xori         a6, a3, 509
                  blt          t3, t0, 1857f
sub_1_8:          jal          ra, 2f
0:                jal          ra, 6f
1:                jal          tp, 24f
2:                jal          ra, 3f
3:                jal          t1, 11f
4:                jal          s10, 18f
5:                jal          t1, 22f
6:                jal          ra, 10f
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          ra, 26f
10:               jal          a5, 4b
11:               jal          t1, 12f
12:               jal          ra, 27f
13:               jal          t1, 28f
14:               jal          ra, 20f
15:               jal          ra, 17f
16:               jal          ra, 19f
17:               jal          ra, 25f
18:               jal          t1, 7b
19:               jal          ra, 29f
20:               jal          t1, 8b
21:               jal          t1, 14b
22:               jal          ra, 23f
23:               jal          t1, 1b
24:               jal          t1, 21b
25:               jal          ra, 16b
26:               jal          t1, 15b
27:               jal          gp, 0b
28:               jal          t1, 5b
29:               jal          ra, 30f
30:               srli         t0, a6, 8
                  nop
                  ori          t1, s3, -1016
                  srli         a5, a5, 11
                  andi         sp, zero, -1741
1844:             xor          s9, t1, a5
                  beq          s9, a0, 1855f
                  slt          a2, ra, a0
                  srai         a2, t2, 18
1848:             slli         gp, t3, 27
                  srai         a4, a0, 16
                  sltu         s8, ra, t3
                  and          t3, t5, s11
                  srai         s1, t4, 8
                  blt          t0, s4, 1868f
                  sll          a3, s11, gp
1855:             ori          s10, s9, -1534
1856:             auipc        s4, 381172
1857:             sub          s8, s10, s5
                  lui          t2, 126466
                  srai         a2, gp, 28
                  auipc        s1, 934624
                  sltiu        t4, a3, 93
                  srl          a7, s1, t2
                  srai         a1, s1, 14
                  srl          t2, a0, s3
                  sll          s4, s8, a6
                  sll          s1, a0, gp
                  bgeu         s11, s9, 1868f
1868:             sltu         s6, s0, a1
                  sll          t4, ra, a2
                  bne          s5, a4, 1876f
                  bne          t6, t2, 1887f
                  slt          a7, s2, t3
                  sll          a6, s7, t4
                  and          t0, a4, a7
                  srai         a3, sp, 29
1876:             sra          a5, s3, t2
                  xor          s3, a0, a2
                  sll          t5, s6, t3
                  or           a2, t6, t5
                  slli         t5, a0, 19
                  bne          s10, s11, 1900f
                  slt          a0, zero, s11
                  slti         t3, gp, -1744
                  lui          s11, 89137
                  or           s6, t0, ra
                  bne          a0, a7, 1889f
1887:             xori         a7, s7, -90
                  addi         s11, a7, 1756
1889:             sltiu        s6, s4, -1272
                  bgeu         a7, s11, 1902f
                  bgeu         a4, a5, 1901f
                  sltiu        a4, s8, 1655
                  beq          s7, s1, 1894f
1894:             srli         gp, a5, 1
                  blt          s8, a2, 1902f
                  srli         a5, t0, 27
                  sltiu        tp, t6, -1540
                  sra          s0, t3, s1
                  ori          s7, s9, -698
1900:             sll          t0, s10, s11
1901:             srli         s7, s2, 26
1902:             slt          tp, t5, t2
                  lw           ra, 4(t6)
                  ori          a3, s4, 367
                  srli         a1, gp, 24
                  sra          t1, tp, s7
                  addi         t6, t6, 28
                  ori          s0, a7, 1945
                  sll          t2, s2, s3
                  sll          sp, s9, t0
                  add          t0, s3, a6
2760:             addi x19, x1, 0
2760:             jalr x19, x19, 0
sub_4:            addi         t6, t6, -32
                  lui          t0, 863043
                  slti         s9, s8, -442
                  sw           ra, 4(t6)
                  sra          s3, a5, t1
sub_4_1:          jal          ra, 4f
0:                jal          ra, 21f
1:                jal          t1, 6f
2:                jal          ra, 12f
3:                jal          s9, 18f
4:                jal          ra, 3b
5:                jal          ra, 16f
6:                jal          ra, 10f
7:                jal          a7, 0b
8:                jal          ra, 7b
9:                jal          s11, 17f
10:               jal          ra, 19f
11:               jal          ra, 8b
12:               jal          ra, 15f
13:               jal          ra, 22f
14:               jal          ra, 11b
15:               jal          gp, 1b
16:               jal          sp, 2b
17:               jal          a6, 5b
18:               jal          ra, 14b
19:               jal          ra, 13b
20:               jal          ra, 9b
21:               jal          t0, 20b
22:               ori          a2, a2, 88
sub_4_2:          jal          ra, 2f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          t1, 6f
3:                jal          t1, 4f
4:                jal          ra, 11f
5:                jal          t1, 3b
6:                jal          t1, 10f
7:                jal          ra, 8f
8:                jal          ra, 9f
9:                jal          tp, 12f
10:               jal          ra, 1b
11:               jal          a1, 0b
12:               srl          s7, t5, zero
sub_4_3:          jal          ra, 4f
0:                jal          t1, 6f
1:                jal          ra, 5f
2:                jal          s9, 11f
3:                jal          a6, 13f
4:                jal          ra, 12f
5:                jal          ra, 9f
6:                jal          t2, 3b
7:                jal          a2, 2b
8:                jal          ra, 1b
9:                jal          t1, 10f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          t1, 8b
13:               slli         s8, t3, 16
                  sll          t5, t5, s1
                  xori         gp, s9, 796
                  xori         t5, s4, 1768
                  srl          s4, s10, t5
                  bgeu         a6, gp, 15f
                  srl          t3, a6, a1
                  srl          s0, a7, t3
                  bge          a3, s9, 26f
                  add          a4, sp, s6
                  bgeu         tp, s9, 22f
                  sll          tp, t1, zero
                  ori          s11, t4, 1819
                  sub          s10, s6, t0
                  bgeu         s8, t0, 31f
                  slti         a6, zero, 317
15:               addi         a0, a0, -984
                  beq          a5, s8, 17f
17:               add          a4, a6, s10
                  xori         s3, s9, -1839
                  slt          s8, a6, s8
                  blt          a3, a6, 38f
                  addi         a5, s2, -244
22:               srai         s3, s9, 19
                  bge          a6, s11, 30f
                  auipc        a7, 977935
                  nop
26:               srli         s7, s5, 10
                  sra          s3, t2, sp
                  xor          sp, a3, t2
                  slli         s6, s0, 20
30:               add          s11, s8, a0
31:               and          t5, a0, tp
                  sltiu        gp, a7, -562
                  or           a6, a2, t6
                  addi         sp, a6, 997
                  auipc        s8, 472553
                  or           tp, a7, sp
                  ori          s10, s2, -1235
38:               slti         s3, a0, 982
                  sltu         zero, s5, a1
                  bge          a0, a0, 49f
                  lui          gp, 644199
                  bltu         t3, s11, 48f
                  beq          ra, a0, 46f
                  slti         a2, a2, 851
                  bltu         s2, a3, 65f
46:               xori         ra, a2, 1455
                  bgeu         s1, s9, 54f
48:               sub          a5, t0, s4
49:               sltiu        a5, t6, -142
                  bge          s0, a7, 60f
                  andi         s0, a4, 626
                  bltu         s9, s11, 60f
                  andi         s3, s9, 2037
54:               addi         s9, a4, -795
                  blt          ra, ra, 61f
                  bgeu         t3, t0, 75f
                  nop
                  srl          t1, t1, a6
                  sra          a0, t6, t3
60:               addi         a7, t2, -1178
61:               ori          a5, s8, 1939
sub_4_0:          jal          ra, 10f
0:                jal          ra, 25f
1:                jal          ra, 17f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          ra, 21f
6:                jal          t1, 3b
7:                jal          ra, 4b
8:                jal          ra, 22f
9:                jal          ra, 19f
10:               jal          gp, 2b
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          t1, 27f
14:               jal          ra, 20f
15:               jal          t1, 26f
16:               jal          ra, 1b
17:               jal          ra, 13b
18:               jal          t1, 16b
19:               jal          sp, 15b
20:               jal          ra, 5b
21:               jal          s9, 23f
22:               jal          t1, 9b
23:               jal          ra, 18b
24:               jal          ra, 6b
25:               jal          t1, 7b
26:               jal          tp, 24b
27:               sra          s8, a2, tp
                  and          s10, s9, t2
                  xor          t0, a3, t5
                  and          zero, s6, gp
65:               auipc        a3, 810174
                  ori          gp, a3, 688
                  slli         tp, t5, 8
                  srai         s11, s5, 6
                  srai         t0, zero, 26
                  bge          t4, s11, 90f
                  ori          s10, t5, 670
                  sra          a5, s1, a4
                  sub          s10, t3, t3
                  sltu         ra, s8, t4
75:               andi         s9, s1, 1602
                  sltu         sp, a1, t3
                  sub          t0, s5, a4
                  add          a4, sp, a4
                  addi         s9, gp, 680
                  and          s11, s1, a5
                  auipc        t2, 675813
                  xor          s8, s10, s3
                  beq          s0, t5, 99f
                  srai         gp, s1, 2
                  slli         s0, s11, 14
                  sltiu        s6, s6, -1397
                  add          t4, a6, zero
                  beq          a7, a3, 107f
                  sub          a4, gp, a2
90:               xor          a4, a2, s5
                  bne          t1, zero, 98f
                  nop
                  sll          a7, a0, s3
                  xor          a2, s3, a7
                  slti         s3, s0, 213
                  srli         t5, a7, 21
                  blt          a3, s4, 106f
98:               xor          s8, a4, t0
99:               slt          sp, a4, t3
                  andi         s6, a4, 217
                  nop
                  beq          a3, s7, 105f
                  auipc        s0, 39474
                  srai         s4, s6, 18
105:              xor          s10, s7, ra
106:              bge          s8, a3, 113f
107:              bne          t3, gp, 115f
                  sll          tp, gp, s5
                  bne          tp, a4, 120f
                  sll          a4, t4, a6
                  sll          a1, s6, t0
                  sltu         zero, t6, zero
113:              sra          s8, a7, ra
                  ori          tp, t6, -202
115:              xor          s9, s8, s2
                  addi         s7, t5, 249
                  sltiu        t0, sp, -1741
                  srai         s4, t1, 16
                  ori          t2, a6, -946
120:              andi         s10, a1, 1909
                  srli         t2, gp, 17
                  add          s1, t3, sp
                  beq          s11, gp, 127f
                  sltiu        zero, a7, -1966
                  bltu         a2, s1, 145f
                  addi         t3, s0, 2
127:              xor          a4, zero, t3
                  blt          s11, s9, 146f
                  slt          a7, s7, sp
                  blt          t5, t3, 138f
                  slti         s11, a2, -788
                  bge          s3, s6, 135f
                  slli         gp, a7, 15
                  andi         gp, s2, -216
135:              nop
                  bge          s1, gp, 143f
                  xor          s1, s6, a5
138:              lui          t2, 1026255
                  or           s8, a1, s5
                  bltu         s5, s8, 143f
                  lui          s10, 190692
                  lui          s1, 1002525
143:              beq          t5, ra, 161f
                  auipc        a6, 810641
145:              srli         s7, s6, 31
146:              nop
                  andi         a2, s4, -518
                  andi         sp, s10, 375
                  slli         s1, tp, 25
                  srl          a6, t6, s7
                  bne          tp, a7, 161f
                  add          a3, s5, a6
                  bne          t5, s10, 159f
                  srl          t4, t3, s5
                  bne          s5, s7, 171f
                  nop
                  bltu         t5, s6, 164f
                  sra          s7, a7, t6
159:              srai         a6, a7, 18
                  or           s3, t6, t3
161:              lui          s11, 302299
                  add          s8, t4, a7
                  or           t0, t0, s11
164:              and          a6, a2, a6
                  bge          a1, t6, 169f
                  xor          a5, a7, gp
                  lui          t0, 67693
                  slt          t2, a5, ra
169:              bgeu         tp, a3, 182f
                  ori          a2, t6, -1913
171:              srl          t3, s6, t5
                  andi         a6, s1, -790
                  bgeu         s9, a6, 181f
                  ori          a1, a6, 221
                  or           s1, s1, a3
                  bltu         s6, s0, 183f
                  xor          zero, t3, a4
                  auipc        a2, 666737
                  sra          t4, a7, t3
                  bgeu         a6, s11, 199f
181:              sltiu        t2, a6, 1331
182:              sltu         tp, tp, s9
183:              srl          t3, t1, t6
                  addi         s7, s7, 1231
                  addi         sp, s3, -1352
                  srl          s3, s3, t6
                  nop
                  sltiu        s4, t1, 585
                  srli         s10, a3, 29
                  nop
                  sra          s8, s11, s1
                  srli         s10, t0, 19
                  srl          s3, gp, s8
                  add          t4, t3, s2
                  addi         a1, s5, -1108
                  bne          ra, t2, 207f
                  xori         t1, t3, -1568
                  bne          t5, ra, 209f
199:              andi         s11, s5, -339
                  srl          a6, t6, t2
                  or           s10, s7, a6
                  addi         ra, s10, 403
                  lui          s7, 110938
                  addi         s3, a6, 364
                  bne          tp, s6, 208f
                  srl          gp, zero, a1
207:              slti         ra, a2, 541
208:              or           s4, a0, ra
209:              beq          s4, a1, 228f
                  slti         s9, zero, -781
                  and          a4, t5, a3
                  bgeu         t3, t3, 221f
                  slli         sp, s8, 6
                  sltiu        a2, s5, 1729
                  blt          t4, t6, 234f
                  slt          t1, tp, t6
                  andi         t4, s7, -1308
                  sltu         a4, a0, t4
                  slli         a6, t5, 18
                  sll          s9, s0, zero
221:              beq          a3, ra, 228f
                  slt          a3, t2, ra
                  srai         a2, t4, 14
                  slt          a4, a3, a6
                  sra          t2, a2, t5
                  sra          s0, s5, t4
                  xori         t2, a1, -551
228:              andi         s11, a4, 1188
                  slti         s8, gp, -1702
                  add          tp, ra, sp
                  sltiu        t1, t4, 86
                  xor          a1, a4, a6
                  add          ra, s3, s6
234:              bne          s9, a5, 237f
                  bgeu         ra, a2, 237f
                  srli         a4, t0, 6
237:              nop
                  sltiu        t4, a2, -1449
                  lw           ra, 4(t6)
                  srai         t3, a5, 0
                  and          gp, s1, s11
                  srli         s4, zero, 9
                  add          s9, tp, s3
                  and          t4, ra, s4
                  addi         t6, t6, 32
                  srl          t3, t5, t3
334:              addi x7, x1, 1
334:              jalr x7, x7, 0
sub_5:            auipc        s11, 392122
                  beq          a5, t4, sub_5_stack_p
sub_5_stack_p:    addi         t6, t6, -20
                  sw           ra, 4(t6)
                  xor          s10, t5, a5
                  and          a4, t2, t2
sub_5_0:          jal          ra, 20f
0:                jal          t1, 6f
1:                jal          s8, 7f
2:                jal          sp, 0b
3:                jal          tp, 15f
4:                jal          ra, 11f
5:                jal          t5, 4b
6:                jal          ra, 14f
7:                jal          t1, 2b
8:                jal          t1, 19f
9:                jal          t1, 8b
10:               jal          sp, 17f
11:               jal          t1, 1b
12:               jal          ra, 18f
13:               jal          a0, 22f
14:               jal          ra, 12b
15:               jal          ra, 10b
16:               jal          ra, 5b
17:               jal          t1, 16b
18:               jal          ra, 21f
19:               jal          ra, 13b
20:               jal          s1, 9b
21:               jal          a2, 23f
22:               jal          ra, 3b
23:               auipc        a5, 180932
                  auipc        s7, 187895
                  srai         s9, a4, 18
                  lui          t5, 832538
                  or           s8, s5, a5
                  auipc        tp, 806949
                  bltu         t1, ra, 14f
                  srai         t1, ra, 18
                  blt          t5, s4, 24f
                  and          a0, s0, tp
                  andi         t2, s7, -1330
                  xori         a0, s11, -900
                  auipc        sp, 375657
                  bne          tp, s9, 17f
                  sltu         t5, s5, s4
14:               slli         a3, a5, 0
                  srl          a5, gp, s2
                  and          a6, t5, s3
17:               nop
                  addi         a2, t0, -1427
                  or           a0, s1, s7
                  beq          s1, t0, 24f
                  xor          zero, a1, a4
                  sltiu        a2, s1, -1061
                  xori         s10, s8, -825
24:               or           s11, t0, s3
                  add          a1, t6, s2
                  xor          t0, zero, t6
                  slt          t0, s8, s7
                  sltiu        tp, a5, 1195
                  srai         a4, a6, 28
                  nop
                  sub          s1, ra, a5
                  blt          zero, s8, 44f
                  sub          zero, t0, t4
                  nop
                  bge          sp, s9, 45f
                  beq          s7, a2, 43f
                  ori          s11, t1, -1879
                  srl          s6, s9, zero
                  bne          a5, gp, 49f
                  sltiu        a3, a3, -1463
                  sltu         gp, t0, s7
                  blt          sp, sp, 49f
43:               slli         t5, a6, 31
44:               and          ra, s5, t4
45:               sra          a1, a4, s1
                  xor          s0, s10, a5
                  beq          t4, a6, 49f
                  sltu         s8, a0, t5
49:               lui          a2, 276323
                  srl          a0, s10, zero
                  add          s0, s4, a0
                  lw           ra, 4(t6)
                  srai         tp, s6, 7
                  addi         t6, t6, 20
                  sra          t5, s6, a1
                  xor          t1, s6, ra
88:               addi x5, x1, 1
88:               jalr x5, x5, 0
sub_2:            xor          a6, s7, s11
                  add          s11, t5, s11
                  addi         t6, t6, -16
                  sra          s9, a6, a3
                  sltiu        t1, a1, -1293
                  sw           ra, 4(t6)
                  sltiu        a6, t1, 133
sub_2_3:          jal          ra, 15f
0:                jal          ra, 22f
1:                jal          ra, 12f
2:                jal          ra, 25f
3:                jal          ra, 5f
4:                jal          s10, 20f
5:                jal          gp, 13f
6:                jal          t1, 23f
7:                jal          tp, 10f
8:                jal          a4, 7b
9:                jal          ra, 14f
10:               jal          t2, 21f
11:               jal          s0, 8b
12:               jal          t4, 3b
13:               jal          ra, 9b
14:               jal          ra, 24f
15:               jal          ra, 11b
16:               jal          tp, 4b
17:               jal          t1, 16b
18:               jal          t1, 2b
19:               jal          ra, 26f
20:               jal          s7, 19b
21:               jal          ra, 6b
22:               jal          t1, 1b
23:               jal          ra, 17b
24:               jal          ra, 27f
25:               jal          t1, 0b
26:               jal          t1, 18b
27:               sltu         s11, s11, s3
sub_2_4:          jal          ra, 23f
0:                jal          t1, 19f
1:                jal          ra, 10f
2:                jal          ra, 6f
3:                jal          ra, 30f
4:                jal          ra, 25f
5:                jal          ra, 8f
6:                jal          t1, 26f
7:                jal          ra, 15f
8:                jal          sp, 18f
9:                jal          ra, 29f
10:               jal          ra, 17f
11:               jal          t1, 13f
12:               jal          ra, 4b
13:               jal          ra, 0b
14:               jal          s9, 28f
15:               jal          ra, 12b
16:               jal          ra, 7b
17:               jal          ra, 9b
18:               jal          tp, 16b
19:               jal          gp, 5b
20:               jal          t1, 11b
21:               jal          ra, 1b
22:               jal          t1, 21b
23:               jal          ra, 24f
24:               jal          s6, 22b
25:               jal          ra, 2b
26:               jal          ra, 27f
27:               jal          ra, 3b
28:               jal          s8, 20b
29:               jal          ra, 14b
30:               srli         t3, t5, 11
sub_2_1:          jal          ra, 21f
0:                jal          gp, 11f
1:                jal          t1, 15f
2:                jal          ra, 4f
3:                jal          ra, 19f
4:                jal          t1, 6f
5:                jal          ra, 1b
6:                jal          t5, 9f
7:                jal          t4, 16f
8:                jal          ra, 14f
9:                jal          t1, 8b
10:               jal          ra, 22f
11:               jal          ra, 2b
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          t1, 17f
15:               jal          ra, 13b
16:               jal          ra, 20f
17:               jal          t1, 12b
18:               jal          t1, 7b
19:               jal          t1, 18b
20:               jal          tp, 10b
21:               jal          t1, 0b
22:               srai         a7, a7, 9
sub_2_2:          jal          ra, 3f
0:                jal          ra, 11f
1:                jal          a6, 12f
2:                jal          t1, 4f
3:                jal          s8, 1b
4:                jal          ra, 5f
5:                jal          t1, 0b
6:                jal          t1, 7f
7:                jal          t3, 8f
8:                jal          ra, 17f
9:                jal          ra, 16f
10:               jal          s8, 14f
11:               jal          ra, 15f
12:               jal          sp, 13f
13:               jal          s7, 10b
14:               jal          ra, 2b
15:               jal          ra, 9b
16:               jal          s3, 6b
17:               auipc        t5, 792899
sub_2_0:          jal          ra, 6f
0:                jal          tp, 11f
1:                jal          gp, 12f
2:                jal          ra, 13f
3:                jal          sp, 9f
4:                jal          s11, 2b
5:                jal          ra, 4b
6:                jal          ra, 0b
7:                jal          t2, 3b
8:                jal          tp, 7b
9:                jal          ra, 1b
10:               jal          ra, 8b
11:               jal          ra, 10b
12:               jal          ra, 5b
13:               sll          a4, a3, t6
                  slt          t4, a0, t0
                  lui          a0, 862905
                  sltiu        zero, s9, 2017
                  srli         zero, t0, 29
                  slti         ra, gp, -1008
                  srl          s6, t0, s9
                  xori         s11, t3, -1619
                  auipc        s6, 741389
                  sltiu        t1, gp, -1478
                  and          a6, s3, ra
                  addi         zero, ra, 1956
                  or           t3, s6, s8
                  bltu         a0, s9, 24f
                  slli         a3, a1, 17
                  sll          ra, a1, s0
                  sll          s8, a7, s2
                  ori          s4, s7, -520
                  sltiu        sp, s6, -1908
                  bge          s10, s2, 28f
                  sltu         t2, t4, t4
                  bgeu         a6, s9, 38f
                  xor          sp, a0, t5
                  srli         s9, gp, 25
                  sub          s11, s1, t5
24:               sra          s0, zero, a1
                  addi         a3, t6, 700
                  ori          s7, s6, 311
                  bgeu         t0, s0, 28f
28:               bne          t2, a6, 30f
                  srai         a0, t5, 7
30:               sll          a0, s7, gp
                  beq          ra, t1, 50f
                  bge          t5, t1, 45f
                  and          s7, s8, ra
                  sltiu        ra, ra, 1707
                  slli         s10, t2, 17
                  addi         ra, s9, -1055
                  nop
38:               srl          t5, a3, t6
                  xori         s1, a5, 1034
                  sll          s9, s10, a7
                  add          s11, s0, s10
                  srl          ra, s5, a2
                  bgeu         t4, a6, 46f
                  slti         a4, sp, -1512
45:               andi         s6, a1, 1492
46:               xor          a6, a3, ra
                  add          t0, t0, s0
                  nop
                  addi         s10, s7, -1888
50:               sub          t5, s1, a2
                  ori          s0, t1, -132
                  sltiu        a5, s6, -1397
                  bge          t6, s5, 72f
                  sltiu        s7, s9, 1131
                  xori         s3, t3, -149
                  lui          s9, 899655
                  nop
                  bge          tp, ra, 60f
                  slt          a0, t5, s1
60:               sll          s9, s4, ra
                  xori         gp, a0, 1974
                  beq          a4, ra, 63f
63:               sltiu        t1, zero, 194
                  andi         a1, t1, 1362
                  sub          sp, tp, s6
                  srai         t4, t4, 1
                  blt          a4, s0, 76f
                  srai         s7, s7, 26
                  blt          s1, s8, 77f
                  sll          t4, t3, s3
                  bge          sp, s2, 91f
72:               srl          s9, t1, s2
                  sra          t3, gp, t1
                  xor          s3, t2, s3
                  slli         t2, s2, 3
76:               bne          t3, s9, 80f
77:               auipc        ra, 504060
                  srai         s7, s10, 8
                  sll          s9, t1, a5
80:               xori         t5, s1, 1223
                  sra          s1, t0, t5
                  slti         s6, a7, -1595
                  srl          a7, s3, a0
                  xor          s11, s4, a6
                  auipc        s0, 688762
                  andi         ra, a6, -315
                  add          s6, a3, s2
                  xor          a3, t2, a2
                  ori          s4, a6, -802
                  auipc        gp, 489253
91:               sra          t1, s0, gp
                  ori          a4, s8, -1161
                  sltiu        a6, a7, -1841
                  sra          a1, t0, a3
                  srli         ra, s3, 20
                  blt          s2, s1, 97f
97:               addi         s9, gp, -101
                  xori         a6, s3, 100
                  nop
                  slt          a1, a0, gp
                  sll          ra, s9, s9
                  ori          s10, a0, -613
                  sltu         a3, s0, a6
                  sub          s10, a2, s5
                  sll          a2, a1, tp
                  sll          sp, gp, a6
                  bge          tp, ra, 126f
                  sltiu        a7, s10, 2014
                  auipc        a2, 977532
                  sll          a7, s3, s9
                  and          s6, s0, t0
                  or           a0, a3, t1
                  sra          s11, t5, t6
                  beq          ra, t3, 129f
                  xor          a7, s8, sp
                  bge          t2, tp, 122f
                  srai         a5, s5, 28
                  andi         a7, s9, 163
                  addi         s8, s2, -1721
                  xori         zero, s4, 272
                  sltu         a5, s0, tp
122:              slli         ra, a1, 14
                  nop
                  bne          s3, a6, 126f
                  beq          gp, s5, 133f
126:              sub          zero, a7, a3
                  and          a6, s4, a6
                  xori         t1, s0, 1179
129:              blt          a6, s6, 139f
                  slli         s4, ra, 12
                  sll          s7, ra, a6
                  srl          s1, zero, a0
133:              add          gp, a3, ra
                  bgeu         t0, s7, 136f
                  bltu         s2, t6, 154f
136:              srl          t0, s8, s1
                  andi         t3, zero, -1997
                  or           gp, zero, s11
139:              srai         s3, a0, 30
                  xori         sp, s0, -1703
                  xori         t2, t5, 1901
                  xori         ra, ra, -587
                  nop
                  sub          t3, ra, t5
                  lui          s0, 331560
                  bltu         a3, t2, 163f
                  sltiu        s8, tp, -53
                  blt          gp, sp, 160f
                  ori          a2, a7, -64
                  slt          t4, s7, a2
                  slli         a5, s3, 3
                  bltu         ra, s11, 168f
                  nop
154:              xor          tp, s1, a0
                  bgeu         t6, s8, 163f
                  sltu         a3, sp, t2
                  and          a6, s4, t0
                  srai         s6, ra, 0
                  srli         t5, s0, 18
160:              sltu         ra, a5, s11
                  ori          s11, a6, -2041
                  sltiu        a6, a1, -1911
163:              beq          s0, t5, 171f
                  nop
                  nop
                  slti         sp, zero, 1043
                  slt          s7, t5, ra
168:              slt          a3, s9, s0
                  srai         s10, s2, 19
                  sra          s9, t5, a3
                  sltu         s3, a3, a6
                  sra          s11, a1, t3
                  la           ra, sub_3
                  addi         ra, ra, 891
                  sra          a2, t0, ra
                  srli         s4, s2, 25
                  bltu         s11, s11, sub_2_j4 #branch to jump instr
                  add          a5, a0, a7
                  srli         t3, s11, 24
                  nop
sub_2_j4:         jalr         ra, ra, -890 #jump sub_2 -> sub_3
171:              srl          s4, a4, s1
                  lui          a6, 751905
                  slli         s1, a1, 11
                  bltu         t0, s4, 193f
                  xori         a2, a6, 987
                  srl          s6, s4, s2
                  bltu         t4, s2, 196f
                  xori         t5, s1, -1821
                  bne          tp, a2, 187f
                  slli         s0, t3, 4
                  sub          a4, a2, s5
                  add          a4, s10, t6
                  bge          ra, t4, 184f
184:              sltu         t0, t1, a1
                  srai         s9, a2, 16
                  lui          a2, 399929
187:              lui          s11, 353763
                  nop
                  bge          a6, sp, 199f
                  sltu         t4, ra, t3
                  xor          t1, zero, tp
                  xori         s6, a3, -1251
193:              srli         a4, s2, 7
                  sltu         s9, s3, a6
                  xori         s7, a4, 1319
196:              and          t4, a7, s2
                  bne          t6, s9, 213f
                  beq          s8, zero, 208f
199:              bgeu         t2, s3, 217f
                  slli         zero, zero, 1
                  blt          t4, s9, 209f
                  auipc        t3, 743429
                  srai         tp, s4, 27
                  sltu         a6, s9, ra
                  andi         s7, t5, 1556
                  add          a3, t2, s10
                  bltu         s10, a1, 211f
208:              sll          a5, t0, gp
209:              auipc        s6, 231579
                  srli         t3, s4, 16
211:              bgeu         a4, a5, 217f
                  lui          s1, 445009
213:              sra          a1, a6, ra
                  blt          t1, a5, 234f
                  srl          s4, t0, s0
                  sltiu        zero, a3, -1884
217:              bgeu         t0, s5, 236f
                  xori         t4, s2, 295
                  srai         ra, a3, 30
                  bgeu         s0, t1, 228f
                  nop
                  slti         a5, t6, 141
                  srli         a5, sp, 20
                  xor          s9, gp, t6
                  blt          t2, gp, 226f
226:              bltu         t2, a4, 228f
                  andi         t5, s6, 1744
228:              srl          t0, a5, a3
                  add          s10, s3, a1
                  sltu         s10, a3, s9
                  sltu         s7, s10, t5
                  slti         s8, s10, -348
                  srai         a1, a6, 2
234:              slti         s1, a0, -1648
                  ori          t3, t6, 1823
236:              xori         t2, tp, -1440
                  sltiu        a0, t5, -1074
                  nop
                  auipc        ra, 827824
                  or           a7, s1, s5
                  or           t0, s7, a5
                  sra          t3, s10, s9
                  nop
                  bne          s2, a2, 263f
                  nop
                  xori         s7, a0, -1851
                  sra          a1, a7, s3
                  add          s4, a2, t0
                  lui          s10, 904008
                  srli         s11, a4, 26
                  xor          s1, ra, s8
                  srl          t1, a1, s6
                  blt          t0, t0, 267f
                  ori          gp, s11, -333
                  slt          a4, t4, a2
                  slt          s8, t6, gp
                  add          s10, s4, s2
                  add          s3, s6, zero
                  nop
                  srli         t0, a7, 10
                  bltu         a7, s9, 262f
262:              beq          zero, a1, 267f
263:              or           s9, s7, a0
                  nop
                  slli         t2, a7, 13
                  nop
267:              xor          s0, t3, s6
                  sltiu        s8, s10, 1432
                  ori          s3, s6, -884
                  lw           ra, 4(t6)
                  or           t1, s2, a3
                  addi         t6, t6, 16
                  sll          a7, a6, a0
411:              addi x2, x1, 0
411:              jalr x2, x2, 0
sub_3:            blt          sp, zero, sub_3_stack_p
                  slti         s6, s0, 1066
sub_3_stack_p:    addi         t6, t6, -56
                  srai         a4, s5, 2
                  addi         s7, s1, 1229
                  sltiu        a0, t6, -1511
                  slli         s0, a0, 10
                  auipc        tp, 537790
                  srl          a1, t0, s6
                  sw           ra, 4(t6)
                  slt          zero, s10, t4
                  srl          s0, a1, a0
                  lui          s11, 583220
                  srl          a5, s8, t3
                  xori         s11, a1, -695
                  lui          gp, 568696
                  xor          t5, s0, a5
                  andi         a2, a4, -1127
                  ori          s8, gp, -237
sub_3_j5:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  ori          zero, ra, 1418
                  la           t0, sub_4
                  srai         s0, t5, 10
                  xor          t4, t3, s2
                  addi         t0, t0, 903
                  and          sp, a1, a1
                  bge          t4, s10, sub_3_j6 #branch to jump instr
                  sltiu        tp, t5, -389
sub_3_j6:         jalr         ra, t0, -902 #jump sub_3 -> sub_4
sub_3_3:          jal          ra, 12f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          t1, 1b
4:                jal          ra, 11f
5:                jal          t0, 13f
6:                jal          s7, 3b
7:                jal          t4, 2b
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               jal          s8, 5b
11:               jal          s7, 10b
12:               jal          tp, 7b
13:               srl          t1, a3, t6
sub_3_6:          jal          ra, 1f
0:                jal          t1, 6f
1:                jal          s7, 8f
2:                jal          t5, 7f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          ra, 4b
6:                jal          t1, 3b
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          t1, 10f
10:               jal          s4, 0b
11:               lui          t1, 230229
sub_3_1:          jal          ra, 15f
0:                jal          t0, 4f
1:                jal          ra, 17f
2:                jal          ra, 6f
3:                jal          t1, 11f
4:                jal          ra, 10f
5:                jal          s4, 8f
6:                jal          t0, 16f
7:                jal          ra, 19f
8:                jal          t1, 12f
9:                jal          t1, 3b
10:               jal          ra, 2b
11:               jal          t1, 14f
12:               jal          ra, 1b
13:               jal          t1, 5b
14:               jal          s0, 18f
15:               jal          ra, 9b
16:               jal          ra, 13b
17:               jal          ra, 7b
18:               jal          t1, 0b
19:               ori          s8, t2, -585
sub_3_4:          jal          ra, 6f
0:                jal          t0, 3f
1:                jal          ra, 10f
2:                jal          ra, 5f
3:                jal          ra, 8f
4:                jal          t1, 14f
5:                jal          t1, 15f
6:                jal          ra, 9f
7:                jal          ra, 11f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          t1, 4b
12:               jal          ra, 2b
13:               jal          a6, 12b
14:               jal          s1, 13b
15:               add          t2, s10, a5
sub_3_0:          jal          ra, 15f
0:                jal          a0, 16f
1:                jal          ra, 22f
2:                jal          t1, 10f
3:                jal          ra, 25f
4:                jal          s9, 5f
5:                jal          t1, 18f
6:                jal          ra, 2b
7:                jal          t1, 11f
8:                jal          sp, 12f
9:                jal          t1, 7b
10:               jal          s10, 8b
11:               jal          ra, 21f
12:               jal          t1, 0b
13:               jal          ra, 19f
14:               jal          ra, 13b
15:               jal          a6, 23f
16:               jal          ra, 4b
17:               jal          tp, 24f
18:               jal          ra, 3b
19:               jal          ra, 1b
20:               jal          ra, 9b
21:               jal          t1, 17b
22:               jal          t1, 26f
23:               jal          gp, 6b
24:               jal          ra, 14b
25:               jal          t1, 20b
26:               slt          s9, t6, zero
sub_3_5:          jal          ra, 12f
0:                jal          ra, 25f
1:                jal          t1, 10f
2:                jal          s1, 0b
3:                jal          ra, 15f
4:                jal          ra, 8f
5:                jal          t1, 9f
6:                jal          ra, 20f
7:                jal          ra, 2b
8:                jal          ra, 19f
9:                jal          t1, 27f
10:               jal          ra, 4b
11:               jal          ra, 21f
12:               jal          t3, 6b
13:               jal          t1, 24f
14:               jal          a3, 5b
15:               jal          s6, 13b
16:               jal          ra, 11b
17:               jal          t1, 28f
18:               jal          ra, 14b
19:               jal          a1, 7b
20:               jal          ra, 17b
21:               jal          gp, 23f
22:               jal          ra, 26f
23:               jal          a7, 3b
24:               jal          ra, 30f
25:               jal          s6, 29f
26:               jal          a2, 1b
27:               jal          tp, 16b
28:               jal          ra, 22b
29:               jal          sp, 18b
30:               and          a0, t4, s6
                  lui          t1, 115921
                  slli         t2, s0, 6
                  ori          s7, a5, -185
                  lui          a7, 197035
                  ori          zero, t6, 1295
                  add          s0, a1, t4
                  xor          t2, a5, t4
                  bgeu         a0, s8, 14f
                  slti         s9, s4, 1945
                  sll          a0, ra, t1
                  slti         t0, a3, 1262
                  bge          tp, s1, 26f
                  sra          a1, gp, a1
                  srai         s1, t1, 13
14:               sra          tp, t5, t0
                  sltiu        zero, t5, -355
                  xori         a1, t6, 930
                  blt          s0, s0, 24f
                  beq          a3, sp, 24f
                  sltu         a7, zero, sp
                  slt          t0, s0, s1
                  sll          sp, gp, a1
                  bge          s2, s9, 26f
                  add          a7, sp, s9
24:               sub          s7, t0, s9
                  auipc        tp, 838006
26:               andi         a2, zero, -775
                  srli         s3, s8, 21
                  srai         s6, s2, 13
                  sub          sp, s5, zero
                  srai         t2, s6, 2
                  or           s0, a0, s5
                  slti         a1, s11, -468
                  bne          t6, a5, 52f
                  slti         s10, tp, -703
                  bne          tp, tp, 45f
                  srl          a1, s9, t2
                  addi         a7, s11, -1688
                  slti         a2, s8, -1939
                  xori         a7, a4, -1668
                  ori          a0, t2, 6
                  slt          t5, a5, sp
                  or           s7, t3, a1
                  slli         t5, sp, 13
                  auipc        s3, 259655
45:               slt          s0, ra, s2
                  add          s6, s6, s8
                  sub          s1, a1, gp
                  sra          s7, s3, a4
                  and          s3, sp, s8
                  and          t1, t4, t4
                  blt          s9, t0, 54f
52:               slt          s11, s6, s5
                  srai         s11, s6, 13
54:               sltu         s11, s0, a0
                  beq          s5, s3, 71f
                  auipc        s4, 959077
                  bne          a6, sp, 70f
                  slli         a4, s8, 4
                  la           t1, sub_5
                  addi         s11, t1, 1183
                  addi         t1, t1, -1
                  sltiu        s9, t6, 1088
                  nop
                  addi         a1, zero, -467
                  slli         a2, tp, 29
                  nop
                  blt          ra, a7, sub_3_j7 #branch to jump instr
                  sltu         a3, s1, a0
                  sra          a1, a2, s7
sub_3_j7:         jalr         ra, t1, 2 #jump sub_3 -> sub_5
                  sll          t1, s4, tp
                  blt          t2, t5, 66f
                  xori         t5, a4, -1379
                  nop
                  sltu         t1, s11, t6
                  and          t2, zero, t5
sub_3_2:          jal          ra, 8f
0:                jal          ra, 22f
1:                jal          ra, 4f
2:                jal          s9, 10f
3:                jal          t4, 15f
4:                jal          ra, 12f
5:                jal          ra, 21f
6:                jal          a0, 19f
7:                jal          t1, 1b
8:                jal          s7, 0b
9:                jal          t1, 17f
10:               jal          t1, 14f
11:               jal          t1, 13f
12:               jal          ra, 24f
13:               jal          ra, 2b
14:               jal          t1, 20f
15:               jal          ra, 9b
16:               jal          t1, 5b
17:               jal          a7, 6b
18:               jal          ra, 7b
19:               jal          ra, 11b
20:               jal          ra, 23f
21:               jal          t1, 18b
22:               jal          a4, 3b
23:               jal          gp, 16b
24:               xori         zero, a3, -17
                  ori          a2, s0, -801
                  add          s11, a2, a5
66:               andi         s0, t6, -1743
                  srl          tp, tp, s8
                  srl          s11, s10, sp
                  lui          s4, 880867
70:               add          t3, a3, zero
71:               srl          a2, t4, s0
                  srli         s10, s1, 31
                  nop
                  sub          a2, s4, s10
                  beq          s0, t3, 90f
                  slli         a3, a3, 17
                  bne          a2, s6, 79f
                  slt          sp, t3, a4
79:               bne          s10, s6, 90f
                  auipc        t5, 648659
                  slt          t4, t0, ra
                  slli         sp, s0, 17
                  srli         t0, s7, 21
                  xor          a6, t1, sp
                  blt          s2, t0, 86f
86:               andi         s8, sp, 1191
                  add          t2, a6, s9
                  sltu         s9, a5, t2
                  sll          s4, t0, a2
90:               srli         zero, t1, 8
                  beq          t1, gp, 108f
                  sltiu        a3, t4, -1257
                  sub          a2, ra, t5
                  bgeu         s8, a5, 111f
                  add          t0, s3, a3
                  lui          tp, 803323
                  sub          a0, t3, zero
                  lui          a6, 778569
                  bne          s7, zero, 111f
                  blt          a4, a2, 102f
                  slli         a6, a4, 16
102:              sub          t2, tp, a6
                  xor          s10, s10, gp
                  ori          a5, a4, 558
                  or           s9, a3, t4
                  srai         t1, a7, 21
                  srli         t3, sp, 10
108:              srli         a7, s10, 25
                  srli         s3, ra, 3
                  srli         s10, gp, 6
111:              bne          a7, t4, 120f
                  or           a3, s5, s6
                  lui          s0, 295448
                  slt          a4, t2, a2
                  sll          tp, s11, t4
                  slt          t5, a4, a2
                  xor          s8, ra, a1
                  or           s9, a0, a0
                  sll          s0, a5, t4
120:              auipc        a2, 908215
                  bltu         s1, s8, 125f
                  bgeu         t2, ra, 128f
                  lui          zero, 714791
                  or           sp, ra, a3
125:              bltu         t1, a4, 141f
                  sub          s11, a6, a3
                  sll          tp, sp, t4
128:              beq          s0, a7, 139f
                  addi         a6, tp, -1638
                  bge          s5, a6, 131f
131:              srai         s11, t4, 29
                  or           a4, tp, t0
                  bge          s2, a3, 145f
                  slti         s0, s7, 1860
                  slli         s3, s4, 21
                  bge          sp, s4, 152f
                  xori         a5, s1, 1507
                  addi         a0, t3, 1382
139:              sub          s11, a4, s7
                  sra          gp, s11, s7
141:              sub          zero, a5, t5
                  sub          s3, t2, s5
                  bltu         a2, s8, 149f
                  xori         t1, s7, 378
145:              auipc        s3, 459063
                  sltu         a3, a5, t3
                  xori         a0, gp, -354
                  sll          t3, gp, a7
149:              slti         s11, s11, -1996
                  bge          s4, a0, 155f
                  add          a3, a2, s2
152:              beq          tp, t0, 168f
                  xori         gp, t5, 1922
                  bltu         a6, s9, 166f
155:              ori          a0, a3, -1363
                  blt          a0, a6, 172f
                  sltu         a1, a7, sp
                  slli         a6, s9, 21
                  sltu         a2, a5, a2
                  sltiu        t4, zero, 42
                  add          s11, t2, a5
                  xori         a0, a6, -1921
                  slli         a7, sp, 27
                  slli         t3, t2, 27
                  ori          t3, t2, -1245
166:              slti         s6, s8, 1914
                  sll          gp, a0, s5
168:              and          a2, gp, t6
                  addi         tp, a7, -1898
                  srli         s11, t4, 22
                  sltiu        t1, t2, -242
172:              xori         a6, zero, -1451
                  bgeu         a6, a7, 179f
                  bge          s10, s2, 176f
                  sltiu        t2, a0, 1961
176:              xor          a0, a3, s10
                  srl          a7, s10, a0
                  nop
179:              srl          a1, ra, a5
                  ori          s10, s8, -513
                  ori          a6, s1, -1818
                  srli         a4, s7, 27
                  sltu         tp, a2, t4
                  srai         a5, t0, 14
                  sll          t0, ra, s5
                  nop
                  bgeu         sp, a4, 200f
                  srl          s8, ra, a7
                  sub          a4, a2, a1
                  srai         zero, a0, 30
                  sub          a1, s8, t3
                  bge          a3, s9, 199f
                  bne          t0, t4, 208f
                  bne          s4, tp, 205f
                  srli         s9, t4, 11
                  srli         gp, a0, 1
                  xori         a6, t5, 1767
                  xori         t5, s0, 1912
199:              sltu         t2, tp, s8
200:              sra          sp, zero, t2
                  bgeu         zero, a7, 205f
                  slli         t2, a4, 9
                  slti         s8, a7, -1096
                  bge          s1, s1, 215f
205:              nop
                  sra          gp, s0, s7
                  and          a2, sp, a5
208:              beq          s9, s4, 227f
                  bltu         s10, a7, 221f
                  srai         ra, gp, 6
                  add          s11, s11, t0
                  sll          s0, t6, t3
                  slli         a6, a1, 15
                  xori         s0, s7, 1692
215:              xori         a0, s6, 1060
                  ori          ra, t0, 16
                  lui          s1, 423473
                  srl          zero, s0, a7
                  sra          t3, a4, a1
                  xor          a7, t0, s8
221:              bge          gp, s10, 231f
                  sltiu        t3, a4, -242
                  bge          s5, t3, 239f
                  bgeu         s11, s10, 231f
                  blt          t6, gp, 240f
                  auipc        a7, 5225
227:              sub          a0, s5, t1
                  bne          s8, a2, 231f
                  lui          a5, 678211
                  xori         gp, zero, 640
231:              lui          s7, 6131
                  sll          s1, s4, s5
                  nop
                  addi         s8, zero, -1844
                  bne          s11, a4, 237f
                  srli         sp, s7, 15
237:              srli         t1, t6, 13
                  nop
239:              bne          a0, s1, 256f
240:              srli         t0, s6, 30
                  blt          t0, s5, 242f
242:              add          gp, a1, gp
                  sub          ra, t1, a6
                  addi         s6, gp, 445
                  bltu         gp, s10, 246f
246:              or           a5, a6, t1
                  xor          s4, a6, s9
                  srl          sp, t5, s4
                  and          t2, s1, s6
                  sll          a4, tp, s6
                  add          s7, s1, sp
                  blt          t6, a0, 268f
                  xori         s11, s11, -1126
                  bne          zero, t6, 260f
                  bne          t3, s9, 262f
256:              bne          tp, a6, 262f
                  sub          s10, a5, gp
                  addi         a0, gp, -1612
                  srai         s4, a5, 7
260:              addi         sp, sp, -1498
                  or           s4, s9, t0
262:              ori          s6, s10, 1914
                  slt          a3, t0, t5
                  beq          s8, gp, 273f
                  auipc        sp, 151845
                  srl          t5, s10, a3
                  sub          gp, s4, t3
268:              xori         t1, a1, -1914
                  bne          gp, a1, 274f
                  bne          t4, sp, 287f
                  nop
                  srli         s6, t5, 28
273:              bltu         zero, t2, 277f
274:              sll          s8, s0, a6
                  beq          s4, zero, 291f
                  auipc        t3, 31979
277:              srli         s8, s2, 21
                  addi         ra, s10, 1816
                  bgeu         ra, s3, 294f
                  lui          s3, 73035
                  and          zero, gp, s11
                  sltiu        a3, s11, -875
                  sltiu        t2, t4, -1182
                  xor          t1, t2, a6
                  slti         s4, s5, -470
                  addi         tp, s4, 1291
287:              and          ra, a6, sp
                  slt          a6, s5, a4
                  slti         gp, s10, 317
                  ori          sp, tp, 934
291:              add          a6, t0, a5
                  blt          s2, s3, 305f
                  xor          s1, s10, t0
294:              sll          s4, t4, a5
                  srl          a3, sp, t3
                  beq          a3, a2, 298f
                  nop
298:              sll          a6, gp, a2
                  sra          t4, s11, zero
                  bne          t3, a0, 312f
                  nop
                  srl          a6, t1, t3
                  sra          t2, s7, a1
                  beq          a4, a7, 315f
305:              or           a5, t6, a2
                  xor          a1, s11, s0
                  srl          a5, t3, t2
                  bge          s8, s10, 315f
                  bne          a3, s8, 314f
                  srl          s7, s3, a7
                  sll          s0, s3, t3
312:              sltu         s6, t2, t4
                  andi         s9, a1, 1682
314:              bgeu         a4, sp, 318f
315:              auipc        a4, 926292
                  sltu         gp, s5, a5
                  sub          sp, tp, zero
318:              blt          s1, a0, 327f
                  srl          a1, t2, a4
                  sra          a1, t4, zero
                  srai         s1, s5, 3
                  xori         t0, gp, 808
                  blt          a4, s11, 325f
                  andi         a4, s11, -1233
325:              andi         a5, t3, 1923
                  addi         t0, a0, 1189
327:              srli         tp, s5, 19
                  slt          a4, t3, s9
                  xori         t0, t2, -1778
                  and          s10, s3, a1
                  lui          s1, 856669
                  andi         t3, tp, 1024
                  slli         a3, gp, 25
                  auipc        tp, 371495
                  xor          t3, a2, zero
                  slti         t2, a7, 293
                  bgeu         a7, s3, 344f
                  lui          a3, 921760
                  srai         a4, a1, 21
                  addi         ra, t3, -1074
                  slli         a7, s10, 18
                  srai         tp, a5, 12
                  bne          gp, s0, 362f
344:              srl          s10, s10, t0
                  slti         s1, s2, 121
                  andi         a4, zero, -297
                  blt          t4, sp, 364f
                  sll          s7, s4, s11
                  sltu         s8, t4, tp
                  sll          a7, s10, t5
                  nop
                  beq          zero, tp, 358f
                  beq          tp, a0, 369f
                  xori         s7, s10, -354
                  xor          sp, ra, t4
                  andi         ra, s1, 1892
                  srai         gp, a3, 24
358:              xori         t1, s1, 1790
                  slti         t4, s1, 1849
                  srai         s9, s2, 7
                  bge          t3, s4, 372f
362:              auipc        s4, 423764
                  blt          s9, a3, 367f
364:              or           a2, t4, gp
                  sltu         t0, a2, t4
                  lui          t2, 743897
367:              srl          a4, s10, s2
                  beq          t4, sp, 374f
369:              ori          s1, a2, 670
                  auipc        s0, 441266
                  sub          s9, s8, s0
372:              sltiu        s7, t0, -520
                  slt          sp, s1, a6
374:              add          a7, s0, s1
                  xor          s1, s2, s9
                  slti         a2, gp, -1425
                  srai         t3, t2, 0
                  blt          t0, gp, 384f
                  auipc        a6, 743760
                  bgeu         s4, s10, 384f
                  xor          t0, s9, a4
                  slti         ra, s4, -110
                  add          t3, s7, a0
384:              lui          a0, 43696
                  lw           ra, 4(t6)
                  slti         s4, a0, -1148
                  or           a2, a2, s0
                  slti         a6, s11, 204
                  addi         t6, t6, 56
                  sra          a6, s2, s3
                  sltu         a1, t3, a5
                  slti         a2, tp, -1724
                  and          zero, tp, a5
588:              addi x4, x1, 1
588:              jalr x4, x4, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x21, x31, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x5, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x5, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x5, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x5, x30, ecall_handler
                  li x30, 0x1
                  beq x5, x30, instr_fault_handler
                  li x30, 0x5
                  beq x5, x30, load_fault_handler
                  li x30, 0x7
                  beq x5, x30, store_fault_handler
                  li x30, 0xc
                  beq x5, x30, pt_fault_handler
                  li x30, 0xd
                  beq x5, x30, pt_fault_handler
                  li x30, 0xf
                  beq x5, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
