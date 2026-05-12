.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x2
                  li x1, 0x2
                  li x2, 0x30087fda
                  li x3, 0xf7702cd8
                  li x4, 0xd
                  li x5, 0xfe1b4176
                  li x6, 0x957914f6
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x9c25abe9
                  li x16, 0xe33fb269
                  li x17, 0x80000000
                  li x18, 0x913dcf8d
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x6
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x28, 0x99eb8079
                  li x29, 0x6
                  li x30, 0x0
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             sltu         t4, s4, a4
                  la           a0, sub_2
                  slti         t5, s11, -1485
                  addi         a0, a0, -913
                  add          a5, s1, t3
                  bltu         zero, t6, main_j2 #branch to jump instr
                  slt          s1, s7, s8
                  xori         a3, t0, -1355
main_j2:          jalr         ra, a0, 913 #jump main -> sub_2
main_0:           jal          ra, 24f
0:                jal          t1, 8f
1:                jal          t1, 0b
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          ra, 3b
5:                jal          ra, 27f
6:                jal          tp, 20f
7:                jal          t1, 28f
8:                jal          ra, 25f
9:                jal          ra, 1b
10:               jal          ra, 17f
11:               jal          a0, 23f
12:               jal          ra, 26f
13:               jal          ra, 10b
14:               jal          t1, 7b
15:               jal          t1, 21f
16:               jal          s0, 19f
17:               jal          sp, 18f
18:               jal          a2, 6b
19:               jal          t0, 12b
20:               jal          t1, 9b
21:               jal          t1, 14b
22:               jal          t1, 5b
23:               jal          a5, 4b
24:               jal          s7, 2b
25:               jal          sp, 22b
26:               jal          a2, 15b
27:               jal          ra, 16b
28:               sltiu        sp, t1, -1557
                  srli         t3, a7, 31
                  beq          s3, t4, 14f
                  srl          sp, a2, ra
                  sltu         t0, t5, t2
                  and          t6, t4, s4
                  addi         sp, s4, -1728
                  ori          sp, s9, 929
                  blt          a3, t4, 19f
                  add          s5, tp, ra
                  ori          s7, s3, 912
                  slti         a0, s6, -604
                  srli         s4, a3, 23
                  lui          t5, 659569
                  sll          a0, t3, s11
14:               lui          t2, 815055
                  auipc        sp, 894348
                  slti         a2, t1, 25
                  sll          a6, a2, a5
                  bgeu         t3, a6, 26f
19:               bgeu         s5, a3, 26f
                  addi         a6, a3, -1818
                  slti         s4, s5, -1707
                  andi         t5, zero, 373
                  and          t1, a7, s2
                  nop
                  andi         gp, gp, 1773
                  slli         gp, t5, 16
                  slt          a5, s3, tp
                  sltiu        a0, a5, -894
                  xori         t6, tp, -1155
                  la           s8, sub_1
                  andi         s0, s0, 508
                  sll          a0, t6, s0
                  addi         s8, s8, -563
                  blt          ra, t2, main_j1 #branch to jump instr
                  or           t4, ra, t2
main_j1:          jalr         ra, s8, 563 #jump main -> sub_1
                  xor          t6, a6, s10
26:               and          sp, s5, s9
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            ori          sp, ra, -1276
                  sra          a5, a4, s8
                  sll          zero, a2, s3
                  addi         tp, s4, 1592
                  bgeu         sp, ra, sub_1_stack_p
                  sub          a2, zero, s4
sub_1_stack_p:    addi         s3, s3, -28
                  slt          t0, a4, a3
                  ori          sp, t0, -530
                  sw           ra, 4(s3)
                  srli         zero, s5, 14
                  sll          a0, s7, t6
                  slli         s7, a2, 12
                  la           s4, sub_4
                  nop
                  or           a6, s11, sp
                  srli         s6, t0, 10
                  addi         s4, s4, -834
                  addi         a1, tp, 637
                  sra          s10, s6, t4
                  andi         t2, s10, 1659
                  xor          a4, s0, t5
sub_1_j4:         jalr         ra, s4, 835 #jump sub_1 -> sub_4
sub_1_23:         jal          ra, 13f
0:                jal          ra, 7f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 1b
5:                jal          a2, 14f
6:                jal          t5, 3b
7:                jal          t1, 4b
8:                jal          t1, 11f
9:                jal          a1, 10f
10:               jal          t2, 0b
11:               jal          t1, 5b
12:               jal          a1, 15f
13:               jal          tp, 8b
14:               jal          a3, 9b
15:               auipc        s4, 353648
sub_1_11:         jal          ra, 17f
0:                jal          ra, 19f
1:                jal          ra, 22f
2:                jal          ra, 23f
3:                jal          s0, 4f
4:                jal          ra, 12f
5:                jal          ra, 7f
6:                jal          s5, 10f
7:                jal          s10, 26f
8:                jal          ra, 29f
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          t1, 20f
12:               jal          t1, 18f
13:               jal          s4, 8b
14:               jal          sp, 3b
15:               jal          ra, 5b
16:               jal          ra, 0b
17:               jal          s5, 1b
18:               jal          ra, 9b
19:               jal          ra, 15b
20:               jal          t1, 16b
21:               jal          a3, 6b
22:               jal          sp, 25f
23:               jal          t1, 27f
24:               jal          t2, 2b
25:               jal          ra, 28f
26:               jal          ra, 24b
27:               jal          ra, 21b
28:               jal          t1, 14b
29:               sltu         gp, s6, t6
sub_1_22:         jal          ra, 21f
0:                jal          ra, 29f
1:                jal          ra, 3f
2:                jal          t1, 24f
3:                jal          ra, 27f
4:                jal          t1, 14f
5:                jal          a6, 2b
6:                jal          ra, 13f
7:                jal          t0, 25f
8:                jal          ra, 4b
9:                jal          s4, 5b
10:               jal          ra, 8b
11:               jal          ra, 26f
12:               jal          ra, 7b
13:               jal          sp, 15f
14:               jal          ra, 11b
15:               jal          s0, 16f
16:               jal          ra, 28f
17:               jal          t1, 10b
18:               jal          ra, 12b
19:               jal          s5, 20f
20:               jal          a0, 18b
21:               jal          ra, 0b
22:               jal          ra, 30f
23:               jal          s8, 6b
24:               jal          s7, 17b
25:               jal          ra, 1b
26:               jal          t1, 23b
27:               jal          s2, 9b
28:               jal          s6, 22b
29:               jal          s9, 19b
30:               sub          a6, t4, a2
sub_1_2:          jal          ra, 7f
0:                jal          tp, 5f
1:                jal          ra, 17f
2:                jal          ra, 15f
3:                jal          gp, 20f
4:                jal          t1, 19f
5:                jal          gp, 9f
6:                jal          t1, 10f
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          t6, 8b
11:               jal          ra, 18f
12:               jal          ra, 16f
13:               jal          a6, 0b
14:               jal          ra, 3b
15:               jal          t1, 6b
16:               jal          ra, 13b
17:               jal          ra, 12b
18:               jal          a0, 14b
19:               jal          ra, 11b
20:               jal          t1, 21f
21:               and          t4, t4, s2
sub_1_26:         jal          ra, 3f
0:                jal          t1, 4f
1:                jal          ra, 8f
2:                jal          ra, 0b
3:                jal          s7, 5f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          ra, 12f
9:                jal          t1, 7b
10:               jal          t1, 13f
11:               jal          sp, 6b
12:               jal          a2, 9b
13:               sra          a2, s5, gp
sub_1_9:          jal          ra, 8f
0:                jal          ra, 6f
1:                jal          t6, 2f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          t0, 9f
6:                jal          ra, 7f
7:                jal          t5, 5b
8:                jal          t1, 3b
9:                jal          ra, 4b
10:               sra          s4, s1, s3
sub_1_19:         jal          ra, 7f
0:                jal          t1, 3f
1:                jal          ra, 14f
2:                jal          t1, 15f
3:                jal          ra, 21f
4:                jal          ra, 2b
5:                jal          sp, 8f
6:                jal          ra, 11f
7:                jal          ra, 16f
8:                jal          s7, 18f
9:                jal          t1, 6b
10:               jal          ra, 17f
11:               jal          ra, 19f
12:               jal          a6, 0b
13:               jal          t1, 10b
14:               jal          ra, 12b
15:               jal          a1, 13b
16:               jal          ra, 5b
17:               jal          ra, 1b
18:               jal          t1, 20f
19:               jal          ra, 4b
20:               jal          s1, 9b
21:               srli         tp, a5, 15
sub_1_1:          jal          ra, 19f
0:                jal          ra, 15f
1:                jal          t1, 12f
2:                jal          t1, 6f
3:                jal          t1, 18f
4:                jal          t1, 23f
5:                jal          ra, 3b
6:                jal          ra, 16f
7:                jal          t3, 17f
8:                jal          t1, 7b
9:                jal          ra, 11f
10:               jal          ra, 20f
11:               jal          t1, 0b
12:               jal          ra, 25f
13:               jal          gp, 5b
14:               jal          ra, 24f
15:               jal          t0, 1b
16:               jal          s7, 4b
17:               jal          ra, 13b
18:               jal          ra, 14b
19:               jal          ra, 8b
20:               jal          a5, 9b
21:               jal          t0, 2b
22:               jal          ra, 21b
23:               jal          ra, 10b
24:               jal          ra, 22b
25:               ori          a2, s11, 1089
sub_1_4:          jal          ra, 3f
0:                jal          t1, 24f
1:                jal          s0, 10f
2:                jal          ra, 7f
3:                jal          s4, 12f
4:                jal          ra, 8f
5:                jal          ra, 1b
6:                jal          a2, 11f
7:                jal          t1, 18f
8:                jal          s2, 14f
9:                jal          s8, 13f
10:               jal          s5, 20f
11:               jal          t4, 19f
12:               jal          ra, 15f
13:               jal          ra, 0b
14:               jal          s0, 22f
15:               jal          ra, 2b
16:               jal          s8, 4b
17:               jal          a5, 5b
18:               jal          ra, 21f
19:               jal          a0, 17b
20:               jal          t1, 23f
21:               jal          ra, 6b
22:               jal          ra, 9b
23:               jal          ra, 16b
24:               sltiu        a4, t4, -824
sub_1_16:         jal          ra, 28f
0:                jal          ra, 12f
1:                jal          t5, 26f
2:                jal          ra, 24f
3:                jal          t1, 15f
4:                jal          ra, 14f
5:                jal          ra, 13f
6:                jal          ra, 11f
7:                jal          sp, 1b
8:                jal          tp, 29f
9:                jal          ra, 4b
10:               jal          s6, 18f
11:               jal          t1, 9b
12:               jal          t1, 6b
13:               jal          sp, 20f
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               jal          ra, 21f
17:               jal          ra, 16b
18:               jal          t1, 22f
19:               jal          t1, 23f
20:               jal          t1, 8b
21:               jal          gp, 3b
22:               jal          ra, 25f
23:               jal          gp, 0b
24:               jal          ra, 17b
25:               jal          ra, 2b
26:               jal          ra, 10b
27:               jal          t1, 19b
28:               jal          ra, 27b
29:               xori         ra, s1, -37
sub_1_12:         jal          ra, 8f
0:                jal          ra, 9f
1:                jal          ra, 4f
2:                jal          t1, 1b
3:                jal          ra, 12f
4:                jal          s0, 10f
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          ra, 15f
8:                jal          ra, 5b
9:                jal          s2, 20f
10:               jal          ra, 11f
11:               jal          ra, 0b
12:               jal          ra, 6b
13:               jal          s9, 18f
14:               jal          ra, 19f
15:               jal          ra, 2b
16:               jal          s1, 7b
17:               jal          ra, 16b
18:               jal          t1, 3b
19:               jal          s0, 17b
20:               andi         a1, a3, -70
sub_1_17:         jal          ra, 8f
0:                jal          t1, 11f
1:                jal          t1, 10f
2:                jal          s7, 14f
3:                jal          ra, 12f
4:                jal          t1, 5f
5:                jal          t4, 1b
6:                jal          ra, 9f
7:                jal          a3, 6b
8:                jal          ra, 2b
9:                jal          tp, 3b
10:               jal          t3, 0b
11:               jal          gp, 7b
12:               jal          a0, 13f
13:               jal          t1, 15f
14:               jal          s0, 4b
15:               addi         a2, t0, 915
sub_1_21:         jal          ra, 19f
0:                jal          ra, 2f
1:                jal          ra, 23f
2:                jal          a1, 18f
3:                jal          a4, 0b
4:                jal          t1, 21f
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          tp, 6b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          t1, 14f
13:               jal          s4, 3b
14:               jal          ra, 22f
15:               jal          ra, 17f
16:               jal          s4, 13b
17:               jal          ra, 16b
18:               jal          ra, 7b
19:               jal          t1, 15b
20:               jal          a0, 4b
21:               jal          ra, 8b
22:               jal          t1, 20b
23:               sll          t0, s4, sp
sub_1_8:          jal          ra, 13f
0:                jal          ra, 18f
1:                jal          t5, 2f
2:                jal          ra, 10f
3:                jal          a3, 7f
4:                jal          ra, 8f
5:                jal          ra, 16f
6:                jal          ra, 14f
7:                jal          t1, 0b
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          t1, 15f
11:               jal          gp, 4b
12:               jal          ra, 11b
13:               jal          t1, 5b
14:               jal          t3, 17f
15:               jal          ra, 19f
16:               jal          ra, 12b
17:               jal          t0, 9b
18:               jal          t6, 1b
19:               sltu         a3, s8, s8
sub_1_6:          jal          ra, 10f
0:                jal          s10, 20f
1:                jal          s2, 26f
2:                jal          ra, 11f
3:                jal          ra, 14f
4:                jal          ra, 23f
5:                jal          ra, 16f
6:                jal          a4, 12f
7:                jal          ra, 21f
8:                jal          ra, 2b
9:                jal          ra, 17f
10:               jal          t1, 7b
11:               jal          a4, 25f
12:               jal          tp, 4b
13:               jal          ra, 9b
14:               jal          t1, 27f
15:               jal          t6, 6b
16:               jal          gp, 22f
17:               jal          a6, 0b
18:               jal          t1, 3b
19:               jal          s6, 1b
20:               jal          ra, 19b
21:               jal          ra, 15b
22:               jal          ra, 8b
23:               jal          ra, 24f
24:               jal          ra, 13b
25:               jal          t6, 18b
26:               jal          ra, 5b
27:               slt          t3, s10, a6
sub_1_27:         jal          ra, 18f
0:                jal          ra, 2f
1:                jal          sp, 3f
2:                jal          t5, 17f
3:                jal          s7, 15f
4:                jal          t1, 8f
5:                jal          ra, 14f
6:                jal          s1, 11f
7:                jal          t5, 12f
8:                jal          ra, 10f
9:                jal          t2, 22f
10:               jal          ra, 7b
11:               jal          ra, 16f
12:               jal          tp, 5b
13:               jal          t1, 21f
14:               jal          t1, 20f
15:               jal          ra, 19f
16:               jal          ra, 13b
17:               jal          t1, 1b
18:               jal          t1, 4b
19:               jal          t1, 9b
20:               jal          ra, 6b
21:               jal          t1, 0b
22:               or           s1, s6, a2
sub_1_15:         jal          ra, 1f
0:                jal          t1, 24f
1:                jal          ra, 10f
2:                jal          tp, 23f
3:                jal          sp, 7f
4:                jal          s10, 3b
5:                jal          ra, 12f
6:                jal          ra, 22f
7:                jal          ra, 17f
8:                jal          a2, 2b
9:                jal          ra, 21f
10:               jal          a2, 13f
11:               jal          ra, 9b
12:               jal          s8, 4b
13:               jal          tp, 0b
14:               jal          ra, 25f
15:               jal          a5, 19f
16:               jal          ra, 18f
17:               jal          tp, 16b
18:               jal          t1, 20f
19:               jal          s5, 8b
20:               jal          tp, 15b
21:               jal          ra, 6b
22:               jal          t1, 5b
23:               jal          a1, 14b
24:               jal          ra, 11b
25:               sra          s6, s8, gp
sub_1_5:          jal          ra, 3f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          s2, 1b
3:                jal          gp, 8f
4:                jal          s9, 0b
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          t1, 2b
8:                jal          t1, 5b
9:                jal          t5, 12f
10:               jal          s5, 9b
11:               jal          ra, 10b
12:               xor          a5, t2, t3
sub_1_7:          jal          ra, 7f
0:                jal          ra, 21f
1:                jal          t1, 4f
2:                jal          t1, 19f
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          ra, 12f
6:                jal          t6, 16f
7:                jal          t1, 5b
8:                jal          ra, 13f
9:                jal          t1, 11f
10:               jal          ra, 8b
11:               jal          s8, 3b
12:               jal          ra, 14f
13:               jal          t1, 0b
14:               jal          t1, 15f
15:               jal          t0, 1b
16:               jal          t1, 20f
17:               jal          s8, 18f
18:               jal          t0, 22f
19:               jal          ra, 17b
20:               jal          s10, 2b
21:               jal          t0, 9b
22:               nop
sub_1_25:         jal          ra, 12f
0:                jal          ra, 16f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          ra, 8f
4:                jal          t1, 11f
5:                jal          tp, 15f
6:                jal          ra, 13f
7:                jal          t0, 4b
8:                jal          t1, 5b
9:                jal          tp, 10f
10:               jal          ra, 3b
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          ra, 9b
14:               jal          t1, 1b
15:               jal          t1, 2b
16:               auipc        s7, 637688
sub_1_20:         jal          ra, 12f
0:                jal          ra, 5f
1:                jal          s5, 2f
2:                jal          t6, 20f
3:                jal          s2, 22f
4:                jal          t0, 21f
5:                jal          t1, 8f
6:                jal          ra, 11f
7:                jal          t0, 10f
8:                jal          ra, 19f
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          ra, 9b
13:               jal          ra, 15f
14:               jal          t1, 4b
15:               jal          t0, 0b
16:               jal          t1, 24f
17:               jal          ra, 6b
18:               jal          s5, 23f
19:               jal          gp, 3b
20:               jal          ra, 13b
21:               jal          ra, 1b
22:               jal          ra, 16b
23:               jal          ra, 7b
24:               and          s7, s3, a6
sub_1_0:          jal          ra, 17f
0:                jal          ra, 14f
1:                jal          t1, 4f
2:                jal          a5, 19f
3:                jal          t1, 16f
4:                jal          t1, 10f
5:                jal          t4, 18f
6:                jal          a0, 8f
7:                jal          a0, 6b
8:                jal          ra, 13f
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          s8, 12f
12:               jal          t1, 2b
13:               jal          t1, 9b
14:               jal          a2, 3b
15:               jal          ra, 1b
16:               jal          ra, 15b
17:               jal          ra, 0b
18:               jal          ra, 11b
19:               srai         a4, s11, 17
sub_1_14:         jal          ra, 0f
0:                jal          tp, 4f
1:                jal          ra, 5f
2:                jal          a5, 8f
3:                jal          ra, 9f
4:                jal          s7, 3b
5:                jal          t1, 7f
6:                jal          s9, 2b
7:                jal          t1, 10f
8:                jal          ra, 1b
9:                jal          ra, 6b
10:               sub          a1, tp, s0
                  auipc        a4, 952951
                  sll          zero, s8, a6
                  xori         a5, a4, 181
                  add          s2, a2, s5
                  xori         ra, t4, -1352
                  and          tp, sp, s0
                  and          tp, s8, zero
                  srai         s4, s7, 7
                  sll          s8, s8, s8
                  ori          a1, t2, 1800
                  lui          tp, 692659
                  sltu         s10, ra, sp
                  or           t4, a3, s7
                  or           t5, s4, s6
                  addi         t2, s7, -864
                  bltu         sp, s1, 26f
                  slli         s6, t3, 5
                  nop
                  srl          t5, tp, a0
                  sra          t2, s6, s6
                  addi         tp, t4, 1424
                  bltu         zero, t4, 23f
                  bge          s6, sp, 35f
