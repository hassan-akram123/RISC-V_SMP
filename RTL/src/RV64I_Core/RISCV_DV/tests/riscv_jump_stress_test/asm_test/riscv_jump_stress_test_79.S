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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x20, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0xf8e72673
                  li x2, 0xf8461cc4
                  li x3, 0xfb19c394
                  li x4, 0xfc54d99d
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xc70406f9
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x3
                  li x13, 0x80000000
                  li x14, 0x2
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x0
                  li x19, 0xf2cce678
                  li x21, 0x0
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x7
                  li x26, 0x276c9366
                  li x27, 0x80000000
                  li x28, 0x74ac36d7
                  li x29, 0x9
                  li x30, 0x0
                  li x31, 0xedf0de47
                  la x18, user_stack_end
main:             jal          t0, 9f
0:                jal          ra, 4f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          t1, 1b
4:                jal          ra, 14f
5:                jal          ra, 6f
6:                jal          ra, 3b
7:                jal          ra, 13f
8:                jal          ra, 2b
9:                jal          a0, 8b
10:               jal          ra, 12f
11:               jal          ra, 0b
12:               jal          ra, 16f
13:               jal          s1, 17f
14:               jal          ra, 5b
15:               jal          t1, 11b
16:               jal          a4, 15b
17:               lui          a6, 82148
main_12:          jal          t0, 9f
0:                jal          ra, 4f
1:                jal          ra, 14f
2:                jal          s0, 7f
3:                jal          ra, 6f
4:                jal          t1, 1b
5:                jal          a4, 15f
6:                jal          ra, 2b
7:                jal          a7, 12f
8:                jal          s0, 0b
9:                jal          ra, 8b
10:               jal          ra, 13f
11:               jal          t1, 10b
12:               jal          a3, 5b
13:               jal          tp, 3b
14:               jal          sp, 11b
15:               slti         a5, t2, 1573
main_6:           jal          t0, 6f
0:                jal          s9, 7f
1:                jal          tp, 15f
2:                jal          t1, 16f
3:                jal          t1, 11f
4:                jal          t5, 5f
5:                jal          ra, 9f
6:                jal          t1, 1b
7:                jal          t1, 3b
8:                jal          ra, 12f
9:                jal          ra, 0b
10:               jal          ra, 14f
11:               jal          ra, 10b
12:               jal          t4, 13f
13:               jal          a5, 4b
14:               jal          t1, 2b
15:               jal          t1, 8b
16:               srl          sp, tp, zero
main_1:           jal          t0, 17f
0:                jal          t1, 13f
1:                jal          s3, 15f
2:                jal          t2, 19f
3:                jal          ra, 16f
4:                jal          ra, 3b
5:                jal          t1, 18f
6:                jal          ra, 10f
7:                jal          t1, 12f
8:                jal          ra, 22f
9:                jal          a0, 25f
10:               jal          ra, 21f
11:               jal          t1, 23f
12:               jal          ra, 9b
13:               jal          t1, 20f
14:               jal          t1, 7b
15:               jal          t1, 24f
16:               jal          ra, 27f
17:               jal          a6, 1b
18:               jal          tp, 14b
19:               jal          t0, 28f
20:               jal          t0, 2b
21:               jal          t1, 5b
22:               jal          gp, 11b
23:               jal          ra, 30f
24:               jal          t1, 26f
25:               jal          ra, 0b
26:               jal          s9, 6b
27:               jal          ra, 8b
28:               jal          t1, 29f
29:               jal          ra, 4b
30:               sll          s3, s11, t4
main_18:          jal          t0, 0f
0:                jal          ra, 6f
1:                jal          a3, 13f
2:                jal          s9, 17f
3:                jal          a0, 15f
4:                jal          ra, 10f
5:                jal          a0, 3b
6:                jal          ra, 9f
7:                jal          ra, 1b
8:                jal          gp, 5b
9:                jal          t1, 4b
10:               jal          t1, 8b
11:               jal          ra, 12f
12:               jal          t1, 2b
13:               jal          s5, 16f
14:               jal          t0, 7b
15:               jal          ra, 11b
16:               jal          s7, 18f
17:               jal          a1, 14b
18:               add          tp, t4, zero
main_23:          jal          t0, 26f
0:                jal          ra, 11f
1:                jal          s9, 18f
2:                jal          ra, 17f
3:                jal          ra, 27f
4:                jal          t1, 7f
5:                jal          ra, 16f
6:                jal          sp, 20f
7:                jal          ra, 0b
8:                jal          s0, 14f
9:                jal          ra, 1b
10:               jal          t1, 8b
11:               jal          t6, 22f
12:               jal          tp, 19f
13:               jal          ra, 15f
14:               jal          t1, 25f
15:               jal          t4, 9b
16:               jal          t0, 10b
17:               jal          ra, 23f
18:               jal          gp, 21f
19:               jal          ra, 5b
20:               jal          ra, 24f
21:               jal          ra, 2b
22:               jal          ra, 12b
23:               jal          ra, 4b
24:               jal          ra, 13b
25:               jal          ra, 3b
26:               jal          ra, 6b
27:               sltiu        gp, a5, 1974
main_14:          jal          t0, 18f
0:                jal          ra, 3f
1:                jal          s9, 21f
2:                jal          sp, 1b
3:                jal          ra, 29f
4:                jal          t1, 7f
5:                jal          sp, 27f
6:                jal          ra, 19f
7:                jal          a0, 16f
8:                jal          t4, 2b
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          a0, 25f
12:               jal          ra, 17f
13:               jal          ra, 8b
14:               jal          t1, 24f
15:               jal          a3, 30f
16:               jal          ra, 12b
17:               jal          ra, 13b
18:               jal          t1, 4b
19:               jal          t0, 10b
20:               jal          ra, 9b
21:               jal          ra, 28f
22:               jal          s9, 26f
23:               jal          ra, 20b
24:               jal          ra, 6b
25:               jal          ra, 5b
26:               jal          ra, 23b
27:               jal          ra, 22b
28:               jal          s11, 11b
29:               jal          ra, 15b
30:               nop
main_15:          jal          t0, 14f
0:                jal          t1, 19f
1:                jal          t1, 28f
2:                jal          s3, 22f
3:                jal          t1, 17f
4:                jal          t1, 21f
5:                jal          ra, 13f
6:                jal          t6, 3b
7:                jal          ra, 26f
8:                jal          tp, 5b
9:                jal          ra, 20f
10:               jal          t1, 0b
11:               jal          ra, 1b
12:               jal          ra, 4b
13:               jal          t1, 29f
14:               jal          ra, 10b
15:               jal          ra, 16f
16:               jal          ra, 12b
17:               jal          ra, 18f
18:               jal          a1, 11b
19:               jal          ra, 27f
20:               jal          t1, 6b
21:               jal          ra, 7b
22:               jal          t1, 23f
23:               jal          s7, 25f
24:               jal          ra, 8b
25:               jal          ra, 15b
26:               jal          ra, 9b
27:               jal          ra, 2b
28:               jal          ra, 24b
29:               slti         a5, s5, 441
main_10:          jal          t0, 6f
0:                jal          ra, 17f
1:                jal          ra, 0b
2:                jal          ra, 9f
3:                jal          ra, 12f
4:                jal          t0, 13f
5:                jal          ra, 10f
6:                jal          s9, 16f
7:                jal          a3, 14f
8:                jal          a4, 1b
9:                jal          ra, 8b
10:               jal          ra, 3b
11:               jal          s10, 7b
12:               jal          ra, 19f
13:               jal          s0, 2b
14:               jal          ra, 4b
15:               jal          sp, 5b
16:               jal          a2, 11b
17:               jal          ra, 18f
18:               jal          s3, 15b
19:               sltu         s10, tp, a6
main_13:          jal          t0, 8f
0:                jal          ra, 2f
1:                jal          t1, 9f
2:                jal          t1, 4f
3:                jal          t2, 7f
4:                jal          sp, 1b
5:                jal          ra, 6f
6:                jal          t1, 3b
7:                jal          s3, 10f
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          t1, 11f
11:               addi         a7, t5, 676
main_8:           jal          t0, 14f
0:                jal          ra, 6f
1:                jal          ra, 13f
2:                jal          sp, 16f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          s9, 1b
6:                jal          ra, 11f
7:                jal          ra, 10f
8:                jal          s10, 7b
9:                jal          ra, 17f
10:               jal          ra, 18f
11:               jal          t1, 2b
12:               jal          t1, 3b
13:               jal          ra, 8b
14:               jal          ra, 0b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               jal          t6, 15b
18:               srli         s0, t4, 23
main_16:          jal          t0, 22f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          ra, 12f
3:                jal          t2, 14f
4:                jal          t0, 17f
5:                jal          ra, 0b
6:                jal          ra, 21f
7:                jal          ra, 8f
8:                jal          ra, 11f
9:                jal          t1, 13f
10:               jal          s11, 6b
11:               jal          ra, 15f
12:               jal          ra, 23f
13:               jal          ra, 24f
14:               jal          ra, 10b
15:               jal          ra, 18f
16:               jal          a4, 5b
17:               jal          tp, 7b
18:               jal          ra, 1b
19:               jal          ra, 2b
20:               jal          ra, 19b
21:               jal          a1, 26f
22:               jal          ra, 25f
23:               jal          ra, 16b
24:               jal          t1, 4b
25:               jal          gp, 20b
26:               lui          tp, 780217
main_21:          jal          t0, 21f
0:                jal          t5, 7f
1:                jal          t0, 2f
2:                jal          s7, 9f
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          t1, 13f
6:                jal          ra, 15f
7:                jal          ra, 5b
8:                jal          t1, 16f
9:                jal          ra, 22f
10:               jal          a2, 4b
11:               jal          a1, 24f
12:               jal          ra, 11b
13:               jal          t0, 19f
14:               jal          sp, 17f
15:               jal          t1, 10b
16:               jal          t1, 23f
17:               jal          ra, 8b
18:               jal          t0, 20f
19:               jal          ra, 6b
20:               jal          ra, 0b
21:               jal          s11, 18b
22:               jal          ra, 3b
23:               jal          t1, 1b
24:               srai         t2, zero, 3
main_3:           jal          t0, 4f
0:                jal          ra, 10f
1:                jal          s11, 12f
2:                jal          ra, 9f
3:                jal          ra, 18f
4:                jal          s7, 7f
5:                jal          ra, 15f
6:                jal          ra, 3b
7:                jal          ra, 16f
8:                jal          t0, 17f
9:                jal          ra, 8b
10:               jal          ra, 6b
11:               jal          ra, 1b
12:               jal          ra, 14f
13:               jal          ra, 19f
14:               jal          a6, 2b
15:               jal          ra, 13b
16:               jal          t1, 0b
17:               jal          ra, 5b
18:               jal          t2, 11b
19:               auipc        s1, 686924
main_4:           jal          t0, 18f
0:                jal          ra, 17f
1:                jal          ra, 14f
2:                jal          t1, 13f
3:                jal          s7, 0b
4:                jal          ra, 5f
5:                jal          ra, 19f
6:                jal          ra, 2b
7:                jal          ra, 3b
8:                jal          ra, 15f
9:                jal          t1, 12f
10:               jal          ra, 9b
11:               jal          t0, 20f
12:               jal          tp, 11b
13:               jal          s1, 10b
14:               jal          ra, 6b
15:               jal          ra, 1b
16:               jal          ra, 7b
17:               jal          ra, 4b
18:               jal          a4, 16b
19:               jal          t1, 8b
20:               sub          tp, a0, ra
main_2:           jal          t0, 17f
0:                jal          ra, 2f
1:                jal          sp, 20f
2:                jal          sp, 6f
3:                jal          ra, 23f
4:                jal          ra, 14f
5:                jal          ra, 0b
6:                jal          ra, 18f
7:                jal          tp, 12f
8:                jal          ra, 24f
9:                jal          s1, 13f
10:               jal          sp, 3b
11:               jal          s1, 25f
12:               jal          t1, 21f
13:               jal          ra, 11b
14:               jal          a0, 5b
15:               jal          ra, 29f
16:               jal          sp, 8b
17:               jal          ra, 26f
18:               jal          ra, 19f
19:               jal          t1, 27f
20:               jal          ra, 16b
21:               jal          ra, 10b
22:               jal          t1, 1b
23:               jal          s3, 15b
24:               jal          t1, 28f
25:               jal          s5, 22b
26:               jal          a5, 9b
27:               jal          ra, 7b
28:               jal          ra, 4b
29:               nop
main_7:           jal          t0, 22f
0:                jal          t1, 10f
1:                jal          t1, 4f
2:                jal          t1, 18f
3:                jal          s0, 1b
4:                jal          t1, 16f
5:                jal          ra, 11f
6:                jal          ra, 15f
7:                jal          ra, 9f
8:                jal          t1, 23f
9:                jal          a0, 13f
10:               jal          a2, 7b
11:               jal          ra, 17f
12:               jal          s10, 0b
13:               jal          ra, 5b
14:               jal          ra, 2b
15:               jal          t1, 8b
16:               jal          ra, 19f
17:               jal          ra, 21f
18:               jal          sp, 6b
19:               jal          ra, 14b
20:               jal          ra, 12b
21:               jal          s6, 3b
22:               jal          ra, 20b
23:               auipc        s3, 475103
main_25:          jal          t0, 17f
0:                jal          t1, 14f
1:                jal          ra, 18f
2:                jal          ra, 12f
3:                jal          t1, 11f
4:                jal          s8, 16f
5:                jal          t1, 13f
6:                jal          ra, 5b
7:                jal          tp, 1b
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          a3, 7b
11:               jal          ra, 6b
12:               jal          t5, 21f
13:               jal          t1, 0b
14:               jal          a7, 15f
15:               jal          s7, 2b
16:               jal          ra, 19f
17:               jal          ra, 20f
18:               jal          ra, 3b
19:               jal          a5, 8b
20:               jal          ra, 9b
21:               srl          s7, s0, s5
main_28:          jal          t0, 4f
0:                jal          ra, 2f
1:                jal          a5, 8f
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          ra, 25f
5:                jal          ra, 23f
6:                jal          ra, 21f
7:                jal          a7, 30f
8:                jal          s0, 13f
9:                jal          ra, 7b
10:               jal          ra, 22f
11:               jal          ra, 26f
12:               jal          s7, 3b
13:               jal          s9, 18f
14:               jal          t1, 11b
15:               jal          ra, 19f
16:               jal          gp, 10b
17:               jal          ra, 6b
18:               jal          ra, 16b
19:               jal          t1, 20f
20:               jal          ra, 0b
21:               jal          ra, 5b
22:               jal          ra, 28f
23:               jal          t6, 14b
24:               jal          ra, 12b
25:               jal          s6, 29f
26:               jal          s10, 24b
27:               jal          ra, 15b
28:               jal          ra, 27b
29:               jal          t1, 17b
30:               nop
main_24:          jal          t0, 1f
0:                jal          ra, 13f
1:                jal          t1, 3f
2:                jal          ra, 10f
3:                jal          t1, 12f
4:                jal          ra, 5f
5:                jal          s3, 16f
6:                jal          gp, 14f
7:                jal          ra, 0b
8:                jal          t1, 11f
9:                jal          a5, 2b
10:               jal          t5, 8b
11:               jal          ra, 7b
12:               jal          ra, 9b
13:               jal          ra, 4b
14:               jal          t1, 15f
15:               jal          a7, 18f
16:               jal          t1, 17f
17:               jal          ra, 6b
18:               sll          s0, t3, a3
main_17:          jal          t0, 0f
0:                jal          t1, 14f
1:                jal          tp, 3f
2:                jal          ra, 13f
3:                jal          ra, 15f
4:                jal          ra, 1b
5:                jal          s9, 8f
6:                jal          ra, 9f
7:                jal          ra, 11f
8:                jal          a1, 7b
9:                jal          s7, 2b
10:               jal          ra, 12f
11:               jal          ra, 16f
12:               jal          t0, 5b
13:               jal          t1, 10b
14:               jal          ra, 4b
15:               jal          ra, 6b
16:               addi         s7, a0, -737
main_27:          jal          t0, 22f
0:                jal          t1, 23f
1:                jal          ra, 14f
2:                jal          ra, 3f
3:                jal          ra, 6f
4:                jal          t1, 24f
5:                jal          ra, 27f
6:                jal          ra, 15f
7:                jal          t1, 5b
8:                jal          ra, 13f
9:                jal          ra, 2b
10:               jal          ra, 7b
11:               jal          ra, 18f
12:               jal          t1, 0b
13:               jal          ra, 17f
14:               jal          t1, 4b
15:               jal          ra, 1b
16:               jal          ra, 21f
17:               jal          tp, 12b
18:               jal          ra, 10b
19:               jal          tp, 20f
20:               jal          s11, 9b
21:               jal          t5, 8b
22:               jal          tp, 16b
23:               jal          ra, 26f
24:               jal          ra, 25f
25:               jal          t1, 11b
26:               jal          t1, 19b
27:               slt          a4, a0, a0
main_22:          jal          t0, 7f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          t5, 5f
3:                jal          t1, 4f
4:                jal          s6, 1b
5:                jal          s3, 9f
6:                jal          a4, 8f
7:                jal          ra, 13f
8:                jal          ra, 15f
9:                jal          sp, 10f
10:               jal          ra, 0b
11:               jal          a5, 12f
12:               jal          t0, 2b
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               lui          t1, 484159
main_19:          jal          t0, 10f
0:                jal          ra, 29f
1:                jal          ra, 28f
2:                jal          a2, 21f
3:                jal          ra, 22f
4:                jal          ra, 17f
5:                jal          ra, 27f
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          t1, 23f
9:                jal          ra, 26f
10:               jal          t1, 3b
11:               jal          ra, 18f
12:               jal          ra, 16f
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          ra, 2b
16:               jal          ra, 19f
17:               jal          ra, 25f
18:               jal          s11, 24f
19:               jal          ra, 15b
20:               jal          t0, 6b
21:               jal          gp, 14b
22:               jal          ra, 13b
23:               jal          a4, 9b
24:               jal          t0, 12b
25:               jal          ra, 1b
26:               jal          ra, 20b
27:               jal          ra, 4b
28:               jal          t1, 0b
29:               srai         a4, a3, 5
                  sltiu        s8, t0, -734
                  xori         s0, s5, 374
                  srli         tp, zero, 9
                  bne          t1, s9, 11f
                  or           s10, t4, s4
                  bne          s4, a7, 22f
                  srli         a3, s11, 9
                  or           zero, t5, s11
                  addi         sp, sp, 813
                  add          s9, s6, s7
                  blt          s11, s9, 12f
