.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf1a8b591
                  li x1, 0xf7679e8c
                  li x2, 0x0
                  li x3, 0x3d62268
                  li x4, 0x9
                  li x5, 0x0
                  li x6, 0x15e67cae
                  li x7, 0x80000000
                  li x8, 0xe0ddb900
                  li x9, 0x4
                  li x10, 0xc728a766
                  li x11, 0x0
                  li x12, 0xd
                  li x15, 0x2fe39991
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x9a03b959
                  li x19, 0x5aabbcf9
                  li x20, 0xfb9c7b46
                  li x21, 0x9
                  li x22, 0x0
                  li x23, 0xfb8355c1
                  li x24, 0xfc52eb0a
                  li x25, 0x0
                  li x26, 0x9ed2c6fa
                  li x27, 0xe
                  li x28, 0x8f8cc1e7
                  li x29, 0x5665463a
                  li x30, 0x7cbeba78
                  li x31, 0x0
                  la x13, user_stack_end
main:             jal          t1, 10f
0:                jal          t2, 1f
1:                jal          ra, 6f
2:                jal          a0, 14f
3:                jal          t4, 5f
4:                jal          a0, 12f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          ra, 9f
9:                jal          t1, 11f
10:               jal          s10, 2b
11:               jal          ra, 13f
12:               jal          a1, 8b
13:               jal          ra, 15f
14:               jal          t1, 3b
15:               srli         a5, t3, 13
main_43:          jal          t1, 1f
0:                jal          t1, 7f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          gp, 9f
4:                jal          t4, 16f
5:                jal          t2, 14f
6:                jal          ra, 11f
7:                jal          t3, 17f
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          t1, 15f
11:               jal          ra, 0b
12:               jal          sp, 8b
13:               jal          s8, 4b
14:               jal          t1, 13b
15:               jal          a6, 3b
16:               jal          t1, 6b
17:               sll          s4, a7, t2
main_35:          jal          t1, 2f
0:                jal          a1, 14f
1:                jal          ra, 20f
2:                jal          a7, 0b
3:                jal          s1, 17f
4:                jal          ra, 22f
5:                jal          s9, 12f
6:                jal          t4, 24f
7:                jal          s6, 25f
8:                jal          t1, 15f
9:                jal          sp, 8b
10:               jal          ra, 29f
11:               jal          t1, 26f
12:               jal          ra, 9b
13:               jal          a5, 4b
14:               jal          ra, 1b
15:               jal          ra, 21f
16:               jal          t1, 11b
17:               jal          ra, 6b
18:               jal          ra, 3b
19:               jal          t1, 27f
20:               jal          ra, 10b
21:               jal          t1, 13b
22:               jal          t1, 19b
23:               jal          sp, 7b
24:               jal          s5, 5b
25:               jal          t1, 28f
26:               jal          a5, 18b
27:               jal          t1, 30f
28:               jal          t1, 16b
29:               jal          ra, 23b
30:               slti         s11, a2, 403
main_46:          jal          t1, 12f
0:                jal          gp, 1f
1:                jal          t1, 11f
2:                jal          t1, 7f
3:                jal          ra, 6f
4:                jal          t3, 8f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          t1, 3b
8:                jal          s11, 0b
9:                jal          ra, 10f
10:               jal          sp, 13f
11:               jal          tp, 2b
12:               jal          ra, 4b
13:               ori          s5, s3, -1613
main_28:          jal          t1, 13f
0:                jal          tp, 1f
1:                jal          ra, 5f
2:                jal          a2, 10f
3:                jal          t4, 14f
4:                jal          ra, 6f
5:                jal          t1, 15f
6:                jal          ra, 2b
7:                jal          ra, 9f
8:                jal          t1, 12f
9:                jal          gp, 8b
10:               jal          sp, 3b
11:               jal          ra, 4b
12:               jal          ra, 18f
13:               jal          ra, 0b
14:               jal          ra, 16f
15:               jal          s6, 17f
16:               jal          ra, 7b
17:               jal          ra, 11b
18:               auipc        a7, 761754
main_48:          jal          t1, 6f
0:                jal          ra, 9f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          t4, 10f
4:                jal          gp, 8f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          a6, 5b
10:               srli         s9, a2, 16
main_19:          jal          t1, 26f
0:                jal          ra, 17f
1:                jal          gp, 7f
2:                jal          t1, 15f
3:                jal          s2, 8f
4:                jal          ra, 20f
5:                jal          ra, 29f
6:                jal          ra, 14f
7:                jal          s7, 10f
8:                jal          t2, 0b
9:                jal          t1, 16f
10:               jal          s0, 19f
11:               jal          ra, 12f
12:               jal          ra, 3b
13:               jal          ra, 21f
14:               jal          a6, 28f
15:               jal          ra, 6b
16:               jal          ra, 23f
17:               jal          ra, 13b
18:               jal          ra, 22f
19:               jal          ra, 5b
20:               jal          ra, 27f
21:               jal          s7, 18b
22:               jal          sp, 1b
23:               jal          ra, 2b
24:               jal          t3, 4b
25:               jal          tp, 9b
26:               jal          ra, 25b
27:               jal          ra, 11b
28:               jal          ra, 24b
29:               sub          s6, s5, s11
main_5:           jal          t1, 13f
0:                jal          ra, 29f
1:                jal          a5, 6f
2:                jal          ra, 3f
3:                jal          t1, 4f
4:                jal          t1, 14f
5:                jal          ra, 22f
6:                jal          s10, 28f
7:                jal          s2, 8f
8:                jal          sp, 1b
9:                jal          ra, 19f
10:               jal          ra, 5b
11:               jal          ra, 24f
12:               jal          a6, 9b
13:               jal          a2, 27f
14:               jal          t1, 30f
15:               jal          a0, 10b
16:               jal          ra, 15b
17:               jal          ra, 16b
18:               jal          ra, 25f
19:               jal          ra, 20f
20:               jal          t1, 7b
21:               jal          s4, 12b
22:               jal          ra, 21b
23:               jal          a2, 17b
24:               jal          sp, 0b
25:               jal          t1, 11b
26:               jal          t1, 2b
27:               jal          t1, 18b
28:               jal          a1, 26b
29:               jal          sp, 23b
30:               slti         s3, t6, 1932
main_22:          jal          t1, 5f
0:                jal          ra, 9f
1:                jal          t1, 11f
2:                jal          s10, 13f
3:                jal          a7, 0b
4:                jal          ra, 7f
5:                jal          s0, 12f
6:                jal          t1, 10f
7:                jal          t1, 8f
8:                jal          s8, 1b
9:                jal          sp, 4b
10:               jal          ra, 3b
11:               jal          s4, 2b
12:               jal          ra, 6b
13:               and          t4, s4, s8
main_29:          jal          t1, 7f
0:                jal          tp, 26f
1:                jal          ra, 6f
2:                jal          ra, 11f
3:                jal          tp, 16f
4:                jal          ra, 19f
5:                jal          t1, 25f
6:                jal          t1, 28f
7:                jal          ra, 24f
8:                jal          ra, 22f
9:                jal          s10, 5b
10:               jal          ra, 15f
11:               jal          s1, 21f
12:               jal          s4, 0b
13:               jal          t1, 9b
14:               jal          ra, 12b
15:               jal          t1, 1b
16:               jal          ra, 13b
17:               jal          ra, 2b
18:               jal          ra, 8b
19:               jal          ra, 3b
20:               jal          sp, 4b
21:               jal          s3, 14b
22:               jal          ra, 23f
23:               jal          t1, 17b
24:               jal          ra, 27f
25:               jal          s4, 10b
26:               jal          ra, 20b
27:               jal          ra, 18b
28:               xor          ra, a1, a4
main_33:          jal          t1, 6f
0:                jal          t1, 5f
1:                jal          tp, 8f
2:                jal          s9, 7f
3:                jal          sp, 9f
4:                jal          ra, 0b
5:                jal          s9, 1b
6:                jal          ra, 3b
7:                jal          t1, 4b
8:                jal          ra, 10f
9:                jal          ra, 2b
10:               ori          s6, a3, 1814
main_13:          jal          t1, 0f
0:                jal          t1, 12f
1:                jal          ra, 11f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          s2, 13f
6:                jal          ra, 10f
7:                jal          ra, 15f
8:                jal          tp, 2b
9:                jal          t1, 7b
10:               jal          tp, 14f
11:               jal          s10, 5b
12:               jal          ra, 9b
13:               jal          tp, 16f
14:               jal          sp, 1b
15:               jal          ra, 3b
16:               addi         a7, t1, -158
main_25:          jal          t1, 6f
0:                jal          ra, 18f
1:                jal          ra, 0b
2:                jal          s5, 19f
3:                jal          t1, 12f
4:                jal          t1, 15f
5:                jal          ra, 9f
6:                jal          tp, 7f
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          t1, 1b
10:               jal          ra, 20f
11:               jal          gp, 26f
12:               jal          ra, 2b
13:               jal          t5, 3b
14:               jal          ra, 10b
15:               jal          ra, 25f
16:               jal          ra, 22f
17:               jal          ra, 28f
18:               jal          ra, 4b
19:               jal          t6, 21f
20:               jal          gp, 16b
21:               jal          t1, 11b
22:               jal          s5, 13b
23:               jal          ra, 24f
24:               jal          ra, 17b
25:               jal          t1, 14b
26:               jal          sp, 27f
27:               jal          ra, 23b
28:               srli         a1, a6, 26
main_16:          jal          t1, 2f
0:                jal          sp, 4f
1:                jal          t1, 13f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          sp, 10f
6:                jal          ra, 8f
7:                jal          s1, 6b
8:                jal          t1, 1b
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          a5, 0b
12:               jal          t1, 11b
13:               or           a5, s11, s3
main_45:          jal          t1, 1f
0:                jal          ra, 18f
1:                jal          tp, 2f
2:                jal          t1, 7f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          s10, 10f
6:                jal          t1, 14f
7:                jal          a2, 17f
8:                jal          t1, 20f
9:                jal          ra, 13f
10:               jal          ra, 8b
11:               jal          ra, 9b
12:               jal          ra, 15f
13:               jal          tp, 16f
14:               jal          ra, 4b
15:               jal          s5, 6b
16:               jal          ra, 12b
17:               jal          t1, 3b
18:               jal          ra, 19f
19:               jal          ra, 11b
20:               srl          t2, s8, s8
main_31:          jal          t1, 7f
0:                jal          t3, 6f
1:                jal          t1, 12f
2:                jal          ra, 11f
3:                jal          ra, 10f
4:                jal          a5, 8f
5:                jal          sp, 2b
6:                jal          tp, 9f
7:                jal          t1, 4b
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          a0, 0b
11:               jal          t1, 1b
12:               and          a7, zero, sp
main_26:          jal          t1, 1f
0:                jal          t1, 5f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          gp, 19f
4:                jal          ra, 3b
5:                jal          a7, 14f
6:                jal          ra, 2b
7:                jal          s7, 17f
8:                jal          a0, 7b
9:                jal          t1, 13f
10:               jal          ra, 12f
11:               jal          ra, 8b
12:               jal          ra, 20f
13:               jal          gp, 4b
14:               jal          ra, 16f
15:               jal          ra, 18f
16:               jal          ra, 15b
17:               jal          ra, 0b
18:               jal          t1, 6b
19:               jal          ra, 21f
20:               jal          tp, 9b
21:               xor          s10, s10, gp
main_14:          jal          t1, 11f
0:                jal          t6, 19f
1:                jal          s3, 3f
2:                jal          s3, 16f
3:                jal          ra, 4f
4:                jal          a2, 7f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          s1, 15f
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          a5, 12f
11:               jal          ra, 18f
12:               jal          t1, 17f
13:               jal          ra, 1b
14:               jal          ra, 6b
15:               jal          ra, 8b
16:               jal          s10, 10b
17:               jal          ra, 14b
18:               jal          ra, 2b
19:               sub          t5, a4, s8
main_36:          jal          t1, 1f
0:                jal          s5, 4f
1:                jal          sp, 12f
2:                jal          tp, 10f
3:                jal          ra, 9f
4:                jal          t2, 11f
5:                jal          ra, 6f
6:                jal          ra, 7f
7:                jal          s10, 0b
8:                jal          ra, 13f
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          ra, 15f
12:               jal          ra, 2b
13:               jal          ra, 14f
14:               jal          a6, 3b
15:               srai         s6, t5, 28
main_9:           jal          t1, 0f
0:                jal          tp, 10f
1:                jal          ra, 5f
2:                jal          tp, 9f
3:                jal          ra, 11f
4:                jal          t1, 21f
5:                jal          a6, 18f
6:                jal          tp, 15f
7:                jal          t1, 4b
8:                jal          a2, 6b
9:                jal          t1, 8b
10:               jal          t1, 22f
11:               jal          ra, 17f
12:               jal          t4, 3b
13:               jal          sp, 19f
14:               jal          t1, 1b
15:               jal          tp, 23f
16:               jal          ra, 13b
17:               jal          ra, 14b
18:               jal          t1, 20f
19:               jal          a5, 12b
20:               jal          s3, 24f
21:               jal          ra, 16b
22:               jal          a2, 2b
23:               jal          t1, 7b
24:               lui          zero, 294179
main_38:          jal          t1, 21f
0:                jal          t1, 12f
1:                jal          s4, 14f
2:                jal          ra, 11f
3:                jal          gp, 15f
4:                jal          ra, 16f
5:                jal          ra, 18f
6:                jal          ra, 20f
7:                jal          t1, 23f
8:                jal          s6, 17f
9:                jal          ra, 7b
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          ra, 2b
13:               jal          ra, 0b
14:               jal          ra, 22f
15:               jal          t4, 10b
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               jal          t1, 4b
19:               jal          t1, 24f
20:               jal          t1, 9b
21:               jal          t1, 13b
22:               jal          ra, 19b
23:               jal          t1, 8b
24:               slli         t2, s0, 7
main_18:          jal          t1, 6f
0:                jal          a7, 11f
1:                jal          ra, 8f
2:                jal          ra, 7f
3:                jal          a2, 0b
4:                jal          a2, 5f
5:                jal          a7, 9f
6:                jal          ra, 1b
7:                jal          t1, 4b
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          t1, 3b
11:               slt          a7, s6, s7
main_50:          jal          t1, 4f
0:                jal          gp, 25f
1:                jal          t1, 0b
2:                jal          ra, 15f
3:                jal          t3, 23f
4:                jal          s11, 19f
5:                jal          t1, 8f
6:                jal          t1, 22f
7:                jal          s0, 17f
8:                jal          ra, 18f
9:                jal          ra, 14f
10:               jal          ra, 26f
11:               jal          ra, 27f
12:               jal          ra, 3b
13:               jal          gp, 9b
14:               jal          ra, 5b
15:               jal          ra, 28f
16:               jal          sp, 24f
17:               jal          ra, 6b
18:               jal          t1, 10b
19:               jal          gp, 21f
20:               jal          ra, 11b
21:               jal          ra, 20b
22:               jal          ra, 1b
23:               jal          ra, 7b
24:               jal          t2, 13b
25:               jal          t1, 2b
26:               jal          ra, 12b
27:               jal          s2, 16b
28:               srai         s6, a5, 14
main_3:           jal          t1, 19f
0:                jal          t4, 9f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          gp, 20f
4:                jal          t3, 22f
5:                jal          ra, 10f
6:                jal          ra, 13f
7:                jal          sp, 23f
8:                jal          s0, 17f
9:                jal          ra, 15f
10:               jal          ra, 18f
11:               jal          t1, 16f
12:               jal          s10, 6b
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          t1, 8b
16:               jal          ra, 14b
17:               jal          ra, 3b
18:               jal          ra, 11b
19:               jal          gp, 21f
20:               jal          a6, 5b
21:               jal          ra, 12b
22:               jal          gp, 7b
23:               or           a2, s11, s5
main_7:           jal          t1, 23f
0:                jal          t1, 15f
1:                jal          ra, 7f
2:                jal          ra, 9f
3:                jal          t1, 2b
4:                jal          ra, 16f
5:                jal          t1, 17f
6:                jal          ra, 13f
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          t1, 0b
10:               jal          ra, 5b
11:               jal          ra, 24f
12:               jal          tp, 20f
13:               jal          ra, 14f
14:               jal          ra, 18f
15:               jal          t1, 6b
16:               jal          a7, 12b
17:               jal          ra, 22f
18:               jal          ra, 8b
19:               jal          t4, 21f
20:               jal          ra, 11b
21:               jal          t1, 1b
22:               jal          ra, 19b
23:               jal          ra, 3b
24:               xor          gp, a6, s7
main_2:           jal          t1, 0f
0:                jal          s7, 10f
1:                jal          ra, 2f
2:                jal          ra, 13f
3:                jal          ra, 6f
4:                jal          t1, 11f
5:                jal          s5, 9f
6:                jal          t1, 17f
7:                jal          ra, 16f
8:                jal          t1, 5b
9:                jal          ra, 15f
10:               jal          t1, 8b
11:               jal          tp, 7b
12:               jal          s3, 14f
13:               jal          ra, 3b
14:               jal          ra, 1b
15:               jal          ra, 4b
16:               jal          s7, 12b
17:               addi         s1, s8, 9
main_49:          jal          t1, 16f
0:                jal          ra, 4f
1:                jal          ra, 19f
2:                jal          ra, 17f
3:                jal          gp, 12f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          t1, 11f
7:                jal          ra, 0b
8:                jal          s3, 6b
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          t1, 15f
12:               jal          ra, 14f
13:               jal          ra, 1b
14:               jal          sp, 9b
15:               jal          gp, 7b
16:               jal          s5, 10b
17:               jal          t1, 18f
18:               jal          ra, 8b
19:               auipc        a5, 801696
main_0:           jal          t1, 2f
0:                jal          s0, 5f
1:                jal          t1, 7f
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          s10, 6f
5:                jal          t1, 1b
6:                jal          ra, 0b
7:                jal          s0, 10f
8:                jal          s4, 9f
9:                jal          t1, 4b
10:               jal          ra, 3b
11:               or           a6, a5, t3
main_4:           jal          t1, 15f
0:                jal          s1, 8f
1:                jal          ra, 12f
2:                jal          t1, 16f
3:                jal          ra, 18f
4:                jal          t6, 21f
5:                jal          s5, 7f
6:                jal          sp, 22f
7:                jal          ra, 10f
8:                jal          t1, 13f
9:                jal          t1, 23f
10:               jal          a0, 0b
11:               jal          ra, 3b
12:               jal          ra, 9b
13:               jal          t1, 17f
14:               jal          ra, 5b
15:               jal          ra, 11b
16:               jal          ra, 1b
17:               jal          s5, 2b
18:               jal          s9, 14b
19:               jal          ra, 6b
20:               jal          ra, 19b
21:               jal          t1, 20b
22:               jal          ra, 24f
23:               jal          t1, 4b
24:               nop
main_6:           jal          t1, 2f
0:                jal          t1, 11f
1:                jal          t1, 10f
2:                jal          t1, 8f
3:                jal          t1, 0b
4:                jal          ra, 5f
5:                jal          ra, 1b
6:                jal          s8, 7f
7:                jal          ra, 4b
8:                jal          ra, 9f
9:                jal          s2, 3b
10:               jal          s4, 12f
11:               jal          ra, 6b
12:               srai         s6, a5, 19
main_34:          jal          t1, 18f
0:                jal          t1, 20f
1:                jal          s9, 8f
2:                jal          ra, 10f
3:                jal          ra, 13f
4:                jal          tp, 6f
5:                jal          ra, 19f
6:                jal          t1, 5b
7:                jal          ra, 16f
8:                jal          ra, 4b
9:                jal          sp, 3b
10:               jal          t1, 15f
11:               jal          ra, 1b
12:               jal          s10, 11b
13:               jal          t1, 0b
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          t1, 2b
17:               jal          t1, 7b
18:               jal          ra, 12b
19:               jal          ra, 14b
20:               xor          t2, tp, s8
main_39:          jal          t1, 5f
0:                jal          ra, 19f
1:                jal          ra, 16f
2:                jal          ra, 11f
3:                jal          ra, 7f
4:                jal          t1, 12f
5:                jal          tp, 8f
6:                jal          ra, 2b
7:                jal          tp, 17f
8:                jal          ra, 13f
9:                jal          sp, 14f
10:               jal          s3, 18f
11:               jal          ra, 3b
12:               jal          a0, 0b
13:               jal          ra, 6b
14:               jal          t1, 15f
15:               jal          ra, 4b
16:               jal          ra, 10b
17:               jal          ra, 1b
18:               jal          ra, 9b
19:               and          a6, a4, t4
main_44:          jal          t1, 8f
0:                jal          ra, 17f
1:                jal          ra, 12f
2:                jal          ra, 13f
3:                jal          gp, 14f
4:                jal          ra, 3b
5:                jal          tp, 1b
6:                jal          t1, 4b
7:                jal          s4, 9f
8:                jal          s11, 6b
9:                jal          t1, 2b
10:               jal          sp, 5b
11:               jal          ra, 16f
12:               jal          t1, 11b
13:               jal          t1, 15f
14:               jal          ra, 7b
15:               jal          sp, 10b
16:               jal          t1, 0b
17:               nop
main_27:          jal          t1, 6f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          ra, 17f
4:                jal          ra, 5f
5:                jal          a5, 2b
6:                jal          ra, 15f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          tp, 12f
10:               jal          t1, 14f
11:               jal          t1, 9b
12:               jal          t1, 8b
13:               jal          t2, 3b
14:               jal          tp, 16f
15:               jal          gp, 4b
16:               jal          t1, 13b
17:               add          s9, s9, s3
main_10:          jal          t1, 16f
0:                jal          ra, 7f
1:                jal          gp, 20f
2:                jal          ra, 0b
3:                jal          ra, 21f
4:                jal          ra, 11f
5:                jal          sp, 9f
6:                jal          ra, 2b
7:                jal          ra, 22f
8:                jal          ra, 18f
9:                jal          ra, 10f
10:               jal          s3, 4b
11:               jal          t1, 17f
12:               jal          ra, 6b
13:               jal          sp, 14f
14:               jal          gp, 8b
15:               jal          ra, 5b
16:               jal          ra, 1b
17:               jal          ra, 12b
18:               jal          ra, 23f
19:               jal          ra, 13b
20:               jal          a1, 3b
21:               jal          sp, 15b
22:               jal          ra, 19b
23:               nop
main_41:          jal          t1, 13f
0:                jal          ra, 6f
1:                jal          s10, 21f
2:                jal          tp, 26f
3:                jal          tp, 12f
4:                jal          ra, 3b
5:                jal          ra, 19f
6:                jal          tp, 2b
7:                jal          ra, 17f
8:                jal          ra, 16f
9:                jal          t1, 20f
10:               jal          a1, 27f
11:               jal          ra, 24f
12:               jal          ra, 10b
13:               jal          ra, 4b
14:               jal          ra, 18f
15:               jal          ra, 0b
16:               jal          tp, 5b
17:               jal          ra, 11b
18:               jal          ra, 25f
19:               jal          ra, 28f
20:               jal          sp, 8b
21:               jal          ra, 23f
22:               jal          tp, 1b
23:               jal          ra, 7b
24:               jal          ra, 15b
25:               jal          ra, 22b
26:               jal          ra, 9b
27:               jal          ra, 14b
28:               ori          s7, s1, -1867
main_47:          jal          t1, 7f
0:                jal          ra, 17f
1:                jal          s1, 16f
2:                jal          ra, 9f
3:                jal          ra, 2b
4:                jal          s5, 19f
5:                jal          ra, 15f
6:                jal          ra, 13f
7:                jal          ra, 4b
8:                jal          ra, 18f
9:                jal          ra, 6b
10:               jal          ra, 14f
11:               jal          ra, 3b
12:               jal          ra, 11b
13:               jal          t1, 5b
14:               jal          t1, 1b
15:               jal          t1, 20f
16:               jal          tp, 0b
17:               jal          ra, 12b
18:               jal          ra, 10b
19:               jal          gp, 8b
20:               srai         a6, a1, 27
main_15:          jal          t1, 10f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          s7, 7f
3:                jal          ra, 11f
4:                jal          ra, 15f
5:                jal          ra, 9f
6:                jal          a7, 16f
7:                jal          t1, 18f
8:                jal          ra, 6b
9:                jal          ra, 8b
10:               jal          t2, 4b
11:               jal          t1, 2b
12:               jal          ra, 13f
13:               jal          ra, 14f
14:               jal          ra, 0b
15:               jal          ra, 5b
16:               jal          ra, 17f
17:               jal          a2, 12b
18:               add          s8, t4, s4
main_42:          jal          t1, 10f
0:                jal          ra, 14f
1:                jal          tp, 20f
2:                jal          ra, 0b
3:                jal          t1, 19f
4:                jal          ra, 16f
5:                jal          tp, 15f
6:                jal          ra, 4b
7:                jal          t1, 18f
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          t5, 2b
12:               jal          t1, 7b
13:               jal          t1, 3b
14:               jal          t1, 9b
15:               jal          t6, 1b
16:               jal          tp, 12b
17:               jal          t4, 8b
18:               jal          ra, 13b
19:               jal          ra, 17b
20:               jal          a6, 21f
21:               lui          s1, 349195
main_32:          jal          t1, 8f
0:                jal          ra, 3f
1:                jal          tp, 21f
2:                jal          gp, 10f
3:                jal          ra, 5f
4:                jal          gp, 16f
5:                jal          ra, 17f
6:                jal          ra, 20f
7:                jal          t1, 13f
8:                jal          ra, 7b
9:                jal          ra, 14f
10:               jal          ra, 6b
11:               jal          ra, 12f
12:               jal          t1, 9b
13:               jal          ra, 19f
14:               jal          t1, 2b
15:               jal          t1, 1b
16:               jal          ra, 15b
17:               jal          ra, 4b
18:               jal          t1, 0b
19:               jal          a1, 11b
20:               jal          tp, 18b
21:               jal          t1, 22f
22:               sltiu        s5, a4, 66
main_30:          jal          t1, 6f
0:                jal          ra, 2f
1:                jal          t1, 4f
2:                jal          ra, 10f
3:                jal          ra, 5f
4:                jal          a5, 8f
5:                jal          t1, 7f
6:                jal          ra, 3b
7:                jal          ra, 1b
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               srai         t2, a1, 7
main_40:          jal          t1, 4f
0:                jal          t6, 10f
1:                jal          a6, 7f
2:                jal          ra, 8f
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          t1, 14f
7:                jal          a2, 12f
8:                jal          t1, 0b
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          ra, 5b
12:               jal          s6, 11b
13:               jal          a0, 3b
14:               jal          ra, 16f
15:               jal          t1, 2b
16:               auipc        s9, 938679
                  bne          zero, zero, 20f
                  xor          t6, a5, ra
                  srl          s7, a3, a2
                  or           s4, tp, a6
                  bge          s0, s2, 5f