23:               sll          t3, t3, t3
                  bltu         s9, t5, 38f
                  bltu         s3, t3, 39f
26:               bgeu         s0, a0, 33f
                  nop
                  addi         s4, s3, 830
                  srl          gp, s9, tp
                  andi         t6, s4, -424
                  addi         t2, t1, 1232
                  and          s9, s2, s5
33:               bge          a2, s3, 37f
                  slti         a5, a3, -1114
35:               addi         t6, s1, 1439
                  or           a1, a0, a2
37:               xori         t0, tp, -692
38:               srai         sp, s10, 13
39:               lui          s1, 440112
                  addi         t3, t6, 1791
                  slti         s7, t4, -77
                  slti         t4, t5, 701
                  srli         t4, s6, 16
                  auipc        t6, 589011
                  sra          a6, a1, sp
                  srl          t1, s11, t4
                  srai         s7, t5, 7
                  beq          s8, a5, 56f
                  sub          s4, s0, s1
                  xor          s2, t0, s2
                  nop
                  xor          a4, s1, t4
                  sra          t2, s9, t3
                  andi         zero, s4, -678
                  blt          t4, a3, 68f
56:               slt          t4, t0, s4
                  srl          sp, s9, s6
                  xor          s6, t3, zero
                  beq          t4, t6, 79f
                  xor          a6, s1, s0
                  sltu         zero, zero, a5
                  auipc        a3, 738408
                  beq          t6, t4, 71f
                  sub          a3, s2, s10
                  addi         t6, a1, -1300
                  srli         ra, a1, 27
                  sub          gp, s0, s3
68:               auipc        zero, 408038
                  srl          a6, s0, gp
                  xori         a5, s9, 1113
71:               sltiu        a3, a1, 979
                  bgeu         a6, zero, 88f
                  srli         s8, s11, 16
                  sltiu        gp, sp, -1397
                  slli         t4, t4, 15
                  or           s2, a3, a6
                  srl          a5, t1, a5
                  blt          s7, s0, 88f
79:               and          s4, s9, tp
                  slt          t1, ra, a2
                  bltu         s3, gp, 94f
                  addi         s4, t4, -1223
                  and          t2, a6, s4
                  sll          s5, sp, s8
                  sra          t5, zero, a2
                  sll          sp, s4, s5
                  blt          ra, a5, 104f
88:               blt          s5, ra, 91f
                  slli         t2, a0, 7
                  srai         s5, a5, 7
91:               and          a4, t6, a3
                  srl          a6, s5, s4
                  bltu         t3, a4, 97f
94:               add          t2, s5, s11
                  srli         s10, s3, 25
                  srai         s0, s0, 27
97:               or           tp, t1, s6
                  or           t3, a1, s4
                  slt          t5, t1, t6
                  srl          ra, t6, a6
                  bltu         a4, s4, 112f
                  sltiu        t5, t0, -1306
                  bltu         s1, s4, 113f
104:              sltu         s4, s8, a6
                  sltiu        t6, s9, 1443
                  andi         a3, a2, -510
                  auipc        s1, 966532
                  and          a3, t0, t5
                  add          ra, s11, s7
                  sub          t4, t2, s10
                  add          s4, a0, sp
112:              srl          s1, ra, a0
113:              srai         s10, sp, 12
                  or           t6, s0, t5
                  slti         s2, t6, -1844
                  auipc        a6, 32852
                  bne          s11, t5, 119f
                  srli         a5, s5, 19
119:              bgeu         t3, s8, 132f
                  andi         a4, s5, -502
                  srli         sp, a2, 16
                  sltiu        s4, t1, -482
                  slli         s7, s3, 5
                  slti         s8, a1, 696
                  sra          s6, zero, t6
                  beq          s5, s1, 135f
                  nop
                  bltu         gp, s7, 141f
                  add          gp, sp, a3
                  andi         s7, s1, 795
                  xori         gp, t0, 1322
132:              sltu         a6, a5, t2
                  srai         t3, s4, 23
                  ori          s2, s8, -755
135:              addi         tp, t0, 1626
                  addi         s2, a6, 210
                  add          a3, s7, s4
                  slt          t3, sp, s1
                  andi         t3, a1, 1915
                  add          t3, t0, t5
141:              slti         t0, s11, -1696
                  lui          s9, 643133
                  sltiu        a5, s5, -1862
                  or           t1, a1, ra
                  sltiu        s2, a6, -1138
                  srli         a3, s11, 17
                  nop
                  sltu         t3, s2, tp
                  slt          tp, s5, ra
                  lui          s4, 76961
                  bne          a4, a6, 169f
                  and          a0, t0, zero
                  sra          t4, t5, s3
                  ori          t4, a7, -1670
                  add          t1, a6, t6
                  andi         a1, s0, 76
                  blt          tp, a6, 164f
                  bgeu         t5, a3, 163f
                  bltu         s0, s10, 176f
                  andi         s8, tp, 774
                  nop
                  add          s10, s11, tp
163:              xori         a4, s4, 931
164:              sltu         a3, t6, s2
                  bge          s11, a5, 173f
                  lui          t3, 807186
                  and          s10, s4, a1
                  beq          t0, s7, 182f
169:              sll          t3, a6, s1
                  nop
                  nop
                  nop
173:              addi         s5, s0, 1347
                  sll          t0, a3, t6
                  xori         a4, gp, 264
176:              xori         s9, sp, 1276
                  or           t5, sp, sp
                  bgeu         a7, t5, 181f
                  slli         ra, s8, 6
                  xori         tp, tp, 849
181:              srli         a0, a0, 9
182:              lui          t3, 581033
                  slti         s5, s4, -953
                  srli         a6, a7, 22
                  nop
                  sll          t6, s5, s2
                  srli         a0, a7, 11
                  xori         s10, t6, 1738
                  srli         s1, s0, 18
                  and          a0, t3, s2
                  addi         t3, a5, 1045
                  beq          a4, a7, 194f
                  sltu         t5, s9, s8
194:              sltiu        tp, a3, -490
                  and          a4, s2, ra
                  auipc        t4, 330225
                  xor          t2, s11, t6
                  blt          tp, t4, 211f
                  sltu         s2, s5, s10
                  nop
                  sra          t2, t3, tp
                  slli         s5, sp, 10
                  sltiu        s1, a7, -967
                  srai         t5, zero, 0
                  srl          s2, s8, t6
                  xori         t3, s7, 882
                  srai         s0, gp, 26
                  bgeu         a5, t6, 217f
                  add          s1, gp, t6
                  and          a5, s4, t5
211:              srai         a3, t1, 13
                  lui          s6, 268430
                  auipc        a1, 429344
                  add          s4, t3, a3
                  bgeu         t2, a2, 225f
                  lui          t6, 350006
217:              slli         ra, ra, 26
                  beq          a5, s1, 235f
                  beq          s7, s0, 232f
                  ori          t6, a1, -1811
                  bne          t6, a5, 225f
                  sra          t0, a0, a7
                  srli         s8, t5, 17
sub_1_13:         jal          ra, 17f
0:                jal          ra, 8f
1:                jal          t1, 5f
2:                jal          ra, 11f
3:                jal          t1, 2b
4:                jal          t1, 13f
5:                jal          s6, 18f
6:                jal          ra, 20f
7:                jal          ra, 21f
8:                jal          ra, 4b
9:                jal          t1, 19f
10:               jal          ra, 14f
11:               jal          t2, 15f
12:               jal          s10, 22f
13:               jal          ra, 9b
14:               jal          ra, 3b
15:               jal          ra, 6b
16:               jal          ra, 0b
17:               jal          t1, 10b
18:               jal          gp, 7b
19:               jal          ra, 12b
20:               jal          ra, 1b
21:               jal          s6, 16b
22:               sll          s0, ra, a4
                  lui          a0, 407252
225:              slt          t2, a3, zero
                  slli         a5, a1, 17
                  nop
                  bgeu         s5, s4, 236f
                  and          t6, s10, s10
                  srli         a2, tp, 5
                  slt          a2, t1, a1
232:              beq          s8, a2, 242f
                  add          t0, s9, a5
                  bge          s2, s3, 250f
235:              slli         t4, s11, 19
236:              slli         s4, s9, 12
                  sltu         s5, s4, a0
                  xor          gp, a5, s10
                  slli         a4, zero, 16
                  nop
                  srli         tp, s8, 29
242:              sltu         s9, s3, s10
                  slti         gp, a4, -693
                  srai         t6, a4, 20
                  add          t3, zero, t4
                  bne          a0, a2, 251f
                  slli         zero, s2, 28
                  addi         a3, s5, -678
                  addi         a1, a6, -2039
250:              sltu         sp, s9, s11
251:              srl          a5, t5, a4
                  andi         t4, ra, -1850
                  sra          s10, s10, s5
                  bgeu         a7, t0, 274f
                  bltu         t1, s2, 263f
                  srli         a3, t6, 31
                  addi         sp, a4, 12
                  blt          a3, a3, 271f
                  sub          a5, ra, t6
                  sll          a6, ra, ra
                  xori         t6, s10, -1577
                  slli         a1, s2, 30
263:              ori          tp, s10, -455
                  bge          a7, s7, 268f
                  srli         s9, s11, 29
                  bgeu         sp, ra, 273f
                  ori          a3, a1, 1608
268:              xori         t2, s1, -257
                  bgeu         s10, t3, 271f
                  bltu         s9, a3, 277f
271:              slt          s1, t0, s11
                  beq          a3, s9, 275f
273:              srli         s10, s11, 9
274:              blt          ra, a4, 288f
275:              sltiu        t4, s4, 10
                  srai         s4, s6, 8
277:              srai         s1, t0, 23
                  xor          a2, s1, s10
                  slt          a5, s5, a7
                  beq          t2, a1, 293f
                  sltiu        a4, a7, -1006
                  srli         t3, s10, 3
                  addi         tp, a2, -852
                  auipc        s8, 867791
                  blt          a4, s11, 288f
                  xori         t4, a7, -98
                  slli         ra, s0, 16
288:              srl          t2, s1, zero
                  slli         zero, t3, 3
                  bne          a7, s11, 304f
                  add          a2, s11, s5
                  bge          a2, t3, 303f
293:              srl          s9, s6, tp
                  xor          a5, s1, t3
                  ori          t0, a0, -404
                  bne          a2, gp, 309f
                  bge          s8, a5, 308f
                  bltu         t2, t6, 316f
                  ori          t5, sp, 1078
                  ori          a3, s3, 1622
                  auipc        s4, 68240
                  nop
303:              slli         s5, tp, 29
304:              ori          s2, s4, 1983
                  slt          sp, sp, ra
                  srai         s1, s4, 26
                  srl          t0, zero, t6
308:              ori          ra, s10, 629
309:              lui          a1, 37273
                  sltiu        tp, s0, -1880
                  bgeu         t3, t4, 328f
                  xori         a3, s9, -1912
                  srai         t3, s1, 7
                  slti         zero, a6, 1432
                  slt          a2, t0, s9
316:              srai         a0, a5, 14
                  sra          a5, tp, s1
                  sltiu        gp, s9, 1478
                  xor          t6, t0, a2
                  slli         t4, s5, 18
                  bge          s2, t2, 329f
                  or           t6, a6, a6
                  bgeu         a3, s4, 337f
                  ori          a6, ra, -758
                  sub          t5, a1, s2
                  sub          tp, s6, t1
                  andi         s2, a6, -1510
328:              ori          s4, s0, -1501
329:              xori         a5, s5, -2021
                  or           tp, s5, s1
                  lui          t6, 11790
                  bge          s11, s10, 345f
                  slt          s2, t1, a5
                  auipc        t5, 451035
                  or           s5, s8, a0
                  bne          s2, s2, 356f
337:              bltu         gp, s2, 351f
                  blt          s10, gp, 349f
                  xor          s2, t2, t1
                  xor          a5, s5, s3
                  sll          s9, s10, s9
                  sll          zero, s0, sp
                  blt          s4, a3, 354f
                  srai         s0, s9, 26
345:              sll          a2, s2, t0
                  blt          a1, s9, 363f
                  sltiu        s7, t0, 448
                  slti         s8, a0, -1897
349:              addi         tp, a3, -173
                  sll          sp, zero, s9
351:              and          s1, a4, s5
                  or           t0, gp, a7
                  beq          t3, a7, 363f
354:              sra          t0, t2, a2
                  sltiu        tp, a5, 620
356:              auipc        a0, 967907
                  srai         s7, gp, 13
                  lui          a3, 391837
                  bne          a5, a5, 366f
                  add          zero, t5, s0
                  andi         s2, s11, 1930
                  lui          t1, 316343
363:              add          s4, s9, t3
                  auipc        sp, 324067
                  bne          a0, ra, 368f
366:              andi         t3, t5, -819
                  andi         t4, t4, 1425
368:              slt          sp, s2, s3
                  ori          a3, s2, -1989
                  nop
                  srli         t6, s1, 18
                  bgeu         t0, a5, 385f
                  bgeu         t4, a2, 375f
                  bltu         s1, a5, 379f
375:              slti         t3, ra, -1741
                  sra          s1, s0, s8
                  nop
                  nop
379:              bne          s2, t4, 387f
                  xor          t2, s7, s1
                  slt          tp, s7, a2
                  srl          gp, a2, a6
                  sltu         a2, t0, a0
                  srai         ra, a3, 29
385:              sub          t2, a7, ra
                  add          t2, s6, gp
387:              srli         s10, s11, 2
                  xori         a1, t6, 1635
                  auipc        t6, 1022991
                  srl          a5, ra, t4
                  addi         s10, t4, 279
                  beq          a3, a2, 405f
                  bltu         gp, a6, 401f
                  sltiu        s7, gp, 243
                  addi         a2, t0, -696
                  blt          t1, s0, 404f
                  add          zero, t3, t5
                  srli         a2, t1, 2
                  or           s7, zero, t0
                  bltu         s6, s11, 404f
401:              sll          t2, s4, s4
                  slli         t1, tp, 26
                  slti         s0, a1, -184
404:              srai         a1, a4, 13
405:              beq          s9, s7, 407f
                  or           s8, s6, s1
407:              xor          a1, s7, a2
                  ori          t2, s0, 627
                  srli         t4, s10, 9
                  sll          a0, s5, a2
                  xor          a3, t0, a6
                  bge          s0, s5, 415f
                  ori          s2, ra, -854
                  xori         s10, a7, -977
415:              lui          s4, 695640
                  andi         s4, s0, 969
                  sra          t3, s10, a2
                  srli         t5, s5, 23
                  sra          ra, s1, a2
                  srl          s4, a5, a6
                  slti         a1, t4, -394
                  add          s6, s10, a4
                  sll          t0, t3, s9
                  sltu         a6, t4, s3
                  xor          s9, a3, s7
                  auipc        t3, 873475
                  bne          s11, s1, 431f
                  nop
                  slti         t4, zero, -537
                  bltu         s3, s2, 447f
431:              sltu         s6, t3, gp
                  sra          t5, s4, t4
                  srli         t3, s3, 18
                  bgeu         tp, s3, 450f
                  xor          t6, s1, s11
                  add          t6, s2, s10
                  srai         a2, a6, 19
                  srai         sp, t4, 19
                  add          a6, gp, sp
                  xori         a1, t1, 119
                  lui          t0, 725451
                  sll          s5, zero, s7
                  nop
                  srl          t4, sp, t1
                  blt          t2, a4, 463f
                  bne          s9, a7, 459f
447:              sltu         ra, t4, s9
                  slt          s6, s6, s11
                  sub          t0, a2, zero
450:              sltu         tp, a5, s0
                  add          s7, s10, a1
                  bltu         gp, t1, 461f
                  bltu         s6, t0, 467f
                  lui          ra, 203075
                  srai         a0, a3, 10
                  and          s8, a3, a4
                  srai         s10, sp, 24
                  srl          ra, s0, s10
459:              xori         t5, t4, 1549
                  addi         t1, s3, 1981
461:              bgeu         t3, s5, 471f
                  srl          s8, tp, s10
463:              srl          s10, a0, t3
                  andi         t0, a3, -595
                  beq          ra, a5, 478f
                  beq          s11, a0, 480f
467:              slti         a0, s11, 1843
                  sub          gp, s2, tp
                  add          tp, s4, sp
                  sltu         a3, s9, s8
471:              auipc        ra, 962374
                  bgeu         a3, tp, 479f
                  bltu         s10, s9, 481f
                  ori          a4, a6, 1048
                  slt          t6, t6, a0
                  slt          t3, tp, t4
                  srai         s9, t5, 7
478:              lui          s1, 84338
479:              andi         s1, t3, 472
480:              blt          s6, s0, 491f
481:              srl          a1, t2, s1
                  sltu         t4, t3, sp
                  slti         ra, a3, 612
                  slt          a5, s6, tp
                  ori          t5, s0, 1777
                  auipc        a2, 753563
                  and          s9, zero, s9
                  nop
                  sltiu        s5, a0, 432
                  srli         s6, s3, 1
491:              ori          zero, s9, -145
                  bge          s10, t6, 502f
                  srl          t1, s2, a4
                  auipc        zero, 310692
                  bne          sp, t2, 506f
                  slti         t6, a2, -53
                  xor          s0, a6, s4
                  sltiu        t3, ra, -806
                  sll          a4, s6, s8
                  sra          s2, zero, s9
                  addi         t1, s9, -1668
