.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x804990ca
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x7
                  li x5, 0x0
                  li x7, 0x0
                  li x8, 0xabb43bfc
                  li x9, 0xe
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x2
                  li x13, 0xf670b6b5
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x7
                  li x17, 0xf
                  li x18, 0x0
                  li x19, 0x8
                  li x20, 0xf85c7420
                  li x21, 0x80000000
                  li x22, 0xdc01658c
                  li x23, 0x80000000
                  li x24, 0xfce2969f
                  li x25, 0x80000000
                  li x26, 0x5
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x82ced300
                  li x31, 0xb
                  la x4, user_stack_end
main:             jal          gp, 7f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          ra, 1b
4:                jal          t3, 6f
5:                jal          sp, 16f
6:                jal          a5, 9f
7:                jal          ra, 4b
8:                jal          s6, 0b
9:                jal          ra, 3b
10:               jal          sp, 8b
11:               jal          ra, 2b
12:               jal          ra, 13f
13:               jal          s10, 11b
14:               jal          ra, 10b
15:               jal          s6, 14b
16:               sra          s10, t5, s8
                  andi         t3, a1, -1173
                  beq          a4, a2, 13f
                  bge          tp, s8, 13f
                  lui          s8, 893211
                  srli         a0, s10, 17
                  la           s5, sub_1
                  slti         t4, t5, 326
                  addi         s5, s5, 505
                  slli         t3, s11, 22
                  sra          s10, s7, t1
                  nop
main_j1:          jalr         gp, s5, -505 #jump main -> sub_1
                  sltu         a4, t0, tp
                  sra          t3, s4, s4
                  srl          a2, t1, s8
                  or           a1, sp, gp
                  sltiu        s5, a2, -160
                  bgeu         t2, s4, 13f
                  addi         a1, s4, -853
                  beq          t1, a5, 13f
                  bge          s8, t1, 13f
13:               slti         gp, t2, 1385
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            blt          a3, s11, sub_2_stack_p
                  sub          s10, t1, t5
                  sltiu        a4, a3, -1657
sub_2_stack_p:    addi         tp, tp, -24
                  xor          s1, s3, gp
                  sw           gp, 4(tp)
                  slli         a0, s10, 15
sub_2_4:          jal          gp, 3f
0:                jal          ra, 2f
1:                jal          ra, 24f
2:                jal          ra, 28f
3:                jal          ra, 19f
4:                jal          ra, 13f
5:                jal          ra, 21f
6:                jal          ra, 23f
7:                jal          ra, 16f
8:                jal          s1, 20f
9:                jal          t0, 11f
10:               jal          ra, 25f
11:               jal          ra, 27f
12:               jal          ra, 17f
13:               jal          ra, 22f
14:               jal          ra, 1b
15:               jal          s10, 26f
16:               jal          t0, 12b
17:               jal          ra, 9b
18:               jal          ra, 29f
19:               jal          ra, 15b
20:               jal          ra, 4b
21:               jal          ra, 6b
22:               jal          ra, 5b
23:               jal          ra, 10b
24:               jal          ra, 18b
25:               jal          ra, 14b
26:               jal          s6, 7b
27:               jal          ra, 0b
28:               jal          ra, 8b
29:               srli         s6, sp, 12
sub_2_9:          jal          gp, 6f
0:                jal          ra, 10f
1:                jal          s2, 15f
2:                jal          s9, 11f
3:                jal          ra, 16f
4:                jal          ra, 14f
5:                jal          a5, 8f
6:                jal          ra, 9f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 13f
11:               jal          ra, 12f
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          s2, 2b
15:               jal          ra, 5b
16:               jal          ra, 7b
17:               addi         s6, s0, 826
sub_2_0:          jal          gp, 0f
0:                jal          t3, 21f
1:                jal          ra, 6f
2:                jal          gp, 22f
3:                jal          ra, 15f
4:                jal          ra, 12f
5:                jal          t6, 13f
6:                jal          sp, 14f
7:                jal          t0, 5b
8:                jal          ra, 19f
9:                jal          t6, 23f
10:               jal          ra, 3b
11:               jal          ra, 17f
12:               jal          ra, 7b
13:               jal          gp, 18f
14:               jal          ra, 4b
15:               jal          a4, 2b
16:               jal          a4, 10b
17:               jal          ra, 1b
18:               jal          a5, 8b
19:               jal          ra, 16b
20:               jal          ra, 9b
21:               jal          ra, 20b
22:               jal          ra, 24f
23:               jal          ra, 11b
24:               slti         t4, sp, 2022
sub_2_21:         jal          gp, 6f
0:                jal          ra, 16f
1:                jal          ra, 2f
2:                jal          t4, 8f
3:                jal          t0, 11f
4:                jal          t0, 19f
5:                jal          ra, 17f
6:                jal          ra, 7f
7:                jal          ra, 14f
8:                jal          ra, 12f
9:                jal          ra, 0b
10:               jal          ra, 13f
11:               jal          t4, 5b
12:               jal          ra, 3b
13:               jal          ra, 9b
14:               jal          ra, 18f
15:               jal          ra, 4b
16:               jal          s11, 1b
17:               jal          ra, 15b
18:               jal          ra, 10b
19:               slti         t0, t3, -868
sub_2_13:         jal          gp, 9f
0:                jal          ra, 11f
1:                jal          gp, 29f
2:                jal          a5, 27f
3:                jal          ra, 25f
4:                jal          ra, 17f
5:                jal          ra, 12f
6:                jal          ra, 24f
7:                jal          ra, 6b
8:                jal          t6, 7b
9:                jal          ra, 21f
10:               jal          s1, 1b
11:               jal          ra, 20f
12:               jal          t0, 28f
13:               jal          ra, 4b
14:               jal          s11, 3b
15:               jal          ra, 10b
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          ra, 15b
19:               jal          ra, 2b
20:               jal          ra, 26f
21:               jal          t2, 5b
22:               jal          s1, 23f
23:               jal          ra, 0b
24:               jal          ra, 22b
25:               jal          a7, 19b
26:               jal          t0, 16b
27:               jal          sp, 13b
28:               jal          a3, 14b
29:               addi         t3, t4, 837
sub_2_12:         jal          gp, 11f
0:                jal          s8, 8f
1:                jal          gp, 17f
2:                jal          ra, 14f
3:                jal          a0, 22f
4:                jal          s2, 0b
5:                jal          sp, 13f
6:                jal          gp, 10f
7:                jal          ra, 18f
8:                jal          ra, 21f
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          ra, 2b
12:               jal          ra, 1b
13:               jal          a1, 19f
14:               jal          ra, 15f
15:               jal          ra, 6b
16:               jal          a4, 7b
17:               jal          ra, 9b
18:               jal          t0, 3b
19:               jal          ra, 23f
20:               jal          s11, 16b
21:               jal          gp, 20b
22:               jal          sp, 5b
23:               ori          s11, s0, -896
sub_2_19:         jal          gp, 12f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          a0, 9f
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          ra, 1b
9:                jal          ra, 7b
10:               jal          ra, 11f
11:               jal          ra, 13f
12:               jal          ra, 6b
13:               sub          s4, s7, t1
sub_2_11:         jal          gp, 21f
0:                jal          ra, 12f
1:                jal          ra, 3f
2:                jal          ra, 18f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          t0, 1b
6:                jal          gp, 24f
7:                jal          sp, 15f
8:                jal          ra, 27f
9:                jal          gp, 22f
10:               jal          s8, 9b
11:               jal          s5, 0b
12:               jal          ra, 2b
13:               jal          ra, 5b
14:               jal          gp, 13b
15:               jal          ra, 17f
16:               jal          ra, 25f
17:               jal          ra, 26f
18:               jal          ra, 10b
19:               jal          ra, 11b
20:               jal          s1, 6b
21:               jal          a7, 14b
22:               jal          ra, 20b
23:               jal          ra, 16b
24:               jal          ra, 23b
25:               jal          ra, 4b
26:               jal          t6, 19b
27:               nop
sub_2_23:         jal          gp, 0f
0:                jal          t0, 12f
1:                jal          ra, 6f
2:                jal          ra, 3f
3:                jal          ra, 13f
4:                jal          ra, 1b
5:                jal          t0, 11f
6:                jal          ra, 2b
7:                jal          ra, 8f
8:                jal          s2, 5b
9:                jal          t6, 4b
10:               jal          ra, 7b
11:               jal          ra, 9b
12:               jal          s7, 10b
13:               xori         a1, sp, 678
sub_2_6:          jal          gp, 1f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          sp, 8f
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          a0, 0b
6:                jal          s6, 5b
7:                jal          ra, 4b
8:                jal          t6, 9f
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          ra, 10b
12:               jal          gp, 6b
13:               auipc        s10, 1041002
sub_2_16:         jal          gp, 5f
0:                jal          ra, 25f
1:                jal          ra, 27f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          ra, 17f
5:                jal          ra, 15f
6:                jal          ra, 2b
7:                jal          sp, 19f
8:                jal          ra, 26f
9:                jal          t3, 11f
10:               jal          t0, 9b
11:               jal          t0, 16f
12:               jal          s10, 10b
13:               jal          ra, 21f
14:               jal          s3, 20f
15:               jal          t2, 12b
16:               jal          ra, 3b
17:               jal          ra, 24f
18:               jal          a3, 28f
19:               jal          ra, 23f
20:               jal          s1, 13b
21:               jal          ra, 22f
22:               jal          a6, 4b
23:               jal          gp, 18b
24:               jal          sp, 7b
25:               jal          sp, 14b
26:               jal          ra, 1b
27:               jal          ra, 0b
28:               and          zero, t6, s6
sub_2_18:         jal          gp, 6f
0:                jal          s1, 24f
1:                jal          ra, 30f
2:                jal          ra, 7f
3:                jal          t0, 14f
4:                jal          ra, 2b
5:                jal          ra, 16f
6:                jal          ra, 15f
7:                jal          t0, 22f
8:                jal          ra, 21f
9:                jal          a0, 23f
10:               jal          ra, 18f
11:               jal          ra, 8b
12:               jal          a2, 27f
13:               jal          t0, 0b
14:               jal          ra, 9b
15:               jal          s5, 13b
16:               jal          ra, 29f
17:               jal          ra, 10b
18:               jal          ra, 1b
19:               jal          ra, 4b
20:               jal          ra, 25f
21:               jal          s2, 28f
22:               jal          s5, 11b
23:               jal          s2, 17b
24:               jal          ra, 20b
25:               jal          ra, 12b
26:               jal          ra, 19b
27:               jal          sp, 5b
28:               jal          ra, 3b
29:               jal          ra, 26b
30:               xor          a1, tp, zero
sub_2_20:         jal          gp, 4f
0:                jal          ra, 5f
1:                jal          ra, 23f
2:                jal          ra, 22f
3:                jal          ra, 21f
4:                jal          ra, 7f
5:                jal          t4, 1b
6:                jal          ra, 13f
7:                jal          ra, 12f
8:                jal          ra, 0b
9:                jal          ra, 20f
10:               jal          sp, 11f
11:               jal          s3, 15f
12:               jal          ra, 18f
13:               jal          t3, 9b
14:               jal          ra, 8b
15:               jal          a7, 3b
16:               jal          ra, 14b
17:               jal          ra, 10b
18:               jal          ra, 2b
19:               jal          ra, 6b
20:               jal          ra, 17b
21:               jal          ra, 16b
22:               jal          ra, 19b
23:               sll          a1, sp, t1
sub_2_10:         jal          gp, 27f
0:                jal          ra, 8f
1:                jal          ra, 28f
2:                jal          a2, 16f
3:                jal          a1, 1b
4:                jal          gp, 11f
5:                jal          gp, 29f
6:                jal          s1, 23f
7:                jal          sp, 25f
8:                jal          t2, 9f
9:                jal          a0, 15f
10:               jal          a0, 18f
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          sp, 3b
14:               jal          ra, 21f
15:               jal          a2, 2b
16:               jal          ra, 4b
17:               jal          ra, 20f
18:               jal          sp, 0b
19:               jal          ra, 7b
20:               jal          a3, 26f
21:               jal          ra, 6b
22:               jal          a2, 13b
23:               jal          s8, 10b
24:               jal          s7, 19b
25:               jal          a5, 14b
26:               jal          s11, 24b
27:               jal          ra, 22b
28:               jal          t0, 17b
29:               addi         t3, t4, 1345
sub_2_17:         jal          gp, 16f
0:                jal          ra, 14f
1:                jal          sp, 6f
2:                jal          gp, 3f
3:                jal          gp, 24f
4:                jal          s8, 21f
5:                jal          t0, 19f
6:                jal          ra, 8f
7:                jal          a3, 9f
8:                jal          gp, 13f
9:                jal          ra, 23f
10:               jal          ra, 5b
11:               jal          sp, 1b
12:               jal          ra, 22f
13:               jal          ra, 0b
14:               jal          s0, 15f
15:               jal          ra, 10b
16:               jal          ra, 11b
17:               jal          ra, 2b
18:               jal          a0, 4b
19:               jal          sp, 7b
20:               jal          sp, 17b
21:               jal          t0, 20b
22:               jal          ra, 18b
23:               jal          s4, 12b
24:               or           a5, a6, a0
sub_2_7:          jal          gp, 16f
0:                jal          a2, 18f
1:                jal          s6, 13f
2:                jal          a5, 14f
3:                jal          ra, 5f
4:                jal          t6, 0b
5:                jal          ra, 10f
6:                jal          ra, 20f
7:                jal          s5, 6b
8:                jal          ra, 2b
9:                jal          ra, 8b
10:               jal          s4, 9b
11:               jal          ra, 17f
12:               jal          ra, 21f
13:               jal          ra, 12b
14:               jal          a4, 15f
15:               jal          ra, 4b
16:               jal          s2, 11b
17:               jal          s6, 7b
18:               jal          ra, 19f
19:               jal          t3, 1b
20:               jal          gp, 3b
21:               sll          s8, ra, t4
sub_2_25:         jal          gp, 4f
0:                jal          ra, 10f
1:                jal          ra, 6f
2:                jal          sp, 7f
3:                jal          s1, 25f
4:                jal          a7, 20f
5:                jal          ra, 3b
6:                jal          ra, 17f
7:                jal          s9, 16f
8:                jal          a5, 21f
9:                jal          s6, 8b
10:               jal          ra, 9b
11:               jal          ra, 24f
12:               jal          ra, 26f
13:               jal          ra, 2b
14:               jal          s3, 27f
15:               jal          sp, 18f
16:               jal          ra, 22f
17:               jal          ra, 23f
18:               jal          ra, 14b
19:               jal          ra, 1b
20:               jal          ra, 19b
21:               jal          t2, 12b
22:               jal          ra, 5b
23:               jal          ra, 13b
24:               jal          ra, 0b
25:               jal          a5, 11b
26:               jal          gp, 15b
27:               jal          ra, 28f
28:               xori         t3, a4, -1293
sub_2_24:         jal          gp, 2f
0:                jal          a1, 12f
1:                jal          ra, 22f
2:                jal          t2, 8f
3:                jal          ra, 9f
4:                jal          ra, 14f
5:                jal          ra, 25f
6:                jal          ra, 15f
7:                jal          ra, 21f
8:                jal          ra, 1b
9:                jal          ra, 13f
10:               jal          ra, 24f
11:               jal          ra, 5b
12:               jal          ra, 19f
13:               jal          ra, 7b
14:               jal          a4, 10b
15:               jal          ra, 18f
16:               jal          s7, 17f
17:               jal          ra, 3b
18:               jal          ra, 20f
19:               jal          s1, 23f
20:               jal          ra, 11b
21:               jal          ra, 4b
22:               jal          ra, 16b
23:               jal          ra, 6b
24:               jal          ra, 0b
25:               srli         s7, a7, 23
sub_2_14:         jal          gp, 3f
0:                jal          sp, 7f
1:                jal          ra, 10f
2:                jal          ra, 20f
3:                jal          ra, 9f
4:                jal          ra, 14f
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          a0, 19f
8:                jal          ra, 16f
9:                jal          ra, 17f
10:               jal          ra, 0b
11:               jal          t2, 2b
12:               jal          s11, 13f
13:               jal          t6, 8b
14:               jal          s8, 11b
15:               jal          a5, 18f
16:               jal          gp, 21f
17:               jal          t3, 5b
18:               jal          s9, 1b
19:               jal          ra, 12b
20:               jal          ra, 15b
21:               jal          ra, 22f
22:               sll          s9, tp, t0
sub_2_1:          jal          gp, 4f
0:                jal          ra, 12f
1:                jal          s3, 8f
2:                jal          a5, 11f
3:                jal          ra, 1b
4:                jal          s0, 0b
5:                jal          ra, 7f
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          gp, 2b
9:                jal          t0, 13f
10:               jal          t6, 16f
11:               jal          ra, 10b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          s2, 6b
15:               jal          ra, 9b
16:               xor          gp, t5, a6
sub_2_22:         jal          gp, 19f
0:                jal          ra, 21f
1:                jal          ra, 4f
2:                jal          a3, 7f
3:                jal          ra, 10f
4:                jal          ra, 16f
5:                jal          ra, 12f
6:                jal          t2, 1b
7:                jal          s9, 5b
8:                jal          ra, 25f
9:                jal          ra, 18f
10:               jal          ra, 14f
11:               jal          ra, 3b
12:               jal          ra, 15f
13:               jal          t0, 24f
14:               jal          t0, 13b
15:               jal          ra, 22f
16:               jal          ra, 9b
17:               jal          ra, 6b
18:               jal          sp, 11b
19:               jal          ra, 17b
20:               jal          ra, 8b
21:               jal          ra, 2b
22:               jal          ra, 23f
23:               jal          s6, 20b
24:               jal          ra, 0b
25:               slt          gp, s11, sp
sub_2_5:          jal          gp, 8f
0:                jal          t2, 5f
1:                jal          a5, 7f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          t3, 0b
5:                jal          ra, 6f
6:                jal          ra, 9f
7:                jal          ra, 3b
8:                jal          ra, 11f
9:                jal          gp, 2b
10:               jal          t0, 1b
11:               jal          ra, 4b
12:               sltu         s0, ra, a0
sub_2_8:          jal          gp, 23f
0:                jal          s9, 21f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          ra, 19f
4:                jal          ra, 1b
5:                jal          ra, 25f
6:                jal          ra, 4b
7:                jal          gp, 13f
8:                jal          t0, 3b
9:                jal          ra, 11f
10:               jal          s5, 16f
11:               jal          s8, 22f
12:               jal          sp, 18f
13:               jal          ra, 9b
14:               jal          ra, 6b
15:               jal          s0, 7b
16:               jal          t2, 14b
17:               jal          t3, 24f
18:               jal          ra, 15b
19:               jal          ra, 12b
20:               jal          ra, 2b
21:               jal          s11, 17b
22:               jal          ra, 10b
23:               jal          a0, 20b
24:               jal          t3, 8b
25:               slt          s7, tp, s7
sub_2_3:          jal          gp, 20f
0:                jal          ra, 12f
1:                jal          s0, 3f
2:                jal          ra, 17f
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          sp, 19f
8:                jal          ra, 22f
9:                jal          ra, 10f
10:               jal          ra, 14f
11:               jal          s11, 15f
12:               jal          a3, 23f
13:               jal          t3, 11b
14:               jal          s5, 1b
15:               jal          ra, 18f
16:               jal          ra, 21f
17:               jal          ra, 9b
18:               jal          ra, 5b
19:               jal          a4, 0b
20:               jal          ra, 2b
21:               jal          t3, 4b
22:               jal          ra, 16b
23:               ori          t6, t0, -1591
                  bltu         s3, a2, 4f
                  and          s4, s8, s5
                  and          sp, s7, t1
                  sra          a5, s7, t0