5:                andi         s1, t4, -1942
                  or           t1, a3, a5
                  sub          zero, a5, s9
                  xori         zero, t6, -1523
                  srl          s4, a1, t6
                  nop
                  slli         a2, t1, 30
                  and          s3, sp, gp
                  addi         t4, a4, -1162
                  xori         t4, a4, -377
                  lui          t6, 231121
                  srli         a5, a7, 20
                  bne          s2, t5, 21f
                  nop
                  and          a5, s6, s8
20:               andi         ra, a0, -92
21:               bltu         a0, t5, 37f
                  lui          s2, 786420
                  bne          a7, gp, 34f
                  srai         s0, sp, 24
                  bgeu         sp, a2, 44f
                  or           a6, t5, s0
                  xori         s9, s10, 2036
                  srli         s6, ra, 29
                  bgeu         t5, s10, 49f
                  addi         sp, s11, 854
                  bne          s2, s1, 42f
                  auipc        s11, 618995
                  and          t6, s10, s4
34:               or           a0, t3, gp
                  addi         t5, t4, -89
                  addi         a1, a5, -1269
37:               bge          t3, a5, 42f
                  andi         a1, a6, 720
                  srl          gp, a7, a2
                  andi         tp, s5, 1784
                  sll          a1, zero, a0
42:               add          s7, gp, s9
                  auipc        a0, 788403
44:               slt          t3, t3, t4
                  sra          s6, a0, a3
                  nop
                  sub          s8, a3, s8
                  lui          t6, 1022535
49:               lui          s7, 117579
                  srai         t4, a5, 27
                  and          zero, a7, a0
                  blt          a3, s11, 63f
                  slti         a5, s5, 309
                  auipc        s6, 319912
                  sra          s8, sp, t5
                  bge          t6, a2, 72f
                  add          t6, s9, a6
                  auipc        t3, 317402
                  sltiu        t6, s8, 1314
                  sra          s3, t3, t4
                  add          s11, t5, a2
                  slt          s1, a4, s2
63:               bne          s4, a1, 77f
                  beq          a4, gp, 83f
                  xori         s0, s4, -1212
                  nop
                  and          s6, s4, s11
                  lui          t5, 204375
                  sra          a0, s2, sp
                  beq          gp, a5, 87f
                  srl          s4, t5, a3
72:               blt          s1, s11, 85f
                  sub          a5, t2, s6
                  slli         t2, ra, 12
                  and          s3, s6, s7
                  srl          zero, a5, s1
77:               andi         s2, t5, 199
                  lui          s7, 651246
                  auipc        s11, 710431
                  xori         t6, s3, -796
                  bltu         a5, a1, 99f
                  andi         gp, a1, -815
83:               srl          a2, s4, s10
                  sra          s1, a0, a7
85:               bltu         t3, t3, 100f
                  lui          s6, 476358
87:               bltu         sp, t0, 94f
                  bge          sp, s11, 90f
                  xor          s11, s1, s2
90:               addi         a1, s1, -1934
                  sra          a6, tp, s9
                  sub          s2, t0, tp
                  bltu         a2, s0, 101f
94:               slt          a2, s8, tp
                  srl          t1, s3, s5
                  xor          ra, s11, ra
                  and          tp, s3, s6
                  and          s0, a1, t4
99:               xori         a2, t4, -1628
100:              or           a7, s2, tp
101:              srli         s7, s5, 24
                  sra          s0, s7, s5
                  srl          s3, a1, zero
                  srai         a1, t3, 20
                  srai         a0, s6, 10
                  nop
                  srli         ra, tp, 5
                  bge          s11, s2, 110f
                  bne          t5, t6, 111f
110:              lui          s4, 924639
111:              bltu         s2, t4, 123f
                  sltu         a6, s2, s2
                  addi         a5, s8, -1287
                  sub          a0, s3, s5
                  bge          t2, t6, 121f
                  or           s10, a7, s2
                  bltu         s11, a6, 133f
                  addi         a0, a7, -522
                  andi         t6, s11, -1179
                  lui          s1, 729014
121:              bge          s6, a6, 123f
                  add          t5, a3, t0
123:              ori          t4, t3, -1941
                  srl          s7, a7, s2
                  sltiu        sp, a7, -1747
                  xor          s0, a5, a6
                  slti         a0, a3, 1920
                  srl          s1, s3, a0
                  lui          t3, 631081
                  srli         tp, sp, 8
                  bltu         s5, s5, 135f
                  srli         s11, a3, 14
133:              and          zero, a0, zero
                  bge          gp, a7, 142f
135:              nop
                  bgeu         s10, sp, 154f
                  and          a0, s7, t5
                  ori          s8, s10, -1105
                  sub          zero, s7, s9
                  bge          s4, a1, 149f
                  sltu         a7, t6, a3
142:              sltu         a5, a6, s3
                  nop
                  sltu         t3, a2, s10
                  slt          s5, sp, s4
                  bne          s10, a3, 162f
                  addi         a7, t6, 1361
                  beq          zero, s5, 165f
149:              nop
                  sub          s8, a0, a4
                  bgeu         a7, gp, 167f
                  andi         a0, s11, 1695
                  sltiu        gp, a5, 1850
154:              srli         gp, s5, 21
                  slt          s10, sp, s6
                  ori          t1, a1, 1081
                  slli         s8, a1, 11
                  bge          tp, s10, 176f
                  srai         ra, t5, 20
                  bltu         t2, s5, 175f
                  beq          t3, s8, 162f
162:              sll          a7, ra, gp
                  sra          s6, s10, t2
                  add          s7, gp, s8
165:              bgeu         s9, s0, 167f
                  sltu         t4, s10, s0
167:              lui          zero, 2141
                  addi         a0, s0, 1002
                  beq          sp, zero, 173f
                  srli         s0, a5, 23
                  sltiu        s11, s1, -694
                  ori          a7, t1, 1966
173:              bge          s3, s4, 184f
                  bge          s6, s0, 188f
175:              sub          ra, t2, s2
176:              lui          s10, 393750
                  bne          s1, a5, 197f
                  auipc        a2, 477492
                  slt          s9, t1, zero
                  srli         s8, s11, 8
                  slt          s9, s8, t2
                  and          t1, tp, a5
                  sra          a0, a4, s8
184:              andi         t5, t6, -435
                  or           t5, s7, t3
                  addi         s0, t5, -1766
                  blt          s8, a4, 200f
188:              blt          ra, s1, 190f
                  blt          s2, t1, 194f
190:              blt          t0, s7, 198f
                  slti         t5, s4, 1304
                  xori         t5, a7, -126
                  blt          a1, t1, 209f
194:              bltu         s5, s0, 213f
                  nop
                  sltu         tp, s4, s8
197:              addi         s2, t2, 1675
198:              auipc        sp, 401866
                  and          s4, t1, s7
200:              srai         zero, s8, 13
                  nop
                  bge          s9, a2, 210f
                  or           t5, s6, s4
                  auipc        s2, 335949
                  sra          s4, sp, s9
                  bge          a1, s10, 210f
                  bne          s1, a5, 209f
                  xor          t6, t5, a1
209:              and          ra, ra, s5
210:              beq          s9, s6, 230f
                  blt          a4, t4, 217f
                  srli         s7, s1, 25
213:              add          s6, tp, a3
                  andi         a5, s9, 1334
                  bne          s3, s6, 227f
                  bne          t2, a6, 235f
217:              xori         s10, s6, -1457
                  bgeu         t3, a7, 227f
                  slli         a6, zero, 23
                  srl          t3, s1, s4
                  sltiu        a2, a1, 956
                  ori          s7, t2, -1154
                  nop
                  bltu         s0, s6, 226f
                  slli         s5, s0, 2
226:              slt          s3, t3, a7
227:              slti         s6, tp, 790
                  sll          s2, gp, s5
                  srl          s6, s1, a2
230:              sll          s9, a0, ra
                  bgeu         tp, s5, 242f
                  sll          a7, gp, a1
                  ori          sp, zero, 315
                  addi         s7, a1, -1017
235:              srli         t2, t3, 17
                  slli         ra, s5, 11
                  beq          t1, a7, 248f
                  xor          tp, s2, zero
                  blt          a6, a4, 257f
                  sra          sp, s5, t0
                  srl          s4, s5, s4
242:              srli         t1, t2, 20
                  auipc        s11, 898327
                  slti         s5, t6, 2010
                  xor          a2, a4, a4
                  sll          s10, ra, t5
                  ori          t6, a7, -1148
248:              bgeu         s9, tp, 255f
                  ori          ra, a6, -1194
                  sltu         ra, s5, s3
                  sltiu        s11, ra, 3
                  bgeu         a3, t5, 257f
                  addi         t3, s7, -1247
                  and          t6, s4, t0
255:              blt          a1, gp, 266f
                  or           s10, s2, zero
257:              sltu         a1, s5, s10
                  and          s5, zero, a1
                  nop
                  sltu         t6, t4, s2
                  slli         s1, s5, 19
                  bgeu         t5, s9, 270f
                  slti         s0, a5, -418
                  slt          gp, s5, zero
                  sra          t2, s0, s5
266:              srl          s1, a6, tp
                  xor          s0, tp, gp
                  sll          a5, a7, t6
                  xor          t1, a3, t5
270:              sltu         s7, gp, s6
                  lui          s1, 102574
                  or           s11, t0, zero
                  and          t3, s3, a2
                  or           s7, a5, s5
                  xori         s8, gp, 1559
                  andi         a6, a6, -697
                  auipc        a5, 347985
                  sltiu        s10, a3, 967
                  sub          t6, t4, s6
                  add          gp, s6, s2
                  xor          s5, a3, s3
                  addi         a7, s2, 1229
                  slt          t5, ra, s2
                  bge          s3, t5, 301f
                  beq          t1, s3, 287f
                  lui          t6, 828151
287:              addi         a6, s11, -1548
                  blt          a3, t2, 307f
                  ori          s6, s0, 335
                  beq          s4, t3, 299f
                  beq          gp, t4, 311f
                  add          s9, s2, t0
                  bne          a3, a2, 307f
                  bltu         t4, s1, 296f
                  slt          s4, ra, ra
296:              xor          t6, zero, a2
                  bne          a2, t5, 298f
298:              slt          tp, a1, s3
299:              bge          s2, a0, 318f
                  and          sp, s2, a2
301:              bltu         t6, a5, 316f
                  or           a0, a7, a7
                  addi         t6, ra, -386
                  srai         s10, s9, 23
                  ori          s0, s0, 483
                  bne          s0, s11, 322f
307:              slt          s10, a1, t4
                  nop
                  beq          s2, s8, 320f
                  srl          t2, s6, a1
311:              sub          t6, s0, s0
                  bltu         t1, t1, 314f
                  beq          s10, s5, 317f
314:              sra          s7, s1, zero
                  lui          a7, 222136
316:              add          a7, t5, s10
317:              sltiu        a1, tp, -643
318:              xori         s6, s6, 545
                  bge          s6, s1, 323f
320:              blt          t2, sp, 322f
                  sra          t3, s1, a4
322:              beq          s3, t4, 340f
323:              bge          a6, a2, 330f
                  or           s3, s2, s8
                  blt          s9, t5, 336f
                  srli         s5, s4, 27
                  or           t2, s8, s9
                  slli         a2, zero, 1
                  sra          tp, t1, a6
330:              bgeu         s11, a2, 348f
                  bltu         sp, t0, 347f
                  sra          t4, t4, t4
                  andi         s9, s5, -829
                  nop
                  slt          t2, s8, a0
336:              ori          a2, tp, 1178
                  andi         a2, s7, -949
                  lui          s1, 307510
                  andi         s6, t2, -348
340:              auipc        s10, 258141
                  or           a2, s0, a4
                  add          s0, s3, s11
                  bltu         sp, tp, 356f
                  la           s8, sub_2
                  srai         gp, tp, 31
                  xor          s3, t5, a6
                  addi         sp, tp, -430
                  addi         s8, s8, 644
                  sltu         s5, s2, s4
                  srli         s1, s6, 4
                  andi         s7, zero, -1048
main_j1:          jalr         t1, s8, -643 #jump main -> sub_2
                  bne          zero, s1, 356f
                  or           tp, s3, t3
                  slli         s2, a0, 10
347:              bge          s5, a3, 367f
348:              nop
                  ori          tp, a2, -77
                  srl          a5, s9, a5
                  slt          t1, s8, s2
                  bne          t5, t3, 360f
                  or           s6, s5, a0
                  sll          t3, a6, s1
                  ori          zero, s7, 1451
356:              sltiu        s8, s7, -72
                  xori         s6, a7, 149
                  and          t6, gp, t6
                  sub          s7, a3, t3
360:              ori          gp, s3, 1971
                  sltiu        s1, zero, -301
                  sub          s1, a7, s4
                  sra          s2, t3, s0
                  beq          t1, s7, 370f
                  sll          s10, t0, s0
                  slti         sp, a2, -426
367:              sltu         s4, a3, s1
                  addi         s0, a7, 1752
                  srai         s3, a0, 13
370:              sll          t1, gp, gp
                  bge          a2, a0, 387f
main_37:          jal          t1, 5f
0:                jal          ra, 1f
1:                jal          a5, 12f
2:                jal          ra, 10f
3:                jal          t1, 13f
4:                jal          t5, 8f
5:                jal          ra, 0b
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          t5, 6b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          t1, 2b
12:               jal          t1, 4b
13:               and          s9, a6, s0
                  xor          s2, a2, s9
                  auipc        t5, 503424
                  sltiu        a1, s3, 900
                  bge          zero, a6, 391f
                  srai         s4, s2, 30
                  ori          s4, s9, -1849
                  xor          s11, a2, a4
                  la           s9, sub_1
                  srl          s0, tp, a1
                  srli         s3, t2, 4
                  addi         t2, t6, 403
                  nop
                  xor          t4, a1, tp
                  addi         s9, s9, -560
                  nop
                  andi         s2, t4, -1122
main_j2:          jalr         t1, s9, 560 #jump main -> sub_1
                  beq          a4, s4, 380f
                  xor          t6, tp, s7
                  xor          gp, s0, sp
                  sltu         t1, s5, t2
380:              add          s6, s0, a0
                  or           t2, t0, s10
                  slt          a7, a2, t3
                  and          a2, gp, s7
                  beq          s6, t4, 395f
                  slt          a7, zero, t4
                  bne          s1, a2, 394f
387:              bltu         t6, a2, 389f
                  or           t3, sp, s10
389:              auipc        s11, 890091
                  sub          s7, s0, a4
391:              addi         s2, t5, 1139
                  slti         s3, gp, -676
                  lui          sp, 1016311
394:              and          t5, tp, t1
395:              sltu         s10, t5, t3
                  auipc        s7, 434964
                  add          a6, a0, t3
                  nop
                  sll          gp, t4, zero
                  sltu         a7, s2, t3
                  blt          s2, a2, 421f
                  ori          t6, s6, 391
                  bgeu         t2, a7, 414f
                  auipc        s6, 690561
                  add          s9, s3, s0
                  blt          s5, s6, 408f
                  beq          t5, t5, 422f
408:              sll          gp, s3, a7
                  nop
                  bne          s8, s9, 416f
                  srl          a6, a7, zero
                  sltu         tp, s5, t0
                  lui          gp, 44960
414:              ori          tp, s5, 1959
                  addi         a6, s2, -648
416:              slt          a2, ra, s7
                  sll          a0, ra, t2
                  slli         ra, a3, 5
                  sltu         s4, s3, tp
                  bgeu         s0, s2, 425f
421:              bge          ra, a0, 423f
422:              add          s1, a0, t4
423:              bge          t0, sp, 427f
                  xori         s1, s3, 193
425:              bne          a7, a0, 433f
                  add          s3, ra, s0
427:              srai         s11, a6, 22
                  slli         s8, s9, 11
                  slli         t5, t1, 23
                  ori          t3, s5, -1327
                  sltu         a6, zero, s0
                  sll          zero, s4, zero