502:              sll          s7, a7, t1
                  add          ra, a7, t1
                  sra          s7, a1, zero
                  addi         ra, sp, -1621
506:              bne          a7, a0, 514f
                  andi         s9, s11, 1989
                  auipc        t1, 328894
                  sra          s6, t3, s0
                  slli         s2, s0, 14
                  xor          t0, s3, gp
                  blt          s5, ra, 516f
                  sra          t6, a3, a7
514:              sltiu        s6, s11, 1751
                  srli         t5, s0, 28
516:              bgeu         a3, s3, 523f
                  sltu         s2, gp, s3
                  ori          s8, s8, 1827
                  sltu         t0, zero, t6
                  blt          gp, zero, 522f
                  or           a2, a1, t2
522:              or           t3, s7, gp
523:              xori         sp, a6, -1740
                  srli         t2, s0, 12
                  slli         a4, s3, 9
                  srai         tp, a0, 20
                  xori         s5, zero, -239
                  or           s8, s4, s4
                  xor          s4, t6, ra
                  srl          s2, s2, t3
                  bge          s3, s4, 534f
                  blt          t1, a4, 545f
                  sltu         a2, t5, a5
534:              add          s2, tp, gp
                  srl          t2, gp, t6
                  bgeu         s1, s1, 556f
                  bgeu         a3, t5, 546f
                  beq          sp, zero, 551f
                  sll          s4, a7, a7
                  xor          a5, t3, s6
                  srai         a3, zero, 27
                  bltu         s10, t3, 559f
                  and          a4, a0, s5
                  bgeu         a5, t2, 552f
545:              ori          t1, a2, 1293
546:              or           gp, s1, t3
                  srl          s10, sp, s4
                  sll          s9, t1, sp
                  bgeu         s9, s2, 565f
                  sub          s5, a0, a0
551:              beq          t5, t3, 556f
552:              add          s0, s8, ra
                  nop
                  xor          ra, a2, s5
                  sra          s8, s9, a4
556:              srai         tp, a6, 18
                  bltu         s2, t4, 567f
                  bltu         s8, t3, 561f
559:              xor          t4, a6, s8
                  lui          sp, 955472
561:              xori         s5, s11, -415
                  srli         tp, a6, 31
                  srl          gp, t5, s8
                  sra          t4, t2, s9
565:              ori          t6, t4, -1060
                  addi         a5, a1, -1764
567:              xor          sp, t5, a1
                  srai         t6, a2, 25
                  add          s7, a4, ra
                  beq          t1, t5, 587f
                  srli         t3, s6, 19
                  sltu         t3, t6, s1
                  auipc        s8, 131774
                  bne          a2, s6, 588f
                  nop
                  beq          t1, s0, 594f
                  auipc        s1, 1009352
                  slli         s9, a7, 30
                  slti         a1, a7, 1223
                  sltiu        t6, t0, -1209
                  srli         s6, s10, 20
                  srl          a1, s6, s8
                  srai         s7, a7, 13
                  xor          s10, s8, s2
                  slt          s2, s6, sp
                  beq          a1, t5, 599f
587:              bge          sp, sp, 600f
588:              add          s6, ra, tp
                  sra          a1, a6, s4
                  srai         tp, s7, 25
                  add          t4, s9, s0
                  addi         s2, a3, -136
                  nop
594:              beq          s4, a4, 596f
                  ori          a0, t3, 164
596:              auipc        zero, 667309
                  srai         a6, s3, 21
                  srli         ra, a7, 24
599:              xor          a2, t4, t2
sub_1_24:         jal          ra, 10f
0:                jal          ra, 14f
1:                jal          ra, 4f
2:                jal          a5, 13f
3:                jal          tp, 8f
4:                jal          t1, 6f
5:                jal          tp, 7f
6:                jal          ra, 9f
7:                jal          s9, 3b
8:                jal          t6, 12f
9:                jal          s5, 0b
10:               jal          ra, 5b
11:               jal          ra, 2b
12:               jal          ra, 11b
13:               jal          s8, 1b
14:               sltu         a4, a0, a7
600:              nop
                  sltu         a1, t1, s1
                  sltiu        zero, t3, 339
                  addi         t5, ra, -539
                  and          a2, t6, a6
                  bgeu         t2, s2, 612f
                  or           s1, s7, a1
                  sltu         gp, a4, sp
                  xor          t4, t6, a7
                  sub          s10, a3, a6
                  slli         s4, a6, 13
                  blt          s11, s5, 625f
612:              xor          a2, s9, gp
                  auipc        s9, 199264
                  xori         s4, a7, 806
                  lui          sp, 761616
                  addi         s6, a1, -213
                  sltiu        a2, a2, -177
                  lui          t0, 475731
                  bgeu         t0, a4, 632f
                  bltu         s6, s3, 634f
                  srai         s5, s5, 1
                  auipc        a5, 821894
                  xori         t4, a6, 744
                  slt          zero, t5, a3
625:              or           a3, a7, a3
                  bge          sp, s9, 630f
                  sll          s0, sp, s2
                  nop
                  blt          s0, t1, 640f
630:              add          a0, a5, a1
                  xor          a5, t1, t5
632:              srai         a2, s2, 18
                  sltu         s8, t5, s9
634:              slti         s1, t5, 778
                  xor          t0, t1, s7
                  xor          a0, a3, s9
                  and          a6, a4, a6
                  bge          a1, a6, 645f
                  sltiu        s1, t2, -1865
640:              sra          s6, t4, a4
                  sll          t1, t3, s3
                  and          t5, s1, t1
                  lui          t2, 233733
                  lui          a1, 767469
645:              auipc        s10, 943360
                  bne          tp, s2, 657f
                  blt          a3, tp, 652f
                  bne          s0, t6, 651f
                  sub          t1, s9, t2
                  slt          t1, t3, s9
651:              andi         a1, s9, 1645
652:              slt          a3, s7, t2
                  auipc        s10, 204239
                  sub          tp, gp, s1
                  ori          s2, a4, 14
                  sra          gp, s7, a3
657:              lui          gp, 587534
                  sra          sp, s1, t1
                  bge          a3, s8, 672f
                  nop
                  bne          a6, s7, 677f
                  sll          s1, sp, sp
                  xor          a1, a4, a4
                  xor          tp, s8, s8
                  slti         t4, a7, -2022
                  slli         s1, s4, 25
                  bgeu         t2, s8, 669f
                  bgeu         t4, s11, 681f
669:              bge          ra, a5, 682f
                  sltiu        s1, t5, -833
                  auipc        s7, 628121
672:              beq          s11, t4, 685f
                  auipc        a2, 962273
                  sltiu        a6, t0, -652
                  bltu         s7, t3, 683f
                  srli         t6, a6, 25
677:              sltu         a0, ra, t6
                  srli         s2, s11, 5
                  add          s9, s4, gp
                  lui          a0, 411614
681:              ori          s8, tp, 747
682:              xor          sp, ra, gp
683:              sll          t2, s11, a3
                  srai         t2, zero, 29
685:              and          a1, s0, gp
                  sra          ra, a7, t6
                  beq          a0, s2, 701f
                  add          sp, s0, t6
                  addi         s10, s7, -533
                  sra          s4, a3, zero
                  bne          s5, t5, 708f
                  auipc        s5, 585584
                  slti         a4, t0, -904
                  nop
                  srl          t1, sp, s6
                  sll          a0, a3, t4
                  and          sp, t2, t3
                  srl          s10, t6, zero
                  slt          t1, a2, t2
                  bne          a6, zero, 710f
701:              blt          gp, s4, 709f
                  slti         s8, s4, 1269
                  sltiu        ra, zero, -1545
                  slli         s10, zero, 6
                  bge          ra, s3, 719f
                  lui          t6, 718934
                  blt          s0, a1, 714f
708:              srl          sp, t0, a2
709:              xori         sp, a0, -368
710:              srl          s2, tp, s9
                  auipc        s9, 38626
                  sub          t0, ra, s1
                  sra          t2, gp, ra
714:              bne          a0, a4, 734f
                  slli         t4, t0, 21
                  lui          t5, 964391
                  xori         s8, a0, 1779
                  sltu         t4, tp, a0
719:              sub          t6, s9, zero
                  andi         a0, a3, 854
                  addi         s0, s8, -78
                  bge          t2, a7, 730f
                  slt          t3, sp, a6
                  or           t5, s8, s10
                  add          s6, t2, s5
                  and          s4, s6, s3
                  addi         a6, s4, -2003
                  or           sp, s9, a3
                  srl          a6, t1, a1
730:              lui          s7, 8988
                  or           s10, zero, a4
                  bltu         s11, a3, 741f
                  sra          t2, a0, a3
734:              blt          s8, s11, 748f
                  sub          a4, s9, a7
                  xori         ra, t4, -431
                  beq          a4, s10, 739f
                  addi         s6, t5, 589
739:              slt          s8, t3, s9
                  sub          a1, sp, a1
741:              sltu         ra, t6, t0
                  srl          s4, t6, ra
                  andi         zero, a6, -437
                  beq          a0, ra, 748f
                  lui          s5, 311411
                  slt          a4, s7, t4
                  sub          gp, s3, s11
748:              ori          t4, a6, -1733
                  sltiu        s8, a6, -779
                  lui          a6, 977783
                  xor          a2, gp, a3
                  srli         a6, t6, 13
                  sra          s0, s0, tp
                  bltu         s0, s6, 772f
                  srl          s9, t1, s1
                  ori          t4, a7, -1584
                  beq          s5, s2, 761f
                  srli         ra, t4, 10
                  xori         s4, s5, -1118
                  sub          gp, t2, a3
761:              sltiu        s5, t3, -1339
                  bltu         a5, s6, 779f
                  bgeu         a6, s10, 776f
                  addi         s9, s7, -1775
                  andi         a0, s9, 363
                  slt          t1, a4, a6
                  sll          a1, t4, t0
                  ori          a2, s2, 1273
                  sll          t3, s4, s5
                  sra          a2, a4, ra
                  bgeu         t0, t2, 774f
sub_1_18:         jal          ra, 0f
0:                jal          ra, 20f
1:                jal          t1, 4f
2:                jal          a0, 17f
3:                jal          s1, 26f
4:                jal          ra, 10f
5:                jal          t1, 12f
6:                jal          ra, 27f
7:                jal          ra, 22f
8:                jal          s4, 13f
9:                jal          a2, 24f
10:               jal          gp, 9b
11:               jal          t3, 6b
12:               jal          s5, 25f
13:               jal          ra, 7b
14:               jal          s10, 2b
15:               jal          ra, 19f
16:               jal          ra, 28f
17:               jal          ra, 15b
18:               jal          t3, 8b
19:               jal          t0, 23f
20:               jal          ra, 3b
21:               jal          tp, 1b
22:               jal          ra, 5b
23:               jal          t1, 18b
24:               jal          t1, 16b
25:               jal          t1, 21b
26:               jal          ra, 11b
27:               jal          t1, 14b
28:               srai         sp, t1, 1
772:              xor          s1, a3, a1
                  xor          a6, a3, s9
774:              bge          s5, s9, 784f
                  auipc        t3, 513047
776:              slli         t1, s0, 23
                  addi         a2, s4, 483
                  sub          t3, s9, zero
779:              slli         s4, ra, 17
                  beq          s7, s11, 790f
                  xor          a6, t6, a1
                  slti         s7, zero, -217
                  bge          t4, t2, 785f
784:              auipc        t2, 723751
785:              bltu         s4, a2, 802f
                  bltu         a0, a5, 790f
                  ori          s6, s4, 1606
                  bne          a0, s6, 796f
                  auipc        t0, 544580
790:              addi         s5, a6, -1267
                  bne          s9, tp, 800f
                  sll          a6, t2, s3
                  bne          a3, a3, 797f
                  slti         t4, a3, 1913
                  bne          a4, s2, 802f
796:              addi         s4, s0, -1950
797:              lui          s2, 47887
                  and          s1, a0, zero
                  bgeu         a5, s1, 813f
800:              sltiu        ra, s5, -276
                  lui          t5, 393398
802:              sll          t3, a6, a4
                  slti         a3, a3, -1245
                  slt          a0, t0, gp
                  auipc        t6, 71893
                  and          t1, a5, a0
                  srl          t2, t5, s1
                  bne          s2, a6, 816f
                  xor          a2, s0, t6
                  blt          t5, zero, 821f
                  bge          t2, s8, 824f
                  slti         t1, s5, 138
813:              xori         s0, a6, 830
                  sltiu        s1, gp, 77
                  xor          s8, t2, ra
816:              nop
                  auipc        tp, 598448
                  auipc        a1, 59698
                  bgeu         sp, s0, 824f
                  sltiu        a5, s9, -1441
821:              or           sp, sp, s7
                  xor          a5, a3, a0
                  bltu         s3, a7, 836f
824:              slt          t0, s10, a1
                  sub          a5, s3, s1
                  sra          t4, a3, s5
                  srli         t1, s4, 18
                  add          s1, s10, a4
                  sltu         t6, s3, s6
                  sub          a1, gp, sp
                  andi         s4, s4, -993
                  and          ra, s9, s10
                  slt          s5, t5, s4
                  srai         ra, a7, 15
                  lui          t2, 106408
836:              sub          a1, s9, s7
                  or           a1, s7, a4
                  slti         s7, t4, -355
                  nop
                  sltiu        s0, t6, 494
                  bgeu         zero, t2, 861f
                  xor          s10, t4, t4
                  lui          s10, 737848
                  slti         a4, s8, 665
                  slti         t1, s2, 1357
                  or           s6, s3, s9
                  xori         t5, a4, -714
                  nop
                  srli         a4, s5, 0
                  slt          sp, t1, tp
                  bge          s8, s10, 859f
                  addi         s2, s7, -213
                  slt          zero, sp, t0
                  srl          t5, t0, tp
                  or           s0, s11, a4
                  auipc        a4, 184781
                  slli         a5, a4, 18
                  ori          a5, s4, -1324
859:              srli         a6, a7, 23
                  xor          t2, t0, sp
861:              bgeu         s8, s7, 875f
                  and          s1, s10, ra
                  sub          a2, t0, t4
                  sra          ra, ra, zero
                  sltiu        s5, a5, 1348
                  auipc        a4, 384934
                  sub          s2, a0, s8
                  sltu         ra, s3, t2
                  andi         s7, s5, 1101
                  andi         t3, a5, -822
                  sub          ra, s4, t3
                  auipc        t6, 526626
                  bge          a2, s7, 886f
                  bltu         t3, t1, 877f
875:              bgeu         s0, t3, 877f
                  nop
877:              or           a5, s5, t1
                  blt          s5, t4, 892f
                  sll          t5, s3, t0
                  srai         t5, s1, 11
                  bne          sp, s8, 898f
                  sll          t0, t0, s2
                  auipc        a1, 907931
                  sll          s1, a5, s5
                  andi         a0, s5, 239
886:              bltu         s5, s0, 904f
                  lui          t3, 479875
                  lui          t3, 620356
                  lui          s7, 999687
                  bne          s11, s5, 903f
                  auipc        s5, 522587
892:              ori          s9, gp, 1431
                  lui          a6, 556484
                  srai         s10, gp, 31
                  bge          zero, a6, 908f
                  slli         a3, a2, 26
                  bne          a0, s8, 900f
898:              srli         a1, a3, 30
                  sltu         a5, s10, t1
900:              bne          a1, s9, 911f
                  sll          s0, a3, a5
                  ori          s9, t0, 84
903:              beq          a2, t5, 913f
904:              sub          t6, s2, s7
                  beq          t3, s2, 921f
                  slt          sp, s3, a0
                  srai         s4, t0, 31
908:              beq          s2, a4, 915f
                  or           t0, s7, tp
                  slli         a6, a0, 21
911:              nop
                  auipc        tp, 970039
913:              lui          s7, 608897
                  bge          s0, t4, 932f
915:              slli         a2, a4, 25
                  xori         t4, s5, 67
                  bge          a4, a3, 930f
                  sltiu        t4, s5, 662
                  blt          ra, t0, 929f
                  srai         sp, t3, 23
921:              add          gp, a3, t5
                  slt          s7, a4, t1
                  slt          t0, ra, a5
                  sll          s10, s11, t4
                  beq          a2, t1, 929f
                  sub          s10, s2, t6
                  xor          a4, s9, tp
                  bge          s2, a0, 938f
929:              bge          ra, t1, 949f
930:              and          t0, s7, s4
                  beq          t6, s4, 933f
932:              srli         a3, a5, 17
933:              slli         zero, s3, 30
                  or           s2, s11, tp
                  sltiu        t1, gp, -1155
                  sub          s8, t1, s4
                  bgeu         s4, t2, 945f
938:              srli         a2, ra, 27
                  and          t0, a5, s3
                  addi         s1, s9, 308
                  bge          tp, s1, 954f
                  bltu         gp, s7, 953f
                  nop
                  bne          s11, t5, 961f
945:              or           t6, s6, s2
                  sub          s5, s0, ra
                  sltiu        s7, s7, -1527
                  bne          s11, sp, 961f
949:              sltu         s8, s4, sp
                  sltu         t6, t4, t4
                  sub          s4, a5, zero
                  bltu         a4, ra, 955f
953:              bgeu         t1, a6, 967f
954:              srli         s5, t5, 13
955:              sltiu        ra, a2, 1857
                  bne          t6, sp, 970f
                  xori         s8, s1, -1650
                  sll          s9, a6, s3
                  bgeu         a0, t6, 963f
                  auipc        t3, 912343
961:              sub          s8, s0, a3
                  nop
963:              ori          t0, gp, 1090
                  slli         t2, a0, 2
                  sra          t2, a2, a5
                  bne          s3, s3, 973f
967:              slli         s4, t4, 20
                  add          ra, a0, a1
                  bgeu         a1, s5, 976f
970:              addi         t3, t1, -368
                  sltu         t0, t0, t1
                  beq          s10, gp, 974f
973:              bltu         s6, a1, 976f
974:              srl          a2, s4, gp
                  xor          a3, a3, t1
976:              or           a3, s5, s7
                  xor          t2, s11, s9
                  and          a1, s6, sp
                  addi         s8, a5, -186
                  srai         t1, s9, 25
                  ori          zero, tp, -179
                  srl          s5, a6, s11
                  auipc        a4, 617025
                  sltu         gp, zero, t4
                  xor          a0, t2, s6
                  sltiu        sp, t0, 1800
                  or           t3, s5, s7
                  ori          gp, a6, 1096
                  slli         ra, s8, 16
                  bge          t6, a6, 1003f
                  sra          t6, a4, gp
                  sltu         sp, s3, a3
                  bne          ra, a3, 998f
                  addi         a6, a1, 672
                  bltu         a5, a1, 1008f
                  or           tp, t3, s1
                  beq          s8, s10, 1013f