11:               slt          t1, s2, a0
12:               sltiu        a4, t6, -1008
                  sra          a4, s6, a3
                  xori         s6, s5, 300
                  xor          s8, s6, s7
                  bgeu         s1, s7, 30f
                  bne          tp, t2, 32f
                  andi         a0, tp, -1588
                  or           a2, t4, t1
                  sra          t5, t4, ra
                  sltiu        s9, t5, -1554
22:               bltu         a6, gp, 37f
                  auipc        sp, 1033361
                  sub          sp, a5, t1
                  blt          t6, s6, 33f
                  beq          s0, s9, 28f
                  andi         t6, s7, -247
28:               slti         s7, t2, -1512
                  bge          s3, zero, 32f
30:               auipc        t2, 595928
                  andi         a7, a3, 1390
32:               andi         zero, t2, -935
33:               srl          zero, t4, zero
                  nop
                  auipc        a6, 32326
                  srli         s5, ra, 27
37:               sltu         zero, s2, t0
                  srai         zero, a1, 15
                  srli         gp, s6, 14
                  slli         a5, t5, 1
                  srl          t1, a6, gp
                  sltiu        t6, s9, 387
                  or           tp, t1, a3
                  sltu         s3, a4, a0
                  and          s6, a6, a7
                  srl          ra, tp, t3
                  add          s10, s0, a7
                  addi         t0, s1, 771
                  srl          zero, t0, t0
                  sll          a0, sp, s7
                  srai         a1, s6, 4
                  bgeu         t2, sp, 55f
                  bltu         s11, ra, 54f
54:               xori         a2, zero, 789
55:               ori          a5, a5, -1376
                  sltu         a1, s9, a6
                  addi         t2, s4, -1576
                  bne          sp, a5, 78f
                  sra          tp, t1, t6
                  sll          s8, t3, a3
                  sub          s9, s1, t0
                  andi         s5, t6, 324
                  lui          a0, 701310
                  srli         s8, a0, 30
                  ori          t6, a3, 237
                  or           sp, s10, zero
                  bltu         a2, s7, 76f
                  slt          s0, s9, t4
                  slti         a4, a5, -1440
                  bltu         s8, t4, 73f
                  auipc        s9, 912088
                  andi         a3, a5, -1653
73:               bne          s11, t1, 83f
                  addi         a5, s6, 996
                  slli         s11, gp, 10
76:               auipc        s7, 579407
                  sll          a4, s3, a0
78:               bltu         t2, s9, 85f
                  sra          sp, s2, a1
                  sub          sp, ra, s4
                  sra          s6, a0, a7
                  nop
83:               sub          s1, a7, gp
                  sub          t0, t5, s4
85:               sll          s5, a1, s9
                  blt          t3, sp, 93f
                  xori         a0, sp, 1305
                  xori         s10, t4, 1143
                  lui          ra, 97965
                  and          s3, s8, s0
                  add          t5, tp, t6
                  slli         t1, t6, 18
93:               andi         s6, a1, 649
                  sra          s6, a7, s10
                  add          a2, s11, t2
                  nop
                  sll          a2, t0, a1
                  bltu         a0, s6, 111f
                  blt          sp, s10, 100f
100:              auipc        a7, 769135
                  add          s1, s10, s3
                  slti         tp, t0, -1548
                  srai         gp, gp, 31
                  bge          s7, s1, 107f
                  lui          s7, 533351
                  slt          a6, s2, a0
107:              nop
                  slt          a6, t4, ra
                  slti         t0, ra, 586
                  bge          s1, ra, 114f
111:              blt          tp, t2, 128f
                  beq          s5, t1, 113f
113:              srl          gp, t1, s10
114:              andi         a5, zero, -1651
                  beq          a3, s1, 131f
                  lui          a2, 736281
                  srli         a6, gp, 14
                  slti         t4, s8, 319
                  bne          t1, s8, 130f
                  srai         s1, t1, 3
                  and          t1, tp, s2
                  srli         s1, s0, 15
                  slti         s1, a7, 1228
                  andi         tp, t0, 429
                  srl          t4, t4, t5
                  srai         a2, s0, 22
                  andi         t5, tp, -842
128:              sra          s8, tp, s2
                  bltu         s1, a5, 144f
130:              and          s3, a3, s4
131:              bltu         sp, s10, 145f
                  sltu         a1, s5, a1
                  beq          a6, s11, 137f
                  addi         t5, t0, 569
                  beq          t2, t5, 145f
                  sll          a4, a1, s5
137:              beq          a2, ra, 154f
                  xori         s10, s1, -293
                  slli         t2, s10, 0
                  blt          zero, t3, 141f
141:              or           s1, s3, s7
                  srai         t6, s4, 11
                  sub          a1, sp, t4
144:              sub          s8, s9, a1
145:              bgeu         s4, zero, 146f
146:              srl          a5, s7, s9
                  bltu         t6, t0, 164f
                  bltu         s5, t4, 155f
                  srli         t0, t5, 7
                  sltu         zero, a4, s1
                  nop
                  auipc        a4, 201306
                  andi         t5, zero, -1253
154:              add          t5, sp, s1
155:              bge          t6, s2, 172f
                  slt          sp, s5, t0
                  slli         a3, t3, 24
                  bne          s5, s8, 159f
159:              srli         tp, s5, 29
                  ori          a7, a4, 1843
                  srai         s0, a0, 0
                  and          s9, s1, t5
                  beq          s7, ra, 180f
164:              sra          s10, s11, s9
                  sltu         s0, s11, zero
                  slli         sp, s11, 23
                  slt          t1, s7, tp
                  bge          a3, t3, 183f
                  sub          ra, s4, s1
                  srai         gp, a2, 7
                  add          s8, s2, t1
172:              srl          a5, s1, s0
                  slti         s5, a4, -1033
                  srli         t6, t3, 6
                  lui          t4, 185671
                  slli         a1, a3, 15
                  sra          ra, a1, t3
                  sll          zero, t4, s8
                  auipc        s0, 322089
180:              sll          a6, t6, s8
                  sub          s9, s11, a2
                  blt          t3, t0, 202f
183:              blt          t0, zero, 196f
                  bne          s5, a6, 192f
                  bne          a3, a6, 195f
                  srli         s0, a2, 30
                  sltiu        zero, s1, 1558
                  or           s11, s10, a7
                  bge          ra, s0, 203f
                  sll          t4, s0, a4
                  sltu         a7, s4, a7
192:              sra          a4, s9, tp
                  slt          s1, a2, s10
                  slt          s10, t2, s2
195:              bge          s8, s11, 202f
196:              srl          gp, t2, a0
                  srli         t2, s7, 15
                  andi         s7, t5, -1563
                  nop
                  sra          s1, a4, s5
                  add          s0, t3, a7
202:              lui          t6, 598299
203:              and          sp, t5, a4
                  beq          s11, zero, 213f
                  sub          a3, t0, a6
                  sll          s6, zero, s7
                  andi         a4, a2, -1396
                  andi         a0, a1, 1862
                  nop
                  slli         t0, t3, 7
                  sltu         s3, gp, t6
                  beq          s2, a5, 220f
213:              slli         s0, s4, 10
                  bge          sp, a7, 224f
                  lui          ra, 797992
                  srai         s11, a5, 25
                  sra          s0, ra, a7
                  blt          s9, s6, 233f
                  srl          a2, s9, t6
220:              srli         a6, a6, 1
                  and          s5, sp, s9
                  bge          t3, t0, 225f
                  slt          t5, t3, gp
224:              srl          a0, a5, t5
225:              bltu         t6, t1, 228f
                  beq          a5, a4, 228f
                  bltu         s3, s3, 243f
228:              sltu         s5, s9, s2
                  xor          tp, a6, s4
                  sub          gp, s9, s0
                  slli         s1, a4, 2
                  sltu         ra, a0, a5
233:              bne          s2, t4, 248f
                  sll          s0, a7, a7
                  bne          s5, ra, 239f
                  blt          a0, gp, 247f
                  nop
                  andi         s10, s11, -258
239:              srl          sp, a5, s8
                  addi         s3, a2, 1197
                  ori          s7, tp, 196
                  xor          sp, s5, sp
243:              bge          s3, s4, 246f
                  andi         s7, t6, -610
                  addi         a1, sp, -666
246:              beq          s4, a6, 260f
247:              beq          a0, t1, 251f
248:              slli         t1, s10, 22
                  addi         s5, s1, 1169
                  lui          s1, 563011
251:              bgeu         s5, s9, 253f
                  slt          t1, t0, s11
253:              andi         s7, s3, 1499
                  srai         s0, s5, 28
                  bne          s9, t2, 258f
                  xor          gp, s10, s2
                  bne          s9, t4, 277f
258:              blt          s8, ra, 259f
259:              sltiu        gp, t6, -129
260:              sltiu        a0, s1, -1961
                  nop
                  addi         s10, s4, -205
                  srl          s8, a1, a5
                  srli         sp, s9, 11
                  andi         gp, s0, 1821
                  nop
                  slti         t1, t4, 1507
                  bltu         s8, s3, 277f
                  slli         s0, s8, 18
                  slti         s0, s3, 1847
                  srli         s8, a0, 22
                  srli         s7, a1, 30
                  addi         s8, s7, 333
                  bge          s1, s4, 288f
                  blt          t4, sp, 292f
                  bne          s0, gp, 277f
277:              auipc        a6, 679641
                  lui          a5, 644786
                  sll          t4, t1, a0
                  xor          s8, gp, t4
                  xor          a0, t3, t6
                  addi         a4, a4, 880
                  addi         a3, ra, 1457
                  sub          t6, sp, t4
                  or           t4, t6, s7
                  blt          a6, a6, 288f
                  sltu         a4, s0, a0
288:              slli         a3, s9, 14
                  sltiu        a5, a5, 533
                  srli         a4, s4, 27
                  blt          ra, s4, 306f
292:              and          t0, zero, zero
                  lui          a2, 705003
                  slti         sp, ra, 462
                  srl          a4, t2, s11
                  srli         s9, t6, 25
                  add          a2, t3, a4
                  andi         a0, a7, 541
                  sltu         s11, a7, tp
                  bge          a6, gp, 304f
                  add          ra, s5, s5
                  andi         s11, a5, 1595
                  sra          a1, t6, s7
304:              lui          a5, 329654
                  ori          a2, s10, 1753
306:              bltu         t6, t1, 320f
                  lui          s0, 395862
                  xori         a6, s1, -937
                  bne          tp, a0, 311f
                  bgeu         a0, t0, 318f
311:              auipc        t1, 666780
                  sra          s6, s2, s9
                  bge          a1, gp, 323f
                  auipc        t5, 626418
                  sltiu        gp, s6, -1578
                  sra          a0, t0, s10
                  bltu         zero, t3, 318f
318:              slt          t2, t3, a6
                  bne          a1, s9, 322f
320:              sub          s8, a5, t3
                  beq          a2, a3, 325f
322:              sltiu        a4, t3, 181
323:              slt          t2, a4, a6
                  sltiu        t6, a4, -1430
325:              slli         s9, t5, 24
                  xor          ra, a6, t6
                  sra          t2, t5, t4
                  bge          a4, t5, 341f
                  slli         t4, s10, 17
                  lui          a7, 961133
                  add          s11, s0, s0
                  slt          a5, a5, t1
                  bne          ra, s9, 350f
                  slt          zero, a0, gp
                  bge          t0, a6, 338f
                  slti         t2, a7, 1710
                  beq          s10, t5, 352f
338:              bne          sp, s6, 354f
                  and          sp, t5, t2
                  slli         a7, t2, 9
341:              xor          s6, s2, a7
                  slt          s3, s6, s6
                  sltiu        t0, a5, -1317
                  srl          a5, s6, s9
                  sra          t1, s0, s0
                  ori          t2, s7, -402
                  slt          s9, s6, t6
                  and          tp, s11, s10
                  nop
350:              slli         a5, t6, 5
                  sub          t2, s10, t5
352:              slli         a3, t1, 22
                  lui          s10, 249548
354:              sra          s6, t6, s1
                  beq          t4, t2, 370f
                  add          t6, t6, tp
                  sltu         s3, t3, a1
                  sltu         a3, a6, a6
                  lui          s11, 576999
                  or           s7, ra, a0
                  lui          t1, 719717
                  sll          a6, gp, t4
                  sra          s10, a5, t6
                  srai         t4, t2, 26
                  xori         t1, a4, 1284
                  bgeu         s11, s8, 376f
                  blt          ra, s4, 384f
                  slti         t5, s2, 21
                  ori          t1, t6, 815
370:              sltiu        s11, s0, -321
                  srai         s6, t0, 25
                  ori          s9, t3, 1437
                  andi         a0, ra, 547
                  bgeu         s11, a2, 381f
                  add          a2, s5, s1
376:              auipc        a6, 203480
                  and          t2, t6, s10
                  add          gp, t6, s10
                  xori         a3, s7, -930
                  andi         a3, t0, -1820
381:              slli         s6, s4, 2
                  lui          s1, 51014
                  and          ra, zero, gp
384:              slli         t0, s0, 25
                  xori         a1, a6, 1452
                  xori         s6, a2, -1930
                  blt          ra, s3, 394f
                  ori          s0, zero, -155
                  sltiu        s5, ra, 1585
                  nop
                  sltiu        a6, s9, -1950
                  slt          a5, s6, zero
                  sra          a1, sp, t4
394:              slti         tp, s7, 1632
                  bge          s7, s7, 406f
                  xori         s6, s0, -965
                  blt          a2, a5, 400f
                  xor          t6, s3, a0
                  srli         t2, zero, 16
400:              xor          s1, s10, s10
                  srl          gp, a6, a2
                  srli         gp, s2, 14
                  lui          a6, 898172
                  blt          a0, s5, 407f
                  xor          s3, s11, t5
406:              auipc        tp, 875004
407:              addi         s10, s9, -1380
                  sll          tp, a0, s8
                  srli         sp, a4, 11
                  beq          a3, s4, 418f
                  lui          s0, 224634
                  ori          zero, s3, 1193
                  bltu         s11, t4, 420f
                  xor          t6, zero, a3
                  or           s5, s11, a1
                  lui          sp, 862760
                  beq          a2, a0, 420f
418:              xori         t0, s0, 778
                  srai         s5, gp, 30
420:              lui          a5, 1003052
                  lui          a5, 742983
                  and          a3, a5, s1
                  and          a4, t0, a2
                  slli         s9, s4, 31
                  xor          gp, s7, s4
                  blt          sp, a6, 427f
427:              ori          a1, s9, -155
                  xor          ra, a4, s5
                  sll          zero, t6, s11
                  slli         s1, t2, 7
                  sll          t4, s1, t2
                  blt          s1, s11, 448f
                  sra          s6, a4, a6
                  xor          ra, s2, a7
                  sub          s7, a0, sp
                  andi         gp, a7, -1539
                  xor          a3, t6, t6
                  add          s7, s10, s1
                  srai         s9, s7, 6
                  auipc        s3, 403100
                  bgeu         s10, sp, 449f
                  sub          s7, tp, s8
                  srli         a6, a7, 10
                  sra          s1, a7, s2
                  slli         a0, s1, 26
                  blt          s6, s5, 457f
                  srli         sp, s7, 27
448:              bltu         s0, t4, 449f
449:              bltu         t1, a5, 456f
                  auipc        a6, 59641
                  slti         t6, s4, -635
                  blt          a0, s0, 456f
                  bne          s2, s3, 470f
                  lui          a3, 780885
                  xor          zero, tp, a1
456:              bne          a4, a1, 457f
457:              beq          t4, s0, 461f
                  auipc        sp, 820699
                  beq          s4, s1, 469f
                  beq          gp, t6, 469f
461:              auipc        s3, 706790
                  lui          t5, 974903
                  srli         s0, s6, 6
                  sra          t5, sp, t5
                  ori          s3, s7, -515
                  bne          t6, s4, 479f
                  slli         s0, tp, 9
                  slli         a5, a2, 15
469:              slti         t5, a0, -875
470:              beq          gp, gp, 472f
                  srai         a2, s8, 10
472:              srli         a5, a0, 31
                  sub          s3, zero, tp
                  sra          a7, ra, s2
                  ori          s11, s5, 1415
                  lui          s10, 686271
                  bgeu         t3, a4, 480f
                  sltiu        a7, t3, -1715
479:              xori         s7, a0, -413
480:              and          t4, s2, t3
                  beq          sp, a3, 495f
                  sll          s6, s4, a7
                  sub          s7, s10, a6
                  slt          s11, s4, ra
                  bgeu         a5, s7, 488f
                  andi         ra, s11, 1993
                  sll          a5, s11, a5
488:              srai         a2, a1, 6
                  srl          t5, a4, s5
                  sltiu        a6, t4, -1711
                  xor          s11, t2, t4
                  bltu         tp, s3, 494f
                  srli         tp, a5, 14
494:              or           a7, a6, s3
495:              beq          s1, a1, 503f
                  blt          a7, s0, 511f
                  sll          a5, s11, a2
                  slli         t4, s11, 14
                  sll          s9, a6, s6
                  beq          a4, a6, 517f
                  xori         t0, s5, 1413
                  xor          a4, a4, a7
503:              lui          a2, 1009961
                  sltu         a1, a7, t4
                  andi         s5, a5, 486
                  srl          s0, a4, a0
                  or           a2, s4, s6
                  sub          gp, a5, a6
                  sll          t1, s6, t5
                  addi         s11, s3, -361
511:              slt          s3, s3, s5
                  lui          gp, 81097
                  addi         a2, zero, 1146
                  sltu         t4, t3, s2
                  bltu         s3, s8, 535f
                  srl          t4, t3, s3
517:              andi         s11, s2, -420
                  addi         s8, s10, 448
                  slli         t0, t6, 12
                  and          t5, a2, s8
                  beq          s8, gp, 536f
                  srl          ra, s11, s1
                  srli         s3, tp, 2
                  slli         s1, t0, 21
                  lui          t0, 231555
                  bne          t6, t4, 529f
                  andi         t6, a5, -540
                  srli         s9, a7, 31
529:              srai         a6, a5, 25
                  srl          s10, a0, s3
                  sub          s0, t5, tp
                  slt          s5, a2, s7
                  bgeu         a4, s11, 548f
                  sll          s9, s3, s2
535:              sltiu        gp, a4, 1172
536:              or           s7, s2, a7
                  srai         gp, tp, 15
                  lui          s1, 868715
                  bne          s7, a0, 553f
                  srl          a2, s2, a4
                  srl          sp, s0, t6
                  bge          a7, s2, 552f
                  bge          s3, s3, 560f
                  bge          a2, s3, 558f
                  sltu         gp, s2, s6
                  xori         t2, a7, 1573
                  blt          sp, t3, 550f