4:                bltu         s11, s8, 21f
                  slti         s8, gp, 1373
                  bltu         t0, s7, 12f
                  srai         a2, s11, 17
                  addi         a1, a1, -1430
                  bltu         a6, s8, 29f
                  beq          s0, s6, 27f
                  or           ra, a0, a0
12:               and          t2, sp, s5
                  or           s4, gp, s6
                  bne          zero, s7, 33f
                  xori         t4, s7, 17
                  addi         a4, s4, 918
                  slli         gp, a3, 27
                  bge          a5, tp, 28f
                  srl          s11, sp, t5
                  ori          s4, a7, -65
21:               bge          gp, t4, 41f
                  sra          ra, s4, s10
                  slli         s5, s4, 15
                  sltu         a4, s8, t1
                  sub          s6, a7, a0
                  sltiu        t2, t2, 874
27:               srli         a0, a2, 14
28:               sra          s10, sp, a2
29:               addi         t6, a7, -776
                  nop
                  sltu         a0, t2, s4
                  slt          s11, s3, s11
33:               and          s9, a7, t3
                  ori          a7, s0, 1803
                  add          sp, a7, s5
                  auipc        a5, 1024458
                  sltiu        t4, s11, -1098
                  srl          a5, a7, a2
                  beq          s11, t6, 48f
                  beq          a5, t6, 60f
41:               andi         gp, s9, -785
                  srli         a5, s2, 3
                  srli         a6, t2, 27
                  lui          a3, 9575
                  and          s7, t4, s3
                  srai         s9, s10, 4
                  srai         s10, s10, 10
48:               slti         a3, s8, -1734
                  bge          s6, t2, 61f
                  srai         t3, s11, 9
                  add          a2, s6, s9
                  nop
                  slli         t2, zero, 13
                  srli         a3, t4, 27
                  bge          s2, a4, 72f
                  sltiu        s2, sp, -1865
                  andi         s1, s8, -510
                  bltu         t4, s10, 76f
                  srai         s4, t1, 6
60:               andi         s9, a1, -1412
61:               bge          sp, s3, 71f
                  bltu         s9, s8, 75f
                  addi         a4, zero, 1934
                  beq          s9, a5, 71f
                  ori          s4, t4, -1352
                  beq          tp, t0, 79f
                  srl          a6, zero, s5
                  ori          s7, s2, -1582
                  xor          zero, t5, s10
                  sub          t3, a3, s1
71:               bltu         a7, zero, 82f
72:               sltiu        t2, t0, 1457
                  srai         t4, t5, 12
                  slli         t6, t1, 10
75:               lui          t4, 62683
76:               bne          s10, zero, 83f
                  lui          a2, 466552
                  auipc        a7, 1038055
79:               xor          s3, t0, gp
                  add          s8, a5, t0
                  sra          a7, s2, s3
82:               srl          s3, t0, a3
83:               or           gp, t5, s0
                  bne          sp, gp, 96f
                  sltu         t0, t4, s6
                  andi         t4, tp, -1668
                  sltu         t2, t0, gp
                  add          t6, s9, a6
                  sltu         s1, t5, s4
                  xori         s2, s7, 904
                  sll          t6, s9, a7
                  blt          s8, tp, 99f
                  bge          a0, a7, 96f
                  bge          t4, t5, 99f
                  sltu         s3, t6, t4
96:               bgeu         ra, a6, 112f
                  add          s5, s9, t6
                  beq          a6, s5, 104f
99:               slli         s4, tp, 3
                  bne          a2, a0, 107f
                  addi         a5, s5, 1319
                  and          t0, s0, s7
                  sll          s7, s8, t0
104:              and          t6, s3, s11
                  bge          s7, t1, 119f
                  sll          a7, t1, sp
107:              sub          s8, s8, s11
                  srli         s10, a5, 9
                  srli         t0, t4, 14
                  sub          a2, zero, s4
                  blt          t1, a1, 115f
112:              slt          t2, s0, a2
                  and          s6, s0, t5
                  xori         gp, s8, 1929
115:              or           t6, s11, t2
                  srl          sp, ra, s1
                  and          s10, s8, s11
                  and          zero, t3, a6
119:              auipc        t6, 62689
                  slli         a6, sp, 12
                  slti         s9, s10, 1918
                  auipc        zero, 704104
                  and          a5, zero, a2
                  xor          s1, s5, ra
                  srli         a3, s6, 13
                  ori          a2, s2, -1538
                  sub          gp, a6, s6
                  slt          s8, s6, a6
                  sll          a4, s0, a0
                  slti         a2, t5, 753
                  xor          a6, s8, s9
                  or           s1, s1, tp
                  srl          s10, a7, a0
                  lui          gp, 651772
                  bne          tp, t6, 143f
                  or           ra, s4, a6
                  slti         s6, s8, -258
                  slti         t6, s0, -1117
                  bge          s5, s9, 156f
                  xor          s10, a7, a6
                  beq          zero, t6, 153f
                  srli         sp, s10, 6
143:              bne          zero, a5, 149f
                  ori          s5, a7, 1331
                  blt          s7, tp, 165f
                  srli         ra, t6, 18
                  ori          s1, t1, 1353
                  bge          s7, t3, 165f
149:              sub          s6, t3, s5
                  or           t0, a4, a6
                  sra          a6, s7, zero
                  beq          t4, t1, 169f
153:              andi         zero, t2, 1913
                  ori          zero, a1, -99
                  srai         t0, t3, 15
156:              sltu         s5, t3, t5
                  xor          t2, s6, s6
                  sll          a7, s1, s4
                  or           t6, s11, t5
                  addi         t0, tp, -539
                  auipc        s11, 158557
                  slli         zero, t1, 24
                  xori         s1, s9, 1775
                  bltu         a4, sp, 181f
165:              and          s9, gp, t2
                  or           s3, s11, a2
                  slti         a5, t5, -483
                  xor          s4, s10, s8
169:              andi         s5, s0, -159
                  slt          a1, a7, a7
                  slli         gp, gp, 16
                  slli         s7, zero, 19
                  lui          s8, 487828
                  bltu         t4, t1, 181f
                  beq          s11, s8, 187f
                  srl          s8, s6, ra
                  slt          s4, s2, zero
                  bltu         s11, t1, 189f
                  lui          sp, 805167
                  xor          t3, s2, s1
181:              xori         s1, a1, 1057
                  sub          s6, a2, s9
                  nop
                  srai         gp, t1, 24
                  slti         a1, s9, 111
                  andi         s5, s4, 1513
187:              bgeu         s11, a2, 207f
                  and          sp, t0, s0
189:              sub          a4, t2, t1
                  sltu         s1, a5, s7
                  lui          a5, 13647
                  ori          t0, s11, -1581
                  and          s4, s11, sp
                  srli         t0, t3, 29
                  sll          t6, a1, s7
                  srli         s2, t1, 22
                  blt          t0, a7, 211f
                  sltiu        s0, a4, -304
                  sll          t0, t6, s5
                  srai         s9, s6, 18
                  srli         s9, s3, 28
                  auipc        a0, 213567
                  srl          a3, s2, a5
                  sltu         a7, a0, a7
                  sll          a2, a2, ra
                  blt          s0, ra, 209f
207:              sll          t3, a0, s11
                  bgeu         t1, gp, 227f
209:              bgeu         t6, s10, 219f
                  beq          s5, t3, 217f
211:              blt          sp, zero, 218f
                  slt          a3, a3, t2
                  slli         t6, s7, 11
                  lui          s2, 759119
                  nop
                  add          s4, a7, gp
217:              bne          zero, s8, 222f
218:              or           t3, a2, s10
219:              srl          s4, t0, s3
                  blt          a1, s0, 233f
                  beq          s7, t4, 230f
222:              andi         ra, t3, 720
                  bge          s9, t2, 243f
                  srl          a1, s11, a4
                  xor          zero, t5, t5
                  slti         s8, a3, -1309
227:              slli         s1, s1, 30
                  xor          ra, s1, a3
sub_2_26:         jal          gp, 6f
0:                jal          sp, 7f
1:                jal          ra, 9f
2:                jal          ra, 28f
3:                jal          ra, 25f
4:                jal          a1, 21f
5:                jal          s0, 13f
6:                jal          a4, 16f
7:                jal          a4, 3b
8:                jal          ra, 27f
9:                jal          ra, 11f
10:               jal          ra, 2b
11:               jal          ra, 22f
12:               jal          s3, 19f
13:               jal          ra, 8b
14:               jal          gp, 4b
15:               jal          t3, 1b
16:               jal          sp, 18f
17:               jal          t0, 5b
18:               jal          s7, 0b
19:               jal          ra, 29f
20:               jal          ra, 10b
21:               jal          a4, 12b
22:               jal          ra, 14b
23:               jal          ra, 24f
24:               jal          ra, 15b
25:               jal          gp, 17b
26:               jal          ra, 20b
27:               jal          ra, 26b
28:               jal          ra, 23b
29:               slti         a5, a1, -509
                  xor          s1, ra, a3
230:              ori          s10, tp, 1956
                  sltiu        s10, s9, 1515
                  or           t2, s0, gp
233:              bne          tp, t5, 250f
                  beq          ra, a5, 247f
                  xor          s10, t5, tp
                  beq          t6, a5, 243f
                  srli         a6, s2, 12
                  bge          zero, a6, 244f
                  and          s9, s10, t2
                  or           zero, t5, a0
                  sltiu        s2, s6, 1280
                  beq          s5, s10, 246f
243:              sltu         a2, t3, zero
244:              srl          s11, t2, s5
                  slti         a6, t0, -777
246:              srl          s6, a0, t2
247:              bltu         gp, a3, 255f
                  slli         s0, a6, 29
                  bge          a6, t3, 267f
250:              bltu         zero, s4, 266f
                  andi         a2, s1, -1182
                  sltu         a2, t1, s9
                  srli         a0, zero, 15
                  srl          s5, a4, ra
255:              sll          t6, a5, t6
                  add          s10, s10, s7
                  and          a6, s5, t1
                  sll          s0, s8, a0
                  or           a3, s8, s3
                  addi         a1, zero, -1731
                  beq          a4, a3, 271f
                  add          s3, s9, a2
                  nop
                  srl          s11, t4, s11
                  blt          s2, s3, 269f
266:              beq          a1, s9, 279f
267:              nop
                  addi         t0, a5, -138
269:              addi         s0, s6, 1868
                  slt          t6, t6, ra
271:              bne          gp, s2, 277f
                  sub          a1, s4, s3
                  add          s9, sp, t0
                  xor          a7, s9, s0
                  slti         t4, s2, 1879
                  and          a0, s4, zero
277:              bne          zero, a4, 281f
                  slt          s5, tp, a5
279:              bge          t2, s3, 299f
                  xor          a0, t6, tp
281:              and          t0, t4, s8
                  or           s1, a7, zero
                  ori          s0, a3, 143
                  auipc        a7, 1025833
                  sub          t4, t3, t5
                  auipc        a2, 380798
                  blt          s4, s0, 291f
                  blt          a4, t6, 298f
                  slli         a6, s5, 11
                  bgeu         t5, s7, 309f
291:              sra          t4, s8, a7
                  srli         a5, s8, 13
                  auipc        a7, 794230
                  lui          a4, 806305
                  srl          s4, t1, a2
                  srai         zero, gp, 25
                  bltu         s6, t5, 317f
298:              sll          t4, t2, sp
299:              auipc        s1, 589099
                  sub          t2, a7, s8
                  sra          s9, a1, s7
                  bltu         s5, t6, 319f
                  sra          s3, zero, s8
                  slt          a6, tp, s8
                  or           a6, a2, gp
                  slti         t2, t0, -406
                  nop
                  lui          a5, 219777
309:              srl          t4, t6, s9
                  sll          t4, t2, t2
                  sra          gp, s6, t5
                  slli         s2, s4, 13
                  lui          t2, 401204
                  ori          a0, s0, -1819
                  sltiu        a6, s4, 992
                  addi         s7, a3, -1270
317:              xori         s7, t1, 1790
                  xor          t4, s9, sp
319:              srli         zero, tp, 5
                  bne          s1, s9, 340f
                  srai         a0, s1, 7
                  sub          s6, gp, a3
                  auipc        s0, 760294
                  slti         ra, a7, -1701
                  ori          a4, a6, 538
                  or           a7, s11, s1
                  bge          gp, a2, 334f
                  bgeu         s4, s6, 345f
                  bge          a7, zero, 346f
                  sltiu        s11, t4, -964
                  sltu         t6, a0, a3
                  xori         t4, s10, 1504
                  addi         s7, a3, 1415
334:              auipc        s0, 1011763
                  nop
                  sub          zero, t1, a0
                  auipc        a3, 226846
                  blt          s4, s11, 351f
                  xor          sp, s11, ra
340:              auipc        a2, 231948
                  slti         a3, zero, 1524
                  slti         s8, t5, 634
                  addi         s9, s5, 1410
                  slt          s10, a5, a4
345:              blt          a2, zero, 356f
346:              bgeu         zero, s1, 354f
                  auipc        s7, 675154
                  auipc        a2, 957438
                  srai         t2, s4, 10
                  xor          a3, s10, s9
351:              xor          a7, t6, a5
                  srai         s4, s5, 28
                  sltiu        s2, tp, -1451
354:              bne          tp, t1, 370f
                  slt          a7, ra, a2
356:              addi         s0, a3, 360
                  bge          gp, s8, 375f
                  andi         a4, s6, 870
                  blt          a1, a3, 362f
                  bge          t1, a0, 367f
                  slli         gp, t2, 17
362:              sltiu        t6, a2, -1107
                  addi         a6, s10, 138
                  and          t4, t4, t0
                  sll          t3, sp, t3
                  blt          t6, s7, 378f
367:              auipc        a1, 700178
                  nop
                  ori          t3, a0, 664
370:              sll          ra, t4, s1
                  beq          a3, s10, 381f
                  slti         a0, s5, -1647
                  srai         a0, s6, 14
                  sltiu        gp, s1, 486
375:              blt          zero, sp, 382f
                  bltu         a7, s0, 393f
                  addi         a1, a4, -107
378:              sltiu        s4, a6, -1927
                  slt          s9, s5, t6
                  lui          s7, 649051
381:              bltu         s0, s7, 393f
382:              addi         t3, gp, -1880
                  bne          s3, a4, 388f
                  sltiu        s8, a7, -1280
                  bgeu         t4, s5, 394f
                  sub          s2, a6, tp
                  slt          t4, s0, tp
388:              addi         s1, tp, -3
                  slt          a7, gp, sp
                  bgeu         t2, a2, 404f
                  add          a5, gp, s8
                  nop
393:              lui          s9, 524985
394:              srai         a5, a0, 19
                  slt          a1, t4, s4
                  srl          sp, a5, ra
                  nop
                  auipc        t4, 909103
                  slt          sp, s0, ra
                  and          t2, s11, t4
                  slt          s3, s3, s2
                  sltu         s5, t5, a5
                  xor          t0, t0, a3
404:              lui          t6, 1006229
                  addi         s5, zero, -1812
                  bgeu         s4, s2, 413f
                  andi         s11, a0, 565
                  bgeu         a3, s10, 414f
                  auipc        a0, 961404
                  nop
                  sll          a3, ra, t2
                  ori          a3, s10, -1724
413:              auipc        a6, 818296
414:              and          s10, zero, a7
                  bge          a5, s4, 427f
                  slti         a3, s8, -1963
                  xor          s1, s0, s3
                  xor          sp, ra, a2
                  and          s6, t3, a2
                  and          t4, s6, a4
                  srl          s10, a2, s3
                  xori         s8, t0, 467
                  andi         ra, a0, 206
                  sltu         zero, t6, s5
                  bgeu         zero, a0, 432f
                  blt          a1, zero, 443f
427:              slt          a6, s6, s3
                  andi         s10, sp, -367
                  blt          s1, a7, 440f
                  slti         s3, a4, -948
                  slli         s8, t5, 30
432:              slt          a2, s8, t4
                  auipc        t0, 839344
                  slt          a2, tp, t4
                  slti         s11, s2, -759
                  bltu         t0, s8, 456f
                  blt          a4, s10, 449f
                  srl          s3, sp, s6
                  sltiu        a0, s0, -912
440:              srli         s3, t2, 17
                  add          s7, tp, zero
                  srli         s11, a5, 8
443:              xor          s6, a2, a7
                  bltu         a7, t3, 461f
                  andi         gp, a6, 698
                  beq          a5, a7, 456f
                  sra          t3, s10, tp
                  beq          s4, a4, 467f
449:              xori         a1, a0, 1820
                  nop
                  srl          a2, t2, a2
                  srli         a5, s11, 3
                  sltiu        a2, zero, 1457
                  sltiu        a4, ra, -1770
                  slli         a5, a2, 4
456:              add          zero, s3, t3
                  bne          t4, zero, 463f
                  and          t4, s0, s6
                  bge          t1, s0, 465f
                  xor          zero, a1, a0
461:              slli         s0, s6, 31
                  bge          t3, a0, 472f
463:              bne          a6, s1, 471f
                  ori          s5, zero, 1607
465:              bge          t1, tp, 472f
                  srai         t3, a7, 28
467:              nop
                  bgeu         sp, s2, 488f
                  srli         a1, s3, 19
                  xori         s7, a2, 18
471:              and          t2, zero, s9
472:              bgeu         s10, t4, 485f
                  lui          a6, 816337
                  sll          s0, s6, s8
                  beq          gp, a2, 493f
                  nop
                  nop
                  srai         ra, t0, 1
                  blt          a7, s6, 488f
                  sll          t4, tp, a0
                  or           a3, s8, a3
                  bgeu         gp, a6, 486f
                  sll          s5, s6, gp
                  srli         gp, t5, 31
485:              lui          t4, 864013
486:              blt          s7, a1, 490f
                  slli         s5, s2, 29
