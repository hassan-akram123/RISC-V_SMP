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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x4
                  li x1, 0x80000000
                  li x2, 0x94cf6aea
                  li x3, 0xf8172f0b
                  li x4, 0x54ed37d
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x70e79963
                  li x10, 0x8
                  li x11, 0x27fc5bdb
                  li x12, 0x80000000
                  li x14, 0x7
                  li x15, 0xfaa136bd
                  li x16, 0x1968c192
                  li x17, 0x80000000
                  li x18, 0x633f45ca
                  li x19, 0xb7a2115
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xd
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xc
                  li x26, 0xee805957
                  li x27, 0x0
                  li x28, 0x1
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x2f97b790
                  la x5, user_stack_end
main:             ori          tp, a4, -1335
                  or           s1, gp, a5
                  sra          s3, s7, s1
                  sltiu        a2, s8, -173
                  la           a1, sub_4
                  sltu         s1, sp, zero
                  and          s4, gp, s1
                  xori         a5, t3, -167
                  addi         a1, a1, 634
                  and          a2, s5, s9
                  sub          s2, s8, ra
                  lui          a7, 588489
main_j3:          jalr         s4, a1, -634 #jump main -> sub_4
                  sll          s2, s3, s3
                  la           a5, sub_1
                  addi         a5, a5, -545
                  bge          s9, s4, main_j4 #branch to jump instr
                  slli         s2, a6, 31
                  sltu         zero, s9, a5
                  and          a1, s6, a5
                  slti         a2, s1, 960
main_j4:          jalr         s4, a5, 546 #jump main -> sub_1
                  xori         gp, s6, 1322
                  and          sp, a4, s8
                  la           t1, sub_2
                  sra          s9, t5, tp
                  auipc        s4, 632283
                  addi         t1, t1, -370
                  auipc        a7, 174648
                  bgeu         a7, a6, main_j5 #branch to jump instr
                  xor          a1, t0, t1
                  nop
main_j5:          jalr         s4, t1, 371 #jump main -> sub_2
main_4:           jal          s4, 5f
0:                jal          ra, 19f
1:                jal          s0, 13f
2:                jal          t1, 22f
3:                jal          s8, 20f
4:                jal          ra, 12f
5:                jal          ra, 0b
6:                jal          ra, 1b
7:                jal          t1, 28f
8:                jal          s6, 16f
9:                jal          t2, 3b
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               jal          ra, 29f
13:               jal          s7, 18f
14:               jal          s6, 2b
15:               jal          s7, 24f
16:               jal          ra, 4b
17:               jal          gp, 25f
18:               jal          ra, 27f
19:               jal          ra, 14b
20:               jal          ra, 17b
21:               jal          ra, 11b
22:               jal          ra, 23f
23:               jal          s11, 15b
24:               jal          a4, 26f
25:               jal          s0, 10b
26:               jal          ra, 6b
27:               jal          ra, 9b
28:               jal          ra, 21b
29:               srai         t6, a4, 28
main_5:           jal          s4, 11f
0:                jal          t1, 18f
1:                jal          gp, 17f
2:                jal          t1, 13f
3:                jal          ra, 9f
4:                jal          t1, 15f
5:                jal          t2, 6f
6:                jal          tp, 3b
7:                jal          ra, 4b
8:                jal          gp, 10f
9:                jal          ra, 21f
10:               jal          ra, 12f
11:               jal          tp, 0b
12:               jal          t1, 16f
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          ra, 19f
16:               jal          ra, 14b
17:               jal          t1, 20f
18:               jal          ra, 7b
19:               jal          tp, 8b
20:               jal          ra, 5b
21:               ori          s10, t3, -217
main_25:          jal          s4, 3f
0:                jal          s6, 13f
1:                jal          s8, 7f
2:                jal          t1, 18f
3:                jal          ra, 11f
4:                jal          a7, 5f
5:                jal          ra, 15f
6:                jal          sp, 16f
7:                jal          ra, 14f
8:                jal          tp, 2b
9:                jal          ra, 6b
10:               jal          a0, 9b
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          t6, 12b
14:               jal          gp, 17f
15:               jal          a1, 1b
16:               jal          tp, 4b
17:               jal          gp, 19f
18:               jal          t1, 10b
19:               sub          s1, s6, s9
main_7:           jal          s4, 10f
0:                jal          ra, 6f
1:                jal          s8, 0b
2:                jal          a4, 12f
3:                jal          ra, 13f
4:                jal          ra, 2b
5:                jal          s6, 11f
6:                jal          s3, 15f
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          t1, 1b
10:               jal          t1, 14f
11:               jal          ra, 8b
12:               jal          ra, 3b
13:               jal          ra, 9b
14:               jal          ra, 5b
15:               sub          a2, a4, t4
main_1:           jal          s4, 6f
0:                jal          a5, 13f
1:                jal          ra, 2f
2:                jal          sp, 11f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          gp, 5b
7:                jal          ra, 10f
8:                jal          tp, 0b
9:                jal          t1, 8b
10:               jal          ra, 1b
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               add          tp, tp, s9
main_14:          jal          s4, 15f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          sp, 7f
4:                jal          ra, 16f
5:                jal          t1, 0b
6:                jal          ra, 18f
7:                jal          s10, 13f
8:                jal          t1, 19f
9:                jal          gp, 8b
10:               jal          ra, 6b
11:               jal          t6, 14f
12:               jal          sp, 5b
13:               jal          ra, 9b
14:               jal          s0, 10b
15:               jal          ra, 1b
16:               jal          ra, 17f
17:               jal          t1, 11b
18:               jal          ra, 12b
19:               sll          s5, s8, zero
main_24:          jal          s4, 1f
0:                jal          sp, 8f
1:                jal          ra, 3f
2:                jal          s10, 4f
3:                jal          ra, 5f
4:                jal          ra, 9f
5:                jal          ra, 12f
6:                jal          ra, 2b
7:                jal          sp, 11f
8:                jal          ra, 6b
9:                jal          sp, 13f
10:               jal          t1, 14f
11:               jal          ra, 10b
12:               jal          ra, 0b
13:               jal          ra, 7b
14:               andi         t5, t3, 1915
main_9:           jal          s4, 0f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          sp, 1b
3:                jal          ra, 20f
4:                jal          s8, 8f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          ra, 19f
8:                jal          ra, 12f
9:                jal          a1, 17f
10:               jal          ra, 5b
11:               jal          ra, 16f
12:               jal          t1, 13f
13:               jal          s7, 9b
14:               jal          s11, 10b
15:               jal          ra, 18f
16:               jal          ra, 14b
17:               jal          t1, 11b
18:               jal          t1, 3b
19:               jal          ra, 15b
20:               xori         zero, s6, 718
main_22:          jal          s4, 8f
0:                jal          s2, 1f
1:                jal          gp, 2f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          sp, 13f
7:                jal          gp, 14f
8:                jal          ra, 10f
9:                jal          t1, 3b
10:               jal          ra, 0b
11:               jal          ra, 7b
12:               jal          s3, 16f
13:               jal          ra, 9b
14:               jal          ra, 15f
15:               jal          ra, 4b
16:               slt          a2, s4, s6
main_17:          jal          s4, 6f
0:                jal          s11, 29f
1:                jal          ra, 14f
2:                jal          ra, 15f
3:                jal          t1, 19f
4:                jal          sp, 2b
5:                jal          t5, 0b
6:                jal          ra, 10f
7:                jal          t1, 23f
8:                jal          t1, 30f
9:                jal          t1, 28f
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          ra, 27f
13:               jal          ra, 16f
14:               jal          t6, 25f
15:               jal          t1, 22f
16:               jal          ra, 20f
17:               jal          s4, 11b
18:               jal          ra, 26f
19:               jal          ra, 8b
20:               jal          ra, 18b
21:               jal          ra, 24f
22:               jal          ra, 1b
23:               jal          ra, 3b
24:               jal          s2, 4b
25:               jal          t1, 5b
26:               jal          ra, 12b
27:               jal          ra, 21b
28:               jal          ra, 17b
29:               jal          ra, 7b
30:               and          s7, a7, gp
main_23:          jal          s4, 12f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          ra, 1b
3:                jal          sp, 15f
4:                jal          t4, 17f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          ra, 20f
8:                jal          s0, 22f
9:                jal          ra, 2b
10:               jal          a7, 14f
11:               jal          ra, 10b
12:               jal          ra, 21f
13:               jal          ra, 4b
14:               jal          sp, 18f
15:               jal          s0, 11b
16:               jal          s1, 5b
17:               jal          ra, 7b
18:               jal          ra, 0b
19:               jal          ra, 6b
20:               jal          ra, 23f
21:               jal          ra, 16b
22:               jal          ra, 19b
23:               slt          t5, s1, s0
main_16:          jal          s4, 9f
0:                jal          t1, 15f
1:                jal          ra, 6f
2:                jal          s10, 16f
3:                jal          gp, 17f
4:                jal          t1, 12f
5:                jal          tp, 7f
6:                jal          ra, 5b
7:                jal          ra, 14f
8:                jal          a0, 11f
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          t1, 0b
12:               jal          a1, 3b
13:               jal          ra, 1b
14:               jal          ra, 18f
15:               jal          ra, 13b
16:               jal          ra, 8b
17:               jal          ra, 2b
18:               xori         a0, t6, 933
main_21:          jal          s4, 4f
0:                jal          a0, 3f
1:                jal          ra, 10f
2:                jal          ra, 27f
3:                jal          ra, 2b
4:                jal          t1, 19f
5:                jal          sp, 18f
6:                jal          t1, 12f
7:                jal          ra, 26f
8:                jal          a6, 15f
9:                jal          tp, 21f
10:               jal          ra, 7b
11:               jal          ra, 28f
12:               jal          t1, 1b
13:               jal          a6, 14f
14:               jal          ra, 30f
15:               jal          t5, 9b
16:               jal          t1, 22f
17:               jal          ra, 25f
18:               jal          ra, 6b
19:               jal          ra, 16b
20:               jal          t6, 5b
21:               jal          ra, 29f
22:               jal          ra, 11b
23:               jal          t1, 8b
24:               jal          ra, 20b
25:               jal          t1, 13b
26:               jal          ra, 17b
27:               jal          ra, 24b
28:               jal          ra, 23b
29:               jal          ra, 0b
30:               sub          ra, a6, t1
main_18:          jal          s4, 8f
0:                jal          ra, 6f
1:                jal          ra, 12f
2:                jal          ra, 4f
3:                jal          t1, 11f
4:                jal          ra, 9f
5:                jal          t1, 14f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          s5, 13f
12:               jal          ra, 5b
13:               jal          t1, 10b
14:               sub          s5, s7, a7
main_19:          jal          s4, 1f
0:                jal          t1, 21f
1:                jal          s0, 0b
2:                jal          s6, 27f
3:                jal          s8, 9f
4:                jal          sp, 14f
5:                jal          ra, 16f
6:                jal          t1, 2b
7:                jal          ra, 15f
8:                jal          ra, 3b
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          t1, 12f
12:               jal          ra, 19f
13:               jal          t1, 5b
14:               jal          ra, 8b
15:               jal          ra, 22f
16:               jal          ra, 20f
17:               jal          tp, 24f
18:               jal          s10, 25f
19:               jal          t1, 6b
20:               jal          a7, 10b
21:               jal          ra, 13b
22:               jal          ra, 28f
23:               jal          ra, 4b
24:               jal          ra, 26f
25:               jal          sp, 11b
26:               jal          ra, 23b
27:               jal          ra, 7b
28:               srl          s9, t6, s7
main_20:          jal          s4, 12f
0:                jal          ra, 9f
1:                jal          s0, 2f
2:                jal          sp, 7f
3:                jal          ra, 6f
4:                jal          t1, 0b
5:                jal          a6, 8f
6:                jal          ra, 15f
7:                jal          ra, 14f
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          s7, 13f
11:               jal          a4, 1b
12:               jal          ra, 10b
13:               jal          ra, 5b
14:               jal          tp, 4b
15:               and          s11, s4, t1
main_10:          jal          s4, 14f
0:                jal          ra, 21f
1:                jal          tp, 4f
2:                jal          ra, 20f
3:                jal          a1, 15f
4:                jal          t1, 0b
5:                jal          ra, 10f
6:                jal          ra, 19f
7:                jal          ra, 11f
8:                jal          ra, 12f
9:                jal          ra, 17f
10:               jal          ra, 9b
11:               jal          gp, 8b
12:               jal          t4, 13f
13:               jal          s2, 6b
14:               jal          ra, 3b
15:               jal          a2, 5b
16:               jal          ra, 2b
17:               jal          ra, 7b
18:               jal          sp, 16b
19:               jal          t1, 18b
20:               jal          sp, 1b
21:               slt          s5, s6, t2
main_15:          jal          s4, 6f
0:                jal          s7, 2f
1:                jal          s11, 16f
2:                jal          t1, 1b
3:                jal          s11, 10f
4:                jal          gp, 7f
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          t1, 3b
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          ra, 17f
12:               jal          sp, 18f
13:               jal          a1, 15f
14:               jal          t1, 5b
15:               jal          s11, 0b
16:               jal          gp, 14b
17:               jal          s10, 13b
18:               ori          sp, s0, -1340
main_13:          jal          s4, 5f
0:                jal          gp, 12f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          a1, 13f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          sp, 14f
8:                jal          ra, 1b
9:                jal          t4, 7b
10:               jal          ra, 2b
11:               jal          ra, 4b
12:               jal          ra, 6b
13:               jal          sp, 11b
14:               lui          sp, 785998
main_3:           jal          s4, 2f
0:                jal          a5, 16f
1:                jal          ra, 10f
2:                jal          s7, 13f
3:                jal          ra, 5f
4:                jal          ra, 18f
5:                jal          ra, 1b
6:                jal          t1, 15f
7:                jal          ra, 14f
8:                jal          t1, 20f
9:                jal          ra, 12f
10:               jal          ra, 0b
11:               jal          s5, 8b
12:               jal          s6, 6b
13:               jal          t1, 19f
14:               jal          s9, 11b
15:               jal          s9, 4b
16:               jal          t6, 9b
17:               jal          a6, 3b
18:               jal          t1, 7b
19:               jal          s4, 17b
20:               or           s7, s8, tp
main_6:           jal          s4, 14f
0:                jal          ra, 8f
1:                jal          t1, 22f
2:                jal          t1, 17f
3:                jal          a6, 21f
4:                jal          a2, 6f
5:                jal          ra, 10f
6:                jal          s5, 19f
7:                jal          ra, 2b
8:                jal          ra, 12f
9:                jal          t1, 23f
10:               jal          t1, 15f
11:               jal          a7, 4b
12:               jal          ra, 18f
13:               jal          ra, 0b
14:               jal          t1, 20f
15:               jal          ra, 13b
16:               jal          ra, 11b
17:               jal          ra, 1b
18:               jal          t1, 16b
19:               jal          ra, 3b
20:               jal          gp, 5b
21:               jal          ra, 9b
22:               jal          sp, 24f
23:               jal          ra, 7b
24:               or           s7, a6, a4
main_0:           jal          s4, 8f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          gp, 10f
3:                jal          t1, 7f
4:                jal          s10, 11f
5:                jal          ra, 2b
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          t1, 4b
10:               jal          a7, 1b
11:               sltiu        a1, ra, 624
main_26:          jal          s4, 9f
0:                jal          ra, 12f
1:                jal          ra, 13f
2:                jal          ra, 1b
3:                jal          t1, 8f
4:                jal          t1, 6f
5:                jal          ra, 10f
6:                jal          t1, 7f
7:                jal          ra, 3b
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          ra, 11f
11:               jal          t2, 4b
12:               jal          ra, 2b
13:               slt          s11, a0, t2
main_27:          jal          s4, 11f
0:                jal          s4, 1f
1:                jal          ra, 6f
2:                jal          t1, 3f
3:                jal          a4, 5f
4:                jal          ra, 13f
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          ra, 12f
8:                jal          ra, 16f
9:                jal          t1, 8b
10:               jal          ra, 9b
11:               jal          t1, 14f
12:               jal          ra, 15f
13:               jal          gp, 10b
14:               jal          gp, 0b
15:               jal          sp, 2b
16:               xor          a2, a7, zero
                  and          a6, gp, a1
                  beq          s0, a0, 17f
                  slti         s2, s4, -1802
                  bltu         a1, s9, 11f
                  slt          gp, a3, ra
                  srli         s4, ra, 31
                  add          s10, t6, t4
                  bne          s4, s6, 9f
                  slti         s2, t6, -436
9:                sra          a0, ra, s11
                  bltu         s11, t4, 17f
11:               xor          s9, a1, a5
                  sub          tp, s0, t1
                  ori          t4, ra, -1906
                  and          t6, t4, t1
                  nop
                  bne          a2, a6, 31f
17:               beq          zero, sp, 20f
                  sll          s8, a3, s6
                  xori         t4, a7, -533
20:               add          s6, s0, s2
                  slti         a2, sp, 835
                  bge          gp, s9, 36f
                  bge          s6, s5, 37f
                  add          a2, a0, ra
                  bltu         s2, a4, 41f
                  sra          s9, s8, t0
                  bltu         s7, s3, 36f
                  sra          a2, s9, a2
                  lui          s7, 835146
                  xor          a6, gp, ra
31:               add          s8, a2, tp
                  sltiu        s10, tp, 665
                  bne          a5, a7, 39f
                  slt          s9, s5, s6
                  sll          s6, s3, ra
36:               addi         a0, a2, -540
37:               srli         ra, ra, 19
                  addi         t4, s9, -1784
39:               slt          s10, a6, a7
                  add          a4, s7, s3
41:               sll          a7, t3, t6
                  nop
                  slti         s8, a6, 1419
                  xori         s7, t0, 576
                  and          s9, gp, s8
                  sltu         s8, a0, s11
                  ori          a5, s0, -82
                  addi         s6, ra, -244
                  sra          s6, s1, s2
                  slli         s6, tp, 31
                  andi         a5, a4, -962
                  ori          t4, s9, -1140
                  and          a5, a1, s6
                  or           t1, t0, t3
                  nop
                  slt          a4, a4, s10
                  bge          s11, t5, 70f
                  srli         a1, t1, 23
                  bgeu         a5, a3, 67f
                  bne          t0, t6, 77f
                  auipc        a6, 19894
                  xori         t4, s4, -1126
                  bgeu         a1, t4, 70f
                  slli         s7, a7, 15
                  slli         a7, s8, 29
                  slt          s11, s8, t3