548:              and          t5, a4, t3
                  xori         a0, s6, -763
550:              bgeu         t1, tp, 567f
                  sll          s7, a5, s3
552:              bne          s11, a2, 568f
553:              xor          t1, a7, t6
                  slli         a3, t0, 2
                  srl          s3, s3, s1
                  add          s11, a0, t1
                  and          t2, s11, s1
558:              sltiu        gp, s1, -1470
                  add          zero, a6, a0
560:              bltu         t1, a6, 580f
                  auipc        a6, 1029876
                  srai         a4, t5, 15
                  andi         t2, s11, -1082
                  sltu         s0, s2, t5
                  sltu         a3, a1, s0
                  bne          a7, a5, 581f
567:              blt          gp, tp, 574f
568:              sltu         s5, s11, a0
                  srli         s11, a4, 13
                  slt          t1, t2, s9
                  lui          a7, 539742
                  sll          t5, tp, t6
                  bge          a2, s5, 581f
574:              auipc        s8, 324531
                  xor          a2, s2, s2
                  andi         t5, s8, 1781
main_9:           jal          t0, 4f
0:                jal          t1, 3f
1:                jal          t2, 8f
2:                jal          ra, 5f
3:                jal          a1, 10f
4:                jal          ra, 14f
5:                jal          ra, 15f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          gp, 13f
9:                jal          ra, 1b
10:               jal          ra, 12f
11:               jal          t1, 7b
12:               jal          ra, 9b
13:               jal          ra, 6b
14:               jal          t1, 11b
15:               sra          a7, a3, a5
                  sra          ra, t5, s5
                  beq          t4, t3, 585f
                  add          s7, zero, t4
580:              lui          s7, 680326
581:              slt          s9, s11, s2
                  ori          sp, zero, -1719
                  slti         s8, s2, 867
                  slti         t0, s0, -1109
585:              slti         gp, sp, 828
                  lui          t0, 403595
                  slti         a4, zero, -671
                  add          t2, a7, t5
                  slli         s5, gp, 14
                  bne          t6, a6, 592f
                  slti         s1, s8, -2032
main_5:           jal          t0, 18f
0:                jal          ra, 15f
1:                jal          ra, 17f
2:                jal          s8, 0b
3:                jal          s1, 1b
4:                jal          t1, 9f
5:                jal          ra, 20f
6:                jal          t1, 26f
7:                jal          ra, 3b
8:                jal          t0, 16f
9:                jal          t0, 13f
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               jal          s3, 5b
13:               jal          ra, 10b
14:               jal          s7, 24f
15:               jal          ra, 19f
16:               jal          ra, 21f
17:               jal          ra, 14b
18:               jal          ra, 4b
19:               jal          s7, 6b
20:               jal          s3, 11b
21:               jal          ra, 25f
22:               jal          s0, 2b
23:               jal          ra, 12b
24:               jal          ra, 23b
25:               jal          tp, 22b
26:               and          a4, t5, a1
592:              slti         a2, s0, -1624
                  srli         s10, s10, 0
                  addi         gp, s5, 2039
                  add          ra, t1, s6
                  srl          a2, s5, t3
                  blt          s0, s11, 606f
                  srl          t0, a3, s10
                  bge          s5, s9, 603f
                  beq          a3, tp, 610f
                  sll          t0, s3, s9
                  srl          s3, a2, s3
603:              srai         a3, a1, 27
main_26:          jal          t0, 2f
0:                jal          t1, 23f
1:                jal          s7, 8f
2:                jal          ra, 5f
3:                jal          gp, 14f
4:                jal          t0, 0b
5:                jal          t1, 13f
6:                jal          ra, 15f
7:                jal          ra, 19f
8:                jal          s0, 27f
9:                jal          t1, 28f
10:               jal          ra, 11f
11:               jal          t1, 3b
12:               jal          s8, 18f
13:               jal          a4, 16f
14:               jal          t1, 7b
15:               jal          a5, 26f
16:               jal          ra, 17f
17:               jal          ra, 20f
18:               jal          t1, 4b
19:               jal          ra, 12b
20:               jal          s3, 6b
21:               jal          a2, 24f
22:               jal          ra, 25f
23:               jal          ra, 22b
24:               jal          ra, 9b
25:               jal          ra, 1b
26:               jal          ra, 10b
27:               jal          ra, 21b
28:               ori          a3, t3, -1445
                  andi         a2, t1, -1713
                  srl          zero, s3, s4
606:              addi         t4, a4, 1926
                  bgeu         s2, s5, 622f
                  slti         a5, zero, -1015
                  slt          ra, t0, a6
610:              addi         s0, s8, 1093
                  bne          t3, a1, 628f
                  sltu         a3, s11, s7
                  lui          t6, 343743
                  sra          a0, t6, a4
                  slli         s1, zero, 3
                  slti         s6, a6, 1843
                  xor          ra, sp, a2
                  blt          a3, a7, 629f
                  sltiu        s9, s5, -26
                  auipc        t1, 930241
                  slli         a0, s5, 8
622:              bge          s6, t0, 639f
                  auipc        a0, 294365
                  or           t5, sp, a5
                  bne          a3, a6, 626f
626:              bge          s4, s6, 640f
                  bgeu         s9, s8, 628f
628:              beq          s11, a2, 630f
629:              bgeu         s3, s0, 639f
630:              sltiu        a5, a4, -534
                  addi         s10, t1, -1978
                  xori         t5, s11, -1063
                  and          t5, a2, s5
                  beq          a3, t0, 647f
                  addi         s0, t2, 1518
                  beq          s7, s11, 639f
                  and          a2, s9, tp
                  slt          a7, s10, gp
639:              sltiu        s0, t3, -1907
640:              andi         sp, a7, -781
                  ori          a2, s9, -1926
                  slti         s11, t0, 1372
                  bltu         t3, s5, 644f
644:              or           t6, a6, s3
                  bgeu         s1, s3, 648f
                  slli         a2, zero, 14
647:              xor          s8, s5, t4
648:              sltiu        a2, a3, 981
                  sltu         t6, s3, t1
                  and          s11, s1, s9
                  bgeu         a2, s1, 654f
                  nop
                  sltu         a1, a6, a2
654:              blt          s1, t1, 658f
                  ori          s0, s5, -1563
                  or           s8, a5, s3
                  sll          sp, a7, a0
658:              sub          s3, t6, zero
                  slti         t4, s4, 869
                  nop
                  or           t1, s4, s1
                  slt          s6, s11, a2
                  srl          gp, a2, a0
                  beq          a4, a2, 679f
                  sll          s8, sp, s0
                  sub          a0, s0, a3
                  srai         t6, s2, 29
                  xori         t4, s4, 113
                  xori         s1, s2, -766
                  blt          sp, s11, 678f
                  addi         tp, ra, -1990
                  andi         t2, t2, 1970
                  sltiu        s0, s11, -382
                  slli         s6, s8, 21
                  slti         t1, a6, -1775
                  sub          s3, s4, a5
                  srai         a0, a3, 23
678:              srai         s0, s1, 6
679:              addi         t5, s8, -813
                  auipc        s1, 292803
                  srl          a7, gp, t6
                  andi         t1, a4, 599
                  srai         s9, t2, 25
                  srl          zero, s3, gp
                  xori         t5, a7, 1340
                  bltu         s9, t1, 702f
                  xori         a6, tp, 1671
                  slti         s5, s6, -1622
                  slli         sp, s7, 13
                  bltu         s6, a5, 693f
                  bge          t3, a0, 693f
                  slt          s10, tp, a0
693:              andi         t2, a3, 1727
                  xor          a2, tp, t6
                  bgeu         a5, s0, 702f
                  add          s9, s7, t4
                  slti         sp, a7, 1540
                  sltu         s9, s9, t0
                  srli         a6, a6, 18
                  sll          t6, s2, s11
                  add          a3, s5, s8
702:              srl          t5, ra, t5
                  nop
                  sltiu        a4, s0, -2024
                  srl          t4, a1, s5
                  add          a0, sp, ra
                  addi         t5, a6, 301
                  addi         a4, t4, -680
                  ori          zero, t0, -1171
                  bgeu         ra, s3, 719f
                  auipc        s9, 460931
                  sub          a6, a2, t4
                  srl          a3, a6, gp
                  bgeu         t0, s7, 734f
                  slti         zero, a6, 330
                  sll          s0, s0, a5
                  add          s6, s9, t4
                  slt          t6, s6, a6
719:              bne          a0, a5, 736f
                  sltiu        s10, s6, -1406
                  auipc        ra, 698574
                  sltiu        a2, ra, -828
                  slt          a0, a5, a4
                  sll          t1, a3, t6
                  lui          a2, 527347
                  or           s0, t1, a6
                  slt          s5, s11, gp
                  bgeu         a5, tp, 729f
729:              add          s5, gp, s11
                  sra          a6, a7, t2
                  lui          a2, 844175
                  bge          a1, a4, 735f
                  srai         s6, s5, 21
734:              sra          tp, s9, s5
735:              srli         zero, s9, 17
736:              slti         s10, a3, -1667
                  sltu         s0, s2, s0
                  slti         t6, ra, 1475
                  or           ra, t5, zero
                  srl          t2, gp, s10
                  sltu         s8, t3, a2
                  bgeu         t2, s6, 759f
                  srai         t2, s8, 23
                  slti         ra, s1, 66
                  srli         s7, s8, 26
                  add          a4, s11, t0
                  xori         s6, t2, 645
                  slt          s5, a4, tp
                  add          ra, s3, t6
                  or           tp, ra, s2
                  slli         a5, tp, 13
                  sll          t5, s7, s5
                  xor          a5, t5, t3
                  ori          a2, t1, 41
                  bne          a2, a1, 770f
                  lui          t4, 899389
                  sra          s0, t3, a3
                  slti         s6, a6, 1228
759:              slt          a6, a2, a4
                  auipc        t4, 51048
                  add          s10, a5, ra
                  xor          t2, ra, t2
                  or           a6, s5, s6
                  blt          a2, a6, 778f
                  addi         t2, a5, 1797
                  srl          ra, t3, s2
                  slt          t0, s9, s8
                  srl          s3, t3, zero
                  blt          a6, s6, 777f
770:              beq          ra, t1, 773f
                  beq          t2, s11, 785f
                  add          a5, t4, s8
773:              sltu         a7, t0, s3
                  xori         t6, s4, 2012
                  sltu         s6, t4, s2
                  sll          t4, tp, a4
777:              xori         a3, a6, -708
778:              bltu         a1, a0, 782f
                  sll          t4, a6, a6
                  bltu         t4, s3, 797f
                  xori         a6, t0, -1581
782:              bne          a0, t3, 784f
                  srai         a3, s4, 28
784:              blt          t4, t5, 785f
785:              addi         t6, zero, -1456
                  srai         t5, s9, 9
                  beq          s11, t0, 802f
                  sll          zero, s7, zero
                  or           tp, s0, t3
                  bgeu         s6, t2, 801f
                  lui          s1, 373027
                  sll          s3, a5, gp
                  bge          t0, a3, 803f
                  auipc        s10, 854805
                  bgeu         tp, s2, 796f
796:              or           s10, s11, s6
797:              blt          t0, a7, 804f
                  bgeu         a1, s9, 802f
                  addi         s0, t3, 1522
                  blt          s7, s3, 813f
801:              bgeu         zero, a6, 809f
802:              bne          s7, a2, 805f
803:              and          t5, s9, t1
804:              sll          s3, sp, gp
805:              sll          a1, t1, t2
                  sltiu        ra, s10, 247
                  bge          t0, s3, 822f
                  addi         t5, t0, -270
809:              sltu         a4, s5, s2
                  sub          gp, a4, s3
                  auipc        a2, 795288
                  auipc        a1, 471085
813:              sltiu        ra, s5, -630
                  and          gp, t1, s6
                  and          s1, a5, s6
                  bne          s11, s10, 826f
                  ori          a1, s3, -1382
                  xori         t4, s8, -1656
                  addi         s10, s5, -847
                  xor          s6, s5, s4
                  bge          t1, t5, 828f
822:              srl          s1, s11, ra
                  nop
                  add          s5, a5, t5
                  srl          s6, a6, t5
826:              beq          t1, s10, 833f
                  bltu         s10, t0, 836f
828:              srl          a2, s1, a7
                  and          a2, a2, sp
main_20:          jal          t0, 13f
0:                jal          ra, 15f
1:                jal          ra, 20f
2:                jal          ra, 8f
3:                jal          gp, 5f
4:                jal          a6, 19f
5:                jal          t1, 9f
6:                jal          ra, 11f
7:                jal          ra, 2b
8:                jal          t5, 16f
9:                jal          s10, 4b
10:               jal          t1, 7b
11:               jal          ra, 21f
12:               jal          t1, 17f
13:               jal          ra, 10b
14:               jal          s0, 3b
15:               jal          ra, 14b
16:               jal          ra, 18f
17:               jal          ra, 0b
18:               jal          ra, 12b
19:               jal          ra, 1b
20:               jal          ra, 6b
21:               add          t0, a4, a4
                  srl          s8, s11, s3
                  sub          s9, a5, a6
                  auipc        t4, 961997
833:              and          t0, s4, a4
                  srai         t4, t0, 14
                  bltu         s5, a3, 852f
836:              srai         s5, s4, 28
                  lui          s3, 336308
                  slti         s3, a7, -1791
                  nop
                  blt          s4, sp, 851f
                  nop
                  bne          s9, s1, 845f
                  ori          s11, t4, 3
                  bgeu         t5, s4, 847f
845:              slt          s5, s8, a4
                  lui          s11, 555217
847:              add          a2, t6, t5
                  slti         ra, tp, -218
                  bne          t3, t2, 853f
                  sltiu        s1, a2, -1811
851:              xori         t5, sp, -111
852:              bgeu         a6, s5, 866f
853:              sra          s5, s6, zero
                  xori         a1, sp, -1005
                  srl          tp, ra, s0
                  nop
                  sltiu        s7, t5, -1355
                  sub          sp, t0, a2
                  add          s9, s5, s1
                  bgeu         s3, s7, 868f
                  sll          s5, a5, s7
                  andi         s0, t2, 781
                  srl          s7, s0, sp
                  srl          t6, s1, sp
                  sra          tp, a7, t3
866:              srai         t5, a4, 26
                  xori         a1, s9, 485
868:              addi         a1, ra, -758
                  and          s1, gp, t1
                  addi         s5, s6, 2004
                  srli         sp, zero, 5
                  and          s5, t6, s8
                  slli         s7, a5, 23
                  slti         s5, s1, 147
                  ori          a3, s11, 175
                  and          a2, s2, t1
                  nop
                  srli         ra, a5, 2
                  and          s5, a3, s4
                  beq          a0, t0, 888f
                  or           s9, t4, zero
                  xori         a4, s11, -1996
                  andi         t6, t4, -202
                  bge          s8, s11, 899f
                  or           s5, s1, s7
                  srli         s9, s5, 9
                  bgeu         s6, s1, 907f
888:              sll          tp, s3, s9
                  srli         a1, t2, 6
                  bge          t1, a0, 891f
891:              srai         a2, s7, 8
                  and          a2, a1, t4
                  srai         ra, t3, 13
                  sra          s6, a6, a2
                  addi         a3, t2, 302
                  bge          s5, s5, 910f
                  bge          a0, t4, 913f
                  bne          t0, t0, 902f
899:              andi         a4, t5, 378
                  nop
                  bgeu         a4, s0, 911f
902:              sub          s8, t2, s9
                  sub          a0, a6, s6
                  sltu         zero, sp, gp
                  nop
                  srai         tp, t2, 2
907:              srai         a1, a6, 14
                  bge          a7, s9, 910f
                  srai         s11, t0, 12
910:              blt          a4, a3, 913f
911:              or           t4, a0, sp
                  slli         a0, s1, 3
913:              sll          ra, a1, sp
                  bltu         s0, s8, 915f
915:              blt          s4, a6, 925f
                  slli         s0, s6, 24
                  bgeu         a4, t0, 932f
                  srli         a7, a3, 11
                  bge          s9, sp, 936f
                  andi         gp, a5, 1142
                  slti         s6, ra, -759
                  srl          zero, t0, t5
                  slti         s3, t4, -2019
                  slti         a3, t4, 1891
925:              bge          s11, s7, 940f
                  sra          s11, s0, t6
                  xori         s3, gp, -1817
                  sltiu        s6, zero, -159
                  slt          gp, s10, a3
                  lui          s3, 756805
                  la           ra, sub_1
                  ori          a1, a4, -291
                  sub          a5, gp, a6
                  addi         ra, ra, 57
                  lui          a6, 723705
                  sra          s3, t1, t3
                  sltu         zero, a5, a0
                  srai         gp, a4, 4
                  sltu         s10, s8, s8
main_j2:          jalr         t0, ra, -56 #jump main -> sub_1
                  add          ra, a3, a3
                  sra          sp, t1, t3
                  bltu         a3, s8, 933f
                  xori         a1, sp, -369
932:              blt          s1, sp, 933f
933:              srai         ra, sp, 20
                  xor          gp, t4, a0
                  sra          t5, sp, a5
936:              add          s0, s8, zero
                  sub          s6, a1, s5
                  auipc        t5, 36496
                  or           a5, a6, a7
940:              xor          t1, t3, a1
                  nop
                  srai         a2, a1, 4
                  auipc        gp, 6061
                  bne          a7, s7, 961f
                  srai         t1, t1, 1
                  auipc        a3, 53657
                  srli         zero, s5, 17
                  andi         a5, a2, -1190
                  sra          ra, t4, sp
                  beq          a6, s11, 952f
                  bgeu         s2, t5, 964f
952:              lui          zero, 385235
                  and          a5, t4, t6
                  bne          s5, t4, 969f
                  sltu         ra, s6, zero
                  auipc        s6, 8517
                  addi         sp, sp, -1696
                  blt          s7, s10, 973f
                  lui          s3, 160049
                  sltiu        gp, tp, -988
961:              blt          a4, s2, 978f
                  slt          t6, t4, s4
                  sltu         s9, a2, s7
964:              andi         s10, tp, 504
                  bge          s4, t6, 973f
                  xor          tp, ra, s9
                  slli         a2, t1, 12
                  bge          s0, s9, 976f
969:              srli         zero, s1, 14
                  or           a6, s1, t5
                  ori          t5, s4, 918
                  slti         s0, s1, 1960
973:              addi         s3, s7, -2008
                  blt          t6, a2, 984f
                  auipc        t4, 847858
976:              or           s5, a3, s2
                  nop