998:              add          sp, s1, a5
                  nop
                  slti         t0, s4, 704
                  bge          t0, s1, 1010f
                  nop
1003:             add          s0, a4, s3
                  sll          t5, a2, a4
                  ori          s5, s3, -1651
                  srai         a6, s9, 0
                  slli         a2, ra, 21
1008:             bge          a5, t5, 1025f
                  blt          zero, s10, 1017f
1010:             sra          zero, a3, t2
                  lui          s10, 252364
                  addi         s5, t4, -1402
1013:             srai         s6, s3, 16
                  bgeu         a0, a0, 1022f
                  slli         zero, s1, 0
sub_1_10:         jal          ra, 7f
0:                jal          ra, 21f
1:                jal          t1, 20f
2:                jal          ra, 14f
3:                jal          s5, 6f
4:                jal          ra, 16f
5:                jal          ra, 8f
6:                jal          ra, 10f
7:                jal          ra, 3b
8:                jal          ra, 11f
9:                jal          ra, 18f
10:               jal          ra, 19f
11:               jal          ra, 9b
12:               jal          ra, 15f
13:               jal          s9, 2b
14:               jal          t1, 4b
15:               jal          ra, 13b
16:               jal          sp, 17f
17:               jal          ra, 5b
18:               jal          t1, 0b
19:               jal          t0, 12b
20:               jal          ra, 22f
21:               jal          t1, 1b
22:               slt          t6, a5, s0
                  srai         ra, zero, 6
1017:             and          t4, t4, s8
                  add          t0, zero, t6
                  srl          t1, tp, s8
                  or           t5, s9, s5
                  ori          a6, t5, 1087
1022:             addi         s1, s6, -1535
                  xor          s0, t0, t3
                  bgeu         a0, a3, 1038f
1025:             sra          ra, a4, a6
                  bge          s10, s0, 1037f
                  bne          s3, a6, 1035f
                  beq          t3, s5, 1046f
                  beq          tp, s2, 1042f
                  sub          s4, t2, t1
                  sltiu        a2, a1, 1539
                  slli         s7, s11, 24
                  sltu         t0, ra, s9
                  bltu         a1, s7, 1044f
1035:             slt          s1, t0, gp
                  srai         t6, s2, 29
1037:             sll          s5, s6, s2
1038:             bgeu         s6, tp, 1042f
                  sra          s7, t1, a1
                  bltu         t3, s0, 1053f
                  auipc        s4, 470137
1042:             sub          sp, tp, a2
                  nop
1044:             slti         a1, a4, -256
                  slt          a1, a7, a5
1046:             xori         ra, t4, 1630
                  srl          a4, a4, s6
                  auipc        t0, 73307
                  bgeu         s9, t6, 1051f
                  bltu         t3, s5, 1055f
1051:             srli         t4, t6, 19
                  slti         s1, a6, -2039
1053:             slli         s2, t1, 29
                  andi         s9, a5, -1044
1055:             bge          s5, t1, 1058f
                  bge          a2, s5, 1060f
                  ori          t3, tp, 263
1058:             auipc        a5, 350987
                  blt          s6, zero, 1070f
1060:             auipc        a2, 253881
                  beq          s7, a1, 1069f
                  sltu         s7, t6, t1
                  andi         a6, t6, 459
                  or           a3, ra, s4
                  slt          a3, ra, t0
                  bgeu         t6, tp, 1080f
                  slt          s6, a4, sp
                  auipc        s6, 98547
1069:             xor          tp, a5, t2
1070:             bne          t4, ra, 1083f
                  sra          t5, a1, t1
                  bne          sp, t3, 1075f
                  lui          s6, 708338
                  and          t0, t5, s5
1075:             xori         a3, s2, -1194
                  sra          s10, t4, a4
                  bge          tp, t1, 1087f
                  slli         t3, s8, 30
                  lui          s4, 671166
1080:             blt          t3, a0, 1089f
                  sltu         a0, zero, a4
                  sub          s7, s11, s4
1083:             xor          t3, t6, ra
                  bgeu         a2, gp, 1101f
                  and          a5, s1, t3
                  addi         a0, t5, -2013
1087:             xor          t3, a0, s0
                  lui          t4, 990097
1089:             addi         s6, zero, -1026
                  nop
                  bgeu         s0, s8, 1104f
                  andi         t6, a7, -502
                  srl          s7, t0, s1
                  nop
                  bge          s3, a0, 1097f
                  add          s4, t4, a0
1097:             add          s7, t0, s9
                  slli         ra, a6, 11
                  lui          zero, 421123
                  bne          a4, s9, 1113f
1101:             sra          s4, ra, s3
                  andi         s7, s1, -1434
                  srai         t3, s11, 28
1104:             srai         a5, s8, 19
                  or           t4, s5, a1
                  ori          t1, t0, -1129
                  slt          s7, s11, a0
                  srl          tp, s10, zero
                  sra          a2, s5, t6
                  slt          t0, t1, a6
                  bltu         zero, s0, 1131f
                  auipc        s10, 1006904
1113:             ori          s7, ra, 826
                  xori         a2, s8, 1929
                  sub          t6, s4, s3
                  sll          t6, a7, t0
                  blt          ra, ra, 1131f
                  slti         s6, s0, -809
                  ori          s4, t3, 828
                  and          a2, s5, s9
                  andi         gp, a5, -289
                  beq          t2, s2, 1130f
                  sltiu        a3, s3, -1941
                  beq          a1, s0, 1140f
                  xori         s2, s3, -761
                  addi         a4, a0, 947
                  bne          s11, t1, 1138f
                  xori         t6, s1, -342
                  ori          a2, s1, 797
1130:             bge          gp, t3, 1137f
1131:             andi         a5, a2, 1985
                  andi         s4, s3, -526
                  sltu         t2, t4, a0
                  srl          t1, s8, t0
                  xori         sp, s2, -1980
                  sub          a2, gp, s6
1137:             add          a0, t2, s11
1138:             xor          ra, a4, t1
                  andi         t1, t6, -1630
1140:             slti         t4, t0, -1425
                  sll          tp, t1, t6
                  sll          a6, s1, a6
                  xor          tp, t4, a6
                  xori         a0, ra, -1095
                  and          s9, s0, s1
                  srli         gp, t5, 9
                  bgeu         a5, s3, 1154f
                  bltu         t1, a6, 1162f
                  lui          sp, 83593
                  beq          a7, s9, 1167f
                  bge          t6, t2, 1155f
                  auipc        t5, 3789
                  bgeu         a7, s10, 1158f
1154:             addi         s1, s11, 1177
1155:             bne          s0, s8, 1166f
                  slti         s5, s10, -642
                  bne          s4, t2, 1165f
1158:             auipc        a5, 283928
                  sltiu        t6, s6, -1187
                  bltu         a5, s7, 1178f
                  addi         t6, a0, 646
1162:             beq          t0, t5, 1165f
                  andi         s5, t3, -1870
                  beq          s7, s8, 1178f
1165:             sltu         s1, a1, t4
1166:             bge          a7, t3, 1183f
1167:             addi         s0, a3, 1382
                  srl          a1, gp, a4
                  xor          s6, s2, tp
                  bltu         s6, t4, 1172f
                  add          s5, s4, s0
1172:             slli         s1, s6, 22
                  xor          t5, a5, a2
                  srai         s8, a3, 25
                  sra          gp, t5, s4
                  bge          zero, zero, 1180f
                  sra          gp, zero, a2
1178:             auipc        a5, 588797
                  bge          s5, t1, 1186f
1180:             slti         s5, s9, 2017
                  ori          a0, s1, -274
                  lui          t0, 286205
1183:             nop
                  srai         s0, t6, 26
                  bge          ra, t4, 1193f
1186:             lui          a0, 373628
                  add          sp, a2, a2
                  bltu         s10, t6, 1198f
                  sra          s9, a1, tp
                  andi         a6, s8, 333
                  slti         s9, t2, 1397
                  sltu         a6, a2, s2
1193:             xor          t4, t1, gp
                  bne          t3, t2, 1201f
                  addi         t5, a4, 1516
                  srl          a6, t0, a4
                  sll          s1, s2, s9
1198:             blt          a2, ra, 1215f
                  beq          s6, t2, 1215f
                  bltu         s4, a3, 1209f
1201:             srli         t6, t4, 6
                  slt          sp, a0, t2
                  srai         t4, s2, 2
                  xor          s5, s0, s2
                  or           s8, s6, a7
                  bne          s1, a1, 1216f
                  and          t5, s9, a4
                  sub          t4, s9, s5
1209:             xori         gp, a3, 1450
                  sll          a2, s7, t5
                  sltu         ra, t4, s4
                  andi         sp, t1, -1216
                  bltu         t1, s8, 1227f
                  xor          t6, sp, a6
1215:             ori          s10, s3, -501
1216:             add          t2, s6, a1
                  srai         s0, zero, 6
                  slt          t1, t5, a4
                  bne          sp, s7, 1239f
                  sltiu        sp, s8, 1852
                  sltiu        gp, a2, -2044
                  addi         s8, s3, -979
                  auipc        s2, 108586
                  sll          s9, t6, zero
                  bge          a2, t1, 1238f
                  slt          a1, s7, sp
1227:             bne          s8, t1, 1238f
                  nop
                  sra          a6, a7, a3
                  xor          a4, t4, a0
                  lui          s2, 672987
                  andi         t3, a2, -1872
                  sub          a0, s1, t5
                  bge          a5, a0, 1247f
                  blt          s1, s11, 1248f
                  slti         zero, ra, 203
                  lui          t1, 696737
1238:             and          a4, t2, s6
sub_1_3:          jal          ra, 20f
0:                jal          ra, 5f
1:                jal          ra, 19f
2:                jal          t0, 9f
3:                jal          a1, 0b
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          ra, 15f
7:                jal          s0, 22f
8:                jal          ra, 10f
9:                jal          ra, 12f
10:               jal          t1, 14f
11:               jal          t0, 17f
12:               jal          t6, 8b
13:               jal          t1, 23f
14:               jal          a3, 7b
15:               jal          ra, 18f
16:               jal          ra, 13b
17:               jal          ra, 16b
18:               jal          s10, 1b
19:               jal          ra, 2b
20:               jal          ra, 21f
21:               jal          ra, 6b
22:               jal          s6, 4b
23:               jal          ra, 24f
24:               jal          ra, 25f
25:               srl          s8, s1, s10
1239:             bge          s8, s4, 1241f
                  sra          s8, a5, a0
1241:             nop
                  nop
                  sub          s4, s8, sp
                  blt          zero, a4, 1257f
                  sra          a0, s0, t4
                  auipc        s4, 684995
1247:             or           zero, s9, tp
1248:             nop
                  slli         s5, a1, 20
                  srl          t5, gp, s5
                  srli         a1, a2, 6
                  srl          s7, a6, a7
                  nop
                  lui          t0, 848538
                  slti         s9, s11, -777
                  lui          a0, 82857
1257:             srl          t6, s5, t3
                  bltu         s4, t4, 1272f
                  ori          s1, a4, -899
                  srl          s7, s9, a2
                  addi         s5, s3, -1362
                  auipc        tp, 834377
                  xori         a3, a6, 1707
                  auipc        zero, 83925
                  srli         t4, tp, 13
                  and          a4, s0, t0
                  nop
                  sra          a4, t2, a4
                  srli         s2, t5, 20
                  sll          a1, t5, tp
                  bge          s5, t5, 1279f
1272:             beq          t1, t2, 1285f
                  or           t2, a7, s4
                  srai         t2, a2, 21
                  sltu         t6, s5, s8
                  srai         t3, s9, 31
                  and          a6, s8, a7
                  bltu         t0, t4, 1281f
1279:             beq          s11, a5, 1282f
                  andi         zero, s3, 608
1281:             bgeu         t6, ra, 1298f
1282:             bne          s0, tp, 1286f
                  xori         a6, s10, 913
                  andi         t1, a4, -1577
1285:             slli         s1, s8, 4
1286:             blt          t2, t4, 1289f
                  bne          s4, a6, 1300f
                  add          t3, s10, s5
1289:             srai         a5, t3, 10
                  slli         a2, s3, 17
                  add          t3, gp, s8
                  srl          gp, t2, s5
                  xori         t1, s0, -387
                  ori          t3, gp, 1257
                  sub          s2, s11, s7
                  bltu         gp, t4, 1310f
                  or           s2, a1, a0
1298:             andi         a0, s1, 890
                  ori          s6, s6, 711
1300:             ori          s9, s2, 746
                  sltiu        s10, a6, 1048
                  beq          s5, s2, 1306f
                  xor          ra, s9, t2
                  bne          s10, t0, 1315f
                  nop
1306:             nop
                  auipc        t3, 877783
                  bne          s7, a7, 1322f
                  beq          s1, s1, 1311f
1310:             or           t5, tp, t5
1311:             lui          a0, 975968
                  blt          t3, s3, 1320f
                  ori          tp, s5, 1081
                  bge          a0, s3, 1319f
1315:             xor          s9, gp, s1
                  and          a4, s11, s7
                  andi         tp, s6, 1671
                  auipc        sp, 57723
1319:             or           s9, s8, s11
1320:             xori         s7, s6, 20
                  xori         t1, s11, 1909
1322:             addi         s7, s6, 1914
                  beq          t0, ra, 1333f
                  bne          s1, t1, 1335f
                  xori         t1, a7, -1335
                  xor          a3, t6, a0
                  srai         a0, s6, 14
                  sltu         t6, t4, a6
                  lui          a5, 881866
                  bltu         s1, sp, 1343f
                  addi         a2, s5, -1059
                  srai         s0, s9, 21
1333:             ori          s4, s3, 115
                  xori         zero, gp, 387
1335:             slt          a1, s10, t3
                  srai         t4, a3, 18
                  sll          tp, s5, s3
                  bne          t3, zero, 1340f
                  sub          s10, a7, ra
1340:             xor          a4, ra, a1
                  slli         s0, s7, 21
                  srai         tp, a1, 15
1343:             sll          a1, t6, t4
                  bge          s1, s1, 1351f
                  sll          sp, a4, s8
                  addi         a5, s9, 1564
                  srli         sp, t1, 26
                  xor          t3, t0, t5
                  sub          sp, s9, a2
                  slti         sp, a7, 933
1351:             nop
                  lui          a6, 1005498
                  slt          a2, t6, t3
                  add          t1, s5, sp
                  slt          s1, t2, t5
                  slti         zero, a0, 328
                  sra          ra, a0, s1
                  xori         s2, a0, 265
                  sub          a5, a7, a6
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  slti         ra, zero, 1689
                  nop
                  blt          a7, s9, 1374f
                  sra          a1, s3, t1
                  or           s0, t5, s5
                  xori         a6, t6, 405
                  slti         a4, a0, -1042
                  sltiu        t5, t0, 1003
                  slli         t3, sp, 25
                  sll          t6, s2, tp
                  srai         a0, s5, 1
                  slt          a6, a2, sp
                  sub          t3, tp, a1
                  sll          a3, a1, a3
                  or           a3, gp, s8
                  bne          t2, a6, 1377f
                  sub          t6, ra, s2
                  xor          a6, s4, s0
                  sll          a3, s3, s9
                  auipc        a3, 948800
1374:             or           s2, s10, s2
                  slt          tp, t2, s11
                  srai         s0, s8, 2
1377:             xor          t3, s1, s2
                  slti         tp, s5, -418
                  srl          sp, a7, t1
                  auipc        a4, 574002
                  sub          s9, t0, t5
                  slli         a0, s6, 19
                  lui          t2, 493218
                  andi         t1, a1, -1815
                  sltiu        a0, a0, -199
                  srai         s10, t5, 3
                  sra          t3, tp, a0
                  slli         s1, a3, 1
                  sltu         s1, t4, s4
                  sub          s5, zero, a4
                  slli         a5, s0, 21
                  beq          t6, s5, 1401f
                  or           s9, sp, s6
                  bltu         t2, s10, 1407f
                  ori          s5, t1, 1277
                  sltiu        t3, s11, 257
                  sltiu        a4, s3, 1375
                  andi         t0, sp, -452
                  sltu         a0, s6, a4
                  lui          s8, 420937
1401:             slti         a3, s2, 1256
                  bgeu         a2, gp, 1416f
                  lui          t1, 809053
                  sub          tp, a1, a7
                  or           t3, s11, a4
                  and          tp, t6, s9
1407:             beq          s8, a6, 1420f
                  xori         t6, gp, 1701
                  slli         t3, tp, 26
                  andi         t6, t5, 836
                  lui          zero, 740731
                  blt          t2, s5, 1420f
                  lui          tp, 507905
                  or           s8, s7, s6
                  srai         s2, a7, 21
1416:             sltu         s5, a0, t5
                  slli         a3, tp, 7
                  blt          s1, a0, 1420f
                  beq          s9, a0, 1420f
1420:             lui          a6, 356155
                  sltiu        zero, t0, 1371
                  slt          a2, t4, a5
                  xori         a5, t4, -1130
                  lw           ra, 4(s3)
                  ori          s9, s7, 1348
                  and          t4, t4, t0
                  addi         s3, s3, 28
                  andi         zero, s9, -1317
                  add          s5, t1, t5
                  or           t6, s8, s6
                  nop
                  and          s5, s9, a3
2101:             addi x8, x1, 0
2101:             jalr x8, x8, 0
sub_3:            bgeu         t6, a0, sub_3_stack_p
                  xori         a3, tp, -615
                  ori          zero, a2, -1786
sub_3_stack_p:    addi         s3, s3, -64
                  sw           ra, 4(s3)
                  srai         t6, s4, 13
                  srli         sp, s2, 18
                  slt          s4, t3, s6
                  ori          tp, s9, 21
                  slt          t2, a7, a2
                  sub          sp, zero, a7
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  add          s7, s11, sp
                  ori          a6, a6, 1535
                  nop
                  sll          s9, s3, t3
                  andi         s9, t6, -682
                  lui          t2, 698062
                  xori         a4, gp, -1693
                  sll          a4, t6, s6
                  sltiu        sp, s0, -862
                  sra          t2, t3, t0
sub_3_j6:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  bgeu         gp, t4, 1f
1:                bge          s2, tp, 17f
                  or           s6, t6, s9
                  sll          t6, s6, sp
                  sra          a0, s5, a6
                  bge          t5, s8, 22f
                  srai         a0, t1, 11
                  nop
                  srli         a0, gp, 29
                  bge          s4, s7, 27f
                  sltu         t3, t2, s0
                  ori          s2, s8, -1922
                  srai         s7, t2, 14
                  andi         s4, a5, -1768
                  sll          s8, s4, a0
                  xor          sp, tp, s4
                  sll          zero, t2, t0
