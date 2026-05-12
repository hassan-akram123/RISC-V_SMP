.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xa5f19144
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xfa10d8b4
                  li x5, 0x80000000
                  li x6, 0x4543394
                  li x7, 0x4
                  li x8, 0x0
                  li x9, 0xf4661544
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xf1d15b54
                  li x13, 0x2
                  li x14, 0x80000000
                  li x15, 0xe61359d
                  li x16, 0x1
                  li x17, 0xf55c50cc
                  li x18, 0x3b81f425
                  li x19, 0xf06f0eba
                  li x20, 0xf359cd45
                  li x21, 0x0
                  li x22, 0xa
                  li x24, 0xf1c6b8b5
                  li x25, 0x88a373e
                  li x26, 0x5d3c9cdd
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x0
                  la x27, user_stack_end
main:             jal          s6, 10f
0:                jal          sp, 6f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          ra, 11f
4:                jal          s4, 7f
5:                jal          ra, 13f
6:                jal          t2, 8f
7:                jal          tp, 12f
8:                jal          sp, 2b
9:                jal          ra, 4b
10:               jal          gp, 15f
11:               jal          ra, 16f
12:               jal          t1, 0b
13:               jal          ra, 17f
14:               jal          ra, 3b
15:               jal          ra, 9b
16:               jal          s0, 1b
17:               andi         s6, a0, 120
main_33:          jal          s6, 18f
0:                jal          t1, 20f
1:                jal          ra, 21f
2:                jal          ra, 19f
3:                jal          t1, 5f
4:                jal          ra, 11f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          gp, 15f
8:                jal          a3, 4b
9:                jal          t1, 26f
10:               jal          t1, 27f
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          t3, 23f
14:               jal          ra, 16f
15:               jal          ra, 1b
16:               jal          ra, 12b
17:               jal          t1, 24f
18:               jal          t1, 22f
19:               jal          ra, 9b
20:               jal          t0, 7b
21:               jal          t1, 13b
22:               jal          ra, 3b
23:               jal          t1, 17b
24:               jal          ra, 25f
25:               jal          t1, 14b
26:               jal          s5, 10b
27:               srli         s0, t1, 21
main_28:          jal          s6, 12f
0:                jal          sp, 1f
1:                jal          ra, 2f
2:                jal          ra, 5f
3:                jal          s10, 13f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          t5, 0b
7:                jal          ra, 10f
8:                jal          t1, 11f
9:                jal          ra, 4b
10:               jal          ra, 3b
11:               jal          a6, 9b
12:               jal          ra, 6b
13:               sltu         s9, s3, a4
main_40:          jal          s6, 3f
0:                jal          gp, 4f
1:                jal          s9, 6f
2:                jal          ra, 17f
3:                jal          ra, 24f
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          ra, 20f
7:                jal          tp, 23f
8:                jal          ra, 13f
9:                jal          t1, 16f
10:               jal          s5, 19f
11:               jal          t1, 0b
12:               jal          ra, 25f
13:               jal          ra, 10b
14:               jal          t1, 9b
15:               jal          s6, 7b
16:               jal          t1, 18f
17:               jal          ra, 8b
18:               jal          t6, 26f
19:               jal          ra, 14b
20:               jal          ra, 15b
21:               jal          ra, 5b
22:               jal          ra, 21b
23:               jal          ra, 22b
24:               jal          t1, 1b
25:               jal          ra, 2b
26:               lui          s2, 99678
main_16:          jal          s6, 14f
0:                jal          s2, 18f
1:                jal          s10, 6f
2:                jal          t3, 10f
3:                jal          a6, 5f
4:                jal          ra, 3b
5:                jal          ra, 19f
6:                jal          a3, 13f
7:                jal          ra, 17f
8:                jal          ra, 16f
9:                jal          s2, 15f
10:               jal          ra, 4b
11:               jal          t1, 7b
12:               jal          t1, 2b
13:               jal          ra, 8b
14:               jal          s4, 1b
15:               jal          ra, 11b
16:               jal          ra, 0b
17:               jal          ra, 12b
18:               jal          t4, 9b
19:               slt          s5, a6, s2
main_30:          jal          s6, 7f
0:                jal          ra, 14f
1:                jal          tp, 11f
2:                jal          ra, 16f
3:                jal          tp, 9f
4:                jal          ra, 10f
5:                jal          t6, 6f
6:                jal          t1, 0b
7:                jal          ra, 3b
8:                jal          t5, 5b
9:                jal          ra, 15f
10:               jal          ra, 1b
11:               jal          t1, 12f
12:               jal          ra, 18f
13:               jal          ra, 4b
14:               jal          t1, 13b
15:               jal          gp, 17f
16:               jal          ra, 8b
17:               jal          ra, 2b
18:               or           a2, s8, s11
main_11:          jal          s6, 0f
0:                jal          t1, 2f
1:                jal          t1, 11f
2:                jal          a1, 5f
3:                jal          gp, 4f
4:                jal          t1, 10f
5:                jal          a6, 9f
6:                jal          ra, 1b
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          tp, 7b
10:               jal          t1, 6b
11:               xori         zero, t6, 1991
main_20:          jal          s6, 9f
0:                jal          ra, 10f
1:                jal          ra, 6f
2:                jal          ra, 1b
3:                jal          ra, 14f
4:                jal          gp, 12f
5:                jal          ra, 15f
6:                jal          t1, 8f
7:                jal          t1, 2b
8:                jal          t4, 0b
9:                jal          ra, 11f
10:               jal          tp, 4b
11:               jal          ra, 7b
12:               jal          gp, 13f
13:               jal          t1, 3b
14:               jal          t1, 5b
15:               sltu         a1, a0, t3
main_4:           jal          s6, 12f
0:                jal          ra, 4f
1:                jal          ra, 7f
2:                jal          t1, 3f
3:                jal          s9, 14f
4:                jal          t1, 10f
5:                jal          ra, 6f
6:                jal          t1, 2b
7:                jal          t5, 5b
8:                jal          t1, 1b
9:                jal          ra, 0b
10:               jal          ra, 8b
11:               jal          ra, 13f
12:               jal          ra, 11b
13:               jal          s4, 9b
14:               auipc        s8, 266937
main_41:          jal          s6, 1f
0:                jal          t1, 3f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          t1, 11f
4:                jal          s9, 2b
5:                jal          a1, 6f
6:                jal          t1, 8f
7:                jal          s2, 10f
8:                jal          t1, 7b
9:                jal          t1, 4b
10:               jal          t1, 9b
11:               srli         a7, s0, 24
main_35:          jal          s6, 14f
0:                jal          t1, 24f
1:                jal          ra, 0b
2:                jal          gp, 8f
3:                jal          ra, 13f
4:                jal          ra, 22f
5:                jal          t2, 17f
6:                jal          ra, 25f
7:                jal          ra, 19f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          t1, 12f
11:               jal          gp, 10b
12:               jal          ra, 5b
13:               jal          a2, 1b
14:               jal          ra, 20f
15:               jal          t1, 18f
16:               jal          ra, 21f
17:               jal          ra, 27f
18:               jal          ra, 11b
19:               jal          ra, 2b
20:               jal          t0, 9b
21:               jal          ra, 26f
22:               jal          t1, 6b
23:               jal          ra, 28f
24:               jal          sp, 16b
25:               jal          ra, 7b
26:               jal          ra, 23b
27:               jal          ra, 4b
28:               srl          s9, t6, a6
main_48:          jal          s6, 12f
0:                jal          ra, 11f
1:                jal          t1, 15f
2:                jal          a5, 3f
3:                jal          ra, 17f
4:                jal          gp, 7f
5:                jal          a6, 18f
6:                jal          ra, 4b
7:                jal          a5, 8f
8:                jal          ra, 9f
9:                jal          s2, 16f
10:               jal          ra, 14f
11:               jal          ra, 6b
12:               jal          ra, 1b
13:               jal          ra, 5b
14:               jal          ra, 13b
15:               jal          s8, 2b
16:               jal          t5, 10b
17:               jal          t1, 0b
18:               sll          a3, t3, s4
main_31:          jal          s6, 8f
0:                jal          t0, 7f
1:                jal          gp, 9f
2:                jal          ra, 3f
3:                jal          t1, 1b
4:                jal          t2, 5f
5:                jal          ra, 11f
6:                jal          ra, 0b
7:                jal          gp, 4b
8:                jal          t1, 6b
9:                jal          a2, 13f
10:               jal          a0, 2b
11:               jal          ra, 12f
12:               jal          t1, 10b
13:               sltiu        zero, s6, -1892
main_21:          jal          s6, 9f
0:                jal          ra, 18f
1:                jal          s1, 0b
2:                jal          tp, 19f
3:                jal          ra, 22f
4:                jal          ra, 26f
5:                jal          t1, 14f
6:                jal          ra, 4b
7:                jal          sp, 1b
8:                jal          ra, 17f
9:                jal          ra, 15f
10:               jal          t1, 6b
11:               jal          t6, 20f
12:               jal          t1, 27f
13:               jal          ra, 3b
14:               jal          t1, 11b
15:               jal          t4, 25f
16:               jal          ra, 7b
17:               jal          t2, 5b
18:               jal          s9, 8b
19:               jal          t1, 16b
20:               jal          t1, 13b
21:               jal          ra, 23f
22:               jal          t1, 28f
23:               jal          s5, 12b
24:               jal          ra, 2b
25:               jal          ra, 21b
26:               jal          ra, 24b
27:               jal          s4, 10b
28:               srli         ra, t3, 3
main_9:           jal          s6, 3f
0:                jal          a1, 1f
1:                jal          ra, 8f
2:                jal          ra, 5f
3:                jal          t1, 11f
4:                jal          ra, 9f
5:                jal          s4, 7f
6:                jal          a4, 13f
7:                jal          a7, 10f
8:                jal          ra, 12f
9:                jal          ra, 0b
10:               jal          gp, 6b
11:               jal          ra, 4b
12:               jal          t0, 2b
13:               xori         s8, a6, 1746
main_27:          jal          s6, 1f
0:                jal          ra, 5f
1:                jal          sp, 8f
2:                jal          ra, 6f
3:                jal          ra, 11f
4:                jal          a2, 2b
5:                jal          sp, 12f
6:                jal          t3, 7f
7:                jal          ra, 10f
8:                jal          t1, 3b
9:                jal          t1, 4b
10:               jal          ra, 0b
11:               jal          tp, 9b
12:               sltu         t0, s10, zero
main_32:          jal          s6, 7f
0:                jal          a0, 15f
1:                jal          ra, 3f
2:                jal          tp, 10f
3:                jal          ra, 13f
4:                jal          sp, 2b
5:                jal          s1, 16f
6:                jal          s2, 14f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          t1, 0b
10:               jal          ra, 8b
11:               jal          t1, 5b
12:               jal          ra, 9b
13:               jal          ra, 11b
14:               jal          ra, 1b
15:               jal          ra, 4b
16:               sltu         gp, s6, s6
main_7:           jal          s6, 13f
0:                jal          sp, 15f
1:                jal          ra, 10f
2:                jal          t0, 7f
3:                jal          t1, 18f
4:                jal          s4, 22f
5:                jal          gp, 12f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          s5, 0b
9:                jal          ra, 2b
10:               jal          sp, 17f
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          sp, 21f
14:               jal          a2, 20f
15:               jal          a7, 16f
16:               jal          sp, 5b
17:               jal          t1, 8b
18:               jal          ra, 4b
19:               jal          ra, 9b
20:               jal          ra, 11b
21:               jal          ra, 19b
22:               xor          a1, s9, t1
main_12:          jal          s6, 9f
0:                jal          ra, 13f
1:                jal          gp, 17f
2:                jal          ra, 6f
3:                jal          t1, 8f
4:                jal          ra, 1b
5:                jal          t2, 10f
6:                jal          t4, 0b
7:                jal          ra, 12f
8:                jal          ra, 16f
9:                jal          t1, 15f
10:               jal          ra, 4b
11:               jal          s6, 14f
12:               jal          ra, 3b
13:               jal          ra, 5b
14:               jal          ra, 2b
15:               jal          s8, 7b
16:               jal          ra, 11b
17:               jal          t1, 18f
18:               lui          ra, 204181
main_26:          jal          s6, 4f
0:                jal          ra, 6f
1:                jal          t1, 7f
2:                jal          ra, 10f
3:                jal          sp, 11f
4:                jal          s2, 15f
5:                jal          ra, 0b
6:                jal          t1, 9f
7:                jal          a7, 12f
8:                jal          ra, 3b
9:                jal          t2, 1b
10:               jal          ra, 8b
11:               jal          t1, 16f
12:               jal          t1, 2b
13:               jal          t1, 14f
14:               jal          s1, 5b
15:               jal          ra, 13b
16:               xor          sp, a1, t5
main_13:          jal          s6, 22f
0:                jal          t1, 14f
1:                jal          ra, 25f
2:                jal          a0, 3f
3:                jal          ra, 5f
4:                jal          tp, 16f
5:                jal          ra, 6f
6:                jal          ra, 7f
7:                jal          ra, 23f
8:                jal          ra, 21f
9:                jal          ra, 10f
10:               jal          t1, 15f
11:               jal          t1, 26f
12:               jal          ra, 4b
13:               jal          t1, 18f
14:               jal          s5, 2b
15:               jal          s5, 20f
16:               jal          sp, 27f
17:               jal          t1, 9b
18:               jal          ra, 12b
19:               jal          s6, 17b
20:               jal          t6, 13b
21:               jal          t1, 11b
22:               jal          sp, 1b
23:               jal          t1, 24f
24:               jal          a1, 19b
25:               jal          t1, 8b
26:               jal          ra, 0b
27:               addi         zero, tp, 2031
main_6:           jal          s6, 12f
0:                jal          ra, 20f
1:                jal          t1, 13f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          tp, 11f
5:                jal          tp, 6f
6:                jal          a1, 4b
7:                jal          s8, 2b
8:                jal          t4, 18f
9:                jal          t6, 14f
10:               jal          t1, 15f
11:               jal          ra, 8b
12:               jal          s4, 7b
13:               jal          t1, 10b
14:               jal          t1, 3b
15:               jal          s6, 16f
16:               jal          s6, 0b
17:               jal          tp, 21f
18:               jal          ra, 19f
19:               jal          sp, 17b
20:               jal          ra, 9b
21:               and          a0, t3, sp
main_14:          jal          s6, 13f
0:                jal          ra, 2f
1:                jal          s10, 25f
2:                jal          a3, 17f
3:                jal          t1, 9f
4:                jal          ra, 26f
5:                jal          ra, 10f
6:                jal          ra, 23f
7:                jal          ra, 6b
8:                jal          ra, 24f
9:                jal          t1, 1b
10:               jal          ra, 19f
11:               jal          sp, 15f
12:               jal          ra, 8b
13:               jal          ra, 12b
14:               jal          ra, 16f
15:               jal          ra, 14b
16:               jal          s9, 3b
17:               jal          ra, 21f
18:               jal          t1, 7b
19:               jal          ra, 22f
20:               jal          ra, 28f
21:               jal          tp, 4b
22:               jal          t1, 27f
23:               jal          ra, 20b
24:               jal          t1, 11b
25:               jal          a2, 5b
26:               jal          a2, 18b
27:               jal          s8, 0b
28:               srl          t2, s1, t1
main_24:          jal          s6, 8f
0:                jal          ra, 5f
1:                jal          t1, 9f
2:                jal          ra, 7f
3:                jal          t1, 4f
4:                jal          t1, 10f
5:                jal          ra, 6f
6:                jal          t5, 11f
7:                jal          ra, 0b
8:                jal          tp, 3b
9:                jal          ra, 2b
10:               jal          sp, 1b
11:               srai         s0, t4, 3
main_38:          jal          s6, 20f
0:                jal          t4, 9f
1:                jal          ra, 5f
2:                jal          sp, 3f
3:                jal          ra, 0b
4:                jal          t4, 7f
5:                jal          ra, 18f
6:                jal          ra, 15f
7:                jal          ra, 2b
8:                jal          ra, 11f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          t1, 21f
13:               jal          ra, 17f
14:               jal          ra, 16f
15:               jal          tp, 13b
16:               jal          s5, 4b
17:               jal          gp, 14b
18:               jal          s0, 19f
19:               jal          ra, 6b
20:               jal          ra, 10b
21:               nop
main_22:          jal          s6, 12f
0:                jal          t1, 15f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          ra, 11f
4:                jal          t1, 7f
5:                jal          ra, 13f
6:                jal          a3, 5b
7:                jal          a1, 9f
8:                jal          t6, 10f
9:                jal          sp, 1b
10:               jal          s2, 3b
11:               jal          ra, 14f
12:               jal          ra, 2b
13:               jal          s8, 8b
14:               jal          ra, 4b
15:               slti         s0, s11, 1858
main_37:          jal          s6, 0f
0:                jal          ra, 3f
1:                jal          a4, 10f
2:                jal          ra, 1b
3:                jal          t1, 14f
4:                jal          t1, 7f
5:                jal          ra, 12f
6:                jal          t1, 15f
7:                jal          s4, 5b
8:                jal          ra, 6b
9:                jal          s9, 8b
10:               jal          ra, 9b
11:               jal          t0, 13f
12:               jal          ra, 11b
13:               jal          t6, 2b
14:               jal          s2, 4b
15:               lui          t1, 135425
main_15:          jal          s6, 12f
0:                jal          tp, 3f
1:                jal          ra, 16f
2:                jal          ra, 5f
3:                jal          t1, 2b
4:                jal          t1, 7f
5:                jal          t1, 10f
6:                jal          s9, 9f
7:                jal          s5, 1b
8:                jal          t1, 11f
9:                jal          t1, 4b
10:               jal          ra, 14f
11:               jal          t1, 13f
12:               jal          t0, 8b
13:               jal          t1, 0b
14:               jal          a2, 6b
15:               jal          t4, 17f
16:               jal          ra, 15b
17:               sra          s8, s8, s1
main_50:          jal          s6, 13f
0:                jal          ra, 9f
1:                jal          s4, 11f
2:                jal          gp, 10f
3:                jal          ra, 1b
4:                jal          t1, 8f
5:                jal          t0, 12f
6:                jal          t1, 3b
7:                jal          t1, 0b
8:                jal          ra, 14f
9:                jal          ra, 5b
10:               jal          s10, 4b
11:               jal          ra, 7b
12:               jal          t1, 2b
13:               jal          t1, 6b
14:               auipc        a1, 282062
main_36:          jal          s6, 3f
0:                jal          t4, 5f
1:                jal          ra, 2f
2:                jal          a4, 4f
3:                jal          ra, 8f
4:                jal          t2, 9f
5:                jal          ra, 7f
6:                jal          t1, 11f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          t1, 1b
11:               jal          t5, 13f
12:               jal          t1, 0b
13:               addi         gp, s5, -38
main_47:          jal          s6, 8f
0:                jal          s5, 11f
1:                jal          t6, 2f
2:                jal          ra, 9f
3:                jal          s6, 16f
4:                jal          s8, 7f
5:                jal          ra, 14f
6:                jal          ra, 20f
7:                jal          ra, 5b
8:                jal          s9, 1b
9:                jal          t4, 18f
10:               jal          s0, 22f
11:               jal          tp, 19f
12:               jal          sp, 21f
13:               jal          ra, 3b
14:               jal          s0, 12b
15:               jal          ra, 23f
16:               jal          ra, 24f
17:               jal          ra, 15b
18:               jal          s0, 0b
19:               jal          ra, 4b
20:               jal          ra, 13b
21:               jal          ra, 17b
22:               jal          ra, 6b
23:               jal          ra, 10b
24:               nop
main_46:          jal          s6, 23f
0:                jal          s9, 5f
1:                jal          t1, 3f
2:                jal          ra, 4f
3:                jal          ra, 24f
4:                jal          a1, 8f
5:                jal          ra, 16f
6:                jal          ra, 17f
7:                jal          ra, 0b
8:                jal          s0, 13f
9:                jal          t0, 19f
10:               jal          s10, 6b
11:               jal          ra, 22f
12:               jal          ra, 28f
13:               jal          ra, 7b
14:               jal          ra, 27f
15:               jal          tp, 20f
16:               jal          ra, 26f
17:               jal          ra, 9b
18:               jal          ra, 15b
19:               jal          s2, 1b
20:               jal          ra, 14b
21:               jal          a6, 11b
22:               jal          t1, 29f
23:               jal          s1, 18b
24:               jal          t2, 2b
25:               jal          ra, 12b
26:               jal          ra, 25b
27:               jal          ra, 10b
28:               jal          ra, 21b
29:               sltu         t3, t2, tp
main_10:          jal          s6, 2f
0:                jal          tp, 9f
1:                jal          ra, 10f
2:                jal          t0, 3f
3:                jal          ra, 8f
4:                jal          s6, 23f
5:                jal          t1, 6f
6:                jal          a7, 21f
7:                jal          ra, 17f
8:                jal          tp, 11f
9:                jal          a6, 1b
10:               jal          s1, 19f
11:               jal          ra, 13f
12:               jal          a6, 14f
13:               jal          tp, 7b
14:               jal          a2, 15f
15:               jal          ra, 5b
16:               jal          s5, 0b
17:               jal          ra, 16b
18:               jal          ra, 22f
19:               jal          ra, 20f
20:               jal          tp, 12b
21:               jal          ra, 18b
22:               jal          ra, 4b
23:               andi         a2, a3, -1785
main_19:          jal          s6, 10f
0:                jal          ra, 2f
1:                jal          a1, 15f
2:                jal          ra, 12f
3:                jal          a7, 11f
4:                jal          a5, 13f
5:                jal          ra, 4b
6:                jal          ra, 16f
7:                jal          ra, 3b
8:                jal          a7, 14f
9:                jal          ra, 8b
10:               jal          tp, 7b
11:               jal          s5, 5b
12:               jal          a2, 9b
13:               jal          sp, 1b
14:               jal          t1, 6b
15:               jal          t1, 0b
16:               srl          a0, s10, t3
main_39:          jal          s6, 9f
0:                jal          ra, 23f
1:                jal          ra, 4f
2:                jal          ra, 19f
3:                jal          a1, 1b
4:                jal          t2, 13f
5:                jal          t1, 25f
6:                jal          ra, 20f
7:                jal          t1, 11f
8:                jal          ra, 17f
9:                jal          ra, 8b
10:               jal          s4, 6b
11:               jal          ra, 3b
12:               jal          t1, 26f
13:               jal          ra, 24f
14:               jal          a7, 5b
15:               jal          ra, 18f
16:               jal          ra, 15b
17:               jal          ra, 22f
18:               jal          ra, 10b
19:               jal          t0, 7b
20:               jal          ra, 0b
21:               jal          ra, 12b
22:               jal          ra, 14b
23:               jal          ra, 2b
24:               jal          s1, 21b
25:               jal          a2, 16b
26:               xori         s10, a3, 1051
main_1:           jal          s6, 6f
0:                jal          ra, 17f
1:                jal          ra, 21f
2:                jal          s1, 4f
3:                jal          a2, 13f
4:                jal          ra, 5f
5:                jal          t1, 0b
6:                jal          ra, 9f
7:                jal          a3, 8f
8:                jal          ra, 10f
9:                jal          s9, 19f
10:               jal          t1, 18f
11:               jal          t1, 22f
12:               jal          ra, 20f
13:               jal          ra, 15f
14:               jal          t1, 11b
15:               jal          s1, 16f
16:               jal          t1, 14b
17:               jal          t1, 3b
18:               jal          ra, 1b
19:               jal          t1, 7b
20:               jal          ra, 23f
21:               jal          ra, 2b
22:               jal          t0, 12b
23:               slt          gp, t6, t4
main_43:          jal          s6, 22f
0:                jal          t1, 12f
1:                jal          ra, 20f
2:                jal          ra, 1b
3:                jal          t1, 4f
4:                jal          a5, 21f
5:                jal          t3, 8f
6:                jal          s8, 19f
7:                jal          s1, 10f
8:                jal          t0, 25f
9:                jal          s2, 18f
10:               jal          ra, 11f
11:               jal          ra, 5b
12:               jal          ra, 7b
13:               jal          t1, 0b
14:               jal          ra, 9b
15:               jal          ra, 6b
16:               jal          ra, 17f
17:               jal          a0, 3b
18:               jal          ra, 15b
19:               jal          ra, 13b
20:               jal          ra, 23f
21:               jal          t1, 14b
22:               jal          t1, 24f
23:               jal          ra, 16b
24:               jal          t1, 2b
25:               srl          a1, zero, s0
main_5:           jal          s6, 19f
0:                jal          t4, 11f
1:                jal          ra, 15f
2:                jal          ra, 17f
3:                jal          a2, 0b
4:                jal          ra, 2b
5:                jal          ra, 12f
6:                jal          s2, 23f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 25f
10:               jal          ra, 1b
11:               jal          t1, 18f
12:               jal          s0, 6b
13:               jal          ra, 14f
14:               jal          t1, 20f
15:               jal          ra, 16f
16:               jal          t1, 21f
17:               jal          ra, 22f
18:               jal          s0, 7b
19:               jal          t1, 4b
20:               jal          ra, 24f
21:               jal          ra, 27f
22:               jal          t1, 13b
23:               jal          ra, 28f
24:               jal          a5, 26f
25:               jal          ra, 8b
26:               jal          ra, 3b
27:               jal          t1, 5b
28:               andi         t3, t0, 632
main_23:          jal          s6, 24f
0:                jal          ra, 5f
1:                jal          sp, 20f
2:                jal          t1, 7f
3:                jal          ra, 4f
4:                jal          s8, 15f
5:                jal          ra, 9f
6:                jal          tp, 10f
7:                jal          tp, 21f
8:                jal          ra, 13f
9:                jal          ra, 1b
10:               jal          ra, 25f
11:               jal          t1, 18f
12:               jal          ra, 8b
13:               jal          ra, 0b
14:               jal          ra, 12b
15:               jal          a2, 11b
16:               jal          t1, 6b
17:               jal          ra, 27f
18:               jal          ra, 28f
19:               jal          a0, 17b
20:               jal          t1, 22f
21:               jal          a1, 26f
22:               jal          ra, 16b
23:               jal          ra, 14b
24:               jal          ra, 2b
25:               jal          ra, 3b
26:               jal          t4, 19b
27:               jal          t1, 23b
28:               add          t5, t0, s9
                  lui          t3, 290886
                  slti         t4, t3, 1862
                  sub          s4, s8, t3
                  or           tp, zero, s3
                  sra          tp, s7, t1
                  nop
                  add          s4, t5, a2
                  bge          zero, a6, 25f
                  or           t0, tp, a1
                  andi         a6, a0, 1914
                  srai         t2, t5, 26
                  or           s5, t6, zero
                  slti         s5, ra, -526
                  srli         t2, zero, 4
                  and          s6, s11, t4
                  slti         s4, a7, 1885
                  auipc        s4, 920736
                  srl          a1, s5, t0
                  slt          gp, t5, s8
                  ori          s0, s5, -1744
                  andi         a0, s9, 1246
                  ori          t3, s11, -218
                  andi         s2, a7, -703
                  ori          a4, s9, -753
                  sltu         a1, a1, t5