978:              sra          zero, sp, s6
                  srli         s11, s5, 24
                  and          a2, a5, t4
                  xor          t1, a6, s9
                  xori         gp, a7, -2
                  sub          s9, s4, a3
984:              sltu         ra, a5, a4
                  or           t6, zero, sp
                  bne          s3, s5, 999f
                  slti         t2, s11, -1408
                  and          s1, s2, ra
                  srl          gp, t6, t5
                  blt          s2, s8, 999f
                  srli         t6, gp, 11
                  nop
                  bltu         zero, s0, 997f
                  bgeu         sp, s11, 997f
                  bne          a7, t6, 1006f
                  add          s3, s10, s6
997:              slli         a1, s0, 27
                  andi         s7, sp, -16
999:              srl          s9, t4, t4
                  sltu         a4, t1, t2
                  blt          sp, s3, 1004f
                  slti         ra, t1, -1381
                  slli         a7, a7, 29
1004:             nop
                  slt          t6, s5, ra
1006:             ori          gp, t5, 1311
                  sltu         t2, zero, a2
                  slt          t0, s4, t0
                  and          s0, t4, t2
                  xor          t0, s4, t5
                  auipc        a6, 400991
                  or           s1, s4, s4
                  bgeu         tp, ra, 1027f
                  slli         s10, s0, 25
                  srli         s5, t6, 21
                  auipc        s7, 550610
                  bne          a3, t3, 1032f
                  sub          s9, s8, s7
                  bltu         a0, a7, 1020f
1020:             slti         t0, t2, 442
                  sll          t4, a2, s7
                  and          zero, t4, s1
                  bgeu         s7, a4, 1025f
                  slli         s6, tp, 8
1025:             blt          t3, s0, 1042f
                  sltu         s1, t5, s8
1027:             auipc        s6, 879478
                  slli         t6, sp, 2
                  sub          t5, s1, a0
                  slti         t0, t0, -841
                  nop
1032:             sub          s8, zero, gp
                  blt          s7, s7, 1040f
                  beq          s2, zero, 1035f
1035:             or           s8, s5, t2
                  sra          t6, s7, a0
                  slti         t2, a2, -1297
                  beq          s6, s5, 1041f
                  bgeu         t0, a7, 1056f
1040:             addi         zero, t4, -18
1041:             sub          t4, sp, s5
1042:             add          t4, t5, s1
main_11:          jal          t0, 10f
0:                jal          ra, 12f
1:                jal          t0, 6f
2:                jal          ra, 11f
3:                jal          a6, 1b
4:                jal          ra, 5f
5:                jal          t1, 7f
6:                jal          a1, 14f
7:                jal          t1, 13f
8:                jal          a5, 2b
9:                jal          ra, 3b
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               jal          t1, 4b
13:               jal          ra, 8b
14:               sra          s10, s1, a5
                  add          s8, ra, s2
                  beq          s0, t6, 1064f
                  ori          s9, t0, -808
                  and          s3, t1, a0
                  blt          zero, a0, 1057f
                  lui          t4, 510678
                  bltu         s5, t4, 1050f
1050:             sub          s8, tp, t5
                  or           t4, s5, a3
                  bltu         a4, a7, 1059f
                  sra          a7, s9, a5
                  bgeu         t2, a0, 1070f
                  beq          s3, t2, 1058f
1056:             xor          gp, sp, t5
1057:             nop
1058:             andi         t1, t6, -575
1059:             sltu         a3, t3, a2
                  lui          s6, 474523
                  sltu         a5, s10, tp
                  xor          tp, s3, s2
                  sra          s8, a2, a7
1064:             sub          a5, s10, a3
                  sub          s5, gp, s4
                  slt          a3, s0, a6
                  and          s1, t4, s7
                  slli         a7, s6, 14
                  blt          a5, gp, 1083f
1070:             xor          a1, s7, s6
                  blt          a1, gp, 1073f
                  andi         sp, s8, 1117
1073:             sub          s5, s2, s8
                  auipc        s9, 283571
                  add          t2, sp, t1
                  sll          s11, a0, tp
                  bgeu         s7, t1, 1081f
                  ori          s0, s11, 498
                  slli         a7, zero, 0
                  sra          a6, t0, zero
1081:             bltu         zero, t1, 1098f
                  lui          tp, 1037747
1083:             bne          s8, a1, 1099f
                  addi         s6, t6, 279
                  bltu         t6, s11, 1092f
                  bgeu         a1, t2, 1089f
                  xori         a3, s3, -162
                  slli         s8, gp, 26
1089:             sub          s10, s2, a6
                  blt          s5, a4, 1091f
1091:             andi         tp, t2, -1848
1092:             xor          s0, s9, t0
                  sltiu        a6, s8, 1239
                  auipc        t0, 508331
                  ori          sp, t5, -1593
                  add          s0, a3, a5
                  bne          ra, sp, 1114f
1098:             addi         t1, t3, -1069
1099:             auipc        s6, 36295
                  auipc        a6, 272038
                  slli         a0, s6, 19
                  xor          t0, t6, s8
                  xor          a1, a7, s8
                  addi         s5, a2, -1635
                  blt          t3, a6, 1122f
                  srl          t1, s2, t1
                  bltu         a6, ra, 1110f
                  slli         t4, s8, 16
                  slli         a1, s9, 11
1110:             srli         s7, a4, 8
                  sltu         s6, t2, t6
                  srli         t6, ra, 4
                  srli         s10, t4, 12
1114:             bgeu         s8, a4, 1117f
                  slt          a2, s0, a6
                  ori          t2, a0, -1589
1117:             sll          s0, t5, s6
                  nop
                  srli         t1, a1, 16
                  and          t0, zero, a0
                  bne          a5, s6, 1129f
1122:             xori         a7, zero, 1151
                  bge          a7, s10, 1132f
                  or           t6, s3, s9
                  blt          s5, s0, 1139f
                  slt          a2, s11, t3
                  xor          s9, s3, sp
                  sub          s5, t6, s1
1129:             and          s8, a4, s3
                  and          t5, s3, s3
                  sra          s5, t2, s4
1132:             srli         s5, gp, 0
                  bge          s3, tp, 1137f
                  sltu         a2, s8, s8
                  blt          s10, a3, 1150f
                  sub          a4, t6, t3
1137:             slli         t6, s5, 17
                  xor          a4, t2, a7
1139:             and          s7, t2, t3
                  srai         a6, a2, 27
                  or           a1, a3, t4
                  sll          s6, t6, t3
                  slti         s7, s10, 842
                  auipc        a7, 425550
                  srl          a3, zero, s8
                  bltu         t4, t2, 1149f
                  auipc        s3, 757082
                  srai         a2, s7, 9
1149:             addi         a6, a0, 444
1150:             slt          s8, t2, s11
                  xor          s6, t3, t3
                  nop
                  bltu         sp, a4, 1157f
                  xori         t2, t1, -326
                  sub          a6, a7, t2
                  lui          t1, 94939
1157:             sltu         t1, t2, t5
                  sra          a5, ra, t5
                  slli         s6, t2, 30
                  bne          tp, zero, 1168f
                  srl          a6, s1, a3
                  nop
                  sra          a1, s0, s0
                  srai         s6, s7, 29
                  slti         a3, t0, 1004
                  slli         ra, s2, 5
                  srl          s8, s0, a5
1168:             and          a3, t6, s9
                  bne          s6, a2, 1170f
1170:             or           a0, a2, s6
                  nop
                  bne          a3, a2, 1173f
1173:             sltu         s0, t3, s9
                  andi         s10, a3, -100
                  slli         t4, s5, 19
                  ori          a2, s7, 763
                  addi         ra, s9, 568
                  slli         ra, a6, 26
                  sltu         t0, t3, s6
                  sll          sp, s11, t1
                  nop
                  nop
                  slli         a3, s2, 9
                  or           t2, a3, s3
                  sltu         s5, s0, a1
                  srli         a6, a3, 5
                  sub          zero, t2, gp
                  auipc        t6, 673026
                  lui          a7, 460919
                  add          s7, s1, zero
                  blt          s9, a1, 1201f
                  auipc        s10, 438117
                  or           s6, ra, a5
                  or           s1, s6, tp
                  bltu         s5, a2, 1208f
                  sll          a0, t5, a1
                  slti         ra, a6, 1444
                  la           a1, sub_2
                  addi         a1, a1, 940
                  xori         s5, s0, 1892
                  or           s7, sp, s1
                  nop
                  lui          t1, 664365
                  sltu         ra, s6, s0
                  srli         t6, t4, 24
                  add          a5, s0, zero
main_j1:          jalr         t0, a1, -939 #jump main -> sub_2
                  add          t0, s2, a4
                  and          ra, a0, s5
                  sub          s7, s11, t1
1201:             and          t0, s1, s2
                  add          ra, t3, a7
                  nop
                  bltu         t5, ra, 1206f
                  bgeu         t6, s10, 1207f
1206:             bgeu         s9, s10, 1220f
1207:             bltu         s6, a2, 1222f
1208:             sub          sp, a5, s6
                  sub          t1, t4, s5
                  sll          s9, a6, ra
                  andi         s3, zero, 558
                  bge          a0, s7, 1227f
                  slli         s10, a5, 18
                  nop
                  addi         t6, a1, 222
                  xori         a5, gp, 1972
                  nop
                  nop
                  xor          s8, s11, sp
1220:             andi         tp, s9, 1286
                  and          a6, a7, t3
1222:             slti         s9, s6, 1383
                  slti         tp, zero, 1451
                  lui          s7, 685454
                  lui          s6, 717953
                  xori         t6, gp, 776
1227:             slt          gp, a3, a2
                  andi         a6, sp, 1980
                  and          t2, t3, s0
                  sra          gp, t0, t0
                  sra          t0, t2, s4
                  bgeu         s11, s8, 1242f
                  xori         s9, s10, 1921
                  sub          t1, t1, a1
                  xor          t1, a6, t6
                  srl          a3, a3, t2
                  addi         t2, a2, -1527
                  bne          s0, zero, 1249f
                  srai         a5, zero, 7
                  srai         sp, s9, 27
                  andi         s1, a3, -148
1242:             andi         a3, t2, 12
                  sll          s0, s11, a4
                  sub          a3, s8, s11
                  srl          s6, s7, t4
                  blt          a4, a1, 1266f
                  slli         s11, s7, 4
                  srl          sp, t1, a7
1249:             bltu         t0, zero, 1256f
                  beq          t2, a6, 1267f
                  sll          s0, s11, t3
                  slt          a0, s0, a2
                  srl          a6, s11, t0
                  ori          s11, a7, 48
                  sub          a3, tp, s6
1256:             sltu         sp, s8, t0
                  bltu         s3, t5, 1272f
                  slt          a2, tp, s5
                  auipc        a3, 631807
                  srli         tp, t1, 24
                  auipc        s5, 978353
                  blt          s2, s6, 1269f
                  srl          ra, s10, a1
                  srai         s8, s8, 28
                  bgeu         s9, s8, 1279f
1266:             or           s0, t0, s11
1267:             sltu         s7, tp, a5
                  or           tp, s8, t2
1269:             sra          a0, s7, s1
                  sub          t2, s5, a1
                  or           s6, a5, t6
1272:             nop
                  lui          s0, 870656
                  bltu         t6, s2, 1275f
1275:             blt          t5, sp, 1288f
                  bne          a0, t4, 1292f
                  sub          s5, t6, t3
                  slti         s7, tp, 1000
1279:             sll          s9, sp, a1
                  sra          s3, a2, s3
                  slt          t4, a5, a4
                  bge          gp, a6, 1297f
                  or           s0, s5, t6
                  xor          s9, ra, s6
                  slt          t1, a7, a5
                  ori          a2, gp, -1407
                  ori          s0, a2, -753
1288:             xori         t0, t5, -1145
                  blt          a5, s0, 1290f
1290:             nop
                  beq          a5, s2, 1308f
1292:             bge          t4, s2, 1302f
                  slli         t0, zero, 30
                  nop
                  andi         a6, a4, 1151
                  srl          t5, t1, s5
1297:             srai         s5, t6, 24
                  add          ra, s6, s0
                  bne          s7, a0, 1316f
                  slt          s11, a6, s10
                  bltu         a0, gp, 1304f
1302:             bge          a0, a7, 1305f
                  sub          s9, ra, s3
1304:             slli         s8, s11, 8
1305:             bne          a7, t3, 1313f
                  or           s5, t0, s4
                  srl          s9, t6, zero
1308:             andi         ra, a1, 1909
                  srai         tp, s4, 30
                  srli         gp, s9, 25
                  bge          s11, s3, 1312f
1312:             bne          a1, t5, 1332f
1313:             xor          zero, a5, ra
                  bne          s9, t0, 1328f
                  auipc        zero, 108280
1316:             sll          t5, s6, t3
                  sub          a4, s0, gp
                  slti         a0, tp, 1879
                  nop
                  nop
                  srai         s10, t5, 14
                  or           sp, t4, a1
                  andi         s5, a2, -1561
                  slli         t1, s3, 15
                  sra          a4, s0, s2
                  xor          s5, sp, t1
                  srli         s11, zero, 7
1328:             bgeu         t0, s0, 1330f
                  beq          sp, a4, 1332f
1330:             bltu         s1, s10, 1345f
                  srai         a2, sp, 9
1332:             sltiu        s1, a1, -1110
                  sra          a1, gp, a2
                  bltu         a1, a1, 1343f
                  slt          s9, s10, tp
                  sub          s0, s11, tp
                  or           s7, t5, s3
                  sll          s7, t6, sp
                  sub          t4, ra, tp
                  sll          s9, t5, s3
                  srai         zero, s8, 2
                  sub          gp, ra, s2
1343:             bgeu         a2, ra, 1354f
                  sll          t0, a4, s1
1345:             nop
                  beq          t5, a6, 1353f
                  or           s9, s1, s5
                  srai         s10, s5, 19
                  bge          t5, a2, 1357f
                  xori         a3, t0, 86
                  bltu         a3, zero, 1355f
                  lui          s11, 1009600
1353:             sra          t4, gp, s11
1354:             sltiu        sp, t1, 1657
1355:             sub          a6, ra, sp
                  nop
1357:             sltiu        s7, a2, -226
                  bltu         gp, tp, 1361f
                  slt          s1, s2, s1
                  sra          s5, a7, a1
1361:             beq          s9, a6, 1371f
                  sra          ra, t5, t1
                  bgeu         a3, tp, 1367f
                  bltu         ra, s4, 1366f
                  nop
1366:             ori          s11, t5, 860
1367:             bgeu         a4, s11, 1383f
                  andi         sp, a4, -1227
                  sub          a4, s7, t6
                  sra          a4, tp, s10
1371:             srl          t4, a6, s10
                  bge          a6, ra, 1379f
                  sll          ra, t6, a1
                  andi         s5, s1, 853
                  srl          a0, t4, s11
                  blt          s2, a0, 1384f
                  bgeu         t6, a5, 1380f
                  slli         a1, a0, 25
1379:             slt          t1, s1, a5
1380:             bltu         s8, s8, 1390f
                  sub          s8, sp, s6
                  slt          a4, s6, a6
1383:             srli         a6, ra, 23
1384:             bltu         s3, t1, 1388f
                  srli         a7, tp, 0
                  xor          sp, s3, sp
                  beq          s5, s9, 1407f
1388:             andi         t4, s3, 275
                  bge          a4, t0, 1390f
1390:             srai         s6, s1, 22
                  sub          s11, s3, t0
                  slli         t4, s0, 8
                  bltu         a6, a0, 1410f
                  addi         s7, t1, 1652
                  srli         sp, a2, 29
                  slli         gp, t0, 17
                  addi         a0, sp, 911
                  sub          s3, s8, a0
                  srai         a6, s5, 3
                  bltu         s10, sp, 1403f
                  bge          a3, s2, 1403f
                  sub          t0, s8, t0
1403:             sra          t6, a0, s9
                  or           s8, s7, t6
                  sltu         a2, s11, a6
                  beq          s11, s5, 1421f
1407:             bge          sp, s9, 1421f
                  andi         a7, a1, -357
                  slt          gp, s10, a7
1410:             bne          s4, s8, 1417f
                  xori         s1, s5, 1836
                  sltiu        tp, s8, 950
                  auipc        s5, 756899
                  srli         t1, s5, 22
                  xori         a1, t3, 1842
                  lui          s7, 195317
1417:             beq          s2, s9, 1418f
1418:             bltu         a4, a5, 1432f
                  slli         a1, t4, 10
                  slli         s11, s6, 12
1421:             and          a7, s0, a6
                  ori          ra, s3, 1388
                  sra          ra, a7, s7
                  blt          t4, s6, 1435f
                  slti         a4, a4, 1933
                  xor          a6, a0, ra
                  sra          s1, ra, zero
                  addi         t0, a3, -1197
                  and          gp, a2, s9
                  srli         gp, t1, 7
                  auipc        s11, 192883
1432:             beq          s7, s1, 1435f
                  addi         gp, a1, 963
                  sub          t4, s5, zero
1435:             sra          a6, a3, t3
                  andi         s5, s5, -354
                  srai         a5, a3, 12
                  beq          s1, s11, 1453f
                  add          s10, t3, t1
                  and          s1, s0, s7
                  beq          s9, a2, 1458f
                  bgeu         a5, t1, 1455f
                  bge          a5, a2, 1460f
                  bgeu         a7, s5, 1452f
                  bgeu         a1, s4, 1460f
                  addi         a0, s8, -1817
                  slti         a6, s3, 945
                  ori          zero, ra, 1110
                  ori          tp, s1, -214
                  and          s8, t0, zero
                  ori          t6, s9, -1770
1452:             srl          s0, a2, a2
1453:             srai         a0, s0, 26
                  bltu         a0, t5, 1457f
1455:             add          s6, sp, s5
                  sll          gp, t2, a1
1457:             addi         s9, t1, 1354
1458:             andi         a5, a6, 828
                  xori         sp, t5, 1736
1460:             beq          s6, a6, 1461f
1461:             beq          zero, sp, 1463f
                  srai         a4, ra, 3
1463:             srl          s3, t3, ra
                  sltiu        s7, a6, 1399
                  sra          s0, sp, t3
                  lui          s6, 499804
                  sltu         s6, s0, s10
                  sll          s8, t2, a3
                  andi         t5, sp, -1273
                  ori          s10, a4, 515
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sll          tp, s3, sp
                  addi         a2, s6, 1889
                  blt          s3, a1, sub_3_stack_p
                  srl          t5, s10, t1
sub_3_stack_p:    addi         s2, s2, -28
                  sw           t0, 4(s2)
                  srl          s6, t0, t1
                  and          t1, a0, s11
                  or           t1, ra, s10