17:               andi         s10, t4, 1244
                  nop
                  sll          s4, t5, s3
                  sra          s0, t6, s0
                  xor          t4, t0, s10
22:               xor          gp, s0, s3
                  sltu         t5, t3, zero
                  xori         a1, s2, 125
                  sra          a2, a6, a7
                  andi         s8, a4, -2042
27:               bltu         s7, a0, 37f
                  xor          tp, a2, s10
                  or           a5, a0, t1
                  or           a2, a5, a3
                  bge          a3, t0, 37f
                  xori         s2, a0, -854
                  blt          a2, t0, 37f
                  bge          a7, s5, 37f
                  add          t4, t5, t1
                  xori         gp, s11, 1060
37:               slt          s7, a2, t0
                  xori         a4, gp, 1129
                  slti         t2, a6, -61
                  lui          t6, 469110
                  lw           ra, 4(s3)
                  srli         sp, t5, 7
                  slti         tp, s11, -1377
                  sltu         tp, a2, s0
                  addi         s3, s3, 64
                  or           s5, a7, a4
                  sltu         s7, s6, a7
71:               addi x1, x1, 1
71:               jalr x1, x1, 0
sub_2:            addi         s3, s3, -40
                  slt          sp, tp, s8
                  srai         t2, zero, 22
                  xor          s0, t1, s11
                  add          s1, t1, a3
                  sltu         t0, s0, t3
                  nop
                  sw           ra, 4(s3)
                  srai         s9, s10, 1
sub_2_0:          jal          ra, 10f
0:                jal          s0, 1f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          t1, 11f
5:                jal          tp, 9f
6:                jal          ra, 8f
7:                jal          t1, 13f
8:                jal          t1, 0b
9:                jal          ra, 3b
10:               jal          ra, 5b
11:               jal          t1, 7b
12:               jal          t0, 14f
13:               jal          t1, 12b
14:               andi         a1, s8, 601
sub_2_1:          jal          ra, 5f
0:                jal          tp, 4f
1:                jal          ra, 3f
2:                jal          s5, 8f
3:                jal          t1, 18f
4:                jal          ra, 9f
5:                jal          s5, 11f
6:                jal          ra, 19f
7:                jal          ra, 0b
8:                jal          ra, 13f
9:                jal          s8, 16f
10:               jal          ra, 15f
11:               jal          ra, 14f
12:               jal          t1, 7b
13:               jal          ra, 12b
14:               jal          t1, 1b
15:               jal          a1, 6b
16:               jal          ra, 10b
17:               jal          t1, 2b
18:               jal          sp, 17b
19:               jal          t1, 20f
20:               or           a1, a4, t4
                  sll          t5, t0, s6
                  beq          a2, t0, 4f
                  slti         a5, a2, 1477
                  beq          t2, a4, 19f
4:                bne          a1, t0, 5f
5:                sltiu        a4, a1, -125
                  slli         a0, t4, 13
                  sltiu        t3, s1, 1126
                  xori         t1, s7, 1113
                  or           a0, s10, t2
                  bne          a2, s2, 22f
                  slli         a0, a3, 2
                  srli         a3, s3, 30
                  blt          s9, t2, 27f
                  nop
                  sltu         t0, a2, s1
                  addi         t3, a0, -1261
                  bge          t3, a4, 19f
                  slt          a4, zero, t4
19:               slt          s0, a0, gp
                  blt          t1, ra, 35f
                  srli         t2, t1, 5
22:               or           a6, a7, a7
                  sll          s6, zero, ra
                  nop
                  sltu         a1, a7, s11
                  sra          s5, gp, s6
27:               auipc        a3, 589302
                  srli         s10, a0, 1
                  sltu         s0, s10, sp
                  beq          a6, a3, 37f
                  sll          s2, s0, s0
                  slti         a3, zero, -402
                  beq          s4, a0, 51f
                  nop
35:               srl          a1, zero, s3
                  slt          t0, t0, t2
37:               addi         t4, t0, 424
                  sltiu        s7, a5, 43
                  sra          a2, s9, s8
                  or           s7, a6, a1
                  srai         t2, s5, 10
                  slli         t1, ra, 10
sub_2_2:          jal          ra, 5f
0:                jal          ra, 20f
1:                jal          ra, 23f
2:                jal          ra, 0b
3:                jal          ra, 16f
4:                jal          s2, 11f
5:                jal          a6, 17f
6:                jal          s10, 9f
7:                jal          a0, 22f
8:                jal          t3, 18f
9:                jal          t1, 2b
10:               jal          t1, 19f
11:               jal          t1, 21f
12:               jal          t0, 3b
13:               jal          t1, 8b
14:               jal          ra, 13b
15:               jal          ra, 4b
16:               jal          ra, 15b
17:               jal          ra, 10b
18:               jal          t1, 7b
19:               jal          t1, 6b
20:               jal          ra, 12b
21:               jal          t1, 14b
22:               jal          sp, 1b
23:               slt          t1, s0, s4
                  srai         zero, zero, 0
                  srli         t0, s2, 24
                  slti         t4, s7, -1073
                  bgeu         s3, s7, 53f
                  sltiu        t2, s10, 896
                  bgeu         gp, s3, 54f
                  srai         t1, s10, 24
                  add          s5, a2, t1
51:               srli         sp, t6, 14
                  nop
53:               xor          a0, a2, s1
54:               blt          t3, s2, 74f
                  bge          sp, t2, 69f
                  srli         a4, s5, 1
                  andi         t2, s7, 26
                  slt          a3, s7, a6
                  sra          a4, a3, a0
                  bltu         t5, s4, 71f
                  bge          t2, s0, 74f
                  bne          a7, t3, 80f
                  xori         t2, t0, 945
                  lui          a5, 686978
                  sub          t2, zero, s7
                  bne          sp, a7, 70f
                  srl          s8, a0, s9
                  or           s1, ra, ra
69:               ori          s2, s1, -709
70:               andi         s2, ra, 149
71:               beq          ra, tp, 78f
                  srli         t3, s7, 18
                  or           s6, ra, t2
74:               sub          s1, t1, s0
                  lui          s8, 153179
                  bgeu         a1, s0, 84f
                  bgeu         a6, s0, 97f
78:               blt          zero, ra, 95f
                  sltu         gp, s5, s5
80:               ori          a6, t3, -1856
                  xor          t1, t1, gp
                  andi         a4, a1, 1298
                  addi         a6, s9, -1166
84:               andi         s10, s2, 1864
                  bgeu         t0, a6, 89f
                  addi         a3, t4, 1302
                  blt          s5, t0, 99f
                  sra          s5, t6, a6
89:               srl          t0, s0, t2
                  slti         s2, zero, -333
                  sltiu        t1, ra, -498
                  slti         s0, s7, 1749
                  and          s8, s8, a4
                  beq          a5, tp, 110f
95:               ori          s7, s6, 1195
                  andi         sp, s6, -1845
97:               xori         t6, a2, -938
                  srli         s0, t2, 17
99:               bge          a1, t5, 102f
                  nop
                  and          s7, a6, t0
102:              andi         s8, zero, 1494
                  sra          t4, a1, s8
                  nop
                  sltu         s2, s6, t4
                  or           s4, a3, t4
                  and          zero, a0, s1
                  srli         a3, s2, 20
                  nop
110:              xor          t5, s4, t6
                  blt          s9, a3, 126f
                  slli         gp, s7, 15
                  bne          s3, sp, 128f
                  sltiu        t0, t6, 717
                  or           tp, a1, s6
                  srli         s1, s0, 31
                  addi         s1, s8, 640
                  sltu         a0, a6, a0
                  srli         s2, s11, 12
                  beq          s7, s1, 137f
                  srl          a0, s0, s0
                  addi         a1, a6, -1483
                  sll          zero, s8, zero
                  and          s0, sp, s8
                  slt          a0, a7, t0
126:              lui          s8, 646117
                  nop
128:              sra          zero, s3, a5
                  srai         a4, s5, 17
                  beq          a0, s7, 148f
                  addi         t5, a6, 77
                  beq          ra, a0, 152f
                  bltu         zero, t5, 136f
                  bge          t3, s8, 136f
                  andi         ra, zero, -189
136:              and          zero, s0, sp
137:              sltu         t6, tp, zero
                  slt          tp, s7, s8
                  addi         s1, a2, -683
                  slli         t5, gp, 9
                  ori          s8, s11, 11
                  beq          s2, t3, 156f
                  or           t5, t2, tp
                  xori         sp, sp, -1048
                  addi         sp, a1, 1903
                  bne          a4, gp, 150f
                  addi         a6, s4, 266
148:              blt          s5, t0, 154f
                  sltiu        t6, a3, 1357
150:              addi         t0, a0, 526
                  sra          a4, s1, a7
152:              slli         a0, s3, 19
                  sub          zero, a3, s2
154:              beq          zero, s6, 156f
                  slt          s0, a0, s1
156:              slti         s8, s2, -661
                  ori          s0, a1, 1929
                  lw           ra, 4(s3)
                  sltiu        s6, a4, -925
                  srli         t0, s11, 5
                  add          s2, s3, s10
                  sll          s10, t1, s2
                  andi         t6, s10, -1666
                  sll          s1, s11, sp
                  addi         s3, s3, 40
                  addi         a3, a4, 963
                  srai         a1, t6, 1
                  sltu         t4, s5, s8
241:              addi x25, x1, 0
241:              jalr x25, x25, 0
sub_4:            bltu         t3, zero, sub_4_stack_p
                  nop
sub_4_stack_p:    addi         s3, s3, -32
                  sub          t1, s6, a5
                  sw           ra, 4(s3)
                  andi         sp, s1, 242
                  and          s6, a2, a1
sub_4_0:          jal          ra, 3f
0:                jal          ra, 5f
1:                jal          t1, 10f
2:                jal          t1, 12f
3:                jal          t1, 11f
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          s9, 14f
7:                jal          a4, 13f
8:                jal          s4, 4b
9:                jal          sp, 8b
10:               jal          t1, 0b
11:               jal          a1, 1b
12:               jal          t0, 15f
13:               jal          ra, 2b
14:               jal          ra, 7b
15:               addi         a1, zero, 780
                  sub          a6, t6, s7
                  or           a3, a5, a6
                  bne          s3, s4, 22f
                  lui          t0, 849131
                  sltiu        t5, t3, -1185
                  slti         t4, t5, 957
                  sll          a2, tp, t6
                  bgeu         s9, s7, 17f
                  or           s0, s11, a5
                  bge          s9, s8, 21f
                  bltu         t3, zero, 28f
                  add          a3, s4, ra
                  bge          s7, t4, 15f
                  srli         s9, s4, 28
                  beq          s6, t3, 30f
15:               srai         ra, s3, 21
                  sub          sp, s7, t6
17:               srl          t1, a5, a0
                  bne          s10, s5, 22f
                  bne          a7, a7, 39f
                  bltu         t4, s11, 37f
21:               bgeu         gp, a1, 36f
22:               bgeu         t6, a7, 30f
                  add          t5, s4, a2
                  bne          s2, s2, 35f
                  bge          ra, a0, 42f
                  addi         zero, s10, 1911
                  auipc        a0, 910921
28:               sltu         s1, s9, t1
                  or           s2, a4, a2
30:               bge          t4, s10, 37f
                  sltiu        t5, s0, -1276
                  bgeu         s10, a3, 38f
                  sll          t0, tp, s3
                  lui          t2, 656077
35:               bge          s1, t4, 50f
36:               sltu         s9, t4, s7
37:               add          a3, t0, t6
38:               bne          a7, t2, 45f
39:               nop
                  srl          s8, s9, a4
                  addi         s9, a5, -1883
42:               srli         s1, s0, 20
                  slti         s7, ra, -857
                  andi         zero, sp, 55
45:               xori         tp, t6, -1918
                  slt          t4, s7, s4
                  bge          s6, s8, 56f
                  srli         a2, a2, 11
                  srli         a2, s11, 24
50:               sra          zero, s3, a7
                  beq          s6, t0, 59f
                  srl          s10, t5, s7
                  nop
                  bgeu         a2, a0, 68f
                  bltu         s8, t2, 68f
56:               addi         a2, gp, 1605
                  srli         s0, s6, 18
                  sltiu        s2, a1, -200
59:               blt          s8, s1, 60f
60:               sra          a0, s8, a6
                  blt          s11, gp, 64f
                  bge          a6, ra, 69f
                  slt          t5, a1, s7
64:               bltu         s0, s3, 69f
                  sll          a4, a0, s9
                  addi         s2, a1, 883
                  nop
68:               add          s1, ra, s3
69:               xor          a6, t4, s4
                  slli         tp, s10, 20
                  lw           ra, 4(s3)
                  addi         s3, s3, 32
                  nop
                  slti         a0, a3, -673
                  srl          a3, a6, s7
                  srli         t6, s1, 23
101:              addi x21, x1, 0
101:              jalr x21, x21, 0
sub_5:            addi         s3, s3, -48
                  sltu         s2, t1, a3
                  sw           ra, 4(s3)
                  ori          t3, a0, 622
                  auipc        s10, 914302
sub_5_12:         jal          ra, 14f
0:                jal          a1, 15f
1:                jal          ra, 17f
2:                jal          ra, 7f
3:                jal          t1, 6f
4:                jal          t5, 13f
5:                jal          ra, 1b
6:                jal          ra, 16f
7:                jal          ra, 0b
8:                jal          s7, 9f
9:                jal          ra, 10f
10:               jal          t2, 5b
11:               jal          t1, 2b
12:               jal          ra, 11b
13:               jal          t1, 3b
14:               jal          s8, 12b
15:               jal          ra, 4b
16:               jal          t1, 8b
17:               srai         s5, s7, 11
sub_5_11:         jal          ra, 21f
0:                jal          t2, 17f
1:                jal          t1, 27f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          a3, 18f
5:                jal          ra, 10f
6:                jal          s8, 5b
7:                jal          t1, 20f
8:                jal          t1, 14f
9:                jal          t1, 1b
10:               jal          t1, 8b
11:               jal          ra, 2b
12:               jal          tp, 6b
13:               jal          ra, 9b
14:               jal          ra, 29f
15:               jal          ra, 23f
16:               jal          ra, 28f
17:               jal          s5, 13b
18:               jal          s10, 25f
19:               jal          ra, 12b
20:               jal          ra, 19b
21:               jal          ra, 26f
22:               jal          ra, 16b
23:               jal          a5, 24f
24:               jal          t1, 11b
25:               jal          ra, 7b
26:               jal          ra, 22b
27:               jal          ra, 3b
28:               jal          t1, 15b
29:               srli         s8, a5, 7
sub_5_23:         jal          ra, 0f
0:                jal          ra, 13f
1:                jal          t1, 4f
2:                jal          ra, 8f
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          ra, 19f
7:                jal          t1, 5b
8:                jal          ra, 6b
9:                jal          s6, 12f
10:               jal          ra, 17f
11:               jal          s1, 10b
12:               jal          ra, 15f
13:               jal          gp, 9b
14:               jal          s5, 18f
15:               jal          ra, 3b
16:               jal          t1, 14b
17:               jal          a4, 16b
18:               jal          ra, 2b
19:               auipc        s10, 87184
sub_5_24:         jal          ra, 15f
0:                jal          t1, 21f
1:                jal          sp, 12f
2:                jal          s10, 24f
3:                jal          ra, 27f
4:                jal          ra, 9f
5:                jal          t1, 17f
6:                jal          t1, 3b
7:                jal          ra, 0b
8:                jal          ra, 26f
9:                jal          t0, 16f
10:               jal          t1, 23f
11:               jal          ra, 10b
12:               jal          ra, 20f
13:               jal          ra, 2b
14:               jal          t1, 7b
15:               jal          gp, 8b
16:               jal          ra, 19f
17:               jal          ra, 22f
18:               jal          ra, 13b
19:               jal          tp, 5b
20:               jal          t1, 14b
21:               jal          t1, 18b
22:               jal          t1, 25f
23:               jal          ra, 1b
24:               jal          t1, 4b
25:               jal          ra, 6b
26:               jal          s1, 11b
27:               sub          t0, tp, s8
sub_5_16:         jal          ra, 7f
0:                jal          t0, 2f
1:                jal          ra, 11f
2:                jal          tp, 1b
3:                jal          t5, 12f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          gp, 15f
7:                jal          ra, 8f
8:                jal          a3, 3b
9:                jal          ra, 5b
10:               jal          ra, 6b
11:               jal          ra, 13f
12:               jal          t4, 14f
13:               jal          s9, 4b
14:               jal          ra, 9b
15:               slti         t6, zero, 246
sub_5_8:          jal          ra, 0f
0:                jal          ra, 12f
1:                jal          t1, 8f
2:                jal          ra, 11f
3:                jal          t1, 10f
4:                jal          a1, 6f
5:                jal          t1, 2b
6:                jal          ra, 1b
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          gp, 7b
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               srli         a1, t0, 0
sub_5_19:         jal          ra, 18f
0:                jal          s2, 11f
1:                jal          t1, 15f
2:                jal          ra, 22f
3:                jal          s5, 12f
4:                jal          ra, 7f
5:                jal          t1, 3b
6:                jal          s1, 10f
7:                jal          s8, 1b
8:                jal          t1, 23f
9:                jal          s1, 21f
10:               jal          ra, 16f
11:               jal          s1, 2b
12:               jal          ra, 4b
13:               jal          ra, 14f
14:               jal          ra, 17f
15:               jal          ra, 0b
16:               jal          t4, 5b
17:               jal          ra, 20f
18:               jal          ra, 19f
19:               jal          ra, 6b
20:               jal          ra, 9b
21:               jal          ra, 8b
22:               jal          ra, 13b
23:               lui          tp, 850427
sub_5_4:          jal          ra, 6f
0:                jal          t1, 1f
1:                jal          ra, 8f
2:                jal          a2, 10f
3:                jal          a4, 5f
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          t1, 2b
7:                jal          t1, 12f
8:                jal          s8, 11f
9:                jal          s2, 3b
10:               jal          a6, 4b
11:               jal          ra, 9b
12:               sll          a1, s7, s5
sub_5_13:         jal          ra, 3f
0:                jal          gp, 12f
1:                jal          t5, 4f
2:                jal          s2, 7f
3:                jal          ra, 9f
4:                jal          t0, 11f
5:                jal          tp, 1b
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          a0, 2b
10:               jal          ra, 0b
11:               jal          ra, 10b
12:               or           t6, t2, a7
sub_5_22:         jal          ra, 0f
0:                jal          ra, 21f
1:                jal          s10, 19f
2:                jal          ra, 12f
3:                jal          ra, 23f
4:                jal          a5, 15f
5:                jal          ra, 1b
6:                jal          ra, 26f
7:                jal          s7, 22f
8:                jal          ra, 17f
9:                jal          ra, 8b
10:               jal          a3, 2b
11:               jal          ra, 13f
12:               jal          t3, 4b
13:               jal          s0, 16f
14:               jal          a0, 27f
15:               jal          ra, 6b
16:               jal          ra, 10b
17:               jal          t1, 28f
18:               jal          t1, 24f
19:               jal          a5, 9b
20:               jal          ra, 7b
21:               jal          ra, 3b
22:               jal          ra, 25f
23:               jal          s5, 18b
24:               jal          t1, 14b
25:               jal          t1, 11b
26:               jal          ra, 5b
27:               jal          gp, 20b
28:               or           tp, a2, s6
sub_5_15:         jal          ra, 6f
0:                jal          t3, 3f
1:                jal          ra, 12f
2:                jal          ra, 7f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          sp, 1b
7:                jal          t1, 15f
8:                jal          a1, 2b
9:                jal          a4, 16f
10:               jal          ra, 9b
11:               jal          t1, 10b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          a5, 8b
15:               jal          ra, 13b
16:               lui          s7, 252243
sub_5_10:         jal          ra, 3f
0:                jal          ra, 15f
1:                jal          t1, 16f
2:                jal          t1, 11f
3:                jal          t1, 17f
4:                jal          t1, 5f
5:                jal          sp, 14f
6:                jal          ra, 2b
7:                jal          t1, 9f
8:                jal          ra, 18f
9:                jal          ra, 12f
10:               jal          sp, 13f
11:               jal          ra, 0b
12:               jal          sp, 6b
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          t0, 10b
16:               jal          gp, 7b
17:               jal          ra, 1b
18:               sltiu        s1, t0, -1182
sub_5_21:         jal          ra, 1f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          t1, 6f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          t0, 3b
10:               auipc        t1, 705113
sub_5_20:         jal          ra, 10f
0:                jal          ra, 12f
1:                jal          ra, 3f
2:                jal          t1, 4f
3:                jal          ra, 2b
4:                jal          sp, 7f
5:                jal          ra, 11f
6:                jal          s4, 8f
7:                jal          t0, 0b
8:                jal          ra, 5b
9:                jal          t1, 1b
10:               jal          ra, 6b
11:               jal          ra, 9b
12:               srai         a5, s7, 26
sub_5_14:         jal          ra, 5f
0:                jal          ra, 2f
1:                jal          t1, 8f
2:                jal          ra, 16f
3:                jal          ra, 6f
4:                jal          tp, 10f
5:                jal          t1, 3b
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          t6, 11f
9:                jal          s0, 7b
10:               jal          ra, 15f
11:               jal          tp, 12f
12:               jal          ra, 9b
13:               jal          ra, 18f
14:               jal          tp, 19f
15:               jal          ra, 17f
16:               jal          ra, 13b
17:               jal          t1, 14b
18:               jal          ra, 4b
19:               lui          s8, 227473
sub_5_9:          jal          ra, 7f
0:                jal          s9, 1f
1:                jal          ra, 17f
2:                jal          t5, 12f
3:                jal          t1, 16f
4:                jal          s6, 15f
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          ra, 13f
8:                jal          ra, 2b
9:                jal          sp, 8b
10:               jal          s9, 18f
11:               jal          t1, 3b
12:               jal          ra, 4b
13:               jal          gp, 6b
14:               jal          t1, 11b
15:               jal          ra, 10b
16:               jal          t1, 9b
17:               jal          a1, 14b
18:               slt          s5, s3, s0
sub_5_17:         jal          ra, 9f
0:                jal          ra, 3f
1:                jal          s1, 16f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          s9, 23f
5:                jal          t1, 2b
6:                jal          t0, 22f
7:                jal          ra, 19f
8:                jal          ra, 10f
9:                jal          ra, 18f
10:               jal          t1, 15f
11:               jal          ra, 6b
12:               jal          ra, 24f
13:               jal          ra, 1b
14:               jal          ra, 11b
15:               jal          ra, 21f
16:               jal          ra, 25f
17:               jal          ra, 26f
18:               jal          a2, 13b
19:               jal          gp, 17b
20:               jal          s10, 8b
21:               jal          ra, 14b
22:               jal          ra, 5b
23:               jal          ra, 0b
24:               jal          ra, 20b
25:               jal          ra, 12b
26:               sltiu        s5, s2, 497
sub_5_3:          jal          ra, 1f
0:                jal          s0, 19f
1:                jal          ra, 8f
2:                jal          s0, 3f
3:                jal          ra, 16f
4:                jal          ra, 12f
5:                jal          t1, 14f
6:                jal          ra, 7f
7:                jal          t2, 9f
8:                jal          a6, 10f
9:                jal          t1, 15f
10:               jal          tp, 2b
11:               jal          t0, 23f
12:               jal          ra, 11b
13:               jal          t1, 22f
14:               jal          t1, 20f
15:               jal          t1, 17f
16:               jal          ra, 6b
17:               jal          ra, 18f
18:               jal          t1, 5b
19:               jal          ra, 13b
20:               jal          t1, 0b
21:               jal          ra, 4b
22:               jal          gp, 21b
23:               srl          s10, a4, t6
                  addi         t3, t3, -1758
                  sll          t2, a6, ra
                  blt          s3, t1, 6f
                  beq          a4, s0, 5f
                  sub          t1, a7, t5