67:               srli         a7, s5, 11
                  srai         a7, s8, 19
                  blt          a1, s8, 85f
70:               xori         a7, s0, 314
                  bgeu         a4, s9, 72f
72:               sll          s4, s6, s10
                  beq          s1, a0, 85f
                  or           s8, sp, t6
                  bltu         t6, s5, 82f
                  nop
77:               auipc        a0, 483647
                  srl          s5, a3, t1
                  sltu         a4, tp, t2
                  srl          zero, a1, t2
                  slti         s4, s11, 1170
82:               sltiu        a0, a0, 1813
                  slt          sp, s2, t6
                  beq          sp, sp, 85f
85:               or           s8, s4, sp
                  slti         a6, t2, -1070
                  auipc        a2, 566864
                  lui          t2, 923156
                  andi         s4, t0, 1268
                  beq          a7, s6, 105f
                  lui          a0, 415811
                  ori          a1, t4, -158
                  nop
                  xor          a7, a3, s9
                  xori         s1, a7, 1051
                  slt          a0, ra, sp
                  slti         t1, a5, 31
                  srli         s0, s8, 18
                  slti         s3, s11, -370
                  beq          s4, s9, 109f
                  lui          gp, 474470
                  bge          t2, s0, 114f
                  add          tp, t6, ra
                  nop
105:              nop
                  xori         gp, gp, -1368
                  ori          s4, s11, 796
                  bge          t3, a4, 122f
109:              srli         s0, s3, 19
                  srli         tp, t0, 29
                  sltu         zero, sp, a6
                  bge          a3, s0, 113f
113:              blt          s7, s6, 118f
114:              sub          ra, s0, s9
                  srl          s4, t6, t1
                  sub          s4, s8, s2
                  sub          s2, t0, s1
118:              beq          s7, s9, 129f
                  lui          s2, 63191
                  and          ra, zero, a6
                  sll          s8, a5, s1
122:              beq          a5, a6, 134f
                  nop
                  xori         s0, a1, 1811
                  beq          sp, t5, 139f
                  nop
                  beq          s6, a5, 147f
                  srli         s0, t6, 15
129:              addi         zero, s7, -525
                  bltu         sp, a5, 142f
                  slli         s3, t2, 15
                  slli         a1, zero, 25
                  add          s4, a2, tp
134:              add          s6, a5, zero
                  bge          a2, s9, 149f
                  xori         t6, t3, 27
                  lui          a1, 148709
                  addi         sp, t5, -329
139:              sub          s9, s6, t6
                  bgeu         s8, a1, 147f
                  andi         t4, t6, 1565
142:              slti         ra, a3, 1018
                  andi         s11, a0, -1307
                  lui          t6, 192660
                  beq          s2, s1, 161f
                  bne          s5, a5, 162f
147:              bltu         t5, a3, 160f
                  slt          a2, t1, gp
149:              sub          a7, a2, a2
                  ori          s0, t3, -1140
                  add          s9, a5, s0
                  bgeu         a2, s4, 164f
                  bne          t2, a0, 168f
                  sra          sp, t6, s7
                  addi         zero, t5, 599
                  sub          t2, s0, s0
                  sltu         zero, t4, a5
                  xori         t6, a5, 265
                  sltu         s10, a3, a7
160:              sltu         gp, t6, t3
161:              sltu         s4, tp, s3
162:              sltiu        sp, zero, -1905
                  and          ra, t3, s2
164:              blt          a7, s5, 178f
                  ori          sp, t6, 1438
                  bge          t6, a3, 175f
                  sltiu        s5, a1, -637
168:              slti         a7, t3, 1078
                  xori         s2, t6, 1739
                  xori         s9, s4, 848
                  slti         s8, a2, 341
                  addi         a7, a6, -1779
                  lui          a1, 619603
                  auipc        s1, 162
175:              bge          t5, a6, 181f
                  slt          t5, gp, tp
                  sll          s3, t6, zero
178:              add          zero, s6, tp
                  blt          t3, zero, 194f
                  srl          a7, a4, s1
181:              srli         t2, a4, 25
                  srli         s3, a1, 21
                  auipc        a0, 373382
                  ori          s8, s0, 1154
                  bge          t0, t3, 194f
                  auipc        tp, 338400
                  slt          a4, s6, sp
                  bltu         a0, s10, 195f
                  blt          t1, a5, 194f
                  srai         a0, t1, 13
                  bne          s6, tp, 198f
                  ori          tp, s6, -1108
                  or           a0, ra, s11
194:              srl          s7, t0, a2
195:              sltu         t6, s3, s2
                  bltu         a7, s0, 197f
197:              xor          s7, zero, s2
198:              xor          s3, zero, a2
                  sll          s1, s10, a1
                  srai         s5, s0, 27
                  sra          s0, t3, s0
                  sub          s10, t5, a3
                  sltiu        s0, s0, 18
                  or           a6, sp, s5
                  beq          ra, s8, 216f
                  lui          s4, 318341
                  lui          zero, 104372
                  sub          s8, gp, a6
                  srl          s6, t4, s3
                  addi         s7, a2, -1870
                  and          s0, a4, s11
                  bgeu         s4, a7, 213f
213:              sltiu        a2, a6, -906
                  srl          t5, t0, t0
                  srli         s0, a1, 16
216:              sub          gp, t5, t3
                  lui          t4, 199684
                  auipc        t2, 548287
                  or           s2, a4, s3
                  slti         a4, a3, -1714
                  bgeu         a2, a6, 229f
                  auipc        t2, 687909
                  or           t6, a3, a2
                  bgeu         t3, s9, 232f
                  lui          sp, 33353
                  andi         s6, s10, 827
                  nop
                  or           a6, t1, s9
229:              andi         s10, tp, 1322
                  srl          s6, a5, t3
                  slli         gp, tp, 6
232:              slli         s5, t4, 17
                  slli         s1, s4, 26
                  bne          zero, t0, 237f
                  beq          s0, a6, 249f
                  nop
237:              sltu         s2, s3, s5
                  xor          a5, s2, s4
                  srl          zero, sp, tp
                  ori          s5, s9, -1360
                  or           s5, a6, s8
                  sltiu        t5, zero, 303
                  beq          sp, sp, 244f
244:              beq          s4, a4, 260f
                  blt          t2, t5, 259f
                  lui          s2, 300927
                  bge          s8, ra, 264f
                  bltu         a7, s4, 260f
249:              srl          s5, t4, t3
                  nop
                  xori         t4, a7, 351
                  sltu         a6, t0, s6
                  beq          s8, a1, 273f
                  bge          s2, sp, 256f
                  blt          a6, zero, 271f
256:              nop
                  blt          s5, a0, 271f
                  srli         t2, a5, 9
259:              blt          s9, a3, 260f
260:              and          t6, s5, s3
                  lui          s8, 161180
                  srai         ra, ra, 0
                  slti         t1, a6, -450
264:              ori          t2, t4, 218
                  sra          a2, s0, a4
                  sltiu        a6, s10, -896
                  ori          gp, t3, -1474
                  srli         a2, t2, 17
                  nop
                  bge          s6, s0, 287f
271:              add          s2, tp, s6
                  lui          t5, 1046102
273:              or           t5, a2, a2
                  sra          t2, s11, t1
                  nop
                  andi         a1, a4, -983
                  auipc        s0, 83123
                  srai         t5, s3, 3
                  bge          a0, a3, 291f
                  ori          zero, s2, -998
                  sra          sp, s11, s10
                  sltiu        t6, a4, -1468
                  andi         a5, a7, 312
                  lui          s4, 1043919
                  andi         s4, t0, -1473
                  and          a7, t5, s8
287:              slt          a4, a7, a0
                  sltiu        tp, s2, 1374
                  xor          s6, a6, a1
                  andi         t4, s10, -601
291:              xor          t5, a3, t3
                  srl          s8, t0, a4
                  slt          a5, s9, s5
                  ori          s9, s9, -1971
                  srl          a5, s4, t0
                  ori          s9, t1, -1731
                  slli         t6, t0, 5
                  slt          s3, a5, s2
                  bne          s3, a6, 308f
                  bgeu         t0, s2, 320f
                  slt          t4, t5, s9
                  bge          a4, t5, 318f
                  xor          s9, s11, a3
                  sltiu        t5, s5, -1684
                  nop
                  lui          s5, 640348
                  srai         s10, a6, 4
308:              sltiu        t5, a0, 1984
                  ori          tp, t0, 1559
                  sltu         a7, t1, s1
                  addi         t6, t0, -594
                  srli         a4, sp, 4
                  nop
                  auipc        t4, 229423
                  nop
                  bltu         ra, s1, 330f
                  add          s2, s5, s0
318:              addi         t1, t5, -438
                  addi         a6, s9, -778
320:              and          s0, s7, s8
                  bne          s11, t3, 328f
                  auipc        t5, 979215
                  beq          a7, tp, 334f
                  bgeu         a4, t2, 332f
                  nop
                  srai         s2, sp, 29
                  bne          t2, sp, 328f
328:              blt          s1, s9, 343f
                  and          s1, a1, tp
330:              sll          t4, s3, s11
                  andi         tp, t3, 577
332:              blt          tp, tp, 346f
                  andi         zero, s1, -420
334:              andi         s2, s11, 1789
                  addi         a5, a1, 496
                  sra          t2, zero, t6
                  srl          s7, s0, t2
                  sub          t6, s11, s2
                  la           s4, sub_5
                  addi         s4, s4, -540
                  or           tp, tp, s0
                  srai         zero, s1, 0
                  bne          t4, s7, main_j6 #branch to jump instr
                  add          a0, t0, zero
main_j6:          jalr         s4, s4, 540 #jump main -> sub_5
                  sub          s11, t6, s3
                  sll          a1, s0, tp
                  blt          s8, ra, 345f
                  slt          a1, s8, s10
                  sra          t2, sp, a0
main_11:          jal          s4, 3f
0:                jal          tp, 6f
1:                jal          gp, 0b
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          s4, 12f
5:                jal          ra, 4b
6:                jal          sp, 10f
7:                jal          ra, 13f
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          ra, 11f
11:               jal          sp, 8b
12:               jal          ra, 2b
13:               and          s4, s5, a7
                  beq          gp, s4, 349f
343:              srli         s9, t2, 25
                  sub          a1, s1, zero
345:              sra          zero, ra, t1
346:              beq          s5, t4, 351f
                  auipc        s9, 350302
                  bge          a0, sp, 360f
349:              sltiu        zero, s4, -1908
                  xor          t5, t0, ra
351:              sltiu        s0, sp, 932
                  slt          t5, s2, s4
                  ori          t1, s0, -1335
                  bltu         s0, s5, 357f
                  sltu         s5, s4, s7
                  sltu         s4, t2, t4
357:              bltu         gp, s11, 358f
358:              srl          t1, t2, gp
                  or           s3, a3, s6
                  slt          s2, s0, a5
                  la           t2, sub_1
                  and          s11, s9, a2
                  lui          a7, 333651
                  addi         t2, t2, -995
                  xori         a1, a1, -270
                  sub          s11, t6, t6
main_j1:          jalr         s4, t2, 996 #jump main -> sub_1
                  bne          a7, s2, 366f
360:              add          zero, s10, s4
                  bltu         gp, s2, 377f
                  slt          ra, t1, s10
                  sltu         s5, t1, s9
                  or           gp, sp, s3
                  slt          s3, a3, s4
366:              auipc        tp, 31129
                  nop
                  xori         s7, s11, 1968
                  and          s9, t3, a2
                  sub          a5, a6, tp
                  srli         a0, t4, 10
                  beq          s10, s9, 381f
                  nop
                  bgeu         a5, s2, 388f
                  bne          t1, a6, 387f
                  ori          ra, s5, -108
377:              srai         s9, zero, 18
                  srai         sp, s11, 6
                  bge          s2, s0, 387f
                  sub          a1, a3, a3
381:              slt          a4, s8, s11
                  lui          s8, 120515
                  xor          s6, gp, s9
                  xor          tp, t0, a2
                  or           a7, a1, a6
                  sub          s9, a4, t5
387:              or           a7, s7, ra
388:              and          a0, s8, a1
                  slti         s2, s11, -796
                  xori         s2, s7, 367
                  beq          s11, gp, 404f
                  sra          sp, ra, s0
                  sra          ra, zero, s0
                  nop
                  andi         s10, a2, -166
                  srli         s4, t3, 22
                  slti         tp, s2, -245
                  slti         s7, a1, -330
                  sltu         s11, a6, zero
                  srai         s2, s4, 31
                  beq          t2, t1, 403f
                  andi         s0, s4, 777
403:              bltu         a1, a1, 418f
404:              sltiu        a1, t4, 1144
                  sub          s6, a1, s10
                  bge          t3, a6, 421f
                  ori          s3, zero, 56
                  xori         s6, zero, -1190
                  srai         t6, t6, 27
                  slti         a2, s8, -1847
                  slti         s5, t3, -360
                  slt          s5, sp, t3
                  blt          t3, t0, 424f
                  sll          s10, a1, tp
                  srai         s7, s8, 9
                  slli         s5, a1, 11
                  bge          t3, ra, 418f
418:              srai         gp, s10, 26
                  srai         s10, ra, 4
                  bgeu         s2, tp, 434f
421:              bltu         t3, s4, 441f
                  bne          s2, a7, 428f
                  bne          s9, gp, 440f
424:              slti         t6, tp, 1658
                  srai         a5, s3, 26
                  xor          s6, a4, gp
                  beq          t6, sp, 439f
428:              sra          t6, a6, sp
                  sra          s7, gp, t1
                  sltiu        s10, a5, 868
                  sll          t1, s0, s8
                  slt          a1, s11, s0
                  srai         gp, sp, 12
434:              blt          tp, tp, 437f
                  srl          tp, s11, a0
                  beq          a7, s2, 452f
437:              bltu         a0, t3, 446f
                  and          a7, s8, t2
439:              addi         a0, s9, 1461
440:              ori          s3, t6, 1291
441:              add          t6, tp, t0
                  add          sp, s2, s4
                  sub          s5, t1, s4
                  slt          s2, a3, gp
                  sll          s10, t0, t1
446:              bgeu         s9, a6, 453f
                  srli         s10, sp, 29
                  addi         s7, a6, -639
                  and          a4, s8, s9
                  beq          s9, ra, 451f
451:              or           a7, t6, ra
452:              sltiu        a7, t5, -1190
453:              srai         s4, t1, 29
                  andi         t4, tp, 499
                  srli         s5, a1, 29
                  slti         s6, s4, -2005
                  bgeu         t3, s5, 459f
                  addi         s2, s10, -257
459:              xor          s5, s7, t2
                  sltiu        a7, sp, -94
                  srl          a2, s5, s9
                  andi         t6, s0, -85
                  sltiu        a7, t5, -1458
                  slli         t4, s1, 8
                  bgeu         a6, a2, 466f
466:              add          t5, t4, a2
                  sltiu        a0, t1, -1062
                  andi         t4, s2, -392
                  slt          s10, t4, a6
                  and          gp, s3, s10
                  bge          s1, a6, 480f
                  slt          a0, a1, gp
                  nop
                  srl          a1, t5, ra
                  andi         a6, s11, -1699
                  lui          zero, 514732
                  sltu         a6, s3, t6
                  beq          s9, gp, 494f
                  nop
480:              andi         t1, a4, -50
                  beq          s8, tp, 495f
                  srl          a5, tp, tp
                  and          sp, s2, s8
                  bgeu         ra, t3, 498f
                  xor          a5, a1, t5
                  or           t4, a1, t6
                  sltiu        a4, a4, 1725
                  srl          s7, a4, t1
                  bge          s10, a7, 496f
                  andi         t6, a4, -288
                  bge          tp, a1, 506f
                  slli         s11, s7, 13
                  xor          zero, s9, s7
494:              sltiu        a5, t2, 1116
495:              slli         ra, s11, 1
496:              addi         s8, a1, 1101
                  nop
498:              bgeu         s2, tp, 511f
                  xor          a7, a6, s5
                  slli         t4, s4, 29
                  srl          s11, a1, s3
                  or           s1, sp, a0
                  add          ra, ra, zero
                  sra          s11, s0, s8
                  ori          sp, t4, 242
506:              addi         s4, a7, -863
                  xor          zero, t5, a6
                  bge          t0, s10, 516f
                  sltiu        s9, zero, -1288
                  addi         s1, a4, -1960
511:              or           s1, a1, s4
                  bltu         a2, t3, 524f
                  andi         s7, t5, -35
                  srli         zero, s0, 16
                  bltu         s4, s6, 522f
516:              add          s2, t5, t1
                  srl          t2, t0, tp
                  sub          a4, s11, s3
                  beq          tp, a2, 524f
                  andi         s0, a0, 1422
                  slt          s11, t1, s4
522:              slti         ra, tp, -2037
                  slti         t6, a3, -71
524:              lui          t4, 156567
                  sltu         ra, t2, a3
                  bgeu         s0, a7, 542f
                  sub          t2, a1, t1
                  xor          sp, t3, a2
                  ori          s5, t5, 1245
                  slli         s0, s5, 28
                  srl          ra, a4, ra
                  xori         s2, gp, -28
                  bge          a6, s5, 547f
                  add          s10, ra, a1
                  lui          zero, 741752
                  or           gp, s9, s3
                  xor          a1, s10, a4
                  sltiu        t2, sp, 1820
                  beq          a6, s6, 547f
                  ori          sp, s1, -1564
                  slti         a4, tp, 25
542:              bgeu         sp, zero, 554f
                  add          s10, s3, s8
                  bge          a3, s0, 551f
                  or           t4, s8, gp
                  xor          s1, s7, a6
547:              slti         s10, a3, 1163
                  slt          s11, a6, t3
                  add          s8, s7, a3
                  andi         a7, a1, -1555
551:              slti         s3, s0, 603
                  blt          s0, t3, 559f
                  slti         a1, t3, -1610
554:              sll          s9, t2, a2
                  lui          s7, 485617
                  or           a7, a6, t1
                  srli         s10, a6, 24
                  srli         ra, s2, 5