sub_3_4:          jal          t0, 5f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          s1, 14f
3:                jal          ra, 0b
4:                jal          t2, 12f
5:                jal          ra, 19f
6:                jal          ra, 10f
7:                jal          s8, 3b
8:                jal          ra, 4b
9:                jal          t1, 11f
10:               jal          t1, 20f
11:               jal          s5, 21f
12:               jal          t1, 13f
13:               jal          t1, 1b
14:               jal          ra, 7b
15:               jal          a3, 6b
16:               jal          ra, 2b
17:               jal          ra, 15b
18:               jal          ra, 17b
19:               jal          ra, 16b
20:               jal          ra, 22f
21:               jal          ra, 18b
22:               sra          s1, s8, s8
sub_3_2:          jal          t0, 2f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          s0, 13f
3:                jal          ra, 14f
4:                jal          t1, 11f
5:                jal          t1, 7f
6:                jal          ra, 16f
7:                jal          ra, 0b
8:                jal          s11, 6b
9:                jal          a7, 12f
10:               jal          gp, 15f
11:               jal          t1, 3b
12:               jal          sp, 5b
13:               jal          a0, 9b
14:               jal          ra, 17f
15:               jal          t4, 1b
16:               jal          ra, 4b
17:               xor          s0, a4, t1
sub_3_0:          jal          t0, 3f
0:                jal          ra, 12f
1:                jal          s5, 2f
2:                jal          s11, 18f
3:                jal          t1, 9f
4:                jal          t1, 11f
5:                jal          ra, 16f
6:                jal          a7, 20f
7:                jal          t1, 19f
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          s10, 0b
11:               jal          ra, 13f
12:               jal          gp, 7b
13:               jal          ra, 1b
14:               jal          a3, 15f
15:               jal          ra, 8b
16:               jal          t1, 17f
17:               jal          ra, 10b
18:               jal          t1, 14b
19:               jal          t1, 4b
20:               slt          s3, t4, s4
sub_3_1:          jal          t0, 11f
0:                jal          s8, 13f
1:                jal          ra, 15f
2:                jal          ra, 12f
3:                jal          ra, 6f
4:                jal          s1, 2b
5:                jal          gp, 8f
6:                jal          s1, 14f
7:                jal          t4, 5b
8:                jal          t1, 16f
9:                jal          ra, 17f
10:               jal          ra, 0b
11:               jal          t1, 4b
12:               jal          ra, 7b
13:               jal          ra, 9b
14:               jal          ra, 1b
15:               jal          s1, 10b
16:               jal          ra, 3b
17:               slti         zero, t4, -1103
                  sra          s11, t2, zero
                  srl          t4, s9, t0
                  ori          s0, t3, -207
                  srl          s8, a2, sp
                  slt          s9, a5, s0
                  bge          a4, s2, 21f
                  xor          t4, a3, t1
                  srli         s9, s6, 0
                  slt          a6, s4, a1
                  slti         s10, a6, -152
                  and          s5, a0, t6
                  ori          sp, a7, 791
                  andi         a7, a0, -989
                  slt          a5, s11, s11
                  auipc        t0, 200789
                  slti         s8, s3, -1624
                  lui          tp, 192824
                  or           ra, zero, a0
                  andi         a2, ra, 1912
                  sra          a0, a3, a5
                  slt          s8, a5, t0
21:               lui          a4, 97154
                  xor          s8, a1, s9
                  xori         s8, t4, 1636
                  sra          sp, s2, s9
                  sll          a0, t0, a6
                  srli         ra, s6, 14
                  bge          s0, t2, 32f
                  slt          t6, s4, s6
                  ori          s1, a3, 212
                  xori         zero, a6, -1207
                  auipc        t5, 624280
32:               bne          s7, zero, 33f
33:               srli         a5, t5, 29
                  ori          s1, s3, 1061
                  sub          s1, t1, s10
                  xori         sp, s10, -94
                  slt          a4, a0, t3
                  bltu         t1, a6, 42f
                  xori         t6, t4, -525
                  srl          t1, a3, s8
                  sltu         gp, t5, a3
42:               lui          s10, 293343
                  xori         a4, a6, -220
                  srai         a0, s10, 2
                  or           gp, gp, t6
                  andi         zero, ra, -158
                  beq          t0, a7, 59f
                  sra          t5, a3, a3
                  srai         s7, t2, 9
                  lui          s6, 862583
                  sltu         s1, a7, t0
                  addi         t0, t1, 1734
                  sltu         t2, a0, gp
                  addi         s3, t1, -297
                  blt          s6, s10, 58f
                  srl          a3, s11, t2
                  bltu         a3, s3, 71f
58:               ori          t4, t2, 370
59:               slli         a3, s10, 22
                  slti         a2, s11, 148
                  beq          a2, s10, 65f
                  add          tp, ra, t2
                  slt          s1, s9, a4
                  srli         sp, s10, 21
65:               xor          t0, s10, s5
                  bne          a7, s10, 68f
                  slti         gp, s10, 418
68:               bgeu         s8, sp, 71f
                  srai         t1, s6, 19
                  sll          s8, s8, ra
71:               auipc        s3, 693123
                  slti         s8, s4, -1151
                  lui          s6, 216110
                  add          a3, t5, t5
                  srli         s11, s9, 2
                  sltiu        t1, t6, -175
                  srli         a3, s9, 12
                  sub          s5, a6, t0
                  sra          s5, t4, tp
                  nop
                  sra          s1, s4, a7
                  blt          a6, s1, 91f
                  sll          s11, zero, gp
                  srli         s11, zero, 2
                  lui          ra, 610974
                  sub          zero, a7, t4
                  slli         t5, s2, 20
                  bge          t1, ra, 94f
                  ori          s7, s10, 967
                  lui          gp, 1025766
91:               sll          s6, a2, a3
                  sltu         s6, s9, s10
                  auipc        s1, 667683
94:               auipc        t0, 725211
                  lui          a6, 904946
                  nop
                  srli         a6, s11, 28
                  ori          zero, sp, 450
                  bne          t4, a6, 104f
                  nop
                  bltu         s9, s10, 115f
                  ori          ra, s2, 1313
                  srli         s1, t6, 4
104:              and          tp, s2, s5
                  or           t1, a1, zero
                  add          s3, t5, t4
                  sub          ra, a6, ra
                  bltu         s11, s3, 114f
                  sra          s1, a0, s1
                  and          t5, t3, a1
                  add          tp, s5, s4
                  sub          s0, s4, a2
                  sub          s3, s7, gp
114:              auipc        ra, 863002
115:              lui          a0, 625787
                  sltiu        a2, s10, 1406
                  and          s8, t6, s11
                  blt          s1, s6, 128f
                  xori         a0, a0, 1423
                  bne          gp, t6, 129f
                  bge          a1, s0, 125f
                  and          t2, s7, a1
                  srl          s7, a5, t0
                  srai         s10, sp, 14
125:              sltu         a2, t1, sp
                  xori         a7, t1, -1478
                  blt          t4, a0, 135f
128:              sltu         sp, a3, s3
129:              auipc        s5, 770633
                  slli         zero, s9, 12
                  sra          s6, a0, a2
                  sltiu        s3, a6, 590
                  slt          t0, s7, s0
                  lui          a5, 596908
135:              bne          s0, s2, 137f
                  ori          t2, a1, 1608
137:              lui          s11, 959157
                  srli         sp, t4, 8
                  auipc        s9, 1037498
                  sll          a7, a2, a5
                  srai         a5, a3, 14
                  or           t5, s0, t6
                  bltu         t6, ra, 163f
                  nop
                  nop
                  nop
                  slt          a7, t5, s1
                  srli         a1, s0, 13
                  nop
                  lui          ra, 211384
                  auipc        t4, 775773
                  and          s5, s1, s1
                  add          a6, t6, s0
                  slli         t1, a4, 15
                  add          a4, a7, a1
sub_3_3:          jal          t0, 0f
0:                jal          t1, 1f
1:                jal          t1, 11f
2:                jal          ra, 5f
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          s1, 7f
6:                jal          t1, 12f
7:                jal          ra, 10f
8:                jal          s5, 6b
9:                jal          ra, 4b
10:               jal          a1, 9b
11:               jal          s8, 3b
12:               nop
                  bgeu         tp, sp, 169f
                  addi         a5, t1, -411
                  srai         s3, a5, 8
                  sub          a7, s9, t0
                  bge          zero, t1, 164f
                  beq          s0, s10, 179f
                  sltu         a1, a5, a1
163:              and          a5, sp, tp
164:              lui          t6, 407516
                  sll          zero, t3, s1
                  sub          t6, t6, a4
                  xori         sp, s11, 1482
                  xor          a6, t6, s8
169:              sll          t1, a4, a7
                  addi         ra, s2, 188
                  beq          s9, s1, 188f
                  slli         s3, s11, 3
                  sll          s5, a4, s3
                  slli         t0, tp, 18
                  bne          gp, t3, 177f
                  add          a0, a1, t6
177:              sra          a0, s7, a2
                  auipc        t6, 188597
179:              sltu         a4, sp, t5
                  sra          a6, a0, t6
                  slti         s1, s10, -988
                  sra          t4, zero, a4
                  slt          s5, t6, s9
                  lui          tp, 630042
                  ori          a1, s10, 592
                  bgeu         s1, a5, 201f
                  slti         t2, a6, -1051
188:              sll          s5, s4, a7
                  sll          s6, a0, t6
                  lui          t1, 99656
                  or           t4, a4, a6
                  sll          a6, s2, a5
                  add          s6, ra, a0
                  srl          t0, t3, s0
                  blt          s9, ra, 210f
                  ori          s5, a1, -593
                  lui          a4, 480938
                  sll          s10, a1, a3
                  ori          a1, s11, 1710
                  sltiu        sp, s10, -645
201:              blt          t2, s10, 203f
                  bgeu         a6, t4, 205f
203:              bgeu         t5, a2, 215f
                  sra          t0, t1, tp
205:              srl          gp, s0, s7
                  addi         sp, s3, 1630
                  andi         a2, s2, 424
                  lui          t4, 614997
                  nop
210:              auipc        a6, 270508
                  sra          s7, s10, ra
                  srai         a4, sp, 31
                  xori         t1, t2, -1632
                  bltu         s1, s5, 217f
215:              sub          zero, a5, s4
                  or           sp, s11, ra
217:              srli         a6, tp, 3
                  sub          s5, s5, a6
                  srli         a1, s8, 11
                  srli         s0, t3, 30
                  bge          s5, a6, 236f
                  blt          t3, a1, 227f
                  sra          t4, s5, t1
                  srl          s1, t2, ra
                  xor          s0, s9, zero
                  srai         s8, a4, 11
227:              blt          sp, s9, 244f
                  slti         s0, s0, -1486
                  add          a7, t1, zero
                  slti         a5, a2, 407
                  bgeu         tp, t1, 236f
                  slt          zero, sp, s6
                  bgeu         s7, sp, 243f
                  add          t5, ra, ra
                  bltu         s8, a4, 244f
236:              slti         tp, s7, -830
                  sub          s3, s5, s6
                  bge          a5, tp, 241f
                  auipc        t0, 612487
                  srai         s5, ra, 4
241:              srai         s6, t0, 19
                  sltu         zero, s10, t3
243:              blt          a4, s4, 258f
244:              srl          sp, s1, a1
                  sltiu        s1, s5, 1663
                  srai         t2, s4, 0
                  xori         a1, s6, 1961
                  bgeu         s10, zero, 261f
                  and          s5, s6, a1
                  srai         t1, a3, 11
                  beq          a5, a4, 254f
                  xor          tp, gp, ra
                  and          t2, s9, s11
254:              slti         s9, s2, 62
                  slli         t2, s1, 7
                  lui          s5, 32155
                  andi         s8, a2, -847
258:              srai         s8, t6, 0
                  slti         a5, t4, 695
                  addi         t2, zero, 838
261:              bge          a4, t3, 263f
                  bne          t0, gp, 264f
263:              add          t4, t0, s0
264:              srli         t5, a4, 30
                  and          s3, t6, a7
                  andi         a6, s11, 1449
                  bne          a0, t5, 273f
                  ori          a4, ra, -975
                  sll          a0, tp, s6
                  sltu         t1, t1, s2
                  sra          t6, t3, s10
                  xor          t1, s3, t1
273:              sltiu        s9, a6, -1251
                  bgeu         ra, t3, 276f
                  bltu         t0, s6, 276f
276:              srai         t0, s11, 11
                  srli         a7, a5, 7
                  srl          s11, a5, s1
                  sltiu        a5, sp, 861
                  lw           t0, 4(s2)
                  xori         gp, t5, -1511
                  xor          s0, s11, t4
                  addi         s2, s2, 28
                  ori          a6, s7, 1340
                  slti         s6, s8, -72
                  slti         zero, a3, 960
394:              addi x11, x5, 0
394:              jalr x11, x11, 0
sub_2:            and          s3, sp, t2
                  srai         s6, a5, 21
                  addi         s2, s2, -56
                  and          t6, gp, s10
                  auipc        s5, 55179
                  nop
                  slli         a2, t5, 10
                  auipc        sp, 673324
                  sw           t0, 4(s2)
                  and          t5, s4, s8
                  la           sp, sub_3
                  auipc        s8, 422122
                  sltiu        gp, s1, 473
                  addi         sp, sp, -618
                  auipc        a4, 42946
                  slli         a4, a5, 27
                  lui          s11, 268163
                  or           ra, a4, a4
                  sltu         a0, a3, s11
                  andi         a6, s6, 658
sub_2_j4:         jalr         t0, sp, 619 #jump sub_2 -> sub_3
                  sltu         s6, s6, s11
                  sll          tp, sp, a5
                  addi         t1, t6, -131
                  bne          tp, t4, sub_2_j5 #branch to jump instr
                  nop
                  sub          s9, t6, a5
sub_2_j5:         jal          t0, sub_4 #jump sub_2 -> sub_4
                  nop
                  srl          tp, a5, s2
                  beq          gp, a3, 13f
                  auipc        s7, 410953
                  srl          a1, t6, t0
                  lui          a1, 489943
                  xor          s7, a0, s0
                  srai         tp, t2, 13
                  beq          s2, a3, 13f
                  auipc        a1, 826656
                  xor          sp, t1, s3
                  addi         gp, t2, -2006
                  add          zero, zero, s4
13:               xori         s3, t5, -403
                  lw           t0, 4(s2)
                  srai         s6, a1, 8
                  addi         s2, s2, 56
                  sltu         a1, a0, t3
                  slti         s3, t4, -351
47:               addi x9, x5, 1
47:               jalr x9, x9, 0
sub_1:            bgeu         s0, a2, sub_1_stack_p
                  slli         t4, ra, 11
                  and          zero, s1, a0
                  slli         s3, s4, 8
sub_1_stack_p:    addi         s2, s2, -44
                  srai         t6, s8, 27
                  or           ra, s0, a7
                  sw           t0, 4(s2)
                  andi         t4, s0, -879
                  srai         ra, a2, 5
                  slt          a6, a0, s8
                  and          t4, s2, a2
                  srli         s9, s9, 10
                  sll          a0, t4, s1
                  srli         s8, a5, 10
                  sll          t2, s3, a4
sub_1_j3:         jal          t0, sub_5 #jump sub_1 -> sub_5
sub_1_1:          jal          t0, 9f
0:                jal          tp, 15f
1:                jal          s0, 7f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          ra, 16f
5:                jal          s10, 10f
6:                jal          ra, 13f
7:                jal          t1, 17f
8:                jal          ra, 2b
9:                jal          t1, 3b
10:               jal          ra, 6b
11:               jal          sp, 8b
12:               jal          ra, 11b
13:               jal          ra, 14f
14:               jal          t1, 1b
15:               jal          s8, 12b
16:               jal          sp, 5b
17:               sltiu        a1, s8, -233
sub_1_0:          jal          t0, 2f
0:                jal          ra, 5f
1:                jal          t1, 6f
2:                jal          ra, 8f
3:                jal          tp, 1b
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          ra, 7f
7:                jal          ra, 0b
8:                jal          t1, 4b
9:                jal          gp, 3b
10:               sra          a5, s11, a3
                  addi         gp, s3, 627
                  andi         zero, s1, -1356
                  bne          s3, t0, 20f
                  bltu         a3, s5, 15f
                  or           t2, t1, t6
                  sltiu        a3, s9, -1977
                  bgeu         s6, tp, 26f
                  lui          t4, 958029
                  ori          a7, s5, -1246
                  ori          s0, t2, 6
                  auipc        s10, 957025
                  ori          tp, a3, -1247
                  sltiu        zero, s1, 366
                  sltiu        ra, t4, 1125
                  slti         a1, a3, 402
15:               ori          s1, s6, -2020
                  lui          a4, 264662
                  xori         a4, a1, 730
                  andi         a2, t4, 659
                  sll          s3, t2, s3
20:               blt          a7, s2, 39f
                  blt          a6, t1, 38f
                  bne          zero, sp, 37f
                  slli         zero, s3, 13
                  slti         t0, t1, -1515
                  blt          s1, a0, 29f
26:               add          s1, a5, gp
                  slti         t2, t6, 131
                  bltu         s9, s9, 45f
29:               bne          a6, a4, 34f
                  andi         a7, a1, 1956
                  sll          s5, a4, s9
                  slti         s5, s10, -772
                  and          sp, s9, t2
34:               bne          sp, a1, 43f
                  bgeu         t1, a0, 50f
                  beq          a7, t2, 46f
37:               bgeu         s8, t3, 49f
38:               nop
39:               auipc        t6, 856255
                  bgeu         s11, s0, 52f
                  xori         tp, tp, -561
                  andi         a2, s5, -130
43:               auipc        a6, 604247
                  auipc        zero, 330050
45:               bne          a7, s11, 59f
46:               nop
                  or           zero, tp, s4
                  ori          t5, t5, -1684
49:               and          a0, t2, a3
50:               ori          s9, zero, 791
                  slt          s11, s6, a1
52:               blt          t1, s8, 65f
                  addi         t5, t3, -1928
                  bne          s4, s10, 55f
55:               auipc        a3, 137769
                  slli         a7, t1, 29
                  bgeu         s10, zero, 67f
                  sll          s7, a7, s10
59:               sltiu        a2, s0, 792
                  lui          sp, 146212
                  auipc        s6, 874683
                  srl          gp, t1, t4
                  sltu         a6, a6, s5
                  srai         s5, s2, 20
65:               srai         s1, t5, 1
                  sll          s6, t2, a1