433:              addi         s5, tp, -1668
                  xori         sp, s5, -1221
                  xor          sp, a2, t0
                  slt          s11, s1, a3
                  sltu         a2, t4, a1
                  or           t2, a4, a6
                  bne          s2, s5, 452f
                  sll          s10, tp, t6
                  bgeu         t2, t6, 457f
                  bge          t6, s9, 456f
                  bne          s4, a7, 462f
                  bge          zero, tp, 451f
                  lui          s10, 341812
                  ori          s7, t6, -1015
                  srl          s8, t6, s0
                  sltiu        zero, s1, 85
                  addi         t3, a5, 646
                  lui          a1, 427867
451:              srl          t4, a3, zero
452:              sltu         s0, s8, tp
                  sll          a1, s10, s5
                  srli         s10, s0, 7
                  bge          s10, s4, 475f
456:              add          a1, ra, s9
457:              bgeu         s10, a5, 475f
                  bge          a4, t1, 460f
                  andi         t3, t5, 1354
460:              bge          a6, gp, 471f
                  xor          s7, t5, a5
462:              blt          a7, s4, 463f
463:              sra          t4, s8, sp
                  add          t3, s4, t2
                  slt          t1, s8, s5
                  srai         a2, t0, 23
                  or           t5, s8, t5
                  beq          s2, s5, 486f
                  and          s0, t0, gp
                  slti         t1, gp, -2022
471:              sltu         s10, s6, a1
                  and          s11, a4, t6
                  sub          tp, s2, s8
                  sub          s0, t3, t1
475:              xori         t3, tp, -1151
                  beq          s2, s6, 485f
                  slli         s6, t3, 22
                  bgeu         t3, zero, 494f
                  sll          a0, s9, tp
                  srli         zero, a2, 26
                  add          gp, a6, zero
                  blt          a7, s9, 499f
                  or           a5, s9, tp
                  slt          s9, t0, t6
485:              srl          s4, ra, zero
486:              sub          a6, s0, t2
                  slti         gp, ra, 46
                  andi         s4, s0, -1439
                  or           sp, a6, s9
                  bltu         s4, a0, 509f
                  beq          sp, s8, 503f
                  slti         a7, t5, -1432
                  bltu         s4, t3, 501f
494:              srli         s2, a6, 2
                  bne          s10, s2, 497f
                  sltiu        a5, a0, -1564
497:              bge          s10, a7, 508f
                  srai         s5, t5, 13
499:              srai         s6, s5, 22
                  srai         s8, s7, 19
501:              add          s4, tp, s3
                  addi         ra, s2, -823
503:              sll          t1, a3, a5
                  beq          s7, s4, 506f
                  bgeu         s2, zero, 524f
506:              and          s3, t2, gp
                  bltu         t0, s8, 526f
508:              or           t4, s10, s2
509:              sub          s1, s2, a4
                  slt          s9, a1, t5
                  sltu         s10, s3, s6
                  srai         zero, t1, 31
                  blt          s11, s11, 529f
                  bne          gp, t4, 518f
                  and          a2, s4, zero
                  sltiu        t1, gp, -711
                  or           t1, t4, zero
518:              bne          tp, s8, 531f
                  blt          a4, s7, 536f
                  sltiu        s2, t4, -1309
                  srai         s5, tp, 7
                  nop
                  ori          s11, s5, -608
524:              ori          s4, s9, -1038
                  slti         a5, s1, -223
526:              or           zero, s6, a7
                  sltu         sp, ra, s10
                  srli         a7, a0, 29
529:              ori          s2, a2, -328
                  srai         s4, t0, 18
531:              lui          s3, 613145
                  and          s3, s9, zero
                  add          s5, ra, s4
                  slt          tp, ra, a5
                  sub          t3, zero, s0
536:              bltu         s0, s10, 550f
                  bne          tp, s11, 545f
                  or           a0, t6, s10
                  blt          a2, t5, 550f
                  and          tp, s2, tp
                  andi         t4, s9, -339
                  srli         a2, a7, 5
                  bne          s11, s9, 563f
                  or           tp, a6, s3
545:              ori          a7, a7, -1333
                  auipc        s2, 725455
                  andi         s4, t6, -757
                  sll          s3, a2, s7
                  bgeu         t6, t5, 567f
550:              srai         t6, a4, 27
                  add          a2, s3, a4
                  sll          a7, t3, s6
                  srli         zero, s5, 0
                  blt          a2, s0, 565f
                  sll          gp, a3, s1
                  srli         s3, a3, 17
                  andi         a1, s4, -1134
                  xori         a0, s10, -575
                  bge          s9, a0, 568f
                  nop
                  slli         s8, sp, 1
                  srai         tp, a4, 14
563:              bne          a5, s2, 565f
                  bgeu         a7, gp, 570f
565:              sra          s7, t2, a1
                  beq          t1, t0, 582f
567:              slt          a0, t5, s6
568:              sra          ra, t5, s7
                  lui          s3, 305217
570:              sltu         t1, s1, s2
                  bgeu         a7, ra, 578f
                  slt          s9, s6, t6
                  and          s9, sp, a5
                  bgeu         s3, t6, 592f
                  add          a2, a1, a1
                  sra          a1, a3, t6
                  xor          t2, t5, zero
578:              ori          ra, s7, 574
                  sltiu        s4, zero, -155
                  slli         s3, t3, 8
                  slli         t3, a0, 25
582:              sll          tp, s8, a6
                  srai         t4, zero, 10
                  ori          s3, ra, -1449
                  bltu         s5, s5, 597f
                  xori         s4, s7, 436
                  andi         s0, a0, -753
                  srli         s8, a4, 27
                  srai         a5, ra, 6
                  xor          a7, t0, t6
                  sub          a7, a6, s4
592:              add          s1, s4, s1
                  sll          ra, s2, a5
                  slt          a6, a6, a6
                  bge          s4, s1, 597f
                  addi         s2, a6, -836
597:              or           s10, t6, s2
                  bne          t3, a0, 613f
                  sub          s7, t5, a3
                  addi         t2, t5, 1257
                  blt          gp, t3, 606f
                  addi         t3, a4, 384
                  xori         zero, s10, -674
                  sra          gp, s0, s6
                  slli         a1, s2, 15
606:              xori         s10, a7, -758
                  slli         a0, s2, 3
                  beq          s8, s2, 609f
609:              slli         a7, zero, 6
                  xori         gp, a2, 585
                  blt          s10, tp, 615f
                  sltu         s6, a7, a7
613:              srl          t2, a3, s10
                  sll          tp, gp, t5
615:              beq          tp, a2, 635f
                  slti         s6, a7, -1600
                  or           t3, s0, ra
                  xori         t4, s4, -1790
                  sll          sp, s8, t6
                  slt          a7, s1, t5
                  srli         a0, a7, 0
                  auipc        tp, 43920
                  blt          s4, a4, 639f
                  blt          s9, s9, 632f
                  nop
                  bge          tp, a7, 646f
                  lui          a0, 43940
                  xor          t4, s11, a0
                  or           ra, a0, t4
                  srl          t2, t0, a5
                  sll          ra, s6, a1
632:              lui          s10, 296263
                  bgeu         s8, a4, 637f
                  xori         s9, a4, 575
635:              bltu         t1, ra, 652f
                  xori         t5, s4, 865
637:              lui          t3, 5255
                  sltu         tp, t2, t6
639:              addi         s1, s4, 479
                  and          s5, s0, sp
                  beq          gp, ra, 643f
                  addi         s3, s2, -1019
643:              xor          t3, s2, t5
                  auipc        s5, 643998
                  addi         t3, zero, -242
main_11:          jal          t1, 8f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          ra, 12f
3:                jal          s8, 10f
4:                jal          ra, 9f
5:                jal          tp, 3b
6:                jal          ra, 4b
7:                jal          gp, 11f
8:                jal          t1, 0b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          t5, 2b
12:               slli         a0, t5, 26
646:              slt          s4, zero, tp
                  or           tp, t3, s6
                  xori         gp, a5, 1779
                  slt          a2, t3, s7
                  auipc        s10, 434035
                  bgeu         s1, t5, 652f
652:              add          s11, s11, t3
                  and          s10, gp, t4
                  blt          s10, t5, 656f
                  srai         s0, t2, 15
656:              nop
                  ori          s5, t6, -125
                  xori         s7, gp, -845
                  ori          zero, s6, -367
                  addi         a6, s5, 1245
                  sub          s5, a4, a1
                  xor          s11, t3, sp
                  bge          t2, s6, 674f
                  slti         s2, a5, -710
                  ori          t6, ra, -112
                  blt          a6, t5, 682f
                  xor          s7, tp, a2
                  blt          s0, a2, 684f
                  beq          a3, a2, 681f
                  slti         s0, t1, -1072
                  slt          t1, t1, t0
                  andi         t3, s10, -1090
                  srl          s8, s11, t4
674:              slli         s8, s5, 16
                  xor          ra, s6, t6
                  slli         t3, a1, 0
                  sltu         s2, t6, ra
                  blt          s10, a6, 689f
                  slt          t6, s10, s3
                  slt          sp, zero, s6
681:              and          s3, a6, zero
682:              sll          t4, sp, a1
                  bltu         t3, t5, 688f
684:              srai         a6, t5, 22
                  xor          s0, s0, zero
                  srai         a6, t6, 28
                  sra          gp, s9, gp
688:              sltu         a7, s5, s11
689:              xori         ra, t4, 230
                  bgeu         s2, a0, 705f
                  bltu         s1, zero, 695f
                  slli         t4, t0, 6
                  slt          s0, t0, a6
                  beq          gp, a3, 703f
695:              sll          s0, t1, a7
                  slti         s0, s5, -1374
                  ori          a6, t2, 1427
                  srl          gp, s0, t2
                  xori         s4, s0, 1134
                  la           t6, sub_3
                  auipc        s6, 107062
                  addi         t6, t6, 598
                  slti         t3, t2, 906
                  bge          t2, s7, main_j3 #branch to jump instr
                  sll          s9, tp, s3
                  sltiu        t1, s10, 1520
                  sra          a5, s1, s7
                  xor          t1, a6, t5
main_j3:          jalr         t1, t6, -597 #jump main -> sub_3
                  srai         s2, a0, 5
                  and          sp, t0, zero
                  bltu         a7, t6, 716f
                  sub          s2, t2, s2
                  srli         s3, s7, 14
                  ori          a5, s6, 1631
                  addi         s5, zero, -710
703:              bge          a0, s10, 721f
                  ori          t3, a0, 1120
705:              bge          a5, a2, 721f
                  slti         zero, t3, -2007
                  sll          s5, a0, t1
                  bge          t0, t6, 719f
                  add          zero, sp, a5
                  slt          ra, s10, a3
                  lui          t3, 186074
                  sltu         a0, s11, s3
                  slt          gp, gp, s4
                  sub          t6, s1, a4
                  bgeu         s9, a0, 729f
716:              or           a1, tp, t6
                  xor          s3, s2, a0
                  bltu         a2, sp, 737f
719:              addi         t3, zero, -1433
                  ori          t3, a6, -1882
721:              lui          t1, 148711
                  andi         s4, tp, -1074
                  sra          zero, s2, s8
                  srli         a1, a7, 28
                  sra          ra, s1, s10
                  srl          a6, gp, s5
                  and          s10, s10, t1
                  xor          a1, s4, t5
729:              slt          s8, s4, s11
                  slli         sp, s9, 26
                  srli         t2, s5, 22
                  sra          s2, s1, t6
                  bne          t0, s9, 741f
                  sra          s2, t4, a5
                  sltu         t3, s4, s10
                  srai         s7, gp, 4
737:              nop
                  addi         s5, s3, -153
                  nop
                  srai         s0, tp, 12
741:              bge          t2, a5, 748f
                  ori          s5, s5, 1073
                  xor          s5, sp, s4
                  slli         zero, a5, 4
                  or           s7, tp, t0
                  sll          s10, a6, a3
                  xori         t6, ra, 1845
748:              andi         s2, a1, 1881
                  blt          t4, a5, 751f
                  slli         t4, s5, 12
751:              addi         s10, s5, 1270
                  sll          s6, s10, t0
                  bge          s7, a7, 755f
                  ori          s4, s4, -1948
755:              beq          s8, t1, 761f
                  bltu         tp, a7, 775f
                  bge          a6, t5, 777f
                  sra          s9, ra, zero
                  srai         t1, zero, 20
                  or           s0, a2, t1
761:              sll          sp, a7, a3
                  srai         a6, tp, 22
                  srai         a6, s7, 12
                  nop
                  bgeu         tp, a3, 778f
                  nop
                  add          zero, s8, s9
                  bgeu         s6, tp, 772f
                  blt          a5, s1, 784f
                  xori         t4, s10, -1557
                  sll          t2, tp, t5
772:              add          s5, t5, zero
                  slti         s5, s6, -513
                  slli         s9, a3, 28
775:              addi         sp, a5, -2011
                  slli         t3, t5, 1
777:              add          sp, s7, t0
778:              slti         gp, t4, -30
                  bgeu         gp, a3, 788f
                  addi         s9, sp, -599
                  slli         a5, t2, 5
                  sltu         tp, s2, s2
                  slti         s5, s6, 1133
784:              slli         s8, s8, 11
                  sll          s0, a2, s0
                  srai         t3, zero, 17
                  srai         t5, a7, 24
788:              auipc        t5, 555490
                  add          a5, s11, s2
                  lui          s4, 207568
                  slli         t4, s0, 21
                  slt          s5, s6, s3
                  bgeu         s11, s7, 813f
                  or           a1, a6, t4
                  nop
                  bne          a1, s1, 810f
                  srli         s10, s0, 12
                  xor          a5, s8, tp
                  ori          tp, s0, 988
                  sll          s4, sp, zero
                  slti         s9, a0, 369
                  sub          a2, s11, t4
                  srai         a2, a6, 19
                  andi         t6, a6, 627
                  bge          s9, t1, 807f
                  srai         s9, s7, 28
807:              slt          sp, s1, s10
                  bge          a0, a2, 826f
                  slli         a6, gp, 13
810:              blt          s9, s2, 821f
                  srl          gp, s4, t2
                  bgeu         a6, s8, 824f
813:              sltu         s9, a7, a6
                  slt          t6, gp, t2
                  ori          a5, s10, 898
                  bne          t4, tp, 832f
                  addi         s4, s3, 978
                  slti         t2, s7, -678
                  auipc        t1, 282321
                  addi         tp, t5, 1049
821:              bge          s3, s5, 823f
                  sub          gp, s8, ra
823:              bgeu         a0, s7, 829f
824:              srai         t3, t3, 18
                  sra          tp, a3, a3
826:              auipc        a1, 688338
                  sra          a6, t4, s9
                  auipc        s9, 262986
829:              bgeu         t2, tp, 845f
                  andi         s4, gp, 1941
                  beq          s0, s10, 848f
832:              sltiu        t4, t4, -519
                  auipc        s9, 461295
                  add          t2, a0, t2
                  srli         s9, s11, 24
                  slt          s2, s8, s8
                  slti         s0, s1, 1614
                  bge          s4, a7, 846f
                  sltiu        s4, s11, -1380
                  blt          s4, t2, 853f
                  add          t5, a0, a2
                  sltiu        t3, s1, -1474
                  slti         s0, t4, 1532
                  addi         ra, t5, -2048
845:              bne          a6, t6, 847f
846:              slli         ra, t1, 7
847:              sub          a5, a6, tp
848:              xori         s11, s11, 1285
                  bgeu         s11, s10, 851f
                  blt          s9, a2, 851f
851:              bne          gp, t0, 855f
                  srli         s11, t4, 12
853:              slti         s8, s11, -835
                  sll          s4, a2, zero
855:              srli         t6, t5, 23
                  xori         s8, t3, -993
                  xor          a1, s11, t5
                  lui          t5, 432236
                  lui          a7, 215948
                  bgeu         s4, t2, 879f
                  add          s0, a2, tp
                  andi         zero, t4, 1892
                  lui          t1, 579885
                  nop
                  bge          s11, t2, 872f
                  slli         s0, s7, 28
                  xori         a7, s11, -1096
                  ori          t1, ra, -1027
                  blt          t0, s1, 874f
                  andi         tp, s4, -1347
                  bgeu         tp, t5, 889f
872:              blt          t5, a7, 891f
                  sltiu        a7, s10, 2046
874:              andi         a5, a0, 395
                  andi         s1, t5, 2018
                  slti         a0, t0, 358
                  sltiu        gp, a3, -53
                  and          s8, t0, a5
879:              srli         s1, a6, 30
                  nop
                  srl          t5, s4, ra
                  srli         t4, zero, 3
                  sltiu        ra, zero, -371
                  xori         zero, a0, -407
                  andi         s11, t4, -462
                  bltu         ra, a3, 906f
                  bltu         t6, t4, 898f
                  slli         gp, zero, 31
889:              srli         a1, a3, 16
                  srl          ra, a6, a4
891:              xori         t4, s8, 916
                  nop
                  sub          sp, sp, t0
                  nop
                  slti         s7, zero, 1138
                  auipc        a7, 665703
                  sub          t6, t0, t3
898:              and          a0, t3, a3
                  srai         s5, a7, 7
                  auipc        s5, 812062
                  addi         a0, s7, -144
                  srli         zero, a7, 24
                  bgeu         s7, t3, 911f
                  add          t3, s3, t6
                  beq          s3, gp, 916f
906:              andi         s11, s3, -444
                  sra          s2, s9, t3
                  beq          a7, s2, 924f
                  bltu         s5, a5, 928f
                  sltu         a1, t5, t4
911:              auipc        tp, 1031658
                  srl          t6, s4, t4
                  xor          t3, s5, s2
                  bge          sp, s8, 915f
915:              bge          t2, a6, 919f
916:              bltu         t5, a2, 922f
                  or           ra, t0, a1
                  srai         a2, a7, 31
919:              slli         a5, a0, 6
                  bge          a0, t1, 924f
                  sra          a2, s9, tp
922:              sltu         zero, tp, t4
                  sltiu        t6, t1, -582
924:              sra          t4, ra, t6
                  sra          a5, zero, sp
                  auipc        t5, 541139
                  beq          s11, s6, 929f
928:              sra          s7, s10, t6
929:              srai         s11, gp, 8
                  xori         s9, s6, 1659
                  sll          gp, ra, zero
                  srai         s5, t1, 14
                  nop
                  slt          a7, a5, s9
                  add          s5, a4, t4
                  ori          t5, a5, 1023
main_8:           jal          t1, 10f
0:                jal          t3, 11f
1:                jal          ra, 19f
2:                jal          s4, 17f
3:                jal          s6, 22f
4:                jal          tp, 3b
5:                jal          s5, 7f
6:                jal          ra, 2b
7:                jal          t1, 25f
8:                jal          s8, 4b
9:                jal          a5, 16f
10:               jal          ra, 14f
11:               jal          tp, 15f
12:               jal          ra, 8b
13:               jal          ra, 18f
14:               jal          ra, 23f
15:               jal          s3, 12b
16:               jal          ra, 20f
17:               jal          t1, 13b
18:               jal          tp, 24f
19:               jal          tp, 9b
20:               jal          s0, 21f
21:               jal          s1, 0b
22:               jal          t1, 6b
23:               jal          tp, 1b
24:               jal          ra, 5b
25:               sltu         s3, s6, tp
                  or           s6, ra, s3
                  or           s9, sp, tp
                  slt          t5, t4, a6
                  auipc        t5, 175477
                  beq          s0, s3, 954f
                  sltiu        s0, zero, 1265
                  srli         t2, t5, 19
                  sltu         s4, t4, sp
                  bge          s2, ra, 960f
                  bgeu         t3, tp, 948f
                  bltu         sp, a1, 955f
948:              nop
                  slt          t5, a7, a0
                  bltu         s1, t1, 970f
                  bne          s9, s2, 967f
                  add          t3, t3, a5
                  xor          s3, s3, a6
954:              sll          s0, s7, t1
955:              beq          t6, ra, 973f
                  bltu         t3, a6, 976f
                  auipc        s5, 49126
                  andi         a5, s10, -1093
                  bge          s0, s8, 975f
960:              sltiu        a1, zero, -1477
                  addi         ra, t2, 1557
                  srai         t5, t5, 19
                  bge          a3, gp, 979f
                  sra          a2, s11, a6
                  add          s1, s2, a7
                  bgeu         t6, sp, 975f
967:              slti         tp, s4, -1571
                  add          s5, a6, s3
                  sltu         t5, zero, t0
970:              sra          s9, t2, s6
                  srai         s10, sp, 18
                  beq          t1, s3, 974f
973:              nop
974:              sltu         sp, s0, t4
975:              bge          tp, s4, 989f
976:              srli         tp, a6, 22
                  blt          zero, t2, 982f
                  sll          sp, s8, a0
979:              and          t3, a1, t2
                  slti         s5, s10, 1710
                  bge          s4, s1, 988f
982:              sll          ra, t6, s7
                  sra          s2, sp, t5
                  addi         a0, t5, 910
                  slti         s4, a1, -128
                  bne          s4, s11, 1004f
                  bge          tp, s10, 998f
988:              xor          s10, gp, gp
989:              auipc        s4, 513642
                  xori         sp, a7, 1719
                  bgeu         t1, s5, 999f
                  nop
                  beq          s11, a0, 1004f
                  nop
                  bne          t5, gp, 1007f
                  andi         s11, t5, -1470
                  sub          s0, a7, zero