488:              xor          t4, t5, s4
                  nop
490:              bge          s0, tp, 507f
                  and          ra, a1, a7
                  srli         zero, ra, 20
493:              srai         a4, a7, 12
                  or           t4, t6, t5
                  lui          a5, 433036
                  srl          s1, s3, s6
                  bne          t1, s9, 504f
                  sll          s10, a2, t5
                  srli         a5, t4, 19
                  srli         t3, s0, 4
                  slt          zero, s10, t4
                  ori          gp, t1, -429
                  bltu         t1, s1, 520f
504:              lui          a0, 233691
                  addi         t4, s9, -1397
                  srli         a3, a0, 12
507:              andi         s7, t1, 981
                  bge          s11, t6, 513f
                  beq          s7, s6, 523f
                  andi         sp, s6, -200
                  xor          s11, tp, t0
                  sll          a2, s1, zero
513:              bltu         t1, a7, 516f
                  addi         s10, s3, 1355
                  srai         s3, t0, 31
516:              bltu         t5, zero, 523f
                  bltu         gp, a0, 537f
                  nop
                  xori         s10, s2, 1447
520:              lui          s5, 44228
                  bge          s0, a5, 534f
                  ori          a4, a1, -1865
523:              nop
                  slt          t0, tp, sp
                  srli         s0, s5, 28
                  xori         s10, t6, -619
                  slt          s8, tp, s5
                  bltu         s8, t1, 544f
                  ori          s5, a2, -249
                  ori          a4, tp, 335
                  sra          t6, s11, gp
                  sra          t3, s3, s1
                  or           a1, s4, a4
534:              auipc        t2, 668057
                  xor          s5, s11, ra
                  blt          s5, tp, 556f
537:              beq          a7, a6, 553f
                  blt          a2, s3, 558f
                  add          gp, s2, a0
                  addi         s6, s2, -163
                  addi         gp, a5, 430
                  bne          t6, s4, 561f
                  and          s10, ra, t1
544:              slt          a3, s8, gp
                  ori          s11, s9, -73
                  sltiu        t6, a7, 662
                  xor          s1, s6, t6
                  ori          s10, s1, 531
                  sub          s9, t0, t5
                  beq          a6, ra, 567f
                  bgeu         a6, a4, 565f
                  lui          s2, 722332
553:              sub          s3, s7, s2
                  slt          s11, s4, s8
                  andi         t3, s9, 1984
556:              sra          ra, s5, sp
                  lui          a4, 662383
558:              sra          zero, a1, a2
                  sra          a2, s5, a2
                  andi         a7, s0, -1118
561:              sltu         s1, s1, s10
                  sub          ra, t1, s9
                  srai         t2, t4, 5
                  slti         s7, t3, -901
565:              bltu         a0, s11, 572f
                  lui          s1, 956825
567:              xor          t4, a4, t6
                  lui          s6, 859624
                  sub          s1, ra, t2
                  blt          a5, s9, 575f
                  beq          s10, a2, 577f
572:              auipc        a5, 772753
                  slli         s2, s10, 17
                  bgeu         a4, t5, 578f
575:              blt          t3, s11, 582f
                  blt          ra, s2, 589f
577:              and          t0, t5, t0
578:              slti         t6, t0, 1158
                  xori         s8, s3, 386
                  xor          s7, s5, s2
                  xor          a1, s8, s11
582:              and          s1, t1, t3
                  xori         s9, s2, 1724
                  nop
                  xori         s7, s0, -714
                  nop
                  bne          zero, t6, 593f
                  slli         a2, t2, 7
589:              andi         a3, s2, -1314
                  sra          s11, t0, zero
                  ori          s4, t2, -1490
                  bltu         sp, s10, 600f
593:              blt          a0, ra, 610f
                  andi         a1, s7, 1616
                  sltiu        s7, s9, 1786
                  bne          s11, a0, 616f
                  bltu         t0, s11, 600f
                  sltiu        a1, t0, 154
                  lui          a7, 164796
600:              nop
                  srli         s2, s10, 19
                  sltiu        s5, gp, -1393
                  bge          t6, t4, 621f
                  srl          t0, sp, t3
                  blt          zero, t3, 609f
                  sra          s8, a7, a7
                  xori         s1, t2, -345
                  xori         gp, a2, 608
609:              sub          s9, a2, s10
610:              nop
                  lui          zero, 569653
                  blt          a7, a5, 623f
                  add          s4, t2, s1
                  sltiu        a5, s7, 1502
                  add          s11, s4, s2
616:              srai         t3, s0, 0
                  sltiu        t3, a5, -1227
                  slt          sp, a3, gp
                  bge          s4, s7, 631f
                  slti         s2, a1, 1967
621:              add          t4, t4, zero
                  sltiu        s5, s8, -469
623:              slli         s9, t2, 29
                  nop
                  sltu         a1, ra, a0
                  ori          s8, t5, -175
                  ori          s10, s5, 1146
                  sub          s3, s7, a5
                  slli         a1, s8, 18
                  or           a4, s7, s9
631:              bge          t2, zero, 641f
                  bge          s3, s6, 641f
                  add          s0, t0, a5
                  slt          s0, a0, s8
                  ori          t0, s11, 308
                  or           a1, t0, s7
                  sra          s10, ra, tp
                  bne          a2, s0, 645f
                  nop
                  add          t3, a2, t5
641:              andi         a1, a3, -1282
                  bgeu         t4, s7, 659f
                  addi         a1, t0, 990
                  lui          a3, 896445
645:              bge          a2, t0, 657f
                  or           ra, t3, a7
                  srai         s4, s8, 16
                  sub          zero, s10, a0
                  ori          s6, a2, 1947
                  bne          t4, s4, 657f
                  addi         s8, s9, -923
                  or           t3, s0, a5
                  sra          t6, s11, t5
                  sub          a4, s9, a3
                  sll          s6, s11, s5
                  lui          s2, 486501
657:              sub          t3, t3, a1
                  auipc        t6, 418925
659:              slli         s9, a5, 10
                  and          ra, s4, s8
                  bne          s7, s1, 674f
                  sra          a3, a7, gp
                  nop
                  slt          zero, s3, s0
                  sll          sp, ra, t2
                  auipc        ra, 51162
                  xor          t6, a4, s2
                  slti         s2, s6, 1941
                  slt          a0, a6, s7
                  ori          s2, gp, -357
                  lui          s5, 577046
                  lui          s1, 411019
                  bne          s1, zero, 690f
674:              and          zero, s8, t6
                  bgeu         t0, s10, 685f
                  bltu         s2, s7, 685f
                  blt          s4, ra, 684f
                  sll          s0, s5, s6
                  ori          s9, gp, -549
                  slli         t6, s10, 5
                  bne          s7, t1, 694f
                  bltu         s1, s7, 688f
                  bge          s0, t1, 702f
684:              bge          s2, a7, 692f
685:              bgeu         s3, a4, 691f
                  sra          a5, a7, a4
                  blt          a1, s0, 704f
688:              beq          s4, s7, 698f
                  sub          s5, a2, s11
690:              addi         t3, s9, -571
691:              slti         a6, s11, 532
692:              xor          a4, t6, s8
                  sltu         t6, t6, a0
694:              slt          s6, t1, s10
                  bltu         ra, a5, 699f
                  xor          s4, s4, sp
                  add          a0, s7, s11
698:              xor          s11, s2, a4
699:              auipc        s6, 697580
                  blt          s0, s7, 716f
                  blt          t4, s10, 715f
702:              slt          t2, sp, s10
                  or           s5, s6, s6
704:              srli         t2, t3, 30
                  addi         s2, a4, -1294
                  sltiu        t3, s10, -1235
                  beq          gp, s11, 727f
                  andi         sp, gp, 78
                  bge          t5, a3, 716f
                  xor          a1, s4, s7
                  or           s3, a6, s5
                  srli         a3, t3, 4
                  lui          s5, 354675
                  beq          t1, t6, 731f
715:              sub          a2, a3, t2
716:              lui          zero, 170979
                  add          s5, s10, s2
                  srl          a3, s2, a6
                  sub          a0, sp, s7
                  srli         a4, ra, 7
                  lui          a0, 711000
                  xor          sp, t5, s10
                  slli         a2, a1, 0
                  slt          s2, s3, a0
                  srai         s7, tp, 26
                  srl          s5, a7, s3
727:              bgeu         a5, s5, 732f
                  bgeu         s10, s5, 732f
                  sltiu        s8, a5, 1542
                  srl          s10, s4, a4
731:              bge          s5, a2, 748f
732:              xor          a7, s2, s11
                  and          a1, t5, a3
                  slli         s5, t6, 14
                  and          a5, s11, t0
                  beq          s3, tp, 748f
                  srli         zero, s0, 23
                  add          s3, t5, t6
                  sra          s8, t0, a4
                  bge          tp, t0, 751f
                  sra          a2, a3, sp
                  srl          t4, s1, t2
                  srai         s2, s7, 27
                  srai         t6, gp, 2
                  bge          tp, s2, 765f
                  addi         s10, s10, -1196
                  and          a2, a7, s6
748:              bge          a1, s3, 755f
                  sra          s7, t1, a1
                  addi         t4, a7, 1442
751:              srai         a0, a0, 28
                  slt          s8, t4, s7
                  sub          a3, a5, s4
                  andi         s5, t4, -693
755:              and          t2, s0, s2
                  srli         s11, t0, 29
                  slti         s11, s5, 781
                  bge          t3, a4, 778f
                  lui          s8, 179064
                  bne          t3, t1, 763f
                  blt          s7, t5, 768f
                  addi         s8, sp, 639
763:              ori          sp, t1, -1255
                  sll          a0, s6, a0
765:              sll          gp, s2, s2
                  and          a0, s2, a0
                  srai         s9, t5, 13
768:              beq          s10, s0, 780f
                  srai         a1, s5, 4
                  andi         t3, a7, 52
                  addi         s5, gp, 776
                  sltiu        a5, t2, -1347
                  xor          s0, s3, s11
                  auipc        s2, 339847
                  lui          a6, 904166
                  sub          s2, a0, a7
                  bgeu         s8, s10, 795f
778:              bgeu         s3, a3, 795f
                  sub          a6, s2, s11
780:              bgeu         a0, tp, 790f
                  sll          a4, tp, s1
                  slli         s5, a4, 7
                  srai         a6, s6, 21
                  sltu         s4, s9, s10
                  slli         a5, s8, 4
                  xor          s5, a3, s8
                  slt          gp, a7, a4
                  sub          a5, t6, t0
                  slt          t2, t4, t1
790:              or           s11, sp, s9
                  beq          a2, a6, 804f
                  xor          a2, s4, a2
                  addi         a0, a4, 298
                  or           a3, tp, ra
795:              ori          t2, t5, -439
                  nop
                  xori         s2, t0, 1633
                  slt          a0, t5, s7
                  sub          t2, a1, s5
                  slti         t0, t4, 486
                  lui          a5, 829391
                  sltu         s2, t2, s3
                  bge          a5, s7, 807f
804:              slti         s11, t2, -1183
                  sub          a4, sp, a2
                  slt          s6, t5, zero
807:              add          s2, a6, t6
                  auipc        t3, 986445
                  lui          t3, 445193
                  xor          a3, s5, s3
                  srai         s3, a3, 8
                  bge          t4, s0, 820f
                  bge          s2, t5, 826f
                  sltiu        s8, a6, -480
                  add          a2, s5, t4
                  add          a6, t6, a5
                  xori         a6, s5, 958
                  srli         zero, s1, 19
                  lui          zero, 822489
820:              bltu         a0, s2, 840f
                  or           s10, a3, t1
                  blt          a0, s11, 832f
                  bltu         s1, a0, 836f
                  bne          a1, s1, 844f
                  or           s7, s9, t0
826:              auipc        sp, 778616
                  slti         a0, t3, -320
                  bgeu         s6, s0, 844f
                  sra          s1, a7, t0
                  or           zero, t4, t2
                  andi         s7, t5, -613
832:              or           a3, ra, s9
                  lui          t6, 293776
                  bge          s4, ra, 841f
                  ori          t0, t2, 1624
836:              ori          a3, a3, 572
                  nop
                  sltu         s2, a3, t2
                  nop
840:              bgeu         a3, a1, 844f
841:              slti         s3, s3, -1307
                  sub          a6, a7, a0
                  sltu         gp, a5, s3
844:              slli         a4, t2, 7
                  bge          ra, s4, 865f
                  beq          s6, a0, 853f
                  ori          a6, s8, 1424
                  sub          t0, a2, s2
                  xori         a3, s2, -1474
                  blt          t1, s10, 867f
                  addi         a3, t1, -136
                  blt          t0, tp, 871f
853:              bgeu         t5, s8, 862f
                  add          a3, t6, a3
                  sll          a0, a0, zero
                  beq          t0, s11, 873f
                  beq          s0, gp, 862f
                  sra          a4, s2, s3
                  nop
                  ori          a6, a4, 1902
                  sll          a1, a2, t4
862:              slti         a2, a4, 1173
                  sub          t2, a5, t1
                  lui          s5, 38024
865:              xor          a4, zero, a7
                  sub          s6, t0, gp
867:              sltiu        a7, s2, 1222
                  andi         s8, s10, -2030
                  srli         s10, s6, 21
                  add          t0, t2, s5
871:              srl          t4, s2, s3
                  add          a4, s5, tp
873:              add          t2, s5, a2
                  sra          a3, s9, t1
                  addi         s2, zero, 706
                  bge          t1, a4, 888f
                  andi         s9, a4, -1493
                  sra          s1, s6, gp
                  slt          s8, s10, s2
                  bltu         ra, t2, 891f
                  sll          s4, a2, gp
                  nop
                  nop
                  sll          s11, sp, s4
                  bge          t0, s0, 888f
                  nop
                  blt          s1, t5, 899f
888:              sltiu        t2, t6, 33
                  sltiu        a0, a4, 355
                  beq          s2, a6, 896f
891:              slt          a2, s6, t1
                  blt          a5, sp, 902f
                  slli         zero, s4, 28
                  ori          sp, zero, 832
                  srai         s10, s7, 2
896:              srai         a2, a2, 25
                  sub          t0, t4, a6
                  srl          t6, t2, s1
899:              sltiu        gp, t5, -1840
                  bltu         a2, a7, 906f
                  sltu         t2, t4, t0
902:              xori         s3, a1, 1422
                  lui          s11, 68931
                  srai         a6, a6, 27
                  sra          t2, a5, t0
906:              slli         sp, s3, 25
                  srli         t4, ra, 5
                  srli         s4, s4, 16
                  srli         t6, s8, 0
                  bltu         s5, t0, 917f
                  slli         t4, tp, 11
                  addi         a2, s7, 1038
                  andi         s10, s11, 223
                  nop
                  slti         a3, zero, -382
                  addi         gp, a4, -568
917:              bltu         t6, sp, 934f
                  and          s6, t6, s4
                  add          s3, a0, sp
                  srli         s0, s11, 28
                  addi         s11, a3, 1536
                  blt          sp, s1, 929f
                  slt          s3, ra, s9
                  srl          s1, t0, s10
                  sltiu        a6, sp, 1263
                  bltu         a7, s4, 944f
                  sll          a1, s0, s0
                  slli         gp, s11, 30
929:              lui          s8, 691488
                  addi         t2, s1, -874
                  sltu         sp, s2, a1
                  and          s4, t6, s0
                  slti         a2, s0, 641
934:              bne          a5, ra, 948f
                  sub          sp, s7, s6
                  slli         a0, s1, 3
                  sltu         a6, s6, gp
                  sll          a5, s10, s9
                  sll          a7, s5, t4
                  bltu         a0, a4, 957f
                  lui          s9, 990480
                  bne          t5, s8, 962f
                  or           s9, a6, s7
944:              addi         s8, zero, 571
                  lui          gp, 441414
                  slli         s8, t3, 2
                  add          s8, s7, t3
948:              blt          a7, a6, 968f
                  xori         t2, t3, 197
                  auipc        gp, 582222
sub_2_27:         jal          gp, 2f
0:                jal          gp, 11f
1:                jal          ra, 5f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          s7, 10f
8:                jal          ra, 13f
9:                jal          t3, 3b
10:               jal          ra, 1b
11:               jal          ra, 8b
12:               jal          gp, 6b
13:               jal          ra, 15f
14:               jal          ra, 0b
15:               jal          ra, 16f
16:               ori          s5, a7, -1891
                  and          t0, tp, t3
                  bge          t3, s11, 959f
                  sltiu        s8, a0, 1341
                  xori         t4, sp, -410
                  bltu         a7, s11, 972f
                  bgeu         t5, s11, 973f
957:              bge          s10, t1, 969f
                  srl          ra, a0, t6
959:              bgeu         t0, s6, 964f
                  or           a6, s10, s8
                  addi         t4, a0, -1151
962:              slt          ra, a4, t3
                  slt          a6, s2, tp
964:              or           s8, t2, s0
                  andi         s0, sp, 1258
                  add          t4, t5, s11
                  beq          tp, a3, 977f
968:              xori         s10, s1, -94
969:              add          s0, t0, s9
                  auipc        zero, 743447
                  slt          ra, a1, s7
972:              sll          ra, t4, ra
973:              add          ra, t6, a0
                  srl          s0, s0, a6
                  sltiu        a0, a0, 753
                  sll          s8, t6, a2
977:              srl          a4, a6, tp
                  srl          s2, s9, ra
                  blt          s6, s10, 996f
                  slti         t2, sp, -607
                  nop
                  bge          a5, a4, 986f
                  xori         s6, s3, 1700
                  sub          t0, a5, a2
                  auipc        s1, 644122
986:              xori         s0, zero, 1772
                  slli         a1, t5, 28
                  lui          t6, 564098
                  sll          s3, s0, a4
                  addi         gp, t0, -1691
                  sltu         ra, sp, t1
                  srli         s8, t6, 14
                  bne          a2, tp, 1006f
                  slli         s8, t2, 8
                  sll          s5, t0, t2
996:              sub          s5, a3, t4
                  ori          t6, a0, -1254
                  sltu         t4, t0, s9
                  sltu         a7, s8, s5
                  bgeu         t6, s1, 1003f
                  bge          t0, t6, 1007f
                  xor          gp, t4, t1
1003:             xor          s10, s3, t5
                  srl          t3, a7, s3
                  xori         t4, t0, 1936
1006:             slt          s0, sp, gp
1007:             add          t0, a0, s0
                  bge          s6, a2, 1015f
                  addi         sp, a6, 752
                  bne          s11, a2, 1019f
                  xori         t3, ra, -487
                  bgeu         t3, s11, 1022f
                  slli         t2, s11, 18
                  bltu         s6, s10, 1028f
