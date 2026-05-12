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
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
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
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x13cb648f
                  li x4, 0x34dd4347
                  li x5, 0x80000000
                  li x6, 0xfd8b8c19
                  li x7, 0xb
                  li x8, 0x80000000
                  li x9, 0x3c5ef68c
                  li x11, 0x3f129e4b
                  li x12, 0x2
                  li x14, 0xf5dd8275
                  li x15, 0x80000000
                  li x16, 0x3a54fa37
                  li x17, 0x80000000
                  li x18, 0x47b5a563
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0xe
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xc
                  li x31, 0x0
                  la x10, user_stack_end
main:             la           a1, sub_1
                  addi         a1, a1, -447
                  xori         s8, zero, 711
                  sltu         s7, zero, gp
                  sra          s7, t4, s5
                  srl          s5, s11, s5
                  sltiu        s8, t5, -1050
                  xor          t3, a5, t3
                  bne          s6, s5, main_j2 #branch to jump instr
                  slli         s3, t3, 26
main_j2:          jalr         s9, a1, 447 #jump main -> sub_1
main_15:          jal          s9, 3f
0:                jal          ra, 12f
1:                jal          t1, 16f
2:                jal          t1, 7f
3:                jal          ra, 18f
4:                jal          ra, 20f
5:                jal          ra, 4b
6:                jal          t1, 15f
7:                jal          ra, 8f
8:                jal          s9, 10f
9:                jal          s11, 6b
10:               jal          t1, 30f
11:               jal          gp, 28f
12:               jal          t1, 17f
13:               jal          t1, 11b
14:               jal          ra, 23f
15:               jal          ra, 1b
16:               jal          ra, 25f
17:               jal          ra, 19f
18:               jal          ra, 14b
19:               jal          t1, 29f
20:               jal          ra, 27f
21:               jal          s11, 9b
22:               jal          tp, 0b
23:               jal          s0, 21b
24:               jal          t1, 5b
25:               jal          ra, 26f
26:               jal          t3, 22b
27:               jal          ra, 13b
28:               jal          gp, 2b
29:               jal          ra, 24b
30:               srai         a1, s1, 30
main_2:           jal          s9, 28f
0:                jal          t1, 14f
1:                jal          t0, 23f
2:                jal          ra, 7f
3:                jal          t1, 8f
4:                jal          ra, 16f
5:                jal          a6, 29f
6:                jal          ra, 26f
7:                jal          t1, 25f
8:                jal          ra, 1b
9:                jal          s4, 10f
10:               jal          t1, 21f
11:               jal          s6, 20f
12:               jal          ra, 19f
13:               jal          ra, 5b
14:               jal          sp, 4b
15:               jal          s4, 24f
16:               jal          ra, 18f
17:               jal          s5, 3b
18:               jal          ra, 27f
19:               jal          ra, 0b
20:               jal          s10, 6b
21:               jal          ra, 2b
22:               jal          s10, 12b
23:               jal          t1, 9b
24:               jal          t1, 13b
25:               jal          ra, 15b
26:               jal          ra, 17b
27:               jal          ra, 11b
28:               jal          s11, 22b
29:               sub          a2, s2, a4
main_4:           jal          s9, 7f
0:                jal          ra, 1f
1:                jal          ra, 15f
2:                jal          ra, 6f
3:                jal          ra, 5f
4:                jal          ra, 11f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          a6, 2b
8:                jal          a2, 14f
9:                jal          a5, 10f
10:               jal          t1, 13f
11:               jal          t0, 0b
12:               jal          ra, 3b
13:               jal          ra, 12b
14:               jal          ra, 4b
15:               srli         s10, t5, 1
main_30:          jal          s9, 1f
0:                jal          s7, 20f
1:                jal          tp, 7f
2:                jal          sp, 6f
3:                jal          t1, 21f
4:                jal          ra, 24f
5:                jal          t1, 22f
6:                jal          ra, 4b
7:                jal          ra, 19f
8:                jal          ra, 18f
9:                jal          ra, 15f
10:               jal          ra, 11f
11:               jal          t1, 17f
12:               jal          t0, 30f
13:               jal          t1, 5b
14:               jal          ra, 16f
15:               jal          t5, 12b
16:               jal          ra, 28f
17:               jal          s8, 2b
18:               jal          t1, 3b
19:               jal          t1, 23f
20:               jal          t1, 29f
21:               jal          ra, 10b
22:               jal          t1, 0b
23:               jal          t1, 27f
24:               jal          ra, 13b
25:               jal          ra, 9b
26:               jal          ra, 25b
27:               jal          ra, 8b
28:               jal          ra, 26b
29:               jal          t1, 14b
30:               srl          ra, gp, a3
main_27:          jal          s9, 10f
0:                jal          ra, 13f
1:                jal          s9, 2f
2:                jal          ra, 21f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          ra, 14f
6:                jal          s8, 8f
7:                jal          ra, 20f
8:                jal          t1, 19f
9:                jal          ra, 17f
10:               jal          s3, 6b
11:               jal          t1, 4b
12:               jal          ra, 1b
13:               jal          t1, 18f
14:               jal          ra, 12b
15:               jal          ra, 5b
16:               jal          a5, 15b
17:               jal          s7, 7b
18:               jal          t0, 16b
19:               jal          ra, 11b
20:               jal          ra, 3b
21:               sltiu        s7, a7, 2036
main_33:          jal          s9, 19f
0:                jal          a5, 14f
1:                jal          s0, 13f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          ra, 9f
5:                jal          a4, 0b
6:                jal          t1, 17f
7:                jal          s1, 8f
8:                jal          ra, 4b
9:                jal          s5, 18f
10:               jal          ra, 7b
11:               jal          t1, 5b
12:               jal          t3, 11b
13:               jal          ra, 6b
14:               jal          ra, 1b
15:               jal          ra, 2b
16:               jal          t1, 20f
17:               jal          t2, 15b
18:               jal          ra, 16b
19:               jal          ra, 3b
20:               sra          s1, t6, s11
main_18:          jal          s9, 11f
0:                jal          t4, 9f
1:                jal          s11, 17f
2:                jal          gp, 14f
3:                jal          t1, 1b
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          t3, 3b
7:                jal          ra, 18f
8:                jal          ra, 10f
9:                jal          tp, 2b
10:               jal          t1, 4b
11:               jal          t1, 0b
12:               jal          t2, 19f
13:               jal          ra, 15f
14:               jal          t2, 16f
15:               jal          t0, 5b
16:               jal          ra, 8b
17:               jal          a5, 12b
18:               jal          s5, 13b
19:               slli         ra, s0, 0
main_13:          jal          s9, 7f
0:                jal          ra, 11f
1:                jal          ra, 14f
2:                jal          t1, 13f
3:                jal          s11, 0b
4:                jal          sp, 5f
5:                jal          ra, 12f
6:                jal          a4, 2b
7:                jal          tp, 17f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          ra, 9b
11:               jal          ra, 4b
12:               jal          ra, 19f
13:               jal          ra, 10b
14:               jal          t1, 20f
15:               jal          sp, 18f
16:               jal          ra, 6b
17:               jal          ra, 8b
18:               jal          ra, 1b
19:               jal          t0, 16b
20:               sll          sp, t3, t1
main_7:           jal          s9, 18f
0:                jal          t2, 10f
1:                jal          ra, 19f
2:                jal          ra, 13f
3:                jal          ra, 22f
4:                jal          t1, 7f
5:                jal          t1, 27f
6:                jal          ra, 23f
7:                jal          t4, 5b
8:                jal          ra, 2b
9:                jal          t1, 6b
10:               jal          gp, 28f
11:               jal          t0, 4b
12:               jal          t1, 1b
13:               jal          ra, 25f
14:               jal          t1, 17f
15:               jal          t1, 30f
16:               jal          t1, 11b
17:               jal          s2, 0b
18:               jal          gp, 21f
19:               jal          t5, 15b
20:               jal          ra, 16b
21:               jal          t1, 24f
22:               jal          ra, 12b
23:               jal          ra, 14b
24:               jal          ra, 29f
25:               jal          ra, 26f
26:               jal          tp, 9b
27:               jal          t1, 8b
28:               jal          sp, 3b
29:               jal          ra, 20b
30:               slt          s6, s8, s3
main_8:           jal          s9, 16f
0:                jal          ra, 15f
1:                jal          ra, 21f
2:                jal          ra, 12f
3:                jal          tp, 26f
4:                jal          ra, 3b
5:                jal          t1, 19f
6:                jal          ra, 11f
7:                jal          t1, 24f
8:                jal          t1, 0b
9:                jal          t1, 30f
10:               jal          sp, 27f
11:               jal          ra, 4b
12:               jal          t1, 6b
13:               jal          ra, 7b
14:               jal          t4, 10b
15:               jal          a6, 1b
16:               jal          sp, 8b
17:               jal          t1, 18f
18:               jal          ra, 14b
19:               jal          ra, 9b
20:               jal          t1, 23f
21:               jal          ra, 22f
22:               jal          ra, 13b
23:               jal          s10, 17b
24:               jal          t1, 29f
25:               jal          ra, 28f
26:               jal          ra, 20b
27:               jal          ra, 5b
28:               jal          ra, 2b
29:               jal          s10, 25b
30:               sub          gp, a4, t3
main_3:           jal          s9, 6f
0:                jal          s10, 4f
1:                jal          ra, 16f
2:                jal          t0, 17f
3:                jal          t1, 10f
4:                jal          t0, 14f
5:                jal          ra, 15f
6:                jal          ra, 11f
7:                jal          s0, 5b
8:                jal          ra, 13f
9:                jal          sp, 3b
10:               jal          ra, 2b
11:               jal          s1, 1b
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          ra, 9b
15:               jal          t6, 18f
16:               jal          t0, 8b
17:               jal          ra, 12b
18:               srl          s7, s8, t4
main_32:          jal          s9, 22f
0:                jal          ra, 26f
1:                jal          s4, 23f
2:                jal          ra, 17f
3:                jal          ra, 19f
4:                jal          gp, 0b
5:                jal          t1, 9f
6:                jal          a2, 7f
7:                jal          ra, 29f
8:                jal          t0, 3b
9:                jal          t3, 24f
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          t3, 13f
13:               jal          tp, 20f
14:               jal          gp, 8b
15:               jal          ra, 10b
16:               jal          ra, 2b
17:               jal          ra, 4b
18:               jal          t1, 15b
19:               jal          t1, 1b
20:               jal          t1, 14b
21:               jal          ra, 18b
22:               jal          sp, 28f
23:               jal          ra, 16b
24:               jal          ra, 27f
25:               jal          ra, 11b
26:               jal          t1, 21b
27:               jal          tp, 25b
28:               jal          a5, 12b
29:               addi         t6, s3, -1785
main_6:           jal          s9, 8f
0:                jal          ra, 6f
1:                jal          t1, 17f
2:                jal          ra, 13f
3:                jal          sp, 16f
4:                jal          s2, 12f
5:                jal          t1, 14f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          ra, 18f
9:                jal          gp, 5b
10:               jal          t1, 15f
11:               jal          ra, 20f
12:               jal          ra, 21f
13:               jal          t1, 19f
14:               jal          ra, 7b
15:               jal          s1, 4b
16:               jal          ra, 11b
17:               jal          s11, 10b
18:               jal          ra, 2b
19:               jal          ra, 3b
20:               jal          ra, 9b
21:               srl          t0, s9, a7
main_28:          jal          s9, 23f
0:                jal          gp, 11f
1:                jal          s8, 13f
2:                jal          ra, 21f
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          ra, 18f
6:                jal          a6, 2b
7:                jal          ra, 19f
8:                jal          ra, 7b
9:                jal          s8, 0b
10:               jal          t1, 22f
11:               jal          t1, 8b
12:               jal          ra, 14f
13:               jal          ra, 20f
14:               jal          a6, 4b
15:               jal          s8, 16f
16:               jal          s8, 5b
17:               jal          ra, 26f
18:               jal          s9, 10b
19:               jal          t0, 1b
20:               jal          ra, 25f
21:               jal          ra, 24f
22:               jal          ra, 6b
23:               jal          ra, 12b
24:               jal          ra, 17b
25:               jal          t1, 3b
26:               slti         t2, t1, -420
main_14:          jal          s9, 25f
0:                jal          t1, 8f
1:                jal          s4, 15f
2:                jal          ra, 4f
3:                jal          ra, 11f
4:                jal          t1, 27f
5:                jal          ra, 17f
6:                jal          ra, 1b
7:                jal          sp, 6b
8:                jal          t1, 18f
9:                jal          ra, 22f
10:               jal          ra, 28f
11:               jal          a1, 21f
12:               jal          gp, 19f
13:               jal          ra, 10b
14:               jal          ra, 26f
15:               jal          t1, 20f
16:               jal          ra, 23f
17:               jal          gp, 24f
18:               jal          s2, 14b
19:               jal          ra, 13b
20:               jal          ra, 0b
21:               jal          t1, 5b
22:               jal          t1, 3b
23:               jal          t1, 7b
24:               jal          t1, 16b
25:               jal          t1, 2b
26:               jal          ra, 12b
27:               jal          ra, 9b
28:               add          s0, s3, s10
main_25:          jal          s9, 14f
0:                jal          ra, 28f
1:                jal          tp, 24f
2:                jal          t6, 5f
3:                jal          ra, 20f
4:                jal          gp, 1b
5:                jal          sp, 16f
6:                jal          ra, 3b
7:                jal          s6, 17f
8:                jal          a5, 6b
9:                jal          t1, 26f
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               jal          ra, 21f
13:               jal          ra, 12b
14:               jal          tp, 23f
15:               jal          ra, 9b
16:               jal          ra, 15b
17:               jal          ra, 8b
18:               jal          s6, 22f
19:               jal          t0, 11b
20:               jal          t1, 10b
21:               jal          ra, 18b
22:               jal          sp, 7b
23:               jal          ra, 13b
24:               jal          t1, 27f
25:               jal          t0, 19b
26:               jal          ra, 4b
27:               jal          ra, 25b
28:               jal          t1, 29f
29:               srai         s0, a6, 2
main_11:          jal          s9, 4f
0:                jal          t1, 13f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          t1, 3b
6:                jal          ra, 1b
7:                jal          t0, 11f
8:                jal          sp, 5b
9:                jal          ra, 15f
10:               jal          ra, 8b
11:               jal          t1, 12f
12:               jal          ra, 2b
13:               jal          sp, 14f
14:               jal          t1, 9b
15:               slti         s2, a7, 997
main_29:          jal          s9, 26f
0:                jal          t1, 10f
1:                jal          t0, 6f
2:                jal          ra, 21f
3:                jal          ra, 29f
4:                jal          gp, 2b
5:                jal          s9, 9f
6:                jal          s3, 0b
7:                jal          ra, 16f
8:                jal          ra, 22f
9:                jal          t1, 25f
10:               jal          s11, 15f
11:               jal          ra, 28f
12:               jal          t1, 13f
13:               jal          ra, 30f
14:               jal          a4, 12b
15:               jal          ra, 19f
16:               jal          ra, 1b
17:               jal          s7, 18f
18:               jal          ra, 20f
19:               jal          ra, 3b
20:               jal          s5, 14b
21:               jal          ra, 8b
22:               jal          ra, 23f
23:               jal          ra, 5b
24:               jal          ra, 27f
25:               jal          t1, 24b
26:               jal          t1, 7b
27:               jal          ra, 17b
28:               jal          tp, 4b
29:               jal          t1, 11b
30:               sltiu        t0, ra, -133
main_1:           jal          s9, 3f
0:                jal          ra, 10f
1:                jal          gp, 5f
2:                jal          ra, 7f
3:                jal          t1, 12f
4:                jal          ra, 9f
5:                jal          a1, 2b
6:                jal          ra, 14f
7:                jal          ra, 8f
8:                jal          ra, 17f
9:                jal          ra, 0b
10:               jal          ra, 11f
11:               jal          ra, 6b
12:               jal          ra, 13f
13:               jal          t1, 15f
14:               jal          t1, 16f
15:               jal          ra, 4b
16:               jal          ra, 1b
17:               jal          ra, 18f
18:               slti         s9, s2, -1619
main_22:          jal          s9, 16f
0:                jal          ra, 15f
1:                jal          ra, 5f
2:                jal          s4, 4f
3:                jal          ra, 14f
4:                jal          t1, 18f
5:                jal          t1, 3b
6:                jal          ra, 13f
7:                jal          t3, 19f
8:                jal          ra, 1b
9:                jal          ra, 11f
10:               jal          gp, 8b
11:               jal          a5, 20f
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          t1, 6b
15:               jal          ra, 12b
16:               jal          ra, 10b
17:               jal          ra, 2b
18:               jal          ra, 9b
19:               jal          ra, 17b
20:               lui          s10, 922010
main_23:          jal          s9, 8f
0:                jal          ra, 20f
1:                jal          s6, 17f
2:                jal          ra, 19f
3:                jal          t0, 16f
4:                jal          s7, 24f
5:                jal          ra, 3b
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 22f
9:                jal          ra, 7b
10:               jal          ra, 14f
11:               jal          ra, 18f
12:               jal          s3, 9b
13:               jal          s10, 2b
14:               jal          ra, 11b
15:               jal          a6, 23f
16:               jal          t1, 4b
17:               jal          t1, 6b
18:               jal          ra, 21f
19:               jal          ra, 15b
20:               jal          t1, 1b
21:               jal          ra, 5b
22:               jal          ra, 13b
23:               jal          ra, 12b
24:               srai         s4, s10, 26
main_10:          jal          s9, 10f
0:                jal          a1, 14f
1:                jal          ra, 8f
2:                jal          gp, 4f
3:                jal          t1, 0b
4:                jal          ra, 11f
5:                jal          sp, 9f
6:                jal          ra, 1b
7:                jal          ra, 3b
8:                jal          ra, 7b
9:                jal          ra, 13f
10:               jal          gp, 5b
11:               jal          ra, 15f
12:               jal          ra, 6b
13:               jal          s8, 12b
14:               jal          ra, 2b
15:               sll          s4, zero, t3
main_20:          jal          s9, 20f
0:                jal          ra, 7f
1:                jal          a4, 3f
2:                jal          ra, 19f
3:                jal          t1, 16f
4:                jal          ra, 12f
5:                jal          a1, 18f
6:                jal          t1, 22f
7:                jal          ra, 21f
8:                jal          ra, 2b
9:                jal          a1, 10f
10:               jal          s9, 5b
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          t1, 0b
14:               jal          s9, 25f
15:               jal          t0, 13b
16:               jal          ra, 6b
17:               jal          t1, 11b
18:               jal          ra, 4b
19:               jal          ra, 17b
20:               jal          t1, 9b
21:               jal          ra, 8b
22:               jal          a1, 24f
23:               jal          t5, 14b
24:               jal          t3, 23b
25:               jal          ra, 26f
26:               nop
main_19:          jal          s9, 6f
0:                jal          ra, 5f
1:                jal          t5, 0b
2:                jal          t0, 8f
3:                jal          ra, 11f
4:                jal          t2, 2b
5:                jal          s11, 10f
6:                jal          t1, 7f
7:                jal          ra, 4b
8:                jal          t0, 1b
9:                jal          ra, 3b
10:               jal          ra, 9b
11:               lui          s3, 833397
main_12:          jal          s9, 8f
0:                jal          t1, 6f
1:                jal          ra, 27f
2:                jal          s3, 21f
3:                jal          s2, 7f
4:                jal          t1, 17f
5:                jal          ra, 11f
6:                jal          t0, 20f
7:                jal          ra, 26f
8:                jal          ra, 15f
9:                jal          ra, 19f
10:               jal          ra, 4b
11:               jal          ra, 13f
12:               jal          s2, 24f
13:               jal          tp, 10b
14:               jal          ra, 23f
15:               jal          ra, 12b
16:               jal          ra, 22f
17:               jal          ra, 25f
18:               jal          ra, 0b
19:               jal          ra, 14b
20:               jal          s8, 9b
21:               jal          tp, 16b
22:               jal          t1, 28f
23:               jal          t1, 2b
24:               jal          t1, 3b
25:               jal          t1, 18b
26:               jal          t1, 1b
27:               jal          t1, 5b
28:               slti         t3, a6, -1858
main_9:           jal          s9, 1f
0:                jal          a4, 10f
1:                jal          t1, 7f
2:                jal          s10, 5f
3:                jal          t1, 12f
4:                jal          t1, 2b
5:                jal          ra, 3b
6:                jal          tp, 9f
7:                jal          gp, 15f
8:                jal          ra, 14f
9:                jal          t2, 17f
10:               jal          ra, 6b
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          ra, 11b
14:               jal          ra, 13b
15:               jal          s7, 16f
16:               jal          ra, 4b
17:               lui          ra, 431604
main_24:          jal          s9, 28f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          ra, 6f
3:                jal          a1, 24f
4:                jal          s10, 1b
5:                jal          ra, 7f
6:                jal          a5, 19f
7:                jal          t1, 18f
8:                jal          s5, 23f
9:                jal          s6, 5b
10:               jal          s6, 21f
11:               jal          ra, 14f
12:               jal          s4, 0b
13:               jal          ra, 4b
14:               jal          ra, 3b
15:               jal          ra, 20f
16:               jal          t1, 11b
17:               jal          s5, 16b
18:               jal          ra, 22f
19:               jal          a6, 13b
20:               jal          gp, 2b
21:               jal          ra, 17b
22:               jal          tp, 10b
23:               jal          s4, 15b
24:               jal          ra, 26f
25:               jal          s7, 29f
26:               jal          ra, 27f
27:               jal          ra, 25b
28:               jal          t1, 12b
29:               add          t3, s10, t1
                  sltiu        s5, s3, -1456
                  srl          ra, a2, a1
                  srai         s1, s4, 31
                  xori         s4, a6, 685
                  beq          s5, ra, 10f
                  ori          s0, ra, 1877
                  and          t4, s2, ra
                  auipc        s8, 765527
                  sltu         t3, s4, t6
                  bne          a5, s4, 28f