559:              sll          a0, s1, t0
                  blt          a2, s7, 565f
                  and          s0, s8, gp
                  auipc        a5, 146982
                  srai         ra, t6, 22
                  bgeu         tp, s7, 565f
565:              andi         a1, t2, 1697
                  or           a2, a7, s7
                  lui          s2, 606177
                  bgeu         t4, s10, 584f
                  and          sp, s11, gp
                  bne          a7, a4, 584f
                  bne          a4, a6, 585f
                  auipc        s2, 128640
                  srl          sp, a4, s3
                  bgeu         ra, t6, 586f
                  srl          t5, t5, s8
                  add          s7, t5, s4
                  slli         s7, t1, 24
                  bgeu         zero, a2, 585f
                  blt          t2, a4, 581f
                  slti         s1, s2, -17
581:              lui          s9, 608376
                  and          s10, a3, t4
                  bltu         a3, t6, 584f
584:              slli         ra, t5, 25
585:              addi         t4, s5, 977
586:              bge          s6, s8, 595f
                  ori          a2, t4, 654
                  auipc        s5, 862038
                  xori         a1, t1, 786
                  sltu         s7, s3, t4
                  blt          t4, t1, 599f
main_2:           jal          s4, 12f
0:                jal          ra, 3f
1:                jal          ra, 14f
2:                jal          ra, 1b
3:                jal          t1, 9f
4:                jal          ra, 0b
5:                jal          ra, 11f
6:                jal          t1, 2b
7:                jal          ra, 13f
8:                jal          gp, 7b
9:                jal          ra, 10f
10:               jal          s1, 5b
11:               jal          ra, 8b
12:               jal          a0, 4b
13:               jal          ra, 6b
14:               ori          a5, a2, -1236
                  auipc        tp, 680282
                  slt          s9, a2, t0
                  add          a5, gp, s1
595:              add          a0, gp, s4
                  srl          a0, s1, sp
                  slli         s2, t6, 20
                  bge          s4, a4, 607f
599:              andi         s8, s8, -51
                  xori         s2, t1, 637
                  sltiu        s1, zero, 1002
                  bltu         t5, zero, 605f
                  auipc        t2, 98422
                  nop
605:              bne          a6, sp, 621f
                  bgeu         t3, a2, 620f
607:              slli         t2, t0, 7
                  and          a7, a5, t6
                  slti         gp, ra, 1271
                  sra          s0, s8, t0
                  beq          a4, t5, 617f
                  or           t5, s10, t6
                  ori          zero, t0, 830
                  beq          s0, a0, 622f
                  sltu         s6, a7, a7
                  lui          a4, 974157
617:              xor          a6, t4, s5
                  bltu         s0, t5, 633f
                  or           s5, s6, tp
620:              slti         s9, s7, 589
621:              slli         s8, t3, 2
622:              bltu         a1, a6, 623f
623:              bltu         s4, a5, 635f
                  srai         a5, t4, 22
                  ori          zero, s11, -186
                  srai         s10, s11, 22
                  and          t4, s7, s8
                  andi         s3, s3, 752
                  bgeu         ra, a0, 641f
                  bne          s6, a4, 644f
                  or           s9, s0, t0
                  bne          a7, s6, 645f
633:              lui          tp, 1029236
                  sltiu        t4, t0, 1234
635:              sra          s9, s0, t4
                  slt          s11, s1, s3
                  nop
                  sra          a2, s7, s7
                  bgeu         zero, t4, 654f
                  bltu         zero, a0, 660f
641:              bne          s5, t5, 652f
                  bltu         s5, t3, 659f
                  beq          s6, a3, 659f
644:              bltu         s7, t6, 659f
645:              ori          sp, s2, 1873
                  sub          s6, s4, sp
                  nop
                  auipc        s7, 107630
                  slti         t6, s6, -1309
                  srli         a2, a6, 23
                  lui          sp, 37774
652:              sll          ra, sp, a4
                  sltiu        t5, t5, -416
654:              slt          sp, a6, s1
                  bge          tp, a5, 669f
                  slt          s0, t4, a4
                  xor          a7, a4, gp
                  bge          s11, s6, 667f
659:              and          a0, a5, s9
660:              sub          s3, zero, s4
                  sub          a2, tp, s6
                  add          t6, s0, t0
                  beq          a3, a1, 679f
                  slli         a6, t1, 12
                  and          s3, tp, t6
                  or           s1, s3, t1
667:              bgeu         s0, zero, 679f
                  xor          t1, s11, t3
669:              sra          s5, t6, s7
                  bgeu         a0, t0, 675f
                  lui          a2, 282878
                  srl          t1, s4, s7
                  or           sp, s10, s4
                  andi         s2, s8, 395
675:              srl          a5, a2, a2
                  bltu         tp, t3, 690f
                  srli         s0, a6, 6
                  bgeu         a4, a4, 679f
679:              bgeu         t3, a3, 699f
                  andi         s5, ra, -362
                  slt          s5, t2, t5
                  srai         s2, s0, 1
                  bgeu         s6, t6, 690f
                  sltu         a1, a6, a7
                  nop
                  andi         s1, t2, -1323
                  srli         s11, a1, 16
                  bne          a5, s6, 689f
689:              beq          s3, a2, 703f
690:              bgeu         t6, a1, 699f
                  andi         a6, a5, 1181
                  blt          t3, t1, 695f
                  addi         s6, zero, -206
                  addi         t6, s8, 108
695:              bltu         s6, sp, 697f
                  nop
697:              nop
                  ori          s4, s3, -1437
699:              sltiu        s6, s7, -1312
                  bge          s7, t4, 711f
                  sll          s4, t3, t0
                  blt          s2, s1, 716f
703:              bge          sp, a1, 710f
                  sll          a0, s6, a4
                  auipc        s2, 417246
                  blt          a7, s6, 723f
                  sra          s0, t0, a7
                  lui          t4, 279783
                  slti         t4, s5, -1983
710:              xor          s3, s9, s2
                  ori          s1, s3, -1927
                  xor          s4, s11, s3
                  sll          a6, t5, s5
                  srl          s10, t1, t5
                  la           s9, sub_3
                  sra          a5, s4, a4
                  addi         tp, s3, -1201
                  sltiu        t6, t6, -1307
                  addi         s9, s9, -654
                  bne          tp, s6, main_j2 #branch to jump instr
                  lui          sp, 729991
main_j2:          jalr         s4, s9, 654 #jump main -> sub_3
711:              slt          s3, t1, a0
                  sltu         s3, t4, tp
                  lui          s7, 613508
                  sub          t5, a4, s10
                  sub          a4, t2, a6
716:              xor          sp, zero, s6
                  xor          s1, a4, s8
                  bgeu         s0, a1, 726f
                  slti         s5, s8, -337
                  sll          s4, t4, s4
                  slli         t6, s11, 17
                  beq          a5, s2, 730f
723:              sltu         s1, a2, ra
                  sra          tp, a7, t2
                  sll          s2, t2, s3
726:              xor          s4, t3, t6
                  ori          sp, t6, 1147
                  sltiu        a6, s0, -925
                  addi         a0, s10, -2032
730:              bge          t2, t2, 746f
                  sll          t2, a5, s0
                  sub          a6, s11, s1
                  and          gp, s8, ra
                  andi         s1, t3, 1428
                  slli         ra, t4, 29
                  sub          t4, a3, t6
                  auipc        sp, 277838
                  slti         tp, a6, 1029
                  bltu         a5, s4, 740f
740:              auipc        s9, 609393
                  bge          s7, t1, 747f
                  slt          zero, sp, s0
                  xori         gp, tp, -636
                  slt          ra, t4, s4
                  and          ra, s4, a6
746:              sll          t2, a5, s8
747:              sll          s2, t1, gp
                  sltu         zero, a7, s1
                  sll          a1, s1, s5
                  bge          s10, s3, 765f
                  ori          t2, a0, 1072
                  sltiu        s8, s1, -934
                  nop
                  bgeu         a7, t3, 761f
                  sra          s4, a5, a3
                  sltu         t1, ra, zero
                  andi         a7, a2, 45
                  nop
                  sub          t4, a2, s2
                  sll          t6, a6, a3
761:              nop
                  bltu         t3, a7, 778f
                  sll          s7, gp, s8
                  sltu         s3, tp, t5
765:              xor          s8, a5, t3
                  andi         a7, s6, 434
                  sub          t5, t2, ra
                  sra          s6, a3, t2
                  lui          gp, 354018
                  beq          t0, t4, 783f
                  auipc        ra, 478869
                  sltiu        ra, a1, -1105
                  xor          s11, a6, a2
                  bge          s5, zero, 786f
                  srl          zero, tp, s1
                  andi         s11, s2, -1414
                  auipc        t5, 622101
778:              sltu         s7, s2, a7
                  and          a7, s1, s2
                  bne          a5, s5, 792f
                  srl          ra, t5, a6
                  xor          t2, a7, a4
main_8:           jal          s4, 0f
0:                jal          ra, 12f
1:                jal          t1, 9f
2:                jal          t1, 6f
3:                jal          s0, 5f
4:                jal          s11, 7f
5:                jal          t1, 13f
6:                jal          t6, 10f
7:                jal          ra, 3b
8:                jal          t4, 11f
9:                jal          ra, 4b
10:               jal          ra, 1b
11:               jal          s3, 2b
12:               jal          t1, 8b
13:               lui          s0, 134955
783:              srli         t5, t6, 11
                  blt          s1, t4, 801f
                  nop
786:              slti         t1, a4, -1871
                  xori         s1, zero, -1190
                  sub          a7, s5, sp
                  xor          s2, ra, s3
                  beq          s3, s11, 804f
                  lui          a2, 52155
792:              andi         t4, s9, -705
                  slti         t5, s9, -1860
                  bgeu         a2, s7, 797f
                  sltiu        t5, t3, -1458
                  sub          t5, s9, s7
797:              xori         t5, t1, -528
                  or           ra, a3, s11
                  slt          s1, s11, s0
                  slt          s3, s6, s2
801:              srl          s6, a4, s4
                  blt          t6, s5, 816f
                  slti         s2, t2, 765
804:              srli         a6, s1, 16
                  slli         a0, s9, 28
                  slt          s6, s7, t5
                  addi         t6, s4, 1464
                  srai         sp, s7, 23
                  bge          zero, t3, 815f
                  slli         t4, t6, 1
                  bne          tp, a6, 823f
                  addi         s7, s8, -843
                  slt          zero, sp, a3
                  add          gp, t4, sp
815:              srli         t1, t5, 16
816:              srai         a2, a5, 29
                  add          a4, gp, t3
                  andi         a2, a5, 1621
                  xori         t5, s2, -1058
                  auipc        s0, 600633
                  sra          sp, s0, sp
                  srli         s10, s6, 8
823:              auipc        a4, 124519
                  srli         s3, s11, 3
                  xor          s6, t6, t6
                  sltiu        s4, t1, 1545
                  blt          s7, a6, 840f
                  srai         s5, s10, 18
                  bge          a4, t2, 836f
                  beq          t2, t1, 846f
                  lui          s7, 546802
                  slli         s6, t0, 16
                  sltiu        ra, s2, 722
                  xor          a2, s4, t2
                  srl          t4, s5, s5
836:              srai         t2, a5, 25
                  nop
                  sll          s5, s6, s4
                  sltiu        s6, t6, 112
840:              slti         tp, s4, 2025
                  bne          s10, t6, 850f
                  addi         s9, t5, -501
                  xori         s9, s11, -1568
                  sub          ra, s1, s8
                  sub          a4, a2, a6
846:              and          s10, t1, t5
                  srli         t4, s8, 11
                  andi         s1, zero, 276
                  slti         t2, s6, 1868
850:              add          t1, t3, s0
                  sltiu        s2, s9, 1174
                  or           gp, a5, s11
                  bge          s0, s3, 873f
                  add          s2, s9, tp
                  andi         t2, gp, -103
                  srl          a4, s8, a6
                  sra          a0, a4, s8
                  sra          s3, s6, a3
                  blt          s6, t6, 873f
                  and          a6, s9, s4
                  slli         tp, sp, 19
                  andi         s8, a4, 927
                  sltiu        gp, s8, 852
                  auipc        sp, 551568
                  or           s7, a7, a5
                  sltu         a5, a4, a5
                  sll          a2, a7, t6
                  addi         a5, s10, 546
                  lui          zero, 563753
                  bne          t0, t1, 872f
                  slli         t5, a6, 23
872:              auipc        a4, 973874
873:              slti         a4, s0, 1359
                  sra          s8, a4, s9
                  ori          a2, t2, -1900
                  sub          a5, s6, sp
                  bgeu         t5, a0, 884f
                  slli         t6, t2, 11
                  srli         s10, ra, 26
                  bne          s4, a5, 896f
                  xori         a4, t6, 953
                  bge          s3, a5, 897f
                  slti         s5, t2, 1783
884:              sra          a5, s5, s10
                  and          s5, s9, s6
                  beq          s7, a3, 887f
887:              ori          ra, a2, 1368
                  auipc        a1, 204339
                  auipc        gp, 659385
                  addi         t6, sp, -1141
                  bge          s6, t3, 906f
                  sub          gp, t5, s11
                  auipc        s8, 977964
                  slti         s7, a7, 1592
                  sll          a5, a3, t4
896:              srai         zero, a0, 15
897:              lui          t4, 668854
                  sub          s6, a7, s0
                  sll          s4, s11, s3
                  or           s1, a0, s7
                  xori         t4, t0, 995
                  blt          s7, tp, 910f
                  sra          a1, a3, a3
                  sll          s6, t1, t6
                  xor          t2, s0, a5
906:              sltiu        s0, s10, -1000
                  sltu         a2, s4, t0
                  sltiu        s7, t1, 631
                  sltu         s6, s6, s8
910:              add          s0, sp, s3
                  bge          t3, a1, 918f
                  xor          s5, s10, s5
                  sltiu        zero, zero, -1427
                  bge          s10, s1, 922f
                  slt          s7, t0, t1
                  or           s5, s0, s1
                  addi         t4, a0, -1351
918:              add          s9, t2, ra
                  bne          s6, s2, 928f
                  add          tp, gp, a5
                  xor          a7, t2, t3
922:              auipc        a7, 605060
                  and          t5, t1, s9
                  sll          s3, a4, s10
                  addi         a4, t3, -390
                  srl          s5, t3, s8
                  beq          s7, s10, 943f
928:              and          s5, ra, gp
                  andi         t6, a0, 1846
                  sra          s5, a7, a1
                  and          s2, a2, s3
                  bne          a0, ra, 944f
                  beq          t3, s2, 944f
                  slti         t5, t1, 1375
                  bltu         t3, tp, 940f
                  xor          a2, t0, tp
                  bgeu         t1, a1, 938f
938:              sll          sp, a7, zero
                  bge          a0, s6, 953f
940:              addi         s7, s2, 790
                  and          a1, s10, a1
                  sra          zero, s7, a7
943:              lui          t6, 917482
944:              srli         t2, tp, 3
                  slt          a5, a0, s6
                  nop
                  nop
                  addi         s5, s8, 18
                  srli         s3, gp, 9
                  xor          tp, tp, s2
                  sll          t5, s3, t1
                  lui          t5, 74883
953:              sltu         s4, s6, t6
                  lui          s11, 758048
                  srai         a6, t0, 27
                  bge          t0, s2, 968f
                  slti         s4, t3, 918
                  xor          t1, s5, t3
                  bne          t1, a4, 960f
960:              bne          gp, s0, 976f
                  lui          s1, 162735
                  nop
                  xor          tp, s3, a4
                  sra          gp, s0, s5
                  sltu         s7, t5, t4
                  andi         a4, s11, 1290
                  beq          t1, s1, 974f
968:              bge          a5, s0, 983f
                  nop
                  and          a5, s9, a0
                  lui          s10, 862424
                  srli         s5, sp, 4
                  and          a1, a5, a3
974:              srai         t4, s2, 16
                  xor          s8, s7, a6
976:              andi         t1, tp, -1566
                  beq          t4, zero, 992f
                  slt          t1, a4, s6
                  bltu         a0, a0, 995f
                  srl          a0, t4, a0
                  sll          zero, a5, zero
                  sll          sp, a0, t5
983:              bgeu         t5, tp, 991f
                  lui          s9, 549169
                  or           a7, gp, sp
                  bne          t3, s6, 1002f
                  beq          a6, t1, 998f
                  addi         s3, a1, -1883
                  sra          zero, a4, zero
                  xor          a2, s0, a4
991:              bne          t5, s0, 1000f
992:              or           sp, t1, sp
                  and          s5, s6, a6
                  xori         a4, s8, 1384
995:              bltu         sp, sp, 1000f
                  lui          s2, 808379
                  lui          t6, 15006
998:              andi         s3, s1, 463
                  sub          s8, a5, a7
1000:             sltu         a6, s0, s0
                  auipc        t1, 722923
1002:             srl          s8, s2, t1
                  ori          s3, a2, -988
                  beq          t4, s4, 1018f
                  srli         a1, s3, 17
                  sra          sp, a3, t2
                  slt          a4, a3, s7
                  sra          s0, s10, t1
                  andi         t6, t2, -880
                  nop
                  slti         t5, a5, 1367
                  bge          t3, tp, 1024f
                  xori         a6, tp, -1108
                  andi         t5, s11, 1422
                  or           t2, t6, a2
                  bne          a3, t4, 1019f
                  nop
1018:             andi         s5, a5, -670
1019:             bge          s9, s6, 1036f
                  addi         s3, t3, 572
                  srai         t6, a3, 3
                  andi         t1, a2, 9
                  xor          a5, a1, t6
1024:             srai         s0, sp, 16
                  bltu         s10, a1, 1034f
                  srli         s0, s2, 28
                  auipc        a2, 551986
                  sra          s4, gp, t4
                  bne          t3, sp, 1030f
1030:             srai         s1, ra, 19
                  addi         a0, t6, -600
                  xori         ra, tp, 1087
                  ori          a2, s11, -47
1034:             bge          s6, s0, 1036f
                  lui          s5, 101042
1036:             and          a2, s1, t4
                  bne          s2, t6, 1044f
                  srai         s6, t6, 19
                  bltu         s11, s5, 1053f
                  nop
                  sltiu        s3, s3, -234
                  sll          a7, t6, zero
                  bltu         a0, tp, 1055f