25:               nop
                  auipc        t6, 904158
                  and          t5, a4, a3
                  sltiu        s9, a1, 1737
                  bne          t5, zero, 47f
                  andi         a5, a4, -1807
                  sub          s0, s10, a3
                  sub          s5, ra, a4
                  auipc        gp, 767262
                  or           zero, sp, a2
                  add          s6, zero, tp
                  bgeu         a7, s5, 37f
37:               xor          t2, s1, s4
                  or           s10, ra, a0
                  and          t2, a5, a5
                  xor          t0, a5, a0
                  sra          a0, a0, a0
                  slt          s2, t3, t6
                  sltiu        a2, a1, -643
                  slti         t2, t6, 1616
                  bne          t6, s7, 50f
                  bltu         s2, s6, 65f
47:               add          a6, s6, s11
                  slli         s4, t2, 22
                  and          s1, s11, s0
50:               lui          s4, 807241
                  slti         t5, t4, 42
                  bge          s10, a2, 62f
                  ori          s2, t4, 289
                  sra          a4, a2, t0
                  sra          a4, s8, s3
                  add          t4, s0, s6
                  slt          s5, a2, zero
                  bge          t2, t4, 63f
                  srai         tp, tp, 30
                  or           s9, t5, tp
                  auipc        gp, 557853
62:               add          a7, s7, s9
63:               srai         a2, s6, 22
                  or           s2, a5, t5
65:               bgeu         s2, t4, 75f
                  and          t3, t6, sp
                  slti         t2, a4, 669
                  srl          a6, t5, a0
                  xori         s10, s10, -1663
                  bgeu         s10, s0, 78f
                  slli         a7, sp, 7
                  bgeu         a3, s6, 89f
                  sra          a6, a7, s1
                  or           t0, t3, s2
75:               sltiu        s5, s6, 1667
                  sll          s9, t1, ra
                  sll          a4, s0, s2
78:               xor          zero, s4, a2
                  bne          a6, s5, 81f
                  sll          s8, a3, s11
81:               auipc        a1, 753322
                  slt          a6, s3, zero
                  bge          s6, t3, 94f
                  nop
                  beq          t5, t4, 93f
                  ori          a0, a0, 1480
                  lui          tp, 885564
                  slti         s6, s11, -1333
89:               bge          s11, s11, 105f
                  bltu         s8, t0, 107f
                  slti         s0, t5, -1575
                  srli         s6, a2, 6
93:               nop
94:               addi         t0, s0, -1364
                  auipc        t5, 562615
                  addi         a2, sp, 792
                  andi         s8, ra, -1166
                  andi         a7, t4, -1093
                  xor          s1, s10, sp
                  addi         zero, a2, -395
                  srl          sp, a6, s6
                  xori         t6, t1, -1200
                  and          a1, s6, s0
                  bgeu         t0, ra, 112f
105:              xori         s10, s11, 1745
                  addi         sp, a5, 1917
107:              slt          a1, t6, t4
                  blt          gp, gp, 116f
                  bltu         s6, t5, 112f
                  ori          t5, t4, -768
                  sltiu        tp, a3, 1440
112:              sltu         t2, ra, t0
                  bltu         sp, s11, 130f
                  slt          s4, s2, sp
                  add          s9, a7, s9
116:              bge          t5, s0, 136f
                  ori          t1, s11, 1149
                  sll          a3, gp, s9
                  srai         t3, ra, 5
                  andi         s10, s4, -580
                  and          t0, s9, sp
                  bgeu         t0, s10, 141f
                  ori          sp, t4, -873
                  blt          t5, a1, 127f
                  bge          s8, a5, 131f
                  lui          a6, 3125
127:              sub          sp, t6, t5
                  addi         s1, a4, -558
                  srli         gp, t6, 14
130:              or           t5, a7, t3
131:              addi         t4, s0, -1196
                  sra          t6, t2, s0
                  andi         a6, a6, -1245
                  sltiu        t1, s7, 355
                  lui          a0, 579730
136:              xori         a1, t4, 1493
                  ori          t5, sp, 1062
                  and          s9, a2, t6
                  xori         s2, s0, 674
                  srli         gp, t0, 7
141:              slti         a7, zero, -1239
                  sra          s2, a5, s4
                  xori         t5, s2, 1540
                  srli         s0, gp, 27
                  sltu         a7, s11, s7
                  bne          s6, t6, 163f
                  bne          s10, s4, 148f
148:              bgeu         t6, a4, 162f
                  srli         gp, s11, 1
                  add          s0, s0, s8
                  bgeu         s9, a6, 155f
                  xor          s6, s10, s10
                  addi         a3, s9, -1396
                  add          t3, s5, s2
155:              ori          s6, a6, -2009
                  xor          t3, sp, a6
                  sltu         a0, s7, a0
                  srli         a1, a4, 9
                  nop
                  or           t0, s2, sp
                  srli         t3, s5, 9
162:              andi         sp, s6, 1371
163:              beq          a4, a0, 170f
                  addi         ra, zero, -1796
                  add          s6, zero, s4
                  and          sp, a6, tp
                  beq          a0, s3, 174f
                  sltiu        s0, ra, -1398
                  bge          t3, t5, 172f
170:              sra          s1, t4, s0
                  andi         t3, zero, 377
172:              ori          s9, t3, 831
                  sltu         t0, s1, a1
174:              sra          sp, a2, s1
                  beq          t5, tp, 194f
                  bgeu         t2, s2, 187f
                  ori          s4, s5, -2024
                  bge          a5, a5, 183f
                  lui          s2, 93323
                  beq          a2, zero, 182f
                  slt          s5, t4, sp
182:              bne          s10, gp, 185f
183:              and          ra, t5, s1
                  sltiu        a0, t3, -1031
185:              andi         a7, a4, -766
                  bne          a6, ra, 194f
187:              nop
                  or           t5, s3, s8
                  blt          a1, tp, 199f
                  ori          a3, t0, -39
                  slt          s9, t5, s8
                  or           s5, a0, s3
                  lui          a2, 47724
194:              slt          ra, t0, a5
                  and          s10, s6, t2
                  add          s1, a6, s2
                  slt          s6, a3, t1
                  lui          t4, 952125
199:              beq          a2, t5, 206f
                  and          s6, t2, t1
                  and          tp, s6, ra
                  and          ra, zero, s11
                  beq          a4, s7, 213f
                  blt          a4, zero, 207f
                  slli         a2, s8, 20
206:              srli         s6, t6, 27
207:              andi         s10, t6, -1378
                  bne          s7, a4, 215f
                  srl          a2, a6, s0
                  srai         s6, t4, 24
                  add          s1, s0, gp
                  ori          a0, sp, -763
213:              xor          a5, s9, a6
                  srl          a4, s0, gp
215:              slt          a4, a3, s5
                  bne          tp, s4, 234f
                  xor          zero, s0, a4
                  xori         tp, s5, -593
                  beq          t0, s9, 227f
                  slti         s2, t1, 983
                  addi         sp, t6, -1306
                  bltu         s11, t4, 238f
                  sra          t5, a2, t0
                  xori         a1, t5, 123
                  slt          s4, a6, t0
                  sra          t5, t4, gp
227:              beq          t0, gp, 246f
                  sub          t1, zero, a7
                  sll          s4, a6, s6
                  sltiu        sp, t0, -2025
                  slti         s8, zero, 833
main_45:          jal          s6, 2f
0:                jal          t1, 21f
1:                jal          ra, 3f
2:                jal          ra, 16f
3:                jal          ra, 20f
4:                jal          ra, 7f
5:                jal          ra, 1b
6:                jal          t1, 0b
7:                jal          ra, 18f
8:                jal          t1, 23f
9:                jal          ra, 19f
10:               jal          s4, 4b
11:               jal          ra, 22f
12:               jal          t1, 8b
13:               jal          ra, 15f
14:               jal          gp, 17f
15:               jal          t1, 14b
16:               jal          t1, 13b
17:               jal          t1, 6b
18:               jal          ra, 5b
19:               jal          ra, 10b
20:               jal          ra, 11b
21:               jal          ra, 9b
22:               jal          t1, 12b
23:               jal          ra, 24f
24:               jal          ra, 25f
25:               and          t5, gp, gp
                  slli         s1, t6, 17
                  bltu         s1, t6, 238f
234:              andi         a7, t1, 1148
                  add          a0, s6, t6
                  ori          s4, sp, -479
                  blt          s0, t5, 238f
238:              sub          a5, a5, s3
                  xori         t3, a3, -167
                  ori          s4, ra, -1348
                  bgeu         t5, s6, 258f
                  srai         s2, t6, 27
                  addi         a1, t5, 2018
                  sub          s4, s1, s2
                  and          a4, s0, s2
246:              srli         tp, t3, 13
                  andi         s1, a2, -1223
                  nop
                  nop
                  bgeu         s10, s1, 258f
                  lui          a6, 4758
                  srli         zero, sp, 5
                  bgeu         s6, gp, 254f
254:              bne          a7, a2, 262f
                  slti         a6, a6, -148
                  sll          a2, t2, ra
                  blt          a1, gp, 274f
258:              or           s9, t0, a7
                  auipc        tp, 492197
                  add          a5, s0, s9
                  lui          t6, 262647
262:              bge          a5, t5, 266f
                  sll          t5, t0, t6
                  lui          tp, 543988
                  srli         s4, t4, 17
266:              bgeu         s5, a6, 284f
                  sra          s0, sp, t5
                  bgeu         s5, t1, 282f
                  and          t0, s7, s10
                  bgeu         s9, t4, 287f
                  addi         a7, sp, 839
                  sltu         s9, gp, tp
                  srli         t5, tp, 25
274:              addi         sp, t5, 1629
                  addi         s9, t6, -1176
                  blt          t5, t3, 293f
                  srai         s8, a4, 12
                  andi         s0, t1, 739
                  srl          a0, gp, ra
                  xori         s4, a6, 1385
                  sltu         s9, s7, a3
282:              srai         a6, t4, 16
                  slt          s1, t0, a6
284:              and          gp, s10, t0
                  bgeu         s8, a1, 305f
                  bgeu         t6, gp, 292f
287:              slt          tp, t5, t3
                  bgeu         s0, a0, 291f
                  ori          s2, a6, -1009
                  xori         s10, zero, 673
291:              srli         s8, gp, 29
292:              slli         a0, t6, 3
293:              sltiu        a0, zero, 1171
                  blt          s0, zero, 299f
                  sltu         t2, t0, s3
                  xori         t1, a6, 730
                  bge          s10, s1, 298f