998:              lui          s10, 428734
999:              slti         s8, t1, 159
                  lui          t4, 156986
                  andi         s7, t2, 787
                  andi         s10, a3, 442
                  sltiu        s1, t4, 838
1004:             and          a1, t1, a1
                  srl          t1, a1, t5
                  and          s0, t3, s2
1007:             xor          s3, s10, s10
                  and          s0, s1, sp
                  addi         s1, a2, 365
                  lui          a0, 423386
                  bgeu         s9, t4, 1013f
                  bgeu         s2, a4, 1023f
1013:             slli         t2, a0, 31
                  xor          s0, s6, t1
                  sra          s7, a6, s11
                  xor          t6, tp, s2
                  sub          t4, a7, t2
                  srli         a7, s6, 0
                  srli         s7, s4, 5
                  srl          s1, a1, s10
                  and          t1, s4, s3
                  bne          tp, s6, 1039f
1023:             sltu         a2, a2, s2
                  auipc        s10, 834104
                  sll          s5, t1, a7
                  add          s2, a0, ra
                  nop
                  slli         t6, a5, 11
                  srli         s5, s5, 5
                  sltu         s11, gp, a4
                  addi         s10, s1, 1419
                  beq          zero, s10, 1051f
                  xori         t3, zero, 1818
                  xori         s5, a0, -551
                  auipc        a5, 881967
                  blt          t3, a6, 1052f
                  xori         sp, sp, 1832
                  sltu         s6, s5, s8
1039:             ori          s0, a1, 822
                  addi         t5, s9, 1745
                  slti         a0, t0, 306
                  sub          s1, s0, tp
                  slli         s0, s3, 28
                  bne          a0, s3, 1045f
1045:             beq          zero, s6, 1061f
                  blt          t5, a2, 1062f
                  auipc        s6, 343067
                  add          s3, s6, a1
                  xor          s4, t6, t0
                  srl          sp, t3, s5
1051:             nop
main_20:          jal          t1, 0f
0:                jal          a6, 1f
1:                jal          a2, 8f
2:                jal          ra, 13f
3:                jal          t1, 2b
4:                jal          t1, 7f
5:                jal          t6, 6f
6:                jal          t1, 11f
7:                jal          gp, 9f
8:                jal          sp, 12f
9:                jal          t1, 10f
10:               jal          ra, 3b
11:               jal          s0, 4b
12:               jal          t1, 5b
13:               auipc        s5, 466510
1052:             bne          tp, s8, 1065f
                  slti         s7, s2, 249
                  nop
                  sltiu        s8, s2, 1029
                  sltu         s4, a1, t3
                  bgeu         t1, t3, 1077f
                  lui          a0, 837534
                  sltu         s10, zero, s6
                  sll          zero, s10, zero
1061:             addi         t3, t1, -1974
1062:             sltiu        a5, ra, 203
                  beq          sp, s3, 1070f
                  lui          a7, 123386
1065:             srl          a2, s4, s1
                  slli         a5, s6, 9
                  srai         s3, a6, 15
                  sll          s3, s2, a2
                  beq          s8, s1, 1077f
1070:             slli         s7, s2, 8
                  bge          s11, a6, 1080f
                  andi         s4, a7, 1082
                  srli         s0, s1, 18
                  blt          s5, tp, 1080f
                  addi         a5, t1, 642
                  slli         s7, tp, 22
1077:             auipc        s5, 122914
                  add          s5, a3, s1
                  srai         a1, t5, 31
1080:             lui          t6, 611996
                  sltu         s11, s3, zero
                  sltu         a0, sp, s0
                  srl          s0, s10, s0
                  and          a5, s1, s10
                  beq          a5, s10, 1097f
                  sra          a5, a6, a3
                  or           a1, sp, s3
                  lui          gp, 332458
                  sub          s7, zero, t4
                  slti         t6, s4, 1526
                  sltiu        zero, gp, 1009
                  xori         s11, s4, 1510
                  sltiu        t4, a7, -259
                  srai         s1, zero, 4
                  lui          s4, 156248
                  xor          gp, t0, t6
1097:             sltu         s6, ra, a4
                  and          a6, s10, a6
                  add          s7, a4, t5
                  andi         gp, t6, 1676
                  sltu         a2, a3, a2
                  slti         ra, sp, 1195
                  add          s3, t1, t5
                  slti         s2, s8, -276
                  xori         s9, t0, -613
                  sra          a2, t5, a2
                  add          t6, tp, t0
                  nop
                  ori          t1, zero, -1075
                  xor          a2, s2, s4
                  nop
                  or           zero, ra, t2
                  andi         sp, a5, 1352
                  sltu         sp, t2, zero
                  slti         ra, sp, 1636
                  auipc        s7, 795858
                  xor          a2, a1, gp
                  bne          a4, t2, 1138f
                  bge          a3, s6, 1136f
                  ori          s1, s3, -355
                  auipc        ra, 220844
                  add          s5, a1, s10
                  xor          t5, s9, gp
                  addi         s7, s7, -205
                  slt          t4, a3, t3
                  srli         s2, s6, 20
                  xor          s9, sp, ra
                  addi         a2, s11, 828
                  slt          s1, s8, a7
                  slt          s3, gp, s6
                  beq          gp, s3, 1149f
                  ori          sp, t1, -1823
                  srl          s4, t5, a2
                  beq          a7, s1, 1145f
                  nop
1136:             addi         sp, t6, 438
                  addi         t3, t4, -1776
1138:             nop
                  srl          t4, s1, s0
                  or           a2, s2, zero
                  add          s8, t5, a7
                  bne          ra, s5, 1156f
                  andi         t6, s9, -652
                  srai         s6, s6, 23
1145:             sra          s11, s11, t4
                  sll          tp, s7, a5
                  bgeu         a1, s10, 1151f
                  sra          a7, t6, a6
1149:             and          a1, tp, t3
                  srl          a5, ra, t4
1151:             auipc        s2, 1006955
                  sra          s6, a7, a1
                  srl          a5, a3, t4
                  sll          t5, s0, s8
                  add          s10, s4, t6
1156:             blt          s8, a7, 1175f
                  bltu         s10, a1, 1159f
                  andi         s5, s7, -1701
1159:             sltiu        a5, s9, -330
                  lui          a0, 1025110
                  lui          zero, 226207
                  slti         s4, s10, 2043
                  lui          s7, 153418
                  and          s3, sp, a0
                  lui          s3, 3969
                  sub          t5, t0, ra
                  addi         sp, t2, 2014
                  andi         a5, zero, 728
                  beq          s8, a3, 1171f
                  sub          s2, a3, s1
1171:             bge          t5, s10, 1189f
                  auipc        t2, 580196
                  and          s9, s1, a7
                  sra          t1, s10, t4
1175:             or           s8, sp, t0
                  andi         s4, a4, -155
                  nop
                  srli         zero, zero, 25
                  sltu         t4, s10, s5
                  bltu         s6, s4, 1195f
                  auipc        sp, 800318
                  lui          a0, 987569
                  nop
                  nop
                  srl          s5, s3, s3
                  sub          zero, gp, zero
                  slli         s11, t0, 10
                  andi         s11, t5, -618
1189:             andi         s1, a3, -1163
                  xori         zero, s7, 1050
                  sub          t3, a3, s1
                  bne          t4, a7, 1203f
                  sra          zero, s1, a7
                  sltu         zero, t6, s6
1195:             slti         tp, s6, -1606
                  bne          s5, s6, 1200f
                  beq          s1, s3, 1205f
                  sll          s11, s5, s3
                  bgeu         s7, t1, 1218f
1200:             srl          ra, s11, s1
                  xor          t2, s8, a1
                  bltu         s3, s2, 1204f
1203:             beq          t5, a4, 1208f
1204:             nop
1205:             nop
                  sll          t1, a1, s10
                  slli         tp, a7, 26
1208:             slti         a0, s6, 1744
                  sll          gp, s1, s10
                  ori          s8, s0, -1964
                  addi         s10, s4, -153
                  bgeu         t1, s10, 1214f
                  andi         gp, s11, -36
1214:             slli         sp, s2, 5
                  lui          ra, 205140
                  slt          a5, sp, ra
                  xor          tp, t0, a5
1218:             sra          zero, s2, s10
                  bgeu         s2, s3, 1230f
                  srai         s7, s11, 13
                  srai         ra, s3, 28
                  beq          t4, s1, 1224f
                  xori         gp, s5, 1500
1224:             srai         s3, s5, 1
                  bltu         gp, ra, 1238f
                  srli         s9, t6, 6
                  and          s11, s4, a0
                  slt          t6, s0, ra
                  sltiu        t1, s2, -765
1230:             srli         a2, t1, 9
                  srli         a5, a4, 8
                  sltiu        s11, s2, -299
                  sll          s2, s6, a6
                  sub          s5, zero, t4
                  or           s2, t4, t0
                  slti         s9, s4, 495
                  andi         gp, s3, 1902
1238:             nop
                  srai         s0, t3, 18
                  sltu         s5, tp, a1
                  sltiu        a7, s6, -1477
                  slti         ra, t2, -1241
                  add          t4, s3, a4
                  bge          t3, a3, 1258f
                  bne          a5, t2, 1247f
                  bge          t1, a3, 1257f
1247:             nop
                  nop
                  bge          a5, a2, 1253f
                  or           t1, s4, s4
                  slli         s11, a6, 22
                  slti         s1, a2, -1836
1253:             xor          a5, a3, s4
                  lui          zero, 68529
                  srl          ra, gp, a0
                  bltu         a0, t2, 1276f
1257:             and          s6, zero, s1
1258:             lui          s1, 1014691
                  srl          zero, a3, s11
                  lui          sp, 887736
                  sltu         s7, t5, sp
                  xor          s6, t0, a6
                  srl          sp, s7, a4
                  addi         s11, s11, -1620
                  or           a1, a3, t5
                  xori         t6, t4, -685
                  slt          a1, s11, a7
                  bgeu         s9, s8, 1279f
                  and          t5, s1, sp
                  blt          s2, s6, 1276f
                  ori          ra, a0, 934
                  slli         sp, s0, 12
                  xori         s9, t2, -1292
                  srai         t4, s0, 24
                  slt          s11, s4, a3
1276:             xor          a7, a0, s2
                  xor          s2, s6, t5
                  xor          a2, gp, a4
1279:             srl          t5, t6, a5
                  blt          a5, ra, 1284f
                  blt          a5, s9, 1297f
                  bne          s8, s5, 1284f
                  slti         a0, a7, 1029
1284:             xori         t3, s2, -354
                  xor          s10, t3, a4
                  bltu         ra, s3, 1305f
                  xor          t4, t4, a2
                  srl          zero, ra, s9
                  slt          a5, s5, t5
                  xori         zero, a3, -103
                  lui          s9, 597844
                  bne          s3, s7, 1311f
                  sra          s1, a6, gp
                  xori         s0, t5, -1634
                  xor          a5, tp, t4
                  xori         t2, gp, -1993
1297:             addi         s7, a7, -1457
                  slti         s8, a1, 1939
                  bge          a3, t5, 1310f
                  bgeu         ra, t4, 1318f
                  bne          a4, t0, 1309f
                  xor          s10, a1, zero
                  bge          s1, s6, 1323f
                  and          t2, a7, tp
1305:             addi         sp, a2, -432
                  nop
                  sra          zero, t3, ra
                  add          a7, gp, s2
1309:             srai         s0, a4, 22
1310:             addi         s2, s5, 1782
1311:             add          t1, s11, a1
                  addi         ra, tp, 1948
                  slti         s9, s7, -1691
                  andi         s10, s5, 94
                  bgeu         s0, s9, 1317f
                  addi         zero, s4, -1275
1317:             auipc        a2, 957762
1318:             sltu         a7, s10, s11
                  beq          t5, t3, 1337f
                  sub          a2, gp, ra
                  bge          s1, s11, 1336f
                  auipc        a7, 825029
1323:             add          s5, zero, s1
                  ori          t2, t3, -337
                  srl          t5, t2, s9
                  sra          t4, a0, t1
                  add          t2, a1, t3
                  sll          s3, s8, s1
                  bltu         zero, s4, 1334f
                  addi         s10, a2, -1093
                  beq          t2, a5, 1347f
                  bltu         s0, a5, 1349f
                  auipc        gp, 712771
1334:             slt          a2, t2, s1
                  srli         t2, s7, 1
1336:             bge          s8, tp, 1337f
1337:             bge          sp, t1, 1344f
                  addi         a1, s2, -647
                  slli         t4, s0, 12
                  sll          t6, ra, a1
                  bne          t2, tp, 1350f
                  lui          a7, 475855
                  ori          s5, a2, 146
1344:             lui          a7, 726319
                  xori         s11, a7, 1362
                  xori         ra, t3, 1493
1347:             andi         s8, s11, -1454
                  slti         t3, tp, 334
1349:             xori         sp, t3, 1636
1350:             bge          a1, s11, 1358f
                  bltu         a6, tp, 1367f
                  auipc        zero, 80237
                  sll          s10, s8, a2
                  sltu         s8, zero, tp
                  ori          s6, sp, 101
                  slt          a6, a2, s5
                  beq          s1, t3, 1369f
1358:             slt          s5, t1, t2
                  ori          t5, t4, -670
                  add          s2, a3, a3
                  sltu         s6, s10, s1
                  sra          t5, s2, t1
                  ori          s10, tp, 2033
                  srai         t1, s7, 14
                  slti         t6, t4, 639
                  beq          a2, s1, 1377f
1367:             slti         sp, s2, -882
                  ori          s3, t2, 1505
1369:             bgeu         s3, zero, 1383f
                  sra          s5, sp, a0
                  srli         t3, s6, 0
                  sub          s4, s3, s0
                  xori         t6, t4, 1812
                  srai         s0, t0, 16
                  bge          s8, s4, 1394f
                  slli         s9, s0, 29
1377:             bne          t1, s2, 1381f
                  xori         s4, a7, 1002
                  bne          a0, s1, 1395f
                  xor          s4, a3, s8
1381:             srai         zero, s4, 20
                  auipc        a2, 4949
1383:             add          t1, a3, s2
                  bne          a0, s9, 1396f
                  slt          s4, s0, s5
                  slti         a5, ra, 1327
                  lui          a5, 726964
                  ori          s2, t0, -1635
                  sltu         s2, t6, a4
                  srl          t2, t6, t4
                  slti         s6, a4, 502
                  srai         sp, s4, 11
                  slt          t2, t4, s10
1394:             add          t3, s1, s0
1395:             addi         a6, s11, 923
1396:             nop
                  sra          t4, t5, t0
                  blt          sp, ra, 1405f
                  add          t3, a0, t4
                  lui          t3, 752484
                  beq          a7, a7, 1410f
                  bne          t3, t1, 1410f
                  lui          s4, 677242
                  slti         s1, s10, 1396
1405:             sltiu        a6, s3, 2040
                  add          s6, sp, ra
                  or           s6, s5, s11
                  or           s9, s6, tp
                  lui          s5, 366968
1410:             nop
                  blt          tp, s11, 1419f
                  andi         a5, s6, 1522
                  bltu         t1, a4, 1424f
                  ori          t6, s10, 569
                  sub          s0, t1, s1
                  bgeu         s1, ra, 1418f
                  add          s11, s6, t5
1418:             bge          zero, a2, 1436f
1419:             or           gp, t6, s9
                  nop
                  bne          t6, t6, 1441f
                  or           ra, s7, s10
                  andi         s9, tp, 365
1424:             and          s2, s0, a2
                  nop
                  sra          a6, s2, a2
                  slt          a7, t3, t5
                  slli         s3, s9, 8
                  sltiu        s9, t1, -1597
                  nop
                  lui          a1, 966179
                  srl          gp, s9, s0
                  slt          s7, s0, ra
                  slt          t1, t3, ra
                  srl          s11, s10, s9
1436:             or           t2, s8, s4
                  addi         s1, s5, -325
                  slt          s4, a6, t3
                  blt          t4, s2, 1457f
                  bgeu         t1, gp, 1459f
1441:             sltu         s11, a1, a0
                  bltu         a6, a6, 1448f
                  bgeu         a6, t3, 1445f
                  and          a1, t0, s1
1445:             and          ra, t0, s5
                  bltu         s2, a0, 1461f
                  sll          s4, a5, s3
1448:             sltiu        t3, s6, 711
                  xori         s11, a2, 1076
                  bge          a0, ra, 1470f
                  auipc        s3, 501998
                  addi         zero, a5, 115
                  sra          t5, s10, a4
                  xor          s1, s2, s11
                  ori          s10, a5, -1013
                  bltu         s5, s7, 1467f
1457:             srai         s7, t0, 21
                  bge          zero, a7, 1471f
1459:             addi         t5, s8, 1341
                  addi         s9, tp, 1658
1461:             bgeu         t4, s0, 1477f
                  andi         t1, a1, 227
                  bne          s10, s5, 1465f
                  slt          sp, a4, s8
1465:             beq          s8, a0, 1469f
                  bne          a6, s8, 1482f
1467:             beq          a1, ra, 1472f
                  xori         s1, tp, -116
1469:             bgeu         s4, t6, 1486f
1470:             sra          a5, s7, s8
1471:             ori          sp, t3, 735
1472:             or           s8, a7, ra
                  lui          a5, 173583
                  srai         s3, t1, 8
                  blt          t5, sp, 1476f
1476:             bgeu         gp, t6, 1478f
1477:             nop
1478:             bne          a7, gp, 1492f
                  sll          t3, tp, t1
                  slt          s11, t4, s6
                  nop
1482:             and          s7, s10, s2
                  blt          s10, s8, 1485f
                  andi         a0, s3, 1335
1485:             sub          t5, t0, s7
1486:             xor          gp, ra, a1
                  lui          a6, 178722
                  slti         t3, sp, -719
                  ori          s0, ra, -1757
                  and          t4, t3, s4
                  xor          s3, sp, s6
1492:             bne          gp, t1, 1496f
                  addi         s6, a1, -984
                  srli         s11, s3, 12
                  bgeu         t1, t6, 1499f
1496:             slt          s0, s2, tp
                  sra          a7, a7, gp
                  or           t4, s9, s10
1499:             srli         s10, a2, 17
                  beq          s7, t0, 1505f
                  slt          t2, s9, s11
                  xor          s2, s0, s2
                  ori          sp, s8, 1247
                  xor          ra, s2, a2
1505:             and          gp, a3, s11
                  sub          s3, a5, s3
                  beq          ra, s7, 1526f
                  bne          s2, s4, 1515f
                  auipc        tp, 284214
                  slt          a0, t6, gp
                  bgeu         s2, tp, 1523f
                  sltu         s2, t5, tp
                  and          sp, t2, s4
                  andi         s11, s5, -232
1515:             sltu         s6, s8, t0
                  srai         a6, a7, 0
                  lui          s11, 499887
                  beq          s6, a5, 1520f
                  bltu         s6, a1, 1521f
1520:             or           s9, t3, t3
1521:             sub          ra, t1, s0
                  xor          ra, a6, s11
1523:             ori          s4, s10, 381
                  srli         t6, a6, 3
                  addi         s6, a7, 1887
1526:             srai         s2, s2, 15
                  and          s11, s3, a7
                  slti         s1, a5, 231
                  sltu         s8, s6, t5
                  slli         a0, a5, 16
                  and          s4, a7, s3
                  sra          a5, s5, t4
                  or           s3, s6, gp
                  slti         ra, a0, 1787
                  sll          a2, zero, t3
                  sra          s9, t5, s7
                  auipc        a7, 296329
                  ori          ra, s7, -1731
                  slli         t5, gp, 18
                  auipc        a1, 926929
                  lui          s0, 511638
                  sltiu        s8, t2, 138
                  andi         s2, ra, -1595
                  lui          s2, 786539
                  or           a6, zero, a4
                  srl          t4, t5, ra
                  bge          t2, s5, 1558f
                  sll          ra, a3, s6
                  bltu         a7, t1, 1557f
                  beq          s8, s7, 1568f
                  bne          s9, a0, 1562f
                  beq          gp, s4, 1561f
                  sub          t5, t3, a0
                  ori          s5, s9, -142
                  bne          s1, s10, 1557f
                  lui          s5, 373794
1557:             slt          t2, s4, t1
1558:             bne          sp, a6, 1576f
                  add          tp, a4, s0
                  bge          s9, a6, 1573f
1561:             beq          t0, t3, 1569f
1562:             srl          a2, s2, t4
                  sltiu        s6, a0, 1935
                  or           s1, s6, a3
                  addi         s4, t5, 1411
                  srai         s10, s4, 12
                  lui          t2, 708096
1568:             andi         s5, t0, 1052
1569:             bne          a7, s0, 1585f
                  sra          t6, a4, s7
                  lui          s5, 969562
                  add          t3, a2, ra
1573:             auipc        a1, 61430
                  beq          a2, s4, 1594f
                  srl          s11, a4, a5
1576:             sll          a5, t5, s5
                  xor          a2, a7, s11
                  slt          t4, ra, s8
                  slt          tp, a4, t4
                  nop
                  lui          t6, 748007
                  sltu         tp, a7, a7
                  addi         s10, a1, -1575
                  slli         ra, a3, 28
1585:             slt          s5, a7, gp
                  srai         s1, t5, 15
                  srli         zero, t1, 2
                  xor          a1, a0, s3
                  lui          s8, 1014050
                  sll          a5, a5, a5
                  sll          s11, a6, t3
                  blt          s0, s7, 1611f
                  lui          s11, 935156