5:                andi         s6, s6, -214
6:                bge          a2, a6, 23f
                  lui          a3, 904224
                  bltu         s8, s8, 10f
                  sub          gp, a4, s1
10:               sltu         s5, t6, a7
                  srl          a1, t3, s4
                  or           t5, a2, a4
                  sltiu        a0, t1, -448
                  nop
                  add          s8, a4, a4
                  sra          s2, gp, s9
                  add          t4, s3, s1
                  lui          s5, 1034206
                  srl          zero, t2, a4
                  bne          a7, t0, 34f
                  bltu         s3, s7, 32f
                  srl          s1, ra, a7
23:               xor          s10, a2, s10
                  slt          s7, a5, t5
                  bne          sp, a0, 43f
                  nop
                  or           t2, sp, s9
                  or           s6, t3, s7
                  slli         tp, t3, 12
                  andi         s0, t2, 741
                  slti         a5, s4, 558
32:               lui          t2, 615480
                  auipc        t2, 703672
34:               or           s1, gp, a4
                  srli         t2, a1, 17
                  addi         s8, s5, 1516
                  sll          s7, s9, t5
                  nop
                  bgeu         s5, a4, 42f
                  bgeu         s2, s2, 41f
41:               lui          t5, 179845
42:               bltu         t3, t0, 60f
43:               and          tp, t1, t6
                  xor          ra, a3, a1
                  addi         s9, s4, 1520
                  beq          s5, zero, 63f
                  slti         s6, a6, 2032
                  slt          s7, t2, s1
                  bne          a0, a1, 52f
                  sltu         s5, ra, a3
                  sra          t5, zero, s9
52:               nop
                  slti         s4, s7, 1036
                  slti         s9, tp, -1645
                  srl          t6, s1, s5
                  lui          t2, 373959
                  bne          t0, s7, 69f
                  slt          s6, a6, s10
                  srl          sp, a6, s3
60:               sltu         s0, s9, s0
                  sra          s2, s3, s3
                  slt          a1, a3, s1
63:               add          s7, t6, a3
                  bge          tp, a3, 83f
                  lui          s2, 359485
                  slt          t4, a3, s1
                  addi         t3, s1, 1151
                  or           a5, s8, s2
69:               sltiu        a4, a2, 204
                  ori          t0, a1, 1103
                  slt          ra, s10, t6
                  bge          t5, t4, 73f
73:               sub          s7, a3, gp
                  or           t3, s7, ra
                  sra          zero, s4, t3
                  or           t0, sp, t5
                  bltu         t6, a7, 81f
                  srli         sp, t3, 18
                  slti         t2, s4, 1071
                  andi         t3, a5, 335
81:               andi         sp, a0, 1833
                  addi         t4, a7, 600
83:               srai         s9, t0, 20
                  auipc        s6, 436861
                  and          t6, s9, tp
                  or           t2, a1, a2
                  lui          a4, 276561
                  beq          zero, a6, 97f
                  beq          t6, t4, 97f
                  srai         a3, a5, 13
                  bge          s11, s11, 94f
                  add          ra, s0, tp
                  addi         a1, a1, 1399
94:               slt          a3, a1, t3
                  sra          t5, t6, s11
                  add          ra, a5, a7
97:               beq          ra, t3, 109f
                  slli         t2, a2, 15
                  sltu         t1, zero, t6
                  blt          gp, s4, 110f
                  slli         ra, t1, 11
                  srl          s10, s11, s4
                  nop
                  or           a6, s3, t6
                  bgeu         a6, s6, 113f
                  beq          t6, a4, 123f
                  add          s0, a0, s11
                  sltiu        a2, s9, 457
109:              sltiu        a3, s7, 1648
110:              slti         sp, a5, -1330
                  lui          s6, 19431
                  lui          zero, 831541
113:              sra          t4, a2, s10
                  sll          s1, gp, t0
                  andi         s5, a7, 360
                  xor          s6, s0, s0
                  bgeu         a6, s3, 134f
                  bge          s2, t5, 132f
                  addi         a6, t0, -589
                  bge          s7, t0, 131f
                  andi         t0, t5, -1748
                  ori          tp, s3, -1483
123:              xori         s10, a0, -1864
                  lui          s4, 566455
                  bne          s4, a0, 133f
                  slti         s8, a3, -1679
                  sltiu        s4, s0, -734
                  bge          sp, t1, 134f
                  srli         s4, s7, 27
                  blt          a3, gp, 131f
131:              srai         t2, a6, 0
132:              and          s8, s1, t6
133:              beq          tp, ra, 150f
134:              blt          t5, a3, 152f
                  sltiu        s2, s10, 1532
                  bltu         t4, tp, 147f
                  addi         a0, t0, 1925
                  bge          a7, a3, 141f
                  nop
                  andi         t6, s9, 1553
141:              bge          s11, s10, 149f
                  xor          t4, s7, gp
                  addi         s2, t4, 1983
                  sll          s1, s9, a4
                  bne          a7, s10, 163f
                  srai         s5, s0, 24
147:              xori         t0, s4, -484
                  srli         s7, s0, 0
149:              srai         s0, t6, 26
150:              sltu         t1, t0, a6
                  auipc        s10, 212618
152:              and          t6, tp, s10
                  addi         a2, s7, 1820
                  addi         t0, a7, 622
                  sra          s5, s11, t1
                  and          a6, s2, a4
                  bltu         s8, t3, 169f
                  lui          t1, 703398
                  ori          s7, s4, -1221
                  auipc        a3, 245979
                  sub          a4, tp, a4
                  slli         s5, a0, 4
163:              sub          s7, a1, s5
                  slt          gp, s10, a6
                  slti         tp, s11, -446
                  addi         t6, s2, -1732
                  bgeu         s4, t1, 176f
                  slti         s0, t5, 668
169:              sra          s9, a0, t1
                  slt          s4, a4, s2
                  andi         a3, s4, -467
                  bne          a4, s0, 191f
                  sra          t3, a2, s7
                  slt          s7, s10, a7
                  ori          tp, sp, 689
176:              bgeu         t4, t1, 177f
177:              xori         a3, t0, 72
sub_5_7:          jal          ra, 0f
0:                jal          ra, 8f
1:                jal          t1, 17f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          s0, 9f
5:                jal          t1, 12f
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          ra, 16f
9:                jal          a0, 20f
10:               jal          t1, 1b
11:               jal          t1, 13f
12:               jal          tp, 11b
13:               jal          ra, 2b
14:               jal          t1, 4b
15:               jal          t1, 19f
16:               jal          a2, 7b
17:               jal          gp, 18f
18:               jal          ra, 5b
19:               jal          ra, 14b
20:               and          gp, tp, t6
                  sltu         tp, t3, s2
                  sltu         t1, gp, s7
                  add          s7, s10, s1
                  sll          gp, t6, t6
                  slt          t6, t5, tp
                  xori         a3, ra, -511
                  slt          s0, s3, a5
                  and          s1, s4, s3
                  slt          s10, a2, s3
                  sra          ra, t2, a7
                  sltu         s5, s1, s3
                  bne          s6, s11, 193f
                  addi         zero, tp, -1669
191:              bne          t3, ra, 194f
                  xor          s2, a0, a2
193:              blt          a1, s9, 195f
194:              slti         t1, t2, -1464
195:              sll          t2, a7, s0
                  and          t2, a7, t4
                  bltu         a5, gp, 198f
198:              srli         a3, a6, 10
                  sltu         a1, s0, s6
                  sra          s8, s6, t1
                  bgeu         a3, ra, 215f
                  or           s2, t2, s6
                  auipc        a4, 1004599
                  bltu         a4, s9, 221f
                  sltiu        t4, a6, -1996
                  or           a2, s11, t1
                  sra          zero, a3, s2
                  andi         a4, t5, -1612
                  andi         a2, s6, 1128
                  and          a6, a5, s7
                  and          a6, s11, s9
                  andi         tp, t4, -925
                  slli         a2, t4, 27
                  auipc        a2, 410150
215:              srai         t3, t3, 4
                  bltu         a5, s11, 224f
                  bltu         s7, a5, 229f
                  lui          s10, 651084
                  sltiu        a6, t6, 841
                  xor          ra, a6, s4
221:              srl          s2, a1, s10
                  slt          t0, a2, t1
                  sltiu        s5, s11, 117
224:              slt          a2, s6, ra
                  bltu         s10, a5, 236f
                  addi         s10, s7, -2000
                  sll          t2, t1, gp
                  add          a0, s10, a6
229:              sra          gp, t1, s1
                  nop
                  lui          t0, 742727
                  lui          a3, 902693
                  sltu         zero, t5, s7
                  blt          s8, s3, 235f
235:              addi         ra, a3, 1947
236:              beq          tp, t1, 240f
                  nop
                  sra          t4, t1, zero
                  auipc        s10, 249508
240:              srli         a0, s3, 8
                  or           t2, t6, a7
                  lui          s6, 604833
                  bgeu         gp, a1, 249f
                  bgeu         s11, s7, 252f
                  xori         t0, zero, 906
                  xor          a5, s3, t4
                  ori          a4, t0, -1853
                  or           a0, s6, t0
249:              srli         a4, t0, 16
                  sltiu        s5, t0, -1368
                  sltu         a3, gp, t2
252:              add          tp, s9, s1
                  andi         a0, t6, 1877
                  sltiu        a1, t6, -1690
                  sltiu        zero, a6, -1142
                  add          t1, s8, t4
                  bgeu         s0, t3, 271f
                  or           s7, gp, gp
                  lui          s8, 437811
                  nop
                  sra          gp, s2, a5
                  sltiu        s4, s8, -660
                  sll          s5, s6, s8
                  sll          a1, a6, s5
                  lui          t6, 775500
                  bge          s5, a2, 269f
                  xor          t5, a7, a7
                  beq          a2, t3, 285f
269:              xori         s0, a7, -650
                  blt          s11, t2, 287f
271:              addi         tp, a1, -1868
                  nop
                  or           s7, t5, s1
                  sra          a0, s5, ra
                  sub          t5, tp, t3
                  sltu         s4, s10, s4
                  bgeu         gp, t1, 287f
                  auipc        a0, 435437
                  beq          a1, t1, 281f
                  xori         s9, t6, 882
281:              andi         s6, tp, -242
                  add          a6, zero, s0
                  or           s6, t5, s10
                  auipc        t6, 990384
285:              sub          t6, s6, t0
                  addi         a3, s10, 587
287:              andi         t5, ra, 169
                  sra          t4, t2, s3
                  beq          sp, s10, 306f
                  slt          a6, a6, s3
                  srli         a0, a0, 5
                  bge          ra, t5, 309f
                  bge          s6, s3, 304f
                  srli         a0, gp, 3
                  addi         s2, s5, 1886
                  add          t1, a7, a7
                  sll          s1, s10, t0
                  beq          s6, a2, 309f
                  sub          a6, t1, s6
                  bge          s7, t6, 304f
                  addi         gp, s5, -1216
                  srai         s7, a1, 20
                  beq          s7, a6, 320f
304:              xori         t2, a2, 1700
                  and          a1, t3, a6
306:              beq          a7, a6, 320f
                  srai         a3, ra, 11
                  srl          s7, a5, a0
309:              bltu         s7, t5, 310f
310:              add          t3, ra, t4
                  xor          s4, s6, t0
                  or           t4, a2, t1
                  sra          a2, ra, gp
                  srli         a5, gp, 1
                  nop
                  beq          a6, s3, 318f
                  addi         s0, s8, -1817
318:              nop
                  andi         s7, t1, -1109
320:              srl          a6, sp, a3
                  bge          t6, s7, 339f
                  slli         ra, gp, 30
                  andi         a4, a6, 108
                  srai         a0, a3, 7
                  srli         gp, s5, 7
                  srl          t4, s6, s7
                  slt          t0, a4, s2
                  nop
                  sltu         t3, t5, t4
                  bne          a6, a2, 349f
                  andi         a1, t2, -1673
                  sra          s4, s9, a0
                  sll          zero, s5, a6
                  lui          zero, 577994
                  sub          sp, a1, s2
                  andi         a0, s7, 702
                  auipc        t0, 389208
                  slti         s4, a6, 1334
339:              srli         s9, s8, 26
                  addi         sp, s5, 417
                  sub          s0, a7, s0
                  bgeu         s7, s5, 359f
sub_5_1:          jal          ra, 13f
0:                jal          ra, 24f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          ra, 19f
4:                jal          ra, 2b
5:                jal          ra, 11f
6:                jal          ra, 3b
7:                jal          gp, 22f
8:                jal          tp, 12f
9:                jal          t1, 14f
10:               jal          ra, 0b
11:               jal          ra, 20f
12:               jal          s2, 7b
13:               jal          ra, 1b
14:               jal          t1, 15f
15:               jal          ra, 5b
16:               jal          ra, 21f
17:               jal          t1, 18f
18:               jal          ra, 16b
19:               jal          ra, 23f
20:               jal          ra, 6b
21:               jal          t1, 10b
22:               jal          t1, 17b
23:               jal          t6, 4b
24:               sltiu        s4, t3, -1931
                  slti         a2, t4, -1212
                  srli         s6, a0, 26
                  srai         s4, ra, 15
                  sub          t1, a5, s5
                  add          gp, sp, t4
                  sra          a1, zero, s5
349:              sub          tp, t3, gp
                  sra          s4, ra, s6
                  xori         t2, t2, 78
                  lui          t6, 748575
                  and          gp, a4, t2
                  and          ra, s3, a6
                  xori         sp, s2, 1879
                  sll          s9, t5, s0
                  lui          a6, 62448
                  addi         ra, s8, 1955