1044:             add          ra, t3, ra
                  srli         sp, s10, 9
                  nop
                  srli         tp, a6, 19
                  ori          s4, gp, -1673
                  bge          gp, s9, 1056f
                  srli         a0, s10, 10
                  or           t6, a6, t0
                  sltu         t1, s6, s10
1053:             bge          s9, a6, 1067f
                  bltu         s11, t4, 1066f
1055:             addi         tp, s0, -1887
1056:             add          a4, s3, s11
                  xori         s4, s2, -1530
                  srai         a2, ra, 16
                  xori         s7, t6, 916
                  addi         s5, sp, 827
                  bltu         a6, s11, 1062f
1062:             andi         t2, s9, 819
                  andi         a6, t1, -444
                  bgeu         s5, t0, 1072f
                  sltu         tp, t0, a2
1066:             slt          a1, s0, gp
1067:             beq          a2, t4, 1073f
                  bgeu         a5, s3, 1069f
1069:             srli         t5, tp, 11
                  xor          tp, t5, s4
                  ori          t1, t0, -2015
1072:             auipc        ra, 207419
1073:             slt          a7, s4, a1
                  add          t5, a3, s0
                  sltu         tp, s3, t4
                  blt          s6, s4, 1096f
                  auipc        t1, 412049
                  and          a6, a7, s0
                  sub          t1, s7, t2
                  beq          sp, sp, 1093f
                  sub          gp, t3, zero
                  srai         sp, a5, 13
                  ori          s6, t4, 960
                  and          s0, a5, s10
                  srl          s7, s0, s5
                  add          tp, s2, t3
                  bge          a6, t2, 1101f
                  or           ra, s4, ra
                  sll          gp, t5, s2
                  slli         ra, s4, 2
                  ori          gp, s3, -1486
                  beq          ra, s11, 1108f
1093:             sltiu        s2, sp, 1851
                  srai         gp, t2, 26
                  srai         s5, a5, 28
1096:             sll          t1, t3, a6
                  sltu         s8, zero, s6
                  addi         a5, s5, -1506
                  sll          s3, s9, a3
                  sll          t4, s4, t0
1101:             nop
                  nop
                  lui          s10, 1037092
                  bgeu         s4, a4, 1120f
                  slli         a0, zero, 27
                  xor          a7, t3, s11
                  srai         s2, s2, 5
1108:             xor          s7, s7, s4
                  beq          sp, s3, 1121f
                  bge          a6, a1, 1125f
                  sra          a5, zero, s2
                  bge          s9, s9, 1124f
                  sra          s0, t6, t4
                  nop
                  andi         t2, a2, -1238
                  addi         tp, t0, -229
                  and          s8, s9, a2
                  sltiu        t1, a5, -1297
                  nop
1120:             bgeu         t1, s6, 1121f
1121:             beq          s11, a2, 1138f
                  addi         a7, a0, -1841
                  slli         a1, s2, 30
1124:             lui          s7, 119517
1125:             xori         gp, a7, -1484
                  add          s7, t2, zero
                  auipc        a5, 622181
                  slti         s2, t5, -135
                  srli         s7, t4, 12
                  add          gp, s2, a5
                  srai         zero, a0, 2
                  bge          a6, tp, 1143f
                  ori          t1, a2, 1367
                  sra          a6, s10, a7
                  sltiu        s10, a7, -514
                  ori          s8, s11, -1750
                  and          zero, a4, zero
1138:             srai         a4, zero, 2
                  lui          gp, 168560
                  addi         s8, t1, 456
                  auipc        s7, 698670
                  ori          s5, s10, 1165
1143:             srai         zero, tp, 27
                  and          t2, s3, t6
                  and          a0, t4, s4
                  srli         s9, s2, 6
                  sltiu        ra, a7, 714
                  nop
                  ori          t4, a5, -626
                  ori          s0, a3, 344
                  nop
                  beq          s3, tp, 1164f
                  ori          ra, zero, 612
                  lui          s8, 809525
                  and          s5, s10, s2
                  add          a1, s6, a7
                  srli         s1, a3, 28
                  and          gp, t0, t3
                  addi         gp, a2, 1600
                  andi         s7, ra, 1582
                  xor          ra, gp, s6
                  slti         s10, a2, -177
                  sltu         s3, s0, s0
1164:             bltu         s4, a4, 1184f
                  blt          t2, tp, 1167f
                  lui          s3, 272853
1167:             slli         tp, a6, 0
                  sltu         ra, s3, s5
                  bltu         s6, t5, 1177f
                  srai         s3, s2, 8
                  xor          a7, t3, a6
                  andi         a0, a3, -246
                  bge          sp, t3, 1182f
                  srai         s5, a3, 1
                  bgeu         t0, a4, 1182f
                  andi         s0, a1, -734
1177:             bgeu         t2, s4, 1178f
1178:             addi         a7, s6, 1903
                  sll          a1, sp, ra
                  xor          a0, s10, t1
                  sll          a1, t1, s8
1182:             lui          zero, 308740
                  add          zero, s2, s2
1184:             slt          s11, s10, s9
                  beq          sp, a5, 1201f
                  srai         ra, a7, 1
                  bge          sp, s11, 1200f
                  or           t6, a3, t6
                  nop
                  xor          a4, a1, a5
                  auipc        s2, 1045015
                  and          a4, s4, ra
                  blt          zero, s4, 1198f
                  sll          t5, s2, t3
                  addi         ra, a5, -499
                  sra          a5, zero, s7
                  add          s11, s5, s11
1198:             slli         a4, s0, 20
                  bltu         t5, s2, 1200f
1200:             xor          s11, sp, sp
1201:             add          a2, t6, t6
                  auipc        t2, 986385
                  xori         ra, gp, 840
                  or           ra, t4, gp
                  bge          t1, t4, 1219f
                  srli         s3, zero, 30
                  xor          a2, s8, s0
                  addi         a0, a5, -355
                  sll          s9, s10, t6
                  nop
                  nop
                  sll          s7, tp, s7
                  xor          s6, t2, s5
                  ori          a0, s5, 415
                  and          gp, s11, zero
                  add          t5, a4, ra
                  add          s6, s3, a1
                  sra          a2, a2, a7
1219:             slti         a4, s10, 657
                  srai         t2, s3, 28
                  bge          zero, s4, 1229f
                  bge          a3, t6, 1229f
                  bgeu         a2, t1, 1238f
                  slti         s11, s10, 1155
                  srai         t2, t2, 30
                  slt          s4, ra, sp
                  bne          t3, s8, 1236f
                  slt          s5, sp, a7
1229:             sltu         a0, s4, s0
                  sub          s7, t2, s0
                  sub          zero, t4, a5
                  xori         s10, a0, -1032
                  xori         s7, sp, 211
                  bne          a2, s11, 1248f
                  xor          s9, a6, a6
1236:             sltu         s5, t5, s6
                  beq          a2, sp, 1251f
1238:             xori         a1, t5, -1667
                  slli         s8, t3, 21
                  bltu         gp, sp, 1254f
                  bge          a5, tp, 1248f
                  lui          s6, 616423
                  sll          t4, a2, t5
                  xor          s6, t4, s0
                  sltiu        a1, sp, 1283
                  bltu         zero, s9, 1249f
                  xor          a2, a1, zero
1248:             xor          s5, tp, t3
1249:             xori         t5, s2, -1705
                  slli         ra, gp, 7
1251:             and          t1, s11, s8
                  xori         a4, t1, -1882
                  and          t6, tp, a4
1254:             add          a4, ra, t3
                  andi         s8, a1, 511
                  bne          tp, s1, 1262f
                  blt          gp, a1, 1277f
                  addi         gp, t1, 617
                  xor          a2, s1, a1
                  nop
                  sltiu        zero, s9, 895
1262:             auipc        s5, 580104
                  sltu         a5, t1, zero
                  and          a7, s10, s4
                  srli         s7, s0, 10
                  srai         s0, a5, 0
                  auipc        s9, 649908
                  blt          tp, s10, 1275f
                  sltiu        ra, s2, -828
                  sll          s8, s9, s1
                  sltu         ra, a3, a7
                  srli         s11, t6, 3
                  nop
                  addi         tp, t1, -143
1275:             sltu         s2, a6, a1
                  add          s11, ra, t4
1277:             nop
                  auipc        s10, 947120
                  sll          t1, s9, t5
                  sltiu        zero, s0, -363
                  auipc        t1, 158987
                  sub          t6, ra, zero
                  nop
                  slt          zero, s8, a4
                  lui          a4, 458427
                  sub          a1, a3, s10
                  xori         s1, s2, 208
                  ori          s10, t1, 389
                  sltu         gp, t3, tp
                  beq          a2, a5, 1306f
                  xori         tp, s7, 1452
                  srai         t6, s3, 8
                  bge          a0, s8, 1294f
1294:             bltu         ra, a3, 1302f
                  bltu         s2, s9, 1310f
                  bgeu         t4, s1, 1312f
                  sll          s5, a3, a6
                  bge          gp, tp, 1299f
1299:             beq          ra, s6, 1310f
                  bge          tp, a2, 1313f
                  lui          t2, 69254
1302:             bgeu         a3, s2, 1319f
                  xori         s8, s7, 479
                  srl          a5, gp, t5
                  auipc        a6, 881325
1306:             sltu         t5, a5, a2
                  bltu         s10, a1, 1314f
                  xori         s1, a5, 1792
                  sll          s5, a6, t6
1310:             beq          a2, a2, 1322f
                  blt          a1, s7, 1320f
1312:             sll          s4, s5, t0
1313:             slti         s9, t3, 1943
1314:             addi         s1, a2, 1965
                  lui          s10, 823793
                  auipc        sp, 515080
                  slti         tp, s11, 977
                  xor          s10, sp, t0
1319:             addi         s1, t3, 1765
1320:             sltiu        a2, t0, 716
                  bge          s9, s5, 1327f
1322:             slt          s3, s6, tp
                  srl          ra, s4, a2
                  srl          s9, a0, a2
                  xori         a6, s3, 188
                  blt          a4, s2, 1328f
1327:             srai         a2, a6, 7
1328:             andi         s8, s1, 100
                  bne          ra, ra, 1343f
                  bgeu         t2, s1, 1344f
                  xor          s1, sp, t0
                  and          s8, a5, s9
                  add          gp, t6, a3
                  and          tp, t4, s10
                  andi         a0, s1, -1005
                  andi         a4, t4, 1959
                  srl          s9, a2, t0
                  sll          s10, t6, tp
                  add          zero, s10, tp
                  andi         s11, a6, -1089
                  srai         t5, sp, 31
                  auipc        s0, 318595
1343:             slti         a5, s9, 1859
1344:             slti         zero, s3, 1752
                  sltiu        sp, t2, 1166
                  slti         s0, a0, 581
                  slt          s5, tp, s4
                  or           a7, t0, a4
                  srl          s1, s7, s8
                  sll          s7, s6, s5
                  slt          sp, tp, s4
                  xor          t5, s0, s5
                  slti         t5, gp, 1449
                  andi         t2, s5, 1864
                  srai         s7, s6, 29
                  nop
                  srai         t2, a1, 1
                  ori          s3, tp, 23
                  slti         s11, a0, 1463
                  slt          a4, a4, s6
                  ori          s6, t3, 1576
                  xori         s7, t4, 213
                  srl          a1, s11, s4
                  bltu         t5, t5, 1379f
                  lui          s11, 406807
                  srai         gp, s11, 3
                  srl          s4, a5, a6
                  xori         s4, s5, -387
                  andi         t2, s11, -1081
                  bne          gp, a2, 1386f
                  slti         a4, t5, 1571
                  andi         t5, t6, 1801
                  sub          s10, s10, a0
                  xori         t1, s10, 768
                  addi         a5, s3, -194
                  bgeu         s8, a6, 1390f
main_12:          jal          s4, 2f
0:                jal          a2, 1f
1:                jal          ra, 13f
2:                jal          ra, 8f
3:                jal          ra, 12f
4:                jal          t1, 11f
5:                jal          ra, 7f
6:                jal          s0, 9f
7:                jal          sp, 17f
8:                jal          ra, 18f
9:                jal          t1, 0b
10:               jal          ra, 14f
11:               jal          t1, 10b
12:               jal          ra, 19f
13:               jal          t1, 15f
14:               jal          s6, 6b
15:               jal          ra, 5b
16:               jal          ra, 3b
17:               jal          ra, 16b
18:               jal          ra, 4b
19:               sll          t1, sp, s3
                  and          s1, a5, s2
                  lui          sp, 914729
1379:             beq          a5, s3, 1380f
1380:             ori          t4, a5, 1668
                  nop
                  beq          s6, a4, 1391f
                  srli         sp, t5, 30
                  nop
                  slti         tp, s1, -1426
1386:             slt          s6, t0, gp
                  andi         s0, s6, 1002
                  and          s9, zero, t5
                  slti         t5, t5, 1153
1390:             sra          s10, a4, s7
1391:             or           a2, s4, s8
                  sltu         s3, s5, t3
                  xori         s7, a2, 1204
                  auipc        s10, 781724
                  sra          s3, s6, s5
                  auipc        s7, 564233
                  xor          a6, s7, a2
                  sub          a0, tp, t5
                  bltu         gp, s9, 1413f
                  xori         s6, a4, -195
                  sltiu        t1, t2, -1195
                  sra          s9, t2, t2
                  sltu         s7, a5, a5
                  xor          t5, zero, s6
                  sra          s4, sp, a4
                  bgeu         s8, t0, 1409f
                  nop
                  bge          s6, a4, 1416f
1409:             bge          t3, tp, 1414f
                  xor          t1, sp, a6
                  sll          s4, s1, gp
                  srl          s2, a2, t6
1413:             sltu         a1, s5, s2
1414:             bltu         ra, s0, 1418f
                  and          s1, s5, a4
1416:             sltu         a0, t2, sp
                  xor          s11, tp, t0
1418:             sltiu        s4, a5, 847
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bgeu         t4, t4, sub_5_stack_p
                  srai         s1, s2, 1
                  xori         s9, s4, -386
                  or           t6, s4, gp
sub_5_stack_p:    addi         t0, t0, -20
                  and          s9, s6, ra
                  lui          t5, 833313
                  andi         s1, s7, 213
                  sw           s4, 4(t0)
                  add          s9, sp, t3
                  addi         a2, s0, -311
sub_5_5:          jal          s4, 1f
0:                jal          ra, 13f
1:                jal          t1, 11f
2:                jal          s9, 5f
3:                jal          ra, 6f
4:                jal          t1, 3b
5:                jal          ra, 8f
6:                jal          t1, 7f
7:                jal          t1, 14f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          ra, 9b
13:               jal          ra, 12b
14:               slt          a4, t4, a5
sub_5_1:          jal          s4, 10f
0:                jal          s2, 11f
1:                jal          ra, 12f
2:                jal          s9, 1b
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          ra, 8f
6:                jal          a6, 3b
7:                jal          ra, 5b
8:                jal          s8, 0b
9:                jal          t1, 6b
10:               jal          ra, 2b
11:               jal          a2, 13f
12:               jal          ra, 4b
13:               sltu         s1, t6, s5
sub_5_0:          jal          s4, 6f
0:                jal          t1, 12f
1:                jal          gp, 19f
2:                jal          ra, 14f
3:                jal          ra, 13f
4:                jal          ra, 18f
5:                jal          t1, 0b
6:                jal          ra, 21f
7:                jal          ra, 20f
8:                jal          sp, 7b
9:                jal          ra, 23f
10:               jal          ra, 27f
11:               jal          t1, 2b
12:               jal          ra, 24f
13:               jal          s11, 4b
14:               jal          ra, 1b
15:               jal          a5, 8b
16:               jal          s2, 15b
17:               jal          ra, 16b
18:               jal          ra, 11b
19:               jal          s5, 22f
20:               jal          s2, 10b
21:               jal          t1, 5b
22:               jal          ra, 17b
23:               jal          ra, 3b
24:               jal          ra, 26f
25:               jal          ra, 9b
26:               jal          ra, 25b
27:               and          a0, t6, t5
sub_5_2:          jal          s4, 1f
0:                jal          t1, 9f
1:                jal          t1, 0b
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          a1, 2b
5:                jal          s8, 10f
6:                jal          ra, 8f
7:                jal          sp, 11f
8:                jal          a5, 3b
9:                jal          ra, 4b
10:               jal          ra, 6b
11:               srai         a4, a6, 18
sub_5_7:          jal          s4, 16f
0:                jal          t6, 15f
1:                jal          t1, 12f
2:                jal          a7, 14f
3:                jal          s7, 1b
4:                jal          ra, 2b
5:                jal          t1, 13f
6:                jal          ra, 8f
7:                jal          t1, 3b
8:                jal          ra, 9f
9:                jal          sp, 11f
10:               jal          ra, 18f
11:               jal          ra, 10b
12:               jal          ra, 6b
13:               jal          tp, 7b
14:               jal          ra, 0b
15:               jal          s8, 17f
16:               jal          s0, 4b
17:               jal          a4, 5b
18:               lui          s7, 342257
                  xor          s0, a2, s2
                  xori         a1, sp, 251
                  andi         gp, s6, -1307
                  ori          a6, s9, -890
                  slt          tp, s4, tp
                  or           sp, a1, a6
                  lui          s2, 606704
                  ori          s6, a7, -324
                  srl          t4, s0, a7
                  srl          sp, gp, sp
                  nop
                  auipc        s2, 203815
                  andi         gp, t4, 43
                  or           s11, s5, a4
                  srl          a4, t5, tp
                  blt          a2, a6, 28f
                  add          s3, gp, t4
                  bltu         s7, a6, 18f
18:               and          sp, a7, t6
                  srl          a2, a2, a6
                  slt          a5, a1, t2
                  slt          t5, s9, s1
                  sll          t2, t2, zero
                  sltu         a0, s1, t3
                  bltu         a1, ra, 36f
                  sra          s10, a0, t4
                  bne          sp, s7, 46f
                  addi         s5, t5, -1667
28:               and          s4, ra, s4
                  bge          a3, s10, 34f
                  and          a2, a4, s11
                  bltu         zero, s8, 38f
                  bne          a6, sp, 41f
                  xor          s7, zero, a6
34:               bge          t3, t1, 54f
                  sltiu        s10, zero, 548
36:               nop
                  add          s5, s0, a5