1015:             add          a1, s11, s3
                  slli         s0, a4, 14
                  bgeu         t4, gp, 1034f
                  xor          a7, t1, s1
1019:             sra          a6, s10, t1
                  and          sp, zero, a5
                  add          a4, s0, s1
1022:             xori         s8, a7, 1296
                  srai         a3, t1, 31
                  slt          s6, s6, sp
                  sll          s8, s1, zero
                  xori         s6, s4, -609
                  ori          s0, gp, -895
1028:             bgeu         a0, s11, 1048f
                  srai         s8, t2, 3
                  nop
                  sub          s2, ra, tp
                  xori         s4, s10, 1714
                  bne          a1, s2, 1044f
1034:             beq          s10, s2, 1041f
                  sra          s2, a3, a2
                  beq          s6, zero, 1054f
                  srli         t3, ra, 7
                  sltu         t6, s9, ra
                  and          t6, a7, s3
                  bge          a5, a5, 1046f
1041:             nop
                  srl          t4, tp, t4
                  slt          t3, s5, t1
1044:             xor          s3, s2, s11
                  xor          t0, t3, a6
1046:             sub          t2, s3, a7
                  addi         t2, s5, 1430
1048:             sll          t4, t6, s3
                  slti         s1, t0, -2041
                  add          a3, t1, zero
                  slli         t3, t1, 10
                  srli         a1, ra, 27
                  sra          s2, s3, s11
1054:             bltu         s1, t2, 1067f
                  xor          a2, a7, s11
                  bge          a5, a0, 1072f
                  slti         s4, s4, 1013
                  bne          t2, t6, 1077f
                  and          a1, s9, a7
                  nop
                  nop
                  addi         s7, tp, 1552
                  nop
                  auipc        a1, 161755
                  blt          s3, s4, 1072f
                  sll          s8, s4, a7
1067:             lui          t2, 695915
                  sll          s4, t6, s7
                  nop
                  slli         s11, t5, 5
                  sub          a2, a1, t6
1072:             ori          s4, s2, -978
                  add          s8, s11, t2
                  and          s3, a5, a1
                  slt          s10, s0, s7
                  srl          a6, s5, t0
1077:             bltu         s8, a7, 1085f
                  nop
                  nop
                  sub          s10, s8, tp
                  and          zero, t2, s1
                  sltiu        t2, t1, 1758
                  add          a0, t0, s8
                  addi         t6, s1, -1520
1085:             andi         t2, gp, 1608
                  xor          a4, a0, s3
                  nop
                  andi         t0, t5, 191
                  srl          t2, t1, s5
                  bltu         s2, s6, 1102f
                  add          s9, t2, t4
                  srli         s10, s5, 11
                  bge          s0, ra, 1097f
                  nop
                  addi         a2, gp, -1878
                  sub          ra, zero, t2
1097:             or           a1, a6, s6
                  add          sp, t3, t5
                  auipc        t0, 964296
                  ori          s1, t1, 872
                  sll          s5, sp, s7
1102:             beq          s3, a2, 1120f
                  and          s10, t1, a5
                  sll          a5, sp, t3
                  sub          s2, s4, a0
                  blt          a3, s2, 1114f
                  and          t3, a2, s5
                  addi         ra, t2, -1309
                  sll          s2, s7, a3
                  ori          t4, s2, -243
                  beq          s3, a2, 1123f
                  bge          a0, t3, 1119f
                  slti         s11, a4, 700
1114:             sltu         t0, s1, a7
                  or           a6, t1, a6
                  or           gp, s4, zero
                  ori          t3, t0, 1980
                  add          a2, a6, s10
1119:             beq          s0, s0, 1139f
1120:             bltu         s5, ra, 1139f
                  bne          a2, ra, 1128f
                  srl          t4, t3, s6
1123:             bgeu         t4, sp, 1136f
                  auipc        a5, 204784
                  addi         s7, a7, 1744
                  sltiu        s8, t6, -1857
                  srli         s6, a3, 11
1128:             srai         s3, s3, 9
                  xor          a5, a7, sp
                  bge          ra, gp, 1133f
                  or           t0, ra, a7
                  auipc        a2, 189870
1133:             srl          a7, a7, t1
                  or           s8, s9, a1
                  sub          s10, a5, a0
                  or           gp, t2, s5
                  xori         a5, a4, -331
                  srl          s11, t0, t0
                  nop
                  sub          gp, s3, t2
                  andi         s9, a5, 668
                  sltiu        s3, t0, -128
                  addi         a7, zero, 1845
                  sll          a1, a2, s5
sub_2_j3:         jal          gp, sub_3 #jump sub_2 -> sub_3
1136:             bgeu         a5, t3, 1142f
                  beq          s11, s8, 1141f
                  srl          s2, zero, t5
1139:             bgeu         t3, t6, 1146f
                  sra          a4, t6, zero
1141:             ori          s3, s4, -1314
1142:             addi         gp, s2, 1224
                  slti         a0, s4, 228
                  lui          sp, 351536
                  sltiu        a2, t0, 33
1146:             auipc        s11, 603391
                  slli         t3, zero, 2
                  beq          a4, s1, 1165f
                  sll          s10, ra, s6
                  xori         t6, t5, 1584
                  srli         t0, s3, 13
                  xori         t4, t2, 1744
                  auipc        s6, 741683
                  ori          t2, sp, 293
                  sltu         s0, t4, a7
                  sltu         a4, ra, s11
                  bge          t6, a4, 1161f
                  auipc        s0, 213880
                  lui          a2, 559455
                  bgeu         a5, s0, 1177f
1161:             addi         a6, s9, -1000
                  and          sp, t6, tp
                  ori          t2, s6, -1274
                  srl          t0, s5, t4
1165:             auipc        s4, 654952
                  xor          gp, s7, s5
                  srai         s4, s0, 22
                  slti         s10, a5, -1286
                  nop
                  auipc        gp, 630645
                  bgeu         tp, a2, 1188f
                  or           s4, a7, a1
                  srli         t3, t5, 1
                  slt          t3, t1, s1
                  and          s11, a2, s4
                  srl          s4, t6, s7
1177:             xor          s2, t0, a7
                  slti         a2, a7, 1728
                  sra          sp, t3, s1
                  or           t3, s2, a1
                  slti         s3, t0, -251
                  slt          a7, tp, t1
                  xor          s0, zero, s10
                  blt          sp, tp, 1201f
                  slli         s7, t5, 18
                  add          a4, gp, a5
                  sltu         s7, s0, s1
1188:             sub          a2, s1, s10
                  add          s4, a2, a5
                  lui          ra, 541209
                  lui          s7, 334182
                  bne          s9, t4, 1202f
                  addi         ra, a5, -449
                  bgeu         a6, s5, 1205f
                  sll          s5, t3, s2
                  bltu         s10, s9, 1216f
                  auipc        s8, 956919
                  or           a1, s1, sp
                  sub          a2, a1, s1
                  srl          s1, s1, s6
1201:             slti         a3, tp, -279
1202:             andi         t2, s7, -1940
                  sra          s1, ra, s9
                  bne          tp, gp, 1211f
1205:             slli         a2, a7, 15
                  sll          s10, a2, gp
                  nop
                  srai         a0, s7, 19
                  bge          zero, a6, 1214f
                  add          sp, s7, s6
1211:             lui          s3, 482506
                  sra          s4, t1, t6
                  bgeu         t4, s3, 1233f
1214:             andi         a5, s6, -1260
                  slti         s0, a4, -74
1216:             lui          a6, 569976
                  xor          sp, s2, zero
                  blt          tp, s11, 1227f
                  sub          t4, s6, s9
                  sltiu        s9, tp, 139
                  auipc        sp, 949734
                  slt          zero, s8, a4
                  bge          a1, t4, 1229f
                  sltu         t4, s4, s9
                  bgeu         s7, a2, 1237f
                  xori         t2, t2, 1796
1227:             sub          a6, t1, s4
                  lui          s5, 253317
1229:             nop
                  addi         s5, s2, 373
                  add          a5, a4, ra
                  lui          t3, 804172
1233:             sltiu        t2, s3, 169
                  slti         a4, s0, -84
                  auipc        a5, 437234
                  srai         s3, a1, 5
1237:             nop
                  xor          s9, t2, t6
sub_2_2:          jal          gp, 11f
0:                jal          ra, 4f
1:                jal          t6, 5f
2:                jal          ra, 9f
3:                jal          ra, 6f
4:                jal          ra, 15f
5:                jal          ra, 8f
6:                jal          s2, 2b
7:                jal          ra, 0b
8:                jal          ra, 25f
9:                jal          s3, 17f
10:               jal          t0, 7b
11:               jal          ra, 3b
12:               jal          s1, 24f
13:               jal          s2, 1b
14:               jal          sp, 22f
15:               jal          s9, 18f
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          a7, 20f
19:               jal          ra, 13b
20:               jal          ra, 26f
21:               jal          ra, 10b
22:               jal          sp, 23f
23:               jal          ra, 12b
24:               jal          t6, 16b
25:               jal          sp, 21b
26:               lui          gp, 218192
                  xori         s2, s0, -1849
                  nop
                  bltu         s9, a0, 1254f
                  sll          s11, t4, t1
                  lui          a4, 657805
                  addi         a5, a5, 1543
                  lui          s4, 257380
                  bge          a6, s5, 1256f
                  sub          a7, s4, t0
                  bgeu         ra, s11, 1264f
                  sltu         s6, a0, s2
                  slt          s5, s2, s9
sub_2_15:         jal          gp, 1f
0:                jal          ra, 4f
1:                jal          a5, 0b
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 15f
6:                jal          ra, 14f
7:                jal          sp, 12f
8:                jal          ra, 21f
9:                jal          a3, 8b
10:               jal          ra, 9b
11:               jal          ra, 6b
12:               jal          sp, 20f
13:               jal          ra, 23f
14:               jal          ra, 17f
15:               jal          ra, 18f
16:               jal          ra, 11b
17:               jal          ra, 2b
18:               jal          ra, 13b
19:               jal          ra, 16b
20:               jal          ra, 22f
21:               jal          ra, 7b
22:               jal          a1, 19b
23:               slli         t2, t2, 19
                  slt          a0, s3, tp
                  sltiu        a2, s9, 1070
                  sltiu        a7, t3, -97
1254:             slt          s11, s4, s5
                  lui          t2, 588135
1256:             sltu         t2, s9, t3
                  sltu         a7, s11, s9
                  sub          sp, s11, s7
                  addi         a4, s8, 1778
                  bne          s4, t5, 1274f
                  slt          a3, a2, a0
                  ori          s7, ra, 1420
                  srai         s0, s3, 2
1264:             sltiu        ra, s5, -1467
                  blt          s8, s10, 1277f
                  or           a7, t6, a3
                  sub          s9, s1, s11
                  sub          t3, s8, s5
                  bltu         a4, s0, 1285f
                  or           a4, a7, s8
                  sra          a2, a2, t1
                  slti         s6, sp, 94
                  slti         s6, s1, 157
1274:             sub          a4, s9, a0
                  srli         t6, a1, 15
                  srai         zero, t6, 31
1277:             bge          s8, s5, 1294f
                  and          s9, a1, s6
                  sll          s11, s5, s8
                  auipc        a3, 428109
                  sub          t3, s8, a2
                  bltu         a5, t6, 1300f
                  sll          s3, s0, a4
                  xor          a4, a0, t4
1285:             nop
                  auipc        s2, 54446
                  bne          a6, zero, 1293f
                  bge          a0, t4, 1292f
                  beq          t5, a6, 1306f
                  bne          sp, tp, 1298f
                  addi         s11, a0, 8
1292:             sub          t4, s7, s5
1293:             srai         t6, s8, 17
1294:             sltu         a6, t2, s9
                  andi         s10, s3, -13
                  slt          s10, s5, a2
                  and          a1, s5, tp
1298:             srli         s4, s9, 19
                  bge          t3, gp, 1309f
1300:             ori          t6, t4, -1973
                  srai         a5, t4, 8
                  addi         gp, t4, 799
                  bne          a5, t3, 1316f
                  or           s0, tp, s4
                  srai         s5, t2, 14
1306:             nop
                  or           sp, s3, s2
                  sll          t4, s9, a3
1309:             nop
                  bne          ra, sp, 1317f
                  srli         a2, zero, 11
                  bltu         t6, a5, 1324f
                  xori         s5, s9, 457
                  sub          s5, zero, s7
                  slti         a0, a2, -680
1316:             beq          ra, t6, 1336f
1317:             and          s0, s7, t1
                  auipc        a1, 589125
                  or           t4, a6, t6
                  xori         s1, ra, -387
                  or           s1, t5, a5
                  sltu         a7, s11, s0
                  add          s10, a1, a3
1324:             nop
                  xor          t6, t5, tp
                  srai         t2, s1, 13
                  bne          t0, s6, 1334f
                  srai         s0, a6, 12
                  and          t4, s0, gp
                  srl          a6, a4, t5
                  beq          gp, a2, 1335f
                  ori          s11, a0, -777
                  bge          a5, s3, 1342f
1334:             bge          s11, t5, 1351f
1335:             nop
1336:             sub          s7, s6, t5
                  bne          t5, a2, 1350f
                  sltiu        t6, s6, 1154
                  auipc        ra, 322767
                  addi         s2, s10, 1552
                  srai         s6, a2, 22
1342:             sub          t6, s8, t3
                  and          t0, s6, t2
                  add          a4, t5, t1
                  ori          gp, s0, -462
                  ori          t0, t5, -1471
                  bne          t6, s8, 1352f
                  beq          s0, s11, 1362f
                  blt          sp, s4, 1356f
1350:             srl          s7, s6, s6
1351:             sltiu        s0, t3, -1199
1352:             and          t2, s4, t2
                  ori          a0, a6, 766
                  andi         t3, t0, 734
                  add          s0, s3, a4
1356:             sltu         s11, t3, s4
                  srl          t2, a6, a1
                  add          s4, t6, s10
                  beq          t5, a7, 1366f
                  sub          gp, a5, t2
                  nop
1362:             lui          s9, 503648
                  sub          a5, s9, s10
                  blt          s6, s4, 1370f
                  bltu         s0, s2, 1385f
1366:             nop
                  xori         a6, t2, 1953
                  sltu         zero, s9, t3
                  bne          tp, s0, 1380f
1370:             nop
                  blt          gp, t4, 1388f
                  sltu         sp, sp, t6
                  sub          t2, a1, sp
                  sltu         sp, s9, s0
                  and          t6, gp, t5
                  srai         ra, s3, 26
                  srli         s6, gp, 24
                  xor          t6, s2, a2
                  addi         a0, a1, -138
1380:             and          s9, t6, s11
                  andi         s1, a0, 1624
                  blt          sp, s9, 1402f
                  slt          a3, s2, s7
                  sll          s9, s4, a6
1385:             beq          s8, a7, 1395f
                  and          s11, a1, s1
                  nop
1388:             srai         t2, t5, 21
                  add          s4, s2, t0
                  lui          s6, 220528
                  srli         a4, sp, 6
                  add          a6, sp, t0
                  andi         a6, a6, -1333
                  bltu         s4, s6, 1397f
1395:             srai         a1, t5, 26
                  ori          a6, t5, 1366
1397:             nop
                  add          a7, s6, s10
                  and          a0, a4, a6
                  ori          a6, a4, -1388
                  srl          s9, a7, s4
1402:             bge          t2, t0, 1415f
                  xori         s11, t3, -148
                  bge          a0, t2, 1415f
                  xori         s6, a0, 1222
                  beq          a0, s1, 1415f
                  srai         s9, a3, 22
                  bge          t0, t2, 1412f
                  beq          a4, s3, 1415f
                  sll          s4, a1, s2
                  auipc        s4, 740717
1412:             sll          s8, a6, t5
                  ori          a1, sp, 1292
                  andi         t6, t6, -864
1415:             srai         a7, t1, 19
                  lw           gp, 4(tp)
                  sltiu        t4, s9, 1475
                  auipc        zero, 343142
                  ori          a1, t4, 828
                  slti         s11, sp, -847
                  addi         t6, gp, 467
                  srli         a1, zero, 7
                  addi         tp, tp, 24
                  add          a2, a2, s10
                  sltiu        s0, s1, 231
2131:             addi x31, x3, 0
2131:             jalr x31, x31, 0
sub_5:            lui          a0, 936603
                  slti         zero, t0, 327
                  bge          s10, a1, sub_5_stack_p
sub_5_stack_p:    addi         tp, tp, -36
                  lui          s1, 496833
                  and          s5, s4, s2
                  auipc        s10, 430729
                  sltiu        a3, a5, 1984
                  sw           gp, 4(tp)
                  and          s3, s10, s0
                  sltu         s5, a0, a4