359:              or           gp, s3, tp
                  lui          t1, 672185
                  sub          t6, a2, a4
                  sltu         a6, sp, gp
                  andi         s9, s3, -1219
                  bne          s7, a7, 374f
                  slt          t0, gp, s4
                  and          s0, zero, a6
                  nop
                  bltu         t3, a6, 374f
                  lui          s1, 794059
                  bne          t5, a3, 373f
                  bne          t6, a0, 372f
372:              sltu         t6, s1, gp
373:              sltiu        s0, t3, 1514
374:              addi         a0, s9, 1671
                  sub          a2, t2, tp
                  nop
                  nop
                  xor          t5, a3, s10
                  sra          s0, s5, tp
                  bltu         s6, sp, 383f
                  srl          gp, s7, t2
                  bgeu         a2, s0, 384f
383:              sltu         t3, s9, s0
384:              and          a0, s2, a7
                  sll          a5, s0, s10
                  bne          a1, a7, 403f
                  addi         a1, a4, -1893
                  bge          s9, a0, 405f
                  srai         s5, ra, 8
                  andi         a3, s2, -1301
                  lui          s6, 12177
                  bne          zero, s2, 410f
                  bge          s4, t5, 397f
                  beq          a2, a3, 402f
                  nop
                  xori         a0, a0, 1566
397:              bltu         s5, t2, 398f
398:              bge          tp, s10, 406f
                  sltiu        t5, s2, -1192
                  slti         zero, a3, 1022
                  sltiu        t3, a0, -388
402:              bge          s1, s11, 419f
403:              add          s7, s3, t4
                  sltu         sp, s10, t2
405:              sltu         s4, a2, a5
406:              blt          s2, t1, 414f
                  bge          s1, a4, 410f
                  srl          a5, a7, t6
                  auipc        s4, 308856
410:              bge          tp, a2, 419f
                  beq          t2, a4, 425f
                  bne          s4, a6, 424f
                  sub          s6, a6, a5
414:              add          a2, tp, ra
                  andi         s1, a2, 1670
                  ori          s8, s7, -754
                  andi         t6, s0, -720
                  auipc        s5, 555922
419:              slli         s0, a5, 1
                  xor          s1, s11, s4
                  add          s10, t6, s8
                  add          a3, t2, s3
                  addi         s5, s10, 1839
424:              sltu         a1, s11, t5
425:              xori         t2, s6, -413
                  srli         t2, a5, 1
                  slti         a1, s11, -1488
                  add          s0, a1, s5
                  sra          gp, s11, tp
                  andi         gp, a2, 1221
                  xor          t2, s1, t5
                  xor          s4, a2, a3
                  sra          tp, s9, s0
                  sll          s2, a6, s10
                  sll          s9, tp, s5
                  sltiu        a4, t0, -346
                  sll          a5, t5, s3
                  srli         s8, t5, 27
                  sll          a0, t5, t1
                  bgeu         a1, t3, 452f
                  bne          ra, a4, 442f
442:              xor          s8, ra, a6
                  srai         s5, a1, 23
                  ori          s2, a6, 1712
                  sll          t6, sp, t2
                  bltu         t2, s0, 463f
                  ori          s8, zero, 1106
                  sll          s9, s4, s0
                  auipc        s7, 841371
                  sra          a4, t1, zero
                  xori         s6, a2, -1197
452:              sltu         s4, a3, a6
                  srai         s0, s4, 3
                  srai         s9, t3, 19
                  srai         s8, s10, 25
sub_5_2:          jal          ra, 7f
0:                jal          t1, 8f
1:                jal          gp, 11f
2:                jal          s5, 9f
3:                jal          ra, 6f
4:                jal          a3, 5f
5:                jal          t0, 2b
6:                jal          ra, 10f
7:                jal          a3, 15f
8:                jal          ra, 12f
9:                jal          t4, 3b
10:               jal          ra, 16f
11:               jal          t1, 13f
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               jal          ra, 4b
15:               jal          ra, 0b
16:               sll          a2, a5, t5
                  andi         sp, zero, -843
                  ori          t6, s6, 1373
                  sltiu        zero, t5, -183
                  slli         s10, a6, 5
                  beq          s4, t4, 470f
                  blt          s8, t1, 467f
                  blt          a1, a0, 476f
463:              auipc        a5, 504260
                  bgeu         a7, gp, 476f
                  andi         zero, tp, -1998
                  addi         t6, s3, 2029
467:              bltu         s4, a3, 470f
                  and          a3, s5, s11
                  srl          s6, a4, t0
470:              and          a0, t0, s7
                  xori         s1, ra, 1306
                  addi         t2, tp, 1541
                  blt          s11, t4, 482f
                  slt          s10, s1, a2
                  slti         tp, a6, -196
476:              bne          a7, s3, 487f
                  sub          tp, s8, s5
                  nop
                  sra          a1, ra, t0
                  slli         a4, t1, 23
                  slt          zero, s10, a5
482:              bltu         s11, s5, 501f
                  or           a3, a0, s7
                  slti         a5, sp, -199
                  ori          t4, s3, 576
                  sltiu        zero, s2, -1960
487:              slti         t4, t1, -2037
                  sll          t2, s6, s3
                  blt          s1, t4, 497f
                  sra          sp, t3, a3
                  bgeu         t4, a4, 508f
                  auipc        s2, 1034146
                  slt          s2, s1, s9
                  auipc        a5, 581269
                  nop
                  addi         a0, s1, -497
497:              blt          s4, t4, 498f
498:              bgeu         s9, a6, 509f
                  sra          t5, s1, a3
                  beq          t3, a5, 517f
501:              add          a5, a2, zero
                  sll          ra, zero, t1
                  or           s7, t1, s11
                  xori         s0, s11, -897
                  sll          t2, s2, s0
                  xor          s9, s0, t3
                  nop
508:              sll          s4, sp, s6
509:              bgeu         t2, s10, 510f
510:              slli         s5, s4, 2
                  bltu         a2, s8, 523f
                  or           t6, a1, t0
                  ori          s1, s2, 25
                  xor          s4, a4, s11
                  auipc        a2, 480285
                  or           t0, a3, t3
517:              srli         a0, t1, 4
                  xori         t1, a2, -1610
                  slti         s7, a1, 312
                  addi         sp, a7, 376
                  nop
                  lui          a5, 377795
523:              bltu         s5, s7, 527f
                  slti         s1, sp, 627
                  andi         a5, s3, -1429
                  blt          a4, a5, 529f
sub_5_5:          jal          ra, 11f
0:                jal          ra, 12f
1:                jal          t1, 6f
2:                jal          ra, 25f
3:                jal          a3, 13f
4:                jal          ra, 15f
5:                jal          s0, 10f
6:                jal          s6, 16f
7:                jal          tp, 18f
8:                jal          a0, 4b
9:                jal          t3, 5b
10:               jal          ra, 14f
11:               jal          ra, 24f
12:               jal          ra, 21f
13:               jal          sp, 8b
14:               jal          t1, 17f
15:               jal          t1, 20f
16:               jal          sp, 3b
17:               jal          ra, 19f
18:               jal          gp, 23f
19:               jal          ra, 1b
20:               jal          ra, 22f
21:               jal          ra, 7b
22:               jal          t6, 0b
23:               jal          tp, 2b
24:               jal          t1, 9b
25:               srai         sp, t5, 21
527:              bne          a2, sp, 529f
                  xori         a4, a4, -1259
529:              sra          sp, t5, s5
                  nop
                  xor          t4, a7, a2
                  bne          s5, t2, 546f
                  xor          s6, sp, t6
                  sra          s10, a2, a6
                  slli         a3, t3, 17
                  slli         s10, gp, 28
                  addi         s0, t4, -1908
                  beq          s2, s3, 540f
                  sll          s7, s0, t2
540:              add          zero, s1, t3
                  slli         t6, a4, 25
                  beq          tp, a2, 550f
                  bltu         s7, sp, 561f
                  sltiu        a2, s6, -658
                  addi         a0, s8, 1142
546:              sub          s0, t5, t1
                  bltu         a6, gp, 555f
                  auipc        s8, 925612
                  bge          a5, s4, 553f
550:              sub          t5, t2, a3
                  sub          t1, s11, s10
                  sub          a4, t2, a2
553:              slti         a6, a7, -464
                  sra          s9, a1, a0
555:              sra          s2, t0, t4
                  sll          s5, t4, gp
                  xor          s4, a4, t0
                  srl          t5, s11, s11
                  bne          s10, s5, 562f
                  sltu         t1, a2, s4
561:              srai         a2, a3, 21
562:              addi         t2, s4, -2037
                  blt          s5, s8, 580f
                  slt          s6, s9, t2
                  bgeu         ra, s3, 583f
                  add          a2, a3, zero
                  beq          ra, zero, 584f
                  beq          a0, s11, 571f
                  sub          a0, a4, a4
                  add          s0, s10, tp
571:              sll          s6, sp, a1
                  add          t5, zero, s5
                  sltu         s7, s9, s2
                  sltu         t6, t5, t5
                  srl          a3, gp, s3
                  sltu         t0, t5, t4
                  xor          t2, a0, s6
                  lui          a5, 900508
                  sltu         s6, a3, s8
580:              beq          tp, a4, 598f
                  srl          sp, t4, t2
                  auipc        s10, 812407
583:              sltiu        t5, s2, -1300
584:              sll          t6, a4, s6
                  nop
                  sll          s5, a0, a2
                  srli         s5, t3, 28
                  srl          sp, t3, s10
                  addi         s7, a1, -897
                  andi         t2, a1, -59
                  lui          s8, 782284
                  bltu         t4, a3, 609f
                  ori          a2, s5, -865
                  auipc        s1, 943425
                  slt          a1, s2, a5
                  sub          s7, ra, s5
                  sll          a5, s1, gp
598:              blt          a0, tp, 600f
                  sra          t5, t6, s6
600:              blt          s6, t4, 611f
                  xori         s9, s4, -472
                  sltu         a4, s6, sp
                  auipc        a5, 1037143
                  srli         tp, ra, 9
                  or           a4, s10, s7
                  blt          s7, t3, 609f
                  bge          t5, t5, 608f
608:              sltu         ra, a5, gp
609:              srl          s9, s6, ra
                  nop
611:              andi         s1, t3, 352
                  sltu         s5, s5, s0
                  auipc        s9, 893447
                  sub          zero, s9, a3
                  srai         s2, a6, 3
                  slti         a5, s4, -89
                  sltiu        a4, s3, 1247
                  bgeu         a4, gp, 622f
                  addi         s9, zero, -548
                  sltiu        s9, t4, 1937
                  nop
622:              nop
                  bge          t0, a1, 640f
                  sll          a5, tp, t0
                  srl          tp, s6, s1
                  sra          a4, t0, t4
                  srli         tp, s2, 13
                  sltu         t5, s6, tp
                  bltu         t1, s7, 633f
                  sltiu        s6, sp, 308
                  bltu         s3, s3, 640f
                  sra          a3, ra, s7
633:              srli         a2, a6, 4
                  andi         a6, s3, -1740
                  lui          ra, 823747
                  xor          s7, s4, s1
                  srli         a5, t5, 15
                  sltiu        gp, s3, -1678
                  beq          s2, s8, 645f
640:              addi         s6, sp, 1040
                  bgeu         s0, s6, 652f
                  ori          sp, s2, 203
                  srl          s6, tp, a4
                  addi         gp, s6, -540
645:              addi         sp, s3, 1496
                  sll          a1, s1, a3
                  sltiu        t3, s5, -405
                  add          s9, t4, s7
                  sub          gp, ra, s0
                  bne          ra, s9, 662f
                  bge          a6, s5, 652f
652:              nop
                  xor          s8, t0, t0
                  beq          a3, t2, 668f
                  beq          t1, a7, 667f
                  sltiu        a3, tp, 955
                  slt          a0, t2, a6
                  sll          gp, t3, s2
                  lui          t5, 556882
                  bge          t0, s0, 662f
                  xor          s2, t6, t5
662:              bne          s10, gp, 681f
                  addi         s9, ra, 1790
                  bgeu         s0, s3, 672f
                  slti         s6, a4, -1952
                  and          a4, a2, s11
667:              bge          a5, s0, 684f
668:              srl          t4, s5, a2
                  xori         s1, a0, -3
                  slt          t2, t5, t5
                  or           tp, a7, gp
672:              srli         s8, s10, 18
                  sub          gp, s4, t5
                  ori          s9, a1, 902
                  xor          s9, sp, a5
                  lui          sp, 208414
                  slt          s1, a6, s3
                  and          a4, t2, s5
                  sltiu        t3, s5, 1086
                  sltiu        t0, s2, -450
681:              bltu         a0, s2, 698f
                  blt          t2, a4, 690f
                  bge          tp, t1, 693f
684:              bltu         t4, s1, 685f
685:              lui          a4, 155081
                  xor          t6, a1, s0
                  sltu         sp, s8, t1
                  slli         s5, a2, 25
                  xor          t3, sp, s2
690:              ori          a4, t0, -1092
                  ori          t0, a2, -779
                  blt          t4, s11, 706f
693:              beq          t5, s10, 701f
                  bne          a5, a3, 712f
                  sll          ra, s9, s10
                  blt          a3, s2, 699f
                  andi         a6, a0, 2040
698:              xor          s2, t3, t2
699:              bge          t6, a7, 716f
                  bltu         t6, s7, 717f
701:              bgeu         s4, a6, 720f
                  xori         a2, s5, 908
                  sltu         gp, s11, t1
                  slt          s8, t0, sp
                  nop
706:              beq          t1, s3, 709f
                  sub          t1, t0, s2
                  bltu         s9, t3, 725f
709:              srai         t1, zero, 27
                  sltiu        s2, t3, -1678
                  add          a5, s10, s9
712:              bne          s8, a1, 716f
                  xori         t0, sp, -1033
                  ori          s6, gp, -529
                  sltiu        s9, t1, -1957
716:              bge          t4, s4, 734f
717:              sltu         t2, a3, tp
                  andi         t1, s0, 430
                  srai         a0, a1, 6
720:              andi         a3, t2, -1869
                  beq          gp, s6, 727f
                  bne          gp, t1, 723f
723:              addi         t1, s1, -2011
                  srli         s10, a2, 2
725:              slti         sp, a6, 1765
                  sltiu        s6, t0, 1776
727:              addi         s10, a6, 1628
                  lui          t1, 652806
                  or           a3, s3, gp
                  srli         t3, s8, 6
                  sltiu        t0, s10, -1831
                  or           a4, t3, s11
                  sltiu        t0, s6, 1184
734:              or           t4, t3, tp
                  and          a2, a6, s1
                  and          zero, ra, ra
                  lui          sp, 485606
                  add          a1, t2, a1
                  blt          s10, s6, 747f
                  sra          t2, t5, zero
                  bgeu         a6, a3, 752f
                  blt          t5, a5, 759f
                  srl          a5, t6, a3
                  lui          s9, 220193
                  bgeu         a6, s11, 748f
                  lui          a0, 344186
747:              ori          s9, a6, 1338
748:              nop
                  bne          tp, a7, 751f
                  and          a0, a3, gp
751:              add          t0, t6, zero
752:              bgeu         a0, s6, 761f
                  bne          s10, gp, 761f
                  lui          ra, 601290
                  bltu         s7, t4, 772f
                  srl          s9, s5, sp
                  ori          s4, ra, -260
                  bne          s9, s2, 759f
759:              slti         t3, s2, -1266
                  bgeu         s7, tp, 774f
761:              srai         s7, a6, 27
                  ori          a6, sp, 1534
                  slti         s9, tp, 1994
                  sub          gp, s7, t3
                  beq          a5, tp, 773f
                  bne          s11, gp, 776f
                  slli         s9, a2, 24
                  slli         a1, s3, 0
                  nop
                  bgeu         t1, s3, 782f
                  lui          s6, 855781
772:              and          t1, a5, s6
773:              sra          s9, tp, t0
774:              sub          tp, s7, zero
                  xori         a2, gp, -1847
776:              nop
                  sltiu        a4, s5, 792
                  blt          t2, s4, 782f
                  slt          s6, gp, a3
                  slti         sp, s5, 394
                  bge          s3, sp, 784f
782:              and          t0, a3, s11
                  bgeu         sp, s3, 795f
784:              sub          s6, zero, a0
                  add          a2, t4, gp
                  bne          tp, t6, 800f
                  auipc        a5, 328637
                  or           t1, a4, s7
                  and          t3, a3, a7
                  srl          s5, t3, tp
                  beq          a3, s1, 808f
                  andi         a4, t5, 923
                  or           tp, a1, zero
                  lui          s5, 983249
795:              sra          t2, s10, s11
                  bgeu         s11, a4, 798f
                  srai         s2, s4, 24
798:              sra          a1, s6, s6
                  sll          a6, s0, t3
800:              lui          s8, 649705
                  srai         a1, a5, 26
                  lui          t5, 175750
                  sltiu        a4, a2, -927
                  add          a4, s9, a3
                  srli         s5, t6, 8
                  lui          s1, 846741
                  andi         t1, t1, -1889
808:              lui          a5, 796994
                  add          t4, s7, t3
                  slli         t2, tp, 27
                  bne          a2, t4, 829f
                  srl          a2, t4, t3
                  nop
                  addi         s7, s10, 2014
                  and          s10, a5, t3
                  xori         t1, t1, 278
                  bltu         s11, a3, 828f
                  slt          a2, s10, tp
                  or           a0, a0, a1
                  slli         a6, a5, 16
                  beq          s3, t6, 822f
822:              bne          s10, s10, 831f
                  sltu         a5, s7, a0
                  bgeu         tp, s2, 826f
                  slti         t3, s9, -450
826:              slti         a1, a2, -26
                  blt          s9, t6, 830f
828:              andi         s8, a2, -1065
829:              andi         s1, t2, -1249
830:              addi         s4, t5, -446
831:              sll          t5, a0, t6
                  sltu         s9, s1, s7
                  sltu         a6, s8, a3
                  blt          s11, t3, 851f
                  bgeu         s11, sp, 837f
                  andi         s6, s4, -1513
837:              nop
                  sra          s0, ra, s4
                  andi         s8, s7, -1005
                  blt          t4, sp, 844f
                  sltiu        tp, s10, -47
                  add          a6, s1, s5
                  xori         s10, s0, -1892
844:              xori         t4, ra, -92
                  sll          s9, s0, a6
                  sra          tp, t2, a5
                  bltu         a4, a7, 848f
848:              sltu         a3, tp, t2
                  lui          s6, 476864
                  sltiu        a5, t2, -2030