298:              nop
299:              sll          sp, t0, a5
                  bltu         t4, a0, 310f
                  xor          a0, ra, t3
                  sltu         t0, s0, s3
                  bge          t4, t5, 304f
304:              auipc        a5, 881101
305:              or           a0, t4, a6
                  ori          a7, a6, -945
                  nop
                  xori         t0, gp, -1028
                  slli         a5, a0, 28
310:              sltu         tp, t3, t2
                  slli         a6, t0, 0
                  bltu         a4, s4, 315f
                  bltu         s3, s3, 319f
                  srai         s2, s5, 14
315:              add          t6, s10, s8
                  add          a3, s4, s8
                  sltiu        t2, s4, 389
                  xori         t2, t2, 833
319:              bgeu         t0, t4, 338f
                  ori          tp, a2, -819
                  sltu         t1, s0, s10
                  srai         gp, a3, 22
                  bgeu         a5, a0, 343f
                  sra          gp, a2, zero
                  nop
                  bge          t3, a0, 330f
                  ori          s1, t2, 955
                  slli         a2, t2, 18
                  sub          t3, s9, zero
330:              add          a3, t3, s6
                  srl          t1, t6, gp
                  slli         t6, a5, 13
                  beq          a0, s8, 351f
                  lui          a7, 160852
                  lui          a1, 61293
                  ori          a4, a6, -81
                  andi         t0, s11, -485
338:              sub          t3, s11, t1
                  and          a7, gp, t4
                  bne          s2, s2, 357f
                  slli         a0, s5, 0
                  add          a2, s11, t6
343:              sll          s9, s3, s0
                  auipc        t3, 842130
                  slli         t5, a3, 1
                  slli         s10, a0, 27
                  srli         gp, a5, 22
                  slli         a7, s5, 2
                  bgeu         s6, t2, 365f
                  andi         a3, sp, -550
351:              sub          tp, s5, a6
                  beq          t1, a0, 360f
                  sub          s10, s5, t5
                  bne          a0, s4, 357f
                  blt          s6, s3, 362f
                  sll          tp, a6, sp
357:              or           t2, s0, sp
                  slli         s9, tp, 29
main_3:           jal          s6, 2f
0:                jal          ra, 15f
1:                jal          t1, 22f
2:                jal          ra, 13f
3:                jal          t1, 26f
4:                jal          ra, 25f
5:                jal          a5, 21f
6:                jal          ra, 1b
7:                jal          t2, 19f
8:                jal          ra, 4b
9:                jal          ra, 28f
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          ra, 8b
13:               jal          t1, 12b
14:               jal          t0, 23f
15:               jal          ra, 10b
16:               jal          ra, 7b
17:               jal          s9, 16b
18:               jal          sp, 29f
19:               jal          ra, 14b
20:               jal          ra, 6b
21:               jal          ra, 3b
22:               jal          a6, 27f
23:               jal          a2, 11b
24:               jal          ra, 0b
25:               jal          ra, 24b
26:               jal          ra, 17b
27:               jal          t1, 18b
28:               jal          ra, 20b
29:               sub          s6, s1, a2
                  addi         a6, zero, -503
360:              srli         a5, a2, 30
                  nop
362:              beq          s0, gp, 376f
                  srli         sp, s7, 31
                  bge          a5, s11, 366f
365:              andi         t1, s6, 1220
366:              bgeu         s6, a5, 383f
                  srl          t3, s4, t4
                  sltiu        s1, s8, 184
                  slli         a7, ra, 10
                  slli         zero, gp, 16
                  and          a7, s10, s4
                  xori         s6, s11, -632
                  srl          sp, tp, a4
                  beq          a6, gp, 377f
                  or           s2, a4, s8
376:              srli         t1, a1, 29
377:              sll          t4, t0, t2
                  slt          s10, sp, t3
                  bltu         a2, t3, 398f
                  sub          t0, t2, s10
                  sltiu        a0, a1, 366
                  srli         a1, s5, 14
383:              and          s1, s9, a3
                  auipc        t5, 413018
                  nop
                  nop
                  ori          t6, t6, -1999
                  xor          a7, a1, t4
                  sll          s4, s11, a1
                  xori         t3, a1, -967
                  andi         a2, s6, 714
                  sll          s6, s7, a3
                  blt          s11, ra, 398f
                  beq          a7, a2, 405f
                  sll          a7, t2, a6
                  srli         t6, t0, 11
                  slt          t0, s10, a3
398:              xor          s2, zero, s5
                  blt          s5, s2, 416f
                  andi         t3, t5, -928
                  srli         t4, gp, 27
                  slti         t0, t0, 1294
                  sra          t3, sp, t2
                  slli         t5, s6, 26
405:              add          s0, s8, s8
                  add          s0, zero, zero
                  bne          t4, zero, 414f
                  xori         a6, t4, 1494
                  xori         a1, zero, 554
                  sltu         a0, zero, tp
                  slli         a2, s4, 12
                  slti         s1, tp, -1667
                  srai         tp, s1, 5
414:              slt          s10, a7, s10
                  bgeu         a4, s0, 432f
416:              auipc        s9, 115645
                  slli         t1, a5, 26
                  bltu         gp, a7, 426f
                  or           zero, sp, t6
                  sltu         a1, s9, s2
                  addi         a5, a5, 6
                  beq          t5, a0, 430f
                  ori          s9, t3, -1874
                  or           t1, s2, a1
                  blt          sp, s4, 435f
426:              bge          s0, s2, 434f
                  bge          s10, gp, 445f
                  add          s10, s7, t3
                  addi         a7, s10, 459
430:              and          t6, a1, s2
                  beq          s10, zero, 439f
432:              auipc        t0, 476769
                  beq          s7, s4, 443f
434:              andi         tp, s9, 292
435:              addi         zero, tp, -1976
                  srli         t5, t3, 5
                  slli         s0, t3, 16
                  nop
439:              sll          s8, s11, s5
                  bltu         s6, t3, 454f
                  lui          a7, 346134
                  and          t4, a2, s0
443:              xori         a0, ra, 1019
                  nop
445:              sra          t1, t5, t5
                  srai         t0, t4, 26
                  ori          s10, zero, 687
                  sltiu        t5, tp, 691
                  slli         s6, s6, 3
                  slli         zero, s3, 5
                  blt          sp, s3, 454f
                  sub          a2, s8, t1
                  and          t5, zero, t0
454:              xor          s8, sp, a5
                  and          tp, zero, sp
                  sub          a5, t6, s10
                  sll          s8, a3, s0
                  ori          a5, tp, -1014
                  bge          a1, s1, 467f
                  nop
                  blt          gp, t6, 480f
                  beq          s11, s4, 480f
                  sll          s1, s5, t5
                  beq          zero, t6, 467f
                  bltu         t5, t0, 467f
                  addi         s0, t6, 1932
467:              lui          t2, 967907
                  nop
                  add          ra, t1, t1
                  sll          s5, s0, tp
                  nop
                  bltu         a4, s3, 490f
                  slt          t5, s11, a0
                  nop
                  bge          t6, a7, 494f
                  slli         t3, a3, 29
                  bgeu         a5, ra, 478f
478:              bne          t6, a4, 495f
                  blt          s8, s4, 484f
480:              ori          s0, ra, 592
                  addi         s4, a5, 1503
                  auipc        a4, 385220
                  srli         s2, t5, 27
484:              lui          a7, 889400
                  sltiu        t2, s3, 127
                  srai         ra, a6, 23
                  sll          zero, s10, a7
                  bne          s7, a1, 499f
                  lui          tp, 560091
490:              or           a4, tp, t4
                  lui          s5, 235952
                  sub          t3, tp, a2
                  bge          s3, a0, 500f
494:              xor          t5, a7, t1
495:              add          a2, s5, gp
                  and          s9, sp, a3
                  beq          ra, s1, 503f
                  bgeu         a1, t4, 506f
499:              srli         s4, s11, 26
500:              and          s5, t1, s3
                  xori         t0, t1, -1106
                  or           s9, s2, s2
503:              add          a5, t6, t5
                  bge          a3, a4, 507f
                  bge          s1, tp, 522f
506:              slti         t5, t5, 1079
507:              bne          s4, s9, 524f
                  addi         s2, gp, 1072
                  lui          a4, 95800
                  sub          s6, a1, t5
                  srl          a2, a3, a1
                  nop
                  lui          gp, 764087
                  addi         a2, a3, -682
                  xori         zero, s2, -1912
                  xori         zero, ra, 136
                  lui          s0, 682816
                  xor          a5, s6, s0
                  andi         a5, s5, 309
                  srli         s2, s8, 5
                  auipc        s4, 17469
522:              sltiu        s4, t1, 1017
                  and          s5, s11, a1
524:              slli         s4, s10, 6
                  beq          sp, t2, 533f
                  add          t3, s7, a6
                  bne          s6, a0, 534f
                  ori          t4, tp, 965
                  sltiu        a1, s1, -854
                  lui          t2, 536293
                  auipc        s2, 765755
                  or           ra, s0, s2
533:              sra          a6, a2, a0
534:              ori          s9, t3, -1589
                  xori         zero, a3, 321
                  bge          a7, s7, 552f
                  nop
                  blt          s11, s8, 539f
539:              bne          t4, a3, 556f
                  andi         t3, s6, 1707
                  bgeu         s11, s9, 545f
                  srai         s0, s6, 5
                  bgeu         s11, a6, 563f
                  srl          a2, t5, s11
545:              srli         a0, t0, 5
                  andi         t2, a1, 863
                  addi         s4, t5, -339
                  sltu         s2, a6, a5
                  srai         tp, s7, 30
                  srai         t5, t1, 10
                  blt          a6, s1, 561f
552:              beq          ra, t0, 557f
                  bgeu         t2, s1, 556f
                  sra          a3, s0, s9
                  sra          t1, zero, s9
556:              andi         a2, s1, -1789
557:              sra          t2, s2, s0
                  andi         a6, t3, -1112
                  lui          t3, 522184
                  slti         t1, a4, -589
561:              nop
                  andi         s2, t6, -1960
563:              and          a1, t3, s5
                  slti         s2, s0, 1731
                  andi         a5, s10, -1741
                  srli         a7, a1, 22
                  beq          t5, zero, 575f
                  xor          s5, ra, s4
                  nop
                  sub          zero, t6, s7
                  blt          s3, t0, 591f
                  sub          a1, a1, s11
                  ori          s1, a3, -529
                  slt          t2, a5, ra
575:              nop
                  lui          s0, 918318
                  slt          tp, t1, a4
                  slli         tp, t2, 10
                  srai         t2, t3, 14
                  nop
                  or           tp, s9, s10
                  bltu         s10, s9, 599f
                  bgeu         s8, t0, 588f
                  blt          ra, s8, 594f
                  sll          a4, a0, gp
                  andi         a4, s8, -86
                  nop
588:              addi         a4, gp, -1489
                  sll          t2, s8, s11
                  xor          gp, s4, t4
591:              srai         t1, a6, 28
                  or           s9, a3, a6
                  sra          a3, s11, a7
594:              bne          s11, ra, 596f
                  blt          zero, s7, 602f
596:              srai         a5, s0, 10
                  sll          s0, gp, t4
                  nop
599:              bgeu         zero, t0, 618f
                  sltiu        a1, a0, -1612
                  xor          t1, a0, t4
602:              slli         zero, zero, 5
                  slt          gp, a3, s11
                  xor          tp, a4, t4
                  srl          a6, s2, a0
                  bge          s11, sp, 623f
                  and          s5, s9, s4
                  nop
                  bge          t5, ra, 627f
                  bge          t1, t4, 627f
                  or           t4, t0, t2
                  lui          s2, 105515
                  bltu         s4, a4, 631f
                  bne          zero, a5, 618f
                  ori          gp, t3, -593
                  or           a4, a4, a1
                  and          s10, s4, t1
618:              sra          s6, t2, s9
                  bgeu         t5, s0, 638f
                  lui          sp, 859285
                  bgeu         s10, s10, 622f
622:              nop
623:              add          t1, s0, sp
                  bge          s10, s6, 632f
                  bgeu         t0, ra, 626f
626:              bgeu         t2, s2, 629f
627:              srli         t6, sp, 20
                  bne          s9, s11, 645f
629:              sltu         t6, s11, s9
                  add          zero, t1, s11
631:              bge          s3, t4, 639f
632:              xor          s0, gp, a1
                  addi         t5, a0, 313
                  sltiu        s9, s8, -1647
                  auipc        ra, 56483
                  srai         s1, s10, 12
                  blt          s3, a4, 644f
638:              slt          s8, ra, a3
639:              or           a0, s0, s10
                  sra          zero, t6, s0
                  bne          a2, a1, 644f
                  xori         s5, s4, 1198
                  blt          s6, tp, 653f
644:              xor          a4, a2, t0
645:              slli         ra, s3, 13
                  sll          zero, t6, s10
                  or           s5, s2, a4
                  sub          gp, a1, t3
                  bne          t4, a1, 654f
                  sub          a6, s8, a3
                  beq          a3, t5, 662f
                  bge          s5, t2, 660f
653:              bge          t5, tp, 659f
654:              bge          a2, a4, 668f
                  and          t3, t2, s7
                  bltu         a4, sp, 672f
                  sra          s9, t3, ra
                  and          s10, s3, a2
659:              slti         gp, a3, 1347
660:              add          gp, a5, t2
                  lui          s5, 600387
662:              nop
                  and          t6, a4, a3
                  slti         ra, t4, 163
                  xori         t6, s7, -1257
                  nop
                  auipc        t2, 208175
668:              ori          t4, tp, 110
                  srli         a7, t0, 23
                  sll          s0, t3, a0
                  slti         t3, s1, -1248
672:              auipc        a6, 444226
                  bne          a4, s0, 690f
                  and          tp, s5, s10
                  addi         t5, s3, -119
                  slli         s8, s11, 4
                  sltu         a4, s1, s5
                  slli         a6, sp, 29
                  srli         t2, s7, 10
                  sltiu        s0, gp, 1242
                  and          zero, a6, t2
                  slti         s10, s1, -1599
                  bltu         s11, sp, 691f
                  sltiu        a4, ra, 592
                  ori          a3, s8, 900
                  add          a3, zero, s4
                  slli         t2, ra, 17
                  sub          s9, s6, a4
                  srl          t4, s3, s5
690:              slti         t4, s6, 138
691:              addi         a6, a4, -731
                  nop
                  srl          t1, zero, a7
                  sub          t4, s2, s7
                  and          a3, t3, a6
                  lui          s5, 493562
                  nop
                  srl          t2, s3, tp
                  bge          s7, s0, 704f
                  lui          ra, 451852
                  srl          t2, a5, zero
                  andi         s0, a6, -200
                  sll          gp, ra, s10
704:              ori          zero, s11, -1075
                  sub          a2, a5, s7
                  srli         t3, sp, 17
                  slti         a2, zero, -1467
                  blt          s6, t0, 722f
                  sltu         t5, zero, s4
                  bltu         s4, tp, 713f
                  bgeu         a0, s4, 712f
712:              andi         s2, t3, -1332
713:              beq          ra, tp, 717f
                  xor          a3, s10, s10
                  sltiu        s5, s3, -843
                  slli         t6, s3, 4
717:              srai         ra, s10, 30
                  sltiu        s6, gp, 1624
                  xor          s4, s5, t1
                  ori          s6, s3, 358
                  slti         ra, a4, -1485
722:              sub          s10, a3, t2
                  xori         a7, s5, 535
                  sltiu        s0, a2, 1993
                  ori          t1, a5, 452
                  ori          t5, a1, 226
                  or           s2, t1, a7
                  bge          t4, t6, 736f
                  sltiu        s0, s10, 1168
                  slli         a5, s9, 20
                  sltiu        a2, a7, -1836
                  srli         t4, s10, 2
                  bne          t4, ra, 741f
                  sltu         a5, s9, a2
                  or           a2, t6, a3
736:              add          a2, a1, s4
                  srai         s0, t1, 17
                  sub          a3, s5, a7
                  bltu         s8, sp, 758f
                  bltu         s2, t5, 746f
741:              nop
                  sub          s4, sp, s10
                  lui          s4, 595685
                  blt          a6, t0, 761f
                  srai         a5, s10, 27
746:              slli         t0, sp, 26
                  bge          a6, t1, 749f
                  or           s10, s4, s10
749:              andi         s1, a6, -1151
                  blt          s11, s2, 767f
                  srai         t6, sp, 16
                  sll          t2, zero, s8
                  bltu         zero, gp, 772f
                  xori         t6, a7, 1071
                  bltu         s2, gp, 773f
                  addi         a6, s2, -80
                  beq          sp, t5, 767f
758:              srai         a0, s6, 10
                  bgeu         t0, gp, 762f
                  slti         tp, s11, -1612
761:              sub          zero, s8, a6
762:              sll          sp, gp, s2
                  sltu         t0, zero, ra
                  slti         s4, t0, 828
                  andi         s4, s0, -1569
                  nop
767:              slti         t1, a5, -940
                  sltu         s8, a0, s11
                  bge          s7, s7, 776f
                  xor          a7, s2, t3
                  xori         a4, s0, -1869
772:              blt          ra, tp, 773f
773:              andi         t4, a3, -1490
                  bne          s4, t1, 792f
                  beq          t6, s10, 795f
776:              sltu         a7, t2, s4
                  slli         a3, s2, 18
                  bne          s2, t3, 783f
                  bltu         s3, zero, 786f
                  srai         t2, a0, 7
                  or           ra, a1, a1
                  blt          t3, s1, 790f
783:              slli         gp, t6, 23
                  srli         s6, gp, 31
                  ori          gp, s4, 785
786:              xori         t5, s6, 441
                  sub          a3, gp, a6
                  lui          ra, 597932
                  lui          a7, 453640
790:              slti         s2, zero, -202
                  xori         s5, a1, 9
792:              bne          t5, s7, 795f
                  blt          s9, a2, 809f
                  sltu         s9, t1, s4
795:              or           gp, gp, ra
                  andi         s0, s11, -1492
                  slt          a6, a6, s11
                  addi         t3, a5, -1892
                  xor          s8, t0, tp
                  andi         gp, a2, -1368
                  bgeu         s8, gp, 812f
                  beq          a0, t4, 819f
                  srai         a5, ra, 12
                  bltu         a7, a5, 814f
                  bne          t1, a2, 811f
                  bgeu         t0, s11, 807f
807:              slti         a1, t5, -1624
                  srai         gp, a3, 0
809:              nop
                  sra          a7, s2, a1
811:              xor          a6, s0, tp
812:              or           a6, s5, a4
                  xori         tp, tp, 1900