1594:             nop
                  sra          a0, s3, a1
                  sll          s4, s6, a7
                  lui          s7, 447306
                  xor          s7, t0, s10
                  bge          a5, s3, 1610f
                  andi         a5, s5, -178
                  xori         t6, a1, -586
                  bge          s0, s6, 1618f
                  sltu         s7, s3, s1
                  bltu         t2, s5, 1610f
                  and          t6, s0, a5
                  blt          s2, a0, 1607f
1607:             addi         t2, t6, 322
                  blt          s0, s8, 1628f
                  add          t4, t4, t2
1610:             lui          zero, 103992
1611:             xor          s1, s5, s0
                  bltu         a1, t3, 1629f
                  and          gp, t3, sp
                  srai         s10, s7, 25
                  sltiu        a7, t6, 1017
                  srai         a5, t3, 12
                  sra          s1, s0, s8
1618:             bgeu         t5, s6, 1634f
                  sltu         t4, a3, s0
                  slli         a0, s1, 20
                  slt          t3, s3, sp
                  xor          a5, a5, t2
                  nop
                  auipc        a1, 256739
                  sub          t6, sp, s1
                  beq          t0, s6, 1641f
                  lui          a6, 705483
1628:             and          s8, t2, a4
1629:             addi         s5, s1, -994
                  srli         t6, t0, 28
                  bge          a5, t4, 1638f
                  srl          s9, t1, t0
                  addi         a6, s7, -240
1634:             bge          t5, s9, 1638f
                  nop
                  bltu         gp, s8, 1651f
                  xor          s7, s2, s0
1638:             xori         t4, a0, -1876
                  bge          a4, ra, 1644f
                  beq          t6, ra, 1659f
1641:             slli         s2, a1, 13
                  slti         ra, s0, 822
                  srli         tp, s7, 26
1644:             sltiu        sp, s5, -474
                  bge          s11, a5, 1647f
                  lui          a2, 63345
1647:             xor          s7, a3, t6
                  sll          t4, t0, s3
                  sra          a2, s7, a1
                  srli         a2, s3, 1
1651:             sub          s0, t3, s1
                  slt          sp, a2, a2
                  srai         s9, s4, 30
                  sub          s9, a3, s5
                  slli         s6, sp, 10
                  beq          ra, s4, 1672f
                  slti         zero, a1, 1403
                  bltu         tp, a4, 1678f
1659:             sll          a7, s11, zero
                  bne          t1, s11, 1671f
                  nop
                  or           t4, s6, t4
                  slti         s9, a4, -755
                  and          t1, a2, s3
                  srli         a7, s6, 8
                  sub          zero, t0, t6
                  or           t6, tp, a3
                  andi         a6, s5, -557
                  bne          t3, s0, 1673f
                  nop
1671:             srl          t1, tp, a5
1672:             add          tp, a3, s0
1673:             sltu         t2, a0, t6
                  xor          s5, s7, ra
                  slli         a2, a5, 22
                  bgeu         a2, s9, 1688f
                  auipc        sp, 530197
1678:             and          tp, a1, s9
                  bne          a2, tp, 1681f
                  lui          gp, 697674
1681:             sltiu        s6, a3, 1285
                  auipc        t2, 631133
                  ori          s2, s4, 141
                  slli         s4, s10, 1
                  and          s9, t6, s6
                  sub          t6, gp, a4
                  sra          s5, sp, s7
1688:             slli         tp, s1, 27
                  bge          t4, gp, 1707f
                  slli         s7, s7, 21
                  or           t5, s3, a7
                  beq          s11, a1, 1693f
1693:             andi         ra, a5, -1128
                  slti         s8, s5, 1478
                  lui          a1, 17256
                  nop
                  bgeu         t4, t5, 1713f
                  xor          s6, a4, s2
                  xori         s5, t3, 1222
                  srai         tp, a6, 14
                  sltu         t2, a4, a7
                  slli         t3, s4, 26
                  and          s0, a7, sp
                  xor          t1, s4, ra
                  ori          a6, a6, -848
                  slli         a1, a5, 3
1707:             srli         a2, s2, 18
                  slli         s8, gp, 23
                  add          sp, t0, s5
                  xor          a2, s2, gp
                  slli         s8, a2, 4
                  xor          t3, a5, a6
1713:             srai         s9, s7, 21
                  srai         t3, a7, 18
                  slt          s10, s9, s10
                  srli         a2, t0, 7
                  slli         a0, s9, 15
                  bgeu         s5, s6, 1738f
                  srli         s3, t0, 31
                  xor          s3, a6, gp
                  sltu         s10, s3, gp
                  slti         s7, a1, -636
                  srl          t1, tp, a3
                  andi         s9, s7, -991
                  sub          t6, s8, s5
                  srli         s8, s5, 1
                  slt          s5, a0, a5
                  ori          s1, s3, 1037
                  slti         zero, a6, -1654
                  sltiu        s1, t1, 1249
                  addi         t3, s9, -1826
                  slt          a0, a5, s2
                  andi         s5, t0, -1187
                  srai         gp, s11, 30
                  sll          t1, a5, s11
                  add          s7, t2, s3
                  bne          t1, t0, 1739f
1738:             bne          s3, s4, 1746f
1739:             beq          t2, s2, 1757f
                  srli         s4, zero, 3
                  add          a1, t2, ra
                  srl          a5, s11, sp
                  sltiu        a6, a2, -420
                  or           t6, a6, t3
                  and          t1, sp, a0
1746:             andi         t1, a0, -1879
                  srli         s4, s6, 10
                  xori         a6, a4, 1273
                  xor          s3, tp, s0
                  xori         a2, gp, 639
                  bltu         t0, t4, 1762f
                  bltu         s10, t1, 1761f
                  bge          s10, a1, 1764f
                  sltu         t1, s11, s10
                  sub          a1, sp, a6
                  xori         t1, s5, -1192
1757:             bgeu         s3, a1, 1776f
                  xori         t5, a3, -1402
main_12:          jal          t1, 22f
0:                jal          ra, 4f
1:                jal          ra, 26f
2:                jal          t1, 23f
3:                jal          ra, 27f
4:                jal          ra, 21f
5:                jal          ra, 3b
6:                jal          ra, 12f
7:                jal          a0, 10f
8:                jal          ra, 11f
9:                jal          ra, 16f
10:               jal          ra, 18f
11:               jal          s1, 7b
12:               jal          ra, 24f
13:               jal          tp, 20f
14:               jal          ra, 8b
15:               jal          gp, 2b
16:               jal          ra, 5b
17:               jal          ra, 14b
18:               jal          ra, 19f
19:               jal          ra, 1b
20:               jal          ra, 9b
21:               jal          ra, 25f
22:               jal          t1, 0b
23:               jal          ra, 17b
24:               jal          s8, 15b
25:               jal          gp, 6b
26:               jal          ra, 13b
27:               srl          s1, a7, s9
                  sub          a5, t5, ra
                  bne          s0, a1, 1766f
1761:             bne          gp, a3, 1774f
1762:             srai         t4, a6, 1
                  beq          a3, tp, 1780f
1764:             andi         tp, ra, 1772
                  xori         t1, a2, -1231
1766:             slti         s1, a2, 684
                  auipc        s3, 235419
                  auipc        t6, 327210
                  slt          t3, s11, a0
                  slli         s8, a2, 19
                  srai         s1, a6, 20
                  blt          a0, s3, 1774f
                  bgeu         sp, s9, 1787f
1774:             bne          s0, t5, 1790f
                  slti         a2, t3, -593
1776:             blt          t0, t4, 1784f
main_24:          jal          t1, 5f
0:                jal          s8, 11f
1:                jal          ra, 12f
2:                jal          a6, 4f
3:                jal          ra, 16f
4:                jal          gp, 10f
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          t1, 6b
8:                jal          s10, 13f
9:                jal          ra, 14f
10:               jal          t1, 7b
11:               jal          tp, 15f
12:               jal          ra, 8b
13:               jal          ra, 2b
14:               jal          a7, 1b
15:               jal          ra, 9b
16:               jal          ra, 17f
17:               slt          s7, zero, s9
                  slli         sp, s5, 9
                  slli         s9, s7, 21
                  nop
1780:             or           tp, a6, s11
                  addi         s9, a4, -1427
                  bgeu         t4, s7, 1801f
                  xori         a5, s6, 332
1784:             srl          s2, s0, t0
                  lui          zero, 981622
                  sub          s1, ra, t1
1787:             andi         s10, a5, -867
                  bne          t6, zero, 1790f
                  andi         s5, a4, -1714
1790:             srai         sp, s10, 21
                  xor          a6, t5, zero
                  xori         tp, s10, 379
                  add          s3, s1, s0
                  sub          gp, s7, s5
                  slt          s3, s0, a1
                  blt          s0, t3, 1804f
                  andi         t6, t2, 1788
                  srai         t2, a1, 28
                  beq          s1, a3, 1807f
                  or           t5, zero, s11
1801:             xor          s10, a4, t1
                  ori          s11, s3, 572
                  addi         s1, s4, 651
1804:             srli         t1, s3, 24
                  slli         s4, sp, 11
                  bge          gp, s3, 1810f
1807:             bge          s0, t2, 1809f
                  xori         a0, s7, 809
1809:             slli         s9, a0, 8
1810:             beq          ra, s10, 1822f
                  slti         gp, t0, 733
                  and          t3, tp, sp
                  andi         a0, t6, -985
                  beq          s2, s9, 1821f
                  slt          a0, a4, t1
                  sub          a6, a2, s10
                  sltiu        sp, ra, 884
                  beq          s10, ra, 1837f
                  sll          gp, s1, tp
                  andi         tp, s1, 621
1821:             blt          a5, t4, 1825f
1822:             sltiu        t3, t6, 2025
                  slli         gp, gp, 12
                  andi         zero, a7, 1529
1825:             xor          a6, s9, s6
                  bltu         s8, t2, 1843f
                  xori         s11, s5, 954
                  slt          s11, s0, a7
                  beq          t3, a0, 1840f
                  bge          zero, sp, 1831f
1831:             or           s5, s3, s7
                  srai         a2, s1, 0
                  sltu         s1, s3, a3
                  bne          s9, a4, 1847f
                  blt          t4, s7, 1851f
                  auipc        zero, 17066
1837:             blt          tp, a6, 1839f
                  bne          s9, s1, 1849f
1839:             sra          ra, t3, s4
1840:             slt          tp, s3, zero
                  srl          sp, zero, tp
                  ori          s10, a6, 1491
1843:             bne          a4, s4, 1858f
                  nop
                  bltu         a3, a5, 1859f
                  andi         s10, t3, 805
1847:             sub          a1, a6, s1
                  andi         a5, a5, 1692
1849:             bltu         a4, a0, 1854f
                  bltu         s6, t0, 1870f
1851:             bne          a6, t5, 1860f
                  auipc        sp, 501718
                  or           gp, zero, s4
1854:             ori          a6, a0, 1107
                  blt          s5, gp, 1873f
                  slli         s2, a4, 31
                  xori         t3, t1, 440
1858:             slli         s11, t0, 11
1859:             xor          s10, s9, ra
1860:             slli         s6, a3, 25
                  srai         sp, sp, 23
                  sltu         a5, t4, s3
                  addi         s5, gp, 1828
                  sltu         s10, s0, s2
                  sub          s0, t1, s8
                  xor          s9, s1, t2
                  beq          a7, a2, 1873f
                  sltu         s7, a1, t4
                  bltu         zero, t1, 1885f
1870:             addi         s0, a4, -1852
                  sra          s8, a0, a0
                  bne          a7, s7, 1883f
1873:             sll          s7, s9, s11
                  slt          s10, sp, s11
                  or           a0, ra, a2
                  nop
                  xori         sp, tp, 562
                  beq          a0, t4, 1880f
                  beq          a6, s1, 1899f
1880:             and          a6, t1, a1
                  srai         s7, a4, 15
                  add          s0, a2, s2
1883:             sra          t4, a7, gp
                  andi         ra, ra, -1042
1885:             sll          t1, s8, a3
                  srai         a0, tp, 3
                  bge          s7, t4, 1905f
                  srl          s11, s4, s5
                  xori         tp, s10, -82
                  add          s0, ra, s8
                  slli         a2, a4, 0
                  bne          s6, ra, 1908f
                  xor          a6, a1, s4
                  and          t4, t5, a7
                  slli         t2, a3, 4
                  or           a7, s2, a2
                  beq          t5, a5, 1905f
                  bltu         s1, s7, 1909f
1899:             srl          a7, s11, a5
                  srai         t4, s7, 10
                  andi         s4, s2, 1675
                  sra          a6, t6, a2
                  sltiu        tp, s5, -463
                  srai         t1, t0, 15
1905:             addi         sp, a4, -609
                  add          s5, t0, s7
                  srai         t5, a7, 15
1908:             lui          t2, 1007136
1909:             slti         s11, t4, 1516
                  auipc        s1, 908631
                  xor          a1, a2, ra
                  andi         a5, s3, 1991
                  sra          s5, a5, t2
                  srai         s2, t5, 28
                  srai         a7, s1, 9
                  xor          s9, s5, a3
                  srl          t3, gp, s8
                  srli         a5, tp, 9
                  slti         t2, a0, 840
                  slti         s4, s10, 1736
                  addi         a0, a1, 662
                  srai         a6, t4, 31
                  and          s2, s0, s3
                  nop
                  sltu         t4, t4, a3
                  xor          s1, sp, s1
                  sll          t1, s8, s11
                  sra          t6, a7, a6
                  and          a6, s4, sp
                  srli         t6, t1, 24
                  addi         s10, ra, 1711
                  sll          t5, a2, a6
                  xori         zero, t0, -644
                  srl          a6, t4, tp
                  slti         a6, t6, 1048
                  sra          a2, gp, s1
                  srli         t1, s9, 28
                  srl          t3, a5, a5
                  nop
                  bne          s10, a5, 1942f
                  xori         gp, t6, 256
1942:             srai         zero, tp, 19
                  beq          a2, a5, 1945f
                  bltu         a1, s10, 1961f
1945:             sltiu        t4, a7, -324
                  or           t1, t5, s5
                  sub          s8, t1, s2
                  bge          s10, t3, 1952f
                  blt          s11, sp, 1969f
                  and          s0, a1, s1
                  auipc        s7, 85225
1952:             srli         t1, s5, 14
                  ori          t3, a6, -1252
                  slti         t1, a5, -310
                  bne          a5, a5, 1971f
                  sll          zero, t6, t6
                  sltu         a7, t0, ra
                  nop
                  sltiu        s7, sp, 569
                  blt          s5, zero, 1972f
1961:             ori          t6, s5, 1921
                  sra          a7, a7, tp
                  blt          zero, s9, 1974f
                  or           a6, s2, s5
                  and          s9, t3, t6
                  srli         s3, tp, 1
                  blt          t3, sp, 1983f
                  sltiu        zero, t0, -984
1969:             xori         s3, t0, -1488
                  addi         s10, t2, 643
1971:             slt          sp, t0, s10
1972:             sub          a2, sp, s2
                  beq          a7, s9, 1989f
1974:             slt          a5, a6, a2
                  srl          s10, a2, s3
                  add          s8, s9, s7
                  xori         a5, s4, -1665
                  slti         t4, t0, -870
                  xori         s5, s9, -1023
                  srai         s10, sp, 7
                  add          s10, t4, t0
                  slt          s7, s8, t4
1983:             slti         a0, t3, 983
                  srl          s7, gp, s1
                  sltiu        ra, s11, -1470
                  blt          s4, sp, 2005f
                  auipc        s4, 358758
                  lui          s6, 662758
1989:             ori          a2, gp, -1794
                  sll          a2, s5, s7
                  addi         a1, s3, -527
                  andi         a5, tp, -1189
                  andi         t1, a4, 791
                  xori         a0, t1, 828
                  and          t1, a2, ra
                  auipc        a5, 880111
                  and          s11, s4, a2
                  slti         s7, s6, 49
                  blt          s7, zero, 2019f
                  lui          zero, 509825
                  auipc        a7, 365490
                  bgeu         s9, s6, 2017f
                  andi         t4, zero, 787
                  slti         zero, a3, 1660
2005:             slt          a6, s4, s1
                  sub          s5, zero, tp
                  srl          s5, tp, s1
                  and          s7, t3, gp
                  bge          t1, tp, 2027f
                  nop
                  slli         t4, tp, 27
                  sra          t6, s6, s5
                  sltu         a5, a5, t2
                  blt          a7, a1, 2016f
                  slti         a5, s1, -1568
2016:             sra          t1, a0, sp
2017:             or           s2, ra, a5
                  bge          zero, s9, 2019f
2019:             or           tp, a7, a6
                  srl          s3, a4, t0
                  sltiu        t1, s5, -34
                  and          s8, tp, t4
                  srli         tp, s1, 26
                  sltiu        zero, a2, -1238
                  bne          tp, s2, 2039f
                  sll          s5, t4, a2
2027:             ori          t1, s1, 1063
                  slti         t4, s8, 606
                  srl          t5, s6, zero
                  srli         t4, sp, 7
                  lui          a7, 801300
                  bltu         s1, a0, 2040f
                  lui          t1, 886769
                  srli         s0, a3, 16
                  sltiu        s0, a0, 994
                  nop
                  bne          s9, s1, 2042f
                  beq          gp, a6, 2051f
2039:             auipc        s6, 896990
2040:             ori          s2, s6, -525
                  auipc        s1, 579391
2042:             sub          a2, t5, ra
                  bgeu         gp, t3, 2049f
                  beq          a7, a5, 2053f
                  srl          s4, gp, s4
                  lui          s2, 557738
                  srli         a7, zero, 31
                  bge          ra, t5, 2059f
2049:             sub          a2, s3, t4
                  sltu         t1, ra, sp
2051:             sra          s0, s10, a6
                  sub          s0, a1, t1
2053:             srli         s8, ra, 27
                  slti         a6, a0, 1236
                  sltu         s0, s11, s10
                  srl          t2, s3, t6
                  bltu         s7, s9, 2075f
                  slt          zero, a2, gp
2059:             slli         s4, s0, 23
                  auipc        a5, 216005
                  sra          a2, t6, s1
                  andi         t3, t3, 595
                  sll          s11, t5, a6
                  beq          s7, zero, 2068f
                  sltiu        t3, a2, -125
                  srli         s0, t4, 16
                  slti         zero, s2, -1759
2068:             sll          s5, sp, s2
                  bge          s8, t2, 2071f
                  srai         s2, a4, 6
2071:             sub          t1, zero, a0
                  bltu         a5, t6, 2091f
                  beq          a3, t0, 2080f
                  bgeu         a0, s4, 2090f
2075:             ori          s5, s4, 42
                  blt          s4, a5, 2087f
                  sltiu        t4, t0, 1704
                  bge          s10, s0, 2080f
                  slti         t6, s5, 1401
2080:             lui          s5, 854326
                  xori         a7, zero, -951
                  or           s6, a6, s9
                  sll          a5, t5, sp
                  sll          s9, a4, t6
                  bgeu         a2, s9, 2090f
                  bgeu         gp, t4, 2090f
2087:             or           ra, a1, a7
                  slti         t5, t4, -1531
                  or           t2, s7, t1
2090:             and          t2, s3, a2
2091:             bge          t0, a7, 2098f
                  sra          sp, zero, a1
                  bne          sp, s4, 2099f
                  slli         s4, a1, 22
                  bgeu         s11, sp, 2114f
                  xor          tp, a5, a6
                  lui          s2, 48471
2098:             or           s1, sp, s6
2099:             ori          t3, s7, 330
                  beq          s6, ra, 2102f
                  and          t1, s2, t6
2102:             sll          a5, s2, t4
                  sub          t5, s1, t0
                  auipc        t6, 935246
                  xor          sp, s1, a6
                  addi         a7, a6, 1474
                  sltu         s3, a6, a6
                  lui          a2, 777744
                  sra          s8, tp, zero
                  add          s8, s5, s1
                  bge          a4, s2, 2124f
                  bge          tp, t4, 2124f
                  lui          t3, 42413
2114:             ori          t5, a2, -1667
                  bne          t5, ra, 2135f
                  sltiu        t5, a1, -115
                  beq          s6, a4, 2132f
                  sll          s1, s5, s0
                  beq          a7, ra, 2127f
                  slti         gp, s10, -817
                  addi         a1, s7, 1033
                  ori          a2, s11, 1551
                  nop
2124:             andi         a7, a7, -940
                  srai         s9, gp, 18
                  srai         a7, s11, 20
2127:             sltu         a6, s10, a1
                  sra          t2, s8, t0
                  sltu         t5, gp, gp
                  blt          a4, s7, 2148f
                  blt          t2, a7, 2133f
2132:             slli         t2, gp, 13
2133:             bltu         a3, a5, 2152f
                  andi         gp, gp, -758
2135:             andi         a2, t4, -746
                  slti         t5, s9, -1034
                  srl          ra, a4, sp
                  slti         zero, a6, -997
                  nop
                  srl          ra, a0, a0
                  xor          s8, t3, s10
                  bgeu         s1, s8, 2143f
2143:             slti         t2, a6, 947
                  nop
                  srli         s0, s0, 25
                  and          s9, t0, ra
                  xori         a2, s4, -366
2148:             bltu         zero, s0, 2150f
                  bne          s11, s7, 2165f
2150:             sltiu        s7, sp, -1776
                  sll          s8, s6, s3