sub_5_6:          jal          gp, 11f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          a5, 3f
3:                jal          a4, 21f
4:                jal          s7, 12f
5:                jal          s5, 9f
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          a2, 16f
9:                jal          ra, 23f
10:               jal          ra, 15f
11:               jal          ra, 20f
12:               jal          ra, 24f
13:               jal          a5, 4b
14:               jal          ra, 17f
15:               jal          ra, 6b
16:               jal          sp, 7b
17:               jal          ra, 19f
18:               jal          t0, 2b
19:               jal          ra, 18b
20:               jal          ra, 14b
21:               jal          ra, 0b
22:               jal          ra, 10b
23:               jal          a2, 22b
24:               sltu         gp, ra, s11
sub_5_2:          jal          gp, 14f
0:                jal          ra, 10f
1:                jal          gp, 4f
2:                jal          ra, 0b
3:                jal          t0, 6f
4:                jal          ra, 3b
5:                jal          gp, 23f
6:                jal          t3, 13f
7:                jal          ra, 5b
8:                jal          ra, 17f
9:                jal          t3, 2b
10:               jal          a7, 1b
11:               jal          ra, 16f
12:               jal          ra, 18f
13:               jal          ra, 20f
14:               jal          s4, 19f
15:               jal          ra, 21f
16:               jal          ra, 7b
17:               jal          t0, 11b
18:               jal          ra, 15b
19:               jal          ra, 22f
20:               jal          ra, 8b
21:               jal          s6, 9b
22:               jal          ra, 12b
23:               sub          s11, s2, s8
sub_5_8:          jal          gp, 20f
0:                jal          s0, 8f
1:                jal          ra, 17f
2:                jal          ra, 7f
3:                jal          ra, 13f
4:                jal          ra, 16f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          a2, 21f
8:                jal          ra, 22f
9:                jal          ra, 23f
10:               jal          ra, 14f
11:               jal          sp, 15f
12:               jal          ra, 1b
13:               jal          ra, 24f
14:               jal          s3, 25f
15:               jal          ra, 10b
16:               jal          ra, 19f
17:               jal          ra, 18f
18:               jal          a3, 2b
19:               jal          ra, 12b
20:               jal          t3, 4b
21:               jal          sp, 0b
22:               jal          s6, 9b
23:               jal          ra, 6b
24:               jal          ra, 11b
25:               slti         zero, sp, 957
sub_5_4:          jal          gp, 5f
0:                jal          ra, 8f
1:                jal          s10, 10f
2:                jal          ra, 14f
3:                jal          gp, 2b
4:                jal          a7, 17f
5:                jal          ra, 16f
6:                jal          ra, 7f
7:                jal          s11, 3b
8:                jal          ra, 15f
9:                jal          ra, 13f
10:               jal          a3, 4b
11:               jal          ra, 9b
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          ra, 11b
15:               jal          s4, 12b
16:               jal          ra, 0b
17:               srli         a1, s4, 19
sub_5_7:          jal          gp, 24f
0:                jal          sp, 4f
1:                jal          t3, 5f
2:                jal          ra, 20f
3:                jal          gp, 19f
4:                jal          ra, 14f
5:                jal          ra, 8f
6:                jal          ra, 15f
7:                jal          s4, 9f
8:                jal          ra, 3b
9:                jal          sp, 22f
10:               jal          ra, 12f
11:               jal          ra, 18f
12:               jal          ra, 0b
13:               jal          s5, 21f
14:               jal          ra, 25f
15:               jal          gp, 2b
16:               jal          gp, 7b
17:               jal          ra, 11b
18:               jal          ra, 1b
19:               jal          ra, 10b
20:               jal          t0, 17b
21:               jal          ra, 6b
22:               jal          ra, 13b
23:               jal          ra, 16b
24:               jal          t0, 23b
25:               auipc        s3, 425581
sub_5_3:          jal          gp, 7f
0:                jal          ra, 2f
1:                jal          ra, 0b
2:                jal          s1, 10f
3:                jal          s8, 9f
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          a1, 4b
7:                jal          ra, 5b
8:                jal          s8, 6b
9:                jal          gp, 8b
10:               xor          s4, a5, t0
sub_5_1:          jal          gp, 6f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          ra, 15f
4:                jal          s4, 11f
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          t2, 12f
10:               jal          s11, 13f
11:               jal          ra, 10b
12:               jal          ra, 14f
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               slli         s0, a7, 27
                  xor          s0, t0, t2
                  bgeu         s7, zero, 18f
                  sub          s6, a6, t6
                  andi         a0, t6, -1845
                  slt          s6, s7, ra
                  srai         s6, t6, 15
                  srl          a7, s0, sp
                  sltiu        a6, t4, -846
                  and          t4, s3, t0
                  sll          a2, s10, a5
                  beq          s6, t2, 24f
                  bltu         s7, gp, 23f
                  auipc        s10, 122693
                  slli         a6, s6, 22
                  bne          t4, gp, 22f
                  ori          ra, a5, 1551
                  addi         sp, a0, 1515
                  srai         t0, s0, 20
18:               andi         t6, a3, 1144
                  addi         s3, gp, 988
                  andi         s10, t5, -1708
                  sltu         s5, s10, ra
22:               srl          a7, s6, a2
23:               lui          s5, 525256
24:               sltiu        s6, s1, -990
                  sltu         s3, a2, a7
                  slli         s8, s1, 24
                  sltu         a5, t1, a2
                  bltu         t3, a0, 30f
                  or           zero, t5, a2
30:               bltu         a4, s4, 37f
                  xori         s3, a2, 605
                  bgeu         a1, s6, 36f
                  slli         s7, t5, 19
                  xor          s5, s11, t0
                  srai         s10, a6, 2
36:               sltiu        s4, s9, 71
37:               add          s3, t2, a3
                  and          t4, t2, s2
                  bltu         t2, t6, 40f
40:               nop
                  sll          t6, t2, a3
                  srli         sp, gp, 12
                  sll          a6, a4, s11
                  addi         t0, a0, 1032
                  nop
                  bne          zero, ra, 53f
                  slt          s9, gp, gp
                  bgeu         a1, tp, 60f
                  slli         s5, t2, 8
                  lui          s9, 146938
                  add          a5, zero, s0
                  and          a2, a2, a7
53:               bne          s1, gp, 55f
                  or           t0, a1, ra
55:               lui          t2, 196389
                  sltiu        ra, s7, -789
                  auipc        a0, 183581
                  lui          s5, 490686
                  srl          s3, a2, a4
60:               sltu         a2, s10, s3
                  lui          a1, 848987
                  auipc        a3, 212052
                  beq          a0, a1, 70f
                  slt          a3, a0, t4
                  slti         s7, s3, 519
                  srl          a0, s0, s7
                  ori          gp, sp, 446
                  lui          s5, 741988
                  sra          a7, a6, s5
70:               nop
                  bgeu         t1, t1, 80f
                  add          s4, t0, s2
                  blt          s7, a2, 77f
                  bgeu         t2, s8, 83f
                  sra          t6, s8, ra
                  xori         s11, t5, 934
77:               xori         a5, s7, 6
                  add          t2, a4, t5
                  srli         t3, a4, 4
80:               bne          a1, t3, 89f
                  sll          t3, t1, t4
                  srai         sp, zero, 29
83:               sub          s10, zero, t5
                  bltu         t6, s5, 87f
                  srai         a0, ra, 30
                  addi         s9, a6, 1957
87:               slli         zero, ra, 12
                  xori         s8, sp, -360
89:               bge          s0, t6, 95f
                  slli         a5, a0, 4
                  blt          s1, a7, 106f
                  sltiu        t0, t4, -840
                  beq          t3, a4, 94f
94:               sltu         a3, s0, t5
95:               srli         a1, s9, 6
                  lui          s9, 57747
                  and          s8, s11, s7
                  srl          ra, gp, a5
                  srli         s2, t2, 13
                  nop
                  slti         a1, sp, -1376
                  slti         a2, s2, 548
                  add          s10, s7, s6
                  andi         ra, s11, -270
                  add          s3, s1, t5
106:              slt          s1, s2, t3
                  blt          a3, zero, 119f
                  sltu         a3, t0, s6
                  sub          a4, t0, t0
                  andi         s2, a1, -1692
                  or           s2, t0, s3
                  slt          s10, s10, t1
                  slli         zero, s10, 27
                  nop
                  bne          a0, s3, 133f
                  slt          t0, t1, a6
                  srli         s1, a2, 24
                  bne          s3, t2, 120f
119:              slt          s1, t3, s11
120:              ori          a1, s8, -2047
                  slli         s0, ra, 29
                  slt          s7, t0, t5
                  auipc        a1, 991358
                  beq          s7, ra, 137f
                  sll          s9, s10, a6
                  srli         s8, a3, 30
                  addi         t2, t0, -1602
                  xor          t3, s8, s2
                  sub          s3, zero, a6
                  srai         a0, a7, 26
                  nop
                  sra          t2, s4, s5
133:              lui          a4, 523678
                  nop
                  xor          s10, s7, s8
                  slli         s7, s2, 24
137:              and          a3, a4, t5
                  sltiu        s4, gp, -257
                  xor          sp, a3, t1
                  add          s2, s11, tp
                  slti         s6, a5, 1608
                  add          s7, s0, s5
                  and          t3, t3, a5
                  sltiu        a5, a5, -1855
                  bgeu         s7, t3, 160f
                  bltu         gp, s8, 153f
                  slti         a7, t3, -711
                  ori          s2, t1, 1546
                  and          s7, a5, s3
                  lui          s6, 732433
                  addi         s5, t6, -382
                  bgeu         s7, t0, 166f
153:              sll          s0, sp, s3
                  sltiu        a5, a0, -308
                  blt          a2, t2, 171f
                  slli         sp, a4, 18
                  beq          s10, t2, 177f
                  sra          a6, tp, s0
                  beq          a6, sp, 164f
160:              ori          s8, zero, -1359
                  addi         a6, s5, 1201
                  bgeu         s3, a1, 163f
163:              and          a0, a4, zero
164:              srai         zero, ra, 7
                  sltiu        s0, sp, -1982
166:              sll          gp, s7, a4
                  addi         t4, s5, 1687
                  add          s8, t3, s10
                  slt          ra, s0, a0
                  sltu         t0, a1, s5
171:              slli         a7, t2, 0
                  bge          s8, gp, 188f
                  srli         s9, t2, 12
                  add          s3, a2, s8
                  xori         a2, s8, -1879
                  srli         t4, a4, 7
177:              slti         a6, s0, 2010
                  bltu         s1, s5, 187f
                  sub          gp, t6, a2
                  addi         t4, s9, 683
                  slt          a4, s9, a3
                  bne          t2, a2, 184f
                  and          a1, ra, s6
184:              sll          s9, s3, a7
                  andi         a6, t6, -2035
                  add          a2, s10, gp
187:              auipc        a2, 1034192
188:              andi         t4, a5, -1665
                  or           t3, a4, a4
                  beq          a1, tp, 204f
                  andi         s7, t4, 1055
                  slti         s5, s4, 838
                  bge          s4, s1, 200f
                  bgeu         a2, gp, 206f
                  slti         a1, t2, -907
                  and          t4, s6, a0
                  bne          s7, zero, 210f
                  bge          a2, t6, 200f
                  sub          s1, t3, t5
200:              beq          a4, t6, 207f
                  and          t3, t4, gp
                  or           s8, a5, s6
                  beq          s0, t6, 217f
204:              bgeu         a3, gp, 219f
                  slli         a6, ra, 4
206:              srli         a0, zero, 15
207:              sll          s6, s9, t5
                  auipc        a0, 878688
                  xor          t2, t3, t1
210:              sub          a2, t6, s6
                  sra          s11, sp, tp
                  srl          s10, a6, s7
                  sra          a0, a1, s4
                  bge          s8, s1, 234f
                  srai         s5, s3, 8
                  srli         s8, s9, 0
217:              beq          s0, a3, 234f
                  sra          t2, s5, a1
219:              srai         a5, a5, 3
                  sll          t6, s5, t4
                  auipc        ra, 461301
                  srai         s2, a1, 31
                  slt          s0, s9, t4
                  or           a1, s11, a2
                  bge          a1, zero, 228f
                  lui          a2, 362863
                  slt          s4, t5, s4
228:              sll          t3, a1, a1
                  slli         a6, tp, 29
                  sra          t0, s1, a3
                  bltu         s4, tp, 239f
                  andi         a3, s9, -1422
sub_5_5:          jal          gp, 1f
0:                jal          a7, 10f
1:                jal          ra, 15f
2:                jal          ra, 11f
3:                jal          ra, 16f
4:                jal          ra, 5f
5:                jal          ra, 13f
6:                jal          ra, 17f
7:                jal          ra, 4b
8:                jal          ra, 12f
9:                jal          ra, 2b
10:               jal          ra, 14f
11:               jal          ra, 18f
12:               jal          ra, 7b
13:               jal          a2, 0b
14:               jal          s1, 6b
15:               jal          s7, 9b
16:               jal          s2, 19f
17:               jal          ra, 3b
18:               jal          ra, 8b
19:               srai         s4, s1, 24
                  xori         s9, a4, -1132
234:              sltiu        a7, a4, -1900
                  or           a0, s8, t5
                  xor          t2, a2, sp
                  srl          sp, s5, a1
                  srl          s0, t3, a7
239:              lui          s6, 603615
                  slli         s5, s8, 10
                  xor          t4, a7, s2
                  srli         s6, a0, 11
                  xori         t6, a3, -905
                  xori         s11, a6, -1247
                  sra          s9, s1, s10
                  auipc        ra, 483732
                  bge          t5, a3, 256f
                  xori         s6, t2, -1098
                  srl          t4, s0, s10
                  bltu         ra, tp, 257f
                  xor          s9, a5, s1
                  xori         a7, a2, 1935
                  blt          a2, a5, 255f
                  nop
255:              slli         s0, t1, 7
256:              slti         s5, s9, 185
257:              xori         s11, s9, -1076
                  bgeu         a0, s9, 262f
                  lui          t0, 989574
                  xor          s10, s8, t6
                  xori         t3, gp, 1272
262:              andi         sp, t0, 1806
                  xor          a3, a2, t1
                  xori         a2, a6, 665
                  nop
                  sltiu        s0, s5, -1698
                  lui          a7, 532514
                  srli         a0, s1, 16
                  sltiu        a0, t1, -742
                  andi         s8, a6, 1188
                  beq          s7, s8, 272f
272:              sltiu        s8, a0, 1584
                  bge          t1, t5, 278f
                  bltu         tp, a6, 280f
                  and          a2, a5, t1
                  bltu         gp, a1, 280f
                  ori          s0, a6, -1004
278:              sra          t3, gp, s9
                  srai         t2, a6, 26
280:              slti         t2, s6, 1454
                  srli         s1, s3, 30
                  nop
                  bgeu         t5, t0, 292f
                  bne          a0, s6, 291f
                  srli         t6, t6, 12
                  sltu         s8, t4, s6
                  sub          a5, ra, s3
                  bge          a6, s4, 300f
sub_5_0:          jal          gp, 21f
0:                jal          ra, 25f
1:                jal          s7, 2f
2:                jal          ra, 19f
3:                jal          ra, 6f
4:                jal          sp, 7f
5:                jal          t0, 23f
6:                jal          t0, 12f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          ra, 20f
10:               jal          ra, 1b
11:               jal          ra, 10b
12:               jal          sp, 28f
13:               jal          s5, 14f
14:               jal          ra, 24f
15:               jal          t2, 18f
16:               jal          ra, 9b
17:               jal          ra, 27f
18:               jal          gp, 22f
19:               jal          ra, 5b
20:               jal          ra, 8b
21:               jal          ra, 4b
22:               jal          t3, 16b
23:               jal          ra, 13b
24:               jal          s4, 15b
25:               jal          s7, 26f
26:               jal          ra, 17b
27:               jal          ra, 11b
28:               srli         t6, a3, 1
                  or           a2, ra, a7
                  addi         a1, a2, -258
291:              or           s3, s2, a7
292:              bge          s9, s0, 304f
                  andi         a2, a5, -1264
                  sra          s6, s5, s7
                  bltu         t3, zero, 310f
                  blt          s10, s4, 314f
                  srai         s11, t3, 3
                  ori          s2, sp, -372
                  slti         a4, t4, 690
300:              slti         t0, gp, -539
                  addi         zero, gp, 1686
                  sub          sp, s0, t5
                  beq          t2, s11, 321f
304:              blt          s9, a6, 311f
                  bge          s6, t5, 312f
                  nop
                  lui          a2, 944268
                  sll          s0, zero, a1
                  nop
310:              sub          a2, a2, a2
311:              srl          t0, s9, a4
312:              bge          s3, a6, 314f
                  auipc        ra, 435794
314:              sub          a2, gp, t5
                  slli         sp, s4, 8
                  sub          t0, gp, a4
                  add          ra, a3, a3
                  sltiu        a6, gp, -616
                  slt          t3, ra, a4
                  bgeu         t4, t5, 322f
321:              sub          s6, a5, t1
322:              andi         a6, t1, -1239
                  auipc        a5, 528009
                  slt          t6, a3, s1
                  sub          t4, s2, t1
                  srl          s10, gp, t4
                  add          ra, a5, s7
                  nop
                  srli         zero, s2, 21
                  sub          s7, s0, a2
                  blt          s7, s5, 343f
                  sub          t0, t0, s11
                  srli         s11, zero, 27
                  andi         t0, s9, 547
                  addi         s5, s0, 624
                  slt          sp, a7, s0
                  sll          a6, s4, t2
                  or           t0, t1, s4
                  slli         s8, a7, 25
                  slti         a4, t5, 1439
                  auipc        zero, 1038551
                  bge          t4, a3, 357f
343:              sll          a0, t6, s6
                  srli         s10, s6, 20
                  bgeu         s9, gp, 357f
                  bgeu         t3, zero, 347f
347:              slli         a6, a2, 6
                  slt          t4, tp, a7
                  xori         a1, t5, 1953
                  sll          sp, t0, s7
                  slli         sp, s8, 16
                  srli         s9, a4, 25
                  bgeu         s5, gp, 356f
                  sltu         t3, sp, a3
                  srli         t6, gp, 1
356:              auipc        t6, 319878
357:              sub          a0, t5, a4
                  lui          s2, 270429
                  slli         s10, a6, 5
                  srl          s11, s10, s11
                  and          a4, tp, s5
                  srai         s4, s6, 13
                  blt          s5, a0, 383f
                  xori         s10, a2, -90
                  slti         sp, t3, 1339
                  nop
                  bne          s11, s4, 372f
                  srl          a0, ra, a2
                  slli         s2, t3, 3
                  and          sp, s7, t3
                  srl          a5, sp, a1
372:              ori          t0, s11, 625
                  srai         s5, a2, 18
                  srl          s5, a7, a1
                  slt          a6, a3, s2
                  srai         s8, tp, 14
                  srl          t3, a6, s5
                  slti         s9, a0, -1569
                  ori          a7, t5, -209
                  sra          t0, a1, s7
                  bne          a0, tp, 393f
                  add          t6, a1, t0
383:              and          a2, s1, t2
                  bltu         t2, zero, 400f
                  xor          s9, s8, a4
                  sub          a3, s1, t5
                  andi         t6, t2, 973
                  slt          a0, tp, a3
                  and          sp, s5, t5
                  bne          a2, s4, 397f
                  bgeu         gp, s11, 400f
                  slt          gp, sp, t0
393:              slli         a1, s1, 13
                  sub          a6, s0, a6
                  sll          a5, zero, s6
                  or           a4, a3, t3
397:              bne          s7, s6, 412f
                  bltu         zero, tp, 404f
                  bltu         a3, s11, 416f
400:              andi         t4, s2, -617
                  xor          ra, s1, s9
                  sltiu        s4, s2, -464
                  slli         s6, s1, 5
404:              lui          s3, 350791
                  and          zero, a0, a5
                  or           t0, s3, zero
                  bne          t5, t3, 420f
                  srli         t3, a5, 16
                  bne          a3, a2, 423f
                  sra          t3, a2, s3
                  bge          a4, s5, 415f
412:              sltiu        ra, s11, -63
                  bge          s7, t4, 427f
                  ori          sp, s3, -1576
415:              and          s9, s7, s1
416:              add          s8, tp, zero
                  srai         t6, s11, 11
                  andi         sp, s7, 719
                  sub          zero, s6, t6
420:              blt          s4, t2, 428f
                  xor          a3, s3, t4
                  bltu         ra, t0, 431f
423:              sltiu        s11, s11, 72
                  add          a3, t1, a1
                  slli         a3, s11, 9
                  slt          s10, a6, a3
427:              xor          t0, t5, a6
428:              slti         s8, a2, -431
                  or           a5, s2, s3
                  bne          a1, a2, 432f