814:              sra          a6, a2, t4
                  sra          t2, a1, t4
                  slti         s8, t0, 673
                  bgeu         a7, s5, 820f
                  add          t2, s0, a4
819:              bne          t2, gp, 827f
820:              lui          t5, 543554
                  addi         a2, t1, 171
                  srai         s0, s11, 26
                  nop
                  xori         t6, a3, -1081
                  slli         t6, a4, 21
                  ori          t6, t1, 1534
827:              sll          t3, gp, s3
main_0:           jal          s6, 6f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          ra, 4f
3:                jal          t1, 8f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          t1, 2b
7:                jal          a5, 9f
8:                jal          t0, 0b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          s9, 7b
12:               slli         a1, a4, 20
                  beq          s3, t1, 836f
                  slli         s6, s5, 27
                  sltu         s2, s0, a0
                  bgeu         s6, s9, 836f
                  lui          a0, 679951
                  sltu         gp, s6, t1
                  srl          s5, s11, t0
                  sra          a4, zero, s5
836:              sltiu        s1, s5, -1434
                  auipc        a1, 174590
                  or           t2, s10, sp
                  xori         t1, a3, 515
                  beq          ra, a7, 842f
                  bge          s1, a4, 848f
842:              sltiu        s5, t5, -136
                  slli         s4, s1, 24
                  slti         t1, a6, 950
                  srl          gp, a0, sp
                  srl          t1, sp, t6
                  sltiu        sp, gp, 1152
848:              slt          s4, s9, s10
                  auipc        s8, 486655
                  beq          zero, s2, 864f
                  xori         sp, s2, 815
                  andi         s10, tp, -695
                  sll          a4, tp, a6
                  bne          a7, sp, 857f
                  beq          gp, s3, 866f
                  bltu         t5, a4, 873f
857:              bltu         a7, s1, 873f
                  srli         a5, s3, 1
                  sub          t0, t1, t0
                  or           s4, s5, s8
                  slt          tp, s1, s2
                  sltu         s2, t1, s4
                  ori          gp, a3, -304
864:              bne          t2, s1, 881f
                  xor          s4, s0, t6
866:              xori         s10, s4, 1481
                  beq          t5, a0, 870f
                  andi         ra, a7, 645
                  addi         a4, t0, 287
870:              sltiu        s4, a4, 78
                  lui          a5, 553064
                  beq          a6, a0, 891f
873:              blt          s0, t5, 881f
                  sll          t2, t2, a6
                  bge          sp, t0, 892f
                  sltu         a4, t3, a5
                  sltiu        s8, a5, -1731
                  sub          s9, s6, ra
                  auipc        s0, 703204
                  ori          t1, t0, -1722
881:              ori          a7, s10, 337
                  srl          a6, tp, t4
                  xori         a4, s7, -1423
                  bgeu         s10, t5, 904f
                  srl          a1, a4, s9
                  blt          s5, s9, 896f
                  auipc        s10, 650786
                  srai         s4, s10, 13
                  sra          s2, t4, a3
                  sll          ra, s10, sp
891:              xori         a0, s6, -1583
892:              srl          t4, s1, s5
                  lui          tp, 195525
                  slt          s2, s10, t5
                  slli         a3, a4, 14
896:              and          t1, s5, zero
                  auipc        a4, 234890
                  bne          s9, gp, 915f
                  bgeu         s7, s3, 904f
                  srl          s9, sp, t2
                  auipc        ra, 370438
                  lui          t0, 142872
                  bltu         s6, a6, 921f
904:              bge          ra, s0, 908f
                  add          t4, s11, a6
                  add          t5, tp, t2
                  srai         t3, ra, 4
908:              addi         s4, gp, 1099
                  blt          s4, t3, 927f
                  xor          gp, t0, s3
                  andi         t5, a6, 1702
                  slli         a0, a7, 4
                  xor          a6, gp, t0
                  slti         gp, s2, -1305
915:              srl          zero, s6, t0
                  nop
                  xori         s8, s0, -1185
                  srli         sp, s4, 6
                  add          t3, t1, a7
                  ori          sp, t6, 103
921:              bne          s5, s0, 931f
                  addi         t1, s5, 1733
                  sltu         s10, gp, gp
                  srai         a1, s5, 9
                  sra          a7, s6, s7
                  srai         t5, tp, 22
927:              add          s5, a4, s8
                  srai         t1, s4, 30
                  bge          s6, t3, 948f
                  and          a2, s2, a2
931:              bgeu         t0, gp, 932f
932:              slli         t4, zero, 28
                  slli         a7, s11, 18
                  nop
                  xori         a7, tp, 1579
                  or           a0, a1, s6
                  srl          a7, tp, gp
                  add          zero, t4, tp
                  blt          t3, s4, 947f
                  sll          s5, s5, s9
                  or           t0, t0, s0
                  srai         zero, a4, 15
                  srai         t4, t3, 13
                  sltiu        a2, gp, 957
                  xori         a7, t4, 1621
                  or           s2, s10, s7
947:              ori          zero, t2, 1619
948:              xor          t2, t0, sp
                  slti         s6, s6, -1646
                  sub          sp, ra, s3
                  nop
                  auipc        ra, 401057
                  bne          s11, t1, 960f
                  andi         t4, s9, -898
                  xori         t5, s7, 1363
                  bltu         a0, a5, 960f
                  or           t6, s8, a5
                  ori          a1, s8, 1290
                  and          sp, a5, s0
960:              sra          a4, s7, gp
                  slt          t4, s4, s4
                  bgeu         t0, s7, 979f
                  ori          s1, s2, -1564
                  sub          a0, a3, a0
                  beq          sp, tp, 985f
                  bne          s5, t5, 973f
                  slt          t5, s2, s3
                  andi         t2, a5, -161
                  srai         s5, s0, 1
                  bne          s6, ra, 971f
971:              srli         a4, a7, 13
                  slli         t2, s9, 3
973:              and          s0, t5, zero
                  bgeu         s5, t6, 991f
                  or           sp, a0, t0
                  add          t4, a4, gp
                  addi         s6, a4, -738
                  sra          s0, t5, a4
979:              beq          a3, t3, 984f
                  slli         s2, gp, 28
                  bgeu         a7, a6, 986f
                  auipc        s5, 71052
                  slli         t5, s8, 9
984:              nop
985:              srai         s8, tp, 23
986:              or           s5, s5, a3
                  bltu         a0, t2, 995f
                  lui          a1, 120352
                  and          t1, a1, s11
                  and          s5, t3, sp
991:              slt          s10, a6, a1
                  and          s9, a0, gp
                  and          s10, s1, a2
                  srl          t4, s9, s1
995:              srl          s9, s4, a6
                  bgeu         a6, ra, 1014f
                  slli         sp, t6, 26
                  slt          a2, s5, t3
                  sltiu        a4, s4, -966
                  sltiu        s4, s2, 1600
                  addi         a5, a5, -697
                  sra          a5, s9, a1
                  xori         tp, t3, 526
                  beq          s0, a4, 1006f
                  nop
1006:             nop
                  slt          t2, a7, s8
                  bltu         gp, gp, 1024f
                  sub          t0, s6, t2
                  addi         a6, s3, 1436
                  sll          s5, a1, s0
                  sltu         s4, ra, a4
                  slli         a1, s5, 15
1014:             or           sp, t6, t4
                  beq          s9, t5, 1021f
                  srai         s8, s4, 10
                  bltu         t3, s5, 1034f
                  sltiu        gp, s2, 485
                  sltu         t0, a7, t3
                  slti         gp, zero, -1015
1021:             slli         gp, tp, 27
                  auipc        a1, 715574
                  add          zero, t4, s4
1024:             slti         t4, s7, -302
                  lui          t6, 300610
                  sll          a2, s7, t1
                  bne          s2, zero, 1041f
                  ori          t1, t1, -564
                  andi         ra, a5, 1218
                  and          t2, zero, a0
                  bne          s9, a7, 1039f
                  slt          s9, s1, s11
                  and          gp, t2, t0
1034:             addi         zero, a4, -115
                  sub          t0, t0, sp
                  xor          s2, t5, s5
                  bgeu         s11, t3, 1040f
                  srli         t3, s2, 13
1039:             bne          s7, tp, 1058f
1040:             bne          s3, t3, 1043f
1041:             xori         a4, zero, -1557
                  srl          t5, t0, s0
1043:             andi         a7, s3, -625
                  and          a5, s10, a2
                  xor          t3, s7, a3
                  addi         a1, a1, 1226
                  ori          t4, s3, 653
                  slti         s9, a6, -573
                  srai         t2, zero, 12
                  addi         s2, a2, -1601
                  slli         a6, zero, 13
                  bltu         s1, t1, 1062f
                  and          ra, s9, s1
                  bltu         a0, a6, 1065f
                  auipc        a7, 927036
                  slli         s4, a0, 16
                  blt          a1, s0, 1064f
1058:             sltu         zero, s8, ra
                  xori         a6, a5, 983
                  srai         t4, s4, 21
                  andi         s5, s5, 1169
1062:             xori         s6, t3, -1716
                  srl          s4, a5, s6
1064:             nop
1065:             sltiu        zero, s1, 1146
                  lui          a7, 414132
                  slli         s2, s10, 15
                  srli         t1, zero, 0
                  bge          tp, gp, 1086f
                  bgeu         gp, s9, 1080f
                  lui          a3, 498052
                  slti         t2, s1, 956
                  andi         a2, t2, -430
                  ori          a5, ra, 1802
                  add          s5, t0, t0
                  slti         a6, a3, 1195
                  slti         a0, t6, 1206
                  bne          s0, s6, 1081f
                  xori         a7, s0, 872
1080:             addi         s2, t2, -257
1081:             slt          a2, t0, a3
                  blt          s7, a7, 1100f
                  add          s9, t6, s6
                  addi         t6, a0, -1670
                  slli         tp, t3, 11
1086:             auipc        a3, 309239
                  lui          gp, 477255
                  xor          a6, s9, zero
                  slli         t5, a4, 22
                  add          t2, s0, a4
                  bne          s6, a3, 1092f
1092:             addi         a3, t1, -1027
                  andi         s6, s0, 975
                  slti         a1, sp, 1883
                  auipc        a2, 438801
                  add          a0, t0, tp
                  blt          a4, zero, 1105f
                  and          a7, zero, s9
                  blt          t4, s1, 1118f
1100:             and          s2, t4, s10
                  bltu         sp, gp, 1109f
                  or           t2, s5, a4
                  add          a0, s5, gp
                  slti         a5, s9, -910
1105:             sub          tp, t4, s2
                  sra          t3, a6, zero
                  sll          s6, s10, s6
                  add          s5, s2, s5
1109:             slli         s9, s3, 10
                  or           s9, a4, zero
                  sll          s8, t1, s3
                  bne          s8, s4, 1130f
                  sra          s8, t3, s11
                  srl          a3, s4, t0
                  xor          t0, a5, sp
                  bne          t1, s7, 1119f
                  xori         a1, s8, -172
1118:             beq          a6, a2, 1135f
1119:             blt          s0, tp, 1126f
                  sra          t4, s5, zero
                  bge          t2, a7, 1138f
                  srli         t5, a4, 14
                  xori         t0, a3, 1519
                  sll          gp, ra, s3
                  srli         t3, s6, 23
1126:             lui          gp, 225522
                  sltiu        a0, t4, -808
                  sub          a5, t4, a5
                  bne          a6, s4, 1130f
1130:             srl          t1, t5, a1
                  lui          a6, 312259
                  sra          zero, a6, t4
                  slli         t5, gp, 2
                  addi         zero, s10, 186
1135:             addi         t1, s11, -1842
                  beq          s1, a6, 1152f
                  sub          zero, s0, a5
1138:             sub          s6, t3, a5
                  sltiu        s2, a1, -1323
                  srai         a2, s0, 17
                  srli         zero, a3, 9
                  srli         t4, s0, 10
                  srli         a6, t4, 10
                  bgeu         s5, s3, 1147f
                  slti         t0, t6, 1089
                  srli         s6, tp, 8
1147:             bne          s5, sp, 1154f
                  auipc        t6, 477448
                  srl          t2, s11, s8
                  sll          tp, a0, t5
                  and          a0, s8, s0
1152:             srai         sp, a1, 16
                  addi         gp, s9, -1452
1154:             slti         tp, s1, -456
                  slt          gp, sp, t0
                  sltiu        sp, a6, 1914
                  bne          t2, ra, 1171f
                  addi         a6, a1, -2034
                  srl          s2, zero, s8
                  sltiu        t5, a7, -114
                  srl          zero, a2, s3
                  add          s2, s11, t5
                  beq          s7, gp, 1169f
                  ori          t4, s7, -742
                  nop
                  sltiu        s0, s3, 401
                  ori          a3, s8, 1931
                  bne          a1, gp, 1170f
1169:             andi         a1, s0, -1625
1170:             bge          s0, a2, 1189f
1171:             xori         a6, s3, 1986
                  ori          s9, t2, 152
                  auipc        t6, 838375
                  andi         s6, s5, 989
                  and          a7, ra, s6
                  andi         t0, s1, 1396
                  srli         a1, s10, 23
                  ori          a2, s1, -1985
                  and          t6, s0, s8
                  srai         zero, s5, 4
                  bne          ra, s0, 1199f
                  bge          a6, a4, 1190f
                  xor          s2, t6, a0
                  addi         a3, s8, -485
                  slti         ra, t5, -1947
                  srl          t0, zero, t1
                  add          t2, s1, t6
                  blt          tp, gp, 1205f
1189:             lui          tp, 285703
1190:             srai         gp, ra, 30
                  sra          a1, t5, s1
                  bne          a2, a3, 1197f
                  sra          s5, s3, a6
                  srai         t6, s1, 15
                  srl          s4, t6, t1
                  bne          t1, s11, 1204f
1197:             xori         s4, gp, 77
                  blt          s8, ra, 1217f
1199:             nop
                  sltu         t3, a6, s11
                  bltu         s11, a0, 1218f
                  beq          s2, s6, 1210f
                  blt          s9, a7, 1214f
1204:             beq          s6, t4, 1224f
1205:             or           t4, s5, t4
                  sltu         t0, s2, a7
                  slti         a4, a3, -1167
                  and          s1, s5, a1
                  sll          t5, t0, a6
1210:             srai         s0, a4, 4
                  and          s6, t4, a7
                  auipc        a5, 823225
                  bgeu         tp, s3, 1223f
1214:             slli         s0, s11, 23
                  addi         gp, s4, 958
                  andi         a1, sp, -551
1217:             xor          t1, t4, a2
1218:             slti         s8, s6, -421
                  sub          t2, a5, zero
                  sub          sp, a7, t1
                  sra          t5, t0, a0
                  bltu         s4, s1, 1226f
1223:             blt          tp, s6, 1231f
1224:             slti         t4, t6, -1239
                  auipc        a5, 989438
1226:             auipc        a7, 112760
                  and          s2, t4, a5
                  sltiu        s9, s5, 143
                  xori         s6, t1, 1342
                  add          s2, s4, a7
1231:             bltu         s4, a7, 1241f
                  beq          a6, s8, 1235f
                  sltu         a1, a0, a3
                  nop
1235:             sra          a6, sp, t1
                  or           t0, s0, t3
                  andi         a5, s1, -109
                  xor          sp, s5, t4
                  sra          s4, t0, s9
                  bne          a3, t6, 1245f
1241:             sra          s4, a1, s7
                  sll          a5, s4, ra
                  bge          tp, s2, 1244f
1244:             or           s8, s11, t3
1245:             srli         s8, t2, 29
                  nop
                  bge          s11, s2, 1255f
                  nop
                  slli         a1, s10, 25
                  beq          a0, s5, 1257f
                  bge          t5, sp, 1258f
                  blt          gp, s3, 1266f
                  xor          ra, t5, t1
                  slt          s8, t6, s5
1255:             addi         ra, ra, -1844
                  bltu         t5, s11, 1276f
1257:             slt          s2, s0, a1
1258:             srli         a1, a6, 11
                  andi         a6, s8, 265
                  or           a4, s3, gp
                  slli         a2, s8, 11
                  bgeu         t1, s8, 1273f
                  sub          a4, t1, s1
                  sltiu        t0, s2, -1516
                  srai         s0, a0, 9
1266:             xori         zero, a1, 498
                  blt          t5, t0, 1270f
                  sltu         t5, gp, s7
                  sub          s8, t1, s3
1270:             or           s5, t2, s9
                  bne          a6, s11, 1275f
                  auipc        s4, 304723
1273:             bge          a1, gp, 1290f
                  sra          a0, t2, a0
1275:             sll          t5, t4, t6
1276:             srai         t6, s5, 9
                  sra          t2, t5, t5
                  lui          t6, 622486
                  auipc        t5, 282348
                  bge          t1, a1, 1296f
                  bge          a7, a6, 1284f
                  slt          s4, ra, t0
                  sub          t6, s2, s1
1284:             srai         tp, s0, 26
                  blt          zero, a5, 1291f
                  slti         tp, zero, -28
                  nop
                  auipc        zero, 360626
                  bne          a2, t5, 1292f
1290:             bgeu         gp, t3, 1295f
1291:             ori          s0, a3, -1122
1292:             sra          s4, t4, s10
                  and          t5, t2, t0
                  nop
1295:             blt          s5, s1, 1303f
1296:             slli         t4, s4, 17
                  blt          t4, a5, 1305f
                  srai         s10, tp, 9
                  beq          a2, s10, 1304f
                  srai         s5, t5, 0
                  bne          s0, s0, 1303f
                  xori         a3, t3, 1777
1303:             addi         a0, a0, 955
1304:             srl          a4, s11, s6
1305:             sll          t2, s6, s10
                  xor          ra, s0, s5
                  nop
                  xori         s2, t0, -193
                  bltu         t4, t2, 1317f
                  nop
main_42:          jal          s6, 15f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          s6, 11f
3:                jal          ra, 12f
4:                jal          ra, 7f
5:                jal          ra, 14f
6:                jal          ra, 4b
7:                jal          t1, 3b
8:                jal          s10, 0b
9:                jal          t1, 8b
10:               jal          t1, 16f
11:               jal          t1, 5b
12:               jal          t1, 1b
13:               jal          t1, 2b
14:               jal          gp, 9b
15:               jal          sp, 6b
16:               and          t4, s10, a4
                  nop
                  bgeu         s1, s9, 1330f
                  blt          s4, s3, 1314f
1314:             nop
                  sltu         a4, s10, s8
                  andi         t0, s7, 1458
1317:             sltiu        s9, a1, -469
                  slli         t2, t3, 2
                  add          t3, s8, s10
                  beq          s1, s9, 1337f
                  srl          a4, zero, s10
                  sub          s9, t5, zero
                  srai         ra, s9, 21
                  slli         t1, t3, 26
                  auipc        zero, 213181
                  srai         a0, t0, 20
                  bne          a2, a0, 1337f
                  sll          s2, a7, ra
                  srl          a2, a7, a0