10:               auipc        s4, 130412
                  xor          s9, s9, sp
                  or           s7, gp, s1
                  xori         s5, t6, 348
                  xori         s9, t3, -1232
                  nop
                  or           a1, a0, a7
                  or           a1, s2, a0
                  srli         s4, tp, 31
                  bltu         s2, sp, 20f
20:               bgeu         s0, a6, 25f
                  and          a1, s5, a7
                  xori         sp, s1, 971
                  sltu         t4, s10, t4
                  andi         s10, s4, -1986
25:               sub          t5, s5, t3
                  ori          t2, a2, 1666
                  slti         s10, t6, -931
28:               addi         s1, t1, -902
                  bge          s7, a0, 46f
                  auipc        a1, 437994
                  srli         t4, s5, 13
                  sub          s5, t0, t1
                  or           a2, a7, sp
                  blt          t6, a7, 54f
                  xor          t2, sp, a7
                  bge          t5, a3, 42f
                  and          s5, t4, s8
                  bgeu         s7, s11, 46f
                  auipc        t0, 199535
                  bgeu         s4, s2, 50f
                  xori         t1, ra, -1228
42:               srli         s1, s4, 22
                  xor          t2, a0, t6
                  bne          sp, s10, 48f
                  sra          tp, t6, s8
46:               srli         a2, s11, 10
                  srai         s1, t6, 21
48:               srl          s7, s10, s3
                  blt          t6, s5, 57f
50:               or           tp, a6, t3
                  xor          s6, t2, s6
                  sltiu        s0, tp, -65
                  srli         s10, gp, 5
54:               and          zero, a5, s0
                  add          t2, a7, t6
                  addi         s0, tp, -2022
57:               auipc        a1, 114043
                  srai         a4, s10, 4
                  srl          t4, a2, t1
                  auipc        t1, 269716
                  and          t2, s6, a2
                  slt          s4, ra, s1
                  nop
                  sra          s5, s4, a1
                  xor          t4, t6, t3
                  andi         t0, t1, -1695
                  beq          a5, zero, 71f
                  srl          a2, s2, t5
                  add          a4, a6, a1
                  sll          t2, s10, ra
71:               sltiu        t0, t0, -534
                  lui          s2, 680959
                  srl          ra, zero, s3
                  and          s6, ra, a4
                  and          a2, a2, ra
                  addi         s8, s3, -853
                  sll          s3, a1, t4
                  blt          a7, t2, 95f
                  sll          t1, s9, a2
                  add          ra, s0, s6
                  bltu         s3, s1, 96f
                  bge          t1, a3, 96f
                  xor          s3, s8, a2
                  slli         sp, s2, 30
                  xori         a5, s6, 529
                  slli         s11, s7, 5
                  blt          sp, sp, 100f
                  sltiu        s9, s3, -2019
                  slt          a2, a2, s11
                  sra          s8, t0, a4
                  srl          a2, a6, s4
                  bgeu         a4, a2, 96f
                  slli         s5, t4, 3
                  sra          a1, s2, sp
95:               sltu         t2, s5, a1
96:               bltu         a0, t4, 111f
                  and          s1, s1, t5
                  bltu         t4, tp, 116f
                  nop
100:              srl          s8, t5, t0
                  xor          s9, t4, t1
                  sub          t3, tp, s1
                  sra          s9, t6, s0
                  slti         s6, gp, 807
                  slti         zero, a2, -854
                  bne          a1, a0, 123f
                  ori          s1, t2, 487
                  sltiu        s5, a7, -1019
                  bge          t2, s3, 129f
                  slt          gp, t1, t6
111:              andi         a1, sp, 868
                  blt          s0, a6, 131f
                  bgeu         a3, a0, 115f
                  addi         t1, s10, -2019
115:              auipc        gp, 625491
116:              xor          a1, ra, t0
                  bgeu         s6, tp, 129f
                  blt          sp, s7, 137f
                  add          sp, s2, zero
                  srai         s5, gp, 24
                  srai         s7, a7, 12
                  blt          tp, gp, 131f
123:              xor          a4, a4, s11
                  slli         s5, a4, 28
                  sll          t1, s0, a3
                  slti         s4, t0, 1992
                  slli         t6, a0, 19
                  auipc        a4, 1013624
129:              sub          t4, t1, t4
                  and          t0, s2, s6
131:              bgeu         s9, a7, 151f
main_5:           jal          s9, 4f
0:                jal          t6, 22f
1:                jal          ra, 3f
2:                jal          ra, 1b
3:                jal          s4, 14f
4:                jal          t1, 23f
5:                jal          sp, 2b
6:                jal          t1, 25f
7:                jal          ra, 17f
8:                jal          ra, 15f
9:                jal          t5, 18f
10:               jal          t1, 20f
11:               jal          t2, 16f
12:               jal          tp, 11b
13:               jal          t1, 5b
14:               jal          t0, 7b
15:               jal          s1, 24f
16:               jal          ra, 10b
17:               jal          a2, 27f
18:               jal          ra, 13b
19:               jal          ra, 28f
20:               jal          t1, 9b
21:               jal          ra, 6b
22:               jal          ra, 21b
23:               jal          t1, 0b
24:               jal          tp, 19b
25:               jal          ra, 26f
26:               jal          t1, 12b
27:               jal          ra, 8b
28:               srai         s5, s8, 2
                  addi         a4, tp, -1098
                  add          s2, a2, t6
                  slt          a1, s4, t4
                  andi         t5, t0, 776
                  slti         a6, t6, 1176
137:              auipc        ra, 884370
                  sltu         t2, a6, t0
                  or           s3, s7, t5
                  sub          s3, sp, t1
                  bne          s1, a1, 149f
                  srai         t2, gp, 13
                  sub          s9, t5, a5
                  andi         s0, t5, -1408
                  bne          t3, a5, 160f
                  slti         s3, s10, -722
                  and          s7, s5, a7
                  beq          s1, s0, 161f
149:              slli         t1, s8, 11
                  srl          s8, s3, gp
151:              srai         sp, t3, 8
                  blt          s10, s9, 172f
                  and          a5, t4, s11
                  bne          s8, s8, 167f
                  beq          s1, t5, 169f
                  xor          t5, a4, a4
                  nop
                  bge          s11, a1, 171f
                  slli         sp, s3, 11
160:              bgeu         a0, s7, 164f
161:              sub          a6, a1, a6
                  slli         t6, t4, 28
                  addi         s10, s2, -458
164:              lui          s11, 556191
                  bgeu         a3, t2, 166f
166:              sra          sp, s5, a5
167:              nop
                  ori          s1, ra, 635
169:              slt          t6, zero, s7
                  srl          t2, t3, a6
171:              auipc        zero, 320824
172:              sltu         gp, sp, a6
                  xori         s0, s7, -1532
                  add          a1, s5, a4
                  nop
                  srl          ra, a6, ra
                  xor          tp, t3, s5
                  andi         s6, ra, -579
                  bgeu         s11, a5, 188f
                  add          t3, t4, a7
                  srl          a4, a6, s9
                  addi         tp, t5, 1865
                  sll          s11, t3, a6
                  srai         a5, a5, 11
                  sltiu        a2, a6, 1369
                  srli         s5, a0, 19
                  sltu         s7, a1, a7
188:              sltu         t1, s7, s11
                  xori         s8, s4, 569
                  sub          t6, s0, a4
                  and          t0, s7, t6
                  srai         s11, s9, 24
                  bne          t6, a3, 208f
                  beq          a4, t0, 213f
                  blt          a7, zero, 203f
                  srai         tp, s10, 15
                  slli         gp, t2, 9
                  or           s4, a4, t3
                  add          a1, t5, t2
                  xor          a4, tp, s9
                  bge          tp, a6, 207f
                  bltu         s8, s11, 212f
203:              sltu         s10, t5, s2
                  sra          tp, a5, ra
                  bne          s3, zero, 209f
                  srl          a4, t6, ra
207:              slli         a2, t1, 30
208:              srli         a1, a2, 7
209:              nop
                  slli         a6, s7, 1
                  lui          t5, 317940
212:              and          s7, a5, tp
213:              slti         s8, s8, -436
                  sub          s11, s9, t2
                  sll          zero, a7, a5
                  nop
                  sub          s3, ra, s5
                  or           gp, t3, t5
                  bge          t1, a6, 239f
                  slt          ra, gp, a5
                  slt          t0, s4, s8
                  ori          s6, a4, 1635
                  srl          a2, s9, t4
                  addi         a6, s7, 1269
                  sra          zero, t4, t5
                  lui          s3, 168292
                  addi         s7, s6, -1580
                  srai         a6, s10, 17
                  add          s11, gp, t1
                  add          sp, sp, s7
                  slt          t6, a0, ra
                  bltu         t1, a1, 247f
                  sltu         s1, a4, a4
                  blt          s2, t6, 251f
                  srai         a4, sp, 0
                  auipc        t3, 826000
                  beq          t1, a0, 254f
                  sll          t4, s11, s3
239:              bne          s5, gp, 254f
                  xori         a1, t2, 1164
                  sltiu        t6, a6, -1248
                  addi         a2, s11, -228
                  bltu         s5, t3, 255f
                  sltu         t6, s1, ra
                  sra          s9, s6, t4
                  add          s6, gp, s9
247:              blt          a1, s6, 255f
                  lui          t6, 184789
                  or           zero, a5, s10
                  bge          a1, t4, 258f
251:              sltu         gp, a0, s1
                  srai         s9, t2, 8
                  srl          s6, a2, a2
254:              sra          s10, s3, s2
255:              slti         a6, s5, 270
                  andi         a4, a1, 378
                  slli         s2, t0, 30
258:              sub          a4, t3, t4
                  sra          s7, s6, a3
                  bge          a6, sp, 266f
                  addi         s1, a2, -672
                  sltiu        tp, t1, -888
                  slti         s7, s7, 19
                  bltu         s5, tp, 281f
                  or           zero, gp, a7
266:              slti         zero, s0, 620
                  and          t6, a1, t5
                  andi         zero, s5, -91
                  srai         s7, s9, 22
                  nop
                  add          gp, s11, t0
                  slt          a5, a4, zero
                  add          t1, a5, t0
                  auipc        t0, 329759
                  sub          t0, t5, tp
                  xori         s2, sp, 1370
                  and          a4, s4, s8
                  and          s7, sp, ra
                  xor          s7, t2, t6
                  srai         s4, tp, 19
281:              addi         s3, t3, 1559
                  sra          s5, ra, s5
                  bltu         a2, s6, 285f
                  bge          ra, a6, 304f
285:              srli         gp, a0, 7
                  sub          s10, s1, s7
                  xori         t0, s5, 1746
                  addi         s11, s11, -787
                  sltu         t2, a7, s10
                  sra          s8, s3, s3
                  blt          a6, s1, 296f
                  bltu         s7, t1, 296f
                  nop
                  sll          t2, s6, t6
                  add          s2, s10, s1
296:              xori         t2, a5, 1573
                  auipc        t1, 553078
                  bgeu         t1, ra, 317f
                  lui          s3, 280598
                  bltu         zero, a1, 318f
                  blt          t3, sp, 320f
                  slt          s3, t0, t4
                  bne          a2, s9, 311f
304:              bne          s4, s1, 309f
                  bltu         ra, s8, 309f
                  sub          s9, s8, a0
                  srai         s5, t5, 17
                  sub          s1, s3, a2
309:              sra          t6, a0, t1
                  beq          a4, s11, 314f
311:              srli         t0, a3, 25
                  slt          s9, a6, t6
                  slti         a5, gp, 1569
314:              auipc        t2, 648510
                  sub          s1, s5, a3
                  sltu         t3, s10, s0
317:              sub          s5, a1, sp
318:              srai         ra, s9, 10
                  or           t3, s3, s6
320:              beq          zero, tp, 334f
                  sll          t3, t5, t2
                  srli         s11, s1, 11
                  srai         tp, tp, 23
                  and          a5, ra, a1
                  sltu         s1, s4, a4
                  bge          s2, s1, 346f
                  auipc        t5, 816128
                  bne          s2, s7, 347f
                  ori          t5, a2, 1540
                  lui          a2, 304290
                  sltu         t3, a3, a4
                  nop
                  andi         s2, a2, 621
334:              srai         t1, ra, 6
                  auipc        t4, 570521
                  bne          sp, t6, 353f
                  or           t5, gp, t0
                  sub          s9, s3, s8
                  or           s8, s10, a7
                  lui          zero, 446275
                  add          zero, t6, a6
                  add          s9, t1, s5
                  add          s2, gp, tp
                  auipc        a1, 601270
                  nop
346:              sltu         s4, s9, s7
347:              auipc        t4, 547304
                  add          a6, t3, sp
                  lui          a2, 225965
                  lui          s4, 715544
                  bge          a4, a4, 369f
                  bne          sp, t4, 358f
353:              bltu         s6, t6, 363f
                  add          t0, s9, a5
                  bgeu         s5, a7, 356f
356:              bge          a3, t3, 376f
                  srl          t0, s1, a4
358:              bne          zero, a4, 377f
                  srl          t0, s11, a2
                  add          s1, a4, s5
                  sll          ra, t6, s4
                  sltu         t6, a1, s10
363:              addi         t3, t0, 1378
                  bgeu         s10, a0, 366f
                  bltu         a3, a1, 382f
366:              sub          s10, zero, a1
                  addi         t4, a7, 997
                  sltiu        s0, s2, 286
369:              srl          tp, a5, a6
                  sub          s2, zero, a1
                  srl          s0, t1, s1
                  bne          t4, s1, 387f
                  nop
                  slti         s9, a7, -317
                  blt          a3, s1, 388f
376:              sltu         s6, t6, t0
377:              srl          s0, a3, t2
                  sub          s4, a1, a6
                  srai         s0, a3, 23
                  srai         s3, s4, 19
                  bltu         gp, a1, 396f
382:              slt          t1, t1, s1
                  ori          s11, a6, 925
                  bne          t6, s2, 399f
                  sll          s9, a4, t2
                  or           s11, s0, s1
387:              nop
388:              srli         s11, tp, 11
                  slli         s5, s1, 8
                  blt          a6, s4, 402f
                  sltu         t4, s5, tp
                  nop
                  srl          s3, s10, a7
                  auipc        s0, 525800
                  xor          tp, s1, s6
396:              bltu         ra, a1, 415f
                  bgeu         s0, t2, 405f
                  xor          gp, s5, a4
399:              addi         tp, a0, -983
                  bgeu         sp, a1, 408f
                  srli         zero, s1, 19
402:              slli         sp, t2, 18
                  srli         s1, s9, 23
                  bne          ra, s8, 410f
405:              or           s5, s6, t3
                  andi         s0, s6, -773
                  sll          s4, s5, a5
408:              slt          s1, zero, s3
                  or           t3, a7, s1
410:              addi         s9, t6, -158
                  bgeu         s3, t6, 424f
                  srai         s4, tp, 13
                  ori          s9, t2, -1971
                  srai         s1, s8, 2
415:              bge          a6, t0, 435f
                  bgeu         gp, s9, 433f
                  bne          s6, gp, 426f
                  sra          t3, s3, s9
                  sub          t4, t3, zero
                  sll          sp, t6, s5
                  ori          a4, zero, 531
                  srl          s7, a0, s10
                  slt          s7, s0, s1
424:              auipc        t5, 866890
                  blt          s3, t4, 429f
426:              xor          s0, s5, s8
                  srai         t1, s0, 0
                  xor          t0, a3, s11
429:              andi         t0, s1, 1841
                  andi         t3, s11, 1597
                  and          s10, s0, a4
                  bge          s8, s1, 446f
433:              blt          ra, a4, 448f
                  andi         a4, t5, 680
435:              sltu         t1, a3, s0
                  andi         t6, s2, 1446
                  add          s7, t1, s11
                  xor          t1, gp, a5
                  bltu         a4, a0, 454f
                  andi         t5, s11, 16
                  and          s1, s3, s10
                  srli         tp, s8, 5
                  addi         s8, s2, 334
                  blt          s9, s1, 461f
                  ori          s3, tp, -1846
446:              addi         s6, a0, 1028
                  or           s2, s7, s8
448:              slli         s7, t1, 23
                  sll          t4, s1, s11
                  addi         t4, s1, 1931
                  slti         s1, ra, 457
                  slli         s5, tp, 0
                  bge          t0, t1, 457f
454:              or           s10, s1, a5
                  addi         s5, zero, -913
                  sltu         s10, a3, a5
457:              nop
                  and          s0, a1, s9
                  add          t2, s11, a7
                  lui          s3, 116806
461:              add          t5, s10, s1
                  addi         s11, t5, 1491
                  or           a2, s11, gp
                  srli         a2, t2, 18
                  slti         a6, a0, 1036
                  andi         t6, a5, 236
                  sub          s0, s5, s9
                  srai         a6, s6, 5
                  lui          tp, 829953
                  xori         zero, t0, 1810
                  addi         gp, s5, 719
                  lui          a2, 1045058
                  slti         s1, s2, -805
                  bltu         a4, s9, 491f
                  addi         s9, a6, 202
                  addi         s6, ra, -1449
                  slt          zero, zero, s8
                  sll          s7, t6, a1
                  add          a5, a5, t3
                  srli         s0, sp, 18
                  srli         s9, tp, 18
                  blt          s10, a5, 501f
                  addi         a1, s1, 877
                  sra          zero, s8, s11
                  and          t5, sp, a0
                  or           a4, s2, t5
                  sra          s2, a3, a6
                  ori          ra, t2, -493
                  sra          ra, s11, zero
                  sltiu        s4, s3, 1784
491:              or           t5, s4, a7
                  slti         a4, s2, -9
                  lui          ra, 43358
                  add          a5, t4, s11
                  lui          s11, 130413
                  slti         ra, t3, 1058
                  beq          s1, s8, 516f
                  and          t4, ra, s11
                  srl          s3, ra, t3
                  andi         s1, tp, -265
501:              addi         t2, zero, -90
                  add          gp, tp, s5
                  bltu         s1, s8, 509f
                  lui          s6, 124088
                  xori         a4, t6, -251
main_31:          jal          s9, 10f
0:                jal          ra, 3f
1:                jal          gp, 11f
2:                jal          ra, 1b
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          t1, 0b
6:                jal          ra, 4b
7:                jal          a2, 6b
8:                jal          ra, 5b
9:                jal          t1, 8b
10:               jal          s0, 9b
11:               slt          a6, a5, t6
                  srli         a5, s1, 3
                  srl          t0, s7, s7
                  sltiu        t6, s1, -243
509:              bgeu         s3, gp, 524f
                  xor          a2, s5, s9
                  auipc        t2, 475799
                  and          s9, tp, sp
                  slt          tp, s11, s0
                  sltu         ra, t1, s2
                  sub          t1, t0, s1
516:              sltu         a4, t0, s11
                  lui          t0, 1040386
                  sltu         s7, s5, s1
                  sra          a4, a6, gp
                  auipc        t4, 773853
                  sra          s4, a0, s10
                  and          t0, s9, t4
                  auipc        s10, 369234
524:              xori         ra, t0, 130
                  sub          s7, t6, s8
                  bge          a2, t6, 539f
                  srli         tp, gp, 10
                  auipc        gp, 479673
                  auipc        sp, 979740
                  beq          a4, t4, 550f
                  blt          sp, s0, 532f
532:              beq          s4, sp, 552f
                  slti         s9, s8, 462
                  sub          s8, s8, a0
                  blt          a1, t4, 552f
                  bne          s11, a6, 544f
                  srl          t3, s1, a6
                  auipc        s1, 915154
539:              xor          a4, t5, a6
                  srai         gp, tp, 27
                  xor          a6, s4, s4
                  ori          a4, a5, 660
                  addi         t4, s0, -1175
544:              sll          s3, a0, s2
                  xori         a4, t3, -1096
                  auipc        t4, 800163
                  sltiu        s1, t2, 352
                  and          t5, ra, s7
                  bgeu         t4, t6, 553f
550:              srli         s9, s1, 26
                  srli         gp, s5, 2
552:              ori          s4, t4, -1460
553:              srai         t0, a3, 29
                  sra          tp, t3, a7
                  slt          t5, s3, a2
                  slti         s0, a0, 710
                  andi         ra, a7, 1742
                  slt          ra, a6, s8
                  beq          s6, t5, 569f
                  xori         s1, a7, -1402
                  xori         s3, tp, -731
                  add          s8, a2, ra
                  sra          s8, a2, t3
                  bne          a6, tp, 582f
                  xori         t0, s1, 1519
                  sltiu        s6, a7, 67
                  srl          s11, a1, s9
                  andi         a5, t5, -480
569:              addi         s8, s5, 1130
                  xor          a1, s0, s5
                  slti         s4, t0, -611
                  blt          gp, a3, 592f
                  add          s4, s2, a7
                  slt          a2, tp, s11
                  blt          sp, s8, 583f
                  bgeu         a5, zero, 581f
                  sll          sp, t0, s6
                  slti         s5, s8, 1585
                  blt          a3, t0, 581f
                  sll          s6, a2, t4
581:              bltu         s1, s11, 589f
582:              xori         s1, t1, -1450
583:              auipc        gp, 629025
                  srl          t0, s1, gp
                  blt          a3, gp, 589f
                  xori         s5, s4, 1361
                  sltiu        s11, a4, -1714
                  lui          s1, 661331
589:              sra          t1, tp, a4
                  sltiu        s1, a3, 1922
                  srli         s10, t5, 10
592:              nop
                  auipc        s9, 659343
                  blt          s6, t2, 613f
                  ori          ra, t4, 1646
                  srli         t6, zero, 0
                  blt          s1, s7, 609f
                  beq          t1, a2, 604f
                  slti         sp, a7, 907
                  sra          t6, a2, s0
                  xori         tp, t1, -1633
                  bgeu         s8, a5, 615f
                  lui          s0, 793295
604:              ori          s6, s7, -2044
                  andi         s0, s9, -909
                  bne          s10, s11, 615f
                  lui          s11, 291918
                  beq          gp, a6, 610f