2152:             blt          s8, s11, 2161f
                  sll          a6, a0, a7
                  bgeu         s0, a0, 2168f
                  bne          a2, s1, 2173f
                  xori         s8, s0, 604
                  srai         zero, t4, 23
                  srl          tp, tp, tp
                  or           s11, t0, s1
                  ori          a1, s5, 63
2161:             slti         t1, t4, -1307
                  sll          s1, t4, a5
                  xori         a6, gp, 600
                  or           a7, s7, t2
2165:             srai         s10, s10, 6
                  and          a5, tp, t0
                  srl          t2, zero, s10
2168:             bne          s1, s8, 2172f
                  bge          t0, a0, 2180f
                  srli         s5, a6, 20
                  sub          a5, t2, t2
2172:             or           a0, s9, t6
2173:             lui          s0, 824375
                  slt          a5, s5, s2
                  add          s9, s2, t1
                  add          s5, s8, s9
                  slt          s4, t5, s1
                  ori          a6, s1, -246
                  sub          s7, t0, s3
2180:             srl          ra, s6, s5
                  lui          t4, 981262
                  bge          zero, t0, 2193f
                  xori         s0, sp, 2
                  bgeu         s11, s8, 2204f
                  sltu         s1, t0, s4
                  nop
                  lui          s11, 125572
                  bne          ra, gp, 2204f
                  beq          t5, a1, 2197f
                  add          zero, a1, ra
                  sltiu        a0, t2, 1784
                  addi         t5, t1, -495
2193:             and          zero, t2, s0
                  addi         zero, s3, -1264
                  sltiu        sp, t3, 1908
                  bge          a0, t5, 2213f
2197:             auipc        t3, 930008
                  bltu         tp, tp, 2213f
                  srli         t5, s11, 3
                  andi         t2, s5, 1009
                  auipc        s0, 66676
                  slt          s6, t3, t6
                  xor          a5, ra, s9
2204:             srli         s4, t3, 18
                  sra          s9, s4, a6
                  srai         s11, t6, 25
                  sll          gp, t1, t2
                  bge          s1, a7, 2226f
                  bge          t0, ra, 2220f
                  lui          a5, 167326
                  bge          t5, ra, 2219f
                  slti         ra, s11, 1301
2213:             slti         s2, a2, 741
                  bltu         a4, s4, 2225f
                  xori         s0, t2, 1347
                  sltu         sp, s9, t6
                  addi         a0, s6, 929
                  sub          s7, s9, s2
2219:             addi         s10, gp, 1772
2220:             slt          t5, t4, sp
                  ori          s2, a7, -1013
                  and          ra, s11, s10
                  nop
                  srl          t1, s3, s2
2225:             slt          s6, s2, a1
2226:             sll          s7, t2, t1
                  slli         s3, s6, 19
                  addi         s5, t1, 1438
                  auipc        s3, 228597
                  bge          t1, t5, 2246f
                  sltu         gp, sp, s9
                  sra          t2, zero, t3
                  addi         gp, t3, -555
                  srai         s7, s4, 21
                  bltu         s10, a5, 2255f
                  sra          s7, t6, t6
                  srai         s4, s9, 10
                  xor          a6, gp, s3
                  sra          a1, tp, s5
                  bltu         a3, a4, 2246f
                  xori         t2, t1, 942
                  sub          t5, s6, a1
                  andi         s4, t2, -45
                  xor          sp, s7, s6
                  lui          s6, 277810
2246:             blt          t1, a4, 2248f
                  andi         a2, s3, -2025
2248:             srl          s2, s9, t1
                  blt          ra, s2, 2268f
                  sub          zero, t4, s5
                  or           s2, s8, s6
                  sltiu        t5, a5, 1694
                  bltu         s11, tp, 2270f
                  lui          t1, 337372
2255:             srli         s7, t1, 0
                  lui          s0, 874134
                  lui          sp, 712811
                  addi         t1, s5, -372
                  bgeu         s11, t6, 2263f
                  addi         a2, s11, -2029
                  slt          a7, t2, a4
                  blt          s9, s8, 2280f
2263:             add          s3, t0, s0
                  slli         t1, t6, 0
                  blt          s1, a1, 2281f
                  add          a7, s11, s4
                  slli         s1, s4, 12
2268:             auipc        s1, 871549
                  beq          t6, s7, 2274f
2270:             addi         t1, a7, -1250
                  slt          a5, a1, t0
                  srli         t5, s8, 27
                  or           ra, t4, s2
2274:             xori         a6, t1, 1819
                  bge          zero, a5, 2288f
                  srli         ra, s11, 11
                  nop
                  srli         s11, a0, 11
                  bne          s0, sp, 2286f
2280:             bltu         zero, t1, 2292f
2281:             srli         s1, s10, 31
                  addi         s3, s3, -1377
                  xori         t4, a2, -574
                  bltu         tp, s6, 2295f
                  slti         s3, t4, 1938
2286:             xor          a0, t2, t2
                  srai         s1, a7, 22
2288:             sltu         s1, s1, a3
                  nop
                  srl          s11, s2, a7
                  srl          a2, tp, a2
2292:             beq          s8, t6, 2296f
                  bne          t5, tp, 2307f
                  nop
2295:             bgeu         s2, s2, 2304f
2296:             nop
                  bltu         t3, t6, 2305f
                  blt          t3, s2, 2300f
                  beq          a6, a1, 2301f
2300:             xori         t1, a3, 1245
2301:             bgeu         s0, s0, 2320f
                  bne          a6, sp, 2318f
                  bgeu         s0, s5, 2304f
2304:             srl          zero, t5, s4
2305:             blt          t6, s8, 2325f
                  sltiu        s1, t6, -1428
2307:             addi         s8, t1, -2024
                  sltiu        gp, s9, 773
                  add          s1, a0, sp
                  addi         s3, s6, 1411
                  xor          gp, gp, s3
                  sltiu        ra, a5, -312
                  slt          s2, a1, tp
                  bge          s10, s1, 2316f
                  addi         t5, s11, 225
2316:             slli         s4, tp, 23
                  bne          sp, s9, 2333f
2318:             ori          s7, t3, 212
                  srai         t2, s4, 9
2320:             bge          gp, s10, 2322f
                  ori          t1, t5, 1803
2322:             sll          s7, s11, t5
                  bgeu         s3, ra, 2336f
                  slti         t4, s3, -1317
2325:             bltu         s11, t1, 2329f
                  srl          s5, s2, a5
                  beq          s5, s3, 2347f
                  sll          s11, a1, s3
2329:             srai         a1, t5, 26
                  sra          ra, a2, s2
                  srai         a7, a6, 1
                  auipc        ra, 976698
2333:             slt          s8, a7, sp
                  lui          a1, 604481
                  or           a2, a4, ra
2336:             sltiu        t4, a0, -62
                  sll          sp, a0, a3
                  srai         s5, s5, 29
                  auipc        a7, 360115
                  bge          s6, tp, 2360f
                  bltu         a5, s10, 2353f
                  sra          s1, t4, t4
                  andi         a1, s1, -1578
                  srai         ra, a3, 23
                  xori         a1, t2, -770
                  auipc        s1, 222665
2347:             bge          s8, a5, 2353f
                  beq          t1, t5, 2362f
                  xori         a1, s10, 340
                  lui          a6, 763463
                  addi         s5, s8, -1219
                  blt          a6, s3, 2363f
2353:             nop
                  andi         a2, s8, -1591
                  andi         s0, sp, 1512
                  blt          gp, s6, 2374f
                  slli         tp, a7, 25
                  bgeu         s3, a0, 2360f
                  lui          s6, 32824
2360:             ori          a1, t6, -103
                  or           s3, s11, s4
2362:             sltiu        t1, s8, -668
2363:             or           tp, s10, a2
                  slt          tp, a7, a4
                  sra          s0, s7, gp
                  xor          s0, s9, s7
                  srl          s9, s7, t5
                  srai         s6, t2, 12
                  sltiu        tp, a4, 109
                  beq          a0, t0, 2372f
                  nop
2372:             or           s11, ra, t5
                  nop
2374:             bge          s11, s3, 2389f
                  sll          s3, s7, s3
                  srai         t2, s9, 19
                  blt          s3, a7, 2384f
                  lui          sp, 581258
                  slt          s6, a2, t5
                  slt          s3, s11, t3
                  slt          s5, s6, t5
                  sltu         s0, s8, t4
                  slt          t2, gp, tp
2384:             srai         s2, t2, 28
                  and          a6, tp, t6
                  sub          t5, ra, t6
                  add          s4, a6, s7
                  sll          s9, s3, a3
2389:             or           a6, s2, ra
                  lui          a1, 753692
                  beq          t4, s1, 2399f
                  and          t6, s9, a5
                  srai         s5, a3, 30
                  lui          s0, 83289
                  sltu         s3, a5, zero
                  sra          s10, s3, s7
                  and          zero, s0, gp
                  bltu         t5, t2, 2409f
2399:             xori         s2, t2, -1952
                  or           tp, zero, a7
                  srai         a0, t6, 19
                  srl          t5, s4, s4
                  sub          s9, a0, a4
                  srli         s2, t2, 18
                  bne          s10, a6, 2421f
                  xor          s5, s5, s2
                  beq          t2, t3, 2425f
                  bgeu         s5, s3, 2412f
2409:             xori         sp, gp, -35
                  xor          t1, t0, s7
                  srl          t2, a2, s9
2412:             sltiu        sp, a3, -626
                  beq          s6, s3, 2424f
                  xori         s7, t2, 880
                  lui          s9, 9439
                  andi         a6, t4, -1634
                  lui          sp, 302245
                  add          s5, s8, a1
                  and          s0, a5, s6
                  sub          zero, gp, a5
2421:             addi         t3, a7, -21
                  srli         a1, a3, 11
                  beq          sp, ra, 2424f
2424:             bltu         a0, tp, 2440f
2425:             and          sp, t0, s8
                  srli         s9, a1, 0
                  slli         t4, t3, 24
                  sub          s11, s3, t5
                  sltiu        s3, a0, 739
                  bltu         t0, a3, 2449f
                  andi         a0, a6, -628
                  auipc        ra, 666025
                  sll          a5, s1, s5
                  slli         s1, t1, 20
                  sltiu        t3, t1, 1037
                  addi         ra, t6, 463
main_17:          jal          t1, 0f
0:                jal          ra, 3f
1:                jal          ra, 5f
2:                jal          ra, 17f
3:                jal          ra, 8f
4:                jal          s5, 11f
5:                jal          ra, 13f
6:                jal          ra, 4b
7:                jal          ra, 14f
8:                jal          ra, 12f
9:                jal          ra, 16f
10:               jal          ra, 15f
11:               jal          t1, 9b
12:               jal          s4, 6b
13:               jal          ra, 2b
14:               jal          ra, 10b
15:               jal          t1, 1b
16:               jal          t1, 7b
17:               slti         a7, ra, 1131
                  sra          tp, t3, a3
                  srli         ra, s0, 13
                  bne          s10, s5, 2456f
2440:             sltu         gp, sp, s9
                  xor          ra, s8, gp
                  and          s11, a6, a7
                  blt          s1, zero, 2448f
                  slti         s11, zero, -1348
                  blt          a5, s4, 2447f
main_21:          jal          t1, 16f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          t1, 10f
3:                jal          t1, 14f
4:                jal          ra, 5f
5:                jal          ra, 21f
6:                jal          t1, 25f
7:                jal          ra, 18f
8:                jal          t1, 6b
9:                jal          ra, 15f
10:               jal          ra, 24f
11:               jal          ra, 9b
12:               jal          t1, 19f
13:               jal          s1, 1b
14:               jal          tp, 2b
15:               jal          t1, 12b
16:               jal          t1, 20f
17:               jal          gp, 22f
18:               jal          ra, 13b
19:               jal          t1, 3b
20:               jal          ra, 17b
21:               jal          ra, 23f
22:               jal          s6, 7b
23:               jal          ra, 11b
24:               jal          sp, 8b
25:               or           zero, a4, tp
                  beq          t2, s8, 2465f
2447:             sub          gp, t6, s0
2448:             or           a0, a2, a2
2449:             sltiu        a2, a1, -940
                  nop
                  and          a6, a3, s3
                  beq          t5, s2, 2460f
                  bne          s2, s3, 2462f
                  srl          s7, t5, sp
                  sra          s0, zero, ra
2456:             sll          s9, a7, s5
                  blt          s1, s0, 2466f
                  beq          ra, tp, 2470f
                  add          t5, s8, a3
2460:             slli         s2, s4, 21
                  xori         t5, s10, -633
2462:             slti         s7, a5, -736
                  auipc        a1, 158263
                  srli         s0, t1, 22
2465:             slt          a5, a0, gp
2466:             bgeu         s6, s8, 2470f
                  bge          a5, gp, 2474f
                  add          s10, s8, t4
                  sll          s6, t6, a4
2470:             sltu         sp, t6, t5
                  srai         a2, s1, 14
main_1:           jal          t1, 9f
0:                jal          t1, 8f
1:                jal          t1, 5f
2:                jal          s1, 16f
3:                jal          ra, 21f
4:                jal          sp, 13f
5:                jal          ra, 2b
6:                jal          t1, 10f
7:                jal          ra, 14f
8:                jal          ra, 7b
9:                jal          ra, 17f
10:               jal          ra, 1b
11:               jal          t1, 15f
12:               jal          t4, 11b
13:               jal          ra, 0b
14:               jal          sp, 3b
15:               jal          ra, 6b
16:               jal          ra, 20f
17:               jal          s0, 12b
18:               jal          ra, 22f
19:               jal          ra, 18b
20:               jal          a2, 4b
21:               jal          t1, 19b
22:               sub          ra, s1, a6
                  srl          a5, s6, s4
                  ori          a5, a2, 1894
2474:             andi         s8, ra, 1924
                  bge          s0, a1, 2477f
                  bgeu         ra, a4, 2489f
2477:             lui          t6, 90804
                  bne          s8, s11, 2479f
2479:             sltiu        s7, a6, 1453
                  bgeu         s9, a1, 2488f
                  or           s0, s0, t2
                  and          s8, zero, s6
                  xori         s9, t2, 279
                  sltu         t4, t1, s0
                  auipc        s5, 916563
                  slt          a0, sp, s9
                  srai         gp, t1, 13
2488:             sra          t1, s3, s2
2489:             srai         t5, zero, 1
                  srai         s11, s6, 15
                  andi         s2, a4, 1497
                  lui          s4, 691086
                  xor          s2, t1, s4
                  slt          tp, a6, t2
                  bne          t3, sp, 2497f
                  bltu         t0, tp, 2504f
2497:             srl          s0, a6, t3
                  beq          s8, zero, 2509f
                  sltu         t6, t1, t0
                  lui          a2, 314229
                  beq          s11, a2, 2518f
                  bne          s1, a3, 2517f
                  sltiu        s6, a1, -707
2504:             slli         s9, t2, 18
                  bltu         a7, ra, 2519f
                  sltu         s0, tp, a6
                  srli         s3, s7, 9
                  lui          s5, 210515
2509:             andi         s2, a3, 819
                  bgeu         ra, a7, 2521f
                  and          a6, a4, s10
                  or           ra, s6, a6
                  add          t1, s0, t6
                  sra          s9, a6, s9
                  sub          a5, s0, zero
                  sltiu        s7, t6, -1426
2517:             xori         s8, t2, -1017
2518:             slli         zero, t1, 13
2519:             addi         a1, a5, -463
                  add          t1, zero, t3
2521:             sra          s6, t4, s1
                  sll          a6, t2, t4
                  xor          a5, t2, s3
                  addi         gp, t1, 1510
                  bgeu         t1, a0, 2544f
                  slti         t4, s11, -1599
                  add          s2, s2, s9
                  xori         tp, t4, 859
                  srai         s4, s11, 4
                  slli         s7, sp, 26
                  xori         zero, s5, -718
                  sra          gp, gp, a3
                  or           a7, s8, s8
                  bltu         tp, t4, 2552f
                  slt          s7, s9, tp
                  auipc        s8, 194473
                  nop
                  srai         s3, a1, 1
                  srl          t6, t5, t0
                  slt          t1, gp, s1
                  xori         sp, t6, 546
                  or           t6, a6, s5
                  bgeu         a0, a3, 2555f
2544:             addi         s6, t6, 1602
                  slli         gp, t6, 20
                  nop
                  bgeu         a7, a1, 2555f
                  nop
                  slti         s9, a1, 19
                  srli         a7, a6, 22
                  srl          s4, a1, t5
2552:             sra          s6, s2, a3
                  lui          a0, 339439
                  lui          a1, 65475
2555:             srai         a6, s0, 18
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            andi         sp, a2, 1642
                  auipc        s11, 619728
                  slt          a2, s11, a5
                  nop
                  addi         a3, a3, -40
                  sw           t1, 4(a3)
                  xori         a2, tp, 1361
                  slli         s2, s2, 29
                  slti         s10, s0, -667
                  srli         t2, ra, 26
                  sltiu        s7, a4, 852
                  slt          t2, ra, a6
                  andi         s8, s9, -1997
                  sltiu        tp, a7, -1642
                  or           tp, a5, t3
                  xor          a2, t6, s5
                  sub          a6, s4, s2
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  or           s1, a2, sp
                  lui          t3, 428289
                  add          t6, s4, a7
                  auipc        s6, 745667
                  nop
                  sub          gp, t6, a5
                  sltu         gp, s10, a3
                  addi         s0, s2, -426
                  blt          zero, a7, 16f
                  sltiu        s2, s1, -364
                  srai         s9, a5, 0
                  bgeu         s0, s9, 16f
                  blt          a1, s11, 16f
                  slti         sp, a0, 1395
                  sra          s11, t6, s8
                  srl          a2, s4, s4
16:               slt          a0, s3, a4
                  lw           t1, 4(a3)
                  slti         ra, t6, -78
                  and          zero, s11, a0
                  sll          tp, t4, s2
                  addi         a3, a3, 40
                  ori          s2, sp, 1365
                  xor          s8, a4, t2
                  add          t4, t0, zero
43:               addi x18, x6, 1
43:               jalr x18, x18, 0
sub_3:            sub          s7, tp, a0
                  addi         a3, a3, -8
                  add          zero, t0, s8
                  xori         s2, t1, 113
                  sw           t1, 4(a3)
                  sra          a0, t6, a6
                  andi         a5, t2, 1606
                  sltu         a2, sp, gp
                  or           s11, a5, s9
                  srai         a5, tp, 16
sub_3_0:          jal          t1, 9f
0:                jal          t1, 2f
1:                jal          tp, 14f
2:                jal          gp, 4f
3:                jal          t1, 13f
4:                jal          ra, 23f
5:                jal          ra, 26f
6:                jal          ra, 19f
7:                jal          t1, 0b
8:                jal          t1, 5b
9:                jal          ra, 10f
10:               jal          s4, 27f
11:               jal          ra, 20f
12:               jal          ra, 17f
13:               jal          ra, 11b
14:               jal          s3, 21f
15:               jal          ra, 12b
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               jal          ra, 28f
19:               jal          ra, 8b
20:               jal          ra, 16b
21:               jal          ra, 22f
22:               jal          ra, 6b
23:               jal          t1, 15b
24:               jal          ra, 18b
25:               jal          ra, 7b
26:               jal          t1, 24b
27:               jal          ra, 25b
28:               xori         s5, s10, -1795
                  xori         zero, t1, -67
                  slli         zero, t4, 10
                  addi         t5, a7, 1536
                  blt          t1, s1, 16f
                  sll          s11, s5, s3
                  xor          t4, t6, s11
                  srli         s8, a1, 7
                  srl          sp, ra, t2
                  auipc        sp, 355548
                  and          t1, t1, t3
                  sltiu        t6, s7, -1333
                  xori         tp, s7, -1224
                  bne          s8, a1, 30f
                  sltu         t4, tp, gp
                  bgeu         a4, t5, 33f
                  xor          sp, a3, s4
16:               auipc        s1, 255405
                  bne          zero, a0, 28f
                  slti         s3, t0, -1913
                  srai         s3, ra, 27
                  srli         t4, a2, 15
                  slt          t5, a2, a7
                  sltu         zero, s9, a0
                  slti         s7, t3, 1125
                  ori          gp, a3, 64
                  xor          t1, s10, s9
                  add          s2, ra, a4
                  sra          a0, a1, s3
28:               bne          s0, s10, 38f
                  srli         s6, t1, 28
30:               or           a1, a0, t2
                  nop
                  andi         s0, s3, -1954
33:               bge          s8, s11, 34f
34:               add          a7, a7, a5
                  add          s7, t1, s7
                  bge          s8, t0, 53f
                  addi         sp, s11, -607
38:               sub          s9, gp, a3
                  addi         s1, t0, 1124
                  andi         gp, t1, 1258
                  and          a2, t4, s3
                  srl          s2, gp, s10
                  bge          s1, s11, 44f
44:               xor          s10, a4, t4
                  and          zero, t6, s7
                  lui          a2, 229141
                  andi         s10, s10, 1087
                  bne          sp, s0, 56f
                  xori         t6, s3, 1907
                  srai         s7, t0, 13
                  sltu         a1, a3, s1
                  srl          a7, a7, a4
53:               addi         s10, t6, 1885
                  bltu         a1, s9, 60f
                  add          t3, ra, a7
56:               addi         s5, ra, -868
                  xori         s5, t4, -1341
                  srai         a7, s7, 6
                  ori          a7, tp, 629
60:               addi         s7, tp, 1187
                  srai         s2, tp, 2
                  sra          t6, s11, t4
                  slt          gp, a6, a0
                  ori          t3, t5, -1018
                  add          s1, a5, s10
                  bltu         a6, ra, 67f