38:               add          gp, tp, sp
                  lui          s11, 434837
                  sltu         s3, t0, tp
41:               lui          t1, 705459
                  bge          t4, ra, 53f
                  ori          t4, a6, -604
                  sra          s4, s8, s9
                  addi         s9, t1, -43
46:               srl          s7, t3, s4
                  or           a4, s8, sp
                  bge          s6, a7, 50f
                  beq          tp, a5, 66f
50:               blt          s11, s7, 68f
                  srli         s8, a1, 0
                  slti         s4, s7, -590
53:               xor          a6, s9, a4
54:               sltiu        s6, a7, -150
                  blt          a4, s8, 68f
                  srli         zero, a3, 9
                  slli         t2, t5, 17
                  nop
                  bgeu         t1, s4, 66f
                  bgeu         a7, t5, 75f
                  blt          t4, t6, 78f
                  bge          ra, t4, 69f
                  nop
                  addi         a0, a0, 1821
                  bltu         s1, s2, 79f
66:               sub          s3, t4, s3
                  andi         a2, a0, -1545
68:               sltiu        tp, a1, -1214
69:               sltu         s9, a3, a4
                  xori         t6, t6, -768
                  xor          s11, a5, s2
                  srai         a5, s8, 10
                  addi         s2, a2, 1829
                  sltiu        a4, a7, -510
75:               bgeu         s11, a6, 76f
76:               and          a2, s11, ra
                  slti         ra, s4, -1450
78:               and          s10, a5, a0
79:               and          s8, a5, sp
                  srli         a6, s4, 22
                  addi         sp, a6, 1268
                  beq          s10, ra, 95f
                  auipc        t1, 454715
                  nop
                  sll          s4, s10, t5
                  slti         t2, s1, -1667
                  bltu         a7, t6, 97f
                  srai         a1, a7, 23
                  bgeu         tp, t6, 106f
                  sltiu        tp, s6, -867
                  nop
                  andi         a1, t1, 1616
                  srai         a2, t0, 19
                  lui          t2, 5213
95:               or           gp, s10, a0
                  sltiu        s5, s4, 350
97:               bne          t0, s9, 102f
                  nop
                  sltu         s11, t0, s2
                  sra          s1, s8, t4
                  ori          gp, t2, 648
102:              srai         s8, sp, 13
                  sra          s8, t3, s6
                  add          s7, zero, s7
                  xor          zero, s8, s10
106:              sub          tp, s6, s3
                  add          ra, t6, s11
                  sltu         s4, t5, a3
                  add          s10, t5, a5
                  bne          t0, a2, 115f
                  blt          a2, s1, 118f
                  xori         a5, s2, 814
                  srai         ra, s6, 6
                  xori         tp, s7, 1222
115:              add          s8, a1, s0
                  bne          s7, s5, 126f
                  xor          s5, sp, t6
118:              or           s3, s4, s8
                  bne          s1, s10, 128f
                  srai         a2, a7, 30
                  andi         s8, s5, -413
                  slli         a0, s10, 11
                  slti         t4, s3, 111
                  sub          a4, s3, t0
                  bgeu         s4, s8, 130f
126:              bne          a7, t2, 134f
                  sra          s7, s0, s6
128:              srl          zero, s5, s11
                  addi         t2, t5, 1197
130:              bgeu         s4, s1, 136f
                  sra          s7, s5, tp
                  blt          a6, s4, 147f
                  srai         a7, s7, 31
134:              srli         t2, s4, 3
                  auipc        a0, 482335
136:              bne          gp, a0, 144f
                  bgeu         t0, zero, 142f
                  sub          s0, a4, t2
                  srli         a0, s6, 10
                  srai         s8, tp, 5
                  srai         s8, t1, 20
142:              blt          s0, s2, 149f
                  slli         a6, a3, 1
144:              nop
                  slti         a6, zero, -955
                  slti         s3, t1, -1758
147:              sltiu        s6, a1, 649
                  slli         a7, s8, 3
149:              bgeu         ra, zero, 159f
                  bne          s11, s2, 164f
                  xori         s3, a2, 1573
                  xori         t2, s0, 1849
                  srli         s2, s6, 11
                  andi         a6, s4, 1936
                  bltu         s1, s7, 168f
                  bgeu         t5, s6, 158f
                  xori         s8, s9, 1669
158:              sltiu        s1, t6, -630
159:              slti         t1, zero, 1228
                  blt          sp, t6, 178f
                  xor          t6, tp, s8
                  xori         t6, a5, 1826
                  blt          s0, t5, 176f
164:              srl          tp, t6, t6
                  ori          s1, s7, -1688
                  xori         s0, s9, -605
                  sll          s9, s3, gp
168:              beq          a5, t0, 174f
                  slli         tp, t6, 0
                  bne          t5, t2, 190f
                  beq          a6, s11, 180f
                  beq          a6, s5, 189f
                  bge          s7, a1, 185f
174:              sub          s1, zero, t0
                  nop
176:              add          s6, ra, s10
                  slli         a1, s5, 1
178:              or           sp, t4, s4
                  andi         t2, t1, -455
180:              srli         a1, t3, 16
                  sll          a4, t4, s0
                  sll          t5, s5, s2
                  or           t2, s8, s8
                  slt          t1, t6, s0
185:              and          a2, t5, s5
                  andi         s4, s11, 1203
sub_5_4:          jal          s4, 19f
0:                jal          s4, 18f
1:                jal          ra, 25f
2:                jal          s9, 15f
3:                jal          ra, 6f
4:                jal          t1, 12f
5:                jal          ra, 16f
6:                jal          ra, 23f
7:                jal          s9, 2b
8:                jal          t1, 27f
9:                jal          a6, 17f
10:               jal          ra, 11f
11:               jal          ra, 9b
12:               jal          a7, 13f
13:               jal          t1, 10b
14:               jal          ra, 20f
15:               jal          ra, 4b
16:               jal          ra, 0b
17:               jal          ra, 1b
18:               jal          ra, 14b
19:               jal          s0, 5b
20:               jal          ra, 7b
21:               jal          ra, 8b
22:               jal          gp, 21b
23:               jal          t1, 26f
24:               jal          s9, 22b
25:               jal          s10, 3b
26:               jal          t1, 24b
27:               nop
                  nop
                  blt          s3, a7, 189f
189:              sltiu        tp, sp, 1355
190:              auipc        a4, 3925
                  slti         t4, t6, -1344
                  blt          s9, s5, 197f
                  addi         t5, a7, 512
                  blt          t5, zero, 211f
                  bne          s11, zero, 215f
                  slti         s11, s7, -836
197:              slli         zero, ra, 8
                  srl          a2, a4, a4
                  bne          s2, sp, 216f
                  andi         a1, s5, 918
                  slt          a5, s10, a2
                  sll          a0, a6, s3
                  or           tp, s6, s1
                  blt          s5, t0, 209f
                  slli         t2, s1, 19
                  sub          s0, a6, a6
                  bgeu         zero, a4, 214f
                  addi         tp, a1, 762
209:              lui          a5, 442507
                  sltiu        s3, t2, 825
211:              andi         gp, t3, -304
                  srai         a5, s1, 13
                  srai         t6, t4, 4
214:              sub          s0, s9, a4
215:              addi         ra, a4, -622
216:              auipc        s10, 9737
                  add          s8, s10, s2
                  addi         tp, s1, -493
                  bgeu         t2, s7, 220f
220:              andi         ra, s1, 1595
                  srli         gp, tp, 17
                  sub          ra, gp, s0
                  bltu         ra, t4, 230f
                  slli         s4, t6, 7
                  nop
                  srai         s5, a3, 28
                  addi         ra, t0, -908
                  srli         s7, s5, 6
                  xor          t5, s1, a4
230:              slt          t6, s2, s11
                  srai         s4, s6, 18
                  bltu         sp, t0, 239f
                  or           a0, gp, a6
                  srai         a0, s8, 29
                  slti         tp, t2, -1861
                  bltu         s1, a1, 249f
                  auipc        zero, 966612
                  or           t5, s11, s2
239:              nop
                  xor          gp, tp, t4
                  sra          t6, a2, s4
                  srai         t5, s0, 25
                  srl          a5, s3, zero
                  xor          s5, tp, t4
                  nop
                  add          zero, s3, a0
                  bne          zero, s4, 256f
                  nop
249:              andi         s7, t3, 819
                  auipc        a4, 153161
                  srli         s8, t6, 4
                  bgeu         a2, t3, 263f
                  slt          s3, zero, s2
                  andi         s2, t2, 1537
                  slli         gp, t6, 29
256:              sltu         s2, a0, a0
                  ori          s4, a6, -1072
                  lui          t5, 732880
                  bge          s8, t5, 269f
                  bgeu         a5, s5, 265f
                  auipc        s2, 928448
                  lui          tp, 545812
263:              sltiu        s6, a7, -851
                  sltu         tp, a7, t1
265:              auipc        s4, 776642
                  auipc        t1, 139076
sub_5_3:          jal          s4, 2f
0:                jal          a6, 5f
1:                jal          t1, 22f
2:                jal          s4, 27f
3:                jal          ra, 17f
4:                jal          ra, 6f
5:                jal          t1, 13f
6:                jal          tp, 0b
7:                jal          ra, 20f
8:                jal          ra, 4b
9:                jal          s6, 3b
10:               jal          ra, 24f
11:               jal          s3, 14f
12:               jal          ra, 23f
13:               jal          t1, 19f
14:               jal          t1, 8b
15:               jal          ra, 21f
16:               jal          ra, 11b
17:               jal          tp, 1b
18:               jal          ra, 9b
19:               jal          tp, 15b
20:               jal          t1, 12b
21:               jal          ra, 26f
22:               jal          t1, 25f
23:               jal          sp, 10b
24:               jal          ra, 18b
25:               jal          ra, 28f
26:               jal          sp, 7b
27:               jal          t1, 16b
28:               slti         s1, s7, 1764
                  srai         s0, t5, 28
                  bne          sp, t1, 278f
269:              slti         s10, tp, 115
                  srai         sp, s4, 13
                  slti         t2, zero, -989
                  add          s11, t2, a4
                  andi         a5, t4, -1613
                  andi         a1, t2, -2014
                  andi         s10, s9, 1576
                  xori         s5, s10, 667
                  and          a7, s7, a4
278:              slti         s10, s1, -132
                  slti         gp, s10, 936
                  auipc        a1, 500104
                  srai         s3, s4, 0
                  srai         a0, t5, 30
                  srli         s3, a2, 27
                  beq          a0, s1, 294f
                  bltu         s6, s4, 299f
                  srai         gp, t3, 29
                  slli         t2, tp, 3
                  blt          a0, s7, 293f
                  bge          s8, s5, 297f
                  or           t6, t3, t4
                  sll          tp, t5, s6
                  bltu         s6, a1, 299f
293:              slli         s4, s9, 10
294:              bgeu         tp, s10, 296f
                  srl          ra, ra, s10
296:              sltiu        s1, s9, -12
297:              andi         a6, s8, -1156
                  sltiu        ra, s1, -1126
299:              beq          s10, a0, 316f
                  lui          t5, 756780
                  slli         ra, t5, 31
                  andi         ra, sp, -236
                  auipc        s9, 1037476
                  andi         a6, t4, 522
                  slli         t5, a1, 20
                  slti         t4, s5, -1028
                  lui          s11, 666359
                  slli         tp, zero, 8
                  ori          t4, zero, 1708
                  addi         sp, a7, -1573
                  slti         t6, sp, 297
                  sll          ra, a4, zero
                  bge          s0, s3, 320f
                  andi         s6, a1, -1464
                  sltiu        a5, s5, -1788
316:              xori         a1, t5, 824
                  sltiu        s4, s4, 1355
                  sltiu        sp, gp, 922
                  slli         s1, t2, 11
320:              sltiu        s1, sp, -2001
                  slt          s7, s2, s9
                  slt          a6, s5, t5
                  sra          s11, t0, t0
                  or           zero, s0, t3
                  beq          tp, a2, 330f
                  srl          a5, s8, zero
                  sltu         ra, sp, a3
                  sll          gp, a6, sp
                  srai         a0, t0, 2
330:              bltu         s8, t4, 348f
                  bge          t6, t6, 346f
                  beq          s4, s9, 337f
                  sra          t5, a5, a6
                  srli         t6, t3, 6
                  addi         a0, a2, -14
                  slli         s2, t3, 19
337:              ori          t6, ra, 497
                  addi         s8, a2, 1685
                  slli         ra, t5, 28
                  srl          s6, a7, s5
                  sra          s0, t3, tp
                  slli         ra, t4, 20
                  bge          t6, ra, 344f
344:              and          s8, gp, a4
                  slti         t2, t1, -1552
346:              lui          s7, 704597
                  xor          s5, t0, s5
348:              slt          s7, t2, t4
                  beq          s1, s7, 361f
                  sra          s8, s8, s4
                  add          tp, s11, s7
                  sltu         ra, t4, a0
                  addi         s3, s1, -1531
                  auipc        a7, 478533
                  slti         t2, a7, -2039
                  bge          a6, t2, 376f
                  auipc        a6, 78396
                  sltu         a6, s2, gp
                  sltu         a7, t5, s4
                  and          s2, s4, gp
361:              blt          s0, sp, 381f
                  slli         s10, zero, 9
                  bne          s2, a6, 376f
                  slti         t6, t6, -829
                  add          a1, s1, a3
                  and          a2, s8, a4
                  sra          a4, tp, a2
                  srli         s3, s4, 2
                  sub          t2, s3, s7
                  auipc        zero, 220243
                  bne          s5, s9, 384f
                  add          a6, gp, s9
                  auipc        a5, 752005
                  or           s0, a6, gp
                  andi         s0, a1, -652
376:              srl          s10, a6, gp
                  or           s4, s10, a4
                  auipc        tp, 737543
                  sll          s9, a0, a3
                  xor          ra, t2, a0
381:              bge          a7, s8, 394f
                  bne          gp, s5, 389f
                  ori          zero, tp, 427
384:              nop
                  srli         zero, s9, 6
                  sll          a1, s2, a5
                  srli         s0, t0, 16
                  bne          t6, s8, 389f
389:              bge          t3, s10, 398f
                  sltiu        a4, a2, 1622
                  slt          s5, t4, zero
                  srli         s1, s9, 6
                  xor          a0, s2, t0
394:              bgeu         t1, a1, 405f
                  beq          s5, t0, 404f
                  auipc        t1, 265807
                  bltu         t1, s5, 402f
398:              nop
                  sra          sp, s7, t6
                  bne          t4, s0, 406f
                  sltu         t1, a7, a4
402:              bgeu         s11, t4, 419f
                  slli         s7, s11, 8
404:              lui          a6, 436042
405:              nop
406:              lui          s2, 391961
                  bltu         s1, t2, 424f
                  xori         s10, s1, 445
                  blt          t2, a0, 416f
                  srai         s11, s2, 5
                  bgeu         s8, s2, 421f
                  auipc        sp, 188589
                  bltu         a1, a6, 418f
                  or           t6, gp, s8
                  sra          s11, t1, sp
sub_5_6:          jal          s4, 18f
0:                jal          ra, 15f
1:                jal          t5, 8f
2:                jal          ra, 17f
3:                jal          ra, 25f
4:                jal          ra, 24f
5:                jal          ra, 20f
6:                jal          ra, 26f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          ra, 16f
10:               jal          s6, 22f
11:               jal          t1, 13f
12:               jal          ra, 23f
13:               jal          t6, 7b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               jal          ra, 3b
17:               jal          ra, 1b
18:               jal          ra, 11b
19:               jal          ra, 5b
20:               jal          ra, 0b
21:               jal          tp, 19b
22:               jal          tp, 14b
23:               jal          ra, 21b
24:               jal          ra, 2b
25:               jal          a6, 6b
26:               slli         a4, s8, 27
416:              ori          a4, a1, 998
                  slt          t2, s9, s1
418:              bgeu         s3, s11, 426f
419:              sltu         a1, t5, a3
                  sltu         a5, s5, s11
421:              addi         a7, s5, 0
                  andi         a6, s3, -386
                  sltiu        a7, a3, -1817
424:              andi         s2, tp, -1960
                  slti         s9, a0, 1771
426:              srli         s1, s11, 31
                  andi         s6, t1, 1442
                  andi         s8, a3, -210
                  bltu         t6, t4, 432f
                  sll          t5, t3, a1
                  sltiu        a7, s2, -1718
432:              sll          s0, s3, a4
                  auipc        s6, 696515
                  add          t4, s9, s11
                  srli         s11, t1, 25
                  lui          a5, 392387
                  and          a2, ra, t2
                  xor          t2, s4, a6
                  lw           s4, 4(t0)
                  addi         t0, t0, 20
                  srli         s10, s11, 14
633:              addi x30, x20, 1
633:              jalr x30, x30, 0
sub_4:            sltiu        a7, s5, -333
                  blt          s3, t1, sub_4_stack_p
                  lui          s7, 381985
sub_4_stack_p:    addi         t0, t0, -44
                  sw           s4, 4(t0)
                  andi         s8, s6, 1199
                  sltu         s1, s0, t6
                  xor          s11, a2, s10
                  addi         a6, s9, 26
                  slti         s0, t4, 1089