609:              ori          a2, a7, 1168
610:              xori         t5, tp, 1167
                  and          s0, s8, a5
                  slti         a6, sp, -240
613:              xori         s4, a2, -555
                  add          s6, sp, gp
615:              srli         t4, sp, 26
                  nop
                  sltiu        zero, a7, 1237
                  bltu         t1, sp, 636f
                  blt          a4, a0, 624f
                  sltiu        gp, a2, 1281
                  and          ra, tp, t3
                  ori          t6, a7, 222
                  slt          t0, a6, t4
624:              bne          s3, s11, 643f
                  sll          t6, a2, a7
                  sltu         zero, s8, s6
                  slt          s10, s4, gp
                  add          a4, t6, ra
                  nop
                  addi         a5, s9, 1463
                  add          a6, gp, t1
                  sltu         s6, a6, s8
                  bne          t0, ra, 646f
                  bltu         s6, gp, 654f
                  sra          t0, a1, ra
636:              nop
                  lui          tp, 882893
                  and          s10, s7, t2
                  slt          zero, s0, s3
                  bge          t1, a0, 652f
                  srai         a1, s11, 5
                  addi         t4, sp, -1212
643:              slti         s5, a4, 1546
                  srai         t0, s1, 30
                  srl          s4, s6, a4
646:              sltiu        t1, s6, 1699
                  xor          s6, s1, zero
                  nop
                  beq          tp, a3, 669f
                  auipc        t3, 903185
                  andi         s5, a5, 2020
652:              slt          s10, s7, t1
                  auipc        tp, 687212
654:              lui          t6, 835517
                  sltu         s11, a2, t0
                  auipc        t2, 74767
                  bltu         sp, t5, 670f
                  slt          s6, s3, s1
                  beq          s10, t2, 667f
                  srai         a2, t1, 31
                  srai         s6, a4, 6
                  nop
                  bge          a4, a1, 667f
                  beq          a5, a0, 679f
                  auipc        s8, 353974
                  ori          t5, t2, 982
667:              beq          t0, ra, 673f
                  ori          s4, t5, -544
669:              slt          t6, t5, s11
670:              ori          a4, a2, -720
                  auipc        s9, 116516
                  and          a6, t6, t6
673:              nop
                  auipc        s1, 420584
                  add          s5, a3, a2
                  bne          a0, tp, 680f
                  srai         a2, a6, 18
                  slt          s0, t1, a6
679:              sltiu        a5, a2, 1441
680:              bge          s7, s10, 688f
                  sltiu        zero, s4, 107
                  add          a5, a2, s11
                  lui          t4, 549551
                  add          a2, s0, t6
                  slti         t3, t4, 1479
                  xor          t5, ra, tp
                  lui          ra, 842723
688:              sra          s10, s10, t0
                  slti         t5, a2, 314
                  slti         t3, s4, -429
                  bge          s2, sp, 701f
                  slli         t4, zero, 2
                  beq          t1, s1, 701f
                  andi         s11, tp, 738
                  bltu         t2, s6, 712f
                  beq          s7, t5, 711f
                  bgeu         a1, s6, 698f
main_26:          jal          s9, 0f
0:                jal          t1, 10f
1:                jal          ra, 8f
2:                jal          ra, 14f
3:                jal          t1, 6f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          ra, 13f
7:                jal          t1, 4b
8:                jal          t1, 5b
9:                jal          t1, 12f
10:               jal          s1, 11f
11:               jal          ra, 3b
12:               jal          t1, 1b
13:               jal          t1, 7b
14:               sltiu        t0, sp, -932
698:              bge          a6, s0, 717f
                  slt          tp, t5, s10
                  add          t2, s11, t0
701:              bltu         s2, t6, 705f
                  bge          s4, t0, 711f
                  beq          t1, s11, 720f
                  slli         t1, s3, 18
705:              slt          s0, s10, gp
                  sra          s4, s8, a2
                  sub          s3, s8, t0
                  or           s4, s11, a7
                  sll          ra, a0, tp
                  sll          a6, s6, a1
711:              srli         s1, t5, 24
712:              xor          sp, t2, s9
                  sll          tp, ra, a4
                  lui          zero, 549677
                  srli         s6, s10, 15
                  bgeu         s2, a0, 730f
717:              andi         a4, t5, -513
                  bge          t6, s8, 737f
                  blt          a0, a0, 736f
720:              lui          t6, 807967
                  sltiu        s7, s10, -357
                  bne          a7, a6, 742f
                  andi         s2, t1, 63
                  bge          s6, s8, 730f
                  bne          t1, a7, 740f
                  auipc        a4, 822970
                  sll          t0, s7, t2
                  add          s6, s8, t4
                  bne          gp, a6, 744f
730:              auipc        t5, 329306
                  auipc        zero, 616845
                  lui          s6, 403905
                  nop
                  xori         s8, a1, 789
                  lui          tp, 88023
736:              srli         a6, t6, 24
737:              xor          t0, ra, a3
                  bltu         s1, t2, 743f
                  sltu         ra, t0, a3
740:              lui          t0, 983762
                  and          a4, t4, s9
742:              xor          s8, zero, s7
743:              slt          s8, t5, a5
744:              beq          t6, s7, 758f
                  sltu         zero, t5, s4
                  bgeu         t1, gp, 747f
747:              srli         s2, s11, 6
                  sltiu        t5, a6, 84
                  srai         tp, ra, 25
                  srl          s7, t5, s7
                  bge          s8, s8, 770f
                  slli         ra, t2, 10
                  srli         gp, t4, 17
                  nop
                  bgeu         t4, s8, 759f
                  sltu         a5, t2, s10
                  andi         tp, ra, -518
758:              auipc        t1, 387043
759:              srai         sp, zero, 22
                  ori          s9, s5, 198
                  sll          t5, a7, s9
                  sll          s8, t1, t0
                  auipc        a4, 628641
                  sra          t5, s9, a5
                  blt          zero, a1, 784f
                  blt          t1, a0, 774f
                  xor          a5, a6, s0
                  srai         a1, tp, 12
                  lui          t2, 934348
770:              add          s4, t0, t3
                  sub          a6, s6, a3
                  bne          a1, sp, 792f
                  ori          zero, ra, -1872
774:              xori         a5, sp, -1214
                  sub          t6, t5, ra
                  ori          t0, t5, -1085
                  andi         s2, ra, -1484
                  slli         s6, s6, 6
                  sra          s6, a5, t5
                  srl          t5, s9, zero
                  slli         a5, s11, 30
                  srai         sp, s7, 4
                  nop
784:              nop
                  sltu         t5, s5, s1
                  srl          ra, a1, tp
                  xor          t1, a2, a6
                  lui          s1, 663736
                  sra          a4, s0, s11
                  srl          a4, t6, tp
                  srli         a1, gp, 11
792:              srl          s0, a0, s3
                  lui          a4, 424087
                  sltiu        a4, a0, -1184
                  bge          sp, t3, 812f
                  sltu         s10, a7, a0
                  bge          a6, a0, 812f
                  sra          s10, gp, t2
                  auipc        a6, 320486
                  xor          a2, a7, s0
                  ori          s7, s2, -197
                  slt          sp, s2, a2
                  bltu         a1, a7, 816f
                  addi         s11, zero, -1947
                  srli         gp, s1, 17
                  auipc        t5, 256188
                  sub          s10, s7, a5
                  slt          t6, s7, t1
                  slt          a1, t1, ra
                  slti         a4, s11, -1758
                  srai         s10, sp, 3
812:              xor          s2, s1, a1
                  srli         s10, a6, 24
                  auipc        s8, 275337
main_17:          jal          s9, 13f
0:                jal          t1, 19f
1:                jal          ra, 11f
2:                jal          t1, 8f
3:                jal          t1, 6f
4:                jal          t1, 9f
5:                jal          s11, 1b
6:                jal          a4, 14f
7:                jal          ra, 17f
8:                jal          t1, 12f
9:                jal          s0, 2b
10:               jal          ra, 15f
11:               jal          gp, 4b
12:               jal          t3, 18f
13:               jal          t3, 7b
14:               jal          t6, 10b
15:               jal          t1, 0b
16:               jal          s2, 5b
17:               jal          ra, 16b
18:               jal          t1, 3b
19:               nop
                  nop
816:              xori         sp, zero, -245
                  nop
                  nop
                  sra          a6, t1, t2
                  sltu         s2, s3, a7
                  slti         tp, s4, 34
                  andi         s1, s7, -2003
                  bge          s4, a3, 843f
                  sltiu        t1, s9, 869
                  lui          t2, 246200
                  beq          t3, t3, 843f
                  auipc        s0, 664373
                  nop
                  lui          s9, 515715
main_16:          jal          s9, 25f
0:                jal          ra, 19f
1:                jal          ra, 23f
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          ra, 20f
5:                jal          t1, 18f
6:                jal          ra, 3b
7:                jal          tp, 13f
8:                jal          t1, 7b
9:                jal          t6, 24f
10:               jal          sp, 8b
11:               jal          ra, 22f
12:               jal          t1, 11b
13:               jal          ra, 5b
14:               jal          ra, 26f
15:               jal          t1, 17f
16:               jal          t1, 0b
17:               jal          ra, 9b
18:               jal          ra, 15b
19:               jal          t1, 6b
20:               jal          s10, 1b
21:               jal          t1, 2b
22:               jal          t1, 4b
23:               jal          ra, 21b
24:               jal          t1, 14b
25:               jal          ra, 12b
26:               sltiu        t4, zero, 276
                  sltiu        t4, t3, -1237
                  lui          s7, 563799
                  slli         s4, gp, 15
                  bgeu         s6, a1, 848f
                  srl          s8, s4, t4
                  auipc        t0, 454813
                  sra          t5, s1, t5
                  and          a1, a7, s9
                  sub          t6, a2, ra
                  slt          s0, zero, t2
                  srli         a2, a6, 16
                  lui          s7, 663779
                  ori          t0, s1, 1907
843:              nop
                  bge          s4, ra, 854f
                  ori          s10, s8, -1702
                  xor          t4, s11, gp
                  auipc        zero, 1009313
848:              auipc        s4, 694832
                  bgeu         a1, a5, 862f
                  slli         a5, s9, 10
                  sll          t4, t0, sp
                  sltiu        s3, s7, -1704
                  bge          gp, s5, 873f
854:              srai         s9, t5, 0
                  xor          t5, a0, s7
                  sltiu        s11, s6, 507
                  bne          a2, a7, 875f
                  sltiu        t1, a5, 698
                  slt          a2, tp, s1
                  bge          s6, tp, 868f
                  lui          t6, 496303
862:              add          s10, t5, s7
                  srl          ra, t4, t3
                  bne          s1, s10, 872f
                  lui          t1, 680038
                  or           tp, s8, a3
                  bgeu         s11, t5, 886f
868:              and          s8, a3, a5
                  beq          t4, s5, 875f
                  lui          s9, 645723
                  lui          t3, 561245
872:              slti         a1, s1, -2015
873:              auipc        t1, 647893
                  nop
875:              ori          s5, t5, -632
                  srai         t3, t1, 30
                  or           a2, t6, s1
                  and          s3, a6, a6
                  srli         s2, s0, 13
                  bne          a1, s7, 884f
                  srai         a4, s10, 5
                  or           ra, t5, s8
                  and          ra, s7, t5
884:              xor          a6, a5, sp
                  slli         s8, a3, 31
886:              add          s10, t5, s4
                  sltu         s9, a0, t4
                  blt          t0, a4, 890f
                  bgeu         s5, a3, 901f
890:              srai         s5, s6, 28
                  srli         a1, tp, 10
                  bltu         s11, a5, 896f
                  xor          s7, a0, s6
                  sltu         t2, s7, t6
                  bge          t4, s3, 904f
896:              sltu         s3, gp, t5
                  or           t6, a1, t5
                  beq          zero, s7, 915f
                  srai         t1, s2, 27
                  sll          t1, a3, s3
901:              blt          a4, gp, 907f
                  bge          a7, a1, 903f
903:              lui          s7, 4409
904:              auipc        a5, 827896
                  bne          s11, gp, 909f
                  andi         a1, t6, -1334
907:              bge          tp, zero, 913f
                  xori         a2, a6, -1926
909:              xor          a4, a1, s5
                  xor          gp, t2, s4
                  sra          s5, s3, gp
                  xor          zero, s9, t4
913:              sltu         s8, tp, a2
                  or           s2, sp, s1
915:              bne          s11, t0, 935f
                  sll          s4, a3, s11
                  xor          t4, a7, s11
                  and          a6, s8, a3
                  bge          zero, s8, 927f
                  and          t0, t4, s9
                  bne          s4, s9, 934f
                  sub          t5, s0, a6
                  lui          a2, 140994
                  xor          s2, a3, a3
                  blt          s3, a6, 942f
                  slti         a4, a0, 579
927:              slli         gp, a3, 24
                  and          ra, t3, t3
                  srli         t1, gp, 9
                  bge          a4, s3, 947f
                  xor          a2, a2, s5
                  sltu         ra, s3, t4
                  blt          sp, sp, 943f
934:              sll          s1, gp, t3
935:              beq          t1, a4, 949f
                  sub          tp, t1, a6
                  auipc        zero, 97834
                  bltu         s8, a3, 951f
                  slli         t2, a3, 3
                  blt          a1, s4, 948f
                  sub          a6, a2, a2
942:              blt          t5, s8, 950f
943:              xori         s6, t5, 1259
                  sll          s11, s4, s6
                  slt          t5, t6, t1
                  bgeu         zero, t5, 948f
947:              blt          a5, t5, 952f
948:              xori         t4, gp, 859
949:              auipc        a6, 412450
950:              slt          s0, s3, sp
951:              sra          s8, t0, s7
952:              andi         a5, t2, -1226
                  nop
                  bgeu         t1, a3, 969f
                  bltu         a1, a1, 961f
                  srai         zero, a5, 23
                  ori          s7, a3, -669
                  xor          t1, s2, s6
                  sll          tp, t1, s5
                  add          a1, a1, a6
961:              sltiu        a4, a5, 253
                  slli         s2, s2, 15
                  and          zero, zero, s3
                  sub          s4, gp, t3
                  andi         s7, a2, 53
                  slt          t4, sp, s7
                  slt          s6, t4, t4
                  slli         ra, a7, 1
969:              slli         a4, t4, 21
                  blt          s4, a0, 989f
                  sub          t1, ra, s4
                  nop
                  slt          tp, s8, s7
                  ori          s9, s0, 1143
                  xori         tp, a1, 977
                  sll          s8, sp, a2
                  nop
                  add          t1, a0, a1
                  slt          t2, s11, s3
                  srl          t3, ra, t1
                  or           t2, s9, s1
                  auipc        s8, 140629
                  slt          a5, s7, a7
main_21:          jal          s9, 25f
0:                jal          ra, 18f
1:                jal          t1, 30f
2:                jal          s0, 17f
3:                jal          tp, 24f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          t1, 21f
7:                jal          ra, 22f
8:                jal          ra, 14f
9:                jal          s5, 19f
10:               jal          s7, 16f
11:               jal          t0, 26f
12:               jal          s7, 2b
13:               jal          ra, 11b
14:               jal          ra, 1b
15:               jal          ra, 27f
16:               jal          s4, 0b
17:               jal          a1, 6b
18:               jal          ra, 8b
19:               jal          ra, 3b
20:               jal          t1, 29f
21:               jal          ra, 10b
22:               jal          t1, 20b
23:               jal          ra, 5b
24:               jal          ra, 15b
25:               jal          ra, 13b
26:               jal          a2, 28f
27:               jal          t0, 23b
28:               jal          t0, 4b
29:               jal          ra, 12b
30:               lui          s7, 592700
                  sltiu        t6, s1, 108
                  lui          s7, 509378
                  lui          s10, 209685
                  bne          a5, t5, 1007f
                  sub          a1, a1, a5
989:              beq          t0, t4, 1008f
                  nop
                  addi         a4, s11, -275
                  and          t0, gp, s7
                  sll          a4, t0, a4
                  sltu         zero, ra, sp
                  sltu         s8, s1, s8
                  and          a5, t2, t3
                  bgeu         t1, t3, 1012f
                  xori         t3, s1, -2002
                  xor          ra, t4, s3
                  xor          s2, gp, tp
                  nop
                  sub          s6, a0, t5
                  sll          s7, t4, a2
                  sub          s8, gp, s6
                  beq          a0, t4, 1009f
                  auipc        a4, 522024
1007:             srai         s8, sp, 14
1008:             bge          s0, s9, 1026f
1009:             add          gp, t0, s6
                  lui          a4, 992503
                  bltu         t5, a5, 1031f
1012:             bltu         a6, a1, 1016f
                  bge          s9, a4, 1022f
                  addi         s8, s6, -1393
                  sra          s10, s6, s10
1016:             srli         s7, a1, 5
                  sra          s0, sp, s10
                  bgeu         s6, s7, 1035f
                  and          t1, s6, a0
                  sltu         t3, s6, s7
                  xori         s5, s3, -1252
1022:             xori         a5, a7, 1273
                  sra          s7, s4, s6
                  add          s7, a6, a1
                  auipc        s2, 189126
1026:             slti         s4, sp, 1157
                  or           s1, tp, a3
                  blt          s11, s4, 1043f
                  slt          t6, s7, a0
                  slt          gp, t1, a4
1031:             bne          ra, s5, 1050f
                  ori          a5, ra, -628
                  sltiu        s4, s1, -1823
                  nop
1035:             add          a4, s1, a3
                  sll          zero, s2, a1
                  sra          a2, t4, a4
                  slti         t3, s6, -508
                  nop
                  slli         s9, a2, 0
                  lui          t2, 999884
                  bltu         t2, t2, 1054f
1043:             addi         s10, a7, -946
                  lui          t4, 270990
                  add          t1, a0, a6
                  srl          a6, t1, a4
                  slti         t1, t5, -1564
                  slli         gp, a5, 12
                  bne          a1, ra, 1062f
1050:             ori          a5, t3, 540
                  nop
                  nop
                  srai         s9, a3, 30
1054:             beq          t6, t5, 1062f
                  beq          t0, s4, 1056f
1056:             sltu         s8, s9, s10
                  and          s5, a7, t0
                  srli         s11, s2, 2
                  bltu         s8, t3, 1063f
                  bne          sp, s6, 1064f
                  or           s0, t1, s3
1062:             addi         tp, t6, 386
1063:             sll          t2, s11, t5
1064:             srl          zero, a2, s10
                  and          s8, s0, ra
                  slt          t1, sp, sp
                  addi         sp, s7, 190
                  bge          a4, s10, 1088f
                  sub          s4, a5, ra
                  or           t5, s0, s2
                  slt          s2, s1, a3
                  srl          s9, t5, s7
                  bltu         t3, t0, 1093f
                  beq          t3, s5, 1086f
                  srli         s10, t1, 10
                  bne          s0, s0, 1093f
                  or           s1, a4, s6
                  bne          s8, a3, 1093f
                  bne          t2, a1, 1094f
                  bne          s6, s10, 1099f
                  bltu         zero, a0, 1085f
                  bne          s0, a1, 1096f
                  nop
                  auipc        t0, 844743
                  xori         s3, s10, -959
                  la           gp, sub_1
                  sll          t4, t3, s4
                  addi         gp, gp, -641
                  bge          a0, t5, main_j1 #branch to jump instr
                  nop
                  addi         a1, s6, -432
main_j1:          jalr         s9, gp, 641 #jump main -> sub_1
                  bgeu         t3, s5, 1092f
                  sra          t1, t6, s4
1085:             sll          s7, a2, a7
1086:             auipc        s2, 717012
                  sra          s4, t0, a0
1088:             bltu         a5, a3, 1096f
                  sra          s8, s3, s0
                  srli         s1, s9, 29
                  auipc        s10, 211777
1092:             bltu         s4, s0, 1111f
1093:             or           ra, s0, tp
1094:             sltu         t6, t3, a1
                  lui          s9, 408460
1096:             andi         a4, tp, 140
                  blt          t3, a0, 1103f
                  srli         s0, t0, 21
1099:             auipc        s11, 49956
                  bne          a5, a3, 1113f
                  ori          t1, t5, 233
                  bgeu         tp, s1, 1110f
1103:             bne          s1, s3, 1123f
                  bne          s2, s1, 1123f
                  xori         t3, zero, 39
                  andi         t3, t0, -1866
                  slti         s1, t3, -578
                  bgeu         t2, s7, 1123f
                  sltu         s7, t6, s10
1110:             slli         a6, t4, 17
1111:             sub          s0, ra, s10
                  bge          a3, t6, 1130f
1113:             srli         sp, s4, 18
                  ori          s1, s1, 490
                  blt          s11, a5, 1121f
                  beq          s9, s4, 1133f
                  xori         s9, a1, -1307
                  sll          a1, s7, a1
                  sra          t3, zero, ra
                  ori          t0, s2, 1037
1121:             slli         s5, tp, 12
                  add          a6, a0, a1
1123:             lui          s9, 138078
                  bne          s8, t0, 1129f
                  bge          s8, t6, 1142f
                  ori          t6, s3, 638
                  slti         t6, a7, -55
                  slti         t2, a3, -880
1129:             beq          a3, s3, 1131f
1130:             slt          s7, a7, s8
1131:             nop
                  blt          s10, tp, 1142f
1133:             ori          t0, gp, 254
                  or           s4, sp, t1
                  sll          gp, a5, t6
                  slti         s8, a0, -1243
                  lui          s5, 814628
                  beq          t5, s3, 1143f
                  andi         sp, zero, -1578
                  andi         s5, s9, -1543
                  sub          ra, s1, t5
1142:             lui          s0, 836476
1143:             slt          a1, ra, a5
                  ori          t0, ra, -444
                  srl          gp, a5, t2
                  andi         ra, s11, 386
                  srl          s9, gp, s6
                  xor          t5, sp, s10
                  and          s10, s1, t0
                  bltu         zero, s6, 1163f
                  andi         a1, a5, -1039
                  lui          t0, 499648
                  sll          s9, t6, ra
                  bgeu         t5, a6, 1171f
                  beq          t3, s6, 1170f
                  lui          s6, 689335
                  bne          gp, s4, 1176f
                  sll          s0, s2, s11
                  xor          tp, a2, a7
                  sra          a2, a3, tp
                  beq          a0, sp, 1173f
                  add          t5, s11, t0