431:              xor          t6, a1, a3
432:              auipc        a0, 963722
                  slli         s6, a6, 15
                  srai         s4, s10, 15
                  bne          tp, s1, 436f
436:              sra          s11, s2, s4
                  or           s0, s11, t3
                  blt          s6, s0, 442f
                  blt          zero, t2, 448f
                  ori          s9, a2, -41
                  andi         a3, a4, 1790
442:              blt          s10, s2, 449f
                  slti         t3, t3, -1631
                  srai         s3, s11, 19
                  blt          a7, a3, 448f
                  srai         s2, a0, 27
                  nop
448:              sub          s10, a0, s3
449:              lui          s5, 549709
                  nop
                  xori         t6, gp, 378
                  srl          s9, s0, t1
                  lw           gp, 4(tp)
                  addi         s10, a7, -1213
                  sra          t4, gp, a6
                  addi         tp, tp, 36
                  xori         zero, t3, 1724
673:              addi x1, x3, 1
673:              jalr x1, x1, 0
sub_4:            bltu         a0, t1, sub_4_stack_p
                  ori          ra, t1, 1346
                  slti         s3, s10, 1145
sub_4_stack_p:    addi         tp, tp, -24
                  ori          ra, s1, -1992
                  nop
                  sw           gp, 4(tp)
                  xori         s3, s2, 346
sub_4_2:          jal          gp, 20f
0:                jal          ra, 15f
1:                jal          t0, 2f
2:                jal          ra, 27f
3:                jal          ra, 29f
4:                jal          ra, 26f
5:                jal          ra, 19f
6:                jal          ra, 3b
7:                jal          t3, 5b
8:                jal          a4, 0b
9:                jal          ra, 14f
10:               jal          ra, 8b
11:               jal          ra, 10b
12:               jal          t0, 28f
13:               jal          ra, 1b
14:               jal          a1, 25f
15:               jal          ra, 7b
16:               jal          t4, 12b
17:               jal          ra, 9b
18:               jal          ra, 6b
19:               jal          t0, 13b
20:               jal          a0, 11b
21:               jal          ra, 18b
22:               jal          ra, 23f
23:               jal          t3, 16b
24:               jal          t4, 4b
25:               jal          ra, 21b
26:               jal          ra, 17b
27:               jal          ra, 22b
28:               jal          ra, 24b
29:               jal          ra, 30f
30:               nop
sub_4_0:          jal          gp, 9f
0:                jal          s6, 1f
1:                jal          ra, 5f
2:                jal          s3, 17f
3:                jal          a3, 11f
4:                jal          ra, 0b
5:                jal          a3, 18f
6:                jal          ra, 10f
7:                jal          ra, 16f
8:                jal          ra, 12f
9:                jal          ra, 8b
10:               jal          ra, 20f
11:               jal          ra, 19f
12:               jal          ra, 13f
13:               jal          ra, 7b
14:               jal          gp, 2b
15:               jal          ra, 21f
16:               jal          ra, 4b
17:               jal          ra, 6b
18:               jal          ra, 14b
19:               jal          a5, 15b
20:               jal          ra, 3b
21:               andi         t6, ra, 1412
sub_4_1:          jal          gp, 6f
0:                jal          gp, 24f
1:                jal          t0, 16f
2:                jal          ra, 4f
3:                jal          ra, 14f
4:                jal          ra, 8f
5:                jal          ra, 18f
6:                jal          ra, 1b
7:                jal          s3, 23f
8:                jal          ra, 3b
9:                jal          s6, 22f
10:               jal          s2, 11f
11:               jal          s11, 25f
12:               jal          ra, 26f
13:               jal          ra, 5b
14:               jal          s8, 17f
15:               jal          s5, 7b
16:               jal          ra, 21f
17:               jal          ra, 0b
18:               jal          sp, 15b
19:               jal          s1, 9b
20:               jal          t0, 2b
21:               jal          ra, 19b
22:               jal          a2, 20b
23:               jal          ra, 12b
24:               jal          ra, 10b
25:               jal          ra, 13b
26:               andi         sp, s0, -679
                  ori          ra, s9, -799
                  and          t4, s11, a7
                  srli         s7, t0, 18
                  bgeu         s10, s11, 22f
                  xori         s3, t6, 1187
                  sub          gp, t1, s9
                  slti         t0, sp, -1718
                  bgeu         s2, s8, 11f
                  addi         s8, zero, 781
                  srli         a4, a4, 16
                  or           t4, a0, t1
11:               bne          s0, t2, 18f
                  and          a0, s6, a5
                  auipc        s11, 995287
                  beq          zero, t5, 27f
                  beq          a5, s7, 16f
16:               slt          a7, t3, s6
                  lui          s9, 252250
18:               add          s4, a1, s10
                  andi         t2, a5, 1049
                  add          s7, a7, s0
                  add          t2, s0, a4
22:               or           s4, tp, a5
                  beq          a7, a0, 33f
                  blt          s6, t0, 34f
                  ori          zero, a7, 1574
                  bltu         t1, a4, 30f
27:               beq          s2, s8, 29f
                  blt          s11, a4, 34f
29:               srai         a5, t3, 6
30:               auipc        a6, 29798
                  srl          a7, s3, s4
                  srai         t6, s2, 23
33:               slti         s11, t2, -173
34:               slti         s6, s5, -1632
                  bltu         t3, s7, 47f
                  bge          t0, t2, 42f
                  or           s5, ra, t6
                  blt          s4, t0, 49f
                  auipc        t6, 446733
                  add          t3, a3, a7
                  bge          sp, s2, 44f
42:               bgeu         s0, a1, 60f
                  slli         s10, ra, 8
44:               addi         s5, a6, -1623
                  beq          t2, s3, 47f
                  or           s9, t1, s9
47:               addi         t3, t3, 689
                  beq          t4, gp, 53f
49:               addi         s5, s1, -840
                  bge          a3, tp, 65f
                  lui          a0, 506860
                  slli         s2, s11, 3
53:               auipc        s8, 35179
                  blt          s5, a3, 69f
                  srl          s1, a1, a4
                  beq          zero, s2, 67f
                  nop
                  xori         t0, s1, 1572
                  ori          zero, s2, -328
60:               blt          a4, t6, 66f
                  add          s4, t1, zero
                  addi         s4, s9, -2037
                  srai         sp, t2, 17
                  or           a5, s3, t0
65:               slli         ra, gp, 4
66:               addi         t2, zero, -1779
67:               srli         a3, a4, 12
                  srai         s2, a0, 24
69:               andi         s10, a1, -1785
                  slli         a6, ra, 13
                  lui          s3, 755166
                  xor          zero, t0, t6
                  slti         a4, a2, -1209
                  srli         s0, s10, 7
                  xor          a6, s8, a4
                  sll          s0, t4, t3
                  lui          sp, 512529
                  bne          s11, t1, 85f
                  bgeu         s3, s0, 91f
                  slti         zero, a3, 1165
                  ori          s0, sp, 1093
                  srl          t2, t4, s2
                  sub          a4, t2, a7
                  xor          t4, s8, s0
85:               or           zero, a6, s2
                  bne          zero, t3, 90f
                  slt          a6, a6, s3
                  ori          s8, s1, 951
                  sll          s3, a7, s11
90:               sltu         s5, s3, t3
91:               xori         t2, t0, 1955
                  sra          t3, t1, a3
                  slt          sp, s7, a5
                  xor          a1, sp, s8
                  srl          s0, s5, t0
                  srai         ra, s9, 30
                  slli         t3, a7, 11
                  srli         a1, a4, 19
                  bge          a2, a2, 103f
                  srl          a5, s2, s8
                  auipc        s5, 393137
                  la           a1, sub_5
                  sltiu        a2, a0, 1032
                  addi         a1, a1, 622
                  lui          s5, 918593
                  add          zero, t1, a2
                  sra          s1, s11, t2
                  sra          ra, t5, a0
sub_4_j5:         jalr         gp, a1, -622 #jump sub_4 -> sub_5
                  srli         t6, a4, 3
                  auipc        s3, 57568
                  srai         sp, a5, 27
103:              sub          t6, s8, tp
                  xori         s6, a7, -2019
                  bne          s6, t3, 123f
                  srl          s3, s10, t1
                  srli         a5, s1, 20
                  xori         a1, s4, -1927
                  andi         a6, s2, -908
                  or           t0, a5, t0
                  xori         s4, s4, -698
                  bge          t4, t6, 120f
                  bge          s5, gp, 121f
                  slli         s11, a5, 14
                  xor          a3, s0, t2
                  srai         s6, s1, 17
                  and          s11, s1, s1
                  sltu         a2, t1, t0
                  xori         s11, tp, 1738
120:              add          zero, s6, s10
121:              sltiu        ra, a2, 1085
                  sra          gp, t5, a7
123:              sra          s11, s0, t4
                  blt          s6, ra, 130f
                  srli         a3, s11, 26
                  sltiu        t6, t3, -1003
                  slti         a5, tp, 1628
                  beq          a3, s3, 138f
                  slt          t6, gp, t0
130:              bgeu         t5, s0, 136f
                  bgeu         gp, s2, 144f
                  ori          s4, t4, -662
                  blt          t5, zero, 151f
                  bge          a2, a3, 139f
                  auipc        s3, 740114
136:              ori          a2, tp, 371
                  addi         t4, s9, -1932
138:              bgeu         s9, t3, 144f
139:              bgeu         gp, s9, 141f
                  sltiu        a4, s3, 1620
141:              and          s2, t2, a2
                  andi         s5, t6, -572
                  sra          s7, t5, a4
144:              nop
                  bltu         a2, a0, 151f
                  sll          ra, s2, s10
                  sra          s7, a6, s11
                  slti         s9, s8, 1638
                  nop
                  blt          s8, a1, 151f
151:              sll          t6, s11, s10
                  nop
                  addi         s9, ra, -1704
                  slt          s3, t2, s11
                  beq          t4, s9, 162f
                  lui          s8, 705144
                  sra          s7, s7, a3
                  bne          t5, s2, 166f
                  blt          s11, s5, 163f
                  bge          sp, s9, 170f
                  andi         t6, t4, -964
162:              srli         s6, s11, 19
163:              srai         s0, t5, 15
                  xori         a1, s8, -1698
                  lui          s9, 359937
166:              beq          s11, s4, 177f
                  or           s9, s8, t0
                  slti         s1, t5, -769
                  bge          t5, t1, 175f
170:              lui          s0, 634720
                  auipc        a4, 677698
                  sub          a0, a6, s0
                  lui          s11, 948749
                  bne          s2, a4, 178f
175:              srl          s9, s11, gp
                  auipc        s8, 190604
177:              sra          s0, s7, s7
178:              add          s8, a5, t0
                  addi         s10, a4, -1958
                  and          s6, s9, a1
                  ori          t0, a2, 840
                  lui          s8, 939876
                  xor          s6, tp, t6
                  lw           gp, 4(tp)
                  sltiu        a5, s8, 1349
                  addi         tp, tp, 24
                  slti         s5, a7, -633
                  sra          s2, t3, t5
290:              addi x28, x3, 0
290:              jalr x28, x28, 0
sub_1:            sub          t2, s0, t0
                  beq          a6, t6, sub_1_stack_p
sub_1_stack_p:    addi         tp, tp, -20
                  slli         a4, zero, 11
                  slti         a5, s7, -827
                  sw           gp, 4(tp)
                  srli         a0, s8, 8
                  sra          a5, t1, t6
                  sub          s8, t2, a0
                  sll          a1, s3, s8
                  slti         zero, t4, 965
                  sltu         t6, t3, s6
                  sltiu        sp, s9, -1964
                  xor          a0, s2, a4
sub_1_j2:         jal          gp, sub_2 #jump sub_1 -> sub_2
                  beq          s11, ra, 5f
                  sltu         s5, zero, s9
                  lui          ra, 310812
                  sltiu        t4, a1, 1917
                  srli         s6, a5, 10
5:                andi         s3, a4, -1303
                  slli         a5, a7, 27
                  sra          s5, s8, s2
                  ori          ra, s10, 740
                  slt          t6, t5, a0
                  srli         s0, t1, 18
                  bgeu         ra, s3, 25f
                  srl          s4, s10, s2
                  beq          s11, ra, 16f
                  slti         s1, sp, 1063
                  bge          s6, tp, 30f
16:               sll          t2, a3, s1
                  xori         s7, zero, 782
                  srli         s1, s6, 20
                  bne          zero, s3, 30f
                  xor          a3, s6, t6
                  slt          gp, s2, a7
                  srl          a5, a2, t5
                  bltu         zero, s10, 30f
                  slti         s8, a1, 1425
25:               nop
                  andi         zero, t2, -1787
                  blt          t5, gp, 30f
                  andi         a3, s10, -602
                  ori          t4, s9, -1223
30:               slti         sp, t3, 1780
                  auipc        zero, 8405
                  sltu         s4, s11, a3
                  sltu         t6, t3, sp
                  and          ra, t4, s11
                  slli         sp, ra, 29
                  lw           gp, 4(tp)
                  auipc        sp, 859740
                  addi         tp, tp, 20
                  srai         t6, sp, 30
55:               addi x11, x3, 0
55:               jalr x11, x11, 0
sub_3:            bge          gp, s7, sub_3_stack_p
                  slt          zero, t3, a6
                  slti         t0, a2, -924
sub_3_stack_p:    addi         tp, tp, -60
                  sw           gp, 4(tp)
                  addi         s1, s10, -447
                  srai         a1, a0, 18
                  xor          a5, ra, t6
sub_3_9:          jal          gp, 6f
0:                jal          ra, 5f
1:                jal          s1, 9f
2:                jal          ra, 0b
3:                jal          a0, 11f
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          t0, 8f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          s6, 4b
10:               jal          t4, 7b
11:               jal          t0, 2b
12:               sub          s0, ra, s6
sub_3_5:          jal          gp, 14f
0:                jal          s5, 6f
1:                jal          sp, 5f
2:                jal          ra, 13f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 16f
6:                jal          ra, 1b
7:                jal          a1, 15f
8:                jal          ra, 7b
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          a1, 9b
12:               jal          ra, 4b
13:               jal          sp, 8b
14:               jal          ra, 11b
15:               jal          ra, 0b
16:               lui          s0, 18322
sub_3_16:         jal          gp, 2f
0:                jal          ra, 25f
1:                jal          ra, 24f
2:                jal          ra, 5f
3:                jal          ra, 14f
4:                jal          gp, 16f
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          ra, 20f
8:                jal          sp, 18f
9:                jal          ra, 13f
10:               jal          t0, 3b
11:               jal          ra, 1b
12:               jal          s2, 21f
13:               jal          ra, 6b
14:               jal          s11, 17f
15:               jal          ra, 23f
16:               jal          ra, 15b
17:               jal          ra, 9b
18:               jal          ra, 12b
19:               jal          ra, 4b
20:               jal          ra, 8b
21:               jal          ra, 22f
22:               jal          s7, 19b
23:               jal          s1, 11b
24:               jal          ra, 10b
25:               sltiu        s11, s2, -1214
sub_3_15:         jal          gp, 3f
0:                jal          ra, 6f
1:                jal          ra, 0b
2:                jal          ra, 8f
3:                jal          s6, 2b
4:                jal          ra, 14f
5:                jal          ra, 12f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          ra, 1b
9:                jal          ra, 7b
10:               jal          s8, 4b
11:               jal          ra, 9b
12:               jal          gp, 10b
13:               jal          ra, 5b
14:               nop
sub_3_8:          jal          gp, 3f
0:                jal          ra, 8f
1:                jal          t0, 5f
2:                jal          sp, 16f
3:                jal          a3, 21f
4:                jal          t0, 13f
5:                jal          ra, 7f
6:                jal          s1, 15f
7:                jal          ra, 17f
8:                jal          gp, 11f
9:                jal          ra, 2b
10:               jal          ra, 18f
11:               jal          ra, 20f
12:               jal          ra, 4b
13:               jal          t0, 9b
14:               jal          ra, 22f
15:               jal          ra, 12b
16:               jal          t3, 19f
17:               jal          ra, 10b
18:               jal          ra, 14b
19:               jal          s1, 0b
20:               jal          ra, 1b
21:               jal          t6, 6b
22:               sltu         sp, s0, s7
sub_3_17:         jal          gp, 3f
0:                jal          ra, 8f
1:                jal          ra, 4f
2:                jal          t4, 7f
3:                jal          gp, 2b
4:                jal          gp, 9f
5:                jal          ra, 6f
6:                jal          gp, 10f
7:                jal          a5, 5b
8:                jal          gp, 11f
9:                jal          ra, 0b
10:               jal          t0, 1b
11:               nop
sub_3_2:          jal          gp, 28f
0:                jal          ra, 23f
1:                jal          ra, 3f
2:                jal          s3, 26f
3:                jal          a3, 18f
4:                jal          t4, 22f
5:                jal          ra, 6f
6:                jal          ra, 0b
7:                jal          ra, 13f
8:                jal          ra, 17f
9:                jal          ra, 12f
10:               jal          t3, 8b
11:               jal          ra, 14f
12:               jal          ra, 15f
13:               jal          sp, 16f
14:               jal          s9, 4b
15:               jal          ra, 25f
16:               jal          ra, 1b
17:               jal          a5, 19f
18:               jal          ra, 20f
19:               jal          sp, 2b
20:               jal          ra, 24f
21:               jal          ra, 5b
22:               jal          ra, 9b
23:               jal          ra, 29f
24:               jal          a4, 11b
25:               jal          ra, 27f
26:               jal          ra, 21b
27:               jal          s2, 10b
28:               jal          ra, 7b
29:               srai         s3, t1, 18
sub_3_7:          jal          gp, 2f
0:                jal          ra, 8f
1:                jal          sp, 18f
2:                jal          ra, 19f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          a6, 11f
7:                jal          ra, 6b
8:                jal          gp, 16f
9:                jal          s6, 14f
10:               jal          ra, 13f
11:               jal          a5, 17f
12:               jal          ra, 1b
13:               jal          s9, 4b
14:               jal          a0, 3b
15:               jal          sp, 20f
16:               jal          s9, 15b
17:               jal          ra, 9b
18:               jal          s0, 10b
19:               jal          ra, 5b
20:               jal          ra, 21f
21:               sltiu        a7, s4, 1538
sub_3_1:          jal          gp, 2f
0:                jal          s11, 4f
1:                jal          ra, 14f
2:                jal          t0, 11f
3:                jal          ra, 7f
4:                jal          s6, 8f
5:                jal          ra, 0b
6:                jal          a0, 12f
7:                jal          t2, 9f
8:                jal          ra, 3b
9:                jal          s1, 10f
10:               jal          ra, 1b
11:               jal          sp, 13f
12:               jal          sp, 5b
13:               jal          ra, 6b
14:               slt          s0, t1, s2
sub_3_0:          jal          gp, 1f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          ra, 4f
4:                jal          ra, 8f
5:                jal          a4, 0b
6:                jal          ra, 10f
7:                jal          s7, 2b
8:                jal          ra, 9f
9:                jal          a6, 7b
10:               add          s9, a0, ra
sub_3_12:         jal          gp, 2f
0:                jal          ra, 21f
1:                jal          ra, 17f
2:                jal          ra, 15f
3:                jal          a6, 11f
4:                jal          ra, 16f
5:                jal          s6, 18f
6:                jal          ra, 1b
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          a4, 3b
10:               jal          ra, 20f
11:               jal          ra, 12f
12:               jal          a7, 4b
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          a7, 9b
16:               jal          ra, 6b
17:               jal          ra, 19f
18:               jal          ra, 8b
19:               jal          a6, 13b
20:               jal          ra, 0b
21:               addi         sp, zero, 1980
sub_3_10:         jal          gp, 22f
0:                jal          s2, 11f
1:                jal          a3, 5f
2:                jal          a5, 17f
3:                jal          a2, 14f
4:                jal          t0, 19f
5:                jal          s8, 15f
6:                jal          gp, 21f
7:                jal          ra, 24f
8:                jal          s10, 9f
9:                jal          ra, 27f
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          ra, 13f
13:               jal          sp, 20f
14:               jal          ra, 10b
15:               jal          gp, 12b
16:               jal          ra, 3b
17:               jal          ra, 28f
18:               jal          ra, 26f
19:               jal          a1, 18b
20:               jal          ra, 16b
21:               jal          a6, 23f
22:               jal          gp, 4b
23:               jal          t6, 25f
24:               jal          t3, 1b
25:               jal          ra, 7b
26:               jal          ra, 8b
27:               jal          ra, 6b
28:               sub          s8, s10, s10
sub_3_14:         jal          gp, 2f
0:                jal          ra, 6f
1:                jal          s4, 7f
2:                jal          sp, 8f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          a1, 0b
6:                jal          t3, 9f
7:                jal          a7, 4b
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               sll          s2, s0, s5
sub_3_4:          jal          gp, 13f
0:                jal          ra, 17f
1:                jal          ra, 9f
2:                jal          ra, 1b
3:                jal          ra, 8f
4:                jal          ra, 0b
5:                jal          ra, 15f
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          s3, 10f
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 2b
12:               jal          a1, 5b
13:               jal          s6, 12b
14:               jal          ra, 4b
15:               jal          ra, 3b
16:               jal          a4, 14b
17:               sltiu        a1, ra, 298
sub_3_11:         jal          gp, 2f
0:                jal          t4, 1f
1:                jal          s7, 5f
2:                jal          a1, 11f
3:                jal          a3, 0b
4:                jal          ra, 7f
5:                jal          sp, 8f
6:                jal          ra, 4b
7:                jal          sp, 10f
8:                jal          ra, 9f
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          ra, 13f
12:               jal          ra, 14f
13:               jal          ra, 6b
14:               add          zero, s1, s2
                  xori         a2, s8, -754
                  sll          a2, a1, a2
                  slt          s8, zero, t2
                  and          s5, s6, sp
                  bltu         s4, ra, 9f
                  sltu         s9, tp, s8
                  or           a0, s7, a4
                  auipc        t4, 894897
                  sub          s0, s6, sp