67:               nop
                  lw           t1, 4(a3)
                  srai         a6, gp, 17
                  sltiu        tp, t5, -37
                  and          zero, t0, gp
                  addi         a3, a3, 8
                  sltu         s4, s5, tp
114:              addi x28, x6, 1
114:              jalr x28, x28, 0
sub_2:            ori          t2, t2, -1691
                  xori         a1, s2, -63
                  bge          s10, s8, sub_2_stack_p
                  or           s7, s9, a2
                  slti         s6, s9, 123
sub_2_stack_p:    addi         a3, a3, -60
                  lui          s11, 44515
                  sw           t1, 4(a3)
                  slti         s1, s10, -1565
                  sll          s3, gp, s2
                  addi         s5, ra, -401
                  la           t3, sub_4
                  slt          s5, s5, t3
                  sub          s4, s8, ra
                  slti         s7, s2, -1620
                  addi         ra, a4, -1143
                  addi         t3, t3, -406
                  add          s0, s2, ra
                  bne          a1, tp, sub_2_j5 #branch to jump instr
                  slti         a2, ra, 1284
sub_2_j5:         jalr         t1, t3, 406 #jump sub_2 -> sub_4
sub_2_0:          jal          t1, 8f
0:                jal          ra, 6f
1:                jal          ra, 0b
2:                jal          t1, 11f
3:                jal          t1, 4f
4:                jal          ra, 5f
5:                jal          t1, 10f
6:                jal          s9, 9f
7:                jal          s9, 1b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          ra, 7b
11:               sltu         s1, s3, s6
                  and          s0, zero, s7
                  xor          a2, t3, s0
                  slt          a1, t2, s9
                  srli         a6, ra, 25
                  add          s5, t4, s6
                  srl          a5, s4, s11
                  blt          a3, t0, 7f
7:                sltu         t6, t1, s4
                  lui          s1, 653462
                  slli         ra, s2, 12
                  srl          s6, s1, s0
                  beq          s6, t6, 12f
12:               srai         s4, t1, 23
                  beq          zero, a6, 15f
                  slt          a0, a2, s3
15:               bltu         s3, s0, 32f
                  slli         t1, t6, 3
                  sub          s6, s0, s6
                  nop
                  sub          a1, t1, s9
                  sub          a5, a2, t4
                  srli         t2, ra, 18
                  beq          gp, a5, 35f
                  sra          gp, a3, t4
                  addi         t5, ra, -1495
                  bge          zero, s7, 27f
                  nop
27:               or           t5, sp, s0
                  xori         a7, s6, -1176
                  srli         a1, a1, 19
                  and          a1, t4, t0
                  lui          s6, 23731
32:               sltu         s10, s7, t2
                  auipc        a0, 268607
                  srli         s2, t2, 8
35:               sll          s2, t0, a0
                  beq          s0, s0, 49f
                  beq          a5, t5, 56f
                  xor          s1, t5, ra
                  bltu         s5, s6, 52f
                  or           a6, t6, s9
                  addi         s7, gp, -188
                  xori         s4, t6, 1078
                  or           tp, a0, s3
                  srli         a2, a0, 31
                  sll          t5, t2, t4
                  sltiu        a2, s5, -1768
                  bne          s10, s5, 58f
                  sra          t1, t2, s0
49:               blt          tp, s11, 50f
50:               add          sp, t3, t2
                  sra          s8, s2, a7
52:               xori         a7, t2, 1276
                  or           s2, s1, a4
                  and          zero, gp, tp
                  xor          t1, s1, s8
56:               srai         t4, a5, 22
                  lui          s3, 298608
58:               srl          s9, zero, zero
                  srl          s10, t6, s4
                  slt          s10, s2, zero
                  srli         t6, a1, 10
                  bge          s5, sp, 71f
                  srai         a1, a0, 15
                  srl          s6, a1, a7
                  slt          s8, a6, s4
                  bgeu         a2, t1, 78f
                  sll          s3, zero, s0
                  bne          s2, t4, 74f
                  xori         t1, t1, 1295
                  ori          s0, t3, 247
71:               slt          s7, a5, ra
                  srai         t5, a7, 21
                  or           a0, ra, a2
74:               bltu         s8, s0, 81f
                  blt          zero, t3, 85f
                  auipc        tp, 830049
                  srli         a5, s11, 31
78:               lui          t4, 539762
                  bgeu         a4, s8, 94f
                  auipc        s8, 776060
81:               bltu         ra, s0, 86f
                  nop
                  xori         s10, t4, -141
                  bge          s5, s8, 91f
85:               slli         ra, t6, 19
86:               srli         ra, a5, 10
                  bgeu         tp, s9, 90f
                  andi         zero, t2, -1717
                  and          t6, t2, t4
90:               or           s11, ra, t6
91:               xori         t2, s0, -316
                  lui          ra, 748955
                  bne          t4, s9, 95f
94:               and          ra, t4, a5
95:               or           s7, t0, s11
                  lw           t1, 4(a3)
                  and          s7, s4, gp
                  slti         a2, t6, -1272
                  addi         a3, a3, 60
                  sub          zero, s11, a1
                  or           s1, s10, s10
                  sra          t4, a6, s8
                  sll          s10, t0, t6
                  slli         t6, a5, 12
                  sltiu        s4, s4, 536
                  slti         s5, t3, -622
141:              addi x25, x6, 0
141:              jalr x25, x25, 0
sub_5:            slli         a6, s9, 0
                  and          s7, a3, sp
                  addi         a3, a3, -60
                  add          t4, zero, s0
                  sw           t1, 4(a3)
                  and          t6, s7, t3
                  addi         s3, s11, 166
                  sltu         a6, a5, s7
sub_5_1:          jal          t1, 14f
0:                jal          t1, 8f
1:                jal          ra, 11f
2:                jal          tp, 6f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          sp, 16f
6:                jal          ra, 3b
7:                jal          ra, 5b
8:                jal          t1, 9f
9:                jal          ra, 15f
10:               jal          s7, 12f
11:               jal          ra, 0b
12:               jal          ra, 18f
13:               jal          t1, 1b
14:               jal          ra, 17f
15:               jal          ra, 4b
16:               jal          ra, 13b
17:               jal          ra, 2b
18:               xori         t2, s11, 752
sub_5_2:          jal          t1, 0f
0:                jal          sp, 14f
1:                jal          ra, 20f
2:                jal          ra, 8f
3:                jal          t6, 16f
4:                jal          s11, 10f
5:                jal          gp, 17f
6:                jal          ra, 1b
7:                jal          s4, 5b
8:                jal          s11, 23f
9:                jal          gp, 19f
10:               jal          ra, 22f
11:               jal          ra, 12f
12:               jal          gp, 3b
13:               jal          s5, 18f
14:               jal          ra, 2b
15:               jal          s4, 13b
16:               jal          t1, 24f
17:               jal          a6, 6b
18:               jal          ra, 11b
19:               jal          ra, 7b
20:               jal          t1, 4b
21:               jal          ra, 9b
22:               jal          s8, 15b
23:               jal          ra, 21b
24:               or           t5, a6, s1
sub_5_0:          jal          t1, 6f
0:                jal          tp, 9f
1:                jal          ra, 11f
2:                jal          tp, 10f
3:                jal          t1, 1b
4:                jal          ra, 3b
5:                jal          a5, 4b
6:                jal          ra, 8f
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          ra, 12f
11:               jal          ra, 7b
12:               and          s3, t3, t1
sub_5_3:          jal          t1, 28f
0:                jal          t1, 27f
1:                jal          s4, 20f
2:                jal          ra, 11f
3:                jal          t4, 24f
4:                jal          ra, 12f
5:                jal          t1, 22f
6:                jal          t1, 5b
7:                jal          ra, 6b
8:                jal          s2, 21f
9:                jal          t1, 0b
10:               jal          tp, 13f
11:               jal          a2, 9b
12:               jal          ra, 16f
13:               jal          gp, 26f
14:               jal          ra, 25f
15:               jal          ra, 1b
16:               jal          ra, 8b
17:               jal          gp, 15b
18:               jal          sp, 3b
19:               jal          ra, 7b
20:               jal          t1, 2b
21:               jal          t3, 19b
22:               jal          t2, 29f
23:               jal          t3, 17b
24:               jal          s4, 30f
25:               jal          ra, 4b
26:               jal          ra, 18b
27:               jal          ra, 10b
28:               jal          t1, 14b
29:               jal          tp, 23b
30:               auipc        s11, 537594
                  addi         tp, a3, 1714
                  sra          s9, a6, s5
                  andi         t6, t2, -137
                  xori         s10, t3, -1547
                  sltu         t5, s7, gp
                  srli         t4, s5, 27
                  lui          s3, 526340
                  srli         ra, s4, 8
                  bge          s9, s11, 18f
                  addi         s2, a6, 1581
                  nop
                  bne          s9, s0, 21f
                  srl          t3, s5, t3
                  beq          a4, s0, 27f
                  lui          s9, 466314
                  xori         s9, a6, 2007
                  bltu         a5, gp, 31f
                  auipc        t6, 966462
18:               andi         a7, a5, -1158
                  srai         s8, s11, 0
                  ori          tp, t2, 1589
21:               bltu         a3, s1, 34f
                  blt          a6, s3, 27f
                  ori          a6, a2, -321
                  auipc        t3, 269482
                  sra          sp, s8, a2
                  srai         zero, tp, 10
27:               sra          t2, s5, s11
                  andi         a0, a7, 1532
                  srai         a1, tp, 29
                  bgeu         s11, a6, 31f
31:               bgeu         tp, s10, 42f
                  bge          t1, t2, 52f
                  sltiu        t4, a1, -221
34:               sltiu        t5, a1, 1107
                  bltu         t6, a5, 53f
                  srai         sp, s9, 12
                  lui          t2, 1011241
                  slli         a7, a5, 17
                  slti         s4, zero, 1909
                  add          zero, sp, s7
                  nop
42:               bgeu         gp, ra, 48f
                  lui          t2, 414626
                  and          a1, t4, zero
                  bltu         s0, zero, 58f
                  sltu         t2, a1, t0
                  add          s0, s8, t1
48:               slti         s2, s4, 1089
                  sra          tp, a3, a3
                  ori          s5, a2, 169
                  bne          tp, t2, 71f
52:               add          a1, s8, a7
53:               sra          s0, a5, s3
                  addi         a2, a5, -246
                  xori         a1, t1, -857
                  auipc        t1, 212172
                  lui          tp, 1014516
58:               srl          t3, s4, s10
                  bne          a7, a5, 69f
                  add          s3, s6, t0
                  sra          s2, a0, zero
                  sll          s7, s3, t0
                  srl          s1, s8, sp
                  bge          t1, t5, 77f
                  lui          tp, 605319
                  slt          s4, s7, t4
                  xori         s8, s10, 315
                  slt          s3, ra, s5
69:               slti         t4, a2, -1724
                  srai         s1, a7, 3
71:               sub          s5, s2, a4
                  beq          gp, t1, 77f
                  and          a0, s7, s3
                  sub          s7, t2, s4
                  sub          sp, s2, a7
                  bge          a4, gp, 83f
77:               slli         zero, ra, 19
                  xori         s10, zero, -1146
                  add          s9, s2, sp
                  nop
                  srai         s5, t4, 17
                  srl          a2, ra, s11
83:               bne          t6, zero, 103f
                  slti         s10, s9, 140
                  bgeu         t0, t3, 102f
                  blt          a7, s10, 100f
                  bltu         a2, s2, 102f
                  addi         s2, a1, -1760
                  sub          s5, s5, a3
                  auipc        s5, 562870
                  slli         a2, a6, 19
                  slti         ra, gp, 884
                  sltiu        t2, a1, 541
                  sll          t3, s3, s10
                  nop
                  srl          s2, s1, t3
                  blt          t0, t6, 101f
                  bne          s2, t0, 107f
                  slti         s2, s5, -1710
100:              xor          s8, s6, s5
101:              srai         s3, s4, 17
102:              beq          s5, ra, 107f
103:              beq          s9, a1, 115f
                  sll          t3, a0, s3
                  auipc        s8, 108077
                  ori          a2, s0, 84
107:              and          zero, gp, s7
                  slt          s8, a7, a7
                  bne          a2, s5, 115f
                  xor          s11, s8, s11
                  slli         a7, s3, 21
                  srai         s4, t4, 16
                  ori          t5, s11, 54
                  blt          s0, a7, 131f
115:              srai         a5, s3, 16
                  auipc        s7, 310778
                  beq          s0, a4, 133f
                  sub          a6, t2, t0
                  sra          a0, ra, a5
                  srai         s1, s4, 24
                  slli         sp, tp, 1
                  blt          s11, s8, 140f
                  andi         s7, a1, -1717
                  srl          s6, a5, s11
                  sub          ra, a0, s4
                  add          a5, a2, s9
                  sltiu        t5, s6, 345
                  lui          a7, 6650
                  or           s6, a7, ra
                  andi         t2, s0, 1988
131:              sltu         gp, tp, gp
                  bne          a7, t5, 146f
133:              auipc        s8, 314442
                  xori         gp, s11, 2034
                  blt          t6, s3, 140f
                  nop
                  bge          a6, t3, 143f
                  sltiu        s8, a6, -1255
                  add          s6, ra, s11
140:              beq          a5, a4, 145f
                  blt          zero, t5, 161f
                  bltu         s11, a0, 156f
143:              and          t4, t1, s8
                  xor          sp, t0, a2
145:              andi         tp, s11, 1762
146:              sltu         s2, zero, t1
                  sltu         t2, s4, s6
                  beq          ra, a3, 153f
                  beq          a2, a1, 160f
                  bgeu         a1, s4, 164f
                  bne          a5, s9, 152f
152:              ori          t6, s3, 102
153:              sll          zero, t1, t5
                  lui          ra, 1026077
                  sltu         a0, s2, a4
156:              and          s0, s6, s11
                  srli         a6, s4, 3
                  sltu         s1, t6, s10
                  xor          a6, s5, t3
160:              bgeu         gp, a6, 166f
161:              sub          t2, s8, sp
                  beq          t4, t0, 176f
                  auipc        tp, 191072
164:              bltu         t4, s4, 184f
                  auipc        t5, 479190
166:              bltu         s8, s3, 179f
                  slti         gp, s5, -523
                  bne          s11, s5, 183f
                  lui          s9, 255605
                  lui          s5, 947248
                  lui          a5, 145999
                  sll          s4, s10, a3
                  auipc        s3, 125423
                  sltu         t2, s6, s9
                  auipc        t2, 81900
176:              slli         a7, t5, 29
                  bgeu         ra, gp, 187f
                  sltu         s8, s11, t6
179:              auipc        s1, 722549
                  slti         s9, a1, 1526
                  sltiu        t3, a6, 11
                  bgeu         s6, s6, 195f
183:              add          t2, a7, s11
184:              sll          s0, a1, a5
                  auipc        s0, 328797
                  sub          a2, s2, sp
187:              lui          a5, 972050
                  slti         a6, a6, -1652
                  xori         a7, s8, -619
                  srl          a5, a3, t5
                  nop
                  addi         t4, a6, 92
                  or           s3, t2, t4
                  bne          gp, t5, 204f
195:              bgeu         s9, s5, 208f
                  slli         a6, t1, 27
                  sub          t3, t4, s4
                  slli         zero, a2, 13
                  auipc        s11, 818131
                  srl          s5, a3, t2
                  slti         t1, s7, -1699
                  addi         ra, s6, -1290
                  addi         ra, s4, 274
204:              nop
                  xor          t1, t4, s5
                  bgeu         s3, t3, 222f
                  beq          gp, gp, 214f
208:              or           a7, zero, s2
                  nop
                  sra          a7, a2, s4
                  slli         a7, t3, 12
                  lui          s6, 771754
                  slti         s2, t1, 581
214:              srl          a0, s2, t6
                  blt          sp, zero, 219f
                  addi         s9, a6, -1231
                  slti         s3, a3, 1641
                  sll          t4, s3, t3
219:              srli         t6, a5, 17
                  bge          s0, a7, 237f
                  sltu         a5, s1, s5
222:              srli         sp, a3, 19
                  lui          zero, 977445
                  addi         a6, s1, 1661
                  xor          s1, t5, t3
                  bgeu         sp, a5, 236f
                  lui          t1, 438513
                  blt          t4, s4, 240f
                  add          ra, t1, t2
                  nop
                  sltu         s5, a5, tp
                  sltiu        gp, s9, -25
                  andi         zero, s4, 1396
                  sub          s6, zero, t0
                  or           s7, t4, s3
236:              sltu         s6, s4, a1
237:              addi         s7, a3, 1782
                  bge          s2, a0, 242f
                  bge          a0, gp, 242f
240:              srli         t3, a7, 8
                  or           t2, s9, zero
242:              slt          s2, s7, s11
                  and          gp, a6, t3
                  lw           t1, 4(a3)
                  addi         a3, a3, 60
                  xor          s5, s4, s0
                  srl          t6, tp, a5
                  sll          s3, s1, s4
                  slti         sp, ra, -666
350:              addi x24, x6, 1
350:              jalr x24, x24, 0
sub_4:            ori          t3, t2, -1120
                  addi         a3, a3, -28
                  sub          t4, s5, s4
                  ori          s10, t3, -1424
                  andi         t6, s10, 449
                  sltu         a2, t2, a5
                  sra          ra, s0, t3
                  sltu         t3, s2, t3
                  auipc        gp, 917136
                  sw           t1, 4(a3)
                  xor          a0, s5, a2
                  slti         zero, t3, 1730
                  or           s8, s0, s1
                  sub          gp, t1, s1
                  srai         tp, s11, 27
                  slti         zero, t3, 1377
                  nop
                  xor          s3, s8, t2
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  sub          zero, t1, t2
                  lui          s6, 682883
                  srl          t6, a6, a6
                  srai         t3, s11, 4
                  add          a7, s10, s1
                  beq          gp, s4, 14f
                  nop
                  sub          s10, s8, a7
                  slt          tp, sp, tp
                  srl          ra, a1, tp
                  srl          a0, t3, a6
                  sltu         s9, t3, s6
                  bgeu         s8, a0, 17f
                  bltu         s4, t3, 17f
14:               slt          s10, zero, t5
                  sltiu        s3, t6, 286
                  andi         zero, t2, -122
17:               sub          s8, s6, sp
                  slli         s0, a3, 18
                  add          s0, gp, s4
                  lw           t1, 4(a3)
                  xor          sp, a2, s11
                  addi         a3, a3, 28
                  xori         s6, s3, 163
                  xori         s10, a2, -590
                  nop