1163:             nop
                  nop
                  sra          s0, s8, s6
                  sra          s8, s11, s3
                  andi         s5, s6, 1026
                  slti         s3, sp, 971
                  slt          a1, s3, t1
1170:             ori          s8, t0, -1026
1171:             slt          gp, s6, s7
                  andi         sp, tp, 1529
1173:             sltu         s3, a0, s8
                  sra          a5, tp, s11
                  addi         gp, a6, -58
1176:             auipc        ra, 493007
                  nop
                  add          s10, tp, a6
                  andi         t4, t6, 1685
                  sll          s4, a4, s7
                  nop
                  blt          t3, t0, 1199f
                  sltu         zero, s5, a3
                  bltu         sp, s2, 1188f
                  addi         t6, a2, 622
                  lui          s0, 753582
                  lui          s9, 1006210
1188:             addi         t5, s6, 1817
                  sltiu        s0, a5, -277
                  sltiu        t6, t6, 1534
                  auipc        s0, 114395
                  add          t0, s6, a3
                  sra          s7, s6, s9
                  nop
                  srai         t3, a2, 23
                  or           s6, a2, s2
                  add          s11, s2, a2
                  sltiu        a2, s1, -831
1199:             beq          s0, t2, 1209f
                  lui          t0, 430046
                  sll          s1, s7, tp
                  slli         ra, s5, 16
                  sub          s10, s2, s4
                  sltiu        t5, a2, 1691
                  sltiu        s9, t4, -1441
                  addi         s6, tp, -1538
                  beq          zero, a0, 1213f
                  sll          zero, s1, s9
1209:             srli         s0, a4, 29
                  slli         t5, a0, 27
                  addi         s1, s8, -382
                  nop
1213:             bge          t2, s8, 1226f
                  srai         a6, s2, 25
                  sll          s1, t0, t6
                  sltiu        t1, zero, -2042
                  bgeu         t4, s9, 1225f
                  bne          s5, t3, 1238f
                  slti         s10, a1, 1610
                  xori         gp, s11, 1129
                  sltiu        s8, gp, -813
                  sub          gp, gp, t0
                  lui          s5, 311681
                  xor          s9, a4, t5
1225:             sll          s2, a4, ra
1226:             addi         s5, s8, 1963
                  sub          s1, a2, s8
                  addi         s4, t1, -275
                  auipc        a1, 637415
                  and          a1, t6, gp
                  srai         a5, a4, 6
                  beq          sp, s0, 1251f
                  bltu         a6, gp, 1248f
                  nop
                  xori         s4, s2, -1459
                  beq          s8, a4, 1254f
                  slt          t6, a5, ra
1238:             sltiu        gp, s6, 1772
                  add          tp, s2, s7
                  bltu         s9, s11, 1249f
                  blt          t2, a5, 1261f
                  bltu         t6, a0, 1246f
                  bgeu         zero, t6, 1251f
                  bgeu         t1, s9, 1261f
                  srli         s10, a4, 1
1246:             sll          s10, a7, t6
                  srli         s4, s4, 22
1248:             bltu         a6, t1, 1262f
1249:             nop
                  sra          s6, a4, s6
1251:             sra          s5, s9, t4
                  addi         s5, s10, 69
                  sub          t0, ra, a5
1254:             sra          s1, t3, t3
                  bltu         ra, t5, 1257f
                  add          a5, t3, a1
1257:             srl          s7, a5, a2
                  auipc        s8, 1004874
                  blt          s6, s10, 1274f
                  sra          a1, zero, s7
1261:             and          ra, a0, s11
1262:             sltu         t1, a3, s4
                  add          s9, a0, s0
                  lui          ra, 853130
                  srl          t4, s9, ra
                  bltu         s6, s5, 1286f
                  auipc        a4, 84662
                  sra          zero, s6, a4
                  srli         s8, a1, 20
                  nop
                  addi         t0, a5, 164
                  sub          a5, s11, s7
                  lui          s9, 506641
1274:             sltu         t0, s4, a7
                  and          s6, a6, s8
                  sra          s7, s1, t2
                  sltu         t4, s7, a4
                  blt          sp, t3, 1279f
1279:             addi         t6, s3, -149
                  sra          a4, t6, t1
                  srl          tp, sp, s2
                  andi         t3, sp, -1369
                  sltiu        ra, s7, 1455
                  bge          s8, t4, 1290f
                  sltiu        s9, s2, -1958
1286:             slti         t1, s8, 940
                  bgeu         t0, s8, 1295f
                  nop
                  andi         a2, a4, -1300
1290:             addi         ra, a2, 871
                  bltu         a0, s3, 1295f
                  and          s4, a3, zero
                  xor          s10, t1, s8
                  add          s0, sp, tp
1295:             sra          s7, a3, zero
                  nop
                  sltiu        t5, a0, -1234
                  nop
                  sltu         s9, s6, s2
                  bgeu         t1, s11, 1319f
                  srl          s1, t6, tp
                  sltu         t6, s2, s4
                  sltu         a5, s3, gp
                  bge          a0, gp, 1317f
                  lui          a4, 240203
                  lui          s6, 14415
                  or           gp, s11, t0
                  sltu         t6, ra, t0
                  sltiu        a1, gp, 277
                  srai         a1, a6, 11
                  sra          t1, s10, a5
                  or           a2, zero, s7
                  bgeu         ra, a2, 1333f
                  xori         s11, t3, 566
                  beq          s10, a2, 1333f
                  srl          gp, a4, s2
1317:             lui          a1, 12393
                  srli         a1, t4, 14
1319:             slli         t0, a2, 31
                  srl          a6, gp, s5
                  bge          tp, zero, 1325f
                  srli         gp, a0, 17
                  sltu         t4, sp, s11
                  addi         s3, s4, 1526
1325:             sltiu        s2, s1, 1951
                  srli         s5, a4, 25
                  xor          s1, a6, a4
                  lui          gp, 689304
                  sub          s6, t4, s2
                  sra          gp, t6, s3
                  sra          ra, s9, s6
                  add          s7, a7, gp
1333:             add          s8, s0, s4
                  srli         a1, s1, 21
                  blt          s0, gp, 1352f
                  sra          tp, t2, s9
                  xor          s9, tp, ra
                  slti         zero, a4, 1070
                  lui          ra, 860914
                  xori         tp, s6, 494
                  sub          s9, s11, s9
                  slli         a2, s6, 13
                  bgeu         a6, s5, 1351f
                  add          s8, s3, a2
                  andi         t5, t5, 452
                  and          s4, t0, a3
                  sll          ra, t3, ra
                  addi         s9, t3, -1639
                  srli         t6, gp, 6
                  bgeu         t2, a1, 1369f
1351:             bltu         s11, tp, 1370f
1352:             slt          s6, a6, a0
                  and          t2, t6, gp
                  bltu         t6, s9, 1363f
                  bgeu         t6, s11, 1360f
                  nop
                  sll          s6, s0, ra
                  srai         a2, s4, 23
                  addi         s5, ra, -786
1360:             lui          a5, 161020
                  bne          s3, s10, 1367f
                  srl          s8, s2, s0
1363:             add          t5, a7, t4
                  blt          s0, s8, 1376f
                  blt          t5, a5, 1371f
                  bge          sp, s1, 1381f
1367:             andi         s4, s3, -1571
                  bge          gp, s10, 1382f
1369:             bgeu         t1, t0, 1388f
1370:             andi         s7, gp, 829
1371:             nop
                  ori          t1, t3, 1405
                  andi         a2, a7, 645
                  ori          sp, zero, 550
                  sub          zero, t4, gp
1376:             xor          s7, t0, s10
                  slli         sp, s2, 13
                  bltu         a3, s10, 1388f
                  addi         a1, s9, 1882
                  beq          s9, s0, 1382f
1381:             lui          t3, 109706
1382:             xori         s11, t4, 1676
                  slt          gp, t1, sp
                  bge          t3, t4, 1404f
                  or           s4, s7, a3
                  sll          ra, s1, gp
                  sra          a5, s6, s9
1388:             xor          s8, t0, t2
                  slt          t1, s2, s10
                  slti         s10, s7, 1359
                  srl          s2, a2, s8
                  xor          zero, a0, t1
                  bltu         sp, zero, 1394f
1394:             beq          s9, s9, 1402f
                  srli         a1, s4, 29
                  nop
                  beq          a6, a3, 1401f
                  srai         s4, t3, 3
                  ori          s3, s11, 1143
                  blt          s7, s6, 1404f
1401:             slt          a6, a6, gp
1402:             srai         a1, s10, 8
                  blt          gp, a5, 1420f
1404:             add          t1, tp, zero
                  xor          s3, t1, a6
                  ori          a4, zero, 920
                  or           t5, ra, t5
                  srli         t6, s6, 5
                  srai         a2, t1, 25
                  nop
                  srli         tp, zero, 5
                  nop
                  slti         t0, s9, 1864
                  addi         t5, s9, -136
                  blt          a7, a0, 1423f
                  nop
                  ori          s4, a0, 1742
                  and          t0, a5, a6
                  bge          zero, s5, 1436f
1420:             slli         t5, t5, 16
                  bge          s11, t3, 1436f
                  ori          s5, t2, -474
1423:             bgeu         t1, s1, 1443f
                  srli         s1, a4, 9
                  xori         t0, a6, 501
                  sub          s5, s9, t5
                  or           a1, a0, s6
                  srl          s3, gp, zero
                  addi         sp, s6, -1544
                  sltiu        ra, s11, -195
                  srl          t0, t1, t4
                  xor          s10, a3, t0
                  or           s5, a6, a5
                  srl          sp, a3, s4
                  and          t5, s6, a0
1436:             xori         s7, s6, -118
                  bne          t0, tp, 1452f
                  sltu         t1, zero, s0
                  bge          s2, t3, 1452f
                  srli         s4, t4, 28
                  bge          t1, s5, 1445f
                  bltu         s11, t6, 1457f
1443:             lui          s8, 207200
                  bge          t0, zero, 1446f
1445:             xori         a4, a7, -656
1446:             bltu         s8, t5, 1463f
                  slt          a2, s10, ra
                  slli         a4, t1, 11
                  bge          t5, a0, 1468f
                  sub          s1, a0, a3
                  or           s11, t0, t5
1452:             or           a5, s3, a4
                  srl          s5, zero, s9
                  bltu         s2, t6, 1458f
                  auipc        s10, 5110
                  bltu         ra, a5, 1471f
1457:             slli         a5, ra, 29
1458:             addi         s6, a1, 571
                  nop
                  sll          s2, s8, a0
                  slli         a5, s3, 28
                  nop
1463:             sub          tp, s4, s10
                  sub          t5, s2, t1
                  nop
                  addi         ra, t2, 115
                  srli         s11, t6, 28
1468:             add          s5, t1, t2
                  blt          a1, a6, 1478f
                  nop
1471:             slli         s11, a3, 14
                  sra          s10, s0, s9
                  addi         a6, t2, 1815
                  xor          s3, gp, t1
                  or           ra, s11, t6
                  xori         t6, a3, -529
                  auipc        s5, 987033
1478:             or           a6, t2, sp
                  beq          gp, t6, 1494f
                  ori          zero, sp, -1251
                  ori          a6, s3, 1451
                  and          t1, tp, s8
                  xor          t3, s2, s7
                  slli         gp, s4, 12
                  andi         s11, a7, 1052
                  xor          s6, a1, t1
                  xori         s11, s9, 540
                  addi         s2, a6, 1893
                  add          t3, s7, s6
                  srl          s7, a6, t5
                  or           t1, t1, a3
                  sub          s4, t5, a6
                  sub          zero, a4, s4
1494:             auipc        t0, 416549
                  ori          gp, t3, -1708
                  srl          s5, s5, a1
                  or           t4, t1, s10
                  bltu         zero, s9, 1512f
                  bne          s4, zero, 1507f
                  sltu         t4, a2, gp
                  auipc        zero, 764322
                  lui          s1, 433805
                  sra          a2, a6, t1
                  sub          s2, t6, a2
                  bge          t6, s7, 1518f
                  lui          t5, 329454
1507:             auipc        s1, 57499
                  ori          s5, t3, -1256
                  andi         s0, s2, -749
                  slti         s6, s10, 1097
                  addi         t2, a1, 541
1512:             andi         s7, s2, -169
                  slli         s10, s1, 21
                  and          zero, a1, t6
                  blt          tp, a3, 1532f
                  sltiu        t6, sp, 448
                  beq          s1, s4, 1537f
1518:             bge          t6, a2, 1526f
                  ori          ra, ra, -216
                  auipc        a1, 11237
                  xor          t0, t5, a2
                  and          s5, a3, t5
                  slli         a4, a2, 30
                  or           a4, a0, s4
                  srl          t3, s3, s1
1526:             add          s0, t6, s6
                  bgeu         s9, s2, 1547f
                  srl          a4, t6, a4
                  xori         sp, t2, 479
                  lui          ra, 660829
                  lui          a2, 557393
1532:             bgeu         s3, tp, 1542f
                  lui          s3, 55470
                  blt          s6, s1, 1538f
                  xor          t2, s4, s9
                  ori          s1, s4, -1396
1537:             and          s6, a2, s2
1538:             ori          a4, a5, 678
                  bltu         s11, tp, 1544f
                  srai         s7, t0, 12
                  auipc        a1, 543569
1542:             blt          tp, s5, 1561f
                  xor          s11, t2, a4
1544:             add          a5, a0, ra
                  auipc        t1, 33935
                  and          s10, t0, t1
1547:             ori          t5, zero, -402
                  sltu         s6, tp, a3
                  sltu         a4, a4, a7
                  ori          t5, t6, -2015
                  srli         s8, a4, 11
                  beq          a5, s0, 1565f
                  sra          s10, s3, s6
                  srai         s8, a4, 21
                  xori         s0, gp, 766
                  sub          s6, a7, s1
                  blt          s1, s9, 1565f
                  slti         s5, s6, 815
                  beq          s8, a2, 1576f
                  srli         t3, ra, 12
1561:             xor          t1, s4, t0
                  slt          t1, t1, s8
                  bltu         s1, s3, 1564f
main_0:           jal          s9, 3f
0:                jal          ra, 4f
1:                jal          ra, 14f
2:                jal          s11, 10f
3:                jal          ra, 8f
4:                jal          t3, 13f
5:                jal          ra, 9f
6:                jal          t1, 1b
7:                jal          ra, 6b
8:                jal          t1, 22f
9:                jal          t1, 2b
10:               jal          sp, 27f
11:               jal          t1, 28f
12:               jal          ra, 15f
13:               jal          ra, 17f
14:               jal          t1, 12b
15:               jal          t1, 11b
16:               jal          gp, 19f
17:               jal          ra, 5b
18:               jal          t1, 16b
19:               jal          ra, 29f
20:               jal          t0, 26f
21:               jal          ra, 23f
22:               jal          ra, 24f
23:               jal          ra, 18b
24:               jal          ra, 25f
25:               jal          t1, 0b
26:               jal          s2, 7b
27:               jal          s4, 20b
28:               jal          a5, 21b
29:               ori          s1, s3, -188
1564:             sltu         t0, s2, t2
1565:             addi         t3, s2, 939
                  slli         sp, t1, 4
                  xor          a6, a2, s2
                  and          s7, t4, s3
                  bgeu         s4, s2, 1575f
                  srl          s2, a4, a4
                  add          s0, s9, a5
                  srli         a1, a5, 29
                  slti         t0, t5, -753
                  slt          s1, ra, a3
1575:             ori          s3, a7, 142
1576:             and          a6, s3, t3
                  blt          t3, a7, 1597f
                  sltiu        s6, t1, -1946
                  add          sp, s10, t4
                  srai         zero, a3, 15
                  bne          s1, t6, 1600f
                  slli         sp, s0, 25
                  slli         tp, sp, 13
                  sltu         a6, a6, ra
                  and          s9, a7, a4
                  nop
                  sll          tp, a4, s0
                  addi         s7, t5, -515
                  and          s5, t5, a6
                  xor          s5, s7, s5
                  lui          t0, 248266
                  bgeu         s5, zero, 1610f
                  or           ra, s0, s3
                  sltiu        t4, ra, -1362
                  sra          s8, s5, s9
                  lui          sp, 70538
1597:             slt          t4, s10, s1
                  srli         s2, s5, 14
                  xori         t3, s1, -1590
1600:             slt          sp, a1, t2
                  xor          s1, t1, t6
                  slli         t1, gp, 23
                  and          a5, t6, s1
                  andi         a1, sp, 1901
                  slt          s3, tp, a0
                  add          s7, ra, a2
                  sra          t0, a4, a4
                  bltu         a4, a5, 1614f
                  xor          s9, s0, s7
1610:             auipc        t3, 582515
                  or           zero, s3, s9
                  srl          t4, s2, a2
                  bltu         t1, t0, 1625f
1614:             lui          ra, 209598
                  sra          t3, s9, t2
                  bne          t6, a7, 1621f
                  and          s2, t4, s6
                  lui          ra, 869101
                  nop
                  bge          t6, zero, 1639f
1621:             bltu         a3, s9, 1622f
1622:             slt          s9, a2, s3
                  addi         s8, a4, 326
                  xori         t0, s10, 475
1625:             sub          t3, s1, t0
                  lui          t4, 921193
                  bne          t5, s4, 1633f
                  srai         s3, a4, 10
                  lui          s10, 536003
                  bltu         tp, a1, 1642f
                  bltu         tp, t6, 1650f
                  or           ra, a2, s3
1633:             srl          s7, t0, zero
                  add          t1, a6, t0
                  bltu         t6, s6, 1654f
                  ori          a1, t1, 1082
                  ori          s8, s11, 1734
                  lui          t2, 488790
1639:             or           a6, s9, t0
                  xori         s8, t3, -875
                  nop
1642:             blt          s10, s1, 1662f
                  sub          s5, a6, a2
                  or           s9, s8, t0
                  blt          t4, t6, 1653f
                  blt          t0, a7, 1663f
                  bgeu         ra, s9, 1667f
                  slti         sp, a1, 874
                  srai         s1, ra, 25
1650:             xori         t2, ra, -1198
                  xor          s0, a4, ra
                  add          s9, t6, t1
1653:             sll          a2, ra, sp
1654:             sltu         s7, tp, ra
                  andi         s11, s9, -573
                  add          s9, a4, t0
                  slli         gp, s7, 14
                  slti         s5, sp, -1500
                  sll          a1, t0, s11
                  andi         t6, ra, -1895
                  sra          s8, gp, s4
1662:             auipc        t5, 641288
1663:             sra          a6, a7, a3
                  slti         s7, t4, 1667
                  xor          t5, a0, gp
                  sltu         t2, s6, zero
1667:             beq          s6, a7, 1671f
                  andi         s10, t2, -282
                  xori         a2, t6, 1555
                  slti         a4, s5, 525
1671:             bltu         a3, a6, 1689f
                  sub          tp, a6, t2
                  beq          s10, s0, 1677f
                  xori         t2, a6, -1000
                  xor          gp, t0, s11
                  addi         s2, s11, 136
1677:             slt          sp, a7, zero
                  blt          s2, sp, 1698f
                  slti         t5, gp, 1860
                  add          t0, a1, a2
                  sub          a1, a1, a7
                  srli         tp, s10, 9
                  bgeu         s10, s3, 1693f
                  add          t0, s5, s9
                  beq          t3, a4, 1702f
                  andi         s11, sp, 270
                  slt          s8, a6, t6
                  addi         s0, a1, -1122
1689:             xor          s7, t3, gp
                  bgeu         gp, ra, 1703f
                  sra          a4, t3, a0
                  beq          s11, s11, 1706f
1693:             auipc        s7, 13658
                  sra          zero, s8, s6
                  nop
                  nop
                  and          t0, a0, t4
1698:             ori          s1, s6, 1600
                  sltiu        s5, t4, 1443
                  sub          s11, s6, s0
                  andi         s10, ra, -1228
1702:             srai         s3, s5, 13
1703:             bgeu         a4, t6, 1720f
                  blt          s5, s1, 1706f
                  bltu         a0, a2, 1713f
1706:             auipc        s9, 715576
                  lui          a1, 275909
                  bgeu         t2, t2, 1717f
                  slli         t0, zero, 16
                  nop
                  srai         s11, t0, 2
                  xor          s7, a5, t0
1713:             srai         ra, s4, 9
                  bne          s4, s10, 1722f
                  srli         t3, a1, 5
                  slli         s5, t2, 9
1717:             addi         gp, s4, -1443
                  auipc        a4, 433888
                  sra          zero, a7, sp
1720:             srl          s9, s1, s6
                  srli         s1, a2, 12
1722:             nop
                  sub          t5, a0, zero
                  sra          s8, a7, a0
                  or           t6, s8, s6
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            and          a5, a4, a2
                  and          s11, s8, s6
                  addi         a0, a0, -24
                  sltiu        s11, s10, -1842
                  xor          ra, a1, t0
                  sw           s9, 4(a0)
                  lui          s1, 1013808
                  ori          s10, t0, 1247
                  xor          s10, s11, s0
                  add          s8, a2, t1
sub_5_0:          jal          s9, 1f
0:                jal          t1, 10f
1:                jal          ra, 11f
2:                jal          ra, 17f
3:                jal          t1, 2b
4:                jal          gp, 19f
5:                jal          s5, 4b
6:                jal          ra, 18f
7:                jal          tp, 6b
8:                jal          t1, 13f
9:                jal          gp, 8b
10:               jal          a1, 12f
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          ra, 0b
14:               jal          ra, 5b
15:               jal          ra, 16f
16:               jal          t5, 7b
17:               jal          ra, 15b
18:               jal          ra, 9b
19:               sra          s10, tp, s7
                  nop
                  ori          s3, a4, 68
                  andi         s3, t0, 1939
                  slt          s8, s3, a1
                  xor          s6, zero, zero
                  sub          s10, a0, t3
                  slt          t5, a7, a2
                  blt          t2, a4, 25f
                  blt          t1, t5, 27f
                  srai         zero, s11, 13
                  auipc        a2, 631842
                  slti         s5, s10, 811
                  srai         s6, gp, 12
                  nop
                  xor          s7, ra, a2
                  bltu         a5, t4, 19f
                  nop
                  addi         t5, a5, -767
                  sltu         s6, t1, s8