67:               slt          a3, s10, s9
                  srai         a6, a1, 29
                  andi         a3, s5, 1210
                  or           s9, s7, s9
                  xori         t5, a4, -687
                  sra          s8, a5, a0
                  nop
                  sub          s1, t0, s11
                  sra          t0, s11, s6
                  sub          s8, a2, gp
                  sltu         t0, a2, s7
                  slti         a5, t0, 548
                  bge          a4, s5, 95f
                  srai         sp, s1, 4
                  andi         s11, a7, -1286
                  sltiu        ra, ra, -50
                  xori         a2, a5, 707
                  sltiu        s10, t1, 549
                  addi         s6, t3, 1555
                  beq          a2, s5, 97f
                  lui          t5, 82461
                  xori         sp, a5, -1458
                  bne          t5, t6, 92f
                  sltiu        a7, s9, 2038
                  bne          zero, s6, 96f
92:               sltu         ra, a1, t3
                  slt          t4, s9, s7
                  sltu         a2, s10, s2
95:               sra          a6, t4, t4
96:               sra          s5, s8, a4
97:               or           s7, a3, t3
                  and          a5, s5, s3
                  and          s5, t3, a2
                  nop
                  lui          s0, 932550
                  bge          s8, t5, 115f
                  addi         a1, gp, 1416
                  xor          a6, a3, t4
                  and          ra, t2, t3
                  xor          s8, s7, s10
                  bgeu         s6, s6, 115f
                  srli         a4, tp, 30
                  bltu         gp, t2, 115f
                  xori         s9, s2, 2046
                  bltu         a0, zero, 115f
                  auipc        sp, 27006
                  beq          s5, t1, 115f
                  slti         zero, gp, -699
115:              nop
                  xor          t5, ra, t0
                  xor          a6, s1, sp
                  sra          zero, t0, tp
                  lw           t0, 4(s2)
                  add          zero, gp, gp
                  addi         s2, s2, 44
                  srli         t1, a5, 31
                  sra          t2, s5, t1
                  sub          tp, zero, s5
                  sltu         a0, a1, t1
                  xor          a0, s8, s5
                  slti         a2, t4, -758
176:              addi x24, x5, 0
176:              jalr x24, x24, 0
sub_5:            sltiu        a1, a6, -626
                  and          s9, tp, t0
                  bgeu         s3, s2, sub_5_stack_p
                  sub          a6, a3, zero
                  ori          s1, s10, -1224
sub_5_stack_p:    addi         s2, s2, -32
                  xor          s3, sp, a4
                  slli         t1, a5, 24
                  sw           t0, 4(s2)
                  sltiu        a4, t1, -671
sub_5_0:          jal          t0, 1f
0:                jal          s11, 27f
1:                jal          ra, 17f
2:                jal          ra, 12f
3:                jal          ra, 8f
4:                jal          tp, 2b
5:                jal          t1, 19f
6:                jal          a3, 0b
7:                jal          ra, 20f
8:                jal          s9, 16f
9:                jal          ra, 4b
10:               jal          a2, 15f
11:               jal          ra, 18f
12:               jal          a6, 13f
13:               jal          gp, 3b
14:               jal          ra, 25f
15:               jal          a1, 28f
16:               jal          ra, 26f
17:               jal          s10, 5b
18:               jal          ra, 7b
19:               jal          a1, 22f
20:               jal          ra, 9b
21:               jal          ra, 23f
22:               jal          a3, 10b
23:               jal          ra, 6b
24:               jal          s9, 14b
25:               jal          t1, 29f
26:               jal          sp, 24b
27:               jal          sp, 11b
28:               jal          ra, 21b
29:               sltu         s0, sp, a0
sub_5_1:          jal          t0, 4f
0:                jal          ra, 10f
1:                jal          t1, 2f
2:                jal          t2, 7f
3:                jal          ra, 5f
4:                jal          t2, 9f
5:                jal          a4, 1b
6:                jal          ra, 0b
7:                jal          t1, 6b
8:                jal          t1, 11f
9:                jal          t1, 3b
10:               jal          ra, 8b
11:               xori         t1, t1, 549
sub_5_2:          jal          t0, 4f
0:                jal          ra, 7f
1:                jal          ra, 12f
2:                jal          t1, 6f
3:                jal          t6, 2b
4:                jal          t1, 5f
5:                jal          t1, 9f
6:                jal          sp, 11f
7:                jal          t4, 8f
8:                jal          ra, 3b
9:                jal          a7, 1b
10:               jal          s7, 0b
11:               jal          s6, 13f
12:               jal          tp, 10b
13:               nop
                  addi         tp, t5, -1362
                  xori         t4, t0, 1918
                  slt          tp, a0, sp
                  sll          s1, zero, s5
                  addi         t4, s1, -112
                  srli         s0, s8, 22
                  bltu         s11, zero, 14f
                  sltiu        sp, a5, 396
                  and          zero, s7, tp
                  srai         s8, t0, 6
                  srai         a5, s1, 7
                  bge          ra, s9, 16f
                  slli         s8, a7, 1
                  bne          a4, sp, 32f
14:               or           s1, a5, a7
                  srai         s11, s7, 9
16:               xori         a1, s1, -110
                  add          s1, a0, gp
                  and          gp, sp, s8
                  bge          a7, a6, 38f
                  xori         a1, a4, -954
                  add          t1, s3, zero
                  nop
                  and          t2, t2, s3
                  addi         s1, t1, -101
                  bne          a1, s10, 32f
                  srl          s9, sp, a3
                  sra          gp, s7, gp
                  addi         a1, a0, 1188
                  srli         s0, s8, 3
                  bne          t2, t0, 48f
                  blt          s11, a3, 39f
32:               addi         gp, a7, -164
                  blt          a0, a2, 53f
                  blt          s4, s10, 54f
                  andi         a0, s1, 759
                  and          zero, s10, t3
                  slli         sp, tp, 18
38:               sltu         t5, t1, s11
39:               nop
                  srli         t4, t1, 26
                  add          a6, gp, a6
                  xor          t2, t3, a3
                  slt          s7, s2, s9
                  xor          a7, a6, t1
                  slti         a7, s7, -492
                  srli         t6, t4, 18
                  slti         s7, a4, 69
48:               slt          s6, t5, zero
                  srli         t6, s6, 2
                  sltu         s9, s10, s2
                  bgeu         gp, a5, 65f
                  sltiu        a7, t3, 2022
53:               sra          s9, s9, s3
54:               andi         a3, s3, 792
                  bgeu         t1, s0, 65f
                  auipc        a4, 84104
                  bgeu         t4, a2, 63f
                  srai         s5, s2, 0
                  srli         t1, a4, 25
                  slli         a2, sp, 12
                  addi         gp, gp, 1961
                  xor          t2, s2, s7
63:               sll          a3, a0, a5
                  slti         s8, tp, 1781
65:               bge          s7, zero, 77f
                  sltiu        s8, a5, -1734
                  blt          a7, s0, 73f
                  bge          tp, a5, 87f
                  ori          s6, a4, 1381
                  xor          s10, s6, s1
                  nop
                  ori          t1, a7, -1788
73:               bge          zero, s9, 75f
                  ori          s0, s9, 1924
75:               add          s9, t4, a7
                  and          a5, a7, s1
77:               or           t0, a7, zero
                  slti         s1, s1, 1213
                  slli         a6, s2, 20
                  slli         gp, sp, 10
                  srl          zero, a0, s11
                  sltiu        a3, a4, 1063
                  xori         a2, s7, -1430
                  add          a2, t3, a5
                  srl          a6, a7, s7
                  sub          a3, gp, s6
87:               sra          a6, s8, t5
                  sll          ra, s5, t6
                  xori         a7, s6, -2017
                  auipc        s1, 269310
                  xor          tp, s11, a4
                  andi         a5, a7, 264
                  srli         a2, a2, 13
                  nop
                  srli         ra, a6, 25
                  xori         a0, s1, -1525
                  bgeu         s8, t1, 102f
                  sll          t5, a6, a2
                  beq          t1, gp, 110f
                  sltu         s1, t4, a5
                  slti         s7, s0, -732
102:              bge          s5, t0, 118f
                  bgeu         a1, s9, 114f
                  bge          s6, tp, 115f
                  srli         a7, a4, 12
                  sub          a4, s5, s10
                  bne          s0, t4, 117f
                  slti         gp, t3, -1375
                  ori          t1, t1, 1156
110:              sltu         a7, s3, t3
                  sub          a4, s5, a1
                  auipc        s8, 464778
                  xori         t5, s6, -425
114:              or           s6, t6, s5
115:              nop
                  xori         a6, t5, 113
117:              and          a5, t0, gp
118:              ori          t2, t1, 1693
                  andi         t0, tp, -423
                  xor          a1, t3, s11
                  sll          t0, ra, ra
                  sra          s8, a5, a5
                  bne          t4, s9, 126f
                  srl          tp, s6, s11
                  addi         a4, a5, 1007
126:              slt          s11, a6, s11
                  addi         sp, a6, 1124
                  nop
                  bgeu         t6, a6, 132f
                  bne          t0, s3, 131f
131:              nop
132:              or           s3, s10, s11
                  sltiu        t6, tp, 1049
                  and          t1, gp, s6
                  addi         sp, a3, 1554
                  srl          s3, ra, t1
                  srli         t5, s7, 1
                  bne          s0, t2, 151f
                  xori         zero, t6, 565
                  slt          sp, s5, s8
                  and          t6, s0, t2
                  sub          a0, s0, a1
                  srl          sp, a5, gp
                  ori          a5, t6, -853
                  or           a2, a0, a7
                  sra          t5, s7, s3
                  xori         a5, a1, 1762
                  sltu         s11, ra, s0
                  addi         a0, s0, -1724
                  srli         s6, a7, 0
151:              sltu         s5, s3, gp
                  sltu         s8, s0, s1
                  sll          s11, t5, a7
                  bge          s11, t4, 165f
                  slli         t6, t1, 30
                  addi         s0, sp, 1463
                  slt          s7, a0, zero
                  bne          s7, s10, 171f
                  sub          s9, t6, s7
                  lui          a1, 143032
                  srl          s9, a0, t5
                  xori         t2, s2, 1944
                  srai         t0, gp, 4
                  sltiu        t5, s3, -266
165:              beq          a7, t4, 171f
                  slti         tp, t4, 1047
                  blt          ra, t0, 171f
                  slti         a5, gp, 224
                  nop
                  sub          a7, sp, s1
171:              sltu         s1, zero, s0
                  lw           t0, 4(s2)
                  and          s11, s2, t3
                  nop
                  slt          s3, s10, t3
                  sll          a1, s6, s2
                  slti         a7, t6, 1737
                  addi         s2, s2, 32
                  sra          s3, s8, t2
                  slli         s5, t4, 14
250:              addi x31, x5, 0
250:              jalr x31, x31, 0
sub_4:            bne          a1, s2, sub_4_stack_p
                  and          s0, s5, s8
                  srli         ra, s6, 11
sub_4_stack_p:    addi         s2, s2, -20
                  andi         s9, t0, 1491
                  srl          s0, s7, sp
                  andi         a7, t4, 156
                  and          a4, s0, s10
                  sltu         t4, s1, a1
                  auipc        a0, 863623
                  sltu         t2, s4, a3
                  sw           t0, 4(s2)
                  slli         s5, s7, 12
sub_4_7:          jal          t0, 7f
0:                jal          s0, 10f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          t1, 8f
4:                jal          ra, 2b
5:                jal          t5, 4b
6:                jal          ra, 0b
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          sp, 6b
10:               ori          a7, t0, 437
sub_4_3:          jal          t0, 16f
0:                jal          tp, 20f
1:                jal          ra, 13f
2:                jal          ra, 14f
3:                jal          s10, 18f
4:                jal          ra, 19f
5:                jal          t6, 6f
6:                jal          a4, 12f
7:                jal          ra, 1b
8:                jal          ra, 21f
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          sp, 2b
13:               jal          ra, 8b
14:               jal          ra, 4b
15:               jal          s7, 11b
16:               jal          ra, 3b
17:               jal          s10, 15b
18:               jal          ra, 5b
19:               jal          t1, 17b
20:               jal          t1, 9b
21:               srli         s11, t4, 27
sub_4_14:         jal          t0, 19f
0:                jal          ra, 2f
1:                jal          t2, 17f
2:                jal          t1, 3f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          ra, 18f
6:                jal          ra, 1b
7:                jal          ra, 8f
8:                jal          a0, 10f
9:                jal          tp, 5b
10:               jal          ra, 13f
11:               jal          ra, 16f
12:               jal          ra, 7b
13:               jal          s7, 15f
14:               jal          ra, 20f
15:               jal          t1, 14b
16:               jal          ra, 4b
17:               jal          ra, 12b
18:               jal          a6, 0b
19:               jal          ra, 9b
20:               srli         s0, zero, 2
sub_4_8:          jal          t0, 6f
0:                jal          t1, 10f
1:                jal          s11, 0b
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          t1, 8f
6:                jal          t1, 4b
7:                jal          t1, 9f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               lui          s0, 183551
sub_4_0:          jal          t0, 9f
0:                jal          t6, 6f
1:                jal          ra, 8f
2:                jal          a6, 21f
3:                jal          ra, 18f
4:                jal          ra, 0b
5:                jal          a0, 14f
6:                jal          ra, 1b
7:                jal          ra, 2b
8:                jal          ra, 19f
9:                jal          tp, 15f
10:               jal          ra, 20f
11:               jal          s8, 10b
12:               jal          ra, 3b
13:               jal          a7, 12b
14:               jal          ra, 17f
15:               jal          sp, 11b
16:               jal          ra, 4b
17:               jal          ra, 16b
18:               jal          tp, 7b
19:               jal          t1, 13b
20:               jal          ra, 5b
21:               sub          tp, zero, t4
sub_4_10:         jal          t0, 7f
0:                jal          s10, 5f
1:                jal          t1, 22f
2:                jal          a5, 13f
3:                jal          ra, 20f
4:                jal          s10, 26f
5:                jal          ra, 21f
6:                jal          ra, 23f
7:                jal          ra, 25f
8:                jal          ra, 17f
9:                jal          ra, 3b
10:               jal          s6, 11f
11:               jal          ra, 12f
12:               jal          t1, 16f
13:               jal          ra, 28f
14:               jal          ra, 9b
15:               jal          ra, 2b
16:               jal          ra, 8b
17:               jal          ra, 6b
18:               jal          ra, 14b
19:               jal          ra, 27f
20:               jal          ra, 10b
21:               jal          ra, 4b
22:               jal          t4, 19b
23:               jal          ra, 15b
24:               jal          ra, 18b
25:               jal          t5, 1b
26:               jal          a1, 24b
27:               jal          ra, 0b
28:               slt          s1, s9, t3
sub_4_9:          jal          t0, 5f
0:                jal          t4, 8f
1:                jal          t1, 7f
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          sp, 11f
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          s1, 0b
11:               srai         t6, zero, 8
sub_4_12:         jal          t0, 10f
0:                jal          ra, 1f
1:                jal          ra, 5f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          gp, 11f
5:                jal          ra, 12f
6:                jal          s10, 9f
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          ra, 7b
10:               jal          ra, 6b
11:               jal          ra, 0b
12:               ori          t6, t0, -1662
sub_4_16:         jal          t0, 19f
0:                jal          ra, 24f
1:                jal          s8, 15f
2:                jal          ra, 28f
3:                jal          t1, 16f
4:                jal          t4, 13f
5:                jal          t1, 3b
6:                jal          ra, 5b
7:                jal          ra, 25f
8:                jal          ra, 29f
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               jal          s8, 0b
12:               jal          a2, 11b
13:               jal          t1, 8b
14:               jal          ra, 2b
15:               jal          ra, 4b
16:               jal          ra, 17f
17:               jal          ra, 21f
18:               jal          t1, 7b
19:               jal          s7, 20f
20:               jal          t1, 23f
21:               jal          s3, 18b
22:               jal          t1, 6b
23:               jal          ra, 14b
24:               jal          ra, 22b
25:               jal          t0, 26f
26:               jal          ra, 9b
27:               jal          t1, 12b
28:               jal          t1, 27b
29:               or           a5, s1, sp
sub_4_6:          jal          t0, 14f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          t1, 20f
3:                jal          ra, 11f
4:                jal          ra, 18f
5:                jal          ra, 6f
6:                jal          ra, 25f
7:                jal          ra, 16f
8:                jal          t1, 21f
9:                jal          t1, 24f
10:               jal          ra, 26f
11:               jal          ra, 10b
12:               jal          t0, 3b
13:               jal          ra, 8b
14:               jal          gp, 1b
15:               jal          t1, 12b
16:               jal          ra, 0b
17:               jal          t1, 23f
18:               jal          s5, 27f
19:               jal          gp, 17b
20:               jal          t1, 5b
21:               jal          a3, 19b
22:               jal          ra, 4b
23:               jal          ra, 22b
24:               jal          ra, 7b
25:               jal          t0, 13b
26:               jal          ra, 9b
27:               lui          a5, 231799
sub_4_15:         jal          t0, 22f
0:                jal          tp, 14f
1:                jal          t1, 2f
2:                jal          ra, 8f
3:                jal          t1, 9f
4:                jal          t1, 23f
5:                jal          t1, 1b
6:                jal          t1, 11f
7:                jal          ra, 15f
8:                jal          ra, 17f
9:                jal          ra, 13f
10:               jal          ra, 25f
11:               jal          t1, 0b
12:               jal          tp, 10b
13:               jal          ra, 4b
14:               jal          ra, 19f
15:               jal          ra, 12b
16:               jal          t1, 26f
17:               jal          ra, 24f
18:               jal          a2, 3b
19:               jal          a4, 5b
20:               jal          ra, 21f
21:               jal          t1, 18b
22:               jal          s1, 20b
23:               jal          ra, 7b
24:               jal          ra, 16b
25:               jal          s9, 6b
26:               andi         a4, a2, -1737
sub_4_13:         jal          t0, 14f
0:                jal          ra, 16f
1:                jal          ra, 6f
2:                jal          a0, 20f
3:                jal          sp, 28f
4:                jal          s6, 13f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          a0, 8b
11:               jal          t0, 26f
12:               jal          ra, 2b
13:               jal          ra, 25f
14:               jal          t5, 15f
15:               jal          s8, 23f
16:               jal          t6, 18f
17:               jal          ra, 22f
18:               jal          s7, 12b
19:               jal          t1, 21f
20:               jal          ra, 19b
21:               jal          ra, 11b
22:               jal          ra, 10b
23:               jal          t0, 5b
24:               jal          ra, 0b
25:               jal          ra, 27f
26:               jal          ra, 9b
27:               jal          ra, 24b
28:               xori         s5, s0, -1658
sub_4_4:          jal          t0, 16f
0:                jal          t1, 5f
1:                jal          ra, 4f
2:                jal          sp, 6f
3:                jal          t1, 13f
4:                jal          t5, 2b
5:                jal          t2, 14f
6:                jal          s11, 10f
7:                jal          ra, 8f
8:                jal          a5, 15f
9:                jal          sp, 17f
10:               jal          a7, 11f
11:               jal          ra, 7b
12:               jal          ra, 9b
13:               jal          t6, 1b
14:               jal          ra, 12b
15:               jal          ra, 18f
16:               jal          ra, 0b
17:               jal          t1, 3b
18:               jal          t1, 19f
19:               or           t2, s7, tp
                  lui          s8, 695992
                  slt          ra, sp, a6
                  slt          s1, ra, s5
                  slti         s5, s4, 1517
                  sltu         a5, t0, t5
                  bge          s4, t0, 14f
                  or           t6, t6, a2
                  ori          a7, a4, 593
                  xor          a0, t4, a1
                  sub          s7, s10, s1
                  slli         t0, ra, 23
                  blt          t5, tp, 26f
                  slt          s11, zero, a2
                  or           sp, a7, a6