1330:             or           a5, a4, a4
                  srl          tp, s1, s0
                  sltu         ra, s4, s0
                  sub          a5, t1, s4
                  sll          a7, s9, tp
                  slt          a4, gp, s10
                  sltiu        t3, a3, 1613
1337:             slti         a7, s6, -1183
                  or           sp, s7, s9
                  blt          a3, a7, 1340f
1340:             sltu         a2, s6, s9
                  xori         a7, t4, 1060
                  xor          t1, a3, s4
                  blt          s2, a0, 1362f
                  addi         gp, gp, 1150
                  lui          t4, 131743
                  auipc        t0, 920220
                  srl          s10, s7, s8
                  add          t6, s4, s0
                  slt          s2, gp, gp
                  bltu         sp, a4, 1367f
                  slti         a5, a0, 768
                  andi         t5, a0, 1294
                  beq          t6, s2, 1363f
                  bgeu         gp, gp, 1373f
                  bne          s11, a7, 1373f
                  add          a2, s3, sp
                  beq          s10, t1, 1374f
                  bne          a2, s3, 1359f
1359:             xori         tp, a4, 1277
                  sltu         t2, a7, s11
                  or           a3, s11, s1
1362:             lui          t6, 647
1363:             andi         zero, s7, -271
                  slti         ra, s2, -1767
                  sub          t6, gp, s2
                  nop
1367:             srli         s4, s7, 1
                  srl          s8, s6, a7
                  auipc        gp, 598047
                  lui          a3, 794845
                  ori          a4, s5, -204
                  sltiu        t5, a4, -1119
1373:             sll          sp, gp, t6
1374:             slti         s4, s2, 781
                  srai         a4, gp, 3
                  xori         gp, a2, -220
                  lui          s10, 224935
                  srai         s8, s3, 2
                  sltu         s9, s5, t4
                  or           a0, s9, t0
                  xor          a3, sp, t5
                  and          a7, gp, gp
                  bltu         a3, a5, 1387f
                  srl          a6, s2, s10
                  bge          a3, t3, 1393f
                  bge          s5, s6, 1394f
1387:             and          s8, t2, s4
                  bne          a2, tp, 1405f
                  srai         a1, sp, 2
                  srli         a6, t4, 22
                  srli         t6, sp, 24
                  sltiu        a0, a4, -1297
1393:             bgeu         t6, a6, 1413f
1394:             slli         gp, s3, 24
                  srai         t4, s3, 5
                  or           s9, a0, a4
                  slt          a5, t4, t2
                  sltu         gp, a7, a1
                  sltiu        ra, t0, -278
                  slt          a1, s3, s11
                  bltu         a4, t2, 1420f
                  srl          t1, a5, t5
                  slti         s10, gp, 1841
                  and          a7, t4, s1
1405:             sub          a6, ra, s8
                  sub          s6, t5, s2
                  ori          s4, s8, -1250
                  bgeu         s8, t5, 1413f
                  xori         t2, a1, 10
                  srli         gp, t4, 27
                  sra          s2, s3, ra
                  andi         gp, a1, -861
1413:             slt          a2, sp, s10
                  beq          zero, s4, 1432f
                  blt          a7, s11, 1423f
                  xor          a3, s5, s8
                  bge          a6, a7, 1433f
                  andi         t3, a2, 200
                  auipc        t2, 867306
1420:             andi         s5, zero, -62
                  sll          t2, s10, s11
                  sra          a1, s5, s5
1423:             sll          a2, t6, a5
                  slti         a3, tp, 1125
                  xori         tp, zero, -98
                  blt          a1, a1, 1436f
                  sll          gp, t1, s3
                  slt          gp, s10, tp
                  bgeu         s6, s5, 1430f
1430:             beq          a3, a1, 1449f
                  slti         t4, zero, 1961
1432:             nop
1433:             add          s2, s11, t0
                  sll          a1, t6, t5
                  and          a3, a3, s7
1436:             bne          zero, s7, 1442f
                  nop
                  sltu         t3, ra, s2
                  beq          a1, t6, 1447f
                  ori          s9, t3, -1831
                  sltiu        s9, zero, 933
1442:             addi         t5, s0, 1270
                  slli         tp, a7, 2
                  sub          a3, a4, tp
                  add          ra, zero, t5
                  xori         a6, s10, 1845
1447:             bge          t5, t1, 1465f
                  sltiu        a6, s4, -1786
1449:             blt          s11, s11, 1456f
                  add          a3, s9, s9
                  bgeu         sp, a5, 1468f
                  and          sp, a7, t5
                  add          a2, sp, t4
                  xori         t4, t0, -871
                  sltiu        a5, t6, -1801
1456:             sll          t4, a1, t3
                  srl          ra, s8, a6
                  nop
                  srai         s8, t5, 18
                  bltu         a2, gp, 1471f
                  xori         a7, s6, -591
                  srl          s8, t1, s7
                  sub          s1, a1, s7
                  xor          a7, sp, s10
1465:             bgeu         s2, s9, 1479f
                  bne          a4, t3, 1469f
                  sub          t0, t1, t5
1468:             bgeu         sp, a0, 1475f
1469:             bgeu         gp, s10, 1479f
                  bltu         s10, s4, 1487f
1471:             srai         a2, tp, 25
                  lui          s2, 438556
                  nop
                  blt          t5, a4, 1477f
1475:             sll          t6, s6, a7
                  andi         s1, a6, 1426
1477:             xori         a1, s2, 1431
                  auipc        a5, 537044
1479:             nop
                  nop
                  and          s10, s9, t4
                  srl          a6, a5, sp
                  slt          ra, t5, s6
                  sltiu        a5, s0, -1033
                  xori         ra, s3, 827
                  sltiu        t3, a5, -389
                  sltu         a5, t6, t5
                  or           t0, s0, t5
                  la           s1, sub_1
                  srli         t3, tp, 21
                  sll          s8, s4, tp
                  lui          t3, 208085
                  addi         s1, s1, 879
                  slti         t6, gp, -1903
                  slti         a7, t1, 301
main_j2:          jalr         s6, s1, -879 #jump main -> sub_1
                  addi         zero, sp, -830
1487:             or           tp, t4, s9
                  ori          t0, a3, -788
                  add          t0, a1, t4
                  addi         a2, a6, -1745
                  andi         t4, a7, 1006
                  srli         tp, a6, 27
                  auipc        s10, 769689
                  xori         s8, s3, 286
                  xor          a4, a4, s4
                  bne          a2, gp, 1501f
                  sra          t5, s10, s4
                  xor          t0, s3, s0
                  auipc        s1, 239965
                  xori         a3, a2, -119
1501:             and          t2, s8, a6
                  bge          a4, t1, 1505f
                  slt          a5, a2, s4
                  slti         t5, s10, 451
1505:             blt          t2, t6, 1507f
                  add          s8, tp, tp
1507:             xor          s4, s7, gp
                  ori          a3, t5, 644
                  bltu         t6, t2, 1526f
                  sra          a1, s10, sp
                  bgeu         a0, s11, 1522f
                  xor          s10, s9, a4
                  srl          ra, s11, t3
                  sltiu        a7, a4, 305
                  lui          t1, 691618
                  lui          tp, 1012941
                  slti         a6, a2, -1185
                  bltu         s1, s4, 1538f
                  addi         tp, a7, -263
                  andi         a3, a2, 1414
                  lui          t2, 201626
1522:             srl          a6, s11, sp
                  slti         t1, a2, -18
                  andi         a7, s4, 1856
                  bltu         t1, t1, 1539f
1526:             sub          s10, t3, s4
                  add          s10, s7, s10
                  addi         t0, t6, 818
                  slti         t3, s3, 1441
                  bne          s10, sp, 1549f
                  sltu         a6, zero, t3
                  sub          s2, tp, t1
                  lui          s6, 663356
                  andi         s9, a0, -355
                  or           s6, s10, s1
                  bne          s2, a1, 1541f
                  bgeu         s1, a4, 1545f
1538:             bge          zero, gp, 1541f
1539:             nop
                  slti         tp, a4, -515
1541:             sltu         t4, tp, t1
                  srli         ra, a6, 23
                  and          t1, gp, t5
                  srai         zero, t2, 24
1545:             bgeu         t3, zero, 1563f
                  auipc        s5, 752167
                  bgeu         tp, s2, 1551f
                  sub          s4, tp, s5
1549:             slli         a7, a0, 12
                  beq          zero, a2, 1567f
1551:             slli         s10, s3, 0
                  slli         t6, s0, 28
                  addi         gp, a7, 377
                  ori          s5, s3, -982
                  slli         t4, a7, 17
                  blt          s4, s2, 1573f
                  bgeu         t0, a6, 1567f
                  slli         s1, s4, 19
                  srai         zero, a5, 2
                  ori          s9, s0, 2018
                  xor          ra, sp, a6
                  xor          t3, tp, a1
1563:             sub          t6, a1, a4
                  slli         s9, s1, 27
                  add          t5, s11, s6
                  slli         a2, a2, 8
1567:             lui          s6, 398982
                  slti         s8, t1, 1965
                  lui          s8, 806573
                  nop
                  sltu         s5, a4, gp
                  srli         s2, a7, 4
1573:             sll          s4, gp, gp
                  addi         a1, s2, -670
                  or           t6, ra, t1
                  nop
                  andi         s4, s8, 440
                  andi         a6, t2, -1838
                  or           gp, s5, sp
                  sub          s4, t1, ra
                  xori         t4, s10, 372
                  bgeu         t5, s1, 1588f
                  ori          t2, a2, 1291
                  andi         gp, s0, -173
                  or           t4, gp, sp
                  bgeu         t5, a1, 1593f
                  add          a4, a5, a4
1588:             add          a4, s6, t1
                  andi         t2, t5, 1871
                  andi         t2, t6, 1321
                  andi         ra, a6, 417
                  ori          t3, sp, -354
1593:             srai         t1, s10, 16
                  slti         a3, a7, -1750
                  bltu         a6, t6, 1603f
                  ori          t0, s10, 894
                  srai         t4, a4, 17
                  lui          ra, 233823
                  andi         a5, a5, -1279
                  auipc        t4, 627874
                  andi         a2, s0, -662
                  bgeu         a3, s9, 1604f
1603:             bge          gp, t3, 1610f
1604:             add          t1, sp, s7
                  andi         gp, s1, -1496
                  addi         a1, ra, 799
                  sltu         gp, s3, a5
                  sll          t5, s3, s10
                  bgeu         a7, s0, 1628f
1610:             xor          s1, s0, t5
                  and          ra, s10, sp
                  bne          t4, s9, 1629f
                  blt          s8, t2, 1623f
                  sltiu        t0, gp, -433
                  slli         s9, s6, 30
                  bgeu         zero, zero, 1619f
                  srli         t0, sp, 0
                  xori         s6, a1, -894
1619:             sra          s10, a1, a6
                  lui          a1, 182865
                  srl          s9, t4, s4
                  srai         s10, a0, 20
1623:             bgeu         a5, t1, 1628f
                  slli         a6, a5, 17
                  srli         sp, s4, 12
                  sll          s0, a1, a6
                  ori          a2, t5, -782
1628:             sub          s1, a1, s3
1629:             auipc        zero, 121012
                  nop
                  bne          t2, a0, 1639f
                  srai         a3, a0, 10
                  slli         s5, s1, 3
                  blt          t3, t5, 1635f
1635:             xori         a2, t5, 1532
                  addi         a1, s11, -1233
                  bne          s6, zero, 1655f
                  srai         s6, t2, 24
1639:             addi         t3, t2, 1933
                  sra          a5, a2, a1
                  sub          s1, tp, a2
                  sra          s8, a5, s10
                  sra          t3, s10, s4
                  or           s9, a7, a2
                  ori          s8, a6, -1508
                  srli         gp, s1, 1
                  srli         s10, s11, 31
                  blt          tp, s4, 1665f
                  lui          s6, 636941
main_44:          jal          s6, 9f
0:                jal          ra, 1f
1:                jal          t1, 11f
2:                jal          t6, 0b
3:                jal          sp, 7f
4:                jal          tp, 10f
5:                jal          a5, 14f
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          gp, 4b
9:                jal          ra, 13f
10:               jal          s0, 3b
11:               jal          s0, 8b
12:               jal          ra, 6b
13:               jal          ra, 12b
14:               slti         s5, s7, -365
                  ori          s8, zero, -1737
                  andi         a5, s10, 733
                  andi         s6, a7, -134
                  add          t6, s4, tp
                  add          s4, s9, tp
1655:             sub          t0, t0, s4
                  lui          s10, 209006
                  blt          t2, s8, 1658f
1658:             auipc        a5, 173866
                  slti         s8, a6, -924
                  auipc        s5, 940646
                  and          zero, a4, t0
                  auipc        a0, 623253
                  and          s10, ra, s7
                  blt          s4, a7, 1667f
1665:             srai         s5, a2, 15
                  bgeu         s1, t2, 1682f
1667:             sltu         a3, s11, t6
                  srai         t0, tp, 21
                  or           t3, a0, a3
                  sltiu        s8, s6, -1066
                  srai         s1, t6, 6
                  bne          t4, a4, 1680f
                  sll          zero, s2, sp
                  slli         zero, s10, 31
                  slli         s2, s4, 22
                  sra          a5, s8, s11
                  bge          a0, t4, 1697f
                  bgeu         t1, s9, 1694f
                  sll          a2, t1, s1
1680:             xori         t1, s3, 929
                  srai         s10, sp, 27
1682:             srli         s4, a7, 16
                  bge          t4, t2, 1686f
                  slt          t4, a0, s6
                  xor          a2, t6, a3
1686:             bgeu         a0, t5, 1694f
                  xori         gp, a4, 480
                  lui          a7, 1011062
                  xor          s9, s2, t0
                  sltiu        gp, s3, -1731
                  bge          s7, s3, 1699f
                  ori          t5, a3, -180
                  beq          s6, a2, 1696f
1694:             sltiu        a3, s9, 242
                  sll          t3, t1, s0
1696:             xori         ra, a4, -200
1697:             srl          t4, tp, s4
main_29:          jal          s6, 4f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          s5, 1b
5:                jal          ra, 3b
6:                jal          t4, 2b
7:                jal          t1, 14f
8:                jal          s5, 11f
9:                jal          s2, 6b
10:               jal          ra, 8b
11:               jal          ra, 0b
12:               jal          ra, 5b
13:               jal          ra, 12b
14:               or           s8, t5, s6
                  ori          s2, s10, 261
1699:             xori         s5, a1, 977
                  nop
                  sltiu        ra, t3, -697
                  srl          a1, a7, tp
                  srl          a7, a1, tp
                  srl          s8, s7, s3
                  auipc        a1, 1004590
                  sra          s4, a6, a0
                  sub          s5, t5, s8
                  sub          a0, s10, s8
                  nop
                  srai         a1, s4, 27
                  andi         a0, a5, 1153
                  ori          s0, a7, -798
                  srli         s6, t4, 23
                  srl          s2, t6, a6
                  nop
                  slti         sp, a3, 126
                  bltu         ra, a6, 1735f
                  srl          s0, a3, a1
                  xori         a4, s7, 1280
                  slt          s10, t2, a4
                  andi         s10, s0, -1018
                  sub          a3, a4, s7
                  sltu         tp, s0, s2
                  bltu         a7, t6, 1742f
                  beq          t1, a4, 1726f
1726:             srai         a7, t6, 5
                  nop
                  sltu         a1, s9, a5
                  srl          t3, s4, ra
                  sll          zero, a7, s8
                  xori         a6, tp, 1862
                  sll          t1, s1, s2
                  sub          a0, sp, s5
                  sub          t5, t6, s9
1735:             lui          a3, 234904
                  sll          s4, t3, s3
                  srli         sp, s0, 29
                  sltiu        a0, s10, 633
                  blt          a2, zero, 1756f
                  sra          tp, s10, zero
                  slti         a7, a7, 406
1742:             auipc        a7, 857336
                  srli         a0, s4, 21
                  slt          t0, s2, a0
                  andi         ra, s8, 728
                  andi         s4, a7, 1019
                  bltu         a5, a7, 1764f
                  slli         a1, t6, 29
                  srai         s4, s8, 27
                  nop
                  sll          a6, s2, s3
                  sll          t3, t6, a6
                  beq          tp, a2, 1767f
                  bgeu         a1, t6, 1762f
                  sltu         s0, a2, t3
1756:             slt          a7, a6, s2
                  ori          a0, tp, 1288
                  slt          a7, a2, zero
                  beq          s0, t6, 1760f
1760:             auipc        s4, 188223
                  auipc        a4, 83525
1762:             bne          s3, s3, 1769f
                  sll          a3, a4, gp
1764:             or           a1, tp, ra
                  add          ra, s3, tp
                  bgeu         s8, a1, 1771f
1767:             andi         s0, zero, 541
                  and          t0, t3, tp
1769:             blt          t0, s1, 1779f
                  srli         t6, s0, 16
1771:             sltu         a3, a6, s2
                  sll          t5, a7, s10
                  srai         gp, t1, 28
                  addi         zero, s11, 1247
                  slli         a4, t4, 17
                  blt          s1, t0, 1795f
                  srli         zero, zero, 12
                  and          s5, s2, zero
1779:             addi         a7, ra, 1154
                  bne          t0, s5, 1783f
                  lui          t3, 871935
                  sltiu        s0, a7, 589
1783:             slti         s2, a3, 1380
                  blt          s1, t2, 1792f
                  blt          s3, s11, 1802f
                  nop
                  sra          s2, a1, s8
                  bne          t0, a0, 1790f
                  srli         s8, s6, 8
1790:             addi         s0, ra, 780
                  blt          s7, a0, 1808f
1792:             or           s9, t0, s9
                  sltiu        tp, t0, -1594
                  slli         a1, ra, 0
1795:             srai         a4, t3, 29
                  slti         t6, s6, -236
                  addi         s4, t6, 886
                  sub          a6, t4, s11
                  blt          a4, a4, 1805f
                  blt          tp, a6, 1810f
main_18:          jal          s6, 1f
0:                jal          ra, 12f
1:                jal          ra, 7f
2:                jal          t1, 9f
3:                jal          ra, 16f
4:                jal          ra, 13f
5:                jal          ra, 19f
6:                jal          ra, 8f
7:                jal          t1, 22f
8:                jal          ra, 2b
9:                jal          ra, 5b
10:               jal          t1, 18f
11:               jal          ra, 21f
12:               jal          t1, 14f
13:               jal          ra, 17f
14:               jal          t1, 23f
15:               jal          ra, 6b
16:               jal          ra, 4b
17:               jal          s0, 0b
18:               jal          t0, 11b
19:               jal          ra, 10b
20:               jal          tp, 15b
21:               jal          ra, 3b
22:               jal          ra, 20b
23:               ori          sp, tp, 299
                  srai         t2, s5, 24