9:                addi         s9, gp, 1929
                  bgeu         t5, s5, 27f
                  lui          t4, 238028
                  sra          s6, t6, a5
                  slli         t4, t2, 15
                  sra          t2, a3, s10
                  blt          s3, s4, 19f
                  andi         t2, a1, -254
                  beq          t6, a0, 22f
                  add          a6, a3, t0
19:               add          s0, s8, tp
                  sub          s8, a1, a7
                  srl          s0, s10, a4
22:               andi         t0, t0, -1517
                  srli         s8, sp, 16
                  sltu         s11, zero, a1
                  xor          s4, a6, t2
                  bne          s2, s11, 31f
27:               or           s4, s6, a2
                  sub          s5, a1, t0
                  add          gp, s10, t4
                  srli         s5, t0, 0
31:               add          s4, s0, a6
                  sub          gp, t4, tp
                  srai         ra, s3, 0
                  srai         a5, s0, 4
                  slli         zero, s9, 8
                  bne          s11, s6, 45f
                  addi         gp, s10, 927
                  bge          t6, sp, 51f
                  srli         zero, a3, 7
                  and          a5, gp, a6
                  add          s1, s10, t4
                  bge          s3, tp, 59f
                  slli         a3, a1, 9
                  ori          s9, zero, -1664
45:               ori          ra, s8, -1125
                  xor          s9, s1, t2
                  sll          s5, a2, s5
                  xori         s5, s11, 1488
                  and          t6, s3, a5
                  andi         t2, gp, -1552
51:               srl          a1, s8, a4
                  or           s3, t2, t5
                  nop
                  xori         zero, s4, 645
                  sra          s3, t4, ra
                  slt          a3, s1, s4
                  sll          t6, t5, t6
                  addi         s7, a4, -1252
59:               lui          a7, 801211
                  sub          s1, a6, a1
                  andi         s7, zero, -216
                  slli         a2, s7, 25
                  slli         t6, t6, 16
                  xor          t6, s5, a7
                  sll          s3, a2, s10
                  lui          a3, 780222
                  ori          a6, s7, 1341
                  srai         zero, a4, 14
                  or           a4, a0, s5
                  srai         zero, s9, 2
                  auipc        a2, 65399
                  bne          s5, ra, 85f
                  blt          t4, t1, 76f
                  lui          gp, 378767
                  bne          a5, t1, 86f
76:               slti         a0, a5, -1741
                  slli         ra, s7, 28
                  sll          s8, a5, a6
                  add          s6, t0, s4
                  sltu         s1, gp, a1
                  srai         a3, t4, 26
                  add          a2, a0, a3
                  add          s6, s9, a2
                  sra          s11, s3, s8
85:               slti         s7, s11, -1967
86:               ori          gp, s7, 261
                  beq          a4, t2, 107f
                  lui          s5, 530984
                  srai         a5, a5, 30
                  bne          a6, t1, 104f
                  slli         s1, a3, 15
                  srli         s3, a3, 8
                  or           s2, s10, t6
                  slli         t3, a3, 9
                  andi         sp, t2, 377
                  srai         t2, a3, 7
                  sra          s1, t1, ra
                  slti         a7, s11, -2010
                  bgeu         a7, t1, 104f
                  slti         ra, s9, 1033
                  srai         gp, gp, 24
                  slti         s5, s2, 442
                  ori          s7, t3, 745
104:              auipc        a3, 815505
                  ori          a3, t6, 116
                  and          t0, s6, ra
107:              srli         a6, a3, 8
                  or           s8, s6, t5
                  sltu         sp, a4, a6
                  sll          a7, t4, a2
                  auipc        s8, 917402
                  andi         t6, s1, 1234
                  srai         s10, a4, 24
                  srli         gp, s1, 11
                  auipc        s0, 834574
                  auipc        gp, 721774
                  slli         a1, s5, 18
                  xor          t4, s11, s10
                  slli         a2, s10, 11
                  beq          t1, sp, 133f
                  sll          s11, a7, s3
                  xori         s2, a5, 726
                  sltu         a6, tp, tp
                  beq          s6, sp, 137f
                  addi         a7, tp, 485
                  xor          s2, s10, s10
                  addi         s5, t5, -2043
                  slti         s1, s5, 87
                  ori          a5, s8, -438
                  srai         sp, a6, 31
                  xori         s1, t2, -1246
                  blt          s1, zero, 142f
133:              add          t4, s8, a1
                  ori          a5, s7, -190
                  andi         zero, s7, 1905
                  sll          a5, gp, gp
137:              sub          s1, t0, s5
                  or           t0, s9, s1
                  lui          s8, 966880
                  sra          s8, a5, a0
                  beq          s5, s2, 155f
142:              srl          s10, a0, s10
                  bne          s5, ra, 151f
                  slt          s2, s3, s10
                  xori         s2, s2, 1832
                  addi         t0, s9, 1717
                  srl          a1, gp, a7
                  bne          t5, s11, 155f
                  auipc        s0, 580473
                  auipc        a0, 773328
151:              lui          s5, 741721
                  slli         s8, s9, 1
                  srl          a0, s1, s7
                  andi         s6, t3, -1569
155:              srli         t4, t6, 29
                  srl          a3, a0, s11
                  and          s2, a6, a1
                  bge          t2, t4, 175f
                  sub          s3, s11, zero
                  ori          s4, s5, 18
                  and          s6, a2, s3
                  sltiu        s1, t6, -1720
                  srli         a1, zero, 16
                  srai         a2, t3, 26
                  sltu         a2, sp, s5
                  sra          a6, t2, zero
                  slli         s8, t0, 8
                  slli         t4, t3, 17
                  sub          ra, a7, s9
                  auipc        a4, 162906
                  addi         s10, a0, 1065
                  or           s5, a6, s11
                  or           zero, t4, t1
                  lui          a2, 942763
175:              lui          t6, 657869
                  sltu         s5, t0, t1
                  slli         s3, t1, 9
                  slti         t0, s3, -1716
                  lui          a4, 510246
                  blt          sp, t0, 191f
                  sra          t6, gp, s4
                  xori         s0, s2, -713
                  or           a2, t1, s8
                  addi         sp, s11, -323
                  xori         a1, t0, 150
                  sra          a3, a4, s1
                  sltu         t6, s11, t2
                  beq          gp, s11, 199f
                  blt          t5, a0, 207f
                  xori         t3, s1, -857
191:              sltu         t3, t4, s7
                  xor          s5, gp, ra
                  bne          t3, s2, 211f
                  slli         s5, ra, 7
                  bltu         t0, s0, 197f
                  bltu         s3, sp, 202f
197:              bne          s1, a6, 215f
                  bltu         t4, t6, 217f
199:              slti         zero, a3, 1686
                  blt          s9, t6, 213f
                  nop
202:              sub          s1, zero, s7
                  srli         s2, zero, 8
                  bltu         s10, tp, 209f
                  bltu         s11, a3, 218f
                  bne          a4, s3, 224f
207:              slli         a5, t1, 9
                  srli         a1, t6, 25
209:              bne          s9, gp, 226f
                  srli         t2, ra, 2
211:              sra          s0, gp, s10
                  sll          a0, a7, a2
213:              bge          s1, s10, 224f
                  bge          sp, a0, 233f
215:              blt          a5, t4, 220f
                  or           a4, s6, s6
217:              ori          s7, s4, 1269
218:              sub          a5, s9, t5
                  bgeu         a5, s2, 236f
220:              add          s1, a4, s0
                  ori          a0, ra, -1558
                  sltiu        t0, s10, -2041
                  and          a0, t2, t5
224:              blt          tp, gp, 231f
                  sll          a6, t2, a4
226:              bne          t5, t1, 239f
                  sub          gp, a1, a0
                  beq          s3, s11, 241f
                  srai         s7, t0, 18
                  or           s8, s4, t1
231:              bgeu         a1, s0, 236f
                  sra          a7, s0, s10
233:              xori         t0, s4, -647
                  bgeu         a5, a0, 237f
                  xori         sp, a2, -1612
236:              addi         t0, s2, 751
237:              or           gp, t1, ra
                  or           gp, a4, a6
239:              bne          a4, t0, 257f
                  ori          s1, t2, 16
241:              srli         s11, s10, 7
                  slti         s6, s7, 1311
                  bne          s6, s4, 257f
                  or           t0, s9, t0
                  and          s4, s2, t1
                  srai         a2, a6, 0
                  add          s4, s9, a3
                  and          a4, a7, t1
                  slti         ra, s7, 479
                  bgeu         t6, s10, 256f
                  sub          t0, t2, t2
                  blt          tp, s10, 254f
                  sra          s10, t4, t6
254:              slli         gp, s0, 4
                  sltiu        a7, gp, -1170
256:              ori          ra, t5, 1127
257:              nop
                  sltu         t4, tp, a4
                  and          s10, s9, s1
                  srli         a7, s10, 19
                  sltu         a6, a7, t2
                  add          s3, t0, t6
                  slli         t0, t6, 0
                  xor          a5, t2, s2
                  andi         a4, s11, -724
                  ori          s7, a6, -576
                  srai         t3, zero, 16
                  sll          s0, s7, s8
                  bne          s8, t0, 286f
                  bne          s2, s0, 274f
                  srli         t6, a2, 31
                  and          a1, a0, t6
                  srai         s8, a6, 20
274:              and          a2, a0, gp
                  srl          s1, s7, a4
                  sltu         s1, sp, a2
                  sll          t3, a5, s1
                  bltu         s1, t1, 296f
                  srli         s10, t3, 18
                  sub          s4, s10, a0
                  auipc        ra, 335275
                  srli         s6, t2, 5
                  add          s6, s4, a7
                  bltu         a5, t2, 297f
                  addi         sp, zero, -2013
286:              sll          s2, s10, s2
                  srli         s4, a5, 24
                  ori          ra, t4, -1041
                  slti         s5, zero, -1941
                  sub          t6, a6, a5
                  sub          s5, a5, tp
                  sltu         s11, s8, s0
                  ori          t3, t4, -1209
                  blt          ra, sp, 307f
                  sra          s0, a1, s7
296:              srai         s7, s0, 28
297:              sub          t3, s3, t5
                  xori         s2, zero, 1035
                  srli         zero, s10, 21
                  bne          t5, s10, 308f
                  slt          zero, s10, t6
                  bltu         s4, a2, 307f
                  blt          t3, s2, 312f
                  lui          s1, 285563
                  srl          ra, t0, a4
                  lui          s3, 830474
307:              sltiu        zero, a6, -587
308:              nop
                  blt          s0, a1, 320f
                  add          t4, sp, s10
                  bgeu         s1, s7, 322f
312:              srai         gp, t5, 29
                  xor          a6, t6, s2
                  blt          t1, s9, 334f
                  beq          gp, s10, 329f
                  or           s1, s6, t1
                  addi         zero, s11, 1922
                  srl          a3, s9, s2
                  srai         t2, s7, 12
320:              andi         gp, t0, -278
                  slt          a2, a2, s5
322:              srli         t6, tp, 25
                  bne          a7, s8, 333f
                  auipc        ra, 105358
                  slli         t6, s4, 21
sub_3_3:          jal          gp, 7f
0:                jal          ra, 26f
1:                jal          t0, 24f
2:                jal          ra, 28f
3:                jal          a3, 10f
4:                jal          ra, 20f
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          gp, 4b
8:                jal          ra, 19f
9:                jal          sp, 1b
10:               jal          ra, 27f
11:               jal          ra, 6b
12:               jal          ra, 5b
13:               jal          a1, 2b
14:               jal          s11, 16f
15:               jal          sp, 8b
16:               jal          ra, 22f
17:               jal          ra, 15b
18:               jal          ra, 9b
19:               jal          ra, 11b
20:               jal          ra, 18b
21:               jal          t3, 13b
22:               jal          s0, 23f
23:               jal          a6, 17b
24:               jal          ra, 25f
25:               jal          sp, 14b
26:               jal          ra, 29f
27:               jal          a6, 21b
28:               jal          ra, 12b
29:               lui          t4, 782109
                  slli         s2, a1, 28
                  sub          sp, a4, s1
                  nop
329:              ori          s7, a7, 622
                  sltu         sp, s0, s9
                  sub          t0, gp, s4
                  slt          s4, s8, s3
333:              ori          s2, t4, 914
334:              srl          t4, s9, t3
                  lui          s8, 203206
                  sltiu        s11, s11, -505
                  addi         a0, s10, 1226
                  addi         ra, sp, 1423
                  sra          t3, t0, a1
                  slti         s10, a5, 910
                  lui          a1, 661458
                  bgeu         a5, s9, 351f
                  blt          a4, s7, 361f
                  sltiu        s5, zero, 723
                  nop
                  andi         a2, a4, 7
                  bne          s9, s10, 352f
                  sub          a2, a0, t4
                  sub          t2, s11, a0
                  slt          s0, ra, s3
351:              bgeu         s3, s0, 362f
352:              beq          a3, t6, 369f
                  srli         zero, s10, 13
                  xori         a0, t5, 1583
                  slt          t3, s2, s6
                  andi         t4, s6, 1349
                  nop
                  and          s4, s6, sp
                  srl          t0, s3, a3
                  andi         a2, s1, -1913
361:              lui          s9, 770050
362:              sub          t0, t6, s7
                  addi         s6, s5, 13
                  xor          s8, s8, s9
                  srl          t6, tp, s6
                  xor          s7, s11, s11
                  addi         s11, tp, -1671
                  blt          a7, s4, 385f
369:              or           a3, s0, t5
                  blt          s8, a7, 383f
                  and          a5, s2, a7
                  nop
                  xor          s11, s7, s7
                  and          a2, a6, a0
                  slt          s11, s8, t4
                  lui          a0, 449824
sub_3_13:         jal          gp, 1f
0:                jal          gp, 8f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          ra, 2b
4:                jal          gp, 9f
5:                jal          ra, 3b
6:                jal          t0, 11f
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          t0, 5b
10:               jal          ra, 7b
11:               jal          ra, 10b
12:               jal          ra, 6b
13:               or           s7, s3, s9
                  slti         t3, a7, -1844
                  sra          a0, a5, a4
                  sltu         s7, a0, s10
                  srl          s5, a3, s6
                  sltu         s4, a2, s2
                  lui          a2, 595609
383:              and          t0, t4, tp
                  ori          ra, s11, -1913
385:              sltu         a6, a4, t1
                  sll          s3, t5, sp
                  bne          ra, a6, 392f
                  blt          s2, t6, 401f
                  srl          t0, sp, t1
                  nop
                  and          s8, a4, s4
392:              ori          a5, s10, -1209
                  and          a1, a5, t5
                  and          s4, tp, t5
                  bne          s6, s8, 406f
                  xor          t0, s10, s5
                  nop
                  srli         t2, t5, 9
                  and          t3, a2, a7
                  bne          s11, s9, 420f
401:              srli         a6, s2, 5
                  and          t2, s9, a6
                  slti         s2, s10, 1048
                  bge          s3, s7, 410f
                  sltiu        s9, t5, 575
406:              sll          s3, s10, sp
                  sra          s5, tp, s3
                  sub          gp, s4, sp
                  auipc        s2, 954641
410:              srai         a3, t1, 30
                  xor          gp, s9, sp
                  xor          s3, t2, a1
                  addi         s2, s8, -269
                  sltu         s5, tp, s3
                  slli         t2, a7, 23
                  slt          t4, sp, s4
                  slti         t2, s1, -1551
                  lui          a1, 760382
sub_3_j4:         jal          gp, sub_4 #jump sub_3 -> sub_4
                  auipc        s0, 77814
                  andi         t3, a4, -1802
                  blt          a5, s4, 415f
                  nop