851:              sltu         s6, s1, t4
                  ori          a5, t0, 1332
                  srli         s0, zero, 22
                  or           s2, zero, t1
                  slli         a4, s0, 8
                  slti         s9, s8, 1898
                  sltiu        a4, s7, 265
                  bgeu         zero, s6, 869f
                  andi         s1, s9, 1991
                  sll          a4, s3, sp
                  srli         s1, ra, 19
                  bge          a5, t6, 876f
                  slli         a1, gp, 19
                  srli         a0, a5, 17
                  sll          t0, a1, s6
                  ori          s1, t4, -1075
                  beq          s9, zero, 885f
                  or           t3, t1, a5
869:              srai         sp, a2, 30
                  beq          s11, gp, 887f
                  srl          s0, t5, t0
                  sltiu        t0, ra, -1977
                  sub          a3, t2, a1
                  auipc        gp, 316659
                  sub          t0, t2, s10
876:              slti         t4, s1, 1412
                  and          a1, s5, s4
                  sll          s8, s11, s7
                  beq          s3, a5, 893f
                  add          a4, s5, zero
                  or           tp, t2, a7
                  and          t6, a4, s5
                  slt          t5, sp, s8
                  srli         tp, s3, 25
885:              bne          s4, ra, 888f
                  bge          s10, a1, 897f
887:              sra          t1, tp, s0
888:              auipc        a0, 847867
                  xor          a6, a1, s2
                  sub          a4, a4, s0
                  bltu         s8, t1, 903f
                  add          s1, s6, t6
893:              bge          t3, s7, 905f
                  or           s8, t3, s4
                  srli         s8, s3, 25
                  andi         a5, s3, 952
897:              srai         a6, tp, 11
                  lui          t2, 826488
                  bltu         a7, s7, 907f
                  add          tp, t2, s3
                  nop
                  addi         t3, a5, -244
903:              bge          s8, s8, 920f
                  sltiu        t0, ra, 779
905:              add          a3, t6, s8
                  auipc        t5, 505517
907:              bge          s4, a2, 924f
                  sltiu        s8, gp, 1626
                  bge          a2, s0, 917f
                  bltu         tp, a5, 911f
911:              bne          a6, t5, 917f
                  blt          s10, s9, 931f
                  andi         s4, s3, -1308
                  beq          s2, t2, 932f
                  sub          t0, a1, s3
                  auipc        s10, 981949
917:              add          t5, s9, a1
                  xori         s1, s1, -527
                  slli         a3, s9, 27
920:              slt          s10, s2, s8
                  sltu         s7, t2, s11
                  lui          a6, 688328
                  auipc        t2, 207721
924:              bgeu         a7, t2, 927f
                  andi         a6, t3, -495
                  and          s1, s11, a7
927:              beq          s5, zero, 928f
928:              add          ra, s9, a0
                  sub          a6, a5, t3
                  ori          a6, a1, 1544
931:              sll          a2, s10, t3
sub_5_6:          jal          ra, 10f
0:                jal          ra, 16f
1:                jal          ra, 27f
2:                jal          t0, 11f
3:                jal          s7, 2b
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          tp, 19f
7:                jal          t1, 14f
8:                jal          ra, 17f
9:                jal          t1, 4b
10:               jal          a2, 13f
11:               jal          t1, 15f
12:               jal          t0, 24f
13:               jal          ra, 8b
14:               jal          ra, 22f
15:               jal          ra, 18f
16:               jal          ra, 9b
17:               jal          gp, 21f
18:               jal          t1, 0b
19:               jal          ra, 23f
20:               jal          t1, 26f
21:               jal          ra, 20b
22:               jal          s6, 25f
23:               jal          ra, 3b
24:               jal          ra, 1b
25:               jal          t1, 5b
26:               jal          t1, 7b
27:               srai         s9, t5, 30
932:              bge          a4, t1, 949f
                  xori         a1, s1, 408
                  add          t5, s4, a0
                  bgeu         s8, a7, 945f
                  nop
                  srl          t4, t0, s5
                  blt          t1, t2, 942f
                  sll          s4, sp, s7
                  add          t6, a0, t4
                  auipc        a4, 174340
942:              sltiu        s10, a5, 1099
                  sra          gp, zero, t3
                  xor          a0, s5, sp
945:              blt          zero, s3, 953f
                  auipc        t5, 31796
                  bge          s7, zero, 961f
                  xor          s6, s3, s2
949:              addi         t4, t3, 789
                  and          t6, s2, t1
                  lui          a6, 594308
sub_5_18:         jal          ra, 12f
0:                jal          t1, 7f
1:                jal          t0, 14f
2:                jal          t1, 15f
3:                jal          ra, 8f
4:                jal          ra, 23f
5:                jal          a1, 2b
6:                jal          ra, 18f
7:                jal          ra, 26f
8:                jal          gp, 16f
9:                jal          t5, 4b
10:               jal          ra, 5b
11:               jal          t1, 20f
12:               jal          ra, 25f
13:               jal          t5, 19f
14:               jal          ra, 22f
15:               jal          ra, 1b
16:               jal          ra, 21f
17:               jal          ra, 29f
18:               jal          gp, 0b
19:               jal          ra, 17b
20:               jal          ra, 9b
21:               jal          s6, 10b
22:               jal          ra, 11b
23:               jal          ra, 6b
24:               jal          t1, 3b
25:               jal          ra, 24b
26:               jal          ra, 27f
27:               jal          t1, 28f
28:               jal          ra, 13b
29:               add          a4, t0, s11
                  xor          t2, s6, s11
953:              srai         ra, sp, 23
                  xori         s0, s10, 1503
                  or           a5, t0, a0
                  lui          tp, 125393
                  sltiu        zero, s5, -1823
                  addi         s9, a3, -1177
                  addi         t5, s11, 1818
                  add          s6, s11, s10
961:              sub          t4, a6, sp
                  slti         s4, a1, 1616
                  xor          zero, ra, a7
                  bgeu         t1, a0, 975f
                  srai         a1, s10, 2
                  andi         a6, t1, -758
                  beq          a4, a5, 979f
                  auipc        a6, 508793
                  and          ra, s3, s9
                  auipc        a2, 807401
                  srai         a2, a4, 0
                  sra          a1, s9, a2
                  add          a0, a2, s0
                  xori         s9, t5, -707
975:              or           t4, a5, a3
                  auipc        t0, 1047152
                  slli         a6, a1, 5
                  sll          a5, gp, t3
979:              sltiu        s2, s8, 684
                  sll          t3, a7, a3
                  sra          s9, s3, t1
                  beq          s1, s3, 999f
                  sltiu        s4, a6, -345
                  srli         tp, a2, 20
                  xor          s6, a4, t3
                  bgeu         a6, a0, 994f
                  sll          s5, s6, gp
                  bge          t6, t4, 1000f
                  srli         t4, a0, 18
                  and          a2, s10, a7
                  or           s9, a2, s3
                  bltu         s5, s10, 998f
                  sltu         s2, s7, tp
994:              addi         s8, tp, 186
                  blt          s10, tp, 1012f
                  addi         s9, s3, 1803
                  bne          s9, s2, 998f
998:              slt          sp, s3, t3
999:              bge          a5, a6, 1007f
1000:             sll          a5, s7, a0
                  bgeu         t4, sp, 1002f
1002:             or           s5, s9, a6
                  blt          gp, t5, 1006f
                  srai         sp, t3, 21
                  sll          s7, t1, t2
1006:             sra          a1, s0, t1
1007:             beq          s6, gp, 1018f
                  nop
                  addi         ra, a0, -1896
                  nop
                  blt          a5, sp, 1025f
1012:             or           a3, gp, a3
                  xori         t6, s4, -1476
                  beq          a6, a0, 1032f
                  bne          a4, s2, 1017f
                  auipc        a0, 260668
1017:             auipc        t5, 51798
1018:             sub          t2, a4, t5
                  and          gp, a6, s10
                  addi         t4, t3, 1785
                  bltu         zero, s1, 1025f
                  bge          s11, t3, 1039f
                  sltiu        s10, s3, 64
                  bge          t3, s5, 1034f
1025:             or           zero, sp, s8
                  nop
                  bltu         s6, a0, 1044f
                  add          s10, s5, s5
                  srai         a5, s2, 16
                  lui          t1, 431897
                  bne          t1, a6, 1032f
1032:             srli         sp, t2, 20
                  bltu         a6, a1, 1036f
1034:             sltiu        a4, s0, -856
                  bltu         a4, ra, 1038f
1036:             lui          s7, 137543
                  slli         s0, s10, 10
1038:             sltu         sp, a0, s1
1039:             auipc        ra, 797230
                  xori         a5, a0, -66
                  bge          s10, a3, 1050f
                  and          s5, t0, tp
                  lui          s10, 716356
1044:             nop
                  lui          a3, 309497
                  beq          s11, t5, 1048f
                  xori         gp, gp, 1989
1048:             blt          s10, s5, 1052f
                  bltu         a7, a4, 1066f
1050:             sltiu        zero, s1, 1145
                  slti         a6, s7, 93
1052:             add          a5, tp, s10
                  or           tp, a0, tp
                  sltu         a5, t0, a3
                  or           s8, sp, s11
                  beq          s2, t3, 1075f
                  auipc        t0, 615689
                  andi         t1, s4, 803
                  xor          t2, sp, ra
                  ori          t0, s7, 908
                  ori          t6, t0, -1454
                  blt          ra, s11, 1070f
                  sltu         s10, s1, s1
                  ori          a1, s9, -279
                  srli         a5, t5, 25
1066:             sltu         t0, a1, s5
                  addi         a4, s6, -169
                  beq          s10, t1, 1086f
                  slti         s7, a4, -960
1070:             bltu         gp, s11, 1078f
                  sra          t4, ra, zero
                  sub          s4, s8, a1
                  auipc        s5, 360615
                  bne          a2, s10, 1092f
1075:             add          ra, s6, t4
                  auipc        t3, 741074
                  srl          s4, t1, t0
1078:             nop
                  nop
                  bne          t6, a5, 1081f
1081:             xor          s5, s1, t1
                  ori          t6, a2, -1414
                  srl          s1, a2, t0
                  slli         t1, sp, 3
                  sltu         s9, a2, s6
1086:             sll          a0, t4, s0
                  andi         t6, t1, 598
                  nop
                  or           a1, s3, a5
                  beq          t1, zero, 1100f
                  blt          s7, s7, 1109f
1092:             sra          s9, t4, t2
                  nop
                  nop
                  srl          a5, s7, t6
                  srl          s2, t0, s3
                  beq          t0, a3, 1099f
                  sltiu        t3, s0, -1251
1099:             xori         ra, gp, -906
1100:             sltiu        t6, zero, 1478
                  sltu         s0, a3, t6
                  beq          a5, t2, 1119f
                  xor          s7, t2, s10
                  slt          sp, sp, t6
                  nop
                  and          a0, zero, tp
                  srai         gp, a1, 5
                  sll          zero, s0, s3
1109:             slti         s4, a3, -607
                  srli         s1, s9, 2
                  bgeu         s2, ra, 1122f
                  add          a3, s10, a7
                  xori         t6, a0, 24
                  sltu         ra, a0, t4
                  bltu         s3, s8, 1129f
                  or           s5, s3, s10
                  beq          a5, s8, 1121f
                  sltu         s7, t5, a5
1119:             blt          s9, s9, 1133f
                  xor          a3, a5, gp
1121:             bgeu         t0, s1, 1122f
1122:             sra          a2, s8, s3
                  auipc        s1, 106763
                  slli         s9, t2, 0
                  sltiu        s6, tp, 834
                  sra          t3, s7, t2
                  or           ra, s10, s7
                  blt          s0, s9, 1145f
1129:             bne          gp, tp, 1133f
                  lui          a3, 410771
                  sub          t5, s7, a4
                  sll          a1, t5, t4
1133:             or           s9, gp, tp
                  srl          s1, s3, s3
                  slli         t6, t2, 29
                  and          s9, s3, a4
                  blt          s2, s2, 1145f
                  sltiu        s0, t4, -287
                  nop
                  and          a6, a0, a2
                  add          a3, s4, a6
                  slli         s0, a6, 25
                  ori          gp, a4, -541
                  nop
1145:             and          s6, a7, t2
                  xor          t0, s10, a3
                  bgeu         tp, s5, 1149f
                  srli         t1, s8, 6
1149:             bgeu         a7, t5, 1161f
                  srai         a5, t0, 1
                  nop
                  blt          a6, s7, 1164f
                  sll          sp, sp, a4
                  bne          s1, zero, 1173f
                  slli         s9, s11, 2
                  xori         t1, tp, -980
                  nop
                  addi         zero, s1, -1835
                  lui          s7, 491910
                  slli         t2, s11, 11
1161:             srai         s2, zero, 16
                  srli         s4, s11, 31
                  lui          s0, 719457
1164:             slli         a1, a3, 31
                  slti         s2, a7, 1832
                  sltiu        s9, s3, 69
                  nop
                  blt          s3, a6, 1171f
                  blt          s9, s11, 1172f
                  slli         s7, s0, 15
1171:             bltu         s2, a6, 1172f
1172:             bltu         a1, a1, 1178f
1173:             and          s1, a4, a3
                  auipc        s2, 225802
                  xori         a5, a4, -1503
                  xori         tp, t6, -128
                  andi         s2, s8, -1935
1178:             xori         a0, t5, 76
                  xori         s5, t0, 1714
                  xori         s7, s11, -566
                  sll          a1, s0, s6
                  ori          s2, s0, 282
                  slt          s2, a4, s9
                  slti         t3, s4, -874
                  beq          t4, s2, 1202f
                  nop
                  sra          a5, s4, s5
                  slti         gp, ra, 575
                  or           s10, s3, s4
                  xor          a3, a2, t6
                  srli         a2, t3, 13
                  bne          a1, a1, 1209f
                  xor          sp, s4, a0
                  sub          s8, sp, t3
                  add          t1, sp, a1
                  bgeu         t4, a0, 1205f
                  bne          a7, a5, 1205f
                  nop
                  beq          s5, zero, 1216f
                  nop
                  srli         zero, s6, 26
1202:             blt          zero, s7, 1213f
                  add          sp, t4, t5
                  srai         zero, t3, 30
1205:             ori          t4, t1, 1778
                  add          t1, s11, a5
                  slli         a5, s4, 16
                  srai         s6, ra, 8
1209:             xor          a1, a6, s1
                  bltu         a2, t6, 1213f
                  ori          a2, a3, 80
                  auipc        a6, 1017259
1213:             srai         s8, t2, 27
                  bge          t6, s9, 1218f
                  srl          s7, t2, s6
1216:             slli         s4, s3, 7
                  slt          a2, ra, gp
1218:             sltiu        s2, t4, 1651
                  blt          s2, tp, 1222f
                  bge          s5, s1, 1229f
                  lui          t0, 216818
1222:             sll          t3, a0, s11
                  auipc        t0, 859253
                  nop
                  sll          a3, t4, s11
sub_5_0:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          ra, 17f
3:                jal          s2, 20f
4:                jal          ra, 6f
5:                jal          t5, 3b
6:                jal          sp, 19f
7:                jal          ra, 10f
8:                jal          s7, 14f
9:                jal          ra, 1b
10:               jal          t1, 11f
11:               jal          ra, 5b
12:               jal          tp, 4b
13:               jal          ra, 8b
14:               jal          ra, 2b
15:               jal          ra, 16f
16:               jal          a4, 18f
17:               jal          ra, 21f
18:               jal          t1, 13b
19:               jal          ra, 9b
20:               jal          ra, 15b
21:               xor          a6, s3, a1
                  bgeu         a2, a6, 1243f
                  slt          s9, t3, a6
                  xor          a0, s4, a7
1229:             srli         sp, t6, 30
                  bgeu         s1, s10, 1247f
                  sub          sp, a1, zero
                  slti         a6, s6, -1357
                  addi         a4, t5, 861
                  srli         a2, t5, 31
                  blt          a3, s9, 1245f
                  beq          tp, s9, 1237f
1237:             blt          s4, t6, 1251f
                  slli         a1, s2, 10
                  sll          zero, a7, a7
                  sra          s8, s4, a6
                  bne          tp, s3, 1258f
                  beq          s3, s5, 1245f
1243:             add          a5, t4, s8
                  and          s7, a7, s10
1245:             and          tp, s2, t1
                  lui          a0, 353850
1247:             xori         gp, s8, -571
                  sltiu        gp, sp, -865
                  auipc        t2, 323812
                  srl          sp, t3, t0
1251:             xor          t2, a5, a1
                  auipc        t2, 136997
                  lui          a5, 52332
                  blt          s10, s1, 1268f
                  xor          s4, t3, s5
                  xori         a2, tp, 1094
                  slli         s0, s10, 23
1258:             slli         ra, a5, 8
                  srai         a4, t2, 17
                  blt          sp, t2, 1268f
                  xor          s1, ra, a4
                  sltu         t3, sp, t1
                  addi         s2, s9, 397
                  slli         a1, a6, 8
                  sll          a5, s1, a2
                  slt          sp, s4, gp
                  blt          t5, t5, 1273f
1268:             slti         s4, s3, 782
                  lui          a3, 515828
                  xori         t2, a3, -923
                  bge          s11, s4, 1273f
                  sltiu        s2, a1, 1492
1273:             slti         s1, a1, -510
                  slli         t4, s4, 3
                  and          s6, tp, t0
                  xori         s6, t2, 197
                  sub          t1, a6, s11
                  sub          t2, a2, a0
                  or           s8, s11, s8
                  sltu         t0, s11, a7
                  bge          t1, s2, 1286f
                  slt          a4, t0, s4
                  bne          t2, t4, 1284f
1284:             sra          t2, a5, s11
                  xori         sp, a3, -780
1286:             or           a4, t5, a7
                  srli         gp, a5, 20
                  slli         t4, sp, 30
                  slt          t1, s9, a4
                  sll          t5, zero, t6
                  or           zero, t6, s3
                  lw           ra, 4(s3)
                  add          t6, a1, s0
                  lui          t0, 758061
                  addi         s3, s3, 48
                  andi         a6, a3, -928
1851:             addi x31, x1, 1
1851:             jalr x31, x31, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x27, x19, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x11, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x11, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x11, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x11, x21, ecall_handler
                  li x21, 0x1
                  beq x11, x21, instr_fault_handler
                  li x21, 0x5
                  beq x11, x21, load_fault_handler
                  li x21, 0x7
                  beq x11, x21, store_fault_handler
                  li x21, 0xc
                  beq x11, x21, pt_fault_handler
                  li x21, 0xd
                  beq x11, x21, pt_fault_handler
                  li x21, 0xf
                  beq x11, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x19, x27, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