sub_4_2:          jal          s4, 20f
0:                jal          ra, 8f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          ra, 16f
4:                jal          t1, 5f
5:                jal          s1, 0b
6:                jal          ra, 21f
7:                jal          s1, 2b
8:                jal          t1, 11f
9:                jal          s6, 4b
10:               jal          a2, 18f
11:               jal          ra, 13f
12:               jal          ra, 14f
13:               jal          t1, 1b
14:               jal          sp, 15f
15:               jal          ra, 22f
16:               jal          s10, 23f
17:               jal          ra, 24f
18:               jal          s9, 3b
19:               jal          ra, 12b
20:               jal          ra, 19b
21:               jal          s2, 17b
22:               jal          ra, 10b
23:               jal          ra, 7b
24:               srai         s9, s1, 29
sub_4_3:          jal          s4, 13f
0:                jal          ra, 26f
1:                jal          ra, 3f
2:                jal          ra, 19f
3:                jal          ra, 17f
4:                jal          a0, 5f
5:                jal          t1, 9f
6:                jal          tp, 7f
7:                jal          ra, 16f
8:                jal          ra, 10f
9:                jal          ra, 0b
10:               jal          t1, 21f
11:               jal          t1, 12f
12:               jal          t1, 24f
13:               jal          ra, 18f
14:               jal          ra, 15f
15:               jal          ra, 20f
16:               jal          ra, 2b
17:               jal          ra, 14b
18:               jal          ra, 11b
19:               jal          ra, 4b
20:               jal          a2, 22f
21:               jal          s3, 23f
22:               jal          s8, 25f
23:               jal          ra, 1b
24:               jal          ra, 8b
25:               jal          tp, 6b
26:               sra          s6, a3, a1
sub_4_1:          jal          s4, 19f
0:                jal          tp, 14f
1:                jal          s1, 4f
2:                jal          ra, 3f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          ra, 12f
6:                jal          ra, 11f
7:                jal          t1, 17f
8:                jal          ra, 0b
9:                jal          ra, 2b
10:               jal          s9, 5b
11:               jal          t1, 9b
12:               jal          t2, 15f
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          s2, 6b
16:               jal          a1, 20f
17:               jal          a6, 18f
18:               jal          ra, 13b
19:               jal          ra, 1b
20:               sra          s4, sp, a6
                  sra          ra, s4, s7
                  bltu         s2, t4, 8f
                  bne          a3, ra, 8f
                  bltu         s4, s4, 21f
                  andi         s8, a3, 378
                  ori          t1, s3, 435
                  ori          s0, s6, -1023
                  srai         s3, gp, 9
8:                bltu         sp, a0, 21f
                  sub          s10, gp, a4
                  bne          s3, s9, 20f
                  bne          t5, s4, 16f
                  ori          t5, s2, 808
                  or           s1, a5, tp
                  sltiu        s10, t5, 577
                  sltiu        s9, tp, 719
16:               sub          a6, a5, s3
                  bltu         ra, s2, 31f
                  sll          a2, t2, s7
                  sub          t5, s11, gp
20:               add          s9, t3, t6
21:               bltu         a2, t5, 38f
                  addi         ra, s10, -1144
                  bltu         s8, t0, 30f
                  sll          s6, tp, sp
                  or           s11, t6, s2
                  sltiu        a4, s5, 466
                  xori         s11, ra, 1831
                  sltu         s4, s6, t2
                  srai         s7, s5, 4
30:               or           s6, s1, s2
31:               bne          a2, t3, 37f
                  bgeu         s3, s2, 47f
                  sltiu        zero, t2, -1657
                  slli         a7, a4, 17
                  slt          s3, s3, s0
                  xori         s11, t4, 403
37:               and          s1, s7, a6
38:               srl          zero, s5, s0
                  sub          a6, a6, zero
                  addi         s8, a4, -848
                  bge          a2, s3, 55f
                  auipc        ra, 202581
                  sra          s6, s5, t4
                  bltu         t0, t3, 62f
                  bgeu         s8, s6, 59f
                  or           gp, t4, t6
47:               andi         t5, t5, -1899
                  auipc        a1, 74000
                  srai         s3, a0, 4
                  sra          a7, s3, s4
                  auipc        s1, 790404
                  sub          a6, t1, s5
                  sltiu        s9, s5, -1206
                  andi         s3, s11, -144
55:               srai         t2, a6, 1
                  bltu         a6, gp, 68f
                  slti         gp, zero, -386
                  bltu         a1, a6, 62f
59:               slli         s6, a5, 8
                  auipc        t1, 163955
                  nop
62:               srli         zero, t4, 20
                  lui          s7, 613057
                  andi         a2, s11, 1136
                  bgeu         zero, t4, 83f
                  bltu         a4, ra, 72f
                  add          a7, s6, s5
sub_4_0:          jal          s4, 3f
0:                jal          s0, 11f
1:                jal          s2, 8f
2:                jal          gp, 12f
3:                jal          t1, 0b
4:                jal          ra, 9f
5:                jal          s4, 2b
6:                jal          ra, 10f
7:                jal          ra, 4b
8:                jal          ra, 14f
9:                jal          a0, 6b
10:               jal          ra, 16f
11:               jal          ra, 15f
12:               jal          ra, 7b
13:               jal          t1, 5b
14:               jal          t1, 13b
15:               jal          t1, 1b
16:               andi         s7, s3, -840
68:               ori          s10, s3, 1253
                  xori         t2, s7, -127
                  xori         s4, s0, 721
                  beq          a7, gp, 90f
72:               sra          gp, tp, t2
                  xori         s8, t1, -722
                  nop
                  sll          t4, a4, s11
                  sll          s0, s3, a4
                  and          sp, t1, ra
                  addi         a2, a7, -690
                  or           s11, a6, a3
                  and          s10, sp, a7
                  and          a1, s10, ra
                  slli         s6, a4, 28
83:               add          s1, a2, a1
                  auipc        a1, 252960
                  andi         s11, s1, 1273
                  srl          s9, s6, s11
                  auipc        a0, 395828
                  sltiu        a5, t0, 608
                  or           s5, a5, t5
90:               bltu         t1, s0, 97f
                  bge          s6, t6, 97f
                  or           ra, t2, s5
                  slti         a4, a7, -753
                  slti         s11, a3, 332
                  sll          s6, tp, a5
                  sra          s2, t0, t5
97:               blt          a7, s2, 111f
                  auipc        s7, 636812
                  bltu         ra, s0, 100f
100:              slt          a4, s1, tp
                  auipc        a4, 141559
                  ori          s10, s2, 579
                  sll          t1, s4, a6
                  blt          s4, a5, 115f
                  srli         s11, s8, 0
                  nop
                  andi         a6, s0, -1343
                  lui          zero, 913439
                  beq          s3, a5, 129f
                  auipc        t1, 817634
111:              addi         s0, s0, -1808
                  srl          s3, s2, ra
                  auipc        t4, 276396
                  add          sp, sp, a2
115:              sltiu        s9, s3, -363
                  or           t1, t0, s6
                  sll          a4, sp, a1
                  andi         a0, a2, -1398
                  bgeu         t4, s6, 120f
120:              slt          s5, s4, a2
                  nop
                  slti         t5, t6, 197
                  beq          a3, s11, 141f
                  sub          t1, s7, a6
                  sub          s2, a6, s0
                  lui          s11, 746086
                  xori         t4, a6, 1226
                  srai         a5, a7, 23
129:              slt          zero, a7, t3
                  srai         s9, sp, 29
                  xori         s7, a0, 1174
                  add          t5, zero, t5
                  nop
                  addi         s5, s6, 778
                  bge          ra, s6, 144f
                  srai         gp, a5, 22
                  nop
                  xori         t1, s2, 1783
                  bge          t5, t2, 144f
                  add          s7, s11, s6
141:              andi         s7, a1, 2018
                  andi         a6, s2, -1900
                  add          a0, s7, s0
144:              slli         s9, s2, 0
                  lui          s2, 304565
                  beq          t3, s11, 148f
                  sltu         s7, gp, s9
148:              sll          a4, t3, s6
                  lui          sp, 851040
                  beq          a7, t1, 151f
151:              bne          a3, s11, 171f
                  andi         a2, t1, 700
                  or           a2, s4, a4
                  bge          t0, ra, 155f
155:              xor          a2, s8, s5
                  auipc        a2, 103491
                  bgeu         a5, t1, 162f
                  ori          t2, a7, -1697
                  ori          a5, a3, -285
                  auipc        a1, 335256
                  xor          s7, a4, s3
162:              andi         s2, s1, 114
                  sll          a2, s9, zero
                  or           s11, a4, t4
                  blt          a6, a6, 176f
                  beq          a4, s10, 170f
                  auipc        zero, 935497
                  xor          a5, t0, s8
                  xori         s4, s9, 583
170:              xor          a0, s7, s5
171:              or           s7, sp, s11
                  lui          t2, 499371
                  srl          t2, a5, t4
                  blt          s4, t6, 192f
                  bltu         a6, tp, 181f
176:              slli         a2, ra, 15
                  sll          a1, s4, s4
                  bgeu         a7, t3, 196f
                  sltu         s0, s6, s2
                  bge          s11, a6, 192f
181:              sltiu        s4, s0, 1416
                  bne          a2, zero, 201f
                  add          s3, t4, s1
                  slt          zero, ra, a5
                  sub          a4, s7, s2
                  slti         a1, a2, 1065
                  lui          s1, 287374
                  ori          t5, a2, 1376
                  ori          a7, t2, -311
                  srl          s1, s2, s1
                  auipc        a6, 1033155
192:              slt          a7, sp, s3
                  or           a5, t0, ra
                  beq          t5, s0, 208f
                  andi         t2, s2, -1267
196:              blt          s3, s10, 211f
                  srli         ra, t3, 24
                  slli         zero, s7, 30
                  addi         a6, a7, -738
                  sltiu        sp, s4, 1455
201:              sub          t1, s3, a6
                  bltu         t4, s8, 209f
                  addi         a2, a3, 377
                  bgeu         sp, a4, 218f
                  bne          s10, a2, 212f
                  auipc        s1, 887866
                  slti         a4, ra, 669
208:              lui          s8, 579951
209:              sra          s7, tp, ra
                  or           s2, s3, a3
211:              beq          zero, a0, 220f
212:              and          t6, a3, t0
                  bge          t4, a4, 220f
                  sra          a1, a3, sp
                  xori         a1, s1, 1985
                  sra          s4, t5, s2
                  bne          s5, s11, 220f
218:              slti         t2, a1, -2027
                  slti         a6, gp, -762
220:              ori          s6, s9, 706
                  sltu         s6, a1, t0
                  srai         sp, s2, 16
                  lw           s4, 4(t0)
                  auipc        a2, 497439
                  addi         t0, t0, 44
                  lui          a5, 615359
                  srli         s5, t5, 15
                  xor          s1, s10, s0
                  or           s0, s11, t1
                  xori         sp, a5, 615
335:              addi x8, x20, 0
335:              jalr x8, x8, 0
sub_3:            sltiu        a1, s7, -776
                  lui          s7, 1034830
                  addi         t0, t0, -44
                  sw           s4, 4(t0)
                  addi         s6, tp, -1827
                  sltu         a7, a1, s7
                  nop
                  auipc        s1, 905670
                  srai         t2, ra, 21
sub_3_0:          jal          s4, 0f
0:                jal          ra, 7f
1:                jal          a0, 4f
2:                jal          ra, 1b
3:                jal          ra, 12f
4:                jal          s7, 11f
5:                jal          s5, 13f
6:                jal          t1, 9f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          t1, 3b
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          ra, 10b
13:               sltu         a2, t3, a1
sub_3_5:          jal          s4, 1f
0:                jal          ra, 5f
1:                jal          t1, 13f
2:                jal          t1, 3f
3:                jal          gp, 8f
4:                jal          a4, 7f
5:                jal          s5, 14f
6:                jal          t1, 0b
7:                jal          s6, 15f
8:                jal          t1, 12f
9:                jal          t1, 10f
10:               jal          t1, 4b
11:               jal          t1, 6b
12:               jal          s9, 9b
13:               jal          ra, 11b
14:               jal          ra, 2b
15:               sltiu        s6, t2, 916
sub_3_2:          jal          s4, 2f
0:                jal          t1, 17f
1:                jal          s11, 7f
2:                jal          ra, 13f
3:                jal          t1, 21f
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          t1, 14f
7:                jal          ra, 16f
8:                jal          s7, 12f
9:                jal          ra, 4b
10:               jal          s6, 3b
11:               jal          ra, 19f
12:               jal          t1, 18f
13:               jal          ra, 15f
14:               jal          ra, 5b
15:               jal          s7, 20f
16:               jal          ra, 0b
17:               jal          ra, 9b
18:               jal          ra, 10b
19:               jal          t1, 1b
20:               jal          ra, 6b
21:               add          s5, tp, s5
sub_3_1:          jal          s4, 0f
0:                jal          t1, 3f
1:                jal          ra, 13f
2:                jal          ra, 5f
3:                jal          a5, 11f
4:                jal          t1, 2b
5:                jal          t1, 8f
6:                jal          t1, 1b
7:                jal          a5, 9f
8:                jal          ra, 6b
9:                jal          sp, 12f
10:               jal          ra, 7b
11:               jal          t1, 10b
12:               jal          a1, 4b
13:               and          a7, s7, zero
sub_3_3:          jal          s4, 15f
0:                jal          ra, 19f
1:                jal          ra, 11f
2:                jal          sp, 8f
3:                jal          ra, 2b
4:                jal          s9, 10f
5:                jal          t1, 3b
6:                jal          ra, 4b
7:                jal          ra, 9f
8:                jal          s9, 7b
9:                jal          tp, 12f
10:               jal          ra, 16f
11:               jal          a0, 17f
12:               jal          ra, 6b
13:               jal          t1, 14f
14:               jal          ra, 5b
15:               jal          sp, 13b
16:               jal          ra, 18f
17:               jal          ra, 20f
18:               jal          ra, 0b
19:               jal          t1, 1b
20:               addi         t6, t4, 73
                  auipc        s5, 945647
                  sra          s5, a4, a4
                  auipc        s6, 272362
                  srli         s4, t2, 12
                  xori         s0, ra, 1008
                  beq          s6, t0, 13f
                  and          a1, a0, a5
                  srli         s8, s5, 4
                  sltu         s3, s5, sp
                  lui          s10, 423205
                  bge          a3, t3, 21f
                  sra          t6, t5, a6
                  bne          a6, s2, 14f
13:               slti         a2, a4, 602
14:               xori         zero, t0, -786
                  sub          t4, s1, t6
                  xori         s11, s10, 974
                  add          a0, a5, s11
                  xori         tp, a3, 52
                  nop
                  ori          a7, s8, 1898
21:               addi         zero, s0, 861
                  lui          t1, 944515
                  slli         t5, s4, 24
                  bge          t2, t6, 27f
                  srli         t2, sp, 27
                  bgeu         s8, s11, 28f
27:               srl          a4, a0, a5
28:               slt          t2, a2, s4
                  blt          zero, a1, 33f
                  slt          s5, s8, s11
                  lui          a1, 640855
                  or           a4, ra, s0
33:               add          t4, sp, s11
                  xor          t2, t6, t0
                  bge          t3, t1, 53f
                  or           s8, a3, t4
                  and          s3, t6, t4
                  nop
                  bltu         s3, a6, 59f
                  bltu         s1, s4, 55f
                  sra          t1, a5, t1
                  slti         tp, t2, 832
                  ori          s2, s9, -1158
                  bltu         a7, s3, 49f
                  bge          s10, gp, 52f
                  sub          tp, t0, s9
                  slt          s10, t5, a4
                  nop
49:               lui          t6, 304288
                  auipc        s10, 69950
                  srai         s3, tp, 21
52:               srl          s0, t4, tp
53:               blt          a5, s0, 54f
54:               add          s9, t5, s5
55:               xor          s7, t1, t6
                  bne          zero, s4, 76f
                  srli         a4, t3, 8
                  nop
59:               or           a4, s4, t0
                  addi         a0, s1, -436
                  srai         a2, ra, 16
                  sll          s2, a0, zero
                  sltu         s11, s9, s6
                  srli         s11, a3, 6
                  slti         s9, s5, 1671
                  andi         s2, t0, -45
                  slti         t6, zero, -46
                  andi         s3, ra, 954
                  sll          ra, t3, t1
                  xor          a6, a6, gp
                  slli         a7, s0, 24
                  sltiu        ra, s0, -210
                  srai         s8, s6, 0
                  addi         s10, s0, 395
                  blt          s0, a3, 83f
76:               add          s3, a6, t0
                  sub          s3, t1, zero
                  and          s1, s9, zero
                  addi         s6, a5, 14
                  srai         a0, a1, 3
                  ori          a2, gp, -589
                  bgeu         a1, zero, 96f
83:               sltu         t4, t4, s6
                  sub          a0, a3, a1
                  bne          a0, gp, 95f
                  slt          s8, a7, t0
                  blt          a7, t0, 94f
                  slt          ra, t2, s4
                  bgeu         s8, s6, 91f
                  beq          a3, s10, 99f
91:               lui          s4, 130053
                  lui          s1, 259680
                  bltu         s7, t2, 100f
94:               nop
95:               slti         t6, s7, -1172
96:               sltu         s4, s11, a6
                  slli         s2, s9, 19
                  nop
99:               nop
100:              slli         gp, s8, 11
                  addi         s10, a0, 856
                  sub          zero, a1, s7
                  sll          s5, a6, s4
                  ori          s6, s1, -1934
                  blt          t2, a3, 106f
106:              blt          s1, s4, 113f
                  beq          s0, s1, 120f
                  and          tp, t4, sp
                  srli         t4, a2, 9
                  auipc        sp, 671330
                  blt          s0, s11, 127f
                  andi         t6, a6, 1673
113:              srli         s5, t1, 15
                  and          s9, t6, t6
                  sub          a2, s7, s7
                  bltu         t3, s10, 127f
                  xori         tp, a4, 1696
                  sra          s2, a5, t6
                  slti         s1, t0, 1013
120:              addi         zero, s3, 593
                  sub          tp, zero, s5
                  sll          a4, zero, a6
                  or           t1, t5, a0
                  nop
                  ori          gp, s7, 393
                  xori         s6, t1, 883
127:              xori         t2, t0, 1511
                  sub          s7, t3, s10
                  bne          s7, tp, 141f
                  bgeu         gp, t1, 138f
                  lui          t1, 125011
                  bne          s10, t2, 138f
                  auipc        s2, 251224
                  srli         t6, s8, 3
                  sltu         ra, a2, tp
                  xori         s5, t4, -265
                  slti         a6, t4, 1450
138:              bne          t1, sp, 143f
                  ori          a1, t5, -426
                  and          sp, s2, a1
141:              xor          a1, s11, s0
                  sltiu        t5, s7, -1631
143:              andi         a4, tp, 1037
                  bltu         ra, a3, 153f
                  sub          a1, s4, a5
                  bltu         t0, s6, 148f
                  xori         s11, s0, -1207
148:              bltu         s1, sp, 159f
                  bne          sp, t3, 164f
                  srli         s10, t4, 21
                  sub          t5, s5, gp
                  bgeu         s3, s1, 156f
153:              sra          a7, s7, a0
                  srli         a6, a2, 2
                  srli         t2, s11, 28
156:              add          a2, a6, t5
                  bgeu         s10, a0, 164f
                  or           s6, s0, t5