19:               lui          t4, 320867
                  sll          a6, s8, ra
                  srai         s8, s8, 4
                  srl          a2, s0, zero
                  or           tp, a7, s6
                  or           s7, s10, s5
25:               srl          t1, s8, zero
                  bltu         t2, s7, 34f
27:               bne          s5, t4, 40f
                  lui          s2, 250886
                  slli         t3, s3, 16
                  ori          t3, gp, -969
                  or           s2, a1, s4
                  andi         s10, t0, -833
                  srli         s7, s3, 24
34:               sltu         s9, zero, s1
                  andi         s9, a4, 391
                  xor          a5, a2, s4
                  lui          t6, 510380
                  and          s8, t0, t0
                  addi         t5, s11, -1178
40:               bgeu         t6, a7, 51f
                  sll          t6, t6, t2
                  xor          gp, s9, s0
                  sltu         t5, a1, a7
                  sltiu        t0, s4, -2047
                  slt          ra, t0, s5
                  sra          zero, tp, t4
                  lui          s11, 412519
                  xori         s10, t5, 985
                  ori          t1, a6, 769
                  srl          a2, sp, s4
51:               xor          t5, s11, a2
                  bge          t5, s9, 68f
                  blt          a7, s9, 70f
                  beq          s5, t4, 63f
                  sltiu        gp, s0, 641
                  and          tp, tp, s0
                  add          s10, sp, a6
                  lui          zero, 145875
                  beq          a0, s2, 76f
                  sll          s9, zero, t5
                  xor          s11, s11, t6
                  and          s1, ra, a7
63:               xori         t3, t4, -1949
                  auipc        t5, 191303
                  xori         tp, s10, 1283
                  nop
                  beq          a2, a6, 86f
68:               blt          a7, t6, 86f
                  srl          t3, s11, s1
70:               bltu         a7, s8, 74f
                  add          a5, a5, a1
                  ori          ra, s11, -1563
                  xor          gp, s7, zero
74:               and          zero, zero, s1
                  sra          a4, t6, s4
76:               nop
                  bne          a1, t5, 85f
                  addi         t6, gp, -850
                  blt          s6, sp, 80f
80:               bge          s9, t0, 89f
                  and          s7, t0, s1
                  slti         s7, s4, 423
                  sub          t6, ra, t1
                  nop
85:               xor          t2, gp, s6
86:               lui          s3, 1031976
                  bltu         s5, s10, 94f
                  xor          s7, s9, s7
89:               add          t6, t4, a0
                  srl          s4, a5, a0
                  sltiu        ra, a7, 301
                  bgeu         s1, a2, 94f
                  sltu         tp, s5, s3
94:               sra          a5, s1, s2
                  add          t6, a1, s10
                  slti         gp, a1, 665
                  nop
                  lw           s9, 4(a0)
                  slti         t2, s11, -865
                  nop
                  slti         s7, ra, 1784
                  addi         a0, a0, 24
                  sltiu        t6, s6, 7
                  add          zero, a0, a5
                  xor          s11, s3, a7
137:              addi x28, x25, 1
137:              jalr x28, x28, 0
sub_4:            bge          s0, s10, sub_4_stack_p
sub_4_stack_p:    addi         a0, a0, -16
                  sra          a2, a2, s5
                  auipc        s10, 581460
                  sw           s9, 4(a0)
                  xor          s5, t6, zero
                  srl          s1, s2, s10
                  sra          t4, a7, s0
                  xori         s2, s6, 1355
                  andi         t0, a6, 1505
                  la           gp, sub_5
                  addi         gp, gp, -535
                  xor          tp, a5, s2
                  xor          s10, s10, s9
                  auipc        a6, 311657
                  srai         a5, zero, 20
                  beq          a0, zero, sub_4_j8 #branch to jump instr
                  ori          s10, a7, -781
                  add          t5, sp, t4
sub_4_j8:         jalr         s9, gp, 536 #jump sub_4 -> sub_5
                  bge          a1, s5, 16f
                  xor          a6, t5, t4
                  auipc        s10, 654201
                  srai         s6, s3, 26
                  sub          s6, s9, a5
                  lui          zero, 764596
                  addi         t5, a6, 1739
                  andi         a6, s0, 887
                  xor          t5, t4, s1
                  srl          s7, t1, a1
                  add          sp, a3, a2
                  bne          s6, t6, 16f
                  blt          t1, s1, 16f
                  srl          a2, s7, ra
                  slti         s4, gp, 1837
                  srai         s2, s6, 1
16:               or           a1, zero, a5
                  lw           s9, 4(a0)
                  lui          s6, 931861
                  auipc        s1, 328519
                  addi         a0, a0, 16
                  or           t4, zero, t5
                  and          t3, a4, s2
                  srli         s7, s0, 10
44:               addi x19, x25, 0
44:               jalr x19, x19, 0
sub_1:            xori         ra, gp, -1317
                  addi         a0, a0, -48
                  slli         s1, a6, 2
                  sra          a5, sp, s2
                  sltiu        a5, t1, 1421
                  lui          t2, 279882
                  sw           s9, 4(a0)
                  auipc        a6, 322721
sub_1_8:          jal          s9, 9f
0:                jal          t1, 7f
1:                jal          t1, 3f
2:                jal          gp, 12f
3:                jal          ra, 13f
4:                jal          s2, 25f
5:                jal          ra, 27f
6:                jal          t0, 19f
7:                jal          t1, 15f
8:                jal          s11, 24f
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          ra, 22f
12:               jal          t1, 17f
13:               jal          ra, 2b
14:               jal          s3, 10b
15:               jal          ra, 5b
16:               jal          t1, 14b
17:               jal          gp, 18f
18:               jal          s1, 8b
19:               jal          ra, 16b
20:               jal          t0, 0b
21:               jal          t1, 20b
22:               jal          t1, 26f
23:               jal          ra, 6b
24:               jal          s9, 21b
25:               jal          t1, 1b
26:               jal          t1, 23b
27:               sub          t0, t5, t3
sub_1_3:          jal          s9, 12f
0:                jal          sp, 15f
1:                jal          t1, 8f
2:                jal          ra, 0b
3:                jal          a2, 2b
4:                jal          sp, 10f
5:                jal          ra, 6f
6:                jal          ra, 17f
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          t0, 1b
10:               jal          t1, 13f
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          t1, 18f
14:               jal          t1, 9b
15:               jal          ra, 14b
16:               jal          s10, 11b
17:               jal          ra, 16b
18:               andi         s0, s8, -1805
sub_1_7:          jal          s9, 2f
0:                jal          s7, 9f
1:                jal          t1, 6f
2:                jal          ra, 1b
3:                jal          gp, 8f
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          ra, 4b
7:                jal          t2, 5b
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          t1, 0b
11:               jal          ra, 10b
12:               addi         s3, a1, -149
sub_1_5:          jal          s9, 3f
0:                jal          tp, 9f
1:                jal          t1, 2f
2:                jal          t1, 6f
3:                jal          s1, 12f
4:                jal          t1, 8f
5:                jal          ra, 13f
6:                jal          ra, 4b
7:                jal          t1, 0b
8:                jal          t1, 11f
9:                jal          t5, 5b
10:               jal          ra, 7b
11:               jal          t2, 10b
12:               jal          ra, 1b
13:               addi         tp, s10, -978
sub_1_0:          jal          s9, 14f
0:                jal          ra, 11f
1:                jal          s7, 25f
2:                jal          ra, 16f
3:                jal          tp, 24f
4:                jal          s5, 0b
5:                jal          t1, 3b
6:                jal          t1, 10f
7:                jal          t1, 19f
8:                jal          a4, 23f
9:                jal          t1, 1b
10:               jal          ra, 2b
11:               jal          s10, 8b
12:               jal          t1, 5b
13:               jal          ra, 18f
14:               jal          ra, 21f
15:               jal          ra, 9b
16:               jal          s9, 17f
17:               jal          ra, 15b
18:               jal          ra, 20f
19:               jal          ra, 13b
20:               jal          t1, 12b
21:               jal          ra, 7b
22:               jal          s6, 6b
23:               jal          ra, 22b
24:               jal          s4, 4b
25:               sub          t2, s10, a2
sub_1_4:          jal          s9, 19f
0:                jal          ra, 23f
1:                jal          t1, 8f
2:                jal          s7, 28f
3:                jal          ra, 2b
4:                jal          ra, 12f
5:                jal          ra, 30f
6:                jal          s6, 22f
7:                jal          ra, 16f
8:                jal          t1, 11f
9:                jal          t6, 7b
10:               jal          ra, 13f
11:               jal          sp, 15f
12:               jal          t1, 5b
13:               jal          t5, 20f
14:               jal          ra, 25f
15:               jal          ra, 29f
16:               jal          a2, 21f
17:               jal          ra, 4b
18:               jal          tp, 27f
19:               jal          ra, 10b
20:               jal          ra, 1b
21:               jal          ra, 3b
22:               jal          s6, 26f
23:               jal          s7, 18b
24:               jal          s11, 9b
25:               jal          ra, 0b
26:               jal          ra, 24b
27:               jal          s4, 6b
28:               jal          ra, 17b
29:               jal          ra, 14b
30:               xori         s1, s1, 1252
sub_1_6:          jal          s9, 22f
0:                jal          ra, 20f
1:                jal          t1, 11f
2:                jal          sp, 0b
3:                jal          ra, 10f
4:                jal          ra, 2b
5:                jal          t1, 15f
6:                jal          ra, 13f
7:                jal          s8, 23f
8:                jal          t1, 14f
9:                jal          s7, 25f
10:               jal          ra, 19f
11:               jal          s8, 7b
12:               jal          a6, 16f
13:               jal          t1, 9b
14:               jal          gp, 4b
15:               jal          ra, 17f
16:               jal          ra, 26f
17:               jal          ra, 1b
18:               jal          t1, 5b
19:               jal          ra, 12b
20:               jal          s9, 3b
21:               jal          ra, 24f
22:               jal          ra, 8b
23:               jal          ra, 6b
24:               jal          ra, 27f
25:               jal          s0, 21b
26:               jal          gp, 18b
27:               and          a6, s10, gp
sub_1_1:          jal          s9, 9f
0:                jal          tp, 15f
1:                jal          t5, 17f
2:                jal          t1, 14f
3:                jal          a4, 11f
4:                jal          ra, 6f
5:                jal          ra, 3b
6:                jal          t1, 5b
7:                jal          s8, 0b
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          ra, 13f
12:               jal          ra, 2b
13:               jal          s7, 12b
14:               jal          t1, 16f
15:               jal          t1, 4b
16:               jal          ra, 8b
17:               slt          s7, s1, t3
sub_1_2:          jal          s9, 22f
0:                jal          ra, 4f
1:                jal          ra, 11f
2:                jal          t1, 10f
3:                jal          ra, 13f
4:                jal          s0, 6f
5:                jal          s9, 18f
6:                jal          ra, 20f
7:                jal          t1, 12f
8:                jal          t0, 5b
9:                jal          ra, 25f
10:               jal          gp, 19f
11:               jal          ra, 26f
12:               jal          ra, 9b
13:               jal          ra, 2b
14:               jal          ra, 3b
15:               jal          t1, 0b
16:               jal          ra, 23f
17:               jal          ra, 21f
18:               jal          t1, 27f
19:               jal          ra, 7b
20:               jal          sp, 24f
21:               jal          tp, 1b
22:               jal          ra, 15b
23:               jal          t1, 14b
24:               jal          ra, 17b
25:               jal          ra, 8b
26:               jal          ra, 16b
27:               xori         a4, t4, 1436
                  beq          a4, s8, 19f
                  and          s11, s10, ra
                  sll          gp, t1, a7
                  srai         s9, t3, 26
                  sra          ra, tp, s3
                  sub          s6, t4, s2
                  addi         t6, t0, -1951
                  slti         t5, s8, -656
                  sltiu        ra, t1, 227
                  bgeu         s1, t5, 15f
                  bgeu         s7, t5, 24f
                  srli         s4, s2, 15
                  srli         s9, s11, 1
                  and          s8, s1, t5
                  add          s2, s11, a0
15:               bge          sp, a6, 21f
                  beq          gp, sp, 28f
                  bge          s11, a2, 37f
                  bge          s11, t4, 23f
19:               sll          ra, t4, s0
                  beq          zero, s9, 26f
21:               sub          s6, tp, s1
                  sltiu        a4, s9, 1358
23:               sltiu        s2, s1, 427
24:               sltu         sp, s10, s6
                  sltu         tp, a0, gp
26:               slli         t0, a3, 13
                  slli         t1, a3, 0
28:               sltiu        s2, s11, -1806
                  or           a4, s9, s2
                  bne          s1, t4, 39f
                  nop
                  bge          a0, s8, 49f
                  slt          s10, a4, t0
                  slti         s4, s7, 1180
                  slti         a4, s9, 1773
                  andi         a6, t5, -1290
37:               bge          s10, a4, 50f
                  srai         a2, s9, 6
39:               sltu         t2, s6, s10
                  andi         s0, a4, -616
                  sra          t5, s6, s6
                  bne          t4, s3, 43f
43:               bgeu         a0, t2, 63f
                  bgeu         s1, a6, 52f
                  nop
                  andi         t1, ra, 1354
                  sltiu        gp, ra, -1707
                  sll          a5, s6, t5
                  sra          a4, t1, s9
                  sltiu        sp, s8, 1566
                  nop
                  sra          a2, s2, tp
                  and          t5, s1, t4
sub_1_j4:         jal          s9, sub_2 #jump sub_1 -> sub_2
                  sra          s8, sp, a1
                  auipc        t2, 373711
                  add          s1, s9, s10
49:               addi         s0, t2, -1302
50:               lui          a5, 919940
                  sltu         a2, tp, s0
52:               srli         s9, t3, 13
                  slti         s11, t2, -883
                  or           s0, a1, s8
                  beq          a4, a1, 64f
                  srai         gp, a1, 26
                  bgeu         t5, a7, 60f
                  addi         s4, a4, 1192
                  slli         s10, s4, 4
60:               sll          a4, a2, zero
                  slli         s6, a2, 2
                  slti         t4, a0, 86
63:               add          a1, s4, a6
64:               srl          a6, a3, t6
                  andi         sp, t2, 1611
                  add          zero, a5, s5
                  or           s5, ra, sp
                  add          s11, a1, s0
                  xor          a6, tp, gp
                  sltu         s9, t5, a7
                  blt          t2, ra, 80f
                  xor          s1, t4, t6
                  xori         s7, s11, -1382
                  bltu         t4, a2, 94f
                  nop
                  sltu         zero, s4, a5
                  nop
                  slti         t3, a6, 329
                  bne          gp, zero, 96f
80:               bge          a5, s4, 100f
                  sltiu        s10, a3, -1851
                  bge          gp, s8, 99f
                  bge          s2, a0, 98f
                  beq          a3, t5, 87f
                  srl          s4, t1, t3
                  sub          a6, a2, tp
87:               xori         t6, s5, -1848
                  auipc        tp, 504644
                  sub          zero, ra, t1
                  auipc        s7, 308678
                  nop
                  and          a2, t0, s4
                  bgeu         s3, s5, 108f
                  auipc        t0, 593604
                  xor          gp, s10, a7
                  xori         s10, s1, -240
                  auipc        s4, 1001204
                  slli         s5, t4, 7
                  sll          t4, t1, gp
                  sub          tp, a3, s9
                  slt          a5, s9, a5
                  sub          t1, t5, t0
                  blt          t0, s4, sub_1_j3 #branch to jump instr
                  sub          s2, a7, gp
sub_1_j3:         jal          s9, sub_3 #jump sub_1 -> sub_3
94:               srli         t0, t6, 21
                  bne          t3, s6, 108f
96:               add          t3, a6, a1
                  bgeu         a4, tp, 108f
98:               bge          s7, a7, 105f
99:               bgeu         t0, t5, 118f
100:              ori          s4, s3, -1959
                  nop
                  blt          a1, zero, 104f
                  bgeu         s8, t0, 121f
104:              slti         s10, s10, -806
105:              nop
                  srai         s0, s6, 22
                  sub          s4, t2, a3
108:              sra          s6, s0, s4
                  sll          s8, a3, s7
                  blt          s9, s8, 127f
                  slti         s2, zero, 1029
                  srai         s8, s9, 18
                  srl          s6, s3, s1
                  srl          a1, a2, s4
                  slli         t0, s8, 5
                  srli         a6, a6, 27
                  nop
118:              blt          a2, s6, 136f
                  xori         s3, t4, -29
                  auipc        zero, 370453
121:              sra          t2, a4, s0
                  bgeu         zero, a3, 135f
                  addi         t4, s5, -10
                  auipc        t1, 715520
                  bne          sp, sp, 136f
                  addi         zero, sp, -1714
127:              andi         s9, t2, 1516
                  sub          s4, t6, a6
                  nop
                  ori          s3, a3, -1671
                  sltu         s4, s7, s3
                  sra          a2, s10, tp
                  blt          a1, t6, 139f
                  bne          t6, s3, 143f
135:              bge          a6, s9, 138f
136:              add          s3, ra, sp
                  sra          tp, a6, s10
138:              bge          a7, a2, 141f
139:              slti         a1, tp, -801
                  bgeu         s5, t2, 141f
141:              slli         s1, gp, 10
                  slti         t4, s7, 1235
143:              xor          zero, t3, t6
                  beq          s10, s2, 163f
                  sra          zero, sp, s9
                  srl          t4, s4, sp
                  add          a5, a5, tp
                  bge          gp, t4, 163f
                  sltu         s5, s2, s7
                  ori          s3, zero, -851
                  and          t2, s5, zero
                  sltiu        t2, ra, -1974
                  xor          s3, tp, t1
                  bne          a2, s11, 174f
                  add          gp, s7, s4
                  bge          t1, a7, 168f
                  sll          a5, t6, gp
                  blt          s11, s10, 178f
                  sra          t1, s6, s1
                  or           s8, a5, a7
                  slli         gp, a7, 1
                  sltiu        s5, a1, -1768
163:              add          s0, t3, a5
                  bge          t3, t1, 179f
                  nop
                  auipc        t0, 1016864
                  srai         s6, a2, 2
168:              bge          t4, s5, 174f
                  or           a1, s3, s3
                  auipc        s3, 197423
                  bltu         t4, a0, 185f
                  andi         ra, t6, 1608
                  srai         t1, t4, 28
174:              addi         s3, s0, 860
                  sltiu        gp, t2, -1618
                  blt          t3, t4, 181f
                  bge          t3, t2, 194f
178:              ori          s1, t6, 1613
179:              beq          s7, t3, 187f
                  xori         s2, s11, 1521
181:              sltiu        s9, s10, 644
                  sltiu        ra, sp, -1900
                  beq          s7, s6, 203f
                  lui          s11, 112434
185:              or           s6, s0, s6
                  nop
187:              sltiu        s4, s1, 1943
                  bgeu         a6, a5, 194f
                  xori         s11, a5, -1730
                  srl          t6, s2, t5
                  sll          s8, s4, t2
                  nop
                  nop
194:              xori         t2, s11, -41
                  bgeu         sp, t2, 197f
                  sltiu        t1, a0, 113
197:              bne          s0, a5, 204f
                  bltu         t6, t5, 217f
                  andi         tp, a6, -1941
                  sltiu        s10, s3, -769
                  ori          tp, a4, 1084
                  blt          zero, t6, 222f
203:              blt          a4, s4, 212f
204:              ori          t6, s4, 521
                  srai         zero, sp, 27
                  beq          s4, a4, 215f
                  xori         a2, ra, -1046
                  beq          s5, s10, 225f
                  bltu         s4, tp, 222f
                  lui          zero, 931339
                  slt          a6, s11, t2
212:              lui          s5, 293695
                  bne          t4, a2, 220f
                  bltu         t2, sp, 233f
215:              sll          sp, t0, gp
                  srli         s2, s5, 28
217:              srl          a6, t5, gp
                  bltu         t0, a2, 238f
                  add          t1, s6, s9
220:              slli         s9, a2, 4
                  sltiu        s6, t5, -559
222:              slt          a6, s9, s6
                  beq          s5, a6, 243f
                  and          s11, a6, a2
225:              and          t0, ra, a2
                  srli         sp, t5, 1
                  sub          t5, a4, t0
                  xor          s6, a7, gp
                  bltu         s7, ra, 244f
                  bne          a1, t3, 236f
                  and          gp, s8, t5
                  sra          s8, a2, a4
233:              sra          a4, a5, zero
                  srli         s4, a7, 22
                  slti         s0, s11, 1737
236:              addi         s0, s8, 1222
                  sltu         t0, a6, a3
238:              xori         s3, a1, 1127
                  slli         a1, s4, 28
                  srai         t4, s11, 3
                  slli         s0, a6, 31
                  or           a6, a1, s2
243:              slli         s9, s10, 5
244:              sra          s7, t4, t4
                  bltu         a5, a6, 259f
                  srl          t6, s9, zero
                  bne          s11, a1, 262f
                  nop
                  lui          t6, 564703
                  bne          t4, s0, 255f
                  andi         s4, gp, 515
                  beq          tp, s3, 271f
                  blt          zero, a4, 273f
                  xori         a2, s3, 603
255:              slli         s7, s11, 25
                  andi         sp, s11, 1607
                  bge          s1, s1, 274f
                  bltu         ra, s5, 271f
259:              slli         s11, a3, 6
                  blt          sp, t6, 263f
                  xori         t3, s7, 1511