1802:             xor          t0, t0, s1
                  slt          s0, s10, ra
                  sltiu        t6, s8, -1857
1805:             sll          gp, t1, sp
                  slt          a6, t3, a6
                  bgeu         a3, t2, 1818f
1808:             add          zero, sp, ra
                  addi         s0, s1, 1943
1810:             sltu         t1, s11, t1
                  bge          t1, t6, 1815f
                  bge          zero, s0, 1819f
                  sub          t2, a6, s11
                  sll          sp, t0, t0
1815:             xori         s2, t1, -85
                  bne          s11, a2, 1821f
                  bgeu         a5, a7, 1836f
1818:             sub          s2, s1, t4
1819:             beq          s4, s7, 1824f
                  or           a5, s0, s0
1821:             add          s8, s2, a7
                  addi         t4, ra, 1942
                  add          tp, tp, ra
1824:             xor          t2, t0, t6
                  bge          s6, t3, 1836f
                  slti         tp, t1, -1462
                  ori          sp, s11, -133
main_34:          jal          s6, 2f
0:                jal          ra, 6f
1:                jal          t2, 7f
2:                jal          ra, 3f
3:                jal          t1, 10f
4:                jal          t1, 0b
5:                jal          a1, 8f
6:                jal          t3, 11f
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          s6, 1b
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               lui          s10, 600000
                  sltu         ra, s8, sp
                  bltu         s9, s11, 1843f
                  sltu         a5, t1, t3
                  sll          sp, s7, t4
                  or           s10, t1, t3
                  auipc        t2, 735887
                  addi         t0, zero, -1034
                  slli         s5, t5, 16
1836:             xori         s6, s9, -2005
                  nop
                  add          a0, zero, s9
                  slti         s10, t1, -1649
                  sltu         s9, s11, a7
                  auipc        t3, 846452
                  sra          t0, zero, s3
1843:             sra          s10, a1, a6
                  auipc        t1, 833300
                  blt          s0, t2, 1863f
                  xor          s9, t5, a4
                  sll          s6, a4, a3
                  and          t4, t3, s6
                  and          a7, a5, s3
                  slt          s8, zero, s6
                  sltu         s9, t1, t0
                  ori          s10, a2, 1465
                  blt          s0, a6, 1861f
                  srli         tp, t1, 27
                  beq          a6, t1, 1858f
                  slt          a7, s5, s1
                  bgeu         sp, t0, 1873f
1858:             bne          t0, a4, 1875f
                  srli         gp, a3, 7
                  sltu         gp, tp, ra
1861:             xori         a7, a5, 897
                  slli         t0, s8, 24
1863:             bne          s3, s10, 1881f
                  sra          t4, s1, t1
                  srai         t2, ra, 20
                  bge          sp, s2, 1874f
                  xori         t3, s6, -1125
                  slti         a7, t4, 1329
                  bge          s10, s9, 1879f
                  sub          a0, s6, s7
                  ori          t2, s3, 751
                  sra          t1, zero, t4
1873:             sll          s5, sp, a0
1874:             xor          s0, ra, t6
1875:             xori         t3, s6, 1054
                  add          s9, s1, gp
                  sll          t3, s2, a0
                  ori          zero, s7, -318
1879:             sra          s5, ra, zero
main_8:           jal          s6, 14f
0:                jal          ra, 11f
1:                jal          sp, 15f
2:                jal          gp, 13f
3:                jal          ra, 5f
4:                jal          ra, 17f
5:                jal          t1, 0b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          a5, 12f
9:                jal          t1, 16f
10:               jal          t1, 4b
11:               jal          t1, 7b
12:               jal          ra, 3b
13:               jal          tp, 6b
14:               jal          a0, 1b
15:               jal          a4, 9b
16:               jal          ra, 2b
17:               jal          s6, 18f
18:               ori          s4, t0, 654
                  xor          s1, a5, s3
1881:             srl          s8, a0, t1
                  and          s5, a4, t0
                  addi         t3, s9, 10
                  blt          t4, s0, 1901f
                  add          t2, a4, s4
                  sra          s9, zero, t3
                  xori         t3, s11, -1273
                  sll          s1, a7, s8
                  lui          a3, 902168
                  srl          s6, t0, s1
                  srli         s0, s3, 9
                  bge          t5, s8, 1902f
                  add          t1, t0, zero
                  beq          a5, s6, 1902f
                  sltu         a1, sp, t1
                  bltu         s4, t5, 1904f
                  bltu         s9, s3, 1917f
                  blt          gp, gp, 1904f
                  sub          s4, tp, a6
                  or           s5, a2, s4
1901:             sub          s0, a1, s10
1902:             slt          t0, t2, s8
                  nop
1904:             srl          a3, a5, a4
                  bne          t3, s2, 1906f
1906:             srl          t3, a0, t3
                  nop
                  xori         zero, s9, 1508
                  sltu         t2, t6, s1
                  sll          s10, s3, gp
                  blt          a1, a7, 1930f
                  bne          s10, ra, 1919f
                  andi         a2, t4, -665
                  or           a6, s2, a6
                  sltiu        sp, sp, -1187
                  add          ra, tp, zero
1917:             sltu         a7, t1, t5
                  ori          s9, a6, 1329
1919:             beq          a0, t1, 1938f
                  srai         a4, t6, 27
                  slli         zero, s11, 21
                  slti         zero, t5, 1289
                  sltiu        a4, s2, 1801
                  and          s2, a2, s0
                  blt          s4, a2, 1928f
                  sra          s4, s8, a7
                  addi         a3, gp, 428
1928:             bgeu         s6, s5, 1931f
                  addi         t6, sp, 680
1930:             add          s5, t2, s10
1931:             sltiu        s0, s0, -1543
                  blt          t1, s6, 1936f
                  bge          t0, tp, 1940f
                  slti         a4, s8, 1176
                  blt          a6, a4, 1952f
1936:             blt          a4, a7, 1938f
                  or           t6, a7, s1
1938:             xori         t3, s0, -1422
                  bge          t6, a4, 1956f
1940:             bne          a7, a7, 1945f
                  sltiu        ra, t2, -1888
                  slti         zero, t1, 1699
                  sra          tp, a7, s0
                  xori         t3, t1, 886
1945:             and          s8, a7, a0
                  srai         a4, s3, 21
                  srli         s8, ra, 6
                  xori         a4, s2, -1221
                  sra          tp, a3, s1
                  addi         t6, t2, -450
                  and          zero, a3, s6
1952:             slt          a3, s9, a5
                  srli         s9, a6, 23
                  ori          s8, s6, -1696
                  nop
1956:             lui          s9, 24411
                  or           s5, ra, s6
                  xor          t1, gp, s8
                  slti         t2, t2, 93
                  ori          t1, tp, 328
                  sltiu        a0, s4, -549
                  srli         a4, s10, 3
                  bge          s10, s3, 1964f
1964:             slli         t6, t2, 17
                  slt          s9, s8, s1
                  srai         s2, a3, 1
                  sltu         t4, t3, s5
                  nop
                  lui          t5, 594944
                  sll          t2, gp, s0
                  xor          a2, a5, ra
                  bne          s10, a6, 1989f
                  bne          t1, a7, 1980f
                  lui          zero, 917562
                  nop
                  addi         sp, s0, 84
                  beq          a5, s10, 1996f
                  blt          s0, t2, 1981f
                  lui          s9, 186695
1980:             add          s5, a2, s5
1981:             slt          t4, s0, s11
                  andi         s1, a5, 1307
                  sltiu        s0, a2, 368
                  lui          t6, 408049
                  xori         sp, a1, -1369
                  slli         t1, t6, 3
                  beq          s9, a7, 1995f
main_25:          jal          s6, 2f
0:                jal          t1, 19f
1:                jal          ra, 22f
2:                jal          t1, 12f
3:                jal          t1, 1b
4:                jal          gp, 0b
5:                jal          t1, 15f
6:                jal          ra, 18f
7:                jal          t1, 4b
8:                jal          ra, 3b
9:                jal          t1, 17f
10:               jal          t0, 6b
11:               jal          ra, 21f
12:               jal          a5, 14f
13:               jal          ra, 11b
14:               jal          ra, 20f
15:               jal          t1, 7b
16:               jal          tp, 13b
17:               jal          t1, 16b
18:               jal          ra, 9b
19:               jal          t1, 8b
20:               jal          t0, 10b
21:               jal          t0, 5b
22:               srai         s10, t5, 1
                  bge          s6, s3, 2002f
1989:             lui          s2, 835028
                  auipc        a7, 128512
                  sll          a5, t6, ra
                  auipc        s5, 900285
                  sltu         zero, s9, s1
                  bne          s6, tp, 2011f
1995:             sltu         s1, s4, a3
1996:             add          a1, s2, s3
                  lui          a7, 565478
                  ori          t6, t3, 1564
                  slt          ra, t5, a5
                  lui          ra, 928697
                  or           s10, s4, zero
2002:             and          a2, t1, ra
                  or           a7, a3, a2
                  sltu         s10, a0, ra
                  bge          s6, zero, 2013f
                  slt          t0, s11, t1
                  slt          t4, zero, t0
                  xori         t6, zero, 1990
                  srai         s9, a3, 7
                  bge          t2, a6, 2021f
2011:             auipc        s2, 566471
                  slti         s1, s7, 410
2013:             lui          a6, 689172
                  beq          s4, s8, 2019f
                  xori         sp, a6, -917
                  sll          a0, a7, a6
                  auipc        s8, 55788
                  sll          a0, s4, t4
2019:             andi         s8, s3, 1856
                  xori         t3, s3, 1316
2021:             and          t0, t5, a2
                  ori          sp, t4, 1270
                  sltu         a2, t4, tp
                  nop
                  srai         sp, t3, 5
                  nop
                  xori         s6, a3, -218
                  slti         s6, s7, 1545
                  sra          s4, tp, a3
                  nop
                  or           s10, gp, s4
                  blt          t3, s6, 2037f
                  xor          a5, tp, s10
                  blt          gp, t6, 2042f
                  sltu         zero, s6, t6
                  nop
2037:             srl          a5, tp, a7
                  sltiu        t4, ra, 1070
                  slti         t5, a2, -1668
                  or           s5, s5, t5
                  blt          t4, s7, 2047f
2042:             add          s0, s9, sp
                  sltiu        a7, zero, 1097
                  andi         s10, a0, -724
                  sltiu        gp, s2, 667
                  lui          a0, 656699
2047:             lui          s5, 901955
                  beq          tp, t6, 2065f
                  slt          sp, s9, s4
                  sub          zero, t1, t5
                  beq          a5, s9, 2070f
                  bltu         a0, s1, 2062f
                  andi         a4, s7, -779
                  auipc        t5, 88643
                  slli         sp, t2, 13
                  blt          gp, t2, 2063f
                  slli         sp, t4, 22
                  sltiu        t1, tp, 883
                  auipc        a0, 608229
                  auipc        t3, 635479
                  srai         t3, s3, 3
2062:             bgeu         a7, t3, 2080f
2063:             addi         s6, zero, 290
                  srl          t2, a1, a6
2065:             sll          tp, t6, sp
                  andi         s2, a4, -614
                  add          s5, gp, s1
                  xor          t2, t4, a7
                  andi         t2, s1, -973
2070:             slt          t5, s8, t1
                  nop
                  slti         a7, a0, 911
                  ori          a5, a6, -848
                  addi         t5, s4, 1138
                  auipc        s1, 667300
                  sltiu        gp, a7, 725
                  sltiu        ra, s8, 263
                  sll          t6, a2, s8
                  sub          s4, ra, a4
2080:             bltu         s3, a6, 2090f
                  srai         s9, t2, 24
                  andi         ra, a7, -1519
                  beq          t0, tp, 2101f
                  bltu         t4, s9, 2101f
                  xor          t0, gp, s0
                  beq          t2, a3, 2094f
                  nop
                  auipc        a4, 406444
                  bne          s4, t2, 2092f
2090:             srl          t0, a6, t5
                  auipc        t2, 535727
2092:             srai         s4, t5, 20
                  sll          t0, t2, s6
2094:             and          t1, a2, t3
                  bge          t2, s6, 2099f
                  lui          a7, 761715
                  addi         s2, sp, 829
                  sltiu        zero, ra, -1381
2099:             andi         t4, tp, -667
                  lui          zero, 641592
2101:             xori         a0, s4, -1689
                  srai         a3, ra, 25
                  sltiu        s5, t2, 794
                  slli         s4, s4, 26
                  or           s6, zero, s5
                  srli         sp, gp, 2
                  sltiu        a6, tp, -1510
                  bge          s0, s9, 2110f
                  srai         s4, t1, 21
2110:             bgeu         t0, a6, 2113f
                  blt          s2, zero, 2112f
2112:             bne          a5, a6, 2113f
2113:             sll          a4, s1, a5
                  slti         t3, s0, 107
                  srli         s6, a2, 20
                  sltu         a7, sp, s0
                  auipc        t1, 923326
                  srl          sp, s6, t6
                  xor          t6, s7, a2
                  or           s5, zero, a2
                  bne          s9, t0, 2137f
                  srl          sp, a6, t6
                  lui          t1, 846954
                  nop
                  sltiu        s10, tp, -129
                  ori          t5, t3, 1589
                  ori          t0, s5, 583
                  bge          s7, gp, 2148f
                  sub          a1, s5, s5
                  or           a4, s9, t1
                  or           s2, a4, s3
                  srai         gp, tp, 24
                  slli         t4, zero, 27
                  sll          t2, a3, s2
                  slli         s6, tp, 17
                  slli         s6, s4, 18
2137:             srl          ra, s3, a1
                  andi         t0, t5, -226
                  bge          a5, t2, 2150f
                  auipc        a2, 260763
                  blt          a5, tp, 2144f
                  sll          zero, t6, t2
                  or           s1, ra, s7
2144:             lui          gp, 1029833
                  xor          s5, t2, a0
                  sub          s8, a5, s9
                  andi         s5, a6, -1383
2148:             ori          zero, s9, 1307
                  slli         s1, s9, 2
2150:             slli         a1, s9, 8
                  slti         s5, ra, -747
                  sra          s9, t3, s11
                  xor          s4, s9, s4
                  auipc        a2, 126414
                  add          t3, ra, s3
                  slti         a1, tp, 234
                  sra          s2, ra, s5
                  or           t2, t4, t6
                  addi         s5, t0, -1352
                  bne          t6, a4, 2168f
                  srli         sp, s3, 28
                  sll          s6, s5, a6
                  beq          s6, ra, 2171f
                  ori          a1, t2, 1838
                  slt          a1, sp, a3
                  srl          t2, zero, s1
                  or           s1, s11, t3
2168:             add          a0, s6, t4
                  bltu         s7, t2, 2173f
                  sra          a3, s2, a0
2171:             blt          ra, a0, 2181f
                  or           t1, gp, s7
2173:             bgeu         t6, t6, 2190f
                  sra          ra, a0, s2
                  addi         s8, s5, 265
                  sub          t6, s6, a1
                  lui          a7, 304672
                  blt          s8, a5, 2192f
                  srl          t0, s3, a1
                  add          a7, t3, s7
2181:             xori         t5, s2, -822
                  sra          a2, a2, s8
                  bne          s11, s2, 2190f
                  sltu         a0, a3, s1
                  xori         sp, s9, -2022
                  lui          ra, 1021639
                  auipc        s2, 812057
                  andi         s4, s3, -405
                  sltiu        t1, ra, 264
2190:             bltu         s4, t3, 2192f
                  xor          a3, t3, t1
2192:             bgeu         s3, a2, 2195f
                  sltu         s10, s4, t4
                  srl          t2, s10, s9
2195:             or           s2, t3, tp
                  addi         s2, a2, 46
                  bge          s8, t1, 2202f
                  sltu         s4, t4, s10
                  auipc        gp, 362045
                  auipc        s0, 125588
                  srai         a2, a2, 25
2202:             auipc        a5, 1034123
                  srl          s10, a1, s10
                  add          s0, t1, s5
                  blt          a4, s10, 2206f
2206:             srl          s2, a3, zero
                  and          s9, s8, s7
                  slti         a1, a6, 461
                  slt          s1, a5, ra
                  bltu         tp, t2, 2229f
                  beq          a4, t0, 2219f
                  bge          a0, gp, 2222f
                  srli         t4, s1, 23
                  auipc        a5, 683782
                  bne          t5, s8, 2232f
                  bge          ra, s3, 2235f
                  bne          a7, a6, 2220f
                  xor          s1, s3, t6
2219:             bne          sp, tp, 2235f
2220:             nop
main_2:           jal          s6, 0f
0:                jal          ra, 5f
1:                jal          s6, 10f
2:                jal          s1, 7f
3:                jal          ra, 9f
4:                jal          t1, 3b
5:                jal          t2, 6f
6:                jal          a1, 2b
7:                jal          t1, 1b
8:                jal          t1, 4b
9:                jal          t2, 11f
10:               jal          ra, 8b
11:               srli         s10, sp, 11
                  bne          s0, t1, 2222f
2222:             bge          t1, a5, 2230f
                  srli         t1, s1, 31
                  slt          t3, t6, a0
                  addi         a1, a3, 1766
                  srai         s2, sp, 10
                  addi         zero, t2, 971
                  andi         a0, ra, 877
2229:             blt          a6, a6, 2247f
2230:             ori          sp, t1, -121
                  addi         a1, zero, 256
2232:             sra          t4, s3, s9
                  sra          t4, s2, a7
                  andi         gp, a7, 663
2235:             sra          t6, zero, t0
                  bgeu         s3, zero, 2254f
                  addi         ra, t4, 762
                  srli         gp, t5, 11
                  andi         a3, ra, -385
                  srli         a6, s2, 15
                  sltiu        s6, zero, -823
                  and          s2, s0, s2
                  srai         gp, t1, 4
                  sra          t5, s10, t5
                  sll          s2, a2, t3
                  bne          s1, s6, 2251f
2247:             beq          t6, t3, 2264f
                  bne          zero, s1, 2254f
                  xor          gp, a2, s3
                  sll          s2, zero, t5
2251:             lui          a7, 19517
                  and          a6, s6, s9
                  sra          a1, a5, t3
2254:             xor          a2, tp, s9
                  sltu         s1, t4, t2
                  sra          tp, sp, s5
                  sra          a5, sp, a1
                  blt          s6, a6, 2265f
                  beq          a2, t5, 2279f
                  srl          s8, a3, a1
                  andi         a2, s11, 101
                  bge          a5, s7, 2279f
                  blt          t6, s3, 2281f