14:               srai         s1, ra, 20
                  sltu         a5, a4, t5
                  beq          t2, tp, 18f
                  addi         s0, a3, -1783
18:               bge          s10, s0, 19f
19:               sra          sp, s0, s8
                  srli         s10, t2, 2
                  xori         s7, a3, 1438
                  bge          s6, t4, 37f
                  beq          t0, t1, 29f
                  bltu         s10, ra, 34f
                  addi         a1, s2, 608
26:               srli         zero, s7, 25
                  sltu         a6, s2, s4
                  slt          gp, s1, gp
29:               sra          t5, a0, t2
                  nop
                  and          a3, a4, s4
                  bge          a7, t6, 37f
                  sltiu        gp, t2, -1035
34:               srai         sp, s9, 17
                  sltu         s10, a4, a6
                  xor          a5, s1, a0
37:               add          s7, sp, s10
                  bgeu         a1, sp, 45f
sub_4_1:          jal          t0, 7f
0:                jal          t0, 1f
1:                jal          ra, 10f
2:                jal          tp, 5f
3:                jal          ra, 16f
4:                jal          ra, 14f
5:                jal          t6, 3b
6:                jal          a0, 15f
7:                jal          s0, 11f
8:                jal          ra, 6b
9:                jal          t1, 4b
10:               jal          ra, 12f
11:               jal          ra, 13f
12:               jal          t1, 8b
13:               jal          a3, 9b
14:               jal          t4, 0b
15:               jal          sp, 2b
16:               slli         a0, s1, 0
                  slti         a2, a1, -915
                  sll          s6, s9, s6
                  slti         a3, t6, -405
                  srl          a4, zero, t5
                  slt          a3, a7, t6
                  and          a3, a4, a5
45:               sll          t4, s1, a6
                  ori          zero, s1, 1478
                  andi         a7, s4, 1585
                  nop
                  auipc        gp, 827083
                  bne          t0, a4, 51f
51:               nop
                  lui          s8, 229642
                  sltu         a1, ra, s6
                  ori          t4, s1, -1372
                  ori          s0, a1, 1231
                  srl          t5, a2, a7
                  add          sp, ra, zero
                  and          s1, a4, a5
                  lui          ra, 53361
                  sltiu        t0, t6, 284
                  and          ra, s6, a4
                  sra          t5, t3, s2
                  xor          a1, t6, s11
                  bne          s11, s3, 70f
                  bne          a5, t0, 70f
                  srl          s6, s4, s7
                  sltiu        a0, s5, -31
                  or           s7, a4, t0
                  xori         a4, s3, 635
70:               bne          a5, ra, 74f
                  slt          a7, sp, a7
                  srli         sp, tp, 1
                  sra          t6, t0, s9
74:               lui          gp, 472125
                  sll          s8, a2, t2
                  lui          s3, 757724
                  slt          s11, ra, s1
                  or           zero, a2, sp
                  xori         t4, t6, 1235
                  srl          zero, s5, a3
                  slli         a2, a5, 14
                  auipc        a1, 108609
                  or           tp, s6, t1
                  slti         t2, s10, 1517
                  xori         a3, s5, -733
                  addi         t6, ra, -889
                  beq          ra, t1, 102f
                  ori          s9, a6, -1978
                  sltiu        a4, s5, 252
                  slti         t2, ra, 489
                  and          sp, a1, t2
                  bne          s2, sp, 111f
                  andi         a2, a1, -295
                  xor          a0, t6, s10
                  slt          t4, a1, t5
sub_4_11:         jal          t0, 5f
0:                jal          t1, 7f
1:                jal          t2, 23f
2:                jal          tp, 13f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          s7, 17f
6:                jal          ra, 20f
7:                jal          ra, 18f
8:                jal          t1, 19f
9:                jal          ra, 22f
10:               jal          s5, 21f
11:               jal          t1, 8b
12:               jal          ra, 14f
13:               jal          ra, 1b
14:               jal          t1, 3b
15:               jal          t1, 16f
16:               jal          t1, 12b
17:               jal          sp, 4b
18:               jal          ra, 15b
19:               jal          t1, 0b
20:               jal          ra, 10b
21:               jal          t1, 9b
22:               jal          ra, 11b
23:               sll          sp, zero, s10
                  srai         s0, tp, 28
                  sra          s0, s1, a3
                  nop
                  srli         tp, s2, 7
                  slt          a4, t1, t6
                  xor          s10, s10, s5
102:              sltu         a0, t4, s1
                  slli         t1, zero, 14
                  addi         s8, a3, 1247
                  sra          gp, t1, s0
                  srli         zero, a2, 24
                  beq          t1, a1, 116f
                  or           s8, a3, s4
                  beq          s5, sp, 119f
                  bgeu         s8, t2, 125f
111:              slti         t4, t2, -138
                  sll          a6, gp, s0
                  sra          s10, s9, s2
                  or           s9, t4, s8
                  sltiu        gp, a4, 371
116:              xori         s6, t4, -1372
                  sub          s3, s5, s2
                  srl          gp, a3, a7
119:              srai         t6, t5, 24
                  nop
                  sll          a6, t3, s4
                  andi         a6, a1, -585
                  slli         s3, s11, 14
                  nop
125:              blt          s6, gp, 137f
sub_4_2:          jal          t0, 1f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          gp, 3f
3:                jal          a2, 9f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          ra, 6b
8:                jal          t1, 5b
9:                jal          t1, 7b
10:               jal          s7, 0b
11:               srai         t5, s8, 5
                  sub          s9, a5, t4
                  srai         s7, a7, 23
                  beq          s0, t3, 134f
                  ori          s10, a2, 561
                  and          t6, t0, t2
                  slt          a6, a1, t5
                  bne          s6, t1, 142f
                  addi         ra, s7, -243
134:              xor          s5, s3, a2
                  srli         s1, tp, 24
                  add          s0, s7, s0
137:              beq          s3, gp, 152f
                  add          a4, s4, zero
                  sll          s1, a3, t2
                  sltu         s6, t3, sp
                  slli         a3, a4, 1
142:              sll          s3, sp, s7
                  slt          tp, s1, s0
                  xor          a4, a4, sp
                  or           sp, t6, s3
                  or           t5, sp, s8
                  sltu         a1, gp, s2
                  add          s9, t2, a3
                  andi         tp, s8, -1090
                  slli         t5, s9, 15
                  sltu         ra, s4, gp
152:              bltu         a4, s5, 159f
                  sub          t0, a3, s4
                  sll          a0, a6, s8
                  srl          s8, s5, a6
                  blt          s2, t0, 173f
                  sra          gp, t1, s9
                  ori          t0, ra, 349
159:              slti         t1, gp, -1906
                  xor          t4, s2, s4
                  bne          a5, tp, 174f
                  lui          a4, 336018
                  sltiu        tp, t5, -1697
                  xori         gp, t1, -185
                  bltu         s7, s6, 167f
                  addi         a1, s4, 954
167:              slli         a5, t4, 23
                  bne          a2, zero, 180f
                  sltu         s10, t0, t1
                  sll          s8, a1, t4
                  add          a5, s4, t3
                  xori         s5, a7, 525
173:              slti         a1, s7, -1087
174:              beq          t2, a2, 175f
175:              ori          zero, s6, -1041
                  sltu         s10, s6, s4
                  add          s11, s9, t0
                  sltu         s5, s5, s6
                  srli         s3, s9, 17
180:              addi         t0, t1, 1429
                  srl          t1, tp, zero
                  beq          a6, t1, 188f
                  sltiu        s0, a0, 1481
                  slli         a2, a7, 21
                  ori          s7, t2, 1470
                  sll          a2, s8, s0
                  andi         s3, s9, -693
188:              sub          gp, gp, t4
                  srl          zero, t1, gp
                  or           s0, s1, s5
                  addi         s5, ra, 674
                  beq          t2, t5, 198f
                  bge          t6, s6, 202f
                  lui          t2, 626707
                  nop
                  nop
                  sra          gp, tp, s1
198:              beq          s5, t3, 215f
                  bge          s0, a4, 205f
                  addi         t0, sp, 1109
                  or           s10, t2, sp
202:              slti         s6, t4, 594
                  bne          a0, t2, 213f
                  sra          t4, a5, s11
205:              and          s1, s4, s1
                  nop
                  sltu         s8, t4, s4
                  sltiu        a2, t1, 2005
                  nop
                  sll          a7, t3, gp
                  or           s0, a0, s4
                  bge          s0, t3, 218f
213:              sltiu        a2, s7, -1180
                  sltiu        a2, s1, 1384
215:              ori          t0, s6, 273
                  or           ra, s6, t6
                  sltiu        s11, s10, -1848
218:              nop
                  bne          s0, zero, 224f
                  andi         a4, sp, 1731
                  slti         a1, t3, 970
                  andi         sp, a2, -1979
                  slt          a6, t6, a5
224:              bgeu         t1, t1, 234f
                  slt          t2, t2, a1
                  bne          s9, s9, 241f
                  sltiu        zero, gp, -1394
                  slt          ra, s2, tp
                  bltu         a2, a4, 235f
                  nop
                  sltiu        a3, s1, 1060
                  bltu         a5, s6, 238f
                  slt          s9, a4, a1
234:              add          a1, s1, s5
235:              and          s9, t1, s6
                  ori          s0, sp, -1302
                  srl          t6, a6, a5
238:              srl          sp, s1, s0
                  sra          gp, s11, zero
                  lui          s5, 682420
241:              bgeu         s1, s8, 248f
                  bgeu         t6, s2, 257f
                  srl          s7, ra, t3
                  bgeu         t3, a6, 256f
                  beq          tp, t3, 264f
                  sltu         a0, s0, t1
                  xori         a7, s11, 1537
248:              or           s11, t1, tp
                  addi         gp, a1, -180
                  sltu         s5, t4, s3
                  slti         s3, t4, -1581
                  auipc        a6, 77485
                  addi         t6, zero, -1018
                  beq          s7, t0, 261f
                  add          gp, s2, s6
256:              sltu         t2, a5, a6
257:              sll          a2, s5, t0
                  xori         a0, t2, -923
                  sra          t2, a4, t6
                  xor          t4, t4, a4
261:              ori          a3, s5, 5
                  beq          s2, a3, 263f
263:              and          s7, t6, zero
264:              bne          t0, s2, 270f
                  xor          s3, a5, s4
                  beq          a0, t6, 267f
267:              addi         zero, a0, 1178
                  and          a7, zero, s4
                  slli         s0, s8, 15
270:              nop
                  srli         a4, s2, 29
                  bge          a7, t2, 284f
                  beq          t5, t0, 277f
                  bge          tp, ra, 287f
                  blt          s2, a3, 276f
276:              slt          t1, a4, gp
277:              slt          a3, s3, t1
                  slli         t2, zero, 24
                  sub          s11, a4, s6
                  bgeu         s6, s9, 285f
                  slt          t6, t1, t3
                  lui          sp, 121007
                  srli         t6, gp, 30
284:              blt          t2, t4, 299f
285:              or           t2, a5, s9
                  xori         s8, s5, -972
287:              sub          a4, a5, t3
                  nop
                  ori          s11, t1, -588
                  add          a1, s0, a7
                  bne          s11, s1, 293f
                  sub          a3, a3, t6
293:              bge          tp, s5, 308f
                  sltiu        zero, tp, -394
                  sltiu        s7, tp, 128
                  sll          t4, t4, t0
                  blt          s3, s1, 299f
                  sra          sp, a1, s7
299:              auipc        s1, 616481
                  bne          s4, s7, 310f
                  ori          a1, a6, 1023
                  slti         sp, t3, 396
                  sltiu        s0, a7, -583
                  add          a3, a7, t1
                  sltiu        t2, s6, 1107
                  sll          t0, gp, sp
                  xor          a7, s0, t4
308:              srl          s11, tp, a6
                  sub          s6, s1, a4
310:              bge          gp, s7, 325f
                  sra          a1, t1, a1
                  sub          a3, s10, t2
                  and          gp, s0, a4
                  andi         sp, a0, 665
                  beq          s9, sp, 324f
                  sll          zero, t0, t1
                  add          gp, s4, gp
                  slli         t1, s9, 14
                  srai         a3, s9, 4
                  slt          ra, a5, s3
                  srai         t4, s10, 19
                  srl          s10, t5, a7
                  bne          t3, a5, 340f
324:              ori          t6, s0, 340
325:              lui          s0, 72564
                  sltu         s8, a3, a7
                  and          t6, a7, s6
                  srai         s0, s5, 13
                  bltu         gp, a3, 330f
330:              addi         s10, tp, -1861
                  slli         a6, s10, 12
                  andi         sp, s2, -341
                  slt          a6, s5, s4
                  or           zero, s7, a4
                  slli         a5, ra, 27
                  bne          s11, t6, 342f
                  addi         a5, a0, 1463
                  add          s6, s10, t5
                  xor          t0, tp, s5
340:              bgeu         zero, s2, 341f
341:              sltu         a1, s2, t1
342:              sll          zero, sp, zero
                  slli         a7, s10, 23
                  bge          zero, t6, 351f
                  srli         s1, zero, 0
                  slli         s1, a7, 9
                  bne          a5, a3, 357f
                  sltiu        s3, s1, 1817
                  andi         a3, a3, -1431
                  sub          a5, sp, s3
351:              ori          sp, s4, -339
                  sra          a0, a4, s2
                  slti         tp, t0, 484
                  sub          s5, tp, s10
                  andi         a6, s11, 1880
                  lui          a3, 222327
357:              bne          s3, s8, 376f
                  sub          tp, t5, a1
                  bne          a4, s5, 374f
                  add          a1, gp, s11
                  slt          t0, tp, s3
                  bge          a5, a4, 367f
                  blt          zero, s3, 373f
                  srl          s10, s2, zero
                  beq          t6, s2, 380f
                  sltiu        s9, a0, 885
367:              or           ra, a6, t2
                  bne          sp, t0, 374f
                  slti         a6, s2, 210
                  sltiu        a2, t3, -1747
                  bne          s3, s9, 375f
                  xori         t2, a1, 1510
373:              sltu         zero, s1, s9
374:              bge          a5, s8, 384f
375:              nop
376:              slli         t0, t5, 27
                  slti         s8, s5, 719
                  sll          ra, s7, t0
                  andi         s6, s9, -2000
380:              srl          s0, a0, s10
                  and          s3, s11, a5
                  srl          t2, s4, gp
                  bltu         s8, sp, 389f
384:              beq          a2, a3, 397f
                  sll          zero, t1, t1
                  slli         gp, a6, 29
                  blt          a1, sp, 402f
                  sll          s1, a1, a2
389:              ori          t5, s4, 450
                  ori          s0, s2, 939
                  and          s11, gp, s10
                  auipc        t0, 536789
                  xor          s6, s11, s2
                  and          a4, a7, t4
                  nop
                  bgeu         s2, tp, 402f
397:              nop
                  xor          t2, s2, s0
                  xori         s0, t3, 182
                  srai         s7, s5, 11
                  blt          a0, zero, 407f
402:              lui          t1, 828223
                  addi         s8, s7, 486
                  sra          zero, a0, a7
                  nop
                  slti         a6, a0, 527
407:              blt          s10, t2, 409f
                  lui          t4, 173252
409:              auipc        t4, 14011
                  xor          s10, s7, tp
                  bne          t5, t6, 423f
                  nop
                  beq          s0, t6, 428f
                  slti         zero, s0, 746
                  sltu         tp, s0, ra
                  lui          a3, 194921
                  and          a0, a2, a5
                  sltiu        s0, ra, 729
                  bge          s6, s10, 421f
                  bgeu         a3, t2, 429f
421:              ori          s8, s8, 983
                  nop
423:              srli         a1, tp, 23
                  bltu         s3, a5, 425f
425:              bge          s8, zero, 432f
                  blt          s1, a0, 438f
                  xor          t4, a7, s9
428:              xor          a2, t5, t4
429:              srli         t0, tp, 30
                  nop
                  sll          s0, a5, t2
432:              blt          a1, t5, 437f
                  or           a7, zero, a2
                  or           t4, s9, s6
                  nop
                  or           s5, t1, s1
437:              sltu         t5, t3, t4
438:              sll          t0, sp, s10
                  ori          a2, s9, 1572
                  bltu         a0, s0, 455f
                  blt          s2, t0, 450f
                  sltu         a5, s0, s0
                  srli         s5, t1, 23
                  bge          a3, t1, 463f
                  xori         a0, a7, -1796
                  xori         a4, t3, 1140
                  lui          s9, 609618
                  sll          s10, a2, t3
                  ori          t5, a7, -152
450:              srai         zero, s3, 14
                  and          a5, s6, a6
                  blt          s5, a2, 453f
sub_4_17:         jal          t0, 22f
0:                jal          ra, 5f
1:                jal          ra, 27f
2:                jal          t1, 15f
3:                jal          t1, 8f
4:                jal          t0, 7f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 16f
8:                jal          ra, 4b
9:                jal          t1, 14f
10:               jal          ra, 12f
11:               jal          ra, 21f
12:               jal          t1, 11b
13:               jal          sp, 9b
14:               jal          t1, 20f
15:               jal          ra, 25f
16:               jal          t1, 0b
17:               jal          ra, 2b
18:               jal          t1, 17b
19:               jal          t1, 24f
20:               jal          t1, 3b
21:               jal          ra, 13b
22:               jal          s5, 19b
23:               jal          a7, 18b
24:               jal          ra, 23b
25:               jal          s10, 26f
26:               jal          ra, 10b
27:               and          t0, t3, a7
453:              slti         s3, s2, -990
                  andi         t0, a1, 1370