415:              add          s2, s3, t1
                  bltu         a6, s5, 427f
                  lui          a5, 164983
                  sltu         gp, tp, t6
                  and          a2, t5, a6
420:              sll          a3, s1, s10
                  slti         s4, t3, -1195
                  sra          s5, a3, t5
                  slti         t4, t6, 798
                  sll          s5, a6, a3
                  sltiu        sp, s10, 371
                  sra          a1, s9, t4
427:              auipc        s11, 253796
                  add          gp, a7, t3
                  auipc        s0, 921618
                  blt          a7, s11, 444f
                  andi         s10, t6, 152
                  beq          t6, t5, 435f
                  slti         s1, s7, -389
                  slli         a7, a5, 20
435:              xor          a1, s5, s4
                  sub          t3, a2, s3
                  srli         s0, t5, 10
                  add          s2, s8, t5
                  slli         a7, ra, 23
                  ori          sp, t1, 1622
                  slt          s4, a2, a5
                  sltiu        s0, t5, 358
                  bgeu         s2, s8, 461f
444:              addi         s11, sp, -190
                  xori         a2, s2, 374
                  sltu         a4, t1, t5
                  slli         a4, s1, 25
                  slt          s9, s8, s10
                  nop
                  bne          s4, t3, 467f
                  slli         s0, a2, 5
                  bltu         s0, s8, 457f
                  sltiu        t3, s6, 537
                  srl          a5, a4, s9
                  auipc        a5, 698307
                  xor          s2, s1, s5
457:              sll          s0, t5, s0
                  blt          s1, a6, 472f
                  sll          t2, gp, a7
                  xor          a5, s6, t5
461:              sltu         gp, tp, s6
                  sll          s0, t6, gp
                  addi         t6, t3, 1907
                  and          s2, s4, a1
                  slti         s10, s11, -749
                  or           ra, t3, s6
467:              addi         a0, gp, 926
                  addi         t3, t1, -339
                  nop
                  bge          t3, t3, 475f
                  addi         s4, a2, 1080
472:              addi         a7, s2, 1003
                  sltu         a2, a6, sp
                  andi         s1, zero, -1724
475:              nop
                  blt          a5, t6, 483f
                  xori         a3, s11, 1031
                  xor          s8, s6, t3
                  slti         a4, a2, -1658
                  and          a0, gp, s9
                  sub          s1, s3, s7
                  slti         t0, s6, 1540
483:              auipc        s0, 277888
                  bne          s4, sp, 497f
                  sll          s8, t3, a4
                  sltiu        s1, t6, 97
                  nop
                  srl          s7, s1, s5
                  bge          zero, a2, 497f
                  bge          t3, s0, 509f
                  or           s7, zero, t5
                  slti         s10, s1, -1590
                  sltiu        sp, t2, 1373
                  srai         t0, s4, 31
                  sltiu        s2, a2, -954
                  beq          zero, s2, 506f
497:              bne          gp, s1, 501f
                  xor          t0, ra, zero
                  srai         a5, a2, 7
                  beq          ra, s5, 513f
501:              auipc        t4, 683676
                  xor          s4, t2, s6
                  sra          a2, a2, a0
                  srl          a5, s1, t0
                  slti         a7, s6, 1724
506:              bltu         s5, s9, 519f
                  sltu         a6, s11, s5
                  blt          s6, a0, 526f
509:              beq          s9, t2, 529f
                  ori          t0, t5, -957
                  bgeu         a0, a6, 529f
                  nop
513:              bge          s11, s11, 530f
                  nop
                  slti         s1, s7, 773
                  slt          s0, t0, a4
                  nop
                  slt          a3, tp, a0
519:              srl          s10, a6, t1
                  bgeu         s8, s5, 534f
                  sub          s11, t1, a0
                  sra          s3, s6, s6
                  slli         s8, s9, 29
                  xori         t6, t5, -191
                  addi         s4, a0, -982
526:              sltu         s5, a1, s5
                  sltu         s4, t0, s9
                  or           s2, s10, s11
529:              addi         a6, t0, -2033
530:              slt          s8, s8, ra
                  andi         s1, s0, -1914
                  xori         t4, a4, -1077
                  and          s4, s0, t0
534:              ori          sp, s10, 1216
                  slti         ra, t4, -255
                  srai         s8, a0, 2
                  slli         s10, s10, 5
                  sltiu        s7, t1, 1045
                  srli         t2, a4, 22
                  or           t2, s5, a0
                  sra          a1, t3, t6
                  sltiu        a0, sp, -1858
                  sll          s1, gp, s0
                  ori          s10, tp, -1565
                  slt          s6, a5, s5
                  auipc        s11, 627641
                  sll          t0, s6, a0
                  xori         t4, a3, -1612
                  srli         a0, a0, 24
                  sltiu        zero, s7, -283
                  andi         s8, gp, 1383
                  ori          s9, a4, 771
                  auipc        sp, 366508
                  srl          t6, s1, sp
                  or           t0, t3, a6
                  sll          a2, s6, t0
                  addi         t0, a4, 243
                  auipc        s6, 150246
                  bgeu         s10, a5, 570f
                  sll          t4, s0, a4
                  addi         t2, gp, 820
                  add          t0, a5, a1
                  srai         s3, s2, 24
                  sltu         gp, gp, t2
                  slti         s6, t0, -1263
                  bgeu         s5, t2, 583f
                  bne          a7, a6, 572f
                  xor          t3, a4, a2
                  slli         zero, s11, 14
570:              or           s3, t0, sp
                  sll          s10, zero, gp
572:              sll          t6, a1, s1
                  bltu         a1, s0, 576f
                  beq          t6, sp, 579f
                  bge          a3, a2, 585f
576:              andi         a6, t4, 1511
                  or           gp, a3, t3
                  slt          s6, s5, s11
579:              xor          s10, s7, sp
                  andi         s5, s0, 1780
                  andi         a5, s3, -515
                  bne          t0, t3, 589f
583:              bge          zero, s3, 602f
                  srl          zero, s3, t5
585:              blt          a4, s6, 598f
                  xor          a5, s0, s9
                  slli         t4, t4, 2
                  srli         s10, s8, 26
589:              sra          a3, a4, sp
                  sra          s5, t1, sp
                  sltu         a1, t0, t3
                  beq          a3, t6, 605f
                  addi         s9, s3, -782
                  bge          tp, ra, 612f
                  sltu         t2, s7, s8
                  sltu         t6, t6, t2
                  or           s0, s6, s5
598:              blt          a3, t3, 609f
                  add          s6, s0, a0
                  add          s8, s1, t4
                  and          a6, a4, sp
602:              xor          s6, zero, a6
                  slti         t3, s8, -1691
                  blt          s5, s3, 617f
605:              lui          s3, 832611
                  auipc        s6, 599035
                  or           a5, t1, a5
                  and          s2, zero, s8
609:              bgeu         t2, t3, 614f
                  sra          t6, t3, t0
                  slti         gp, s2, 1481
612:              auipc        s3, 1028298
                  srli         a5, t5, 6
614:              sra          t4, s9, s3
                  xori         s6, t5, -1467
                  sub          s2, s1, a2
617:              sub          s11, s6, s6
                  bge          t4, zero, 635f
                  add          t3, a1, t4
                  or           s6, a6, t1
                  beq          t5, s5, 634f
                  addi         t6, s1, 1008
                  lui          a1, 388845
                  bge          gp, s3, 628f
                  or           a1, s7, tp
                  lui          s1, 435070
                  sltu         s6, s2, tp
628:              srli         s3, s11, 14
                  auipc        t6, 896669
                  sra          s4, a2, a1
                  sltiu        t6, s4, -1073
                  sub          t0, s7, s7
                  bltu         s4, a7, 644f
634:              beq          a4, t1, 652f
635:              bgeu         t0, s7, 637f
                  sub          t4, s9, t6
637:              add          s6, s4, a5
                  bgeu         t4, a4, 651f
                  srai         s11, a7, 29
                  sub          s0, t6, a4
                  andi         s5, t4, 184
                  slti         s5, t0, -1895
                  sub          s0, s1, tp
644:              bgeu         sp, ra, 649f
                  bne          a3, s4, 653f
                  sltiu        zero, t5, -148
sub_3_6:          jal          gp, 2f
0:                jal          ra, 18f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          s10, 7f
4:                jal          ra, 10f
5:                jal          ra, 17f
6:                jal          s0, 4b
7:                jal          ra, 11f
8:                jal          t0, 6b
9:                jal          ra, 15f
10:               jal          ra, 12f
11:               jal          ra, 8b
12:               jal          ra, 1b
13:               jal          s2, 3b
14:               jal          a6, 0b
15:               jal          ra, 16f
16:               jal          ra, 13b
17:               jal          t6, 14b
18:               srl          sp, a7, t5
                  add          t0, zero, t0
                  sltiu        s8, a6, -1988
649:              slt          s7, s5, ra
                  addi         a1, s3, 779
651:              srl          s9, a6, s4
652:              bgeu         t4, s11, 658f
653:              sltiu        a3, s6, 1303
                  bltu         a0, tp, 663f
                  auipc        s4, 816100
                  and          a3, t0, a5
                  addi         a5, s3, -149
658:              sll          s9, s7, a2
                  bge          a4, s7, 673f
                  nop
                  sltu         sp, gp, s0
                  add          t3, s11, ra
663:              sra          a5, s7, a0
                  sra          a0, a4, s11
                  ori          a6, t6, 1433
                  xori         a4, tp, 857
                  blt          t5, s3, 672f
                  bne          s0, s5, 685f
                  lui          a7, 658303
                  srl          gp, t2, s2
                  or           a6, t1, s5
672:              sra          s7, s4, t1
673:              bltu         sp, s0, 686f
                  xori         t6, gp, 385
                  slt          t2, tp, t4
                  srl          t6, a3, sp
                  blt          a7, s6, 687f
                  bltu         s0, s10, 691f
                  xori         s9, a0, 28
                  beq          a4, t1, 682f
                  or           t0, s9, a1
682:              sltiu        s1, s1, 127
                  srli         s4, s10, 12
                  sltiu        s5, s10, -347
685:              slt          s4, gp, ra
686:              and          zero, s1, s10
687:              or           zero, t4, a7
                  slt          s4, t0, sp
                  slli         s6, t6, 9
                  addi         a4, ra, -1474
691:              slli         a2, t3, 16
                  blt          t0, t5, 703f
                  nop
                  sra          s10, a5, s7
                  bgeu         t4, s9, 709f
                  andi         a7, a0, -1269
                  ori          s6, s0, -1432
                  sra          s0, sp, t4
                  bge          a6, a4, 708f
                  bgeu         s5, a4, 705f
                  nop
                  bgeu         t5, tp, 720f
703:              bne          s3, s7, 709f
                  slt          a2, ra, t3
705:              and          s6, s2, a6
                  slt          t0, t4, s11
                  blt          a5, s1, 712f
708:              sltiu        sp, s11, 63
709:              slt          s3, s4, a4
                  xor          s0, gp, a7
                  sltu         a7, s3, a4
712:              andi         zero, a1, 856
                  xori         s0, s5, 1215
                  bge          s11, ra, 719f
                  xor          a3, s6, s3
                  bge          s2, a4, 727f
                  srli         s3, a2, 0
                  and          a7, s6, zero
719:              and          t3, t6, tp
720:              lui          s3, 275324
                  xor          s9, s6, s0
                  sltiu        s6, t3, -514
                  srai         ra, zero, 7
                  beq          t4, t3, 742f
                  beq          s5, s4, 738f
                  blt          s7, t1, 743f
727:              addi         t4, a4, 91
                  srl          a5, t3, t2
                  bne          s9, a5, 732f
                  sub          a0, t1, a4
                  sll          s0, a4, zero
732:              bne          t1, t6, 751f
                  auipc        gp, 727473
                  bgeu         s9, t5, 754f
                  srai         a0, s3, 18
                  bne          a2, s5, 749f
                  slli         t2, a2, 16
738:              bge          t5, t4, 746f
                  srl          s8, s1, t3
                  sra          zero, a4, s3
                  add          s0, a5, a6
742:              sra          s9, s0, sp
743:              andi         s5, s10, 738
                  xor          a1, a7, a7
                  bgeu         ra, s1, 758f
746:              sltu         s1, s6, a3
                  slt          sp, s9, a7
                  slti         s6, s9, 1741
749:              bgeu         ra, s9, 767f
                  sll          s9, ra, a0
751:              sltiu        a3, a6, 492
                  srai         a7, sp, 28
                  auipc        s6, 793617
754:              sltu         a3, t6, s3
                  add          a6, s3, tp
                  bne          a2, t3, 770f
                  sll          a7, s11, t3
758:              slti         s8, a7, 828
                  xori         s5, t4, -1386
                  add          s3, s10, s6
                  sra          t2, t6, t0
                  and          s1, t4, s9
                  srli         s5, a0, 1
                  bltu         ra, s8, 771f
                  or           zero, t1, t5
                  blt          a6, a7, 783f
767:              blt          t0, a7, 778f
                  addi         a4, a3, -745
                  add          s1, a5, tp
770:              bge          s9, s10, 774f
771:              ori          t2, ra, -1248
                  nop
                  xor          sp, gp, tp
774:              xori         s0, s1, -1912
                  lui          s8, 61628
                  and          a7, s5, t6
                  srl          a1, zero, s3
778:              sub          a5, a3, s9
                  lui          s4, 940115
                  andi         s8, gp, 251
                  or           s10, s7, t3
                  slli         s6, a5, 24
783:              bgeu         s1, s7, 800f
                  lui          s4, 140292
                  xor          s5, a7, s11
                  bne          t0, s3, 791f
                  ori          a6, sp, 1048
                  xori         s4, ra, 1093
                  xori         s7, zero, 869
                  srli         gp, t3, 22
791:              beq          t1, s9, 809f
                  slti         a6, t2, -1325
                  blt          a0, ra, 796f
                  slli         s0, s9, 2
                  srai         a5, s1, 23
796:              bltu         s7, sp, 809f
                  bge          s1, s6, 815f
                  sll          s9, t3, a5
                  sltu         t3, s10, tp
800:              sra          t2, t3, a2
                  srl          t6, t4, t5
                  srli         s4, s8, 23
                  sll          a3, t2, t4
                  srai         s6, s9, 3
                  add          s10, gp, s2
                  lui          s10, 157163
                  sub          s11, s3, s7
                  bltu         t1, t2, 813f
809:              sra          s1, s5, a1
                  slt          t4, t6, s7
                  bne          s0, s4, 813f
                  sltu         s9, t2, s8
813:              nop
                  addi         s4, s8, -200
815:              bne          gp, zero, 833f
                  nop
                  and          s11, s1, s0
                  and          s2, s1, a0
                  sltu         a2, s6, s7
                  sra          t6, sp, t2
                  slt          a4, a1, t6
                  bge          s4, t5, 833f
                  nop
                  andi         t0, sp, 1183
                  addi         a4, s11, 1852
                  slti         t2, s3, 1966
                  bge          a6, s10, 840f
                  beq          a6, t2, 841f
                  or           s8, t4, t3
                  bge          s6, s3, 837f
                  auipc        t0, 838418
                  lui          t4, 357410
833:              bne          a4, a5, 846f
                  srl          s0, t5, t3
                  andi         s7, sp, 2
                  sub          s1, tp, a1
837:              srai         a4, s7, 30
                  bne          t0, s6, 847f
                  slli         s5, a4, 0
840:              xori         s9, s3, -1581
841:              bge          a6, t0, 846f
                  xori         s8, zero, 1003
                  add          t0, t0, a4
                  sltu         s2, t2, zero
                  addi         sp, s7, -1725
846:              slti         a1, gp, 139
847:              bgeu         gp, s6, 851f
                  add          s10, zero, s11
                  sltu         s3, s4, a3
                  bgeu         s9, s2, 864f
851:              auipc        a7, 2054
                  srli         zero, tp, 8
                  add          a0, zero, ra
                  beq          tp, s6, 860f
                  slli         a5, s3, 2
                  bltu         a5, sp, 866f
                  slli         a4, zero, 3
                  sra          a1, s9, s6
                  nop
860:              beq          s5, s5, 877f
                  srai         s9, s4, 10
                  or           s3, a3, gp
                  sub          s1, s4, t5
864:              addi         s10, t1, -1113
                  auipc        zero, 561004
866:              and          sp, t3, s6
                  blt          t3, a6, 878f
                  bge          s5, s10, 873f
                  lui          s9, 319759
                  ori          s8, s8, -756
                  ori          a7, gp, -208
                  beq          s9, s2, 889f
873:              sra          s5, t0, s6
                  srl          a7, a2, zero
                  sltiu        s8, gp, 1013
                  slt          s4, t2, t3
877:              slli         t6, s8, 19
878:              xori         s4, s9, -1584
                  ori          a0, t2, -1962
                  bge          s5, s6, 893f
                  nop
                  sltu         t6, sp, s5
                  auipc        t3, 915627
                  slti         ra, s9, -288
                  auipc        ra, 664465
                  slt          s9, a5, t2
                  sll          s10, s8, s2
                  bltu         s5, s3, 903f
889:              or           t6, a3, tp
                  ori          a6, s7, 12
                  srl          s5, t3, tp
                  sub          t3, tp, s3
893:              add          s0, tp, a7
                  blt          s2, sp, 903f
                  beq          a4, s0, 903f
                  add          s11, s8, s5
                  bne          s10, s8, 903f
                  srli         s9, s2, 19
                  slt          s7, s8, t6
                  sltu         a3, a0, a5
                  beq          s4, s9, 903f
                  lui          sp, 404584
903:              xori         a3, a0, 1634
                  sra          t2, s8, a3
                  addi         s3, a2, 1997
                  srai         s3, t0, 4
                  xori         a3, a1, -790
                  lw           gp, 4(tp)
                  sra          t6, t3, s9
                  addi         tp, tp, 60
                  sub          s1, s0, a5
                  xor          a0, s6, s3
                  slt          a5, t2, tp
                  nop
1292:             addi x16, x3, 1
1292:             jalr x16, x16, 0
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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x6, x4, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x18, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x18, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x18, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x18, x21, ecall_handler
                  li x21, 0x1
                  beq x18, x21, instr_fault_handler
                  li x21, 0x5
                  beq x18, x21, load_fault_handler
                  li x21, 0x7
                  beq x18, x21, store_fault_handler
                  li x21, 0xc
                  beq x18, x21, pt_fault_handler
                  li x21, 0xd
                  beq x18, x21, pt_fault_handler
                  li x21, 0xf
                  beq x18, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x4, x6, zero
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
                  add x4, x6, zero
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
                  add x4, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x4, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x4, x6, zero
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
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x4, x6, zero
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