2264:             slti         t1, s7, 1632
2265:             nop
                  bgeu         s8, t4, 2284f
                  xor          t1, t5, s2
                  add          zero, s9, t0
                  blt          a4, t4, 2279f
                  sltiu        tp, t0, -2020
                  bne          s1, s3, 2279f
                  beq          t2, a3, 2278f
                  xori         s1, s0, -1616
                  bgeu         ra, s9, 2282f
                  blt          s5, t2, 2278f
                  bne          s11, s5, 2296f
                  bge          a1, t3, 2296f
2278:             bltu         t6, s8, 2285f
2279:             srli         t6, s6, 8
                  srli         a4, a2, 28
2281:             slti         s2, s9, 1511
2282:             blt          tp, t1, 2285f
                  sub          s0, s5, s6
2284:             sll          a3, ra, a2
2285:             sll          t6, s0, a0
                  andi         a7, s7, 1842
                  blt          s6, a7, 2288f
2288:             ori          s10, zero, 756
                  xori         s9, tp, -644
                  beq          a0, t2, 2307f
                  blt          s0, t0, 2299f
                  ori          s4, s0, -889
                  sub          t3, t1, sp
                  srl          a2, a0, a4
                  xor          s9, a2, s8
2296:             sll          s5, s0, s9
                  beq          a0, s10, 2308f
                  ori          s0, s8, 1052
2299:             sltiu        t0, t0, 1663
                  beq          s10, gp, 2317f
                  bltu         s11, a5, 2304f
                  auipc        a2, 945366
                  andi         s5, s10, 683
2304:             bgeu         t2, t1, 2306f
                  auipc        t4, 799882
2306:             bne          sp, s5, 2316f
2307:             add          t3, ra, t5
2308:             sltiu        s8, t4, -765
                  blt          tp, a5, 2313f
                  and          a3, a0, t4
                  xori         t3, t3, 1189
                  xori         s6, a3, -1508
2313:             add          a7, a5, s4
                  bne          a4, t0, 2333f
                  blt          t0, a1, 2329f
2316:             slli         a4, s5, 19
2317:             slti         t0, s7, -1111
                  srai         s2, t0, 4
                  srli         a2, s9, 23
                  sll          t6, a2, s4
                  slt          s1, s9, t0
                  sra          t6, t5, a1
                  slt          a1, t0, tp
                  sltiu        s5, s7, -918
                  xori         a4, a3, 663
                  nop
                  blt          s3, a1, 2328f
2328:             lui          a3, 63658
2329:             slti         s8, t0, -790
                  bge          a1, t1, 2338f
                  srai         t5, t2, 20
                  sltu         t5, s10, t3
2333:             sra          s2, t6, t0
                  xor          t5, a4, a7
                  sltiu        ra, s8, 365
                  auipc        t1, 301775
                  sra          a3, t0, zero
2338:             xori         s4, sp, -1139
                  bne          a6, t5, 2356f
                  auipc        s8, 738888
                  andi         zero, s7, -803
                  beq          s3, s2, 2347f
                  add          t5, a1, t4
                  andi         a5, s1, -1066
                  srl          a6, s5, sp
                  add          ra, s0, s7
2347:             srli         a4, gp, 7
                  and          a2, s11, s8
                  or           t5, sp, t6
                  bgeu         t2, t1, 2355f
                  ori          t0, a7, -1221
                  bne          s1, a0, 2359f
                  sltiu        a3, a1, 1934
                  bltu         t5, s5, 2370f
2355:             bge          zero, s3, 2372f
2356:             slti         s4, s5, 581
                  lui          t4, 228826
                  sra          t6, s9, a4
2359:             add          s8, s2, t3
                  slt          t5, t6, t1
                  sll          t2, zero, sp
                  srai         a2, s8, 11
                  srl          sp, s9, s1
                  sra          zero, s8, s3
                  add          s10, t3, s8
                  slli         s6, sp, 29
                  or           a4, s2, s0
                  srl          s6, s2, t1
                  sltu         a2, a4, s2
2370:             bne          s7, s6, 2380f
                  srai         t6, s8, 27
2372:             or           t3, s3, tp
                  addi         a0, a6, 1690
                  andi         t5, t2, -577
                  blt          s9, a2, 2392f
                  srl          gp, s0, zero
                  or           t5, a5, s7
                  sll          a4, t0, tp
                  add          tp, ra, t1
2380:             addi         t4, s8, 2019
                  lui          s2, 114727
                  ori          t1, s7, -1982
                  slt          s8, t2, t5
                  bgeu         s9, tp, 2387f
                  srli         t4, t0, 28
                  bltu         s7, a5, 2394f
2387:             sltiu        s6, s5, -412
                  srai         s4, t6, 29
                  andi         t3, a1, -794
                  addi         a5, a0, -113
                  xor          ra, s4, zero
2392:             bltu         a2, t4, 2409f
                  sra          a0, s9, t2
2394:             lui          gp, 726382
                  or           t3, a6, t4
                  sll          a1, t3, a1
                  andi         t4, t1, 645
                  or           s1, sp, a4
                  sll          s2, t1, a1
                  sltiu        s9, tp, 1870
                  srli         t4, s3, 10
                  blt          s8, a1, 2419f
                  and          t6, s2, t4
                  ori          a6, a7, -252
                  bgeu         a3, a5, 2424f
                  andi         s8, s2, 374
                  sltiu        t5, a2, 1079
                  slt          s9, s7, a6
2409:             xori         t5, t1, -2020
                  ori          a3, a1, -451
                  sll          s4, s7, s6
                  auipc        s4, 237898
                  srli         s1, a6, 22
                  addi         s9, ra, 1085
                  slti         s0, s8, -1087
                  slli         t1, s3, 12
                  srli         s0, a6, 2
                  sll          a5, t6, a1
2419:             sltiu        s0, s0, -775
                  srai         t6, s5, 14
                  xori         t6, sp, -1882
                  beq          t0, s2, 2423f
2423:             bgeu         s8, a0, 2428f
2424:             slt          s1, s0, t6
                  lui          s5, 136867
                  sll          a2, a2, t0
                  sll          a7, a0, s0
2428:             nop
                  xor          a2, a2, t6
                  and          s2, t0, tp
                  sra          a4, gp, s8
main_49:          jal          s6, 0f
0:                jal          ra, 21f
1:                jal          ra, 8f
2:                jal          t2, 7f
3:                jal          t1, 18f
4:                jal          t1, 22f
5:                jal          t3, 23f
6:                jal          s4, 5b
7:                jal          gp, 14f
8:                jal          tp, 16f
9:                jal          ra, 15f
10:               jal          a7, 4b
11:               jal          t1, 2b
12:               jal          ra, 10b
13:               jal          ra, 25f
14:               jal          t5, 6b
15:               jal          ra, 3b
16:               jal          ra, 26f
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          ra, 12b
20:               jal          s9, 11b
21:               jal          ra, 9b
22:               jal          ra, 24f
23:               jal          ra, 27f
24:               jal          t1, 20b
25:               jal          ra, 1b
26:               jal          t2, 19b
27:               sra          s0, s10, t2
                  nop
                  addi         s9, s2, -120
                  add          sp, t1, a4
                  nop
                  slt          t0, t5, a5
                  slli         t0, s5, 14
                  sltu         sp, t4, s8
                  sll          t0, s1, a1
                  sltu         t2, t0, t1
                  sra          a2, a1, tp
                  sltiu        s10, a7, 325
                  addi         t5, tp, -1628
                  slt          s1, a6, s10
                  slli         s4, ra, 15
                  auipc        s2, 336568
                  xori         s10, gp, 581
                  srai         t5, t5, 2
                  srl          s9, s6, s10
                  srai         ra, zero, 10
                  sll          t3, tp, t3
                  andi         gp, s2, 967
                  bne          t2, a5, 2461f
                  xor          a3, a0, tp
                  bltu         sp, s1, 2466f
                  blt          s5, s4, 2458f
                  and          s2, a7, a1
2458:             auipc        t2, 429980
                  and          a0, s3, ra
                  blt          a5, t0, 2477f
2461:             blt          s3, t0, 2469f
                  sra          s10, zero, a7
                  slli         t2, t2, 16
                  addi         a4, a6, -345
                  sub          s1, t5, s10
2466:             sub          t6, s6, a7
                  bltu         gp, sp, 2470f
                  slt          s0, a4, a4
2469:             add          s9, t3, s10
2470:             nop
                  srli         s6, tp, 24
                  srai         a1, a3, 22
                  ori          t2, s2, -203
                  lui          tp, 898633
                  and          s2, a6, s2
                  srli         t0, ra, 25
2477:             ori          a1, tp, 405
                  add          s5, s4, t3
                  sltiu        a7, s7, -981
                  xor          t5, s5, s10
                  bne          s11, zero, 2495f
                  sltiu        zero, s6, 1614
                  blt          s2, a3, 2490f
                  sll          a2, a3, s6
                  add          s6, ra, t2
                  sltu         s6, a0, gp
                  bge          s7, s6, 2488f
2488:             blt          t0, zero, 2493f
                  ori          gp, s6, 1388
2490:             add          gp, t2, a1
                  bge          a2, t4, 2510f
                  srli         a4, t2, 26
2493:             and          t6, ra, a0
                  add          t2, s10, s4
                  slt          a4, s7, gp
                  xori         sp, a2, 264
                  la           t0, sub_1
                  lui          s0, 1006342
                  slti         tp, s3, 1556
                  srai         a6, t3, 20
                  nop
                  addi         t0, t0, -983
                  ori          s6, s2, -424
                  srai         s6, s3, 4
                  sltiu        tp, s9, 1439
main_j1:          jalr         s6, t0, 983 #jump main -> sub_1
                  bge          zero, t2, 2512f
2495:             lui          s4, 445261
                  nop
                  lui          zero, 764523
                  ori          sp, ra, -294
                  add          a6, s10, a1
                  bge          a1, t1, 2520f
                  sra          t4, s8, s8
                  bne          s10, s6, 2509f
                  slli         s0, s6, 29
                  bne          t1, a5, 2520f
                  blt          s2, sp, 2511f
                  sra          a0, s4, a5
                  slti         t4, a1, -157
                  beq          t1, t5, 2512f
2509:             auipc        s0, 183058
2510:             lui          t1, 176420
2511:             add          s8, s1, s9
2512:             sra          t1, s9, s10
                  sltiu        t4, sp, 1685
                  srl          t5, tp, s10
                  slli         sp, a3, 19
                  bne          s7, sp, 2534f
                  slti         s1, a1, -1980
                  srai         gp, a4, 0
                  sltu         a1, sp, s1
2520:             nop
                  slt          a7, s0, s4
                  sltiu        sp, s11, -1312
                  srai         a4, a5, 16
                  slli         s8, s3, 8
                  or           s4, s3, s0
                  bltu         t4, a1, 2534f
                  srli         ra, t2, 24
                  bgeu         sp, t5, 2538f
                  slti         t2, s1, -42
                  sltu         t0, a2, s10
                  blt          sp, s4, 2534f
                  auipc        zero, 107669
                  nop
2534:             or           s10, gp, a2
                  sra          tp, a7, zero
                  add          a0, a3, sp
                  sra          a0, s9, s8
2538:             blt          a3, t1, 2548f
                  sltu         s8, a2, s3
                  bne          s7, s7, 2551f
                  sltu         a1, tp, zero
                  bne          t4, s8, 2559f
                  add          t2, s2, t3
                  bge          gp, gp, 2552f
                  sltiu        a1, a2, -515
                  ori          tp, s4, 1950
                  sltu         a3, gp, tp
2548:             ori          t2, t0, 667
                  slli         s8, t0, 11
                  nop
2551:             bgeu         a5, a2, 2554f
2552:             sll          a3, t5, s11
                  ori          t0, a0, -681
2554:             slti         ra, s4, 1447
                  bgeu         a3, s4, 2571f
                  sub          t0, tp, a5
                  bgeu         s6, t2, 2574f
                  blt          s8, a5, 2563f
2559:             bltu         t4, s1, 2566f
                  bne          t3, s7, 2577f
                  srli         a6, gp, 25
                  slt          s8, a7, a0
2563:             xor          t2, t6, ra
                  and          tp, sp, a4
                  slti         a7, a4, 31
2566:             sltiu        s1, a4, 581
                  sltu         t6, sp, s0
                  blt          t6, t3, 2588f
                  auipc        s10, 417747
                  sub          ra, s8, s10
2571:             slti         s6, s4, 981
                  bgeu         t2, gp, 2591f
                  addi         a3, s7, -342
2574:             bne          a2, s7, 2579f
                  bltu         s4, t5, 2583f
                  srli         a3, s10, 24
2577:             and          zero, s10, a3
                  srl          s6, t4, a3
2579:             srli         t5, s0, 14
                  lui          a7, 894608
                  beq          a6, a4, 2582f
2582:             srai         t5, sp, 14
2583:             sub          t2, t2, s5
                  ori          s2, zero, 1964
                  sll          s5, t2, t4
                  bge          a4, s8, 2597f
                  sltu         s0, t1, t0
2588:             slti         s10, s5, 244
                  auipc        a5, 949040
                  bgeu         s6, a6, 2593f
2591:             beq          s3, s6, 2597f
                  andi         t0, s9, 276
2593:             sll          t0, a6, s7
                  beq          a5, a5, 2597f
                  srai         a1, a7, 17
                  slt          a1, ra, ra
2597:             slti         a2, tp, -1023
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            srl          t1, t1, a1
                  bgeu         zero, s2, sub_3_stack_p
sub_3_stack_p:    addi         s11, s11, -32
                  sra          s1, s7, a0
                  srli         ra, ra, 21
                  sw           s6, 4(s11)
                  lui          s8, 390520
                  slt          a2, s6, t6
                  addi         s0, s11, 1660
                  sra          t4, a3, s5
                  sra          t6, t3, s9
                  sltiu        s10, s6, -784
                  slt          t2, a5, s9
                  bge          a6, gp, 24f
                  lui          zero, 552853
                  nop
                  addi         s2, t1, -1643
                  xori         a1, t0, -1426
                  srai         s5, s7, 11
                  beq          a3, a5, 24f
                  auipc        t1, 755761
                  andi         s2, s5, 220
                  add          sp, tp, s1
                  addi         s5, a3, 1572
                  andi         tp, gp, 132
                  nop
                  sub          s1, a0, s8
                  sra          s1, tp, sp
                  slli         t2, t2, 12
                  srl          t1, zero, s1
                  and          sp, a6, a1
                  bltu         s11, s0, 28f
24:               sub          t5, s4, s7
                  or           a0, t4, t3
                  slt          a6, a0, s8
                  bltu         a2, t3, 28f
28:               srli         gp, s1, 23
                  lw           s6, 4(s11)
                  srli         s1, s0, 31
                  slti         t2, s11, -1160
                  and          ra, t5, s3
                  slli         t1, a3, 21
                  andi         sp, s3, -1238
                  sub          s1, s9, t1
                  auipc        a7, 440633
                  addi         s11, s11, 32
                  slt          s2, ra, a0
47:               addi x28, x22, 1
47:               jalr x28, x28, 0
sub_1:            auipc        gp, 338187
                  andi         s9, t0, -1356
                  beq          t3, s4, sub_1_stack_p
                  add          t0, s10, s6
sub_1_stack_p:    addi         s11, s11, -60
                  addi         a4, t1, -359
                  sw           s6, 4(s11)
                  slt          zero, s11, ra
                  la           a4, sub_2
                  addi         a1, t3, 1438
                  slti         a7, s8, -1464
                  sub          a2, a2, s6
                  srli         a1, tp, 29
                  addi         a4, a4, -304
                  sub          gp, zero, a5
                  srli         s4, s3, 15
                  sltu         a2, tp, s9
                  srai         a6, s5, 23
                  lui          t4, 179718
                  slti         sp, s11, -749
sub_1_j3:         jalr         s6, a4, 304 #jump sub_1 -> sub_2
                  srli         a4, s11, 28
                  andi         t6, t0, 1742
                  nop
                  addi         a6, t4, -174
                  and          s9, t6, t5
                  nop
                  srli         a6, s5, 20
                  addi         s10, s11, -96
                  srai         t5, s10, 8
                  andi         gp, a1, 766
sub_1_j4:         jal          s6, sub_2 #jump sub_1 -> sub_2
sub_1_1:          jal          s6, 13f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          s10, 4f
3:                jal          t1, 16f
4:                jal          ra, 6f
5:                jal          a5, 18f
6:                jal          gp, 1b
7:                jal          ra, 3b
8:                jal          ra, 17f
9:                jal          ra, 11f
10:               jal          t1, 7b
11:               jal          t1, 14f
12:               jal          s4, 19f
13:               jal          ra, 10b
14:               jal          t1, 15f
15:               jal          t1, 0b
16:               jal          t1, 9b
17:               jal          ra, 5b
18:               jal          ra, 12b
19:               sll          a3, a7, a1
sub_1_2:          jal          s6, 11f
0:                jal          ra, 13f
1:                jal          t1, 20f
2:                jal          sp, 4f
3:                jal          ra, 17f
4:                jal          ra, 15f
5:                jal          ra, 19f
6:                jal          t0, 16f
7:                jal          ra, 9f
8:                jal          ra, 7b
9:                jal          ra, 18f
10:               jal          ra, 8b
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          t1, 2b
14:               jal          ra, 0b
15:               jal          ra, 12b
16:               jal          sp, 10b
17:               jal          a6, 14b
18:               jal          t1, 1b
19:               jal          tp, 3b
20:               slt          t5, s1, s10
sub_1_3:          jal          s6, 3f
0:                jal          tp, 9f
1:                jal          ra, 11f
2:                jal          ra, 30f
3:                jal          ra, 0b
4:                jal          ra, 14f
5:                jal          t1, 7f
6:                jal          t1, 8f
7:                jal          a6, 25f
8:                jal          ra, 27f
9:                jal          t4, 17f
10:               jal          gp, 20f
11:               jal          s0, 16f
12:               jal          t1, 23f
13:               jal          t1, 2b
14:               jal          a0, 12b
15:               jal          a7, 21f
16:               jal          ra, 19f
17:               jal          t6, 6b
18:               jal          t1, 15b
19:               jal          t1, 13b
20:               jal          tp, 22f
21:               jal          tp, 28f
22:               jal          tp, 18b
23:               jal          s10, 29f
24:               jal          ra, 1b
25:               jal          ra, 4b
26:               jal          gp, 5b
27:               jal          t0, 10b
28:               jal          a5, 26b
29:               jal          ra, 24b
30:               sltu         s9, t1, t5
sub_1_4:          jal          s6, 10f
0:                jal          ra, 5f
1:                jal          ra, 11f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          s4, 1b
5:                jal          a0, 13f
6:                jal          t1, 8f
7:                jal          t1, 12f
8:                jal          tp, 14f
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               jal          ra, 2b
12:               jal          ra, 6b
13:               jal          ra, 15f
14:               jal          a3, 3b
15:               jal          ra, 16f
16:               jal          s2, 17f
17:               srl          t0, t3, a6
sub_1_0:          jal          s6, 22f
0:                jal          t4, 27f
1:                jal          ra, 19f
2:                jal          ra, 25f
3:                jal          ra, 11f
4:                jal          ra, 20f
5:                jal          tp, 18f
6:                jal          t2, 21f
7:                jal          s9, 4b
8:                jal          sp, 1b
9:                jal          ra, 6b
10:               jal          t1, 17f
11:               jal          ra, 15f
12:               jal          ra, 29f
13:               jal          tp, 7b
14:               jal          t1, 5b
15:               jal          ra, 0b
16:               jal          ra, 28f
17:               jal          ra, 24f
18:               jal          t5, 16b
19:               jal          gp, 14b
20:               jal          ra, 2b
21:               jal          tp, 30f
22:               jal          ra, 13b
23:               jal          t1, 9b
24:               jal          ra, 26f
25:               jal          ra, 3b
26:               jal          ra, 23b
27:               jal          ra, 8b
28:               jal          ra, 12b
29:               jal          t0, 10b
30:               sub          ra, t2, a1
                  auipc        t2, 940908
                  sltu         s10, ra, s11
                  or           a4, a7, a6
                  and          s9, a1, a5
                  bgeu         zero, a3, 11f
                  bge          sp, t2, 8f
                  sub          t6, s1, s8
                  sub          s2, a4, t0