45:               addi x6, x6, 1
45:               jalr x6, x6, 0
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
.word 0x0588e2f4, 0x0b0e52c7, 0x93a153aa, 0x0847aa17, 0xe0250796, 0x5895fbfa, 0xe6338682, 0xe6c79480
.word 0x94f763ba, 0x3d0673ae, 0xa7cd6a07, 0xd169f1a7, 0xca5f52cb, 0x2721ea6e, 0x74d2942a, 0xa23cad3a
.word 0x6b76d68a, 0x1cffda39, 0x6567d643, 0x73cb77b1, 0xcdb4a590, 0x44b8024d, 0xdc30dda7, 0x9827c9ca
.word 0x76a1133f, 0x104b8082, 0x5dc1e6bb, 0x8bcb9334, 0x403d34f8, 0x87e4a619, 0xae1f1370, 0xcf73e157
.word 0xf9d954f9, 0x0bd2e1b6, 0x5d5db09c, 0x2a14fa81, 0x70e7b54c, 0x939621dc, 0x210ec269, 0xe3e32102
.word 0xc638e172, 0x64d52f2e, 0x6f144d4b, 0x891d6dfd, 0x7222a51d, 0x8606447c, 0xac25f2df, 0x2d46747e
.word 0x5be52738, 0xf6b3f224, 0xe3641352, 0x9ddd06e8, 0xafdd2d39, 0x5a9e56e6, 0x77dc7570, 0xc4b22e0d
.word 0xb379321a, 0x7b474f8f, 0xdc47d408, 0x81510d24, 0x0ef03b24, 0x8b833781, 0x9d5ec3ea, 0xd2248f80
.word 0x78c21344, 0x32f311b6, 0xa572d848, 0xa65cd0cd, 0x4ec65a37, 0xb36b7e6a, 0xac6cec1d, 0xa95349dc
.word 0x117d2925, 0xeaa00d0f, 0x1298376f, 0x3d83f0f8, 0x7b76dcb4, 0x2295ea1e, 0xf3c77693, 0xae184a62
.word 0xe5d1b627, 0xe710213e, 0xf1deb964, 0xc0cfd424, 0x985752f1, 0xc0517316, 0x582ff7fb, 0x3a38df13
.word 0x80d0401b, 0xb38e2634, 0x85b13c9a, 0x66c0d252, 0x916b797e, 0xa1c1dce8, 0x7c096dfe, 0x42616351
.word 0x752f39b5, 0xdf9e4bec, 0x9fa7d629, 0x19509182, 0x65c44df9, 0x6ce61ed8, 0xdbbbf754, 0x22c1ffd9
.word 0xe05d65d9, 0x096b68f3, 0xa9daef9c, 0x9841d6d5, 0x7686244f, 0x5100de72, 0x76965f2f, 0xb6b67a6a
.word 0xf63c351c, 0x47c11f5a, 0x03c3f471, 0x845014d9, 0x39e81376, 0xa972d815, 0x99e00da6, 0xc1591833
.word 0xc8d3a986, 0x70fe3f41, 0xcd49778d, 0x44af0e23, 0xe4fe3e1c, 0x6eeedbe7, 0x3f737d3d, 0x6cfea7ac
.word 0x62e0a04e, 0x9fdcfd04, 0x8f1e7fd5, 0xc847eee1, 0x3bd0ea5d, 0xa63f7fd2, 0x7bf20f69, 0x0750ff22
.word 0x36e2edab, 0x940a2e45, 0x1d956b55, 0x51691861, 0xce57b12f, 0x50cd9e49, 0x0377b810, 0xb8c57765
.word 0x570ff286, 0x346cb09a, 0x84647c6d, 0xbeebaef6, 0x40156db3, 0xcc037332, 0x561db331, 0xb13f81ad
.word 0xb5a3b642, 0x523ba119, 0x63e7c557, 0x5a1630fb, 0x4fdd1076, 0x7c33f1dc, 0xf6f14d95, 0x7caa79b0
.word 0x9f51a170, 0x10231f9e, 0x7aa8baea, 0x288661d6, 0x5dc0e1c9, 0x93cf340e, 0xe9e0a0e9, 0x7a2ac787
.word 0x45421f26, 0x1a129a8d, 0x051dee85, 0x08e25793, 0x70e1e601, 0x4838e309, 0xbe84b65d, 0x165552dc
.word 0x04bffca7, 0xafaa3eaa, 0x0c92d043, 0x766fa732, 0x37028134, 0x25638630, 0xc3835457, 0xa2c91f52
.word 0xdfda0d66, 0xbe745b6c, 0x373a288c, 0x55fdc4d6, 0xe4a4b64e, 0xda5e291d, 0xe34531d1, 0xbffffd31
.word 0x0fd34fef, 0x3cc49766, 0x51a07f88, 0x595f51c6, 0x6f756d6e, 0x6884a278, 0xed68cbb4, 0x34798f4b
.word 0xd92d6fde, 0x882b158a, 0x224f23d2, 0xb6cd8014, 0x673a5410, 0xa84ef4ce, 0xbee421f0, 0x3df42f41
.word 0xb17e6b0c, 0x7f8579d0, 0x7586d062, 0xc9dd928a, 0x273316ac, 0xc759028e, 0x1b306095, 0x4ce0f86d
.word 0x8d9fbe77, 0x4d42983f, 0x82ba6c80, 0xae900a93, 0x87fb7830, 0x5bedf6e6, 0x7e055efa, 0x8fc4b6cf
.word 0xfe5513a5, 0x49e950bf, 0x5574088a, 0x22b021a5, 0xef1abd90, 0x5040fab1, 0xb5635f46, 0x92fd8bb1
.word 0x4bf7be6c, 0xc5e050df, 0x891975f7, 0xa8631a82, 0x5863e277, 0x976988c8, 0x3a1e0a54, 0xe5a9d36e
.word 0x4a97dc09, 0x4c086ec8, 0xde601d2a, 0x5631efb5, 0xb48927b7, 0x1c9c9034, 0xc91c1ded, 0x712f9ad8
.word 0x2bbb9e9a, 0x9de5c0de, 0x4d4371d6, 0x44afcd4d, 0x3c45cff8, 0x0e0a36cf, 0x5f44242f, 0x492424e4
.word 0xa1000e88, 0xa5def7f7, 0x55c48d9f, 0xf40c7acc, 0xc2405810, 0x0b1d3fe2, 0x6ca6b791, 0xcbe400a0
.word 0x914678a7, 0x38c41fa7, 0x384366bd, 0xeb0e76e8, 0x0aaa4411, 0x004430ad, 0x772b4939, 0xcb6f3b05
.word 0x55684bb5, 0x9c8a04f4, 0x9a3cd7b9, 0xd598960e, 0xae634ef9, 0x8d2a550f, 0x2503cebd, 0xb27e7a14
.word 0x149d3a17, 0x68b2aa60, 0x5fd9adc7, 0x5488b765, 0xc9e36ef9, 0x174b1d1d, 0xcd6634e9, 0xe1ba9c26
.word 0x7cd5fc9a, 0x638483ae, 0xe065f201, 0xb2cd03e9, 0x2a5a84bc, 0x0049521c, 0xbd5d6983, 0xf706ce76
.word 0x77ed13aa, 0x7976a60c, 0x009c2642, 0xc8d64fe6, 0x5a452d58, 0x39907848, 0xb9a38100, 0x88021b2f
.word 0x1d4de850, 0x6451f1cf, 0x77238d5e, 0xf927bdff, 0x515c41bf, 0x233d61ce, 0x68e9efc1, 0xecf5efe9
.word 0x602559f7, 0x41832491, 0x3ef1e963, 0x2abe6c00, 0xd85011a4, 0xebe4c45c, 0x5b61a191, 0x26a86154
.word 0xf5d0e9c9, 0x66d0879e, 0x238a1926, 0x0cf64f45, 0x1a91f33f, 0x9210f610, 0xcad8cb51, 0x294a1a5c
.word 0x6ef19afd, 0x2dba45c9, 0xb3748b65, 0x7474dd04, 0x465c9b56, 0x2b271f5e, 0xb0f8c08b, 0x3a20a6f9
.word 0xcb3888a2, 0xa92d3087, 0xb3746372, 0x8da04035, 0xd0c29e74, 0x87a943f4, 0xa447adb2, 0x2b62a5b4
.word 0x79697958, 0xeb054a8f, 0x1c019b6c, 0xfc08e8a0, 0x7b75ed23, 0x2b68f733, 0x1de61dde, 0xb489cf61
.word 0x405fc711, 0xe81c4bce, 0x7e3d22fd, 0x43cf1cf7, 0x391697ff, 0x637b1239, 0x24c17b27, 0xf3da5387
.word 0x6fa62bc1, 0xa8193e56, 0x11888fa1, 0x15ff7bb3, 0x0b2d2b70, 0x48cc25f9, 0xab80a7ca, 0x30631b2f
.word 0xa9010182, 0xc3b92e36, 0x81ef981c, 0x9b2fb31e, 0x27e3ade9, 0xd4417dbb, 0x3e34f97a, 0x9e77ca40
.word 0x4ce6225e, 0xb2e75653, 0x690eec14, 0x233b4715, 0x438b561f, 0x930d62b0, 0x47afbe38, 0x4a53075b
.word 0x705367ec, 0x5a500ac6, 0x44b0e6ad, 0x7e9ec8ab, 0x0b869fbf, 0x641cfa99, 0xc4747597, 0x3622ae2b
.word 0x6d5f53e6, 0xfce1b940, 0x483140fb, 0xdf0cfd89, 0x169f8f2f, 0x4be687ad, 0x49c1406c, 0x8ef20200
.word 0x6f41c75a, 0xbf7e14a3, 0x6879869d, 0x7fc07854, 0xf4817c27, 0x14e2152b, 0xaa32d6b3, 0xb03c74b2
.word 0x68ca52a0, 0xd90cf5b9, 0x01beb0de, 0x6bb3e70e, 0xb306e933, 0x5c2bfe6b, 0x27212b4e, 0xa061b773
.word 0xaf4266de, 0x783444db, 0x17e5720a, 0xde65490d, 0xc6146b1c, 0x76f1b6c0, 0xc7a82bff, 0xba34988d
.word 0x0e29f227, 0xe7bbfd46, 0xeca1fc2a, 0x7ffb01bc, 0x69fad4a4, 0xdad11a5c, 0xca31bc90, 0xd3291c0e
.word 0x92a53d94, 0x07a72165, 0x40848468, 0x47b1d737, 0x475ba56e, 0xd4be8155, 0x4705b2f0, 0x266c3565
.word 0xc88a0bb7, 0xac42dc2f, 0xeff8091e, 0xca815733, 0x8a53ca70, 0xe3961a65, 0x80c25a07, 0x7f10971d
.word 0x8573a05e, 0x03302b99, 0x1672acec, 0x36944494, 0x5af53a38, 0x7cdb19d5, 0x56d14d3a, 0x191d400a
.word 0xd6cb1869, 0x40347f54, 0xc782bf91, 0x5f2a10ed, 0x0472de68, 0xd6f38073, 0x5ab1e5f8, 0x3b6a5c91
.word 0xb97fe3f3, 0xaf155554, 0x71ce11d6, 0xbcd12802, 0x3171b80e, 0xf8635f8c, 0x00f31693, 0xc4034817
.word 0x1ae5ac0d, 0xdeef6aa1, 0xe2afa421, 0x0ad6e387, 0x27375ca8, 0x4251c06f, 0xf9b2aa9e, 0xb3e67575
.word 0x9f244b16, 0x4124f440, 0xc3f9f1dc, 0xf50c3104, 0x5b94a720, 0xc16ca436, 0x059d321f, 0x6f29fc4e
.word 0x0702e07d, 0xdfa6b4e0, 0x10778250, 0xb1f1b349, 0xefb5f345, 0x6e2483cf, 0x869d8781, 0x88905d55
.word 0x4a1d454e, 0x44fc9320, 0x10ea7ad0, 0xe85ef0a8
.section .region_1,"aw",@progbits;
region_1:
.word 0x04f51430, 0x2d376002, 0x404a1918, 0x3a3c238c, 0x67ddb2e1, 0xc3580719, 0x4d2023be, 0xa83e0a9e
.word 0x4055f320, 0xf2a27e24, 0x4c19d956, 0x35c6b3b0, 0xb24a9089, 0x77367b8a, 0x4f0e58fc, 0x6f9d721c
.word 0xfa040b34, 0x059692dd, 0xba448dca, 0xf5c5e492, 0xa03faa95, 0x2371aa19, 0x6f1e57cb, 0xde7f9da3
.word 0xf19adc16, 0x598a5253, 0x8230eed5, 0x4ddd8a3d, 0xf78613db, 0xc5a17b28, 0x007d92de, 0xe5a6a833
.word 0x20ce30d1, 0x2cdaadb5, 0xcd8be78a, 0x161553e6, 0x6cdeb5e5, 0x83e7d589, 0x20eee4d0, 0x0da93f8a
.word 0xb3b0577b, 0xbb6f0ab8, 0x2bb017cd, 0x220ee5da, 0x3a6257ec, 0x80a9152e, 0x4e8386a0, 0xf4a5519f
.word 0x6145fe1b, 0x8145d8c1, 0xcd071beb, 0x13386696, 0x3a5e6c05, 0xd26e9a13, 0xc8f49117, 0x81b1b8d8
.word 0xe0c5fa9c, 0x0e3a15c3, 0x0712721c, 0xe53bec42, 0x99a59cb6, 0x88e9af2a, 0xc7f195c4, 0xf6f66f0d
.word 0x19e58cf8, 0x5a05ba6c, 0xf7a57731, 0x03a88d0e, 0x5254c9cd, 0x2e3cda9c, 0x5735bb39, 0x7d34e992
.word 0xdd19bdf2, 0x07748372, 0x5ea1e230, 0x9d1e4928, 0x068f7811, 0xcacd5321, 0x31fa01b5, 0xa734a9b5
.word 0xcc718ba3, 0x787b19a5, 0xdbf58019, 0x67417daf, 0x46dd71ce, 0x08273537, 0x73f3d67f, 0xc8d6bbfc
.word 0x13be6b1a, 0x56e49e87, 0x02bbb6e1, 0xcafe6bdd, 0x422330b3, 0xbb9840bf, 0x07f06c01, 0x80b633dc
.word 0x89dffe7d, 0x555eb685, 0x769dcdb7, 0x951623b5, 0xc0c75977, 0xd8170d17, 0x1529b258, 0x8f6ed7df
.word 0x39e90756, 0xd93aaa19, 0x1d41d013, 0xb55742b7, 0x2a10a124, 0x0f443906, 0xfe5ab103, 0x442986e2
.word 0x230a451f, 0xc4a2638a, 0x07bd1dbc, 0x6a01562f, 0x886c78f0, 0x01429672, 0xd01f4978, 0x7bc09190
.word 0x3c033b7d, 0xb1758032, 0x4a0034aa, 0x31879481, 0xfbdfa52c, 0xc1852964, 0x1cf791b1, 0x6e442848
.word 0x8edd0ef0, 0xcacc6fd5, 0xa18efbbe, 0xacbc68a3, 0xd5cdb5bd, 0x0847d25c, 0x2264ea8c, 0x7e50db6b
.word 0xc8c9dae2, 0xd0e6914d, 0x16d29525, 0xe951b27b, 0x46afd069, 0x5e10fab5, 0xd876c39d, 0x2000da93
.word 0xe76fdbb0, 0x8de9cdeb, 0x618b28ce, 0x891127dc, 0x8a688a50, 0xe3543f32, 0x6f3397c3, 0x189fa405
.word 0xd0c29919, 0xf827b704, 0xf613829e, 0x3449b320, 0x970a9fe6, 0x008b06c7, 0xc7d29f65, 0x19062b53
.word 0x2dab7130, 0x579bdc44, 0x2e51d2d4, 0x495f328e, 0x4ed39ab4, 0xf29dc71a, 0xe2d70977, 0xd431c0c8
.word 0x4154e557, 0xef77474e, 0x7c15bd13, 0xf0594e08, 0xbccfaad0, 0x2d6d4d63, 0xbfc2f16a, 0x20b841ec
.word 0x6bbb7472, 0x795768f9, 0x4767a2c7, 0x8c38d966, 0x3a688e2f, 0xd66a2f7c, 0xb6a8b50d, 0x9e527f6b
.word 0x73df9287, 0x15c6dbe2, 0x25f30a14, 0x2910ab68, 0x1316cea0, 0x0bec5656, 0x7178d86d, 0x46b21e0e
.word 0x7a25f3aa, 0x7b457243, 0xfc4c946a, 0xd92619fc, 0x33e233cd, 0xb2ad4133, 0x44e94a7d, 0x91916165
.word 0x593f0534, 0xa358746c, 0x6427592c, 0xc56859b0, 0x29f9a2ad, 0x74e47d67, 0xd1025436, 0x8996f575
.word 0x37af15a9, 0xe9127265, 0xeb82801e, 0x27930922, 0x01f16f4a, 0x35484c96, 0x11ea31ba, 0xb86f0980
.word 0x4683ed85, 0x1ebc6bf1, 0x78f8aca9, 0x5fc01058, 0xfa0e9188, 0x17972a77, 0x9eb3e8fd, 0x18fc5e90
.word 0xd6dbd765, 0x71e52c29, 0x9e827ecd, 0x35ee3deb, 0x230e730f, 0x7627829e, 0x5526a656, 0xadaee8c3
.word 0xd3392064, 0x7898e9b2, 0x26d35f08, 0xdb0c35b2, 0x7ffa594c, 0xe67a906c, 0xaa385553, 0xd9590cc1
.word 0x6cbbfe5f, 0xebd30ce1, 0x906e2c9c, 0xb5c6cec0, 0x13bd8a0c, 0x879edd9f, 0x6b5eadea, 0x7544e4eb
.word 0xce3b7505, 0x4cdd0315, 0x5d41599d, 0x1aeabc23, 0x27d6736a, 0xddec0556, 0xc4b2c918, 0x71a73120
.word 0xf994e392, 0x979c802c, 0x7b76978e, 0xe5d0c06b, 0x19fbfec5, 0x7aed0ec0, 0x9895a79d, 0xcb0f4672
.word 0x68f03b5a, 0x6cbc2cbc, 0xf3ba726f, 0xab9105d4, 0xfd78d00a, 0x826a0bf6, 0x34321cf6, 0x3742b65a
.word 0x0a24e034, 0xe9dccaad, 0x170b6e18, 0x48478859, 0x92b15d99, 0xb21b3178, 0x717a6140, 0x7a0c9ba7
.word 0xd179355e, 0x025b3735, 0x69db8aeb, 0x6018ceef, 0x013a1a74, 0x400949f5, 0x3b3707dd, 0xcbb10416
.word 0xd6d9b284, 0xd0677727, 0x33881610, 0x7ab5283a, 0x01366ff1, 0xe10ad227, 0x2966ec9f, 0xe2ce9ddb
.word 0xfdd9c9ae, 0x4e40dfee, 0x0a69132e, 0xa1cb0bc4, 0x5f4d16ae, 0xb61a3258, 0xaad9ea2f, 0xdb3207a8
.word 0x60e3fe5c, 0xdb6ae2d4, 0x285d5291, 0xbfdcb7eb, 0x65626f6c, 0x745560fe, 0xf067b872, 0xfc8bc2f4
.word 0x35c29fde, 0x7349e6b2, 0x99daf68e, 0x7db944ab, 0x11c00c88, 0x6a86f779, 0xe670c67d, 0x495d215c
.word 0x065c0e7c, 0x72cdb01d, 0xc953cdba, 0x44460824, 0x532ffd4d, 0xb58b9ad5, 0x29ab1216, 0x907fbf02
.word 0xf57158a2, 0x299923a9, 0x15c8e9ae, 0x88df752f, 0xaf806763, 0x361387af, 0xf0688d32, 0x65b41da3
.word 0x9f941e05, 0x3b6f90b6, 0x997d1d1f, 0x91ae34ec, 0xe74d6f8e, 0xf44258c4, 0x24ea4c7f, 0x84758bb3
.word 0x9de89139, 0x5db9f406, 0x15104ba4, 0x4d7449bc, 0xbe343f87, 0xbe69048b, 0xaceecaec, 0x668dfedb
.word 0x67b0b679, 0x419ae18b, 0x70709c09, 0xc85e31e1, 0xe09e05c6, 0xb6629bb9, 0x6167d432, 0x024c30a8
.word 0xf7f43d3a, 0x5f93dda4, 0x9c85ae3d, 0x468a6984, 0x9205cd98, 0x6e4a5307, 0xe76aa735, 0x70a83680
.word 0xd646affb, 0x153e89d8, 0x31a64cd0, 0x65279785, 0xf8359476, 0xf9e1966a, 0x66f641b8, 0x8232e39c
.word 0xcbca9c8b, 0xf46b9201, 0xb43ea063, 0x501b3846, 0x9c452b49, 0x03e38b7c, 0xcf78b6a6, 0x5d584fd3
.word 0xdabe8669, 0xdcb1f98c, 0x723da332, 0x795fce84, 0x574a52ce, 0xab2a0d41, 0x6a158117, 0x308735d1
.word 0xb64ea6de, 0xcc99d261, 0x15b6b584, 0x21bdb417, 0xcfac737b, 0x46a015a5, 0x9b336c97, 0xf997ada5
.word 0xf29c8d9e, 0x54acbf2d, 0x88d322a1, 0x785602d3, 0xa5f746e8, 0xbc497496, 0x766f8c79, 0x6293f2b2
.word 0x260caaa0, 0xfd1a9723, 0x62dc8305, 0x9c25ce13, 0x1113997c, 0x12883a16, 0x9f120e78, 0x9623e866
.word 0xaa71ce19, 0x871156d0, 0x1b709cff, 0x4d4eafe1, 0x90b9dd24, 0x419a0fdc, 0x854c7554, 0xb7428f7d
.word 0x2088e523, 0x8029b864, 0xd7506c42, 0xe9fd4a86, 0xa2a84ec6, 0xa54bfb98, 0xb97527c8, 0xd73fae3e
.word 0x88d7920a, 0xc7dc06a7, 0x9c4e4ec3, 0x1bfce4d2, 0x5402ab6b, 0xdcc74fff, 0xc68a476f, 0xeacf918a
.word 0x73bfbeac, 0xf8111ce0, 0x89c69e4b, 0xa27c7ec9, 0x25a8d8c9, 0xb21b5b9a, 0x68f5698c, 0xd2d5a3b5
.word 0x3f91762b, 0x7e4f5ec8, 0xd7c4294a, 0x48ea06d5, 0xd3710a62, 0xecf4fa0d, 0x5ab043ae, 0x0323eb6f
.word 0x8636c7ef, 0x1bb8caa0, 0x398760be, 0x145711f0, 0x356dedcb, 0x631a0f81, 0x624e6e5e, 0xd9ae46e4
.word 0x11b34d70, 0x5471ea66, 0xcb26b9b3, 0x2980703c, 0x6261481f, 0x44b45bfa, 0x23fde380, 0xaf526cb3
.word 0xd72fda2b, 0x9edf8223, 0x78fe154c, 0xf0737690, 0xf12cdce5, 0xcb14ed99, 0x46a319ef, 0x9de13f61
.word 0xf10354a7, 0xb8e78ff8, 0x55a5dd81, 0x40a97488, 0x6295ea5f, 0xd81f1db5, 0x0478add3, 0x4680b7ce
.word 0x5c9247f8, 0x239cff1b, 0x264a0943, 0x1d703cae, 0x4ae1fa03, 0x298871d1, 0x06fb8664, 0x0c482307
.word 0x83839373, 0x4f24c714, 0x35dc6fb2, 0x3552edb0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x14, x13, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x17, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x17, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x17, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x17, x4, ecall_handler
                  li x4, 0x1
                  beq x17, x4, instr_fault_handler
                  li x4, 0x5
                  beq x17, x4, load_fault_handler
                  li x4, 0x7
                  beq x17, x4, store_fault_handler
                  li x4, 0xc
                  beq x17, x4, pt_fault_handler
                  li x4, 0xd
                  beq x17, x4, pt_fault_handler
                  li x4, 0xf
                  beq x17, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x13, x14, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