159:              auipc        a5, 590994
                  xor          t6, t4, sp
                  xor          a0, a5, t6
                  andi         s2, zero, 970
                  or           a0, a6, tp
164:              sll          s7, t0, t6
                  srai         a1, ra, 23
                  srai         sp, a2, 21
                  nop
                  and          s1, gp, s1
                  and          a4, sp, a0
                  srl          a5, s9, t2
                  and          t4, s0, s0
                  bltu         a7, s10, 182f
                  srli         s0, t1, 13
                  beq          s10, s6, 180f
                  slt          t6, t4, s5
                  sub          s5, gp, gp
                  bltu         s0, tp, 190f
                  xor          s2, t0, a6
                  bne          t4, a5, 186f
180:              andi         s4, t5, -816
                  addi         t5, gp, 376
182:              add          s5, gp, a2
                  add          zero, s11, s9
                  bgeu         a6, t3, 186f
                  sltiu        t4, t3, 580
186:              sra          sp, a0, a1
                  lui          s2, 795625
                  or           a6, s7, s4
                  srai         sp, s4, 12
190:              sltiu        s5, s7, 419
                  auipc        t2, 821697
                  sltiu        a2, t5, 1135
                  add          tp, t1, zero
                  sltu         s8, a5, gp
                  beq          a7, sp, 203f
                  addi         s6, sp, -926
                  bne          t5, t2, 200f
                  xori         a6, s1, -1449
                  sra          a5, ra, s1
200:              xori         s8, a1, -1261
                  slt          t6, s3, s0
                  bltu         sp, s9, 213f
203:              lui          s2, 15010
                  bne          t2, s5, 205f
205:              srl          a5, t1, s3
                  blt          t1, s9, 218f
                  srl          s3, t2, sp
                  srl          s9, t6, s8
                  auipc        a1, 820767
                  bltu         s2, s11, 228f
                  slti         t1, t4, 1978
                  and          s5, a5, t1
213:              xor          s2, s0, tp
                  addi         s2, s8, -218
                  srai         a7, a2, 17
                  srli         tp, t4, 28
                  sltiu        a2, a1, -614
218:              xori         zero, a6, 1292
                  slt          s5, s6, s5
                  lui          a0, 3941
                  sub          s11, s8, a3
                  slli         s5, gp, 18
                  slli         t5, gp, 3
                  sra          a4, s2, tp
                  addi         gp, a7, -1424
                  bne          t5, a7, 231f
                  slti         s11, a3, -417
228:              slt          zero, t4, gp
                  bgeu         t6, zero, 230f
230:              sltu         s0, s1, s6
231:              srai         t2, ra, 20
                  sra          s8, a0, a6
                  ori          s8, s2, 1460
                  srai         t1, t1, 29
                  add          s5, t5, tp
                  blt          a6, s5, 244f
                  slti         ra, a5, 258
                  slli         a7, t2, 12
                  add          s8, a5, t0
                  slt          s0, t3, s9
                  sub          s0, a2, a4
                  slti         a1, t2, -250
                  add          s4, a7, a2
sub_3_4:          jal          s4, 19f
0:                jal          t1, 26f
1:                jal          ra, 25f
2:                jal          t4, 20f
3:                jal          gp, 4f
4:                jal          ra, 7f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          tp, 14f
11:               jal          t1, 16f
12:               jal          ra, 24f
13:               jal          ra, 18f
14:               jal          ra, 9b
15:               jal          ra, 21f
16:               jal          t1, 5b
17:               jal          t1, 8b
18:               jal          t1, 3b
19:               jal          t1, 12b
20:               jal          ra, 23f
21:               jal          a2, 17b
22:               jal          s5, 15b
23:               jal          a0, 27f
24:               jal          t1, 22b
25:               jal          s5, 6b
26:               jal          ra, 13b
27:               sltu         t5, ra, t1
244:              lui          t5, 322732
                  and          s11, tp, s1
                  xori         a5, a3, 1199
                  bltu         s6, s1, 249f
                  bgeu         t3, s9, 253f
249:              ori          t4, s1, 1840
                  srli         s6, a1, 1
                  lui          t2, 544197
                  bgeu         a7, s5, 272f
253:              nop
                  auipc        s9, 300373
                  xor          a2, a0, a0
                  beq          a6, a0, 263f
                  or           s3, s6, sp
                  sub          t1, a5, t1
                  xor          s7, s3, gp
                  or           a2, s1, t6
                  and          t1, a6, s0
                  sll          s10, t0, s4
263:              srli         sp, ra, 15
                  addi         t5, a1, -139
                  srl          s1, s7, t2
                  slti         tp, a0, -756
                  slt          s7, t3, t6
                  or           t4, s8, a0
                  blt          a5, t3, 277f
                  add          tp, ra, a1
                  sltu         s2, sp, s2
272:              beq          sp, t2, 281f
                  slt          gp, s4, t2
                  slli         t4, zero, 26
                  srai         gp, a7, 15
                  xor          a7, t2, a6
277:              blt          s1, a6, 297f
                  add          t5, s2, s0
                  srai         a0, sp, 8
                  sra          gp, s0, a6
281:              and          s7, t5, t1
                  slt          s9, s3, s10
                  xori         t1, s11, 612
                  beq          s8, s6, 293f
                  sll          s1, s9, a4
                  slt          t6, sp, a3
                  addi         s9, s0, 666
                  sltu         t5, t1, sp
                  xori         gp, t5, 245
                  sra          a7, s11, a3
                  bge          t6, a0, 305f
                  bge          gp, t3, 308f
293:              srai         a0, s5, 12
                  andi         t1, s7, -944
                  slti         zero, a6, 94
                  bgeu         s7, tp, 303f
297:              lui          s3, 7271
                  xor          s4, s7, t6
                  auipc        a6, 287117
                  auipc        t6, 922518
                  addi         s8, s2, 1187
                  xor          s4, t1, sp
303:              add          tp, s1, s10
                  xor          s5, s9, s4
305:              lui          s4, 618864
                  slli         s9, t2, 17
                  or           a5, s3, a4
308:              sra          t5, s1, s8
                  or           s1, t1, s0
                  beq          ra, s4, 330f
                  srl          s6, ra, s4
                  addi         t4, t0, -259
                  blt          t3, tp, 321f
                  and          zero, s5, s1
                  bge          a6, s5, 321f
                  srli         s0, s11, 26
                  bgeu         a1, t6, 325f
                  addi         s11, a5, -1642
                  andi         s5, s10, -162
                  xor          gp, t3, t4
321:              sltiu        tp, t4, 703
                  slli         t6, s10, 12
                  srli         s0, t1, 0
                  addi         s1, t0, -707
325:              lui          a2, 213989
                  srli         s4, a5, 6
                  xor          t5, a3, sp
                  srl          t5, a7, s10
                  lui          t2, 826023
330:              and          t4, s7, a4
                  slt          a1, a5, s6
                  or           sp, a6, s4
                  lw           s4, 4(t0)
                  sra          s9, s5, zero
                  addi         t0, t0, 44
                  xori         a4, s8, 909
                  ori          s8, a2, -1672
                  slti         zero, ra, 510
469:              addi x6, x20, 1
469:              jalr x6, x6, 0
sub_1:            sll          s1, s10, a1
                  sll          a2, s4, a0
                  sub          s2, s9, tp
                  sll          a2, s0, t1
                  addi         t0, t0, -64
                  ori          a2, a1, -1639
                  sw           s4, 4(t0)
                  sub          t5, t6, a4
                  srli         a4, s11, 3
                  ori          s3, s4, -1556
sub_1_4:          jal          s4, 4f
0:                jal          t4, 1f
1:                jal          ra, 10f
2:                jal          ra, 11f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          ra, 7f
7:                jal          s5, 3b
8:                jal          ra, 5b
9:                jal          ra, 13f
10:               jal          s5, 9b
11:               jal          t1, 8b
12:               jal          a2, 2b
13:               xor          a0, a2, s7
sub_1_2:          jal          s4, 8f
0:                jal          ra, 10f
1:                jal          tp, 16f
2:                jal          s11, 6f
3:                jal          t1, 7f
4:                jal          s2, 15f
5:                jal          s0, 13f
6:                jal          ra, 0b
7:                jal          sp, 2b
8:                jal          tp, 14f
9:                jal          a2, 19f
10:               jal          ra, 5b
11:               jal          t1, 18f
12:               jal          sp, 17f
13:               jal          gp, 22f
14:               jal          ra, 4b
15:               jal          ra, 11b
16:               jal          t1, 21f
17:               jal          s3, 9b
18:               jal          ra, 20f
19:               jal          gp, 1b
20:               jal          t1, 12b
21:               jal          t1, 3b
22:               srli         s9, a4, 16
sub_1_3:          jal          s4, 13f
0:                jal          t1, 3f
1:                jal          ra, 9f
2:                jal          sp, 0b
3:                jal          sp, 14f
4:                jal          t1, 8f
5:                jal          ra, 11f
6:                jal          ra, 5b
7:                jal          a1, 10f
8:                jal          t1, 6b
9:                jal          sp, 12f
10:               jal          ra, 4b
11:               jal          t6, 2b
12:               jal          ra, 7b
13:               jal          ra, 1b
14:               srli         s4, s6, 23
sub_1_6:          jal          s4, 20f
0:                jal          s6, 22f
1:                jal          t1, 5f
2:                jal          ra, 17f
3:                jal          a0, 13f
4:                jal          tp, 14f
5:                jal          ra, 16f
6:                jal          ra, 21f
7:                jal          tp, 6b
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          ra, 18f
12:               jal          gp, 19f
13:               jal          a2, 23f
14:               jal          t1, 9b
15:               jal          t1, 8b
16:               jal          tp, 10b
17:               jal          ra, 4b
18:               jal          sp, 1b
19:               jal          ra, 2b
20:               jal          a2, 15b
21:               jal          ra, 0b
22:               jal          ra, 12b
23:               xor          s9, t1, a6
sub_1_1:          jal          s4, 9f
0:                jal          t1, 1f
1:                jal          ra, 2f
2:                jal          s10, 4f
3:                jal          ra, 0b
4:                jal          a5, 7f
5:                jal          ra, 10f
6:                jal          t1, 5b
7:                jal          t1, 8f
8:                jal          sp, 6b
9:                jal          t1, 3b
10:               slti         t2, t5, -1262
                  andi         s2, zero, 963
                  ori          s3, s0, 572
                  sltiu        s11, s7, -1572
                  slt          t4, a4, t1
                  bne          t2, s2, 7f
                  lui          a7, 807370
                  xori         a6, s3, -1055
7:                srl          s3, gp, a4
sub_1_5:          jal          s4, 10f
0:                jal          ra, 5f
1:                jal          tp, 8f
2:                jal          s2, 13f
3:                jal          s2, 9f
4:                jal          s1, 6f
5:                jal          s4, 3b
6:                jal          ra, 7f
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          ra, 14f
10:               jal          ra, 1b
11:               jal          t1, 4b
12:               jal          ra, 2b
13:               jal          s4, 11b
14:               sltiu        s11, a3, 700
                  beq          s3, t3, 28f
                  beq          s8, a4, 12f
                  bge          a1, a4, 30f
                  bltu         t2, a1, 14f
12:               srai         tp, tp, 6
                  beq          t3, t0, 33f
14:               bltu         a6, s3, 25f
                  bltu         s8, s0, 25f
                  srai         s3, a0, 27
                  srai         t6, a3, 29
                  add          t1, s6, a1
                  xor          s3, t1, s2
                  auipc        s1, 65495
                  andi         s7, a3, -872
                  srl          zero, a2, t2
                  or           a6, s7, s2
                  slt          s3, zero, sp
25:               bltu         a0, t2, 45f
                  blt          a6, s4, 31f
                  slti         s1, t1, 1914
28:               and          a7, s5, s9
                  xor          ra, zero, t5
30:               srli         tp, a0, 6
31:               lui          a6, 767910
                  bne          s3, tp, 38f
33:               beq          a5, t4, 42f
                  and          t6, zero, gp
                  sltu         a7, a5, t2
                  or           s1, s1, s0
                  srai         t4, s8, 4
38:               bgeu         t4, t1, 55f
                  slli         a0, s9, 0
                  srl          sp, gp, sp
                  bne          s3, a7, 56f
42:               xor          t5, t0, s4
                  addi         a7, t1, 160
                  lui          s4, 1034362
45:               addi         a2, t0, -1380
                  srl          s2, t1, s8
                  slt          a0, a1, zero
                  sltiu        t6, s0, 1748
                  xor          s0, t4, a1
                  slti         gp, s11, 494
                  addi         a6, s1, 959
                  auipc        a0, 458387
                  srai         s6, a7, 19
                  andi         sp, a0, -232
55:               srl          a2, t5, s9
56:               andi         s11, s1, -25
                  and          a4, a4, a6
                  and          ra, t6, t2
                  andi         a5, a6, 1
                  bne          zero, a1, 71f
                  slli         s3, s10, 12
                  sub          a4, t4, s8
                  and          a0, t0, ra
                  bne          s1, a5, 67f
                  slt          a6, s2, t6
                  xori         s1, ra, 268
67:               or           a5, s6, ra
                  bltu         a7, s6, 78f
                  sltiu        a6, s4, 206
                  sll          zero, s1, a3
71:               xori         a0, s2, -973
                  xori         s7, t1, -1214
                  bne          t6, a6, 76f
                  sra          tp, s10, ra
                  add          s8, a0, ra
76:               xor          t1, a3, a0
                  slli         zero, gp, 9
78:               slt          a6, s9, t1
                  andi         s4, s7, 550
                  slti         a2, s0, -658
                  sltu         a7, t5, a2
                  sll          s1, s7, s9
                  add          s1, gp, s2
                  srai         s3, t0, 3
                  andi         a6, s9, 1109
                  sra          s11, t0, s3
                  sra          a5, a7, t4
                  xor          t5, s11, s4
                  add          a1, t4, s9
                  sltu         a2, a6, zero
                  blt          t4, t6, 110f
                  bge          s2, s2, 96f
                  srai         s9, s8, 29
                  sub          a6, s4, t5
                  beq          s8, s8, 99f
96:               srli         tp, t2, 29
                  or           sp, a5, t5
                  sltu         s7, s10, gp
99:               bltu         s1, s8, 105f
                  add          s1, s9, t1
                  lui          s11, 959829
                  ori          s10, a7, -194
                  sll          s11, s3, a1
                  xori         a7, s11, 1679
105:              blt          a1, s0, 116f
                  slti         t4, s9, 1600
                  xori         zero, a2, -946
                  add          ra, a0, zero
                  auipc        s5, 106486
110:              auipc        s1, 304484
                  slt          s6, gp, s7
                  srl          t4, t6, t6
                  slt          a7, s4, s1
sub_1_0:          jal          s4, 9f
0:                jal          t1, 3f
1:                jal          t4, 0b
2:                jal          s4, 5f
3:                jal          a0, 10f
4:                jal          a5, 12f
5:                jal          ra, 6f
6:                jal          ra, 16f
7:                jal          t4, 15f
8:                jal          tp, 2b
9:                jal          t1, 14f
10:               jal          t1, 8b
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               jal          ra, 11b
14:               jal          t1, 4b
15:               jal          t1, 13b
16:               srli         s1, s6, 15
                  add          a2, a5, a1
                  srli         s3, tp, 9
116:              slli         s7, t6, 29
                  add          t1, s9, tp
                  srai         s0, t6, 11
                  and          a4, ra, s4
                  srli         s6, s7, 0
                  bne          s2, a6, 141f
                  sra          s2, a5, zero
                  slti         ra, gp, 1857
                  xori         a1, a2, -1644
                  auipc        s6, 942828
                  srli         s10, a0, 21
                  sra          s1, s7, s4
                  andi         a2, a5, -69
                  slt          a2, t4, t6
                  sltu         t4, a3, tp
                  blt          s6, t2, 146f
                  add          t6, a3, s5
                  blt          ra, s11, 153f
                  or           t2, s6, t2
                  srai         s1, s7, 31
                  blt          s10, a2, 155f
                  beq          s7, gp, 142f
                  sltiu        s2, a4, -844
                  sltiu        a4, s7, 1025
                  sub          t5, s2, gp
141:              sra          s1, t2, s11
142:              and          s10, t1, gp
                  andi         gp, ra, -1715
                  bge          s3, s8, 148f
                  bge          t3, s9, 147f
146:              sub          s9, a1, s11
147:              ori          s8, s9, -1676
148:              xor          a2, t1, a5
                  slli         t6, s7, 17
                  srl          a4, s8, a6
                  xor          s4, t2, t5
                  sltu         t5, s6, s4
153:              ori          ra, s5, 1124
                  slt          tp, zero, a2
155:              blt          s10, s0, 175f
                  xor          ra, a3, t0
                  bge          s0, sp, 160f
                  xori         s6, a3, 594
                  slt          s3, t2, sp
160:              beq          a1, a5, 180f
                  slli         s2, a3, 21
                  lui          s9, 48072
                  sll          s1, t4, gp
                  sra          a2, s9, a0
                  sra          t5, s0, a2
                  bgeu         t1, a0, 169f
                  or           a5, gp, a7
                  addi         a5, a7, 513
169:              slli         t5, a1, 22
                  bgeu         s6, s5, 176f
                  ori          a1, a1, -1926
                  sltu         s4, gp, t0
                  sra          a6, s5, t5
                  slt          ra, s9, t1
175:              sra          gp, a3, t0
176:              nop
                  nop
                  bltu         ra, s5, 188f
                  sub          s2, s10, t2
180:              addi         s5, a3, -1309
                  nop
                  xori         s10, t6, 418
                  srl          s3, t3, t0
                  lui          t6, 124855
                  sltu         s3, gp, s5
                  or           sp, t2, s1
                  ori          a1, a7, -1040
188:              slli         s7, s3, 23
                  srl          s10, a2, tp
                  lui          tp, 554301
                  beq          ra, s6, 195f
                  bltu         zero, t6, 211f
                  slti         a2, s3, 1360
                  sra          a4, s6, t2
195:              blt          s0, s1, 206f
                  lui          s11, 451810
                  slti         tp, s0, 1709
                  add          a0, ra, ra
                  slti         a0, gp, -655
                  and          s5, a4, s3
                  and          s5, s8, t4
                  sub          t6, s1, a0
                  slli         s1, a2, 14
                  bltu         s7, gp, 224f
                  bltu         a2, a1, 220f