8:                sltiu        s10, tp, 482
                  lui          t5, 323521
                  bgeu         a1, t3, 13f
11:               andi         s0, s10, 777
                  or           a6, s0, a3
13:               sll          s5, s10, s2
                  sltiu        t3, ra, 1437
                  srli         t3, s7, 29
                  lui          a6, 612639
                  sltu         t0, s4, a4
                  auipc        s0, 416900
                  srl          s8, s10, a2
                  bltu         t2, s8, 24f
                  xor          s4, s2, t6
                  bne          t2, a3, 23f
23:               xori         gp, s1, -1179
24:               bge          s0, s1, 43f
                  slt          t1, s3, s11
                  bne          a1, a1, 29f
                  bne          a3, t0, 47f
                  slli         s5, tp, 19
29:               ori          t2, ra, -754
                  nop
                  beq          t1, a0, 46f
                  bltu         a1, t2, 42f
                  beq          s7, a1, 48f
                  sub          s6, s8, t5
                  bne          sp, s9, 47f
                  sltu         s5, gp, ra
                  ori          s0, t0, -99
                  addi         s9, s9, -1792
                  slt          s6, t2, s5
                  nop
                  addi         s2, t4, 443
42:               xori         s9, a5, 936
43:               and          a6, sp, gp
                  srli         a0, a3, 13
                  slti         t3, a7, -1302
46:               sub          t0, s2, a1
47:               sltu         a6, t1, s5
48:               andi         s2, t6, 1613
                  slt          s6, t0, s5
                  slli         a2, sp, 10
                  sltu         a4, s5, s3
                  lui          a6, 661663
                  addi         t3, t2, -76
                  addi         ra, s8, -1373
                  blt          t5, s10, 71f
                  beq          t2, s9, 76f
                  bge          s5, s2, 72f
                  sll          s4, s1, s7
                  slti         sp, s0, 1194
                  sltiu        s10, gp, 518
                  sra          t6, a4, ra
                  ori          gp, s11, -595
                  xori         a2, t1, 2024
                  srl          a7, tp, t1
                  bltu         t4, s1, 77f
                  bne          a2, s8, 82f
                  xor          ra, t6, s3
                  sltiu        s1, t3, -1867
                  or           s0, gp, t6
                  sltu         t3, t3, s3
71:               sub          s0, t4, s9
72:               sltiu        a5, a1, 1004
                  addi         s5, a1, 427
                  bltu         s2, tp, 93f
                  or           gp, a4, a1
76:               sub          a0, t2, t0
77:               ori          s5, s6, 414
                  sltu         s10, a0, t2
                  sra          sp, s0, t3
                  add          s1, sp, a0
                  ori          s0, s4, -1530
82:               blt          t5, ra, 102f
                  andi         t4, a0, -45
                  bgeu         a4, a6, 86f
                  sra          tp, a6, t6
86:               sltu         zero, s9, s0
                  srai         a3, s6, 27
                  ori          zero, s10, 19
                  srl          a3, a3, a6
                  nop
                  ori          a7, s11, -1050
                  sltiu        a7, a6, -735
93:               srli         t0, s9, 7
                  sltiu        sp, ra, -540
                  blt          s3, a1, 104f
                  sub          t6, t4, s7
                  sltu         ra, t1, a7
                  lui          t1, 271587
                  srl          a0, s0, s8
                  add          s8, tp, a5
                  auipc        s10, 342080
102:              bltu         t0, t6, 107f
                  sra          t4, t6, t5
104:              srl          t1, s6, s2
                  andi         s0, a4, -99
                  srai         t0, ra, 5
107:              ori          t0, s8, -1727
                  sltu         s10, s1, s7
                  slt          tp, a0, t2
                  nop
                  bge          s5, t5, 114f
                  xor          s0, a0, gp
                  srai         zero, s7, 19
114:              beq          t5, s11, 132f
                  sltiu        t5, tp, 1935
                  ori          tp, sp, 1309
                  add          s9, t2, t6
                  xori         s8, s1, -2046
                  beq          a0, s4, 139f
                  add          t1, s1, t1
                  bne          s4, a5, 129f
                  ori          gp, s7, 477
                  addi         s8, a6, 2024
                  xori         a1, a5, 1465
                  slli         s8, t3, 3
                  blt          zero, t1, 127f
127:              bgeu         a4, a5, 138f
                  sub          t0, a4, t5
129:              srl          t4, s9, s4
                  ori          tp, s3, -143
                  nop
132:              sltiu        a5, s5, -828
                  sra          sp, s2, s3
                  blt          ra, t6, 148f
                  slt          t4, s10, a1
                  srl          a6, s5, t6
                  auipc        s8, 229201
138:              srli         s8, s10, 29
139:              slli         zero, s0, 21
                  slti         a0, t1, -1549
                  auipc        a5, 769974
                  slti         s1, s1, 874
                  srai         s10, tp, 15
                  xori         t0, s10, 927
                  add          sp, s9, s4
                  ori          s5, s8, 1598
                  sll          zero, s8, s7
148:              sll          tp, s1, s6
                  andi         t3, s1, 1227
                  srl          a0, tp, t6
                  and          a7, a5, t3
                  ori          t1, s4, -1348
                  bgeu         s7, zero, 172f
                  blt          t0, ra, 174f
                  sra          tp, s9, a1
                  sltiu        tp, t0, 1660
                  bge          gp, gp, 158f
158:              srl          t6, a2, s11
                  nop
                  sll          a4, zero, s2
                  blt          s8, a3, 166f
                  xor          a4, t5, t0
                  beq          a0, a6, 167f
                  ori          t5, t4, 1799
                  beq          a6, gp, 184f
166:              slli         t4, s0, 18
167:              slti         zero, ra, -1959
                  bgeu         a1, s5, 186f
                  slt          a4, a3, s5
                  slt          t2, s6, a6
                  slti         t0, a0, 1000
172:              addi         t3, s4, 1836
                  bgeu         t6, gp, 193f
174:              lui          t5, 543171
                  andi         a2, a1, -807
                  add          a6, t1, t5
                  sll          t4, a1, t1
                  slti         t6, a5, -1127
                  sltu         a2, s3, ra
                  sltiu        gp, t5, -1576
                  bne          s0, a5, 201f
                  blt          a6, a1, 197f
                  srli         a5, t4, 5
184:              and          t2, t0, ra
                  andi         a4, a2, 867
186:              lui          s10, 1045127
                  srli         a5, t5, 16
                  sltu         a0, s3, a5
                  srli         s10, a4, 12
                  sub          s1, sp, a7
                  slti         zero, sp, -1598
                  beq          a4, a7, 193f
193:              addi         tp, s2, 2014
                  slt          a6, s5, gp
                  ori          a7, s2, 1210
                  xori         a4, s8, 1607
197:              xor          ra, t0, t3
                  bge          s4, sp, 201f
                  andi         tp, s5, 1659
                  ori          s9, t5, -989
201:              xor          gp, s9, t3
                  andi         t4, ra, 714
                  xor          t0, zero, s0
                  nop
                  lui          s8, 366583
                  sub          s4, s0, t4
                  or           t1, s10, sp
                  sra          t4, a5, s5
                  slt          t1, s5, s8
                  and          tp, a5, a7
                  nop
                  srl          a0, a5, ra
                  srli         s8, s9, 2
                  xori         s8, s1, 944
                  add          tp, s10, a5
                  andi         a1, zero, -322
                  and          s4, s1, a1
                  xor          s4, a7, a5
                  xori         t4, a5, -476
                  addi         s1, sp, -782
                  xori         a5, t0, -161
                  sll          t5, tp, a5
                  srl          t2, sp, a6
                  beq          a7, tp, 233f
                  bge          t3, s4, 241f
                  sll          s10, a6, s3
                  slti         a0, s9, -734
                  srli         a5, s0, 11
                  or           s9, t3, t6
                  bne          s8, t2, 249f
                  sll          ra, t1, t3
                  srl          s8, s10, a3
233:              nop
                  sll          s6, s0, s8
                  sra          a2, a3, t2
                  blt          a7, t3, 248f
                  sltiu        s9, ra, -787
                  bge          t5, s2, 241f
                  bgeu         a2, s6, 254f
                  sll          a0, t6, s3
241:              or           a0, s3, t6
                  add          t6, s2, t2
                  slti         t0, s4, 740
                  sub          a4, a0, s8
                  xor          gp, s9, s2
                  auipc        a6, 430376
                  blt          a5, sp, 254f
248:              sra          t4, gp, s10
249:              sub          ra, s6, a5
                  add          tp, t1, a3
                  xor          tp, a3, t5
                  slti         t4, t5, -1246
                  or           sp, s2, t2
254:              slt          s5, s0, a0
                  andi         a6, a4, 1632
                  srl          t1, a4, a0
                  auipc        s6, 857130
                  bgeu         t2, t4, 278f
                  ori          s9, s8, -298
                  nop
                  slti         t4, s2, -315
                  bne          zero, tp, 274f
                  slt          s0, s4, a1
                  slli         tp, s4, 19
                  slti         a0, a4, 379
                  auipc        tp, 683035
                  andi         a6, a4, -1394
                  srai         s9, s6, 4
                  add          a6, gp, s9
                  xor          s9, t0, t5
                  srai         tp, ra, 7
                  or           t0, s9, s6
                  auipc        s2, 149160
274:              beq          a5, a2, 280f
                  ori          a0, t1, -1460
                  slt          a0, tp, a7
                  slt          s6, ra, sp
278:              sltu         t1, a6, t1
                  bltu         a5, sp, 280f
280:              srl          a6, t4, s11
                  slti         t3, s11, -1684
                  sll          zero, s1, a5
                  lw           s6, 4(s11)
                  lui          t5, 816044
                  nop
                  slti         gp, a4, -1556
                  addi         s11, s11, 60
                  slli         ra, t5, 29
447:              addi x25, x22, 1
447:              jalr x25, x25, 0
sub_4:            slti         s1, t2, 907
                  add          ra, t0, s3
                  beq          t2, s0, sub_4_stack_p
sub_4_stack_p:    addi         s11, s11, -28
                  sra          a2, s8, s4
                  sub          a0, s4, a4
                  auipc        a0, 405538
                  sw           s6, 4(s11)
                  sra          sp, a7, a6
sub_4_0:          jal          s6, 8f
0:                jal          ra, 11f
1:                jal          t1, 7f
2:                jal          t1, 10f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          t1, 9f
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          a6, 1b
12:               sltu         t2, t3, tp
                  nop
                  blt          s9, t6, 10f
                  srai         a4, tp, 21
                  beq          zero, t6, 22f
                  add          gp, zero, a5
                  and          t0, a6, a7
                  srai         s8, tp, 7
                  xor          t2, s8, s7
                  sltu         s1, t3, tp
                  sra          a7, sp, a4
10:               bgeu         s11, t6, 15f
                  sra          zero, s1, t4
                  srai         t1, ra, 21
                  andi         tp, s9, 1568
                  and          sp, sp, a5
15:               sub          s9, zero, a6
                  srli         tp, s1, 9
                  slli         a7, a3, 5
                  sra          t5, t3, s11
                  addi         sp, s5, 351
                  or           s0, t3, s6
                  srai         tp, a1, 10
22:               add          t0, sp, t5
                  xor          sp, s1, a3
                  xori         s2, t2, -674
                  sltu         a1, a3, t6
                  slli         a1, s4, 26
                  sltu         a4, t3, s7
                  slt          zero, a6, a3
                  beq          a7, zero, 33f
                  and          tp, t2, a3
                  slti         a4, sp, 1608
                  slli         s5, ra, 17
33:               add          gp, s4, sp
                  xori         a7, a3, 487
                  and          s5, s5, s7
                  sltu         ra, s1, s2
                  beq          s9, t3, 48f
                  srai         t2, t6, 29
                  bltu         a4, t5, 48f
                  sltu         a3, s11, s1
                  sra          gp, s7, a5
                  ori          s0, s9, -972
                  slti         tp, a5, 1175
                  slt          s9, s1, a6
                  sub          ra, t3, s7
                  bge          t0, s4, 48f
                  slli         ra, t0, 9
48:               srli         s9, s3, 22
                  lw           s6, 4(s11)
                  addi         s11, s11, 28
                  andi         t3, t6, -516
                  slti         a1, a5, 314
                  andi         a6, a2, -575
                  srli         a1, t0, 1
                  sub          t2, t6, s10
                  sll          s4, s1, ra
                  sll          a4, t5, t3
81:               addi x9, x22, 0
81:               jalr x9, x9, 0
sub_5:            bne          s0, s4, sub_5_stack_p
                  andi         a2, zero, 143
                  add          s9, s10, t0
                  andi         s0, s1, 1686
                  srli         t0, t3, 23
                  nop
                  sltiu        s4, a3, 1840
sub_5_stack_p:    addi         s11, s11, -28
                  srli         a1, s9, 5
                  sw           s6, 4(s11)
                  nop
                  slt          gp, s5, a3
                  andi         ra, a3, 1728
                  sub          zero, s2, a5
                  bge          ra, s5, 6f
                  nop
                  and          ra, t6, a1
6:                and          zero, a3, a0
                  or           t4, s3, s4
                  addi         s4, a1, 1751
                  xori         a2, s11, 1862
                  add          s1, s4, t4
                  addi         t3, t0, -1242
                  sltu         s10, zero, t5
                  bne          a0, s2, 22f
                  sltu         a7, a0, s3
                  and          a7, a7, zero
                  beq          t5, t4, 31f
                  sra          s9, a4, a4
                  lui          s0, 384798
                  blt          s1, s0, 25f
                  srl          t3, a6, tp
                  sra          s4, t6, gp
22:               add          a5, t3, a3
                  slt          s0, s9, t5
                  srai         t4, s2, 13
25:               bge          a0, t5, 26f
26:               bltu         a6, s3, 31f
                  nop
                  ori          t1, a7, 1112
                  nop
                  addi         a5, a3, -1165
31:               srai         s2, a2, 27
                  lw           s6, 4(s11)
                  nop
                  sltu         s0, a6, a5
                  lui          a2, 968266
                  xori         s4, s8, -978
                  sub          t6, t2, t6
                  addi         s11, s11, 28
                  or           s8, s9, s6
                  auipc        s1, 714390
                  sra          s5, a5, s11
                  and          gp, t6, t3
54:               addi x22, x22, 0
54:               jalr x22, x22, 0
sub_2:            addi         t5, s11, -793
                  sltu         a2, s9, s4
                  srai         t0, a5, 12
                  xori         s0, a6, 392
                  addi         s9, sp, 1353
                  addi         s11, s11, -32
                  auipc        s1, 532841
                  andi         tp, t1, 1255
                  sw           s6, 4(s11)
                  xori         s9, a1, 217
                  srl          t6, s1, s0
                  la           a5, sub_4
                  nop
                  slt          a3, a5, a4
                  add          tp, gp, a1
                  addi         a5, a5, 870
                  sll          t6, a7, gp
                  sltu         s2, s8, s5
sub_2_j5:         jalr         s6, a5, -870 #jump sub_2 -> sub_4
                  lui          gp, 532109
                  srl          s9, t4, s8
                  addi         t1, t4, -276
                  add          s6, a2, s0
                  sub          s9, s8, s3
                  ori          s5, tp, 1651
                  andi         tp, a1, -354
                  slti         a6, a4, 217
sub_2_j6:         jal          s6, sub_4 #jump sub_2 -> sub_4
                  la           s10, sub_5
                  sltu         s5, t1, s3
                  srli         t3, t4, 3
                  addi         s10, s10, -321
                  sltiu        t1, s8, -363
                  srl          a5, s9, t2
                  blt          s8, s8, sub_2_j7 #branch to jump instr
                  auipc        zero, 397353
                  xor          t5, t2, a6
sub_2_j7:         jalr         s6, s10, 321 #jump sub_2 -> sub_5
                  ori          a2, t0, 896
                  la           sp, sub_3
                  ori          t5, s7, -1627
                  addi         sp, sp, 1014
                  or           s6, s11, s5
                  andi         s4, a2, 491
                  bgeu         s7, s9, sub_2_j8 #branch to jump instr
                  slli         zero, a7, 1
sub_2_j8:         jalr         s6, sp, -1014 #jump sub_2 -> sub_3
                  bge          tp, s9, 9f
                  slli         s2, zero, 19
                  bne          s3, a3, 9f
                  srli         s10, gp, 31
                  sll          a2, a4, t5
                  bne          t4, s7, 9f
                  sltu         a5, a4, s10
                  nop
                  slt          s0, s0, t5
9:                slli         zero, s7, 31
                  sltu         gp, s6, t1
                  lw           s6, 4(s11)
                  slli         s0, a0, 11
                  nop
                  nop
                  addi         s11, s11, 32
                  xori         t0, s3, 1734
                  add          s0, s7, s8
                  addi         s1, s10, 1357
66:               addi x3, x22, 1
66:               jalr x3, x3, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x23, x27, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x14, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x14, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x14, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x14, x15, ecall_handler
                  li x15, 0x1
                  beq x14, x15, instr_fault_handler
                  li x15, 0x5
                  beq x14, x15, load_fault_handler
                  li x15, 0x7
                  beq x14, x15, store_fault_handler
                  li x15, 0xc
                  beq x14, x15, pt_fault_handler
                  li x15, 0xd
                  beq x14, x15, pt_fault_handler
                  li x15, 0xf
                  beq x14, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x27, x23, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