262:              bge          s3, zero, 263f
263:              sra          s10, t1, a7
                  and          sp, a6, a7
                  andi         ra, s8, -539
                  auipc        a4, 286341
                  add          s5, s2, gp
                  sub          s3, t1, s9
                  or           s9, s5, a6
                  bgeu         tp, t0, 282f
271:              add          s5, s8, t4
                  sub          s8, zero, gp
273:              sub          tp, a3, a1
274:              slti         t1, a7, -471
                  auipc        ra, 194575
                  slli         s5, s4, 31
                  srl          s8, t4, a4
                  bgeu         t6, s3, 295f
                  slti         sp, s11, 489
                  slti         t3, s9, 599
                  blt          t4, a7, 290f
282:              slti         t6, s2, -810
                  sltiu        t5, t6, 1769
                  slli         s1, t3, 12
                  srli         a1, s1, 3
                  sltu         ra, a1, tp
                  slli         s10, a2, 3
                  xor          s9, tp, ra
                  or           s0, s1, s0
290:              nop
                  sltu         s9, t3, s7
                  nop
                  slti         a6, t5, 96
                  beq          a2, s7, 297f
295:              xori         ra, t3, 590
                  xor          s7, s1, s10
297:              xori         s0, s4, -1668
                  add          s9, t2, sp
                  srai         s1, s3, 31
                  sll          a4, s0, s7
                  bltu         t1, a7, 307f
                  bge          a1, s0, 320f
                  xori         a4, a6, 87
                  sltu         t4, a7, sp
                  xor          t2, a0, s3
                  blt          a1, gp, 308f
307:              ori          s3, t3, -181
308:              xor          s3, a7, a5
                  slt          s11, t1, gp
                  andi         s9, ra, -1773
                  slti         t0, s1, -1755
                  bge          zero, t2, 325f
                  sub          s3, tp, a2
                  ori          t1, t4, -1394
                  sra          s6, a0, s3
                  slti         a5, t1, 1093
                  bgeu         t1, sp, 334f
                  bne          a6, t2, 326f
                  or           a2, s1, s11
320:              and          a4, a5, t6
                  slti         sp, a0, 1970
                  xori         t3, a0, 814
                  srl          a2, t1, a6
                  blt          t3, a2, 344f
325:              sltiu        s1, t6, -1487
326:              lui          s10, 494773
                  addi         a4, s9, -263
                  nop
                  ori          s6, t0, 744
                  bne          a5, s9, 339f
                  sltu         sp, t0, a0
                  auipc        s6, 627300
                  srai         s1, s6, 29
334:              or           s1, t4, s7
                  auipc        s1, 367842
                  srai         s0, gp, 21
                  lui          t5, 58069
                  srl          s1, t0, s4
339:              add          s11, s11, t4
                  bgeu         t6, zero, 349f
                  slli         ra, s9, 8
                  ori          t6, s10, -1774
                  addi         gp, t5, 1403
344:              ori          s6, zero, 652
                  auipc        s1, 161789
                  andi         a6, t1, 20
                  srai         s6, t4, 0
                  and          t3, a1, a7
349:              slli         s10, gp, 26
                  srli         a6, gp, 25
                  slti         t3, tp, 1113
                  xori         s9, t4, 702
                  srai         s2, s1, 2
                  bge          a2, gp, 365f
                  xori         a6, t1, 1154
                  sra          a6, s9, sp
                  xori         gp, s10, -372
                  xor          t3, a5, t1
                  beq          s4, t6, 365f
                  bgeu         t0, s8, 374f
                  bne          t3, a6, 381f
                  bgeu         a6, a4, 379f
                  ori          t2, a1, 573
                  xor          s8, a2, a6
365:              andi         t0, ra, -234
                  auipc        a6, 491442
                  xor          s5, gp, s6
                  add          sp, t2, a3
                  srai         s5, a3, 30
                  bltu         a0, a7, 373f
                  addi         s1, s11, 396
                  srli         s1, s2, 19
373:              addi         a5, s0, -756
374:              blt          t0, s5, 391f
                  or           s0, ra, gp
                  xor          gp, a3, s10
                  slli         s7, a6, 21
                  sltiu        a2, t4, -352
379:              xori         s3, a4, -136
                  add          tp, s4, s1
381:              bge          sp, t6, 392f
                  bne          a7, s5, 387f
                  sll          s5, a6, t1
                  la           a6, sub_3
                  ori          s10, zero, -1311
                  addi         a6, a6, 684
                  ori          t2, s11, -1787
                  slt          a1, s2, s6
                  sll          t3, zero, t3
                  slli         zero, t6, 8
sub_1_j5:         jalr         s9, a6, -683 #jump sub_1 -> sub_3
                  add          s5, s10, zero
                  and          s1, s4, s3
                  bge          s7, t6, 400f
                  sll          ra, t0, s3
387:              sll          t2, s2, s2
                  sra          t0, t4, a7
                  sra          a6, t3, a0
                  bltu         a4, a4, 410f
391:              beq          s0, s10, 409f
392:              beq          s6, sp, 398f
                  lui          s11, 571541
                  srl          a2, t6, s0
                  and          s6, s0, s9
                  sub          t1, sp, a1
                  nop
398:              beq          s10, gp, 413f
                  bge          s4, s11, 412f
400:              sub          gp, t0, s7
                  slti         t5, t6, 703
                  slli         zero, t5, 15
                  ori          s6, s10, -25
                  and          tp, t4, s3
                  slli         a5, a4, 1
                  andi         sp, a1, 5
                  bltu         s1, zero, 427f
                  sll          s10, s1, s11
409:              auipc        s0, 260312
410:              bge          a2, s0, 412f
                  blt          ra, t1, 414f
412:              sra          ra, gp, t1
413:              slti         zero, t6, 217
414:              add          zero, s11, ra
                  ori          a5, t3, -174
                  slt          s8, s8, a2
                  ori          a4, a5, -894
                  lui          s1, 367208
                  sltiu        s9, s3, 303
                  xor          t4, a6, s6
                  auipc        s0, 19669
                  slt          tp, zero, s0
                  blt          a4, a0, 432f
                  slli         t5, s1, 31
                  xori         s1, s3, 1055
                  andi         t4, a4, 1811
427:              slli         s2, a5, 7
                  beq          t0, a0, 429f
429:              xor          zero, t6, s9
                  bltu         s5, s9, 439f
                  bgeu         ra, a5, 437f
432:              bne          sp, s1, 444f
                  lui          a6, 360493
                  slti         s11, sp, -1201
                  xor          a6, s6, s10
                  blt          tp, s5, 442f
437:              sra          t1, a5, s10
                  blt          gp, s11, 457f
439:              slli         a1, a1, 16
                  sltiu        ra, s1, 353
                  bgeu         t1, s8, 458f
442:              slt          zero, zero, t2
                  srli         s3, s6, 7
444:              bgeu         s6, s7, 451f
                  xor          a5, s0, a3
                  sub          gp, a4, t3
                  xor          s9, a7, t6
                  lui          s0, 830765
                  nop
                  slt          s7, tp, a6
451:              addi         t4, t2, 1853
                  sltu         s2, zero, t1
                  sltiu        s4, s2, -853
                  sll          t1, a4, t0
                  lui          s8, 809921
                  slt          s0, s9, a7
457:              andi         a1, s1, -1488
458:              ori          ra, s10, -1174
                  bne          s0, t3, 479f
                  sltu         s9, gp, t0
                  slti         s5, s2, 1383
                  bgeu         s6, s4, 475f
                  sltu         s5, t1, s10
                  ori          gp, s10, -306
                  sltu         a1, s7, a5
                  add          gp, a6, a2
                  sub          tp, s1, a2
                  sltu         s0, zero, s4
                  sltu         a1, s11, s2
                  srli         t3, sp, 30
                  slt          s3, s1, ra
                  and          a5, a2, s9
                  xori         gp, s9, -1683
                  srl          gp, a5, t1
475:              bltu         t4, tp, 487f
                  sra          ra, a3, s11
                  slti         zero, a4, 981
                  beq          zero, t3, 487f
479:              srl          s8, a2, s5
                  bne          s1, zero, 487f
                  srli         a1, s3, 27
                  ori          t0, a5, -292
                  add          a5, t4, sp
                  sra          s2, sp, a6
                  andi         s4, ra, -1599
                  beq          t0, a7, 487f
487:              andi         t1, a1, -560
                  lw           s9, 4(a0)
                  or           gp, s4, t5
                  addi         a0, a0, 48
                  sltiu        s4, s5, -602
                  sll          ra, a1, s2
                  xori         s5, t3, 1389
746:              addi x24, x25, 1
746:              jalr x24, x24, 0
sub_3:            bne          s4, a6, sub_3_stack_p
sub_3_stack_p:    addi         a0, a0, -40
                  or           s2, sp, a2
                  and          s1, t0, s5
                  sw           s9, 4(a0)
                  sltiu        s4, gp, -1842
                  slti         s0, a4, -462
                  la           s1, sub_4
                  andi         ra, a7, 879
                  auipc        ra, 349521
                  addi         s1, s1, -833
                  sltu         a5, s10, a4
                  blt          s10, gp, sub_3_j7 #branch to jump instr
                  lui          a1, 463846
                  ori          a2, s9, 1038
                  xor          s5, tp, s0
                  sra          a6, t4, a6
                  xor          s5, a1, s3
sub_3_j7:         jalr         s9, s1, 834 #jump sub_3 -> sub_4
sub_3_0:          jal          s9, 14f
0:                jal          s7, 18f
1:                jal          t1, 23f
2:                jal          sp, 9f
3:                jal          ra, 24f
4:                jal          ra, 12f
5:                jal          t3, 1b
6:                jal          ra, 29f
7:                jal          ra, 5b
8:                jal          gp, 17f
9:                jal          ra, 6b
10:               jal          a4, 16f
11:               jal          t1, 21f
12:               jal          ra, 3b
13:               jal          s2, 15f
14:               jal          ra, 11b
15:               jal          s10, 27f
16:               jal          ra, 20f
17:               jal          t1, 10b
18:               jal          sp, 8b
19:               jal          tp, 0b
20:               jal          ra, 22f
21:               jal          ra, 7b
22:               jal          gp, 25f
23:               jal          ra, 13b
24:               jal          t2, 26f
25:               jal          gp, 28f
26:               jal          ra, 2b
27:               jal          ra, 19b
28:               jal          t1, 4b
29:               or           s11, a6, t5
                  andi         s10, s0, -1778
                  and          a2, s11, a4
                  srai         s10, t3, 6
                  srli         gp, s8, 10
                  sub          s9, a0, s8
                  slti         s11, t0, -1356
                  xor          a1, tp, t6
                  lui          s5, 643404
                  slti         s9, t6, -986
                  sltiu        s7, t6, -1359
                  slli         s3, s0, 11
                  lui          s6, 587545
                  xori         s9, t0, 1606
                  sra          a6, a5, s8
                  lui          s5, 686844
                  sra          s6, a6, a5
                  lui          s1, 952252
                  nop
                  bge          t3, s10, 28f
                  auipc        t2, 105829
                  bge          s9, s11, 37f
                  bltu         s0, t2, 34f
                  and          s0, t5, t5
                  xor          s0, a7, s5
                  blt          a1, t0, 41f
                  bgeu         a7, s11, 45f
                  xori         t4, a6, -503
                  ori          t1, a4, -1787
28:               slti         s11, t3, 1709
                  slt          s9, s5, s7
                  nop
                  sra          t2, a0, s4
                  srai         s7, s7, 30
                  lui          a2, 895789
34:               bne          zero, a7, 53f
                  bltu         zero, s0, 42f
                  sltu         s9, t1, s11
37:               lui          s3, 676459
                  add          tp, s0, tp
                  sll          t6, sp, t1
                  slli         t2, s4, 18
41:               andi         t6, tp, 213
42:               sltu         s9, s1, t3
                  beq          zero, t1, 60f
                  srli         a2, s5, 16
45:               sra          s9, t5, s7
                  sub          s1, tp, a2
                  blt          t3, t2, 66f
                  xori         sp, tp, -766
                  slli         gp, tp, 5
                  slti         s3, a3, -179
                  andi         tp, s0, 771
                  blt          t3, s11, 59f
53:               xor          s0, tp, s7
                  xori         tp, t2, -285
                  blt          tp, s0, 65f
                  bne          a4, s3, 69f
                  slli         s4, a6, 9
                  bge          s4, a6, 78f
59:               xor          t1, a6, t1
60:               lui          t2, 164958
                  nop
                  sra          s3, a3, s4
                  sub          t5, a3, gp
                  auipc        s11, 325922
65:               sltiu        t3, t4, -1298
66:               blt          a1, a6, 78f
                  ori          s0, s0, 256
                  blt          t6, a3, 80f
69:               and          s1, a1, s3
                  srai         s1, s7, 22
                  sll          s10, a7, s0
                  nop
                  srl          t2, zero, t6
                  and          zero, s4, ra
                  sltu         a1, t5, s3
                  blt          sp, t2, 85f
                  slli         t6, a4, 16
78:               xor          tp, s11, s4
                  srli         a6, s2, 1
80:               nop
                  slti         tp, s8, 1500
                  and          t5, a5, t2
                  bge          s9, zero, 87f
                  or           sp, s3, s9
85:               srli         zero, s11, 9
                  auipc        sp, 419207
87:               ori          s2, s9, 1523
                  lw           s9, 4(a0)
                  lui          tp, 427532
                  ori          a1, t4, 961
                  or           t2, s0, s1
                  andi         a2, gp, -916
                  andi         t6, t0, 1311
                  xor          a2, tp, s6
                  addi         a0, a0, 40
                  sub          s3, sp, s5
147:              addi x18, x25, 1
147:              jalr x18, x18, 0
sub_2:            bne          s3, s11, sub_2_stack_p
                  addi         a5, a4, 1425
sub_2_stack_p:    addi         a0, a0, -28
                  or           a5, ra, gp
                  addi         ra, s7, -354
                  andi         s5, t0, -1089
                  sw           s9, 4(a0)
                  srl          a5, t0, sp
                  sltu         tp, t2, s8
                  sll          tp, a3, t0
                  lui          sp, 361450
sub_2_3:          jal          s9, 18f
0:                jal          t1, 24f
1:                jal          a5, 7f
2:                jal          ra, 11f
3:                jal          t5, 5f
4:                jal          t1, 0b
5:                jal          ra, 19f
6:                jal          s10, 3b
7:                jal          t1, 9f
8:                jal          ra, 14f
9:                jal          ra, 8b
10:               jal          ra, 13f
11:               jal          ra, 6b
12:               jal          ra, 1b
13:               jal          ra, 20f
14:               jal          ra, 22f
15:               jal          t1, 2b
16:               jal          ra, 10b
17:               jal          ra, 23f
18:               jal          ra, 12b
19:               jal          a4, 16b
20:               jal          ra, 4b
21:               jal          s7, 15b
22:               jal          ra, 17b
23:               jal          ra, 21b
24:               sub          s5, s0, s0
sub_2_7:          jal          s9, 9f
0:                jal          t1, 5f
1:                jal          ra, 3f
2:                jal          ra, 1b
3:                jal          t1, 4f
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          ra, 2b
7:                jal          ra, 8f
8:                jal          ra, 10f
9:                jal          t1, 6b
10:               lui          t3, 971140
sub_2_10:         jal          s9, 19f
0:                jal          gp, 12f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          t1, 16f
4:                jal          s6, 3b
5:                jal          t1, 25f
6:                jal          t1, 24f
7:                jal          s2, 15f
8:                jal          t6, 13f
9:                jal          ra, 8b
10:               jal          s8, 28f
11:               jal          t1, 27f
12:               jal          ra, 14f
13:               jal          ra, 18f
14:               jal          t0, 7b
15:               jal          tp, 6b
16:               jal          gp, 17f
17:               jal          sp, 23f
18:               jal          ra, 26f
19:               jal          tp, 5b
20:               jal          s2, 9b
21:               jal          s3, 11b
22:               jal          ra, 20b
23:               jal          t0, 2b
24:               jal          t1, 4b
25:               jal          ra, 21b
26:               jal          t1, 0b
27:               jal          s11, 22b
28:               srai         t4, tp, 24
sub_2_0:          jal          s9, 11f
0:                jal          ra, 16f
1:                jal          ra, 2f
2:                jal          ra, 9f
3:                jal          ra, 15f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          t1, 13f
8:                jal          gp, 14f
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          ra, 3b
12:               jal          t1, 1b
13:               jal          ra, 8b
14:               jal          ra, 4b
15:               jal          ra, 7b
16:               xor          a5, ra, tp
sub_2_9:          jal          s9, 4f
0:                jal          t1, 11f
1:                jal          s1, 7f
2:                jal          s9, 5f
3:                jal          s11, 8f
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          t1, 2b
7:                jal          t1, 10f
8:                jal          s11, 1b
9:                jal          ra, 3b
10:               jal          ra, 0b
11:               srl          a2, ra, a2
sub_2_1:          jal          s9, 6f
0:                jal          t1, 13f
1:                jal          ra, 0b
2:                jal          ra, 27f
3:                jal          ra, 20f
4:                jal          t1, 15f
5:                jal          ra, 25f
6:                jal          ra, 3b
7:                jal          ra, 19f
8:                jal          ra, 21f
9:                jal          s5, 17f
10:               jal          ra, 23f
11:               jal          ra, 12f
12:               jal          ra, 10b
13:               jal          t0, 5b
14:               jal          t0, 7b
15:               jal          ra, 11b
16:               jal          t1, 1b
17:               jal          tp, 2b
18:               jal          ra, 14b
19:               jal          s4, 24f
20:               jal          ra, 16b
21:               jal          s7, 22f
22:               jal          t1, 18b
23:               jal          ra, 9b
24:               jal          t1, 4b
25:               jal          t2, 26f
26:               jal          ra, 8b
27:               srl          s8, a0, s3
sub_2_8:          jal          s9, 2f
0:                jal          ra, 1f
1:                jal          s4, 5f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          gp, 8f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          t3, 9f
8:                jal          t1, 0b
9:                jal          t1, 4b
10:               sltiu        t2, s1, -1245
sub_2_5:          jal          s9, 8f
0:                jal          s5, 4f
1:                jal          ra, 22f
2:                jal          sp, 3f
3:                jal          ra, 7f
4:                jal          ra, 18f
5:                jal          t2, 27f
6:                jal          ra, 29f
7:                jal          t1, 9f
8:                jal          t1, 6b
9:                jal          ra, 21f
10:               jal          ra, 30f
11:               jal          t1, 15f
12:               jal          gp, 0b
13:               jal          sp, 28f
14:               jal          t1, 13b
15:               jal          t1, 19f
16:               jal          ra, 11b
17:               jal          ra, 16b
18:               jal          ra, 14b
19:               jal          ra, 12b
20:               jal          t1, 26f
21:               jal          t1, 25f
22:               jal          ra, 2b
23:               jal          t1, 5b
24:               jal          s1, 17b
25:               jal          s5, 20b
26:               jal          t1, 23b
27:               jal          sp, 24b
28:               jal          ra, 10b
29:               jal          s9, 1b
30:               add          s1, a1, zero
sub_2_6:          jal          s9, 5f
0:                jal          t1, 4f
1:                jal          t1, 0b
2:                jal          t1, 12f
3:                jal          s6, 6f
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          ra, 1b
7:                jal          ra, 9f
8:                jal          a5, 7b
9:                jal          s5, 2b
10:               jal          tp, 11f
11:               jal          sp, 8b
12:               sll          s4, ra, t6
sub_2_2:          jal          s9, 2f
0:                jal          t1, 17f
1:                jal          ra, 3f
2:                jal          t1, 9f
3:                jal          tp, 13f
4:                jal          s11, 6f
5:                jal          ra, 10f
6:                jal          s6, 20f
7:                jal          gp, 0b
8:                jal          ra, 12f
9:                jal          a6, 15f
10:               jal          tp, 7b
11:               jal          ra, 1b
12:               jal          ra, 4b
13:               jal          t0, 21f
14:               jal          t1, 11b
15:               jal          ra, 5b
16:               jal          ra, 18f
17:               jal          ra, 16b
18:               jal          ra, 8b
19:               jal          t0, 22f
20:               jal          ra, 14b
21:               jal          a4, 19b
22:               sra          t6, a4, t0
                  bge          s3, s1, 8f
                  slli         a6, t3, 5
                  add          s1, s11, a7
                  add          ra, a6, a7
                  sll          s8, s9, s7
                  srli         s6, t6, 7
                  slti         a1, a5, 1177
                  and          s8, a5, tp
8:                xor          zero, s0, a4
                  add          t5, s7, a3
                  beq          s11, t6, 18f
                  ori          a5, t5, 347
                  nop
                  xori         s10, s10, -586
                  srli         s5, a7, 27
                  nop
                  srl          ra, ra, s7
                  bgeu         t5, tp, 37f
18:               add          sp, tp, s2
                  xori         s10, s5, 2042
                  slli         s5, s9, 20
                  sub          t5, t1, s6
                  bgeu         zero, sp, 37f
                  srl          s4, gp, t5
                  srai         t2, sp, 1
                  sltiu        t6, a2, 1930
                  srl          gp, a1, a0
                  addi         t2, s7, -349
                  auipc        t0, 962134
                  sltiu        t0, zero, 773
                  xor          s10, s5, t1
                  beq          t5, t2, 33f
                  sltu         s1, t2, a1
33:               and          a4, a5, s7
                  srai         t2, s10, 31
                  sll          t4, s6, t1
                  andi         s9, ra, -1985
37:               xori         ra, s6, -1861
                  addi         a2, s0, 1304
                  sll          a1, a1, s2
                  addi         a6, t1, -317
                  blt          s10, s4, 60f
                  andi         s6, t3, 1480
                  xori         t0, zero, -291
                  beq          ra, s6, 50f
                  nop
                  sra          t6, sp, a0
                  srl          s3, a3, s0
                  slti         s8, t5, 1978
                  sll          a4, ra, a0