455:              nop
                  srai         t2, t5, 5
                  nop
                  slti         s11, tp, 1085
                  bgeu         t1, a4, 474f
                  lui          s3, 982549
                  and          t0, sp, s4
                  bne          t4, s5, 474f
463:              or           s3, t2, a2
                  srl          s6, s6, s2
                  blt          s4, t1, 474f
                  andi         a7, zero, -504
                  bgeu         a6, s6, 473f
                  blt          a0, s3, 474f
                  beq          s0, t5, 474f
                  bltu         s7, s1, 487f
                  addi         a3, s10, 1252
                  xori         s0, a0, 249
473:              xor          a6, a7, s1
474:              sra          s9, t4, a1
                  sltiu        t4, t4, 828
                  sra          s9, a5, s3
                  sltiu        a6, a3, 915
                  bltu         zero, a1, 493f
                  sub          s3, s2, s8
                  lui          a6, 636169
                  or           s11, a7, s0
                  blt          a2, s0, 495f
                  sub          a6, t5, s1
                  sra          s10, s8, s9
                  bne          a6, s3, 492f
                  srai         a6, ra, 1
487:              slti         t5, tp, -495
                  add          t1, s10, a6
                  slt          gp, s0, t4
                  bge          s4, a7, 496f
                  xor          a2, s6, a7
492:              sra          t5, s11, a6
493:              sra          s7, zero, tp
                  slti         a2, s5, 123
495:              slt          s6, s1, sp
496:              srai         s7, t3, 15
                  add          s6, a5, t0
                  sra          s6, t0, s1
                  auipc        s9, 317188
                  beq          s10, a7, 515f
                  srai         s7, gp, 9
                  slti         gp, a4, 1707
                  addi         ra, t0, 933
                  and          s7, a3, gp
                  bge          sp, s7, 517f
                  nop
                  blt          s7, s11, 513f
                  srli         t6, a7, 6
                  bne          a3, zero, 511f
                  srl          gp, t4, s5
511:              xor          a6, s6, a4
                  srli         gp, t6, 19
513:              slli         s0, t0, 22
                  sltiu        gp, s10, 42
515:              sra          a3, s3, s10
                  xor          t5, t1, s0
517:              sub          s6, s4, gp
                  srl          tp, s11, t6
                  srai         s9, s8, 29
                  beq          t4, s3, 525f
                  slti         s11, s11, -1723
                  nop
                  xori         s9, s10, 392
                  srl          s6, t6, s8
525:              andi         a7, gp, 1112
                  slli         a5, a2, 22
                  sltiu        t1, t2, 342
                  blt          t5, a5, 535f
                  sll          s3, t4, sp
                  bge          t3, s11, 545f
                  srl          t2, s2, a4
                  and          s11, a0, a0
                  nop
                  srl          s9, t2, t3
535:              add          tp, a4, a1
                  sltu         t0, s5, a2
                  add          a7, t1, a5
                  blt          a0, t4, 548f
                  bge          a2, s8, 549f
                  srai         t0, s1, 26
                  sub          t1, s10, ra
                  bge          s4, sp, 543f
543:              bgeu         s2, a0, 544f
544:              nop
545:              srli         s11, s9, 27
                  or           s11, s2, a7
                  ori          s3, a4, 1154
548:              sltu         sp, a1, a3
549:              sub          ra, t6, t0
                  ori          a7, a7, -1375
                  srli         s10, tp, 4
                  sltiu        gp, s0, -1977
                  add          s8, a7, a0
                  srl          s7, a0, t3
                  bltu         s1, a4, 570f
                  slt          s5, s9, t2
                  lui          a2, 403411
                  slli         t5, ra, 26
                  lui          s3, 749258
                  addi         s8, s1, -746
                  bne          t5, t4, 571f
                  bne          a1, a7, 566f
                  bge          s8, ra, 572f
                  bgeu         a2, a5, 570f
                  xori         s6, s4, -73
566:              xori         t5, s9, 1585
                  slti         s9, tp, 418
sub_4_5:          jal          t0, 4f
0:                jal          t0, 3f
1:                jal          ra, 5f
2:                jal          s0, 9f
3:                jal          ra, 8f
4:                jal          t0, 2b
5:                jal          s1, 10f
6:                jal          ra, 14f
7:                jal          ra, 1b
8:                jal          ra, 13f
9:                jal          ra, 11f
10:               jal          t2, 6b
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          s7, 7b
14:               ori          zero, a2, 315
                  and          a7, a7, s4
                  slti         s5, s1, -1394
570:              auipc        a1, 459739
571:              sll          zero, s4, t5
572:              andi         s9, a1, 1747
                  sltu         s5, zero, t1
                  nop
                  bne          s0, s1, 577f
                  srai         t6, s3, 12
577:              sltu         s0, s9, s10
                  bltu         a0, a1, 593f
                  lui          t0, 262634
                  bgeu         s5, s10, 586f
                  andi         a6, s8, -659
                  blt          a4, a2, 583f
583:              addi         a7, s11, -79
                  add          t0, a1, t3
                  and          s5, zero, a1
586:              and          a3, sp, s5
                  andi         a3, s6, 72
                  and          s9, s2, a2
                  sltiu        tp, a0, 991
                  addi         a4, s0, 389
                  sltu         t4, s10, a3
                  bne          t3, s11, 611f
593:              xori         s0, a0, -1978
                  slli         a0, sp, 3
                  sra          tp, tp, s6
                  slti         zero, t0, 190
                  slt          a6, a2, a3
                  sub          t0, t1, a6
                  addi         a2, a1, 398
                  sra          a4, zero, t1
                  sll          sp, sp, s8
                  xor          s5, s4, s9
                  auipc        a1, 668619
                  srli         a1, zero, 11
                  srli         s10, a2, 28
                  bge          a6, s6, 612f
                  addi         a2, s0, -1966
                  auipc        t2, 732505
                  nop
                  sltu         s1, a4, sp
611:              sll          t5, a1, s5
612:              blt          s7, s3, 614f
                  sltu         s11, s10, a3
614:              xori         a6, s8, 1074
                  sub          a2, gp, ra
                  andi         s5, a2, 336
                  bgeu         s8, a6, 623f
                  xori         sp, s8, 1457
                  bltu         sp, a4, 634f
                  sltu         s8, s8, s3
                  sll          t5, a5, t1
                  ori          s8, a4, 869
623:              sltu         t0, s0, a5
                  beq          a7, a7, 639f
                  sub          zero, s10, a2
                  and          t1, a3, t6
                  ori          s7, t5, 1804
                  bltu         a4, s3, 635f
                  xor          a0, a1, s10
                  nop
                  beq          s4, s5, 635f
                  sll          tp, tp, s8
                  sltu         a3, tp, zero
634:              sub          tp, s3, s8
635:              slt          ra, s6, s11
                  slli         a4, s3, 28
                  sra          a2, t4, t1
                  or           t4, s10, a2
639:              bltu         s7, s0, 644f
                  sltiu        a2, t1, 1521
                  xor          s6, s8, tp
                  and          s6, s7, a7
                  bgeu         a3, a6, 648f
644:              ori          s10, a2, 879
                  andi         tp, a2, 1350
                  srai         s10, zero, 27
                  nop
648:              add          a7, tp, s1
                  andi         s5, t5, 717
                  xor          ra, a1, a4
                  bge          a7, t6, 661f
                  bne          s4, t2, 664f
                  and          s1, a7, t3
                  ori          s6, s5, -1855
                  bgeu         s11, s6, 656f
656:              slli         s6, s3, 28
                  add          s9, s10, s7
                  srli         a3, gp, 21
                  and          a5, t3, a1
                  blt          s10, s8, 675f
661:              andi         zero, s8, -618
                  sub          zero, s4, t2
                  or           a0, s8, s4
664:              bltu         t4, zero, 674f
                  addi         a5, s1, 130
                  sra          a2, t6, a7
                  sltu         gp, s3, s8
                  addi         s10, t3, 1727
                  srl          tp, s5, gp
                  xori         a3, s7, 1078
                  bgeu         s8, a3, 680f
                  xor          t1, s0, gp
                  beq          s10, s9, 680f
674:              addi         zero, s8, 302
675:              or           a4, gp, a0
                  or           a1, s11, s7
                  bltu         t1, t3, 686f
                  xori         s0, s0, 1591
                  ori          t2, a4, -587
680:              or           a0, t3, ra
                  add          s5, ra, s4
                  add          zero, sp, s9
                  sub          t2, s1, sp
                  addi         s5, t1, -1513
                  ori          a7, s6, -1849
686:              slti         s1, s5, 1345
                  sra          ra, t6, gp
                  slt          a4, t5, ra
                  and          s7, s6, s2
                  bltu         s2, t6, 692f
                  add          a7, t4, t2
692:              or           t0, a0, a4
                  sll          a6, s3, a7
                  sub          s10, s4, a1
                  srli         a6, s2, 27
                  sra          t4, s3, zero
                  ori          s7, zero, -1029
                  bgeu         s2, s1, 699f
699:              xor          gp, t4, a2
                  bge          t5, s9, 712f
                  lui          t2, 79877
                  or           s7, s0, a0
                  ori          s1, s6, 549
                  bgeu         s2, sp, 710f
                  and          a7, s1, a5
                  bne          s9, a4, 721f
                  beq          t1, a4, 713f
                  sub          gp, s4, zero
                  xor          a7, a3, s10
710:              bltu         a2, s7, 720f
                  xori         a6, t6, 378
712:              addi         t6, a3, 708
713:              bltu         sp, s4, 726f
                  slli         s8, s1, 13
                  ori          s8, t2, -1146
                  xor          s5, s10, s4
                  srli         t0, t1, 28
                  bgeu         a4, tp, 735f
                  bgeu         a6, s0, 725f
720:              slt          tp, a0, s8
721:              xori         t5, a2, -1326
                  sltu         t6, t3, t5
                  slt          s3, a7, t0
                  blt          s7, gp, 725f
725:              bne          a4, t4, 729f
726:              srai         s5, s4, 20
                  and          sp, a3, t1
                  sltu         ra, s4, sp
729:              bne          a6, t0, 731f
                  sll          tp, sp, t2
731:              bgeu         gp, t4, 732f
732:              lui          a7, 807406
                  sub          s10, ra, a7
                  srai         a7, ra, 6
735:              srai         s7, t0, 12
                  blt          t6, s5, 742f
                  srli         s8, t4, 29
                  bgeu         t5, s4, 739f
739:              sltiu        t5, s8, -29
                  bgeu         zero, tp, 755f
                  bne          tp, s0, 746f
742:              andi         s9, a1, -988
                  xori         s8, zero, 1763
                  bgeu         t4, t1, 750f
                  sltiu        t5, s5, 1706
746:              srli         s6, a2, 29
                  xor          s5, a3, s9
                  ori          a7, t5, -1140
                  beq          a2, a0, 758f
750:              blt          s9, a7, 760f
                  bge          s6, gp, 761f
                  slti         s9, s1, -1312
                  sra          s10, s11, s9
                  bge          s4, s5, 760f
755:              lui          t1, 700209
                  slt          s3, s1, s11
                  sub          zero, t4, s5
758:              bge          s7, t6, 770f
                  sll          t1, sp, zero
760:              blt          zero, t0, 770f
761:              add          ra, gp, a4
                  sll          t5, s9, s2
                  sltu         t5, t0, s0
                  or           s5, gp, gp
                  srl          s1, a3, s11
                  or           gp, ra, t3
                  sltu         a7, s1, s7
                  slt          a3, t0, sp
                  slti         t5, a7, -203
770:              sll          a1, tp, gp
                  xor          a4, tp, s8
                  andi         t5, t3, -545
                  slli         s5, t6, 6
                  slli         a2, a4, 6
                  auipc        a2, 284981
                  sub          t5, t2, s11
                  slt          s9, s9, t3
                  slti         a7, s11, 763
                  sltiu        t5, a5, 948
                  bgeu         s9, sp, 795f
                  blt          tp, a3, 794f
                  bge          a1, ra, 789f
                  bltu         s3, s9, 790f
                  bltu         a2, a1, 801f
                  slt          a5, s7, s10
                  addi         zero, a6, -500
                  slt          a4, s10, t6
                  auipc        s9, 543256
789:              andi         a2, t0, 512
790:              srli         sp, ra, 2
                  addi         t0, gp, -821
                  ori          t0, gp, 1155
                  ori          s8, a6, 960
794:              bge          a6, a4, 803f
795:              slt          a5, a2, s11
                  slti         a7, s0, -934
                  srl          t2, a6, a1
                  sltu         s10, zero, sp
                  srl          s5, ra, gp
                  sub          a0, s7, ra
801:              add          s7, a6, s4
                  bge          t1, t2, 804f
803:              ori          zero, t5, -1019
804:              srai         s7, sp, 28
                  xori         s6, s6, 731
                  lui          t0, 770940
                  bne          a2, a4, 826f
                  srli         tp, s10, 2
                  xor          sp, zero, s4
                  and          t0, s2, gp
                  bltu         a1, s8, 817f
                  bne          s6, t0, 827f
                  addi         a7, tp, 1748
                  ori          ra, s7, -98
                  slti         a6, s6, -2046
                  srli         a7, t1, 26
817:              bgeu         t3, sp, 829f
                  xor          s0, s4, s3
                  and          a1, s0, tp
                  sub          s6, s9, s6
                  xori         s10, s7, 680
                  ori          s0, s9, 414
                  or           s5, a3, t0
                  addi         a2, t1, -1804
                  beq          s3, t3, 840f
826:              auipc        ra, 347503
827:              auipc        gp, 315279
                  bltu         a3, ra, 833f
829:              sltiu        t4, s2, -1523
                  beq          s3, zero, 845f
                  lui          s8, 403737
                  sub          s11, a3, a6
833:              sra          a7, a7, a0
                  bgeu         a7, s7, 844f
                  nop
                  bne          gp, t4, 840f
                  srli         a4, zero, 20
                  bge          ra, s11, 857f
                  sltiu        a6, gp, 1523
840:              or           s6, gp, t4
                  sltiu        tp, t1, -1590
                  ori          s7, a0, 1490
                  addi         a3, s9, -1563
844:              sll          t0, a5, t6
845:              nop
                  srai         s5, a0, 7
                  add          zero, zero, a5
                  blt          t4, s5, 860f
                  srli         a4, a0, 8
                  add          s8, a6, t6
                  blt          a4, a5, 868f
                  ori          s6, t0, 1557
                  srli         s8, zero, 10
                  xor          a2, s8, t3
                  auipc        zero, 781670
                  nop
857:              and          a3, t3, s8
                  sltu         gp, sp, a6
                  addi         a2, a7, -15
860:              lui          s6, 974266
                  bltu         a2, t6, 868f
                  andi         t1, t0, 1152
                  blt          s1, t4, 864f
864:              sra          a2, s11, s4
                  bge          t2, s6, 880f
                  auipc        t4, 231505
                  slti         a0, s3, 826
868:              xor          a4, s2, t6
                  blt          a1, tp, 879f
                  blt          a2, s0, 876f
                  slt          a6, a2, a5
                  or           s11, a7, tp
                  bgeu         ra, s7, 888f
                  sltu         s5, a6, t4
                  sltiu        s7, a4, -214
876:              blt          sp, t0, 885f
                  srai         a6, s10, 20
                  srai         s1, t4, 27
879:              xori         t6, t6, 1924
880:              xori         t5, a1, -488
                  addi         s9, t6, 1326
                  andi         s5, zero, 26
                  auipc        s9, 599655
                  sub          t1, a3, sp
885:              blt          a4, s3, 887f
                  srl          ra, a6, a2
887:              slli         tp, s3, 19
888:              sltu         s7, a7, ra
                  addi         s0, t3, 1177
                  srli         s11, t3, 28
                  srai         s1, t3, 9
                  sll          s7, s9, t3
                  bne          s3, s6, 895f
                  auipc        t0, 539531
895:              srai         t0, ra, 3
                  srl          s10, s3, t6
                  and          s6, t0, sp
                  auipc        s10, 853147
                  bne          t2, t5, 911f
                  slt          zero, s3, zero
                  nop
                  xori         a1, t5, -1840
                  andi         ra, sp, 1854
                  beq          s3, a7, 909f
                  andi         zero, t1, -667
                  and          s7, t3, s10
                  slli         a3, s4, 23
                  andi         a7, s9, 1838
909:              nop
                  ori          tp, s4, 115
911:              bge          s6, s9, 926f
                  sltiu        a3, gp, -1145
                  or           ra, gp, a0
                  beq          s1, t2, 929f
                  sll          gp, a0, t1
                  andi         a3, t0, -1404
                  add          a0, gp, a2
                  bne          t0, s10, 927f
                  auipc        zero, 993113
                  lui          s1, 388748
                  add          s6, s7, s10
                  add          t4, a0, t0
                  bgeu         tp, a7, 933f
                  lui          t1, 527845
                  sltu         t1, s2, t3
926:              add          a0, s3, tp
927:              and          s3, s4, t0
                  nop
929:              xori         t1, s1, -424
                  blt          tp, ra, 943f
                  slt          s3, a0, a2
                  slli         s1, a5, 15
933:              sltu         t1, t4, a0
                  bne          t3, a4, 935f
935:              and          s11, s0, s0
                  xori         t6, t4, -912
                  addi         s0, t3, -330
                  add          t1, a1, t4
                  bne          t5, t2, 940f
940:              lui          a0, 913440
                  or           s3, a4, t5
                  ori          s9, s2, -908
943:              and          a0, t3, ra
                  sltiu        tp, t4, -1375
                  sub          s7, s0, s3
                  sll          s6, s11, ra
                  srl          s6, t0, t1
                  lw           t0, 4(s2)
                  addi         s2, s2, 20
                  auipc        s9, 486370
                  sra          s6, t5, a3
                  slti         a7, s6, -316
                  slti         t6, a5, -1756
                  srl          ra, s0, s11
                  andi         s8, s5, -494
                  sll          tp, s5, a7
                  slli         t5, a5, 11
                  lui          a7, 966089
                  slti         sp, s2, 1183
1362:             addi x8, x5, 1
1362:             jalr x8, x8, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x20, x18, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x16, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x16, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x16, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x16, x25, ecall_handler
                  li x25, 0x1
                  beq x16, x25, instr_fault_handler
                  li x25, 0x5
                  beq x16, x25, load_fault_handler
                  li x25, 0x7
                  beq x16, x25, store_fault_handler
                  li x25, 0xc
                  beq x16, x25, pt_fault_handler
                  li x25, 0xd
                  beq x16, x25, pt_fault_handler
                  li x25, 0xf
                  beq x16, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