206:              srai         t6, a6, 30
                  nop
                  srai         s4, a2, 2
                  and          s8, s9, s6
                  srli         t6, t5, 14
211:              addi         s8, s11, 729
                  slt          t4, s0, s9
                  beq          a1, tp, 233f
                  sll          ra, ra, t3
                  bne          t0, a4, 232f
                  srl          a0, gp, s3
                  bgeu         s7, a6, 228f
                  bgeu         tp, s9, 229f
                  srai         t4, tp, 31
220:              slli         s10, t1, 13
                  andi         s2, s4, 1732
                  bne          s10, s2, 242f
                  or           s7, s11, a7
224:              add          s5, s0, a7
                  sll          a0, t4, t5
                  srai         a7, a0, 30
                  sra          a5, t4, gp
228:              sltu         s0, a1, s9
229:              bltu         t6, t2, 233f
                  lui          s5, 33259
                  slti         s1, tp, -449
232:              and          a0, a6, a2
233:              andi         t6, t0, -783
                  bltu         s9, s10, 236f
                  sra          t4, t4, t2
236:              sub          s8, t6, s8
                  ori          t6, ra, -224
                  bne          a7, gp, 243f
                  sltiu        gp, a6, -103
                  addi         s10, s1, 1260
                  xori         a5, s11, -1788
242:              ori          a1, gp, 1518
243:              sltiu        s11, t6, -1927
                  srai         s2, s10, 8
                  blt          s0, a0, 260f
                  srai         a7, t3, 13
                  xori         sp, s0, 600
                  add          s9, zero, a7
                  sub          zero, t2, a7
                  slt          a5, s1, s2
                  bge          t6, s9, 260f
                  sltiu        t1, a5, 1568
                  beq          s8, s2, 257f
                  bgeu         a2, s8, 264f
                  slt          s7, t2, s4
                  slt          s5, s6, s7
257:              ori          a4, s0, 708
                  or           s5, s5, s3
                  addi         a4, t1, -1126
260:              beq          t3, s2, 279f
                  blt          t3, a2, 281f
                  or           gp, t0, s9
                  slli         t1, s11, 12
264:              add          t4, t6, tp
                  bgeu         t6, a7, 271f
                  addi         s0, ra, 660
                  andi         t4, s7, -1007
                  slti         t1, t1, 1278
                  sltiu        a4, t1, -1053
                  bltu         s4, a2, 275f
271:              beq          s9, s4, 274f
                  sltu         sp, gp, a2
                  blt          tp, s8, 276f
274:              slli         s2, s11, 24
275:              bgeu         s8, s5, 278f
276:              xor          sp, a5, t2
                  lui          t5, 707236
278:              srl          a6, t6, zero
279:              blt          s3, t2, 282f
                  xor          a0, s5, a2
281:              and          a5, s4, s8
282:              srl          s9, a5, s7
                  auipc        a1, 377898
                  and          s8, a3, a1
                  xori         a4, ra, 471
                  or           t6, zero, s5
                  srai         s1, a7, 3
                  srli         ra, tp, 17
                  bgeu         s3, s4, 295f
                  slt          t6, sp, s3
                  ori          sp, a2, -1620
                  andi         t6, t0, 1688
                  srai         ra, a5, 28
                  lui          sp, 860298
295:              andi         a0, a7, 1778
                  srl          s5, a1, s0
                  ori          s0, t6, 2014
                  sub          s7, s10, a5
                  sub          s8, t3, a6
                  bgeu         zero, gp, 320f
                  blt          s11, s6, 321f
                  bltu         a2, t2, 317f
                  bltu         t2, s4, 314f
                  lui          zero, 209845
                  blt          t6, s3, 320f
                  blt          a0, t4, 317f
                  slt          s5, tp, a3
                  ori          zero, s3, -989
                  auipc        s3, 680083
                  slli         s3, sp, 1
                  bltu         a3, t5, 331f
                  sltu         s6, a0, t1
                  nop
314:              lui          t6, 639909
                  sltu         t6, ra, s11
                  auipc        a1, 345965
317:              sltiu        a1, t1, -1256
                  or           s2, ra, a3
                  bge          s9, s8, 325f
320:              sub          s0, s5, t6
321:              nop
                  bltu         t5, s8, 327f
                  sll          s1, t4, zero
                  bltu         t2, tp, 328f
325:              bge          sp, t0, 328f
                  ori          sp, s3, -741
327:              blt          t1, a0, 347f
328:              xori         a4, s7, -76
                  sltiu        a1, a7, -613
                  xori         s9, s8, 406
331:              auipc        t6, 545892
                  bge          s10, s7, 335f
                  auipc        s3, 655950
                  xor          t2, s11, s7
335:              or           s8, t5, s11
                  slli         s2, a1, 16
                  srai         s4, a7, 13
                  sub          s4, sp, a3
                  sub          a6, s10, tp
                  and          s4, s5, s10
                  auipc        s10, 26594
                  and          s4, s2, s8
                  srai         s8, ra, 6
                  addi         s0, t0, -1479
                  blt          t4, tp, 348f
                  sltu         s5, t1, s4
347:              slt          a1, t3, t0
348:              srl          s2, a6, sp
                  slli         s10, a2, 9
                  addi         ra, t0, 1020
                  auipc        s3, 76192
                  srli         s10, a0, 25
                  xori         s11, s4, -956
                  bne          a3, s7, 364f
                  addi         s0, zero, -439
                  sll          s11, s1, t1
                  xori         t6, s2, -1940
                  slli         s9, s6, 21
                  nop
                  lui          t4, 129585
                  sltiu        a6, s10, -942
                  slli         s11, a5, 13
                  srli         s4, t3, 3
364:              ori          t1, a7, 1218
                  and          a2, s3, t0
                  auipc        s4, 131233
                  bgeu         s1, t2, 370f
                  bgeu         s6, s2, 370f
                  srai         a2, t3, 13
370:              auipc        s1, 289747
                  slli         t2, t0, 28
                  lw           s4, 4(t0)
                  nop
                  xor          s0, s0, t5
                  andi         s11, s8, 669
                  addi         t0, t0, 64
                  sltu         a7, a3, a0
                  slti         a4, a7, 1904
                  srli         a1, a6, 13
516:              addi x31, x20, 1
516:              jalr x31, x31, 0
sub_2:            srai         s9, a0, 18
                  addi         a2, s8, 886
                  blt          t3, t4, sub_2_stack_p
                  andi         s3, s9, -1960
                  add          a2, sp, t1
sub_2_stack_p:    addi         t0, t0, -12
                  sw           s4, 4(t0)
                  xori         zero, t4, 222
sub_2_2:          jal          s4, 7f
0:                jal          s0, 16f
1:                jal          a5, 13f
2:                jal          t1, 6f
3:                jal          gp, 21f
4:                jal          t1, 3b
5:                jal          ra, 17f
6:                jal          ra, 25f
7:                jal          sp, 19f
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          ra, 1b
11:               jal          s5, 14f
12:               jal          gp, 18f
13:               jal          ra, 24f
14:               jal          ra, 15f
15:               jal          ra, 10b
16:               jal          ra, 9b
17:               jal          ra, 4b
18:               jal          t1, 8b
19:               jal          ra, 20f
20:               jal          ra, 11b
21:               jal          ra, 23f
22:               jal          ra, 12b
23:               jal          t5, 2b
24:               jal          ra, 22b
25:               sll          s3, zero, s5
sub_2_3:          jal          s4, 12f
0:                jal          t1, 8f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          ra, 1b
4:                jal          ra, 13f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          ra, 2b
8:                jal          a4, 16f
9:                jal          a6, 6b
10:               jal          ra, 0b
11:               jal          a1, 15f
12:               jal          ra, 5b
13:               jal          t1, 14f
14:               jal          gp, 3b
15:               jal          ra, 9b
16:               lui          t4, 452525
                  slli         a7, t1, 14
                  sub          s7, a4, s8
                  bgeu         s7, t2, 22f
                  or           s10, a1, t2
                  srli         a6, s9, 9
                  blt          s2, s10, 6f
6:                addi         t2, s11, 1075
                  sub          t6, t2, ra
                  srai         a0, a6, 30
                  sra          s2, gp, t4
                  andi         s1, t2, -1288
                  srl          s4, a4, gp
                  beq          a1, a5, 30f
                  xor          s0, s7, s4
                  beq          s8, a4, 23f
                  nop
                  slti         s0, tp, -1943
                  auipc        t1, 145768
                  sltu         s7, s6, gp
                  beq          a5, s6, 37f
                  and          a4, zero, s0
                  slti         a4, t5, -1006
22:               blt          a6, s4, 27f
23:               sltiu        s5, s0, 666
                  blt          s4, zero, 30f
                  srli         s5, a0, 1
                  srli         s9, s1, 5
27:               blt          a6, s6, 44f
                  bne          tp, s6, 40f
                  bgeu         s7, a1, 32f
30:               bge          s6, s6, 48f
                  xori         s5, gp, -801
32:               blt          t5, s10, 49f
                  bne          a6, a0, 39f
                  sltiu        gp, s2, 1045
                  and          s9, sp, s6
                  slli         s10, tp, 16
sub_2_1:          jal          s4, 17f
0:                jal          ra, 23f
1:                jal          gp, 24f
2:                jal          ra, 27f
3:                jal          s8, 18f
4:                jal          ra, 25f
5:                jal          s2, 1b
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          s11, 9f
9:                jal          ra, 12f
10:               jal          ra, 29f
11:               jal          ra, 21f
12:               jal          s0, 11b
13:               jal          ra, 8b
14:               jal          ra, 6b
15:               jal          a5, 4b
16:               jal          ra, 15b
17:               jal          ra, 19f
18:               jal          ra, 20f
19:               jal          gp, 5b
20:               jal          t1, 16b
21:               jal          ra, 7b
22:               jal          ra, 13b
23:               jal          gp, 10b
24:               jal          a5, 14b
25:               jal          ra, 26f
26:               jal          ra, 22b
27:               jal          t1, 28f
28:               jal          ra, 3b
29:               slti         s9, s0, 336
37:               bge          t4, s5, 41f
                  ori          s6, s3, 682
39:               lui          a7, 979433
40:               beq          t5, a7, 50f
41:               srli         s5, s4, 5
                  srli         t5, ra, 6
                  auipc        a4, 954044
44:               slli         s4, s7, 17
                  xor          s7, a1, gp
                  and          t4, t4, t4
                  ori          s8, a3, 1434
48:               srl          s11, t2, s2
49:               bltu         s8, t3, 67f
50:               slt          s9, a0, s10
                  slli         s2, t1, 12
                  blt          s8, s11, 55f
                  add          s1, s8, s4
                  beq          t5, s10, 67f
55:               sra          a1, s7, s1
                  ori          s3, a1, 464
                  bgeu         s7, t6, 76f
                  bgeu         s10, s9, 70f
                  nop
                  bltu         s5, s7, 62f
                  slt          s9, a2, a2
62:               and          s4, s1, a4
                  srl          t1, zero, s0
                  sltu         t6, sp, s2
                  beq          gp, ra, 74f
                  sltu         a7, a4, s4
67:               srai         a5, s3, 21
                  xor          t5, ra, a5
                  slt          sp, a7, s4
sub_2_0:          jal          s4, 2f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          ra, 5f
3:                jal          t1, 21f
4:                jal          ra, 15f
5:                jal          ra, 17f
6:                jal          ra, 0b
7:                jal          t6, 1b
8:                jal          t1, 12f
9:                jal          ra, 11f
10:               jal          tp, 16f
11:               jal          t1, 6b
12:               jal          s4, 3b
13:               jal          s7, 8b
14:               jal          ra, 4b
15:               jal          ra, 7b
16:               jal          ra, 18f
17:               jal          t1, 9b
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          s1, 19b
21:               sra          s1, s4, s0
70:               srai         s3, t2, 19
                  bltu         s10, s2, 85f
                  bltu         zero, s10, 90f
                  bgeu         a5, a4, 75f
74:               bge          s5, a2, 89f
75:               sub          s3, t5, t6
76:               slt          a5, t1, s2
                  xor          t1, t0, s8
                  ori          s9, zero, -425
                  xori         a0, s8, -1651
                  add          s8, a0, a7
                  srai         a2, a4, 24
                  sltiu        a4, a4, -1073
                  sll          a7, s5, s5
                  nop
85:               slti         t4, s1, 1405
                  bge          a3, s10, 100f
                  blt          s8, a3, 103f
                  slt          gp, s6, t2
89:               nop
90:               and          zero, ra, t5
                  add          t4, gp, sp
                  bgeu         s0, s4, 102f
                  sltu         gp, t6, t5
                  add          s7, s0, t1
                  xori         s5, s11, 332
                  and          t5, a0, s11
                  blt          s0, t2, 102f
                  sltu         s7, s1, s10
                  sll          a4, a1, a1
100:              blt          tp, a2, 109f
                  sltiu        a2, s4, -301
102:              xori         gp, t6, 191
103:              nop
                  auipc        t2, 757989
                  auipc        s3, 592835
                  nop
                  andi         a1, s11, 8
                  sub          s1, t4, a0
109:              ori          s0, a5, 1086
                  sltiu        ra, a5, -1702
                  addi         s8, a4, 1645
                  sub          s1, s2, s3
                  auipc        a5, 317306
                  xori         a0, a3, 222
                  srl          t2, a2, t2
                  sltu         t4, s11, s5
                  bne          s9, s11, 135f
                  sra          s7, s9, tp
                  bgeu         s10, t2, 137f
                  slt          tp, t1, s7
                  lui          t2, 711754
                  lui          s5, 241341
                  srl          s6, a5, t5
                  slt          t6, t3, sp
                  slt          s3, s6, ra
                  bgeu         tp, a4, 136f
                  sltu         s8, a2, s3
                  sltu         s11, s7, ra
                  bge          a5, s4, 143f
                  lui          a1, 318526
                  auipc        s0, 8396
                  ori          gp, s1, -1993
                  sltiu        s1, s5, 1603
                  addi         s0, s3, -358
135:              slti         tp, a0, -1406
136:              and          s8, t4, s4
137:              sub          a6, s2, s6
                  add          a4, s0, ra
                  sra          s1, gp, s5
                  blt          a3, sp, 158f
                  slt          s8, a0, t6
                  or           sp, a5, t4
143:              blt          a5, ra, 148f
                  bgeu         s2, a0, 159f
                  blt          s8, t3, 163f
                  bge          t3, t1, 164f
                  sra          a7, a4, t2
148:              srl          a4, a2, zero
                  xor          s4, s2, t0
                  bne          sp, s0, 160f
                  nop
                  and          t6, t6, a3
                  bgeu         a4, gp, 162f
                  beq          t0, a2, 166f
                  slli         s3, s3, 11
                  blt          t0, a7, 172f
                  bltu         zero, s9, 162f
158:              srli         s11, s9, 13
159:              bgeu         sp, t1, 176f
160:              sub          s0, a2, s4
                  srl          a6, t2, tp
162:              xor          a4, zero, tp
163:              xori         s10, s7, 269
164:              slt          s9, t4, a2
                  xori         s4, t2, -598
166:              sltu         s9, s4, gp
                  slli         t2, t3, 24
                  slli         s3, s8, 22
                  ori          s11, a1, -1559
                  addi         s2, t3, -239
                  slli         s3, a0, 25
172:              blt          a3, s6, 174f
                  beq          a0, a6, 185f
174:              bne          t4, t2, 180f
                  xor          s10, t0, s4
176:              ori          a5, s8, -1618
                  auipc        s9, 735103
                  beq          t0, sp, 182f
                  xor          zero, t2, a0
180:              slti         s0, t2, 1747
                  sltiu        s3, a6, -165
182:              addi         ra, a5, -1738
                  srai         s9, tp, 8
                  addi         t4, zero, 1507
185:              nop
                  srl          a5, gp, t6
                  sub          t5, s2, zero
                  ori          t5, t5, -1979
                  add          a7, sp, a5
                  bne          s11, ra, 209f
                  andi         t6, a1, -1686
                  sltiu        a5, s1, -15
                  auipc        zero, 832286
                  slti         t1, s5, 611
                  xori         sp, s4, -877
                  slti         s2, s9, -1011
                  srli         gp, s9, 26
                  bne          s5, s7, 215f
                  addi         s8, a3, 140
                  sll          s6, t0, a0
                  bge          a1, a7, 204f
                  bge          s5, gp, 204f
                  srl          s6, t4, tp
204:              sltiu        a0, t1, 299
                  xori         t5, a2, -1274
                  beq          t4, a3, 219f
                  sra          s9, sp, a2
                  slti         s8, s2, 1932
209:              bgeu         a4, s11, 210f
210:              addi         s1, a7, -1125
                  slt          sp, a0, a6
                  sra          a1, t1, a6
                  sra          gp, a2, sp
                  auipc        tp, 308749
215:              sltu         t6, a3, s2
                  or           s1, s6, s4
                  or           s5, t4, a0
                  nop
219:              bge          tp, t1, 222f
                  bgeu         s4, a1, 222f
                  xori         s5, t2, 1607
222:              sra          a6, s11, s4
                  nop
                  lui          a6, 646989
                  srai         t6, s10, 24
                  srli         gp, t6, 3
                  srl          a4, a4, t1
                  lw           s4, 4(t0)
                  xor          t4, s4, t0
                  lui          gp, 964097
                  ori          a7, s4, -451
                  addi         t0, t0, 12
                  xori         s9, sp, -33
341:              addi x12, x20, 1
341:              jalr x12, x12, 0
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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x13, x5, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
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
                  add x13, x5, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x23, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x23, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x23, x6, ecall_handler
                  li x6, 0x1
                  beq x23, x6, instr_fault_handler
                  li x6, 0x5
                  beq x23, x6, load_fault_handler
                  li x6, 0x7
                  beq x23, x6, store_fault_handler
                  li x6, 0xc
                  beq x23, x6, pt_fault_handler
                  li x6, 0xd
                  beq x23, x6, pt_fault_handler
                  li x6, 0xf
                  beq x23, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x5, x13, zero
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
                  add x5, x13, zero
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
                  add x5, x13, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x5, x13, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x5, x13, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x5, x13, zero
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