50:               beq          s0, a3, 66f
                  sra          a5, t0, t2
                  xor          s3, s8, s0
                  sra          s3, s9, sp
                  and          sp, gp, a6
                  slli         zero, t5, 22
                  ori          a1, t0, -1016
                  bgeu         a5, s0, 72f
                  slt          zero, a6, t2
                  nop
60:               bltu         zero, s7, 72f
                  xori         s3, a7, 35
                  beq          s0, s10, 70f
                  bltu         s3, s5, 77f
                  sltiu        t5, gp, 714
                  add          a5, a3, a0
sub_2_4:          jal          s9, 9f
0:                jal          t1, 5f
1:                jal          ra, 12f
2:                jal          tp, 14f
3:                jal          t1, 2b
4:                jal          t1, 1b
5:                jal          a6, 8f
6:                jal          ra, 11f
7:                jal          t5, 10f
8:                jal          ra, 7b
9:                jal          s0, 4b
10:               jal          t1, 3b
11:               jal          ra, 0b
12:               jal          ra, 13f
13:               jal          ra, 6b
14:               slti         s7, sp, -1163
66:               sltu         t4, gp, tp
                  xor          s3, t4, s11
                  xori         gp, s9, -1588
                  srai         s10, s5, 10
70:               sra          a5, s5, s3
                  slli         s2, s0, 21
72:               and          gp, a4, zero
                  lui          s2, 419137
                  addi         gp, sp, -645
                  bgeu         s3, s2, 93f
                  andi         s4, sp, 636
77:               sltu         a6, t3, s10
                  bge          sp, t0, 97f
                  or           s3, t2, ra
                  beq          t3, s8, 83f
                  ori          s9, tp, 1277
                  srai         s6, s9, 14
83:               xor          s2, s11, a2
                  sltiu        gp, t0, 751
                  and          s3, s11, zero
                  andi         a4, s10, 1018
                  bgeu         t4, zero, 104f
                  bgeu         s3, t4, 103f
                  slti         s4, s4, -1713
                  lui          tp, 569756
                  bgeu         s0, s6, 104f
                  sll          s7, s1, t2
93:               and          tp, t6, s6
                  bne          a4, s9, 114f
                  bge          tp, a6, 115f
                  sll          s7, zero, ra
97:               or           t3, a4, s2
                  or           a5, tp, gp
                  sra          a5, s11, t6
                  auipc        zero, 536251
                  sll          gp, a4, s6
                  sll          s5, s0, t0
103:              bgeu         s10, a0, 110f
104:              srli         a1, t2, 6
                  slti         a6, s3, 1449
                  addi         s0, t2, 269
                  slti         s0, s4, -1726
                  slli         zero, a6, 20
                  bltu         a3, s3, 112f
110:              add          t0, t4, t1
                  srli         t1, s11, 16
112:              nop
                  slti         s7, zero, 959
114:              sll          s9, s8, t0
115:              slli         s8, a7, 18
                  srli         s6, t3, 5
                  add          t4, s8, s7
                  sll          t1, s8, t0
                  beq          s0, t0, 138f
                  or           a1, s10, t5
                  sub          s10, s9, t5
                  sltu         s7, s11, s1
                  slli         t5, ra, 20
                  addi         tp, a0, -1926
                  sra          s2, t4, gp
                  auipc        t3, 675410
                  or           a2, a2, t1
                  andi         a6, a3, 612
                  bge          a0, a4, 145f
                  lui          t2, 652570
                  beq          a4, a3, 138f
                  nop
                  and          s6, s6, a1
                  srl          a1, ra, s9
                  addi         t4, t5, 188
                  slt          s5, s3, s3
                  sltiu        a5, t1, -1192
138:              slti         t4, a5, -1687
                  sltiu        a1, ra, -1782
                  srai         sp, s1, 8
                  ori          a2, s9, 1907
                  sub          t0, zero, s2
                  andi         t6, s9, 574
                  slt          t5, t0, ra
145:              sub          s5, ra, t2
                  andi         s11, t0, -523
                  or           s7, s0, a3
                  beq          a1, t3, 168f
                  sll          sp, s4, a2
                  blt          s3, a5, 166f
                  bne          t1, s4, 152f
152:              ori          a2, a3, -1702
                  beq          a7, zero, 155f
                  bgeu         s9, s8, 168f
155:              sltiu        t6, a4, -1108
                  xor          s7, a4, s10
                  sra          s4, s9, s7
                  lui          t2, 847252
                  blt          tp, s0, 178f
                  xori         s0, sp, -331
                  or           s0, s2, s0
                  beq          t1, s6, 176f
                  beq          t2, s6, 171f
                  beq          s0, s0, 184f
                  bltu         t2, tp, 184f
166:              andi         s11, t2, 486
                  xor          s5, s8, sp
168:              srl          a2, a4, a1
                  bge          s11, a2, 177f
                  addi         t2, a1, -1379
171:              slti         t5, a1, -92
                  srl          zero, s11, s6
                  sltiu        a1, s4, -107
                  sltiu        ra, a7, 558
                  add          t0, a3, s3
176:              slli         s9, s5, 21
177:              srli         s5, sp, 10
178:              nop
                  slt          s11, a2, s1
                  lui          tp, 249525
                  xor          ra, s0, s7
                  xori         s10, t5, 363
                  beq          a3, a5, 196f
184:              sltiu        sp, gp, 815
                  bgeu         s4, tp, 203f
                  slti         s2, s6, 1860
                  bge          s3, a7, 203f
                  nop
                  xori         a1, t5, 490
                  or           s10, t3, a5
                  blt          a3, s2, 206f
                  srl          a1, a2, a2
                  bge          s2, s2, 196f
                  blt          t4, s6, 213f
                  add          tp, a0, t3
196:              bgeu         s9, t0, 197f
197:              xori         t4, a5, -1361
                  bne          t2, s2, 214f
                  slli         s1, a1, 16
                  ori          t5, s0, -112
                  ori          a5, zero, -823
                  xor          s10, a5, a5
203:              sub          gp, a1, a7
                  bgeu         tp, s9, 218f
                  xori         t0, t1, -288
206:              blt          a1, t3, 213f
                  add          s7, s4, a3
                  add          s0, a3, t1
                  blt          a5, ra, 226f
                  xori         s9, s6, 1428
                  blt          tp, ra, 223f
                  nop
213:              bge          a5, zero, 220f
214:              slli         s6, t2, 8
                  srl          a5, t1, t3
                  blt          a2, t6, 224f
                  add          tp, s11, s11
218:              bge          a4, t0, 238f
                  srai         s5, s4, 27
220:              add          t3, s3, zero
                  slli         s9, t3, 7
                  addi         zero, s4, -1602
223:              sub          s9, s8, s8
224:              sra          s3, s2, s2
                  beq          a3, s4, 227f
226:              blt          t3, t4, 246f
227:              lui          a5, 459477
                  auipc        zero, 903345
                  sltiu        sp, s4, 1699
                  slli         s7, s0, 19
                  xori         s3, s6, 704
                  slt          s4, ra, s0
                  beq          t4, a5, 235f
                  beq          s3, s8, 249f
235:              srli         zero, s3, 7
                  sltu         ra, s9, t4
                  sll          t6, a2, a2
238:              beq          a2, s0, 244f
                  or           s10, t6, a6
                  add          s10, t2, s2
                  slt          s3, s4, s4
                  sll          s10, s8, t0
                  sltiu        a2, a1, 1771
244:              bltu         s11, s5, 264f
                  nop
246:              bne          t4, s11, 261f
                  xor          s9, s7, s6
                  auipc        ra, 619237
249:              add          s3, a4, s11
                  sll          t1, t1, a5
                  sltu         t3, tp, t3
                  xor          s8, a3, t3
                  nop
                  srl          s0, s4, s8
                  sub          t6, t4, t2
                  bne          gp, zero, 272f
                  sltu         a5, zero, gp
                  sll          s8, zero, s4
                  xor          s8, gp, zero
                  slli         s10, a2, 17
261:              and          sp, s4, a3
                  andi         ra, s7, 1802
                  ori          s4, s11, -1176
264:              bge          a6, t2, 267f
                  srli         s2, a7, 25
                  ori          s9, a2, -229
267:              bltu         a7, a3, 286f
                  srl          s2, s0, s9
                  bgeu         a3, a1, 289f
                  sll          t3, t5, a7
                  srli         t1, t1, 30
272:              auipc        s2, 186464
                  blt          s10, a1, 287f
                  nop
                  bltu         a4, t2, 291f
                  xori         a1, a1, 1202
                  beq          a3, s5, 285f
                  bge          s6, tp, 286f
                  and          tp, t3, s3
                  sltiu        s8, t4, -1992
                  bge          t4, t2, 289f
                  or           s7, s4, s4
                  add          t5, s8, a7
                  sub          s7, s11, s11
285:              bltu         s6, s8, 292f
286:              slti         a5, t5, -1140
287:              sltu         s0, gp, s5
                  srl          s6, sp, s5
289:              srl          t2, s8, t2
                  sra          t0, t3, s0
291:              addi         s9, s0, 794
292:              lui          t4, 430389
                  or           s0, a3, gp
                  srli         gp, a6, 4
                  addi         s8, t5, -112
                  xor          a4, s8, t1
                  add          s4, a7, a4
                  bne          t4, t1, 314f
                  or           t5, zero, a6
                  sltiu        s5, a2, -555
                  and          ra, s6, a2
                  and          s6, t6, sp
                  auipc        s0, 874117
                  slt          ra, s1, a4
                  or           a6, t3, s8
                  or           s9, t6, a6
                  sra          s8, gp, t4
                  srai         a2, a3, 21
                  add          zero, t5, zero
                  sub          s11, s3, a7
                  slti         s5, zero, -61
                  nop
                  srli         t3, s11, 29
314:              srai         s0, t4, 2
                  sub          s10, s3, sp
                  or           t0, t2, t2
                  sll          a4, s9, t0
                  xori         s10, a6, -171
                  addi         s8, a6, 1034
                  nop
                  sll          s9, a7, t2
                  bge          t4, gp, 336f
                  srli         s10, s3, 3
                  slli         a5, t2, 25
                  bgeu         s7, t3, 345f
                  lui          a4, 574050
                  blt          s11, t5, 343f
                  sltu         a2, a4, a0
                  bge          a4, t4, 336f
                  auipc        s1, 448059
                  sll          t2, s3, a7
                  sub          s8, t4, s0
                  sll          s1, s8, s6
                  or           s4, s5, s5
                  blt          s9, s4, 338f
336:              slli         t0, sp, 0
                  srli         a6, s7, 4
338:              add          t4, s10, s8
                  sra          a5, s5, t5
                  and          s6, s3, s7
                  bltu         a5, s2, 361f
                  sltu         s7, s11, s11
343:              slli         s5, t1, 28
                  bgeu         a7, sp, 363f
345:              add          t3, s0, t6
                  sltiu        ra, a1, -497
                  sltiu        s9, s6, -1929
                  nop
                  srl          t6, t1, ra
                  srl          t6, s0, s7
                  sltu         t3, s9, a4
                  xori         gp, s7, 1409
                  bltu         a5, gp, 356f
                  add          s8, a3, sp
                  sub          s9, s0, s6
356:              lui          s10, 20492
                  sll          s3, s4, t0
                  srli         t2, a6, 1
                  auipc        s8, 784704
                  xori         s5, s7, -2015
361:              slli         ra, s9, 6
                  bgeu         s4, a4, 377f
363:              sltiu        t5, s4, -1500
                  beq          t5, s6, 379f
                  lui          ra, 201585
                  bne          a5, a7, 368f
                  nop
368:              sltiu        s1, s2, 376
                  beq          a7, s5, 382f
                  slti         a5, a2, -759
                  sra          ra, s3, tp
                  slti         s2, s0, -1340
                  blt          t4, t4, 392f
                  sltu         sp, s8, a0
                  andi         s9, a7, -469
                  andi         s4, gp, 780
377:              or           s8, s11, t5
                  add          t5, tp, s1
379:              bne          t1, s10, 385f
                  xor          s3, t5, zero
                  nop
382:              lui          t3, 51208
                  blt          ra, s10, 401f
                  srli         t5, zero, 29
385:              nop
                  andi         a5, zero, 1608
                  slti         sp, zero, 1760
                  auipc        t1, 455692
                  sra          gp, a0, zero
                  sll          ra, t2, t3
                  andi         t3, t4, 1871
392:              srli         s11, s9, 6
                  sra          s3, a2, t5
                  bltu         t4, t1, 396f
                  blt          zero, s6, 410f
396:              blt          a3, t4, 397f
397:              ori          s3, tp, -913
                  slli         ra, t3, 7
                  slli         a5, s2, 29
                  sra          t0, gp, s0
401:              blt          s7, t3, 421f
                  bne          a4, s9, 414f
                  bltu         t4, t4, 420f
                  auipc        s0, 684927
                  bgeu         s9, s2, 407f
                  bne          a1, sp, 414f
407:              addi         zero, ra, 1772
                  beq          a1, t4, 414f
                  xor          a1, a6, gp
410:              sltu         t5, s9, t1
                  or           s10, a5, s10
                  slt          s0, a7, ra
                  bne          s5, gp, 429f
                  sltu         sp, a2, a0
                  la           s9, sub_4
                  addi         s9, s9, 109
                  sra          t3, s7, s3
                  ori          a6, ra, 211
                  xor          s1, a2, t1
                  and          t6, a5, s3
                  nop
                  srli         t1, tp, 5
                  bgeu         tp, a3, sub_2_j6 #branch to jump instr
                  lui          tp, 425657
                  sltiu        zero, tp, -1031
sub_2_j6:         jalr         s9, s9, -108 #jump sub_2 -> sub_4
414:              srai         sp, t0, 5
                  add          tp, zero, t5
                  andi         s6, s6, -168
                  xori         s0, s10, -1971
                  sra          a1, t1, t3
                  bge          s5, a2, 427f
420:              srl          t6, zero, s11
421:              blt          sp, s3, 433f
                  bge          sp, t1, 425f
                  srl          t0, s8, t0
                  addi         t3, s0, -324
425:              sra          a4, s11, a0
                  xori         gp, ra, 726
427:              addi         gp, ra, 1128
                  slli         a4, gp, 17
429:              addi         a2, t2, 1738
                  and          s9, s6, s5
                  sltiu        s3, s0, -1099
                  andi         t1, s7, 1770
433:              slt          s6, t5, a0
                  lui          a2, 210836
                  sra          sp, a4, t2
                  ori          ra, a7, 740
                  andi         t1, s2, 1164
                  blt          a4, t0, 457f
                  sra          t0, s7, a1
                  blt          t5, s3, 456f
                  sltiu        zero, s5, -1722
                  blt          a5, t5, 455f
                  slli         a4, a7, 14
                  blt          s5, a3, 451f
                  ori          a6, t5, -958
                  bge          s8, a1, 461f
                  slli         s4, t3, 7
                  bltu         a4, gp, 464f
                  sub          s7, a7, s6
                  sra          t3, t6, s9
451:              bgeu         s9, s1, 466f
                  auipc        t0, 871161
                  xori         a4, t0, -928
                  or           s3, gp, sp
455:              bge          a4, s7, 463f
456:              add          tp, s1, s9
457:              sltiu        s3, s3, -1454
                  or           sp, s0, s0
                  sub          t0, ra, t3
                  lui          gp, 800917
461:              add          gp, a3, a5
                  or           zero, t0, s5
463:              blt          s4, sp, 464f
464:              beq          t5, gp, 484f
                  xor          s9, t2, t0
466:              srai         s4, t4, 9
                  srl          s4, a3, a1
                  slti         zero, zero, 726
                  or           a2, s6, a1
                  xor          t1, t0, zero
                  andi         a2, s6, 1705
                  slli         t4, a7, 12
                  bge          s1, t6, 475f
                  bge          s7, s4, 488f
475:              srai         a2, s2, 18
                  ori          s0, t2, -1254
                  slt          a2, t3, t5
                  auipc        zero, 837425
                  beq          a5, s3, 499f
                  bne          t1, s7, 500f
                  bgeu         a4, s8, 500f
                  sub          s10, zero, a0
                  blt          s6, a2, 502f
484:              sra          s7, s2, gp
                  xori         s11, a3, -760
                  add          a6, a7, ra
                  bltu         t1, s9, 490f
488:              addi         s0, tp, -1646
                  auipc        s7, 773549
490:              slti         t4, a4, -247
                  or           s5, s3, t5
                  slt          t0, t3, t0
                  add          t4, t2, s8
                  slt          s8, tp, s6
                  slli         s4, s7, 8
                  xori         s1, a2, -1256
                  slti         t4, s1, 348
                  add          t3, a0, t4
499:              sltu         s0, a2, s2
500:              sra          a1, t0, a5
                  srai         t0, s4, 13
502:              bltu         t0, s0, 517f
                  slt          t2, ra, a5
                  slti         sp, s10, -1485
                  sub          a6, s1, s3
                  addi         s9, s11, -97
                  srai         t0, t4, 14
                  andi         t6, t0, 922
                  bne          a1, s7, 529f
                  xor          t0, s1, t1
                  srl          s6, s4, s1
                  xor          zero, s11, a0
                  sltu         ra, tp, t0
                  xori         a5, t1, -693
                  sra          s11, s2, a7
                  or           a2, s1, s6
517:              xor          s7, s3, t0
                  bge          s2, a0, 525f
                  slt          t3, a1, t2
                  lui          s4, 263107
                  beq          s11, a2, 538f
                  auipc        a4, 708206
                  sll          a2, t5, a4
                  slt          tp, t4, s3
525:              blt          ra, gp, 539f
                  addi         gp, a1, -348
                  andi         a1, t4, -1261
                  andi         s7, s5, 1959
529:              addi         a1, s9, 1425
                  xor          a4, a2, s5
                  xor          a2, s0, s8
                  xori         s7, s5, 793
                  xori         gp, gp, 1744
                  and          a4, tp, a5
                  sub          zero, a5, ra
                  and          s11, a2, a5
                  bge          t0, tp, 555f
538:              bge          a4, gp, 546f
539:              slli         s10, s5, 26
                  slti         zero, s3, -697
                  xori         a4, a0, 658
                  and          sp, s4, zero
                  bltu         ra, s8, 562f
                  srai         sp, s7, 25
                  sltu         s8, s4, s2
546:              add          t2, a7, s8
                  auipc        a4, 109854
                  add          s3, a4, a4
                  beq          s7, s4, 569f
                  nop
                  blt          s4, s3, 571f
                  blt          a0, t2, 568f
                  sll          s4, a6, zero
                  sub          t4, gp, t1
555:              bge          s11, t2, 570f
                  addi         t4, a7, -1741
                  add          s2, a1, zero
                  slti         tp, s1, -1972
                  nop
                  bgeu         s5, zero, 567f
                  xori         ra, t5, 1697
562:              blt          s6, a3, 581f
                  ori          a4, t6, 210
                  bgeu         t0, s3, 570f
                  auipc        a6, 679651
                  slti         a2, s3, 477
567:              xori         t6, tp, 381
568:              bne          a6, tp, 576f
569:              and          a4, s1, a7
570:              and          a6, s0, s5
571:              sltiu        s2, s4, 711
                  bgeu         a7, a5, 584f
                  andi         t3, s10, 600
                  sra          t4, t5, s9
                  sll          gp, t4, t3
576:              blt          tp, t3, 584f
                  srai         t1, t2, 31
                  and          a2, gp, t1
                  or           gp, zero, t0
                  bge          t4, t2, 581f
581:              slt          ra, a4, a1
                  lui          t1, 909862
                  sltiu        s11, s0, -473
584:              sltiu        t3, t0, -873
                  lw           s9, 4(a0)
                  sub          s0, s10, sp
                  and          t0, tp, a1
                  sub          s3, ra, t6
                  andi         t0, a7, -1007
                  addi         a0, a0, 28
                  addi         t6, a1, 683
                  sra          a1, t3, t4
                  sltiu        s8, s8, 1012
844:              addi x22, x25, 1
844:              jalr x22, x22, 0
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
.word 0xb44c685b, 0x3a5d1338, 0x6e858403, 0x326cc3ab, 0xcb622839, 0xec626e2c, 0xbd310727, 0xadf87d38
.word 0x9bb6b658, 0x10521d5c, 0x54a8bcc9, 0x09eff382, 0x975aca23, 0x666d3143, 0x5a7979c0, 0xee837b0b
.word 0x957a9ab0, 0x8b3f2f97, 0xfbd965d1, 0x24bdca56, 0x0454915d, 0x76395ab1, 0x5c20f554, 0x0968eadd
.word 0x14a28649, 0xd5f025b5, 0x9e5eaf21, 0xe97189c7, 0x7386ae48, 0x1e65ade4, 0xef7f4b9d, 0xc6935701
.word 0xcab6ff48, 0xb9151ac7, 0x03563d0a, 0x627b680d, 0xdf980234, 0xe66edb53, 0x8e667583, 0xdb820606
.word 0xac81a367, 0xfb720a6b, 0xbbb42aad, 0xf5bb1610, 0x58ec923c, 0xeed6bb1d, 0xcd671b86, 0x8013be6b
.word 0xc4f7fb9b, 0xa2ce401a, 0x42b8abe3, 0x27a482a6, 0x2aa453fe, 0xecd8bde3, 0xd73b9152, 0x83270acb
.word 0xb6d71527, 0xee633cb3, 0x99b80101, 0x7b8533bc, 0xd2887d2c, 0xb3f54dad, 0xaab2e9d6, 0x40fe5929
.word 0xa2ce343f, 0xb579a56d, 0xa96a1a27, 0x78a6ca90, 0x7335c732, 0x4d228445, 0xc4e202d2, 0x39e6ab87
.word 0xe8d35cdc, 0xe8073223, 0x8b5f0461, 0xdd5c071e, 0xa76254de, 0x54ca4920, 0x210ae5c2, 0x6bdd4729
.word 0x9ef692cf, 0xa90370b9, 0xc9ef3219, 0x7ca6d18f, 0x0ba6308a, 0xc508f03b, 0x5860c72c, 0xda7ff2f4
.word 0xacd4cf67, 0x41a60c2e, 0x99e296f5, 0xe8c732ea, 0xcdb70b69, 0xbe8bf397, 0x3d1a3fe8, 0xe07ae828
.word 0x9cff1b1d, 0xdc105f29, 0x353df160, 0x8b75a1da, 0x8db9ec63, 0x285ca50c, 0xd43e50fe, 0x45315ae7
.word 0xc9550bbd, 0xace3210e, 0xc805e75e, 0xe020bf87, 0x4c26afd0, 0x23fc0fa0, 0xafea84b4, 0x420756fd
.word 0x45a12fa9, 0xe8a03a38, 0x990de436, 0xf2a81f4d, 0xf6ec10bc, 0x826547f6, 0x2c31b091, 0x3d00e8c1
.word 0x3f15174c, 0x1c52b72a, 0x5e6049c9, 0x11bbfdde, 0x21868b4f, 0xa09985cb, 0x37624b08, 0x157e4ad4
.word 0x6de561bd, 0x6525d3f7, 0x5465632f, 0x99598a02, 0x0c9bd409, 0xffff366a, 0x2e71c0f4, 0x59df32d9
.word 0x9f743e9a, 0xf27d22b9, 0x8c773823, 0x75c659f2, 0xa1be742d, 0xb275351b, 0xfef04eb3, 0x0f387536
.word 0xfe5b663b, 0x42bcc82a, 0x152ed742, 0xc5682b38, 0x728b5dfa, 0x201a2902, 0xfa2df16b, 0x5878cae1
.word 0xb75cd1e7, 0xbdcec0ec, 0x06b99996, 0x85b4d030, 0x636bc525, 0xab390790, 0x0d8eba76, 0x3c7ada08
.word 0x2d7f0c50, 0xceacff30, 0x875bf8a4, 0xce443e4e, 0x7cac27e7, 0xa24b1835, 0x603a4b92, 0x8e145d63
.word 0x0d6f972d, 0xda7c339c, 0x0118ca9a, 0x7f32345a, 0x54a34d37, 0x385bd8eb, 0x078ba7f3, 0xf6c2764b
.word 0x72ddb086, 0x9ac350c7, 0x741ac411, 0x199d898e, 0x2f509a0f, 0xcb585587, 0xb5b694ed, 0xc4a30ec8
.word 0x1ae5c52e, 0xd16bf0b7, 0xeb09f877, 0x81d4aeb4, 0x952062f1, 0x031bd2a0, 0x91632104, 0x9e98c9db
.word 0x7d7f69b7, 0xed978364, 0x64a588b7, 0xd70f3b7c, 0xec954a05, 0x28e89c08, 0x8c102fc7, 0x89ebadea
.word 0x6f1436db, 0x7f62ce81, 0xe40f5032, 0x00a1dbed, 0xa5fc4898, 0x89f207e2, 0xeba9fb0d, 0x5c31e950
.word 0x6afff71b, 0xb2198880, 0xbbb62fab, 0xdf7dbdf9, 0xbed657ee, 0x5370c27a, 0x905f7af7, 0x1b0078f4
.word 0x35d4acb9, 0x63dbec2a, 0xfb0696f9, 0x159af68d, 0x512535a5, 0x0d9755ec, 0x058acbb7, 0x6c828f96
.word 0x00f49463, 0x0d0e9a87, 0x6928d2d8, 0x37558e90, 0x850321ba, 0x33c8dc37, 0xb46880a1, 0x5c805ff0
.word 0x4ee00445, 0x89e4c1c5, 0x1e055f3e, 0x21707d2b, 0x60f37c49, 0x004b718e, 0x02e22014, 0x4d242ec7
.word 0x1c028ab4, 0x074d108f, 0x46586598, 0x372571db, 0x572967a1, 0xef326cc9, 0x626bd9c3, 0xac938840
.word 0x27757cd0, 0x6398c595, 0x15686b6f, 0xd5cdf31c, 0x45fba449, 0x351b8ae1, 0x4880ba3d, 0x984a1fd8
.word 0x48f08176, 0xf8882db4, 0xce2af433, 0x0157a996, 0x01612c63, 0x45d38238, 0xf550fc44, 0x53e476d9
.word 0xcd34f6e1, 0x6d51ead9, 0x081aeb56, 0x097717af, 0xfadab697, 0xc3ae3ad3, 0x587a0637, 0xcf18c46f
.word 0x30e0a421, 0x73ab8cea, 0xfc0ccf58, 0x92751a94, 0x763080e3, 0x6760dc4e, 0x44c16d2f, 0x4f660fd2
.word 0x91376e01, 0x01a8c386, 0xa73854e7, 0xde4553da, 0xf145b131, 0x33c59b94, 0x22eaa80e, 0x3c372b0f
.word 0x2a103d28, 0xe9791f7e, 0x832558cb, 0xf0b662de, 0xbac289b7, 0xc54cf7bd, 0x9b8e617f, 0x2c5e016a
.word 0xc14e0b91, 0xcef6dd3f, 0x3373e58f, 0xb280eabe, 0xb1197a08, 0xfc369cd6, 0x90409f8f, 0xa06b4390
.word 0x71a856eb, 0x0240e906, 0xd83c0f9d, 0x77062673, 0x7250ecfd, 0xb40721c2, 0xc720db71, 0x60dcd286
.word 0x29c21ea6, 0x7f5ee7a0, 0x3df9946f, 0x11cc3371, 0x7ee2a830, 0x4fb11dfb, 0x9262c517, 0x849c939a
.word 0xacd96811, 0x730b9ad7, 0x5095d23c, 0xd3efded2, 0x7fa91492, 0x1688b781, 0x061ce9e3, 0x6a4d0630
.word 0xe78671af, 0x4ba98a3b, 0xca41df38, 0xa5e78b02, 0xfaee3f74, 0x7b2dce48, 0x8d31885e, 0xe7094092
.word 0xf7096407, 0x598ed0b5, 0xb2d37604, 0x861a6481, 0xe97512b6, 0x1c495ccc, 0x0dbbec96, 0xaa5625bf
.word 0xcd2cdb8b, 0x95a563f2, 0x55fabad5, 0xc758f17e, 0x731079b7, 0xddfdb2d7, 0x2a0514d9, 0xdb42c9f0
.word 0x19030293, 0xca6b178f, 0xe2991b9b, 0x3897218d, 0x95dc5415, 0x540dc709, 0x31d3d167, 0x08739d29
.word 0x86743229, 0x5ba12655, 0x304cc3a5, 0x68f976f5, 0xd87ff484, 0xce900e5f, 0x3ebe4278, 0x5fa4b59f
.word 0xaa514b5c, 0x6a9278b8, 0xdc23d57e, 0x7e883d56, 0xd1ace4b0, 0xaa98572e, 0xe229f299, 0x99b313de
.word 0x67cfb608, 0xe6be1a54, 0x83dbce46, 0x703dd86c, 0x391c4925, 0x5d83dbd6, 0x4399fb75, 0xa48be9d4
.word 0xc5be7070, 0x808b7d62, 0xa06fa977, 0xb888e59e, 0x20048eaf, 0x0f8f967b, 0x9d2cd714, 0x863cddb4
.word 0x73ff2c7e, 0xb1efaa99, 0x582fb36d, 0x1dfbe118, 0x3a929cf3, 0x21455bfa, 0x7f61611c, 0x52b432dd
.word 0x7f73d0e8, 0xb924d9ac, 0xb5176b73, 0xf82df6fd, 0x55a6ef86, 0xd92e8856, 0xe25b47fd, 0x8fe08cde
.word 0xa3d5fc7b, 0xbcdae101, 0xf3d2e17e, 0x6a088cd0, 0xd5050b09, 0xc513535d, 0xdc147496, 0xc459268d
.word 0xa6450208, 0xe09f9f21, 0x5056c9f2, 0x4813063f, 0xa0815bef, 0x498170cf, 0x58105c7d, 0x22924240
.word 0x676228de, 0xdd9d2959, 0xeb703158, 0x36be6db9, 0x55e0dd81, 0x3b611cf8, 0x31678e89, 0x0658e68c
.word 0x479065a2, 0xf5fe695b, 0x228962e9, 0x291d46af, 0x4b987675, 0x1e3940ed, 0xae3017f9, 0xaf8edb42
.word 0x5d477f29, 0x435af9a9, 0x43ca8bc6, 0x9f1d82ae, 0x6887ee55, 0x9d094969, 0x83e3c83b, 0xee428032
.word 0x73286341, 0xd9b33994, 0xa6618254, 0xaf96b0c4, 0x7132a963, 0x33d26bb7, 0x0ff84df6, 0xc9e76cf6
.word 0xe226565d, 0xe8cddfdb, 0xbffffb31, 0xc553b5f0, 0x3aa33095, 0xd2a70a83, 0xded5ba2d, 0x63c5a24f
.word 0x7d847cec, 0x7e6cfb5b, 0xfbacb40d, 0x41688f36, 0xa09d86ce, 0xd183dbf0, 0xfc21899b, 0xead34957
.word 0x573ba870, 0xa27d2331, 0xfd2d85a6, 0xc6a8a1d4, 0xf91318d8, 0x155035a2, 0x39df846b, 0x964902d9
.word 0x130da74b, 0x4762659a, 0x3573ada0, 0x1f2f9728, 0x999a16f3, 0x134cb668, 0x756053a8, 0x9c1994d1
.word 0x0a0f3113, 0xf02c2f64, 0x90e7eef7, 0xd0a54674, 0xf502b650, 0xcbf4e8f5, 0x293d4680, 0x1f74db29
.word 0x42e99956, 0x8635fe36, 0x6d511105, 0xd43ec5ef
.section .region_1,"aw",@progbits;
region_1:
.word 0x3ee2d4ec, 0xdee459b4, 0xf2e3cf1a, 0x617db6c7, 0x7fb9933a, 0xb0aca254, 0x5093eada, 0x290f0b00
.word 0xfb25d436, 0x5203215c, 0x04d952bc, 0x22357f6d, 0x293db315, 0x0e77f646, 0x9db417b3, 0x3a9d9417
.word 0x461f5ec1, 0x1c9a5bd4, 0xf0ab8da3, 0x9e1842e8, 0x7c820ec3, 0x57ca6482, 0x38d0fe89, 0x15f8eb68
.word 0xf3b118b4, 0xa9bde332, 0xc7f3ff44, 0xe6981d4f, 0xe847ac4f, 0x5a885134, 0x55abff9d, 0x26ccb401
.word 0x55603d3e, 0xb92e6b85, 0x2ee05045, 0x0f388966, 0xf29bf0d9, 0x4f0f3840, 0x490804a5, 0x84a4d272
.word 0x6ec19230, 0xc67c96ed, 0x2711149a, 0xc7aeab1d, 0x7391cec8, 0xdfaa11a1, 0x859dd6e4, 0xd97db079
.word 0x07e923d7, 0x2c2a8e85, 0x621a33dc, 0x21ddd62a, 0x05b62571, 0x1bf37d5f, 0xfe76a51a, 0x91d96fb0
.word 0xa8c62007, 0xd692db68, 0xa0b0752e, 0x09200540, 0x78eca07e, 0xf66fa272, 0xd10a5015, 0x2a0b84f4
.word 0x7b740183, 0xe978e9a2, 0xb144d490, 0xa8d3fb4e, 0x723ed8f7, 0x78723c39, 0x2d239adc, 0x5addc2da
.word 0x8a258da5, 0xc56a66d1, 0xc3da95e3, 0x2b5a6b47, 0xcc16c16a, 0xb4f05732, 0x09963b5e, 0xad3f1505
.word 0x6f71df66, 0xc3c30ce5, 0xb771304c, 0x73a4315d, 0xdffeec8d, 0xc0e2e5bd, 0x0349dd20, 0x9ac3c492
.word 0x7c000e4e, 0xe6c0aa06, 0x6a3ee675, 0x7f6b7133, 0x73af5b82, 0x5a760c86, 0xe4b78e27, 0x66b836c6
.word 0xae372af6, 0x7d45420d, 0x44585ba0, 0x542666d2, 0x018c2cee, 0x5a6a5e69, 0x0cc5bc01, 0x53c7f629
.word 0xc446a98b, 0x2a737de5, 0xfa397e34, 0xdd476cbc, 0x319164d7, 0x0ba8b8d4, 0x69b82606, 0x0a3858c1
.word 0x5c4c144f, 0x6ccd8c45, 0x4268842e, 0xc07475f1, 0xb44b73cc, 0x8f2201ab, 0x80ecda14, 0xd44f0112
.word 0x7d4ab5b5, 0xbabd82d3, 0x502136ab, 0x2bd5f1bb, 0xd4bf95e4, 0x6bfe105d, 0xf64e0e84, 0xc2f83139
.word 0x93963a30, 0x7028153d, 0x35b9891d, 0x26eed5fb, 0x95e98eaa, 0xce8fe5cf, 0xccf8e66b, 0x49684da3
.word 0xcb84af95, 0xdb153a58, 0x80d97fff, 0x61b87f4b, 0xc8a51695, 0x1610389b, 0x36b2ac66, 0x47641a9b
.word 0xcafc60ae, 0xdb165f9f, 0xa2abc869, 0x6628ab69, 0x374c5a1f, 0x7fc4bf11, 0x370e2d89, 0x1f07487c
.word 0x359ed7ef, 0x151b99eb, 0x8697a448, 0x17d717d8, 0xcaf52173, 0x9b59322b, 0x66e9b381, 0x84ed212e
.word 0x2fb2b71e, 0x319f80c0, 0xf118d98c, 0x2be2f7d9, 0xe95103b5, 0x190d8557, 0xa9df048c, 0x1f687b71
.word 0xa4423efc, 0x07a0981d, 0x3b115d52, 0x4b0f1bd3, 0xc89ce59e, 0x8bb6b788, 0x649af102, 0x8d4fdd00
.word 0x3b3c6df4, 0x78304d87, 0x17287c88, 0xe19d8555, 0x96bbf68d, 0x87b03b09, 0xce94112b, 0xe4368bcd
.word 0x5dfc28aa, 0x32de951b, 0xd7c0f53b, 0x9422d3a3, 0xa7ec036e, 0x8cad40d9, 0xd46759c5, 0xcc0c0adb
.word 0x1e5baca9, 0x3896babb, 0xe398331c, 0xaaae439a, 0x341eb5af, 0x46f29fae, 0x53577ca3, 0x51051330
.word 0xa8f09de1, 0xbac3c22b, 0x9e65b477, 0x4577c817, 0x550bd992, 0xc0ffbcd7, 0x90c6d80b, 0xd57edcca
.word 0x527ee968, 0xc3f5023e, 0x790da407, 0xc3994e2e, 0xe2d57046, 0x932c18c3, 0x21f6dd5a, 0xb5096e3d
.word 0x8e60a056, 0x0433d3eb, 0xbbf940e6, 0x0fd1c0e4, 0xec2cfc0f, 0xacf6b011, 0xb7432e37, 0x05e9cfa0
.word 0x7f4c3712, 0x25f7c04c, 0x5028e606, 0x562d9422, 0x77ecc17e, 0x8ad645bc, 0xcbf4aa1a, 0xaef62164
.word 0x89bdc0b4, 0x2284bb0a, 0x9813ff32, 0xeb18674c, 0x09e33001, 0xe73f9e18, 0x96f84c02, 0x3a84c0fb
.word 0x3f0e2ac9, 0xa1b2079e, 0x3f46efdc, 0x78204c6f, 0xf285b720, 0xe3b12b82, 0x3fa72a77, 0x46c04944
.word 0xdcbe8e9e, 0xf2206d25, 0xe91d461c, 0xba62b43e, 0xd9382df3, 0x8a91e5c4, 0x34cbe176, 0xad58507d
.word 0x68076f2f, 0x6152635c, 0x5649d8e7, 0x776e5a8e, 0x780498d7, 0xf463a9e4, 0x72df581a, 0x3c6c291c
.word 0x4a0d5865, 0x708fd255, 0x0a70edfe, 0xb2912709, 0x75a6037d, 0x0a6dd0e4, 0x0916d8d4, 0xbedd0cc3
.word 0x4543f8ac, 0x48dc6e82, 0xb3f3cf1b, 0xcd729f1b, 0x7c476a34, 0xb102c6f4, 0xce74e521, 0x0ddbeedd
.word 0x6ee6021a, 0x2f0d01f5, 0xaa5177bc, 0x60b7b837, 0x72e661eb, 0xee791053, 0xded6cc85, 0xaf6a2a5a
.word 0x24dd0118, 0x8d9517bd, 0x5fedf7a0, 0x0a4eb53f, 0x6a97a2af, 0x301c89c6, 0xd067122c, 0x994bc1ac
.word 0x4120c084, 0x41d075e2, 0x7318afa4, 0x65c102fb, 0xd9553fd2, 0x0c91e3af, 0x0f0b978b, 0xb7373d40
.word 0xe1e4b40c, 0x66cf7cf0, 0xae8850d2, 0x3490af89, 0x71ba5840, 0xee0c4560, 0xe37087dc, 0x0d5f145d
.word 0x46cfb76c, 0x68d3a212, 0xafc28d96, 0x74098333, 0xc3f5a05a, 0x018409b9, 0x0bf8153a, 0x9175aa0e
.word 0x73ed9fb7, 0x7bd6ddfd, 0x83fa88e2, 0x621dd835, 0x3c39d584, 0xdd118320, 0x96481de2, 0x110e6f92
.word 0xbb07b3d8, 0x52aa83ad, 0x5cfeba0e, 0xe8c55598, 0x5e885ab5, 0x8bf8cfca, 0xa94df2e1, 0x67a479b6
.word 0x77ec4d26, 0x2018c4c8, 0x527d5f6c, 0x1a882a5e, 0x9f3dcfaa, 0x00c2427a, 0xec76f3c2, 0x342ff182
.word 0x6fee0997, 0xf9f17c42, 0xe1c015fe, 0xb1680b25, 0xd64e979b, 0x3d2ee7ec, 0xd57f3cc7, 0xa8157b49
.word 0x47f5c412, 0xaf302331, 0xe3adda6c, 0xd47b94d0, 0x16a32345, 0xdf4035b0, 0x06f2f788, 0x7c59c261
.word 0x5141c4db, 0x1c6b34be, 0xa81391a9, 0x32919ae4, 0xae565d0e, 0xb9276c09, 0x1ac2419e, 0x1e004d24
.word 0xc313abee, 0x0df974f4, 0x712bd0fc, 0x6b58aac2, 0x1200d0c1, 0x928efffd, 0x9f509d7e, 0x8fa24307
.word 0x3ff650f1, 0x712fbfc3, 0x6b7c6a5f, 0xdb21611a, 0x5bd59125, 0x9c3148e5, 0x32578609, 0xce0b1730
.word 0x53e57170, 0x703f1311, 0x1937c3b9, 0xb1442089, 0xcc7202c9, 0x0776c026, 0xb09cd973, 0x3ff6aa86
.word 0x8a11d9eb, 0x3d54fe86, 0x8f4f84c2, 0xccc84c1e, 0x089f3e60, 0xb336cafc, 0xee7a86cd, 0xec14624a
.word 0x9e624348, 0xe79dcc24, 0x91885a3d, 0x0954f7ca, 0xcc393edd, 0x0f70374d, 0xfcb91c3f, 0x29a2e09e
.word 0x745593ca, 0x3ba1886b, 0xc81d0dab, 0xc6eb71a2, 0x4a554afe, 0xd805b3ba, 0xc9a64ef5, 0xaca3c687
.word 0xea0957e2, 0xd3f0fa5a, 0x21447fe0, 0xbc9628ef, 0x02e6f4b4, 0x92adb1ed, 0xf74553c5, 0x73e0a7c6
.word 0x0e1d6a60, 0x2d63bf46, 0x1de0daef, 0x440e2a3c, 0x9efd884f, 0xb2e1c471, 0x5ac5fbb6, 0x47a09c12
.word 0x1f808599, 0x4a0d174d, 0x47760c74, 0x33e346f6, 0x36644412, 0x3c4e64ce, 0x9d99da3c, 0x58bda02a
.word 0x8398c08b, 0x4e6cf7a6, 0x12b49353, 0x9cf631a6, 0x7060cd10, 0xe4d65b12, 0x37db3920, 0x7ee9b0b2
.word 0xd928f09f, 0x68353641, 0x69dcc112, 0x7b38bff9, 0xb612aa16, 0xc5e532db, 0x202183d0, 0xec1d62c5
.word 0x835b8ef7, 0x3acc8e2d, 0x84f0b9e4, 0x5061f1b2, 0xaad6a427, 0x45654567, 0x013d7fab, 0x986a0adc
.word 0x360fbdb3, 0xde284c6f, 0x9951ff95, 0xfe9057b7, 0xf3a495bf, 0x91a3e950, 0x85787482, 0x83c5c9a1
.word 0x0d3f9b3a, 0xd3e19afa, 0xc6b0d71e, 0xaaebbc5a, 0xa6177cf0, 0xb013db3c, 0x093c2e93, 0xaa437aeb
.word 0x6d2414c2, 0xd18d1bec, 0x996071ba, 0xe339a979, 0x022679d3, 0xe6f80b4a, 0x1621aeec, 0x47a2d956
.word 0x49d65479, 0xd51bec12, 0xb74e5583, 0x38809a43, 0x37bed65b, 0xa2c2525a, 0xafe7c960, 0x79029d94
.word 0x0ff758a1, 0x8bfbc793, 0x3674a1c9, 0x7d3ce941
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x29, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x29, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x29, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x29, x26, ecall_handler
                  li x26, 0x1
                  beq x29, x26, instr_fault_handler
                  li x26, 0x5
                  beq x29, x26, load_fault_handler
                  li x26, 0x7
                  beq x29, x26, store_fault_handler
                  li x26, 0xc
                  beq x29, x26, pt_fault_handler
                  li x26, 0xd
                  beq x29, x26, pt_fault_handler
                  li x26, 0xf
                  beq x29, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
