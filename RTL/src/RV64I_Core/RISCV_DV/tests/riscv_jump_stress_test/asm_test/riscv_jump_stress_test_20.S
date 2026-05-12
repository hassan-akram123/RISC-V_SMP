.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xfa51b5b8
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x8
                  li x5, 0xd1de8a8b
                  li x6, 0x0
                  li x7, 0xf0dbccff
                  li x9, 0x33908d86
                  li x10, 0xff79fd51
                  li x11, 0xe877a979
                  li x12, 0xf62f4200
                  li x13, 0xfc2ed881
                  li x14, 0x80000000
                  li x15, 0xfd0a653b
                  li x16, 0x0
                  li x17, 0xc
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x749f47e3
                  li x22, 0xc659de7a
                  li x23, 0xf80b2d7b
                  li x24, 0x0
                  li x25, 0x965a8644
                  li x26, 0x7
                  li x27, 0xe7f38e4d
                  li x29, 0xd5267382
                  li x30, 0xf6ea50de
                  li x31, 0x0
                  la x8, user_stack_end
main:             jal          s5, 16f
0:                jal          t1, 12f
1:                jal          ra, 17f
2:                jal          s8, 4f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          ra, 14f
7:                jal          ra, 13f
8:                jal          t1, 2b
9:                jal          ra, 3b
10:               jal          ra, 20f
11:               jal          ra, 19f
12:               jal          ra, 9b
13:               jal          ra, 18f
14:               jal          ra, 10b
15:               jal          ra, 7b
16:               jal          t1, 15b
17:               jal          ra, 0b
18:               jal          t1, 1b
19:               jal          ra, 6b
20:               sltiu        a5, a0, 1495
main_41:          jal          s5, 13f
0:                jal          t1, 18f
1:                jal          t4, 11f
2:                jal          t1, 14f
3:                jal          t1, 12f
4:                jal          ra, 6f
5:                jal          ra, 1b
6:                jal          t1, 16f
7:                jal          ra, 4b
8:                jal          t1, 17f
9:                jal          tp, 19f
10:               jal          sp, 0b
11:               jal          a7, 10b
12:               jal          s5, 20f
13:               jal          t1, 9b
14:               jal          t0, 15f
15:               jal          ra, 22f
16:               jal          ra, 21f
17:               jal          a0, 2b
18:               jal          t4, 3b
19:               jal          ra, 5b
20:               jal          ra, 7b
21:               jal          t0, 8b
22:               sub          s8, gp, t3
main_22:          jal          s5, 1f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          t1, 7f
3:                jal          t1, 2b
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          t1, 10f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          t1, 3b
10:               jal          t1, 11f
11:               srl          s10, sp, s9
main_24:          jal          s5, 10f
0:                jal          ra, 2f
1:                jal          ra, 9f
2:                jal          t4, 4f
3:                jal          t1, 5f
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          t0, 0b
7:                jal          ra, 3b
8:                jal          tp, 7b
9:                jal          s5, 6b
10:               jal          t1, 1b
11:               auipc        a0, 825424
main_29:          jal          s5, 16f
0:                jal          ra, 20f
1:                jal          s11, 11f
2:                jal          s4, 0b
3:                jal          ra, 5f
4:                jal          t1, 8f
5:                jal          a0, 14f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          ra, 18f
9:                jal          t0, 10f
10:               jal          ra, 13f
11:               jal          t4, 9b
12:               jal          t1, 2b
13:               jal          s7, 6b
14:               jal          t1, 17f
15:               jal          ra, 7b
16:               jal          ra, 3b
17:               jal          s8, 19f
18:               jal          s8, 21f
19:               jal          ra, 15b
20:               jal          ra, 4b
21:               slti         a4, s7, 205
main_30:          jal          s5, 10f
0:                jal          ra, 7f
1:                jal          a2, 2f
2:                jal          t1, 11f
3:                jal          s2, 18f
4:                jal          s5, 1b
5:                jal          a3, 17f
6:                jal          t2, 4b
7:                jal          t1, 16f
8:                jal          t1, 15f
9:                jal          ra, 8b
10:               jal          t1, 9b
11:               jal          t1, 0b
12:               jal          ra, 14f
13:               jal          t1, 19f
14:               jal          sp, 5b
15:               jal          t1, 12b
16:               jal          ra, 3b
17:               jal          t0, 6b
18:               jal          s4, 13b
19:               slt          s9, t2, s3
main_19:          jal          s5, 8f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          ra, 12f
3:                jal          t1, 9f
4:                jal          ra, 14f
5:                jal          t1, 2b
6:                jal          t1, 3b
7:                jal          a0, 13f
8:                jal          a5, 1b
9:                jal          t1, 4b
10:               jal          ra, 11f
11:               jal          gp, 6b
12:               jal          t1, 15f
13:               jal          sp, 10b
14:               jal          ra, 0b
15:               and          t2, s1, s2
main_25:          jal          s5, 4f
0:                jal          s10, 11f
1:                jal          t1, 7f
2:                jal          ra, 3f
3:                jal          ra, 13f
4:                jal          sp, 6f
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          s7, 12f
8:                jal          ra, 0b
9:                jal          t1, 17f
10:               jal          t1, 1b
11:               jal          t1, 15f
12:               jal          ra, 14f
13:               jal          a0, 5b
14:               jal          t1, 16f
15:               jal          ra, 10b
16:               jal          s2, 2b
17:               add          s9, tp, a0
main_47:          jal          s5, 10f
0:                jal          t1, 1f
1:                jal          s5, 2f
2:                jal          a7, 3f
3:                jal          ra, 13f
4:                jal          ra, 11f
5:                jal          a4, 6f
6:                jal          ra, 7f
7:                jal          ra, 15f
8:                jal          ra, 9f
9:                jal          t1, 12f
10:               jal          s6, 4b
11:               jal          ra, 0b
12:               jal          ra, 5b
13:               jal          ra, 14f
14:               jal          t1, 8b
15:               slt          ra, tp, s0
main_39:          jal          s5, 9f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          s6, 8f
3:                jal          a2, 14f
4:                jal          ra, 5f
5:                jal          ra, 0b
6:                jal          ra, 11f
7:                jal          s9, 6b
8:                jal          ra, 7b
9:                jal          t5, 13f
10:               jal          ra, 17f
11:               jal          ra, 16f
12:               jal          ra, 10b
13:               jal          ra, 3b
14:               jal          t1, 2b
15:               jal          t4, 4b
16:               jal          a1, 15b
17:               add          t0, t4, tp
main_0:           jal          s5, 5f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          t1, 19f
3:                jal          ra, 10f
4:                jal          ra, 12f
5:                jal          t6, 18f
6:                jal          ra, 22f
7:                jal          t1, 23f
8:                jal          ra, 21f
9:                jal          t1, 17f
10:               jal          ra, 20f
11:               jal          s5, 15f
12:               jal          sp, 11b
13:               jal          s6, 7b
14:               jal          s2, 1b
15:               jal          gp, 14b
16:               jal          ra, 4b
17:               jal          t1, 8b
18:               jal          ra, 2b
19:               jal          s11, 0b
20:               jal          s6, 6b
21:               jal          ra, 13b
22:               jal          t1, 16b
23:               srl          a1, a1, s2
main_44:          jal          s5, 1f
0:                jal          ra, 3f
1:                jal          t0, 9f
2:                jal          s11, 12f
3:                jal          ra, 7f
4:                jal          s10, 11f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          ra, 6b
11:               jal          a0, 10b
12:               xor          t5, s2, a2
main_11:          jal          s5, 3f
0:                jal          ra, 13f
1:                jal          t1, 10f
2:                jal          t1, 0b
3:                jal          t1, 6f
4:                jal          ra, 7f
5:                jal          ra, 17f
6:                jal          ra, 4b
7:                jal          ra, 15f
8:                jal          t2, 1b
9:                jal          gp, 8b
10:               jal          ra, 16f
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          ra, 12b
14:               jal          t1, 9b
15:               jal          ra, 11b
16:               jal          t1, 5b
17:               sub          s10, ra, a0
main_35:          jal          s5, 7f
0:                jal          s5, 15f
1:                jal          ra, 9f
2:                jal          ra, 12f
3:                jal          ra, 11f
4:                jal          s9, 0b
5:                jal          s7, 8f
6:                jal          t1, 14f
7:                jal          ra, 6b
8:                jal          t1, 3b
9:                jal          ra, 5b
10:               jal          t1, 2b
11:               jal          t1, 10b
12:               jal          ra, 4b
13:               jal          t5, 1b
14:               jal          a1, 13b
15:               slti         t0, s10, 1589
main_1:           jal          s5, 7f
0:                jal          t1, 19f
1:                jal          t1, 24f
2:                jal          t1, 4f
3:                jal          s2, 28f
4:                jal          ra, 15f
5:                jal          s7, 2b
6:                jal          ra, 25f
7:                jal          ra, 13f
8:                jal          s9, 12f
9:                jal          t2, 10f
10:               jal          ra, 16f
11:               jal          t1, 21f
12:               jal          sp, 18f
13:               jal          ra, 17f
14:               jal          t0, 0b
15:               jal          s9, 22f
16:               jal          t1, 14b
17:               jal          ra, 1b
18:               jal          ra, 20f
19:               jal          gp, 23f
20:               jal          gp, 26f
21:               jal          ra, 9b
22:               jal          t1, 8b
23:               jal          ra, 3b
24:               jal          sp, 5b
25:               jal          ra, 11b
26:               jal          ra, 27f
27:               jal          t0, 6b
28:               xor          a4, t0, t1
main_42:          jal          s5, 16f
0:                jal          a1, 1f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          tp, 6f
4:                jal          ra, 3b
5:                jal          tp, 11f
6:                jal          t1, 17f
7:                jal          tp, 14f
8:                jal          ra, 15f
9:                jal          gp, 4b
10:               jal          ra, 12f
11:               jal          ra, 7b
12:               jal          t4, 2b
13:               jal          s10, 10b
14:               jal          ra, 13b
15:               jal          ra, 19f
16:               jal          ra, 9b
17:               jal          t2, 5b
18:               jal          ra, 8b
19:               ori          s2, t5, -577
main_4:           jal          s5, 9f
0:                jal          ra, 3f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          tp, 2b
4:                jal          t1, 7f
5:                jal          ra, 12f
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          s7, 10f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          a5, 6b
12:               srl          a2, a6, a4
main_48:          jal          s5, 16f
0:                jal          t1, 4f
1:                jal          tp, 9f
2:                jal          t1, 6f
3:                jal          ra, 10f
4:                jal          ra, 22f
5:                jal          ra, 19f
6:                jal          ra, 7f
7:                jal          t1, 13f
8:                jal          t1, 17f
9:                jal          ra, 0b
10:               jal          a0, 5b
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               jal          ra, 1b
14:               jal          tp, 18f
15:               jal          ra, 20f
16:               jal          ra, 15b
17:               jal          ra, 21f
18:               jal          ra, 3b
19:               jal          a0, 12b
20:               jal          ra, 14b
21:               jal          ra, 11b
22:               auipc        ra, 5167
main_7:           jal          s5, 7f
0:                jal          t1, 3f
1:                jal          s6, 14f
2:                jal          ra, 15f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          ra, 4b
6:                jal          tp, 13f
7:                jal          ra, 2b
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               jal          t1, 17f
11:               jal          t2, 1b
12:               jal          ra, 6b
13:               jal          t1, 0b
14:               jal          t1, 9b
15:               jal          ra, 16f
16:               jal          ra, 12b
17:               srl          s6, t2, t5
main_33:          jal          s5, 13f
0:                jal          ra, 10f
1:                jal          t1, 0b
2:                jal          a3, 7f
3:                jal          t1, 16f
4:                jal          ra, 18f
5:                jal          ra, 12f
6:                jal          ra, 15f
7:                jal          a2, 22f
8:                jal          ra, 17f
9:                jal          t1, 11f
10:               jal          ra, 21f
11:               jal          t1, 3b
12:               jal          t1, 19f
13:               jal          a6, 8b
14:               jal          a1, 9b
15:               jal          ra, 4b
16:               jal          ra, 2b
17:               jal          ra, 20f
18:               jal          ra, 1b
19:               jal          t1, 14b
20:               jal          t1, 6b
21:               jal          ra, 5b
22:               ori          s10, t3, 528
main_37:          jal          s5, 12f
0:                jal          tp, 8f
1:                jal          a3, 15f
2:                jal          t1, 18f
3:                jal          ra, 16f
4:                jal          ra, 14f
5:                jal          t1, 3b
6:                jal          ra, 5b
7:                jal          t5, 2b
8:                jal          a7, 1b
9:                jal          t1, 17f
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          ra, 10b
13:               jal          ra, 7b
14:               jal          ra, 9b
15:               jal          ra, 13b
16:               jal          s3, 0b
17:               jal          ra, 11b
18:               jal          ra, 19f
19:               nop
main_43:          jal          s5, 5f
0:                jal          ra, 8f
1:                jal          s11, 7f
2:                jal          tp, 10f
3:                jal          ra, 4f
4:                jal          t1, 1b
5:                jal          a7, 3b
6:                jal          a1, 2b
7:                jal          ra, 0b
8:                jal          s2, 9f
9:                jal          ra, 6b
10:               srli         s3, t0, 23
main_9:           jal          s5, 8f
0:                jal          ra, 12f
1:                jal          t1, 4f
2:                jal          t2, 3f
3:                jal          s2, 14f
4:                jal          s4, 15f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 16f
8:                jal          ra, 2b
9:                jal          s5, 1b
10:               jal          ra, 6b
11:               jal          s4, 5b
12:               jal          gp, 10b
13:               jal          t1, 11b
14:               jal          a2, 0b
15:               jal          a0, 13b
16:               slli         a5, a4, 23
main_46:          jal          s5, 3f
0:                jal          t1, 7f
1:                jal          t1, 5f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          t1, 12f
6:                jal          ra, 4b
7:                jal          s9, 9f
8:                jal          ra, 11f
9:                jal          s2, 8b
10:               jal          a5, 2b
11:               jal          ra, 1b
12:               ori          s3, t5, -542
main_28:          jal          s5, 6f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          t1, 8f
3:                jal          s3, 7f
4:                jal          t0, 3b
5:                jal          a1, 14f
6:                jal          t2, 13f
7:                jal          ra, 10f
8:                jal          s3, 11f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               jal          t1, 9b
13:               jal          t1, 0b
14:               auipc        a1, 731277
main_38:          jal          s5, 6f
0:                jal          sp, 1f
1:                jal          ra, 9f
2:                jal          t1, 14f
3:                jal          ra, 12f
4:                jal          t1, 2b
5:                jal          a4, 13f
6:                jal          a1, 7f
7:                jal          t1, 8f
8:                jal          ra, 5b
9:                jal          ra, 10f
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          ra, 0b
13:               jal          t1, 3b
14:               or           gp, t4, s4
main_13:          jal          s5, 20f
0:                jal          ra, 24f
1:                jal          t1, 5f
2:                jal          tp, 19f
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          t1, 16f
6:                jal          t1, 27f
7:                jal          ra, 0b
8:                jal          t1, 22f
9:                jal          t1, 6b
10:               jal          ra, 12f
11:               jal          t0, 26f
12:               jal          ra, 11b
13:               jal          s10, 15f
14:               jal          t1, 23f
15:               jal          t0, 10b
16:               jal          gp, 3b
17:               jal          ra, 4b
18:               jal          ra, 25f
19:               jal          s5, 1b
20:               jal          t1, 17b
21:               jal          t5, 7b
22:               jal          ra, 28f
23:               jal          ra, 2b
24:               jal          ra, 18b
25:               jal          t1, 8b
26:               jal          sp, 14b
27:               jal          t1, 21b
28:               srl          s2, a2, tp
main_15:          jal          s5, 3f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          gp, 9f
3:                jal          a7, 7f
4:                jal          ra, 10f
5:                jal          s9, 1b
6:                jal          s3, 0b
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               sltiu        s3, s4, -1573
main_50:          jal          s5, 1f
0:                jal          t1, 3f
1:                jal          ra, 8f
2:                jal          sp, 13f
3:                jal          ra, 12f
4:                jal          ra, 2b
5:                jal          t1, 6f
6:                jal          tp, 4b
7:                jal          ra, 10f
8:                jal          t1, 15f
9:                jal          ra, 14f
10:               jal          ra, 5b
11:               jal          s5, 17f
12:               jal          t1, 11b
13:               jal          s3, 16f
14:               jal          ra, 7b
15:               jal          t1, 9b
16:               jal          ra, 0b
17:               lui          s5, 579130
main_34:          jal          s5, 3f
0:                jal          t1, 21f
1:                jal          ra, 16f
2:                jal          ra, 20f
3:                jal          ra, 7f
4:                jal          t1, 5f
5:                jal          a6, 1b
6:                jal          ra, 8f
7:                jal          ra, 11f
8:                jal          t1, 22f
9:                jal          s8, 18f
10:               jal          a6, 14f
11:               jal          sp, 9b
12:               jal          ra, 15f
13:               jal          ra, 6b
14:               jal          ra, 2b
15:               jal          s6, 10b
16:               jal          ra, 12b
17:               jal          ra, 13b
18:               jal          ra, 4b
19:               jal          ra, 17b
20:               jal          ra, 0b
21:               jal          t1, 19b
22:               or           s11, t5, a1
main_23:          jal          s5, 29f
0:                jal          tp, 1f
1:                jal          s4, 18f
2:                jal          s7, 22f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          ra, 30f
6:                jal          gp, 24f
7:                jal          ra, 25f
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          ra, 23f
11:               jal          ra, 10b
12:               jal          ra, 9b
13:               jal          ra, 20f
14:               jal          t1, 19f
15:               jal          sp, 14b
16:               jal          ra, 13b
17:               jal          a5, 21f
18:               jal          s6, 6b
19:               jal          ra, 26f
20:               jal          ra, 0b
21:               jal          t1, 2b
22:               jal          a6, 11b
23:               jal          ra, 28f
24:               jal          t1, 7b
25:               jal          ra, 27f
26:               jal          ra, 17b
27:               jal          ra, 3b
28:               jal          t6, 5b
29:               jal          ra, 16b
30:               or           t1, s2, a1
main_20:          jal          s5, 10f
0:                jal          ra, 2f
1:                jal          t1, 0b
2:                jal          gp, 5f
3:                jal          s4, 6f
4:                jal          t1, 1b
5:                jal          ra, 11f
6:                jal          ra, 12f
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 3b
10:               jal          ra, 8b
11:               jal          ra, 9b
12:               addi         t0, s9, 1816
main_12:          jal          s5, 7f
0:                jal          gp, 21f
1:                jal          ra, 4f
2:                jal          a6, 11f
3:                jal          t1, 12f
4:                jal          ra, 14f
5:                jal          ra, 10f
6:                jal          s3, 5b
7:                jal          t1, 20f
8:                jal          t1, 16f
9:                jal          t1, 13f
10:               jal          ra, 17f
11:               jal          t2, 1b
12:               jal          ra, 8b
13:               jal          tp, 6b
14:               jal          ra, 22f
15:               jal          ra, 9b
16:               jal          t1, 18f
17:               jal          ra, 2b
18:               jal          t5, 19f
19:               jal          ra, 0b
20:               jal          t1, 3b
21:               jal          ra, 15b
22:               sra          s7, a0, t3
main_18:          jal          s5, 5f
0:                jal          a1, 7f
1:                jal          tp, 6f
2:                jal          ra, 14f
3:                jal          t1, 11f
4:                jal          ra, 12f
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          ra, 1b
8:                jal          t4, 9f
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          ra, 8b
12:               jal          s8, 13f
13:               jal          t0, 0b
14:               sltiu        a0, t6, -64
main_17:          jal          s5, 15f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          ra, 0b
3:                jal          ra, 22f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          t1, 3b
7:                jal          s6, 14f
8:                jal          gp, 17f
9:                jal          s7, 21f
10:               jal          ra, 19f
11:               jal          s3, 1b
12:               jal          t0, 2b
13:               jal          ra, 12b
14:               jal          s7, 11b
15:               jal          t2, 7b
16:               jal          ra, 20f
17:               jal          ra, 4b
18:               jal          tp, 8b
19:               jal          t1, 6b
20:               jal          t1, 18b
21:               jal          ra, 23f
22:               jal          ra, 16b
23:               srl          gp, s1, t4
main_21:          jal          s5, 16f
0:                jal          ra, 7f
1:                jal          ra, 24f
2:                jal          t1, 29f
3:                jal          ra, 18f
4:                jal          t1, 9f
5:                jal          t4, 28f
6:                jal          ra, 11f
7:                jal          ra, 2b
8:                jal          ra, 4b
9:                jal          ra, 22f
10:               jal          ra, 27f
11:               jal          ra, 14f
12:               jal          ra, 0b
13:               jal          ra, 8b
14:               jal          t1, 15f
15:               jal          t0, 19f
16:               jal          s3, 5b
17:               jal          ra, 21f
18:               jal          ra, 6b
19:               jal          t1, 26f
20:               jal          ra, 17b
21:               jal          s3, 25f
22:               jal          s11, 23f
23:               jal          sp, 12b
24:               jal          t1, 13b
25:               jal          ra, 10b
26:               jal          a7, 1b
27:               jal          ra, 3b
28:               jal          t1, 20b
29:               nop
main_32:          jal          s5, 8f
0:                jal          t4, 1f
1:                jal          ra, 14f
2:                jal          ra, 13f
3:                jal          ra, 2b
4:                jal          s5, 0b
5:                jal          ra, 9f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 11f
9:                jal          a6, 6b
10:               jal          a6, 3b
11:               jal          t1, 12f
12:               jal          t1, 10b
13:               jal          ra, 5b
14:               srli         s8, s5, 12
main_40:          jal          s5, 9f
0:                jal          ra, 8f
1:                jal          ra, 4f
2:                jal          t1, 3f
3:                jal          t1, 5f
4:                jal          ra, 2b
5:                jal          t1, 7f
6:                jal          ra, 1b
7:                jal          ra, 11f
8:                jal          sp, 6b
9:                jal          s10, 10f
10:               jal          s7, 0b
11:               nop
main_6:           jal          s5, 7f
0:                jal          ra, 5f
1:                jal          a1, 20f
2:                jal          a3, 24f
3:                jal          ra, 0b
4:                jal          s6, 23f
5:                jal          t1, 18f
6:                jal          ra, 3b
7:                jal          t4, 9f
8:                jal          t1, 6b
9:                jal          a5, 14f
10:               jal          ra, 8b
11:               jal          tp, 4b
12:               jal          t1, 22f
13:               jal          ra, 1b
14:               jal          ra, 13b
15:               jal          gp, 12b
16:               jal          ra, 17f
17:               jal          t1, 11b
18:               jal          ra, 25f
19:               jal          a3, 16b
20:               jal          tp, 19b
21:               jal          t1, 15b
22:               jal          t6, 10b
23:               jal          t0, 2b
24:               jal          ra, 21b
25:               slt          s5, ra, s1
main_5:           jal          s5, 20f
0:                jal          ra, 6f
1:                jal          t1, 11f
2:                jal          ra, 21f
3:                jal          ra, 15f
4:                jal          a6, 18f
5:                jal          ra, 10f
6:                jal          t1, 5b
7:                jal          ra, 25f
8:                jal          s2, 3b
9:                jal          ra, 1b
10:               jal          ra, 14f
11:               jal          t1, 26f
12:               jal          ra, 17f
13:               jal          s2, 0b
14:               jal          ra, 9b
15:               jal          t1, 13b
16:               jal          t4, 19f
17:               jal          ra, 7b
18:               jal          ra, 8b
19:               jal          sp, 23f
20:               jal          ra, 22f
21:               jal          t0, 12b
22:               jal          ra, 2b
23:               jal          ra, 4b
24:               jal          s3, 16b
25:               jal          a2, 24b
26:               xor          s5, t5, s11
main_14:          jal          s5, 1f
0:                jal          ra, 14f
1:                jal          t5, 15f
2:                jal          ra, 6f
3:                jal          t1, 12f
4:                jal          ra, 18f
5:                jal          ra, 10f
6:                jal          ra, 7f
7:                jal          ra, 17f
8:                jal          ra, 3b
9:                jal          ra, 4b
10:               jal          ra, 16f
11:               jal          ra, 20f
12:               jal          ra, 5b
13:               jal          ra, 0b
14:               jal          t1, 11b
15:               jal          gp, 9b
16:               jal          t1, 2b
17:               jal          s8, 13b
18:               jal          ra, 19f
19:               jal          ra, 8b
20:               addi         a4, s11, -1960
main_3:           jal          s5, 3f
0:                jal          ra, 11f
1:                jal          ra, 5f
2:                jal          a2, 14f
3:                jal          ra, 10f
4:                jal          s11, 12f
5:                jal          t1, 20f
6:                jal          t0, 18f
7:                jal          ra, 9f
8:                jal          ra, 22f
9:                jal          t1, 13f
10:               jal          ra, 17f
11:               jal          ra, 23f
12:               jal          ra, 24f
13:               jal          ra, 4b
14:               jal          a4, 7b
15:               jal          ra, 16f
16:               jal          ra, 6b
17:               jal          ra, 21f
18:               jal          ra, 2b
19:               jal          s7, 15b
20:               jal          ra, 8b
21:               jal          t1, 0b
22:               jal          t1, 19b
23:               jal          t0, 1b
24:               sll          s6, a3, s10
                  lui          a0, 414905
                  sltu         sp, a2, s3
                  sra          t5, s6, t1
                  srai         s5, s1, 23
                  add          a4, t0, t6
                  add          t5, t3, s6
                  nop
                  bne          a3, t5, 17f
                  bltu         s7, s3, 15f
                  srai         a5, s3, 15
                  slli         s7, a6, 17
                  sra          s11, t2, a1
                  bgeu         a6, s8, 16f
                  bgeu         s7, s6, 21f
                  sub          a5, t1, s8
15:               srli         t5, s11, 17
16:               beq          s5, t3, 34f
17:               xor          t5, s8, a4
                  slli         s8, a7, 12
                  xor          s4, a7, s2
                  srli         s5, t6, 7
21:               sltiu        t2, t3, -617
                  sub          t4, zero, s6
                  auipc        ra, 1038922
                  bne          zero, tp, 36f
                  nop
                  addi         s2, t4, 1208
                  bgeu         a5, s7, 44f
                  bgeu         t1, s0, 40f
                  slti         a0, s3, 850
                  srli         a0, s9, 23
                  blt          sp, s9, 39f
main_45:          jal          s5, 4f
0:                jal          ra, 9f
1:                jal          t1, 0b
2:                jal          s2, 22f
3:                jal          ra, 6f
4:                jal          a4, 1b
5:                jal          ra, 21f
6:                jal          a4, 13f
7:                jal          ra, 23f
8:                jal          s7, 27f
9:                jal          ra, 10f
10:               jal          ra, 20f
11:               jal          ra, 5b
12:               jal          ra, 2b
13:               jal          a2, 28f
14:               jal          s10, 24f
15:               jal          s10, 14b
16:               jal          t1, 25f
17:               jal          s2, 19f
18:               jal          t1, 15b
19:               jal          ra, 3b
20:               jal          gp, 8b
21:               jal          t0, 17b
22:               jal          ra, 18b
23:               jal          ra, 26f
24:               jal          ra, 7b
25:               jal          gp, 12b
26:               jal          t1, 11b
27:               jal          gp, 16b
28:               ori          s10, s8, 1673
                  blt          sp, t6, 37f
                  addi         s10, a5, -728
34:               sra          t0, sp, a4
                  xor          t5, s6, a0
36:               and          a7, a6, a1
37:               sll          ra, s11, s0
                  xor          s4, tp, zero
39:               sltiu        a5, gp, -927
40:               beq          ra, s0, 56f
                  sltu         ra, zero, sp
                  xori         s2, t6, -1478
                  sll          t0, s8, a4
44:               or           a4, s2, a6
                  beq          a4, s6, 62f
                  and          s3, a2, s0
                  add          s2, a2, s8
                  srl          s2, s6, a0
                  bgeu         sp, a7, 60f
                  bltu         s9, t4, 64f
                  xori         s4, t4, 639
                  xor          gp, s5, a4
                  bltu         s3, s6, 62f
                  slti         a6, a7, -1959
                  slli         t4, s10, 29
56:               srai         ra, s6, 29
                  sub          a4, ra, t5
                  beq          tp, a2, 67f
                  or           s9, s10, sp
60:               or           zero, s11, t4
                  blt          a5, s8, 63f
62:               blt          s8, t2, 81f
63:               xori         a4, a2, -478
64:               ori          a4, a6, -1411
                  sltu         a3, a6, s0
                  sltiu        a3, a3, 1514
67:               slti         ra, s10, 657
                  lui          ra, 51665
                  bgeu         tp, a0, 79f
                  xori         a2, t6, 128
                  slti         s9, a1, 1198
                  add          s5, t2, s2
                  and          gp, s3, t1
                  xor          s3, s10, s11
                  sub          a4, gp, s7
                  and          s4, s2, s5
                  srl          s11, a3, ra
                  bne          a0, t5, 84f
79:               bne          t3, a6, 94f
                  and          a4, t0, t0
81:               srli         s11, sp, 25
                  ori          a3, s1, -560
                  bge          a5, a7, 101f
84:               bne          zero, t6, 101f
                  beq          t6, t4, 96f
                  srl          t6, gp, s4
                  sra          s4, s1, s0
                  srli         t6, a1, 31
                  sub          t4, a5, gp
                  slli         s11, a6, 22
                  sub          s4, a0, s5
                  slt          s2, a0, s10
                  nop
94:               bne          s4, t1, 98f
                  sll          a3, s9, a4
96:               sll          a0, s2, zero
                  or           tp, a1, t1
98:               xori         s11, s1, -78
                  addi         s7, s5, -170
                  sra          a1, a1, s2
101:              and          s10, a2, t0
                  auipc        ra, 128692
                  xori         a1, s4, -425
                  blt          a1, a7, 123f
                  bge          s2, a3, 109f
                  srai         a2, a4, 16
                  sltu         gp, a4, a3
                  or           s11, s4, s10
109:              sll          a4, a1, s4
                  xor          s7, gp, s4
                  nop
                  xori         a6, s9, -845
                  nop
                  slt          s11, sp, ra
                  beq          gp, tp, 124f
                  slli         ra, tp, 2
                  sll          zero, zero, gp
                  slti         s7, s6, 277
                  xor          s4, a5, s0
                  ori          zero, a5, -317
                  slti         t2, a7, 631
                  bne          a3, sp, 133f
123:              srai         a6, s2, 20
124:              beq          t5, tp, 138f
                  sub          s10, s0, s10
                  ori          s11, t5, 1090
                  srai         s8, s10, 21
                  nop
                  sub          a2, s1, t5
                  bge          t0, t0, 134f
                  slti         s10, a6, -1667
                  srli         s2, zero, 26
133:              sll          t5, a3, s8
134:              xor          a3, a6, a5
                  lui          a4, 669102
                  nop
                  beq          tp, ra, 153f
138:              auipc        s6, 967395
                  addi         t6, s7, 1610
                  slt          s6, a4, a2
                  bltu         ra, gp, 159f
                  sub          a2, a1, sp
                  srl          s9, s9, t5
                  beq          a3, a0, 150f
                  andi         a7, ra, -505
                  bge          t2, zero, 154f
                  sltiu        a5, s5, -1226
                  nop
                  addi         a1, s6, -1286
150:              srl          s3, s11, a4
                  ori          s6, s3, 575
                  xori         t5, s6, -1635
153:              ori          s6, s6, 918
154:              or           a7, zero, t6
                  andi         s6, a2, 1383
                  ori          a3, s6, 1355
                  addi         sp, s3, 1893
                  sltu         a0, a4, s6
159:              lui          s5, 528227
                  xori         t1, zero, 515
                  ori          a7, s7, 916
                  bltu         s10, a7, 171f
                  sltu         ra, t1, t3
                  bge          t0, s7, 175f
                  sra          s8, a1, s10
                  slt          t2, a0, a4
                  auipc        ra, 193709
                  andi         s9, a6, -1094
                  sub          ra, t6, tp
                  xori         t5, s3, -777
171:              srai         sp, a3, 1
                  auipc        zero, 344226
                  slti         ra, ra, -1160
                  sra          s4, t6, s0
175:              srai         a7, t5, 31
                  bltu         s7, s7, 186f
                  bltu         a7, a3, 181f
                  andi         tp, s0, 1344
                  bge          t4, t0, 181f
                  srai         s9, t6, 10
181:              bge          s10, s11, 198f
                  and          t5, s1, s2
                  sub          s9, s8, t4
                  or           s4, t0, tp
                  srai         a7, a7, 31
186:              bge          ra, s4, 205f
                  beq          gp, s6, 194f
                  auipc        a5, 529070
                  sll          s11, t6, s5
                  bne          a0, s4, 202f
                  sltiu        s2, s2, -12
                  xori         s8, s3, 990
                  sra          a0, a0, a4
194:              lui          t2, 378631
                  blt          t5, t5, 205f
                  blt          gp, s4, 205f
                  bne          t2, a5, 201f
198:              srl          s6, t3, s3
                  sltiu        zero, t1, -1509
                  bge          zero, a5, 214f
201:              srai         s8, s2, 3
202:              xor          t6, s2, s0
                  lui          t1, 885957
                  beq          a7, s3, 222f
205:              slli         t4, a5, 27
                  lui          t2, 21298
                  addi         s3, s1, 1277
                  slli         sp, t1, 2
                  sltu         t1, s8, a3
                  xor          a0, t4, t5
                  nop
                  bgeu         s9, a2, 220f
                  sub          s4, a4, a7
214:              add          a5, ra, a2
                  xori         a6, a7, -939
                  sltu         s9, zero, s10
                  bltu         s1, a4, 222f
                  nop
                  add          a2, s10, t3
220:              slti         t2, a6, -101
                  auipc        s9, 588888
222:              srai         s3, s11, 11
                  bne          t4, gp, 234f
                  bne          a3, zero, 235f
                  sltiu        s8, s3, 964
                  add          a1, s4, s9
                  ori          s4, t1, -1217
                  add          t6, a0, zero
                  slli         s10, ra, 17
                  srli         s4, s3, 22
                  and          t6, s4, a2
                  slli         s11, zero, 21
                  slt          s4, s0, sp
234:              srli         t0, t0, 0
235:              bne          t4, s9, 252f
                  or           a5, s8, t6
                  beq          a4, a6, 256f
                  ori          s5, t6, 710
                  sll          t0, tp, s7
                  xor          s10, a7, a7
                  addi         s6, sp, -494
                  and          a0, s11, s6
                  andi         t0, ra, 1172
                  ori          t0, s3, 1411
                  srai         s11, t6, 15
                  sra          s9, s10, a5
                  slti         tp, a1, 529
                  slti         s8, s8, 795
                  srli         t0, s6, 1
                  bge          t5, s5, 259f
                  xor          a6, tp, a3
252:              slli         a2, a7, 27
                  nop
                  lui          gp, 384172
                  xor          ra, s10, a2
256:              bgeu         tp, a5, 271f
                  slli         a0, a7, 18
                  lui          s7, 307910
259:              bgeu         t5, a0, 271f
                  addi         sp, t6, -586
                  slli         a7, tp, 2
                  lui          gp, 21257
                  beq          s6, a6, 277f
                  ori          t4, zero, 1377
                  nop
                  add          s9, s3, s5
                  slt          ra, s10, s9
                  and          t6, t5, a3
                  bgeu         t0, t4, 286f
                  sub          t1, t4, a3
271:              blt          t4, zero, 287f
                  and          s2, s11, t6
                  andi         s5, t0, 1241
                  xori         t1, a3, 1079
                  slti         a0, t0, 114
                  srli         t4, a5, 18
277:              bltu         t5, t3, 288f
                  lui          s7, 137146
                  and          s2, s0, tp
                  bltu         a5, s5, 291f
                  and          t1, s10, s6
                  sltiu        t0, a0, 726
                  srai         s5, t0, 23
                  bge          t2, s7, 292f
                  addi         a4, s11, 1131
286:              srli         zero, s5, 7
287:              sltu         a1, t1, zero
288:              lui          gp, 95156
                  srl          t5, a0, s4
                  addi         a7, a0, -691
291:              bne          s4, t0, 302f
292:              andi         a7, gp, -1871
                  srl          t1, s5, a1
                  add          t4, s11, a1
                  sra          tp, t0, a7
                  slt          s9, a0, a3
                  beq          sp, a2, 307f
                  blt          a3, t3, 304f
                  or           a5, s9, tp
                  and          s2, t1, s10
                  and          t5, t3, s4
302:              sra          a5, zero, ra
                  srl          s11, a6, zero
304:              beq          a5, a0, 318f
                  bge          a7, s11, 322f
                  auipc        s11, 707396
307:              bltu         s10, a3, 316f
                  or           a0, a1, a6
                  nop
                  bltu         a0, s11, 328f
                  addi         a3, a3, 1832
                  andi         t1, t2, -1202
                  lui          a0, 236147
                  nop
                  xori         s9, s0, -1749
316:              sltiu        t0, s4, -231
                  andi         gp, gp, -1709
318:              srai         tp, tp, 29
                  bgeu         s10, t2, 323f
                  srl          a4, t5, t5
                  xori         t5, s6, 595
322:              sltu         t4, a3, s1
323:              ori          s4, a6, -1188
                  sltiu        t6, s5, 1922
                  bge          a4, t0, 337f
                  and          a1, ra, s11
                  bltu         sp, a2, 345f
328:              sltiu        s8, s0, -1133
                  and          s2, a5, t6
                  sub          a4, s9, s8
                  sltiu        s8, s5, -1328
                  and          s6, ra, t3
                  sll          a4, t2, t6
                  srli         a7, s5, 25
                  slti         a6, t4, 911
                  sll          a1, s7, t6
337:              beq          s11, a1, 344f
                  bgeu         tp, s10, 340f
                  srl          tp, s5, s2
340:              sltu         s10, s5, a6
                  bltu         s10, zero, 360f
                  andi         a7, zero, -1891
                  add          t2, tp, a1
344:              xori         a1, a3, -1061
345:              sltiu        s5, a4, 24
                  blt          t0, s3, 360f
                  srai         a1, s4, 8
                  addi         s8, t2, -698
                  addi         a0, sp, -1530
                  andi         s7, a7, 2001
                  sltiu        tp, s6, -1902
                  bge          a6, a1, 356f
                  bltu         ra, t3, 372f
                  sub          t4, s1, s6
                  addi         gp, t5, -794
356:              sub          a0, t1, a0
                  sub          ra, t3, s11
                  nop
                  add          t1, a6, t6
360:              xor          a3, s8, s5
                  nop
                  bne          s6, t1, 372f
                  sll          a6, s11, t5
                  sltu         sp, s1, s11
                  sra          t2, gp, ra
                  sltu         s10, s2, a0
                  sll          zero, s9, t4
                  nop
                  bltu         a6, a5, 386f
                  sra          s10, s6, s9
                  bltu         s0, s3, 380f
372:              bne          s11, a5, 380f
                  andi         s8, s7, -1923
                  bge          s2, t3, 383f
                  bne          s3, t2, 392f
                  or           t6, s4, s2
                  slt          t6, gp, t2
                  bgeu         sp, a7, 382f
                  slt          s6, t5, s11
380:              sltu         a3, s1, t5
                  add          t6, t4, a2
382:              slti         ra, s11, 302
383:              sub          s8, s6, zero
                  lui          s5, 265873
                  blt          t4, t0, 390f
386:              srl          s6, a6, a7
                  and          sp, sp, a7
                  slli         gp, t5, 22
                  srai         t6, s10, 9
390:              beq          s4, s1, 405f
                  ori          s7, s9, 658
392:              andi         t5, s4, -1195
                  nop
                  slli         a1, t2, 27
                  auipc        a7, 659468
                  beq          sp, s4, 408f
                  addi         gp, s10, -56
                  xor          t2, a1, gp
                  srl          tp, t6, a6
                  ori          a6, sp, -633
                  xor          t4, t3, a2
                  xor          zero, s9, s7
                  nop
                  bge          s4, s8, 413f
405:              bltu         a1, a3, 419f
                  nop
                  add          s7, sp, t6
408:              sub          a5, a3, s3
                  srli         s7, s8, 3
                  xor          a7, t0, s2
                  srl          a4, t3, a2
                  lui          a6, 963274
413:              and          s10, a3, gp
                  bne          t5, a5, 429f
                  xor          s4, s6, a3
                  xori         a4, a3, -843
                  bgeu         ra, s9, 419f
                  auipc        s3, 420691
419:              bltu         s11, s2, 430f
                  beq          ra, ra, 432f
                  lui          s4, 611727
                  addi         s3, s9, -1114
                  addi         t0, a6, -1690
                  slti         s6, t6, 421
                  srli         s7, a4, 6
                  srli         s8, t1, 16
                  xori         s4, ra, -1655
                  xori         a5, a2, -577
429:              bge          s9, t3, 433f
430:              or           a1, s3, ra
                  slli         a5, s7, 30
432:              bne          s5, s11, 443f
433:              lui          t1, 43677
                  srli         s2, ra, 2
                  srl          s6, t2, gp
                  bne          a6, s3, 444f
                  xor          t5, zero, s5
                  blt          a6, s7, 454f
                  slti         t4, s6, -664
                  bne          gp, a1, 459f
                  sltu         a2, s0, t6
                  slti         sp, gp, -260
443:              bltu         t0, a6, 452f
444:              sra          s4, tp, s6
                  or           t6, a3, a0
                  srl          t6, s1, a0
                  sll          s11, t0, t6
                  bge          s6, sp, 452f
                  slt          a6, t5, s6
                  srl          t4, s1, tp
                  sll          s4, a1, a3
452:              slt          t5, sp, t2
                  addi         s2, a2, 698
454:              bne          t5, s5, 466f
                  srl          s2, a5, t5
                  sltiu        s5, t6, -432
                  beq          s1, s4, 467f
                  nop
459:              bge          gp, t4, 466f
                  sll          s8, t1, s2
                  bge          s10, s0, 469f
                  addi         t0, tp, 788
                  bgeu         zero, s7, 467f
                  slti         s9, s1, 1594
                  slt          t0, s2, s9
466:              bltu         t4, s7, 483f
467:              sll          s5, gp, s11
                  ori          a4, a3, -681
469:              srai         zero, s9, 13
                  srl          t1, a3, a1
                  srai         t1, t2, 31
                  srai         s11, a0, 4
                  xori         t1, gp, -863
                  add          s4, zero, sp
                  srai         t6, ra, 9
                  srai         t5, s6, 11
                  slti         s6, a3, -796
                  ori          tp, a4, -971
                  sll          tp, s6, tp
                  sra          tp, zero, s7
                  beq          zero, a0, 495f
                  bltu         t0, s6, 492f
483:              bge          t5, a0, 500f
                  nop
                  slt          s5, a2, s10
                  slli         t6, tp, 21
                  addi         s3, t0, -769
                  bne          t0, a0, 494f
                  auipc        s5, 759541
                  ori          ra, t2, 172
                  nop
492:              sll          a2, s1, s1
                  add          tp, s2, a1
494:              sltu         s11, a4, s8
495:              sltiu        zero, s7, -1116
                  andi         s6, gp, -30
                  ori          s3, ra, -318
                  srai         t2, s0, 14
                  or           s8, t4, a3
500:              nop
                  xori         t2, s9, -207
                  blt          t5, a7, 521f
                  sll          a5, a1, t2
                  srl          tp, gp, ra
                  xor          s11, a2, t3
                  srli         s2, s9, 25
                  add          a5, t0, a1
                  sltiu        s10, a6, 128
                  xor          s6, t2, a4
                  addi         s5, s0, 1526
                  bge          tp, s0, 529f
                  slti         s2, s7, -1149
                  sltiu        a1, s11, 901
                  xor          t0, a5, s6
                  nop
                  slt          s8, a2, s4
                  bne          t5, zero, 526f
                  ori          s4, ra, 1307
                  and          s11, a2, s1
                  sltu         t1, a5, s7
521:              srai         t6, t2, 3
                  sub          ra, s3, s0
                  and          s8, a4, s11
                  bgeu         sp, t2, 535f
                  slt          s11, s7, t4
526:              lui          a0, 129504
                  nop
                  xori         t2, s11, -1789
529:              and          zero, t6, s4
                  andi         s7, a7, -469
                  blt          s5, a5, 548f
                  bge          s0, t0, 537f
                  auipc        a5, 1026439
                  sra          a3, a0, s8
535:              bgeu         s0, s10, 553f
                  nop
537:              xor          s9, a6, s8
                  srli         a1, a3, 21
                  bltu         a3, s8, 547f
                  bltu         s9, t5, 548f
                  blt          t1, s1, 547f
                  nop
                  srl          t6, a4, s10
                  lui          s7, 980196
                  bne          t6, a7, 554f
                  andi         a6, s11, 533
547:              bge          a3, sp, 551f
548:              xor          s8, s2, t4
                  xori         s10, s1, 627
                  or           a3, s2, gp
551:              bgeu         s2, s9, 569f
                  add          s7, a0, s6
553:              ori          s6, a6, -1919
554:              srai         a4, s3, 30
                  sub          t5, ra, tp
                  xori         a3, s7, 1288
                  srli         s5, t1, 10
                  sltiu        a4, s7, -2005
                  srai         s5, tp, 21
                  nop
                  or           s2, t0, s9
                  sra          tp, t1, t3
                  slt          a5, s10, a2
                  bge          s4, s2, 576f
                  add          s5, t3, a4
                  auipc        t0, 365474
                  bne          s5, s11, 584f
                  slli         t1, tp, 15
569:              xori         gp, t6, -1492
                  lui          gp, 778769
                  sll          ra, gp, t2
                  or           sp, a7, a3
                  sltiu        s4, tp, -460
                  lui          a6, 132974
                  andi         a7, t5, 1070
576:              lui          s4, 841999
                  sra          s3, a7, t6
                  lui          t4, 205569
                  nop
                  or           ra, a2, s9
                  bgeu         ra, s6, 595f
                  addi         s9, a1, 1729
                  auipc        s11, 876075
584:              nop
                  bne          a4, t6, 600f
                  lui          s11, 680945
                  blt          a0, a2, 591f
                  srl          a2, s5, a6
                  xori         a6, s9, 1821
                  auipc        s9, 450262
591:              or           a5, s2, s9
                  srl          ra, s5, ra
                  bltu         a4, s0, 604f
                  bgeu         zero, s2, 601f
595:              bgeu         t5, t0, 614f
                  blt          s4, t6, 615f
                  slli         s2, t4, 4
                  beq          a3, a3, 608f
                  add          t4, zero, s10
600:              bgeu         a1, t4, 602f
601:              addi         s4, t3, -1880
602:              bne          t1, a4, 619f
                  xor          a2, tp, s1
604:              lui          t1, 858190
                  sltu         t1, s9, t4
                  andi         gp, a7, -998
                  xor          s8, s8, s8
608:              nop
                  bne          gp, s7, 627f
                  xor          a5, s11, a6
                  slti         a2, t2, -1858
                  slti         s4, ra, 1163
                  slti         t4, a4, -694
614:              addi         a5, sp, 1799
615:              srli         a2, tp, 5
                  sltu         a2, s6, s2
                  ori          s5, t1, 1313
                  srai         tp, t6, 26
619:              bltu         s11, s9, 629f
                  sub          s2, t5, zero
                  sltiu        zero, sp, 210
                  sll          a1, s5, s2
                  slt          zero, s7, t3
                  bne          tp, t0, 635f
                  auipc        s8, 147607
                  add          tp, t3, s10
627:              srl          a0, t6, a4
                  slti         t0, gp, -1678
629:              ori          s10, s5, -1098
                  sra          t5, tp, s1
                  slli         gp, s9, 26
                  srai         s6, a7, 21
                  slti         s8, sp, 492
                  sltiu        s11, t0, -463
635:              bne          s2, s8, 651f
                  and          s9, t6, s10
                  blt          t4, a3, 651f
                  slt          t4, s2, s8
                  auipc        s4, 813830
                  xor          s10, a2, t6
                  auipc        tp, 209282
                  blt          s0, tp, 646f
                  slt          s6, s5, s8
                  sra          a2, s4, s3
                  nop
646:              sltiu        s5, a2, -1409
                  slli         s8, s6, 5
                  sltiu        a0, s1, -733
                  or           t2, gp, a5
                  bge          s9, s1, 661f
651:              blt          tp, t5, 656f
                  auipc        s11, 250673
                  bgeu         s9, a6, 670f
                  bne          sp, a2, 663f
                  auipc        ra, 954847
656:              auipc        t1, 1042599
                  and          a1, a4, s5
                  bgeu         t1, s4, 667f
                  xor          a3, t5, a5
                  sll          s6, a2, s0
661:              beq          s4, t0, 673f
                  sub          sp, zero, a4
663:              blt          s6, t6, 682f
                  beq          a3, s5, 666f
                  lui          s2, 964868
666:              bne          s9, s11, 685f
667:              sub          ra, t0, s9
                  bgeu         s8, s0, 680f
                  bne          t2, t2, 685f
670:              sub          t1, s4, t0
                  srai         t0, a2, 28
                  sll          a2, a5, s4
673:              and          t4, s1, s0
                  addi         s5, tp, -411
                  add          s8, t1, a4
                  bgeu         s10, a6, 687f
                  slli         s3, s5, 3
                  xori         t1, sp, -551
                  andi         t6, s4, -343
680:              sub          sp, s11, a2
                  bgeu         a7, s5, 687f
682:              slli         t0, t1, 13
                  slt          a5, t3, a6
                  bgeu         a4, a7, 691f
685:              sll          a0, gp, s11
                  beq          a0, t5, 694f
687:              auipc        s11, 359312
                  xor          t0, a3, a0
                  srli         s4, a0, 22
                  sltu         zero, a4, zero
691:              ori          a0, a4, 1587
                  slti         a3, t5, 1677
                  xori         gp, s4, -1556
694:              xor          a4, ra, a1
                  srai         t6, a1, 13
                  bne          t0, s9, 705f
                  slli         a7, s3, 26
                  addi         a6, t1, -132
                  beq          a7, s5, 710f
                  slli         t4, ra, 2
                  bgeu         s0, a2, 719f
                  bne          zero, s10, 719f
                  sll          t4, a2, a6
                  srl          a0, t5, t0
705:              slli         a0, s3, 31
                  andi         s2, t5, -1903
                  bge          a0, t1, 722f
                  auipc        s2, 703520
                  add          t2, t6, s4
710:              auipc        s2, 978781
                  sub          s2, s11, s11
                  add          t4, s3, t3
                  addi         s3, s11, -33
                  slli         s6, t6, 19
                  blt          a5, t3, 729f
                  srl          s10, a3, t1
                  bgeu         sp, s0, 726f
                  bgeu         a2, t1, 732f
719:              add          a7, sp, s1
                  bge          s4, s5, 724f
                  slli         t5, a4, 31
722:              sll          tp, s7, a1
                  srl          t2, a4, t0
724:              add          s11, a5, a3
                  lui          t2, 423096
726:              and          t6, tp, a5
                  bltu         a6, s11, 737f
                  ori          s9, a3, -784
729:              auipc        a0, 375792
                  lui          s6, 348044
                  bne          t1, s11, 742f
732:              or           a2, t2, t6
                  addi         s8, a3, -894
                  sltu         tp, t5, t4
                  xor          s5, s2, a1
                  andi         s9, s2, -1575
737:              srai         a6, s9, 17
                  sltu         s2, s1, a7
                  sra          t1, a7, a2
                  sra          s9, t2, t2
                  blt          s6, a6, 749f
742:              sltu         s4, s4, t6
                  srl          s9, a0, a1
                  slti         t4, t0, -1147
                  nop
                  add          a4, s3, s5
                  xori         s8, gp, 1217
                  sll          s6, s3, a3
749:              andi         sp, t4, 1888
                  srl          t5, s6, a4
                  xori         t5, t0, 763
                  andi         t5, s10, 22
                  addi         s6, s3, 200
                  bgeu         ra, s8, 759f
                  bltu         t1, a4, 764f
                  xori         a4, s11, 1299
                  slti         s5, ra, 300
                  bge          zero, s8, 770f
759:              bgeu         s6, s9, 769f
                  sra          t1, a2, a0
                  bne          s1, s0, 778f
                  bne          ra, sp, 779f
                  blt          t3, s11, 781f
764:              srli         a7, a3, 2
                  sub          a6, t4, sp
                  bge          a0, t1, 770f
                  slti         a5, a3, 316
                  xori         a6, a7, -1809
769:              addi         s9, a0, -836
770:              xori         gp, s3, 143
                  xor          t5, s4, t5
                  bltu         s6, a5, 776f
                  blt          s0, a2, 784f
                  blt          a2, a6, 782f
                  bge          s0, s9, 792f
776:              or           s3, sp, a4
                  xor          t0, t6, t5
778:              bgeu         a0, s5, 790f
779:              addi         t0, t2, 585
                  slt          zero, s5, t5
781:              nop
782:              nop
                  auipc        a3, 617259
784:              addi         t5, a3, -957
                  beq          a6, sp, 791f
                  sltiu        tp, a3, -1913
                  slti         a0, a0, 840
                  slti         a5, t3, -411
                  andi         s8, a6, 1941
790:              sll          gp, s11, t6
791:              sltiu        tp, s4, -1538
792:              xor          t5, t1, ra
                  and          gp, a7, t1
                  sra          s10, a5, tp
                  bne          s3, t6, 809f
                  srl          s3, t2, t0
                  nop
                  srai         t4, t5, 4
                  srl          zero, a6, s7
                  blt          t4, s9, 807f
                  lui          a5, 10343
                  lui          s8, 510136
                  slt          t1, t0, a1
                  xor          a2, s7, s7
                  nop
                  add          sp, sp, s1
807:              addi         ra, a7, 1136
                  lui          a1, 540910
809:              srli         t0, tp, 13
                  addi         s4, t5, 1071
                  sll          s3, t1, t6
                  auipc        ra, 970722
                  sra          s5, t2, s9
                  bne          t4, s9, 823f
                  sra          zero, a6, a3
                  add          s11, s7, a6
                  lui          tp, 459554
                  lui          s10, 772866
                  beq          t2, t0, 823f
                  slli         a4, s2, 30
                  bgeu         s5, t2, 832f
                  srai         s4, s11, 15
823:              srl          a7, a2, t2
                  lui          a4, 257278
                  addi         a4, t5, 547
                  srai         s2, t2, 29
                  sub          s6, zero, s1
                  and          s3, s6, t0
                  blt          s1, s8, 845f
                  and          gp, s3, a6
                  slt          s11, t2, a7
832:              slt          a7, a0, a0
                  sra          t4, a4, a5
                  xor          s10, gp, s5
                  srl          a7, s3, t2
                  srl          a4, sp, a0
                  and          s5, t6, s2
                  and          s10, s8, s0
                  bltu         t5, s4, 858f
                  slti         s3, s0, -1885
                  sll          a3, s2, s9
                  bge          s10, a3, 860f
                  slt          zero, t2, s8
                  addi         t4, ra, 1220
845:              nop
                  bne          s0, a3, 861f
                  lui          t6, 582736
                  bge          a6, s3, 850f
                  beq          a4, s9, 853f
850:              addi         s10, a2, 1971
                  xori         tp, tp, 1393
                  sra          t1, a3, s8
853:              srai         gp, s6, 16
                  bltu         t0, s1, 871f
                  sub          a6, a5, t4
                  addi         t2, a5, -1158
                  andi         s8, a6, 1042
858:              add          a0, s11, t3
                  bge          a5, s9, 869f
860:              slli         t4, t0, 23
861:              xori         s6, t6, -747
                  sll          s5, sp, ra
                  srai         s11, zero, 16
                  bge          s7, t2, 882f
                  slti         a3, t4, 567
                  bge          a1, a7, 883f
                  auipc        t2, 203337
                  ori          s7, s5, 1716
869:              ori          zero, a1, 1638
                  bltu         s4, a0, 879f
871:              slt          zero, s2, t4
                  sub          t6, zero, gp
                  nop
                  bltu         t5, a0, 884f
                  sll          a4, s1, a4
                  slti         t0, tp, -765
                  srl          a2, a6, tp
                  sub          s9, s10, t5
879:              blt          s8, t6, 893f
                  xori         a5, a4, 1831
                  srai         t4, t5, 13
882:              srl          sp, ra, a3
883:              and          a2, t5, sp
884:              andi         s7, s11, 1767
                  nop
                  ori          tp, a5, -957
                  bne          t6, a6, 899f
                  beq          s11, t2, 896f
                  slti         ra, a0, -38
                  bltu         s0, s4, 901f
                  andi         s11, s7, 100
                  sra          s5, a1, s8
893:              sub          t1, a1, t0
                  lui          t5, 151092
                  nop
896:              blt          s5, tp, 900f
                  sltiu        t6, a5, -809
                  sra          s3, s4, zero
899:              xori         s6, s10, -1231
900:              blt          a3, a5, 919f
901:              add          tp, t6, ra
                  ori          a5, t1, -1090
                  slt          s8, a5, t0
                  nop
                  xori         s9, s8, -2032
                  bge          t5, sp, 911f
                  sltiu        a5, sp, 1246
                  blt          a3, s1, 917f
                  sltu         ra, a1, s4
                  bltu         s11, a7, 914f
911:              bgeu         t6, s8, 921f
                  srai         s9, a4, 11
                  xor          s9, s8, a0
914:              srai         zero, a3, 7
                  sra          a5, t0, t1
                  xor          zero, a7, s3
917:              srai         s11, s11, 15
                  or           t1, s2, gp
919:              ori          s6, a5, 928
                  xor          a4, sp, s11
921:              srai         s10, s7, 3
                  lui          gp, 41391
                  bgeu         s6, t4, 935f
                  xori         t0, t3, 233
                  andi         s11, a1, 525
                  bltu         s5, s10, 944f
                  slti         sp, ra, 685
                  xori         s11, gp, 662
                  srli         a0, s0, 23
                  bgeu         a6, s3, 937f
                  andi         a7, a0, 184
                  xori         a2, s1, 277
                  addi         a6, t2, 686
                  bltu         sp, s6, 945f
935:              andi         gp, s8, -1295
                  sltiu        gp, s0, 1739
937:              and          a2, a3, s11
                  xor          gp, t5, zero
                  and          t1, s9, t4
                  srl          t4, a7, sp
                  xori         t0, ra, 1949
                  sll          a4, s4, tp
                  bltu         s6, tp, 962f
944:              nop
945:              srli         t6, s9, 1
                  andi         s11, s4, -1817
                  xori         t0, s10, 777
                  or           zero, s2, s0
                  and          s3, a6, a2
                  srli         a1, s0, 1
                  sltiu        a7, a2, 589
                  ori          tp, s11, 1570
                  sll          t5, a1, s3
                  andi         a6, s9, -1774
                  bge          s7, a3, 960f
                  srai         s11, s8, 11
                  lui          t0, 56559
                  lui          a3, 113718
                  bne          a6, s9, 976f
960:              beq          s8, s8, 969f
                  sra          a4, a5, a0
962:              sltu         s10, tp, s7
                  auipc        s5, 185791
                  srli         gp, a4, 25
                  srai         a5, a1, 26
                  ori          a7, s7, -561
                  sltu         t4, s1, a7
                  blt          gp, a1, 974f
969:              srli         t5, zero, 23
                  sltu         tp, s11, a6
                  addi         tp, t1, 1512
                  slt          t0, t6, a3
                  ori          a3, t2, 1937
974:              xor          t5, t3, s4
                  sll          a7, a6, t1
976:              sra          zero, a2, s8
                  xor          s9, a2, a3
                  sltiu        s8, a7, -47
                  slti         s6, ra, -1631
                  srai         zero, a3, 4
                  bltu         a5, s0, 989f
                  beq          a7, tp, 986f
                  srli         sp, a0, 21
                  xor          s6, ra, t1
                  or           s4, tp, tp
986:              sltiu        a2, gp, -1256
main_31:          jal          s5, 10f
0:                jal          ra, 16f
1:                jal          a7, 24f
2:                jal          ra, 18f
3:                jal          ra, 6f
4:                jal          ra, 7f
5:                jal          s4, 12f
6:                jal          ra, 19f
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          s3, 8b
11:               jal          a0, 17f
12:               jal          t5, 27f
13:               jal          gp, 26f
14:               jal          ra, 23f
15:               jal          t2, 9b
16:               jal          t1, 22f
17:               jal          ra, 5b
18:               jal          ra, 14b
19:               jal          a5, 1b
20:               jal          ra, 4b
21:               jal          ra, 25f
22:               jal          ra, 20b
23:               jal          ra, 13b
24:               jal          ra, 15b
25:               jal          ra, 11b
26:               jal          tp, 21b
27:               andi         gp, s8, -123
                  sll          a0, t3, s10
                  and          ra, s1, sp
989:              addi         tp, zero, 186
                  srai         t0, sp, 7
                  xori         s2, gp, 340
                  beq          s4, a5, 1011f
                  srli         t6, a0, 18
                  and          a6, a2, a1
                  addi         a1, t2, -491
                  or           a1, s11, sp
                  sll          t4, a7, a2
                  sltu         s6, t2, s9
                  sltiu        s9, s8, -494
                  bne          a2, a1, 1014f
                  srai         gp, s4, 2
                  srli         a1, a1, 4
                  bgeu         a2, s4, 1020f
                  sll          sp, tp, s2
                  blt          s1, a1, 1016f
                  bge          t0, s3, 1008f
                  srl          a7, s1, s2
1008:             srai         ra, s7, 28
                  slt          t0, s10, a6
                  bltu         s6, s11, 1021f
1011:             slti         s6, a7, -1104
                  sub          s2, a1, ra
                  bgeu         t3, s2, 1025f
1014:             bgeu         a1, gp, 1032f
                  and          t2, s7, s3
1016:             slli         s6, s3, 19
                  auipc        gp, 312799
                  sra          zero, t1, s8
                  srai         a3, a1, 27
1020:             auipc        a4, 1047180
1021:             lui          gp, 892026
                  andi         s8, s4, 1592
                  srl          s4, ra, ra
                  bge          t1, s5, 1028f
1025:             andi         t5, sp, 1867
                  srai         s9, a6, 21
                  slti         t2, t1, 1253
1028:             andi         a0, s11, 1079
                  sll          ra, t0, s11
                  nop
                  sra          s10, a3, s11
1032:             add          s5, s0, a5
                  sra          ra, gp, t6
                  nop
                  slt          s2, s10, s0
                  srl          a0, s0, s6
                  srai         a1, s2, 16
                  bne          a4, s9, 1047f
                  bgeu         t1, gp, 1048f
                  xor          t6, gp, t0
                  slti         zero, a2, 1331
                  slti         a1, s3, -611
                  or           s11, t3, s0
                  or           s6, t6, s6
                  sub          gp, s5, s0
                  xor          sp, s2, t2
1047:             sra          s4, s4, s0
1048:             auipc        s4, 41923
                  srai         ra, zero, 10
                  lui          t1, 405790
                  bltu         s11, s4, 1059f
                  and          t2, t5, t2
                  srli         a5, s9, 7
                  bltu         s8, ra, 1069f
                  sltiu        s7, zero, -824
                  add          sp, t1, sp
                  or           sp, t6, s5
                  addi         a4, s5, -335
1059:             sltiu        s10, t6, 1036
                  beq          t0, s0, 1076f
                  or           s11, s8, tp
                  and          t4, tp, s10
                  slt          gp, s1, s7
                  sltu         a6, a5, a7
                  blt          tp, t5, 1082f
                  and          a1, a0, t1
                  sltu         s8, a3, a7
                  beq          a2, t3, 1078f
1069:             sub          sp, s9, a3
                  sub          s6, t3, ra
                  bltu         t1, s7, 1085f
                  srli         s11, a3, 4
                  bgeu         s1, a4, 1077f
                  ori          zero, s0, 187
                  sll          s8, a1, t1
1076:             bne          s11, a4, 1080f
1077:             srli         t1, ra, 26
1078:             andi         s7, ra, -22
                  xori         sp, ra, 1343
1080:             bgeu         s6, s10, 1097f
                  bne          a6, s8, 1097f
1082:             slt          ra, a3, t1
                  bgeu         t4, ra, 1091f
                  beq          s9, s0, 1093f
1085:             slt          t6, tp, zero
                  sll          s8, a1, t2
                  bge          gp, s5, 1097f
                  sltiu        t1, t4, 904
                  lui          t6, 59429
                  bltu         s10, tp, 1099f
1091:             bge          s1, ra, 1093f
                  sll          s6, ra, s5
1093:             slt          s7, a3, s9
                  blt          a7, s11, 1113f
                  beq          gp, t3, 1100f
                  sltiu        s8, a3, -14
1097:             slli         s2, s5, 23
                  bltu         t2, a7, 1110f
1099:             srai         s2, gp, 23
1100:             andi         a5, t2, 1849
                  lui          zero, 237030
                  add          s10, a1, s3
                  sll          sp, a5, s5
                  beq          s2, s10, 1113f
                  beq          s1, s10, 1119f
                  slt          t6, t4, s2
                  nop
                  srai         t4, t6, 2
                  xor          a2, a1, a2
1110:             sra          a7, s4, t4
                  and          a3, a0, ra
                  sra          a3, s5, t2
1113:             bge          tp, t5, 1130f
                  ori          s8, a0, 40
                  xor          zero, a7, a4
                  and          s10, s9, s9
                  slli         s5, a4, 29
                  srl          s3, a5, s0
1119:             addi         a7, s9, 1480
                  ori          a3, a1, -1288
                  ori          t4, a1, 820
                  bgeu         a0, t1, 1132f
                  slti         t0, s8, -1840
                  sub          s4, t5, s11
                  srli         t6, t3, 10
                  blt          s2, a0, 1137f
                  sra          ra, s4, sp
                  xori         a4, a2, 1691
                  sll          t2, t5, s4
1130:             and          s11, t1, s7
                  sltiu        t0, s7, -608
1132:             bne          a6, s4, 1144f
                  beq          ra, s8, 1151f
                  and          t0, sp, s8
                  add          a3, s7, s6
                  and          t5, s4, s11
1137:             bgeu         s3, s6, 1145f
                  nop
                  beq          t0, t1, 1153f
                  sll          s11, s1, a3
                  srli         s2, t5, 21
                  bne          a1, s8, 1153f
                  srli         a4, sp, 9
1144:             andi         s3, s10, -1386
1145:             blt          s0, s11, 1162f
                  nop
                  srai         s2, s6, 30
                  srl          a1, a0, s8
                  nop
                  nop
1151:             bgeu         a2, t6, 1158f
                  slt          s3, t5, a4
1153:             beq          s1, t5, 1159f
                  ori          a5, a7, 1810
                  xori         s4, a6, 698
                  add          s10, t5, zero
                  bgeu         gp, zero, 1172f
1158:             srl          t4, t5, t5
1159:             bgeu         s8, sp, 1178f
                  bltu         t2, s7, 1164f
                  addi         a1, t6, 405
1162:             lui          s4, 602400
                  or           s2, s6, a3
1164:             add          t2, a5, s0
                  sra          t1, a0, t0
                  bne          t6, tp, 1177f
                  slti         t4, s7, -127
                  sltu         a2, s3, s5
                  ori          t4, t4, -124
                  slti         a5, s1, 930
                  andi         t5, a3, 1301
1172:             or           a1, a3, t0
                  beq          t5, tp, 1191f
                  srli         s5, t6, 22
                  ori          a2, ra, -813
                  srai         a2, zero, 26
1177:             blt          t0, zero, 1181f
1178:             sltu         s6, s5, s1
                  slli         a6, s9, 11
                  bne          t6, sp, 1191f
1181:             bge          t6, zero, 1196f
                  or           a5, s4, sp
                  beq          a5, a4, 1189f
                  sub          ra, a1, s3
                  slli         s8, s6, 17
                  sltu         a5, a3, a0
                  beq          s10, s5, 1198f
                  slti         a0, t2, -283
1189:             addi         s10, a0, 1631
                  beq          t2, t1, 1201f
1191:             slli         t1, s7, 8
                  xori         s11, s4, -154
                  or           a5, t5, t5
                  ori          s3, a7, -313
                  srl          s10, t4, s1
1196:             slli         t5, t2, 12
                  andi         tp, t6, -708
1198:             sra          s3, t0, s0
                  lui          s9, 1030582
                  sra          zero, a3, sp
1201:             addi         zero, zero, 626
                  beq          s6, t3, 1220f
                  addi         a7, t6, -605
                  blt          s7, s6, 1222f
                  xori         a5, s9, 570
                  beq          s0, s6, 1220f
                  addi         t6, s7, 131
                  nop
                  and          t1, a7, s5
                  sll          zero, gp, t3
                  add          s2, s1, zero
                  srl          s8, s4, s10
                  addi         t2, a2, -1662
                  add          a2, a1, sp
                  and          t4, t4, a1
                  sub          t0, a1, a5
                  andi         a7, s2, 1108
                  xori         a1, s4, -170
                  lui          a4, 655793
1220:             srli         ra, t4, 11
                  sltu         a2, t2, t3
1222:             bgeu         s7, s6, 1241f
                  or           a3, t4, a5
                  sltiu        s10, a6, 1709
                  bltu         s0, t1, 1239f
                  nop
                  srl          t0, a7, s8
                  or           a1, t5, s5
                  sltiu        tp, t5, -832
                  slti         s7, s3, 1470
                  sra          sp, a4, t0
                  sub          sp, t1, t2
                  srl          t5, tp, t4
                  srli         a5, zero, 7
                  srai         s3, zero, 5
                  addi         t0, a1, 1034
                  sll          ra, s11, s4
                  andi         a4, s4, -965
1239:             xori         t4, s2, 791
                  and          a6, s5, t0
1241:             lui          s2, 245255
                  sltiu        a2, sp, -239
                  lui          t4, 459981
                  auipc        a5, 641024
                  srai         a7, sp, 5
                  slti         gp, s9, 310
                  slli         t4, a3, 7
                  add          s3, s0, sp
                  bge          s1, t3, 1268f
                  slti         s11, a3, -1811
                  ori          ra, tp, -1140
                  xori         s3, s4, 1513
                  sltiu        a7, s3, -1288
                  and          t0, a3, s7
                  bgeu         s4, tp, 1272f
                  bltu         s11, s6, 1260f
                  sra          t2, a7, a2
                  beq          a2, s5, 1262f
                  beq          s2, t6, 1268f
1260:             auipc        a3, 809788
                  bltu         gp, t6, 1270f
1262:             srl          s2, t6, s9
                  bne          t5, s9, 1265f
                  bge          sp, a0, 1272f
1265:             sll          s5, zero, s7
                  andi         t0, t0, 1671
                  sra          a1, s10, a3
1268:             sltiu        t0, s2, -788
                  bne          gp, s9, 1285f
1270:             lui          s6, 520935
                  or           tp, s8, a1
1272:             auipc        a3, 1014861
                  nop
                  slli         a2, t0, 3
                  xori         s9, s2, 862
                  or           t4, s0, s10
                  slli         s9, sp, 2
                  andi         s10, sp, -31
                  srli         s6, s0, 21
                  xor          a5, s9, s7
                  sub          t5, t1, a4
                  sll          ra, t2, t1
                  slti         s7, a7, 1287
                  bge          t6, s11, 1301f
1285:             nop
                  sltiu        sp, s9, 101
                  xori         a4, s7, 1032
                  slli         a2, s5, 21
                  beq          s7, s10, 1301f
                  slt          s9, s3, s10
                  bgeu         a1, s5, 1303f
                  bne          ra, s7, 1297f
                  sub          s6, t1, s10
                  auipc        t6, 358146
                  ori          t4, s0, 1
                  auipc        sp, 610880
1297:             nop
                  slti         s6, gp, -919
                  bgeu         a3, s5, 1309f
                  slli         s4, s7, 2
main_49:          jal          s5, 8f
0:                jal          ra, 6f
1:                jal          ra, 2f
2:                jal          s2, 0b
3:                jal          t1, 7f
4:                jal          ra, 5f
5:                jal          ra, 1b
6:                jal          ra, 9f
7:                jal          ra, 4b
8:                jal          t2, 3b
9:                jal          ra, 10f
10:               srai         s8, a7, 7
1301:             addi         s2, s8, 1894
                  blt          s2, a1, 1309f
1303:             xori         a7, s11, -1654
                  srl          s10, s11, s11
                  xor          a0, a5, s11
                  xor          t2, s8, a3
                  xor          t4, s9, s3
                  bge          s10, a7, 1317f
1309:             add          s5, s11, s1
                  ori          s3, tp, -1263
                  sra          t0, s8, s4
                  blt          a5, sp, 1320f
                  slli         a3, a3, 18
                  ori          s8, s4, -1845
                  or           s9, tp, s5
                  bge          t3, tp, 1326f
1317:             slti         gp, s9, 911
                  add          a7, a5, a1
                  xori         a0, s10, 280
1320:             nop
                  beq          s3, a1, 1338f
                  blt          t6, s11, 1331f
                  ori          s6, s2, -323
                  sltu         a4, s1, s0
                  srai         s3, t4, 12
1326:             srli         a4, tp, 28
                  andi         a6, sp, 1276
                  andi         s11, t3, 1242
                  slt          a0, ra, s4
                  beq          a3, s1, 1344f
1331:             bltu         a3, s2, 1333f
                  bne          a5, s4, 1337f
1333:             bltu         s5, t5, 1340f
                  sltiu        sp, ra, 584
                  slli         t5, t5, 15
                  or           a5, s1, s11
1337:             srai         s4, a2, 15
1338:             slti         t5, s4, 57
                  sltiu        s2, s11, 1853
1340:             andi         a4, s10, 1344
                  blt          a2, tp, 1358f
                  and          a1, a3, s10
                  blt          s9, a2, 1360f
1344:             auipc        t4, 860048
                  beq          s9, t4, 1364f
                  sltiu        t5, a2, 1246
                  sll          zero, s0, s6
                  bge          t0, a1, 1364f
                  sltu         a1, s1, t2
                  sub          sp, s2, a0
                  bge          t6, a1, 1360f
                  sra          sp, zero, s2
                  xor          a0, s5, a4
                  sltiu        ra, t6, -917
                  ori          s6, s4, 387
                  ori          s3, a6, 1893
                  slt          s6, a5, t4
1358:             slt          s7, t1, a0
                  bltu         tp, t3, 1371f
1360:             slti         s4, s3, -596
                  sll          t6, t4, ra
                  and          s9, s8, s1
                  auipc        s4, 280295
1364:             beq          s9, a1, 1372f
                  xori         ra, t4, -1360
                  srl          a3, ra, a1
                  sltiu        s10, a3, -659
                  bgeu         a0, zero, 1379f
                  sltu         t6, a3, t2
                  srl          t5, t4, zero
1371:             srai         t5, tp, 0
1372:             or           tp, a5, s5
                  beq          s9, s3, 1384f
                  slt          a3, gp, ra
                  nop
                  addi         s6, s10, -18
                  sltu         t1, a1, a7
                  sra          tp, t5, tp
1379:             add          a5, a6, s11
                  auipc        a7, 422179
                  addi         s7, t5, -560
                  lui          sp, 129419
                  bne          ra, s8, 1393f
1384:             or           a1, t0, t2
                  srai         s10, a6, 28
                  andi         a6, a4, -1788
                  slli         a1, s8, 21
                  slt          s9, t0, ra
                  slt          zero, t2, a3
                  and          sp, s10, s5
                  and          s11, t5, s6
                  sltu         a3, s8, a7
                  la           ra, sub_1
                  addi         ra, ra, 424
                  xori         a3, t3, -310
                  sll          t5, a3, t4
                  and          t1, a2, a6
                  beq          s7, a7, main_j1 #branch to jump instr
                  sltiu        s7, t5, -2030
main_j1:          jalr         s5, ra, -424 #jump main -> sub_1
                  slt          t2, a6, t1
                  lui          a3, 380572
                  beq          t5, s3, 1395f
                  srl          s6, zero, zero
1393:             ori          t0, s4, 473
                  nop
1395:             addi         a5, s1, 44
                  andi         a0, s9, -861
                  slt          sp, t2, s0
                  blt          zero, a5, 1413f
                  beq          s5, s2, 1408f
                  sub          s11, s5, s9
                  slli         s4, t5, 25
                  sltu         a3, a7, s8
                  sra          t5, tp, a5
                  slti         a3, a5, 1541
                  sll          zero, s11, s1
                  and          gp, a2, ra
                  add          t4, s2, gp
1408:             slt          t4, ra, s0
                  bgeu         s4, a6, 1420f
                  ori          a5, tp, 323
                  and          s5, a5, s3
                  xori         sp, sp, 1304
1413:             sltu         t1, a2, a2
                  beq          ra, s5, 1428f
                  auipc        s3, 854477
                  slt          s3, s11, s8
                  sra          t4, s6, a4
                  slt          a4, s7, a1
                  or           t0, gp, t6
1420:             or           a5, s9, s11
                  sll          t6, s10, a0
                  slti         s8, sp, -391
                  srai         s6, gp, 17
                  srl          s9, t2, tp
                  auipc        s5, 248639
                  srli         s9, zero, 5
                  sub          tp, s9, s9
1428:             blt          zero, a2, 1446f
                  bne          s8, s10, 1435f
                  auipc        t5, 652277
                  blt          s10, t5, 1448f
                  auipc        a2, 624632
                  bgeu         s5, tp, 1445f
                  bgeu         s3, t2, 1452f
1435:             blt          s6, ra, 1439f
                  xori         ra, a7, 1752
                  sltu         t5, s10, tp
                  xori         s3, a2, -320
1439:             sll          a2, t6, s8
                  lui          a5, 761165
                  xori         a5, s0, 547
                  sll          ra, ra, ra
                  bgeu         a1, s9, 1447f
                  ori          tp, s7, 1355
1445:             add          t2, a5, s4
1446:             beq          s1, t2, 1454f
1447:             beq          t6, s6, 1466f
1448:             slt          t6, a5, a5
                  bne          t6, s5, 1459f
                  srl          sp, s2, a5
                  lui          s2, 335648
1452:             srl          s4, s4, a5
                  sra          s11, s11, s9
1454:             slti         s2, a7, -1064
                  or           t5, a4, t1
                  sltiu        s9, s6, -273
                  xor          s11, s4, s0
                  bgeu         sp, t0, 1476f
1459:             srli         sp, s9, 22
                  srli         s4, s8, 3
                  sltu         t0, a1, t5
                  nop
                  xori         tp, ra, -1959
                  andi         s7, s8, -670
                  and          a6, a2, s4
1466:             sltu         gp, s0, t4
                  sll          gp, s2, t1
                  andi         tp, s8, -1994
                  srli         t5, t1, 30
                  xor          t0, gp, t1
                  sltu         a6, gp, s0
                  bge          a2, s9, 1476f
                  srl          t1, s5, t4
                  sub          a7, t2, sp
                  sltu         a0, s0, t5
1476:             sltiu        s3, tp, 8
                  and          t2, a1, s9
                  add          a3, zero, t5
                  sub          zero, a2, s8
                  nop
                  sub          a4, t4, s5
                  bltu         a2, t3, 1488f
                  sll          a4, t1, s9
                  srli         ra, a1, 10
                  slti         ra, t3, 880
                  blt          tp, t0, 1495f
                  addi         gp, s3, -171
1488:             srai         t2, t1, 1
                  srl          s11, t4, s6
                  bgeu         a2, s0, 1495f
                  srli         a4, s7, 12
                  slt          a7, s11, tp
                  beq          s0, a4, 1501f
                  beq          s4, a5, 1505f
1495:             bne          a0, tp, 1497f
                  and          s8, s0, s0
1497:             lui          s3, 461968
                  nop
                  nop
                  sra          s3, gp, a1
1501:             auipc        s9, 769694
                  auipc        a4, 28787
                  slli         t1, t1, 27
                  bgeu         a4, a1, 1521f
1505:             ori          t2, a4, -959
main_26:          jal          s5, 4f
0:                jal          s4, 9f
1:                jal          a6, 14f
2:                jal          ra, 15f
3:                jal          s3, 8f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          ra, 1b
7:                jal          ra, 2b
8:                jal          gp, 6b
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          s6, 3b
12:               jal          ra, 17f
13:               jal          s4, 11b
14:               jal          a4, 16f
15:               jal          tp, 13b
16:               jal          ra, 5b
17:               sll          t5, gp, s2
                  bge          s7, s1, 1516f
                  auipc        a7, 194424
                  and          a6, s0, t4
                  srl          s4, a1, s8
                  blt          a4, s5, 1524f
                  andi         s3, sp, 498
                  sltiu        t4, t5, -823
                  beq          a4, a1, 1524f
                  slt          a7, a0, a5
                  srli         t5, a0, 28
1516:             xori         s6, t6, 1344
                  add          zero, s9, s5
                  bne          s3, tp, 1532f
                  slli         s10, s0, 4
                  lui          s7, 626492
1521:             andi         s4, t5, -716
                  addi         zero, s3, -1805
                  bge          a2, t3, 1539f
1524:             slti         a2, s10, -1009
                  addi         s7, a6, -1812
                  slti         a5, s3, -1858
                  srai         s11, sp, 26
                  bltu         s5, a4, 1536f
                  xor          t4, s11, t6
                  auipc        a5, 853960
                  srli         ra, sp, 7
1532:             bltu         ra, s5, 1551f
                  slli         s10, a3, 13
                  sll          a1, a1, s9
                  slti         s5, t5, 1714
1536:             srli         s5, a4, 6
                  nop
                  bgeu         s3, tp, 1557f
1539:             and          a1, a7, a4
                  srli         t1, a6, 13
                  bge          tp, s5, 1558f
                  srai         t1, sp, 7
                  addi         gp, a2, -134
                  lui          t5, 123281
                  and          s11, a0, s0
                  sll          a7, zero, a3
                  sra          t2, s0, a1
                  sra          s3, t3, s7
                  andi         s4, a0, -1506
                  ori          zero, t0, -1758
1551:             lui          t4, 781018
                  sub          a1, t2, t2
                  addi         s10, a5, -1308
                  nop
                  andi         a3, t2, 189
                  lui          a1, 114449
1557:             nop
1558:             beq          t6, a3, 1576f
                  slti         s10, tp, 788
                  beq          a0, t2, 1577f
                  slli         t0, t0, 18
                  sub          a1, tp, s4
                  auipc        sp, 542385
                  and          s3, a0, s7
                  xor          s9, t1, t6
                  bgeu         a6, a0, 1578f
                  auipc        a1, 477275
                  blt          s7, t5, 1578f
                  bne          a4, s0, 1576f
                  bge          gp, s8, 1585f
                  blt          a1, zero, 1575f
                  lui          s4, 250858
                  bne          a6, a3, 1584f
                  lui          a6, 911353
1575:             sra          a2, a1, t2
1576:             ori          a5, t0, 1684
1577:             ori          t2, s8, -1095
1578:             srl          gp, t1, a2
                  ori          sp, s11, -204
                  srai         tp, a5, 27
                  andi         t6, s9, -624
                  blt          s5, s4, 1594f
                  andi         a4, zero, 1958
1584:             slli         s9, a5, 10
1585:             beq          s10, s3, 1594f
                  bge          tp, t2, 1590f
                  srl          gp, a5, s0
                  lui          a3, 279778
                  blt          tp, t4, 1598f
1590:             slt          t4, s7, s4
                  sra          s9, a2, a7
                  sub          s7, s11, s9
                  beq          sp, a5, 1610f
1594:             srli         tp, s1, 27
                  sltu         s10, a6, s10
                  bgeu         s6, zero, 1615f
                  add          ra, ra, a5
1598:             sltiu        s10, s0, -187
                  srli         s3, s2, 6
                  beq          s4, a1, 1611f
                  xori         s8, s3, 247
                  sltiu        tp, t4, 1843
                  blt          t2, t6, 1613f
                  and          s7, t1, t1
                  nop
                  sra          s2, t2, a7
                  sltu         ra, t0, gp
                  ori          t2, s0, -1854
                  sub          s2, gp, s2
1610:             srl          s7, s10, sp
1611:             ori          zero, s2, -1606
                  or           s2, a6, s3
1613:             ori          t1, a1, -44
                  xor          s3, s2, a7
1615:             sub          s10, a4, s10
                  bltu         a6, s5, 1628f
                  sll          a0, s11, t6
                  xori         a4, gp, 1880
                  ori          t0, t4, 1323
                  srl          t2, a6, a2
                  andi         t2, a5, 1319
                  and          a4, a3, a0
                  or           t2, zero, t4
                  sltu         a7, a7, t4
                  bgeu         s10, s3, 1634f
                  add          a3, t2, t1
                  xor          t5, s2, s0
1628:             xor          sp, a7, s3
                  xori         a6, t2, 1945
                  add          zero, a2, s11
                  lui          a0, 924636
                  and          s7, ra, a4
                  and          ra, t4, s3
1634:             sltu         a4, a4, gp
                  slti         t1, s3, -536
                  xori         a0, s7, -1013
                  and          a7, s9, a7
                  slt          a2, t4, tp
                  bltu         t3, t6, 1656f
                  srli         t4, a2, 18
                  sra          zero, t6, s8
                  lui          gp, 544067
                  slti         tp, s8, -1839
                  xor          t5, s8, gp
                  sll          a5, s6, t6
                  lui          s10, 983556
                  sll          s7, t0, s7
                  bne          t5, a4, 1657f
                  beq          s3, a6, 1667f
                  ori          t5, s3, 415
                  beq          s8, t1, 1661f
                  bgeu         s11, s11, 1656f
                  auipc        a2, 690863
                  and          tp, s0, a0
                  srli         t2, a7, 27
1656:             and          a2, s9, t3
1657:             bgeu         a3, s11, 1674f
                  sltiu        s9, t1, -1495
                  nop
                  ori          s5, tp, 98
1661:             ori          zero, tp, -1572
                  bgeu         sp, s0, 1666f
                  bltu         t4, t6, 1677f
                  blt          ra, s8, 1670f
                  or           t1, s5, a5
1666:             lui          a6, 792785
1667:             sra          s4, t3, s1
                  sltu         s8, a5, s2
                  xori         a6, ra, -1114
1670:             bne          s4, t2, 1679f
                  srli         s8, t1, 26
                  bne          zero, a1, 1683f
                  sltiu        s4, s6, -622
1674:             srli         s5, a7, 30
                  xor          a5, t0, s0
                  slti         s4, t3, 645
1677:             ori          tp, s10, 1090
                  andi         s11, s10, 1789
main_27:          jal          s5, 24f
0:                jal          t1, 11f
1:                jal          s4, 18f
2:                jal          ra, 19f
3:                jal          gp, 28f
4:                jal          gp, 9f
5:                jal          s8, 3b
6:                jal          gp, 1b
7:                jal          ra, 25f
8:                jal          ra, 21f
9:                jal          ra, 27f
10:               jal          ra, 20f
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          ra, 23f
14:               jal          ra, 10b
15:               jal          t1, 4b
16:               jal          ra, 14b
17:               jal          t1, 7b
18:               jal          s5, 8b
19:               jal          t1, 22f
20:               jal          t1, 2b
21:               jal          ra, 13b
22:               jal          t1, 17b
23:               jal          s9, 16b
24:               jal          ra, 15b
25:               jal          t1, 0b
26:               jal          gp, 12b
27:               jal          a1, 26b
28:               auipc        t4, 135476
1679:             addi         s3, tp, -1356
                  sltiu        s4, t4, -1994
                  sra          s6, s2, s10
                  nop
1683:             add          s8, s0, tp
                  or           a1, a0, a2
                  sll          s5, sp, s7
                  xori         a5, s7, 1012
                  bne          a7, t2, 1698f
                  beq          t4, tp, 1696f
                  auipc        gp, 834912
                  xori         s7, s7, 1218
                  sll          s4, a1, t3
                  bltu         s7, s6, 1696f
                  bltu         s7, a2, 1708f
                  add          a2, a0, a3
                  bge          s10, t3, 1702f
1696:             sltu         s4, s6, zero
                  sub          s11, s5, s11
1698:             sra          t2, s10, zero
                  xor          s2, a7, t3
                  srai         s10, a1, 1
                  xori         ra, t2, 1930
1702:             addi         a0, ra, -965
                  bltu         a5, t3, 1721f
                  bge          a0, s11, 1716f
                  sll          a3, t3, t2
                  blt          s6, s5, 1708f
                  add          a6, s10, s10
1708:             ori          gp, s2, 904
                  lui          a7, 663854
                  andi         a7, s6, -1717
                  beq          a4, t2, 1716f
                  ori          tp, a6, 1727
                  or           a6, s4, t3
                  ori          s6, a7, 34
                  xor          t6, gp, t1
1716:             ori          s9, t4, -1810
                  sll          t2, s7, a2
                  ori          t5, s0, -1700
                  srl          a0, sp, a2
                  sltiu        zero, a7, 883
1721:             srl          sp, s2, s11
                  sll          sp, a5, s9
                  bne          zero, a3, 1739f
                  beq          a6, a4, 1743f
                  and          t2, s7, a6
                  or           t0, zero, s6
                  bne          s1, s6, 1735f
                  and          t1, s7, a6
                  slti         s10, a6, -1325
                  srli         a2, s10, 13
                  xor          a5, t2, s4
                  srl          s10, s0, s4
                  sub          s9, s6, s1
                  sll          s10, t0, tp
1735:             sltiu        a2, gp, 323
                  slti         t5, s11, 667
                  sll          gp, ra, a6
                  andi         t4, s6, 238
1739:             sltu         zero, s11, t1
                  slti         s3, tp, -940
                  blt          tp, t4, 1755f
                  bne          a7, zero, 1760f
1743:             sub          a4, a3, s2
                  beq          a1, a5, 1760f
                  srli         a2, t1, 13
                  beq          a7, a1, 1763f
                  bge          a3, gp, 1754f
                  xor          a7, a4, t3
                  slt          a5, s3, t5
                  blt          s2, s10, 1761f
                  sltu         a1, sp, s6
                  srl          sp, s8, s0
                  slli         t5, s9, 17
1754:             and          gp, s7, s6
1755:             sub          t4, a6, s5
                  slt          s6, s3, s0
                  xor          a2, a0, a0
                  sltu         a4, s8, t5
                  and          s3, a7, t2
1760:             sltu         s3, gp, sp
1761:             bgeu         s6, t1, 1772f
                  blt          a6, t6, 1779f
main_8:           jal          s5, 5f
0:                jal          tp, 1f
1:                jal          ra, 11f
2:                jal          t1, 14f
3:                jal          s2, 7f
4:                jal          ra, 6f
5:                jal          ra, 13f
6:                jal          ra, 3b
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          s6, 10f
10:               jal          t1, 8b
11:               jal          ra, 12f
12:               jal          a6, 2b
13:               jal          ra, 9b
14:               xori         t5, s6, 719
1763:             slt          s7, a1, s1
                  xor          a3, s0, s4
                  sltu         sp, a2, s3
                  slt          a6, sp, s0
                  xor          s10, s0, tp
                  srai         s8, a0, 18
                  andi         t0, t3, -427
                  bgeu         gp, s7, 1779f
                  slli         tp, a5, 12
1772:             slt          s3, s1, a0
                  xor          a7, a6, a3
                  or           s9, s11, t2
                  ori          s7, a3, 187
                  bgeu         a1, s1, 1780f
                  blt          tp, s3, 1779f
                  ori          a4, ra, 1102
1779:             sltu         s4, t2, ra
1780:             srl          sp, s4, s3
                  bge          zero, s10, 1791f
                  xor          t6, a7, t6
                  slli         s8, s0, 25
                  slli         a0, s4, 11
                  srl          s9, s5, a1
                  bgeu         t4, ra, 1795f
                  slt          t1, a4, a3
                  nop
                  slti         t0, a4, 1723
                  sll          a0, s3, s1
1791:             nop
                  sltiu        a5, s0, 778
                  nop
                  sll          t1, a3, s5
1795:             srai         s3, t6, 15
                  auipc        sp, 600387
                  auipc        a5, 438845
                  sltiu        s9, s5, -1921
                  and          t0, a2, s5
                  auipc        t4, 914278
                  xori         s8, a3, 698
                  sltu         t0, s5, s11
                  or           s2, t4, a3
                  srl          t2, s1, s1
                  auipc        a0, 481513
                  xori         a3, s5, 1598
                  ori          t0, a6, 491
                  sll          zero, s3, s2
                  sll          a7, s10, a2
                  slt          t4, s0, t3
                  and          s11, s8, a0
                  la           a4, sub_1
                  slti         a2, zero, 314
                  addi         a4, a4, 906
                  sll          ra, s8, t1
                  bge          s6, a6, main_j2 #branch to jump instr
                  slli         s9, t5, 26
                  auipc        a7, 719686
main_j2:          jalr         s5, a4, -905 #jump main -> sub_1
                  add          t0, tp, t2
                  slt          tp, a6, s4
                  slti         t4, s4, -1818
                  xori         a4, tp, -25
                  add          s4, s4, s8
                  srli         a3, s7, 22
                  bltu         gp, ra, 1818f
                  andi         t0, a4, 1657
                  sub          a5, s9, a7
                  bge          s4, a7, 1827f
1818:             slt          a0, t0, s3
                  andi         s7, a6, -815
                  sub          a5, tp, t0
                  nop
                  srli         s3, s6, 13
                  srli         s9, zero, 6
                  srl          s10, tp, s1
                  slt          s2, s7, zero
                  auipc        s2, 4095
1827:             srai         a5, a5, 3
                  add          s5, t2, s10
                  slti         s3, s7, 1947
                  auipc        t4, 155032
                  sll          zero, s8, t1
                  and          s4, t6, a6
                  bltu         a3, s5, 1845f
                  srai         tp, sp, 11
                  andi         s11, t1, 1778
                  addi         s9, tp, -963
                  add          tp, tp, a7
                  ori          a3, s9, 497
                  blt          sp, t6, 1858f
                  xori         s2, s9, 1929
                  sltu         t2, t6, a6
                  add          s3, t2, a0
                  sra          a3, s7, t1
                  add          s11, t3, t0
1845:             sub          s3, s9, t3
                  bne          a3, a6, 1864f
                  bltu         s1, s9, 1861f
                  auipc        gp, 425972
                  bne          t5, t3, 1855f
                  bge          a7, s10, 1854f
                  sltiu        a4, t6, -704
                  blt          ra, t4, 1871f
                  bltu         s5, sp, 1861f
1854:             bgeu         s6, t0, 1871f
1855:             bltu         ra, s11, 1870f
                  blt          s2, s4, 1865f
                  or           s7, s4, a1
1858:             auipc        s11, 1017833
                  bltu         s4, s10, 1873f
                  slli         t6, ra, 3
1861:             nop
                  ori          t2, a5, 338
                  add          ra, s10, gp
1864:             sub          a7, zero, s2
1865:             bne          t4, a0, 1877f
                  slt          a5, s10, s3
                  srl          s9, s7, s5
                  sra          s11, s1, s6
                  sub          s10, t0, t6
1870:             auipc        t0, 856474
1871:             lui          t2, 640999
                  ori          a2, a1, 779
1873:             sll          a1, a0, a2
                  bne          a2, s3, 1879f
                  sra          gp, s4, a7
                  or           s5, tp, a3
1877:             and          a1, a7, s9
                  bne          tp, s5, 1886f
1879:             sltu         s5, t6, s5
                  addi         t6, s1, 1802
                  sub          s4, s1, gp
                  bge          a5, t2, 1893f
                  slli         s8, s10, 9
                  bge          a6, t3, 1902f
                  sltu         a1, t2, t6
1886:             srai         a7, t4, 0
                  andi         s4, a5, 626
                  sltu         a6, s11, a7
                  bge          a2, a1, 1891f
                  sub          a0, t2, a7
1891:             srai         t6, a4, 15
                  and          t0, a5, s5
1893:             ori          s5, s5, -246
                  slt          sp, t5, t4
                  sub          a2, gp, zero
                  slt          s8, s7, s3
                  andi         zero, t1, 66
                  ori          s2, a6, -188
                  ori          s11, t4, 1410
                  nop
                  sub          t4, t4, a4
1902:             bge          s9, s3, 1906f
                  sub          s7, s6, a7
                  ori          sp, a4, -711
                  add          s9, a6, s0
1906:             ori          s6, s2, -1992
                  sra          s6, a3, t1
                  bgeu         s7, ra, 1922f
                  beq          s3, a2, 1921f
                  sra          s10, s1, s1
                  and          s4, zero, s5
                  nop
                  auipc        t5, 106856
                  srl          s10, zero, a7
                  addi         a1, s8, 678
                  or           gp, zero, sp
                  beq          t4, s6, 1926f
main_36:          jal          s5, 4f
0:                jal          ra, 9f
1:                jal          t1, 0b
2:                jal          ra, 17f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          ra, 22f
6:                jal          ra, 16f
7:                jal          t1, 1b
8:                jal          tp, 13f
9:                jal          gp, 15f
10:               jal          ra, 8b
11:               jal          ra, 7b
12:               jal          ra, 6b
13:               jal          s8, 19f
14:               jal          t1, 18f
15:               jal          ra, 23f
16:               jal          ra, 21f
17:               jal          t1, 11b
18:               jal          ra, 3b
19:               jal          t0, 2b
20:               jal          s3, 14b
21:               jal          ra, 20b
22:               jal          tp, 10b
23:               sltu         s7, zero, a0
                  blt          sp, s1, 1937f
                  auipc        s7, 918470
                  slt          a5, s9, a6
1921:             slli         a5, s4, 19
1922:             sub          t1, s5, t6
                  beq          a4, a7, 1931f
                  slli         s11, s4, 5
                  srli         s7, s1, 13
1926:             ori          a7, s9, 1821
                  slti         tp, s3, -1910
                  and          t4, gp, s1
                  slli         s4, ra, 16
                  slti         a3, t4, -79
1931:             bltu         a1, s4, 1942f
                  srai         s7, t5, 10
                  sub          a7, s3, s1
                  add          s9, s4, s11
                  blt          s0, t3, 1952f
                  sll          ra, ra, s3
1937:             ori          a7, a2, 733
                  or           s10, ra, s6
                  srli         t4, a7, 20
                  xor          s3, s8, a1
                  auipc        s7, 557180
1942:             slli         a3, tp, 17
                  bge          s8, a7, 1960f
                  slt          s10, s9, a2
                  srai         a4, s1, 26
                  bge          t0, t4, 1950f
                  sub          a4, t5, zero
                  sra          t6, s7, s11
                  or           a3, a1, s7
1950:             slli         a4, s7, 25
                  lui          t0, 1031120
1952:             blt          s8, s5, 1967f
                  ori          a4, t3, 1274
                  xori         s2, ra, 10
                  lui          s2, 835947
                  xori         s10, gp, -1285
                  srli         s2, s7, 4
                  bgeu         s5, a7, 1977f
                  bne          a6, t3, 1970f
1960:             or           t6, s6, s4
                  sub          s7, t6, t0
                  bgeu         t4, a1, 1972f
                  add          ra, a6, t1
                  and          s8, s5, ra
                  bne          tp, a0, 1969f
                  add          a1, s3, s8
1967:             slli         s7, gp, 23
                  sra          s6, t4, a1
1969:             auipc        gp, 440927
1970:             sltu         a1, s6, a2
                  sll          s4, s2, s7
1972:             lui          t4, 1021162
                  bltu         a2, a7, 1982f
                  slli         t2, ra, 5
                  bltu         s6, a1, 1983f
                  add          t1, s4, s6
1977:             slt          a3, a0, a5
                  slt          a4, s0, t3
                  slli         ra, s9, 31
main_2:           jal          s5, 0f
0:                jal          t1, 16f
1:                jal          ra, 11f
2:                jal          t0, 6f
3:                jal          s9, 9f
4:                jal          gp, 17f
5:                jal          ra, 8f
6:                jal          ra, 4b
7:                jal          t2, 18f
8:                jal          s6, 1b
9:                jal          tp, 7b
10:               jal          ra, 5b
11:               jal          t1, 12f
12:               jal          gp, 3b
13:               jal          t1, 15f
14:               jal          ra, 13b
15:               jal          t1, 2b
16:               jal          ra, 14b
17:               jal          tp, 10b
18:               sltu         a5, a1, s4
                  addi         t1, sp, -859
                  blt          a6, gp, 1991f
1982:             slli         a4, zero, 22
1983:             sll          s8, s4, s8
                  auipc        a2, 329130
                  bne          s0, t2, 2003f
                  blt          t4, a2, 1992f
                  sll          zero, s0, sp
                  slli         a7, a5, 16
                  srl          s7, a0, s8
                  sra          tp, a6, s5
1991:             auipc        t0, 750764
1992:             nop
                  beq          s10, s4, 2005f
                  beq          t0, a3, 2003f
                  auipc        t6, 389373
                  sltu         a0, zero, t3
                  xori         s2, s3, 601
                  beq          t0, s10, 2005f
                  sub          tp, s6, t2
                  auipc        s9, 229737
                  bltu         ra, s11, 2006f
                  bge          t2, s7, 2018f
2003:             add          s11, a5, s11
                  beq          t4, a5, 2018f
2005:             srli         sp, ra, 20
2006:             sltu         ra, a5, t2
                  addi         s9, a1, 1964
                  beq          s7, t6, 2025f
                  slt          t6, s7, a4
                  xor          s6, t4, a5
                  srai         s2, a7, 25
                  bge          t4, t3, 2023f
                  ori          a3, s4, 1636
                  sltu         a6, s10, s6
                  sltu         t5, s0, s6
                  xor          t6, s9, s6
                  addi         sp, s3, -528
2018:             bgeu         a7, t5, 2030f
                  add          s2, s6, s3
                  slti         a7, t6, 662
                  ori          s8, gp, 352
                  bltu         t1, sp, 2041f
2023:             ori          a6, s1, 1922
                  nop
2025:             xor          t2, t6, s6
                  and          tp, tp, t5
                  sll          zero, s2, s9
                  slt          s11, t2, s6
                  blt          zero, s2, 2043f
2030:             sra          a4, a0, t4
                  and          zero, t0, a7
                  add          zero, gp, s10
                  sltu         a7, a7, a3
                  xor          t5, s5, t1
                  or           tp, s5, t1
                  and          t4, a5, s1
                  or           s7, s9, a2
                  sub          tp, ra, t2
                  sltu         s6, t3, zero
                  bge          a7, s6, 2056f
2041:             srl          a3, a4, a4
                  bne          s3, s5, 2046f
2043:             addi         ra, a5, 1339
                  slt          s6, s3, s0
                  sll          sp, zero, a2
2046:             bge          s3, t2, 2050f
                  slt          s10, s4, a1
                  lui          t2, 1010176
                  slti         ra, a3, -1646
2050:             xor          t5, t6, zero
                  slti         t4, s11, 1444
                  addi         s7, t1, -1046
                  ori          t5, s8, -1457
                  srai         a0, t0, 19
                  srli         t1, s9, 24
2056:             blt          s1, a2, 2064f
                  sub          s2, s6, s1
                  bgeu         a4, a2, 2072f
                  bltu         zero, s6, 2077f
                  bgeu         t5, s6, 2065f
                  sltu         a0, s0, ra
                  addi         t4, s11, 223
                  sub          s10, s4, a2
2064:             addi         a3, t1, 17
2065:             sra          s7, a7, s8
                  slti         a7, gp, -414
                  auipc        t1, 740242
                  or           a6, t6, a3
                  ori          s9, a5, 865
                  ori          s5, a0, 1538
                  xor          t6, a4, t6
2072:             slti         s9, a2, 691
                  srai         s3, t4, 11
                  bne          a6, a0, 2093f
                  sltiu        a6, s4, -633
                  sltu         t6, s10, s1
2077:             bgeu         t5, s6, 2084f
                  slt          a1, t1, tp
                  nop
                  lui          s6, 322351
                  andi         a4, t0, -1595
                  slti         s3, a0, 1113
                  nop
2084:             and          a2, zero, a2
                  addi         a4, s10, 1557
                  blt          s11, s4, 2097f
                  bltu         ra, s2, 2093f
main_16:          jal          s5, 9f
0:                jal          t1, 3f
1:                jal          t1, 2f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          t1, 7f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          t2, 5b
8:                jal          t1, 11f
9:                jal          ra, 4b
10:               jal          ra, 1b
11:               jal          t1, 12f
12:               sra          s3, a5, a1
                  slti         a3, tp, -1627
                  lui          t6, 144154
                  blt          s5, a5, 2101f
                  andi         a5, a6, -2030
                  lui          a6, 671278
2093:             auipc        t5, 811087
                  lui          s9, 925538
                  slli         t2, s3, 8
                  and          a2, t5, s3
2097:             slli         a3, s4, 1
                  blt          t1, t5, 2107f
                  srl          a5, zero, a6
                  bltu         s5, a1, 2102f
2101:             srli         a7, a7, 20
2102:             srl          s3, t4, s0
                  bgeu         a1, zero, 2112f
                  add          s6, gp, t0
                  or           s10, s3, ra
                  bge          gp, a3, 2124f
2107:             bne          a7, s5, 2119f
                  sra          a5, a6, a2
                  slt          a4, s1, zero
                  sra          zero, s7, s0
                  slli         s11, gp, 26
2112:             srl          sp, a3, t6
                  slti         zero, ra, -741
                  andi         t1, s4, -1243
                  or           a4, sp, a0
                  sll          ra, sp, a7
                  and          a7, s2, s9
                  bge          a7, s10, 2128f
2119:             srl          t5, ra, zero
                  sltu         sp, a4, s10
                  sltiu        s8, t6, -209
                  xor          sp, a6, t3
                  or           s9, a6, a4
2124:             bltu         zero, s0, 2128f
                  or           ra, a6, a5
                  bltu         s11, t4, 2143f
                  srl          s2, t5, s4
2128:             bge          t3, a5, 2138f
                  addi         a1, tp, 1140
                  addi         t0, a6, -1776
                  srai         a7, s1, 26
                  slti         s9, a4, -941
                  blt          t0, t5, 2150f
                  addi         a5, s3, -1443
                  srai         a2, s6, 12
                  or           s8, t1, sp
                  srl          t1, a0, t0
2138:             beq          a1, t0, 2149f
                  beq          t0, t5, 2154f
                  beq          a0, s0, 2148f
                  beq          a3, s2, 2150f
                  ori          s7, t4, -1645
2143:             srli         t5, s10, 7
                  or           s5, s0, s9
                  sub          t6, s8, a2
                  add          a3, s1, s7
                  bge          s5, s7, 2164f
2148:             bltu         a6, s9, 2167f
2149:             or           s3, s9, tp
2150:             sll          a3, s2, s1
                  sra          t1, t4, s4
                  xori         a6, a6, 1279
                  bltu         s11, a0, 2157f
2154:             srl          t0, s8, s0
                  nop
                  srai         a2, a7, 3
2157:             srli         a7, a5, 7
                  bgeu         s10, s10, 2168f
                  bge          t0, a6, 2168f
                  bgeu         s3, s4, 2174f
                  add          a5, s6, tp
                  nop
                  srli         s2, a5, 16
2164:             srai         ra, s9, 8
                  or           t4, s11, s9
                  bgeu         t1, s5, 2178f
2167:             blt          s5, a5, 2184f
2168:             srai         a3, a7, 5
                  andi         s8, t0, 326
                  beq          a5, s8, 2174f
                  ori          gp, zero, 1920
                  bltu         s6, sp, 2179f
                  slt          a3, t0, s0
2174:             add          ra, t0, t3
                  sltiu        a0, t6, 1611
                  xori         t2, s4, -1354
                  or           gp, t0, tp
2178:             slli         t5, t5, 17
2179:             xor          zero, t0, a6
                  sll          zero, s0, a1
                  lui          s3, 612793
                  srai         s5, t6, 15
                  blt          tp, s0, 2185f
2184:             sltiu        t4, t0, -1145
2185:             ori          s2, s5, -926
                  sra          ra, s4, t1
                  auipc        sp, 945716
                  add          s5, a4, t4
                  sub          a7, sp, s11
                  sub          t2, s3, s4
                  bge          s6, a0, 2209f
                  add          t1, sp, a2
                  xor          a1, t6, a2
                  srl          s5, t5, s11
                  slti         sp, t5, 380
                  bgeu         s5, t4, 2213f
                  beq          s3, s5, 2208f
                  blt          a0, s5, 2208f
                  sra          s10, a7, s1
                  sra          s5, tp, t1
                  blt          s9, a1, 2218f
                  xori         s11, s11, -89
                  auipc        s11, 37630
                  add          zero, zero, t3
                  andi         a7, s7, 687
                  ori          s4, t3, -408
                  srai         a5, t3, 9
2208:             srli         ra, tp, 24
2209:             xor          gp, a0, a7
                  bgeu         a4, t1, 2218f
                  sltiu        t6, s5, -75
                  srai         t0, s9, 15
2213:             xori         t4, a2, -1006
                  slt          t1, ra, s6
                  sltiu        s8, ra, 652
                  srl          ra, s2, sp
                  bltu         a4, s11, 2222f
2218:             blt          s11, a7, 2237f
                  sub          a0, sp, s7
                  slli         t4, s5, 15
                  lui          s10, 314824
2222:             bge          t6, a7, 2236f
                  sltu         s10, t6, a3
                  sub          s6, s4, a5
                  sub          zero, s9, t6
                  and          zero, s11, gp
                  bgeu         t3, t3, 2245f
                  srai         a5, s10, 20
                  beq          s9, t5, 2240f
                  add          a3, a1, s5
                  or           a6, tp, t6
                  xor          sp, a1, s10
                  slt          s4, s9, s9
                  and          s7, a0, a4
                  xor          t4, s10, s4
2236:             addi         ra, s10, -1201
2237:             addi         s3, a3, -1157
                  bne          s5, a7, 2244f
                  auipc        s4, 1043118
2240:             sub          zero, a0, s0
                  slli         a3, a3, 3
                  slti         t1, sp, -1828
                  bne          t0, a1, 2258f
2244:             srl          s3, s3, s1
2245:             beq          s10, a5, 2257f
                  xori         a1, t5, 24
                  xori         a4, t0, 925
                  srl          a4, tp, s5
                  sub          t0, a2, s9
                  xori         a6, t3, 1701
                  sltiu        s6, s10, 1951
                  slti         s5, a6, -1189
                  or           s2, a0, zero
                  sub          s8, a4, s3
                  blt          t0, s10, 2264f
                  andi         s5, s3, -703
2257:             ori          s4, t2, -955
2258:             sltu         s3, t0, a5
                  sub          a7, s3, t0
                  bge          s7, a5, 2269f
                  ori          a1, s1, 1682
                  slti         a0, s8, 1749
                  sll          s5, ra, a5
2264:             bgeu         s9, zero, 2280f
                  sll          a1, a0, a2
                  slt          a2, a6, a3
                  blt          s2, t4, 2271f
                  srai         s9, a4, 13
2269:             sll          a6, ra, t4
                  addi         a5, zero, -692
2271:             xori         t2, ra, -2
                  lui          t4, 188826
                  srai         a6, s4, 21
                  slli         tp, t6, 2
                  slli         t2, t0, 24
                  srai         s11, a5, 12
                  sltu         s2, a4, a7
                  blt          a5, a4, 2286f
                  lui          a4, 509738
2280:             srli         s7, s7, 1
                  auipc        t4, 497792
                  add          t4, t6, s9
                  srli         s4, s9, 4
                  addi         a7, s4, 1121
                  beq          a3, s11, 2296f
2286:             and          a4, s10, a1
                  addi         t5, s0, 1083
                  srai         s6, t6, 25
                  slli         ra, s11, 16
                  addi         s2, s11, 127
                  slt          t0, gp, s8
                  srli         s8, a3, 14
                  srai         s9, a3, 24
                  slli         zero, t2, 12
                  add          a4, t3, s11
2296:             auipc        a0, 238629
                  add          a7, s8, t2
                  sll          a2, s0, tp
                  sll          a4, tp, a7
                  beq          zero, sp, 2314f
                  add          a7, a1, s8
                  bltu         t0, s0, 2311f
                  sll          t1, a1, t6
                  slli         s5, s8, 17
                  sll          a3, a0, s2
                  sub          a6, s9, tp
                  and          a5, t0, s3
                  auipc        tp, 834978
                  bge          a6, a2, 2316f
                  or           a6, s4, t4
2311:             blt          s10, t2, 2315f
                  slli         t5, gp, 0
                  srli         t0, s2, 24
2314:             nop
2315:             addi         t6, s10, -1847
2316:             ori          t0, t6, 1020
                  blt          s6, s5, 2329f
                  bge          s6, s4, 2330f
                  sll          s5, a5, gp
                  slli         a6, zero, 2
                  sll          tp, s0, s8
                  bne          s11, a3, 2326f
                  srl          gp, a2, zero
                  beq          s7, s4, 2335f
                  slti         t4, t5, -1128
2326:             sltu         sp, a3, ra
                  sltu         a5, s10, s0
                  bgeu         t2, a0, 2345f
2329:             sltiu        t4, s9, -111
2330:             srl          t5, a0, s4
                  bgeu         t4, t6, 2349f
                  addi         a0, t3, 1502
                  xori         a5, t5, -252
                  xor          s5, s0, s3
2335:             slti         a6, a6, -125
                  xor          a5, t6, s4
                  bge          zero, t4, 2343f
                  addi         t6, a6, -158
                  srai         t2, s2, 11
                  sltiu        t0, t5, 253
                  xori         ra, tp, 1548
                  or           a1, s3, s10
2343:             bgeu         s7, s8, 2359f
                  andi         a7, s1, 858
2345:             slti         zero, s11, -1937
                  or           s8, t0, t4
                  slli         s4, t0, 23
                  bne          a2, t3, 2356f
2349:             bltu         t2, s10, 2354f
                  xori         s2, ra, 864
                  sll          t1, a1, a2
                  bne          a0, t0, 2369f
                  sltu         zero, t3, s11
2354:             slt          s2, s9, s8
                  beq          sp, s10, 2372f
2356:             addi         sp, s7, 1382
                  addi         s2, a2, 409
                  and          zero, a6, gp
2359:             srai         sp, a1, 29
                  sub          zero, t5, sp
                  slti         a0, s7, -1581
                  bge          zero, s0, 2373f
                  addi         s5, a0, 1724
                  ori          t2, a6, -1789
                  xori         t2, t4, -1355
                  xori         s5, a1, 1894
                  or           a6, t3, a1
                  slli         s11, a1, 31
2369:             ori          a6, s0, 1803
                  auipc        s10, 677245
                  xor          ra, t1, s4
2372:             andi         gp, t2, -1708
2373:             sll          s9, a1, s10
                  ori          ra, tp, 1138
                  add          s6, a1, s4
                  bltu         a5, s3, 2378f
                  or           t2, t2, t0
2378:             sltu         a7, a3, s2
                  sra          s10, t3, a5
                  add          s8, a7, s11
                  srl          gp, t4, s8
                  srl          a2, a7, a3
                  xor          t0, ra, sp
                  bge          t2, s6, 2394f
                  srai         tp, t1, 15
                  nop
                  sub          zero, ra, zero
                  xor          s4, a3, t2
                  sra          s9, s5, a4
                  addi         a5, t4, 28
                  bne          s1, t5, 2400f
                  andi         s9, t5, 1693
                  blt          zero, s0, 2411f
2394:             bltu         s0, t3, 2405f
                  bge          gp, s3, 2410f
                  auipc        a2, 1017423
                  sll          s2, s3, s2
                  sra          s7, a0, a2
                  nop
2400:             lui          s8, 53747
                  srli         gp, s6, 15
                  xor          a3, a2, a5
                  bge          a6, a1, 2417f
                  andi         gp, a4, -13
2405:             sll          gp, ra, a3
                  srl          a4, a2, a1
                  or           s7, a4, zero
                  nop
                  slti         t4, a1, 274
2410:             addi         sp, s4, -1566
2411:             addi         s8, s1, 958
                  nop
                  bge          gp, s0, 2432f
                  srl          s3, s8, s6
                  slti         zero, s5, -758
                  add          s5, a0, s0
2417:             sltiu        t1, a3, -1179
                  sub          a7, a6, t5
                  lui          t0, 896721
                  beq          ra, s7, 2430f
                  auipc        gp, 919331
                  nop
                  addi         t5, a1, -560
                  sub          t6, a0, zero
                  xor          s3, s8, s4
                  sltu         gp, a5, s0
                  sub          s2, zero, a5
                  srai         zero, t3, 26
                  sltu         a0, t2, s7
2430:             beq          ra, a2, 2434f
                  auipc        s11, 896954
2432:             or           a7, s0, t3
                  nop
2434:             ori          a6, s2, -188
                  slti         s11, t4, -778
                  bgeu         s2, s5, 2455f
                  bltu         a4, sp, 2446f
                  slt          a5, s3, s3
                  addi         s11, s10, 1038
                  bne          zero, t5, 2448f
                  slli         zero, s5, 10
                  or           s8, s8, t3
                  bgeu         sp, t0, 2460f
                  beq          a5, gp, 2453f
                  slli         t6, s6, 30
2446:             or           t4, s3, s11
                  auipc        a6, 860740
2448:             sltiu        zero, a3, 1548
                  auipc        s2, 464090
                  auipc        s3, 269696
                  xor          s3, s0, s5
                  sltiu        s11, a2, 766
2453:             srai         t4, t5, 17
                  beq          a1, s6, 2465f
2455:             beq          s6, a2, 2462f
                  and          s9, s7, a7
                  bgeu         s7, a4, 2476f
                  xori         a3, tp, 1013
                  xori         a6, tp, -822
2460:             sub          a5, tp, t1
                  and          t0, s0, a6
2462:             and          zero, s3, t0
                  srli         a3, s5, 1
                  ori          zero, s11, 916
2465:             andi         t2, t0, -130
                  slt          a0, a5, t2
                  bge          a4, s5, 2469f
                  sub          a0, t1, t4
2469:             xor          a6, s11, a1
                  sltiu        a4, a0, -988
                  sltu         s5, s2, s8
                  addi         a5, s7, -1612
                  srli         zero, s5, 8
                  addi         s7, s7, -634
                  srli         s2, sp, 5
2476:             sltu         s4, s0, s11
                  bgeu         s1, s6, 2489f
                  andi         s4, ra, 804
                  auipc        s6, 45570
                  slti         s7, s10, 529
                  bltu         ra, t6, 2489f
                  add          s4, s10, s5
                  srl          a0, a7, s5
                  addi         a1, s9, 1133
                  xor          s8, s5, a6
                  sra          s11, t1, a0
                  nop
                  ori          a3, s6, -1811
2489:             sra          s8, s4, t6
                  nop
                  sub          gp, ra, s9
                  bgeu         a4, t6, 2500f
                  ori          s10, t0, 1527
                  slt          t1, a4, ra
                  bge          a7, s3, 2514f
                  srli         t0, s4, 31
                  xori         s8, sp, -694
                  sub          s6, s4, s0
                  sltu         s2, a0, tp
2500:             bgeu         a4, zero, 2504f
                  sltiu        s5, a0, 537
                  andi         a5, s10, 1525
                  srl          s8, a4, a2
2504:             srl          a5, s9, t6
                  and          s2, a3, a4
                  slti         s11, s3, -482
                  xor          a6, t6, a1
                  bgeu         s4, a2, 2517f
                  blt          s1, s10, 2521f
                  slti         t1, t1, 288
                  nop
                  auipc        s9, 306882
                  sra          t5, a2, a6
2514:             sra          sp, s9, s4
                  and          a1, s3, a0
                  slt          tp, zero, t4
2517:             bgeu         s2, s6, 2528f
                  lui          a0, 794284
                  srli         s6, t6, 0
                  bgeu         s1, a3, 2525f
2521:             auipc        t4, 380243
                  srai         a1, t5, 25
                  and          zero, gp, s1
                  srli         tp, a0, 6
2525:             srl          s2, t3, s6
                  srai         s2, a3, 19
                  slli         t0, s7, 20
2528:             sll          t4, t2, s5
                  lui          ra, 278008
                  sll          t4, s11, gp
                  sra          tp, s5, t5
                  sll          s11, s11, s3
                  sltiu        s3, a1, 401
                  srai         a2, a6, 19
                  or           tp, s3, s11
                  srl          sp, a5, s7
                  sll          s3, sp, s9
                  xori         s2, s8, 1391
                  or           tp, s5, t2
                  lui          a3, 581252
                  auipc        s9, 466800
                  srai         t0, a1, 4
                  sub          s8, s1, a4
                  and          tp, a0, a1
                  bne          s1, sp, 2551f
                  blt          a5, t2, 2550f
                  sub          s8, s0, s9
                  bgeu         a4, t0, 2564f
                  auipc        a2, 745022
2550:             bltu         a6, s7, 2564f
2551:             sltiu        a0, t0, -948
                  ori          s6, a6, -1386
                  add          t0, s11, s4
                  nop
                  nop
                  sll          t1, t4, a4
                  beq          s10, s5, 2567f
                  and          ra, s4, a4
                  slti         a0, sp, 444
                  bgeu         a2, a3, 2570f
                  slti         s6, zero, 1701
                  srli         a2, sp, 26
                  bltu         s4, a1, 2570f
2564:             beq          a7, t4, 2570f
                  sltu         t5, s8, s9
                  addi         a5, sp, -253
2567:             add          t4, ra, ra
                  srai         s7, t4, 1
                  srl          s3, t0, gp
2570:             sra          t6, gp, a0
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            srai         s10, t2, 13
                  addi         s0, s0, -20
                  or           t6, t5, s11
                  xori         a7, s2, -623
                  sub          a4, s9, t4
                  addi         t0, tp, -1356
                  ori          a5, s7, -255
                  ori          t4, s5, 150
                  xor          a7, s4, a3
                  sw           s5, 4(s0)
                  sltu         gp, t3, tp
                  srai         s3, t1, 15
                  add          t1, s8, s7
                  sub          a2, tp, t0
                  slti         s10, s10, -1895
                  sltu         gp, a1, a7
                  xori         a5, s5, -518
                  srli         a7, a1, 30
                  sll          t6, gp, s2
                  slli         t4, a4, 27
                  bge          t3, t5, 26f
                  lui          s5, 991104
                  bgeu         s4, t4, 23f
                  slti         a1, s2, -1247
                  bne          a4, zero, 16f
                  bne          a0, ra, 17f
                  slli         gp, a5, 11
                  sub          a3, a6, a5
16:               xori         ra, t5, -780
17:               add          a4, s7, a3
                  bge          s1, s11, 38f
                  sltiu        s9, s7, 332
                  srai         a1, s1, 11
                  xor          s11, s6, t0
                  slti         s6, a4, 909
23:               sra          a5, s11, t1
                  xori         t2, s5, -715
                  slti         s3, a2, -993
26:               bgeu         gp, s1, 37f
                  addi         gp, gp, 1120
                  bne          t0, tp, 42f
                  srli         sp, a0, 7
                  sll          gp, gp, s5
                  sltiu        a6, s2, 1173
                  nop
                  andi         t0, a0, -923
                  slti         t1, s3, -1404
                  xori         s3, s7, -757
                  bne          sp, s1, 48f
37:               srli         ra, t2, 22
38:               bne          s5, sp, 48f
                  or           sp, s2, a1
                  auipc        s4, 657468
                  srai         a6, a1, 4
42:               auipc        a2, 290495
                  srai         s3, zero, 13
                  add          s5, t4, s5
                  slt          s2, t1, s1
                  sub          t5, s5, s3
                  ori          s8, a7, -1385
48:               andi         gp, s2, 1869
                  ori          s2, s11, -10
                  xori         gp, a5, -422
                  lw           s5, 4(s0)
                  xori         zero, s6, -1992
                  addi         s0, s0, 20
                  srai         a5, s2, 11
                  andi         s6, s11, -265
                  addi         t4, s8, -1593
                  ori          gp, s1, 1526
                  xor          a1, a2, t0
71:               addi x22, x21, 0
71:               jalr x22, x22, 0
sub_1:            add          t2, s10, a4
                  bne          a0, a6, sub_1_stack_p
sub_1_stack_p:    addi         s0, s0, -40
                  xori         t1, a4, 1103
                  slt          s4, s0, gp
                  sltiu        tp, a4, -415
                  sw           s5, 4(s0)
                  or           a1, t1, a4
                  srl          s6, s10, s2
                  slti         a4, s3, -920
                  sub          s4, t0, tp
                  slt          t4, s8, s2
                  beq          s0, s2, sub_1_j3 #branch to jump instr
                  srl          tp, a2, s1
                  slti         t5, s3, 1322
                  slt          a3, a0, t5
sub_1_j3:         jal          s5, sub_3 #jump sub_1 -> sub_3
                  add          t6, s3, s11
                  srai         s10, a0, 14
                  sltu         t6, t0, t4
                  addi         a1, s10, 206
                  and          a3, s8, s9
                  ori          s11, s3, -844
                  srl          t2, sp, a7
                  or           s10, t1, a1
                  xori         gp, t0, -477
                  sll          a5, s3, a7
sub_1_j4:         jal          s5, sub_3 #jump sub_1 -> sub_3
                  xor          sp, t0, gp
                  nop
                  srl          s2, a6, t1
                  slt          s9, a2, t3
                  sll          tp, t5, s8
sub_1_j5:         jal          s5, sub_2 #jump sub_1 -> sub_2
                  srai         a6, s5, 5
                  add          s5, t3, zero
                  srai         a1, t0, 27
                  slli         a4, tp, 4
                  slt          s3, a5, s3
                  lui          s4, 484272
                  lui          a1, 1020135
                  bltu         a2, a3, 22f
                  srl          ra, t2, gp
                  bge          a2, t0, 24f
                  nop
                  sll          t1, a2, a3
                  srl          t1, s10, s5
                  bltu         s7, a3, 19f
                  sltiu        a1, s8, 1484
                  nop
                  addi         s8, s0, -1802
                  sll          a7, a4, a0
                  blt          a2, s11, 29f
19:               bge          s9, a3, 31f
                  nop
                  nop
22:               auipc        a1, 824779
                  ori          s6, a3, 768
24:               sll          a7, tp, a7
                  andi         s3, s9, 1496
                  ori          s7, t4, 407
                  sub          t5, t4, t3
                  addi         t1, a0, 221
29:               blt          s10, a5, 41f
                  add          a0, a0, s0
31:               slt          a7, s2, s4
                  lui          s10, 825566
                  slti         a0, sp, 1104
                  sltu         a1, s9, a3
                  srl          a6, tp, s0
                  sltiu        gp, s6, 1739
                  srli         t0, zero, 8
                  slti         a0, sp, 667
                  add          a2, t0, s8
                  blt          sp, a3, 43f
41:               ori          a0, s10, 1432
                  sltu         t5, a0, sp
43:               bgeu         sp, t1, 46f
                  and          a3, s2, a7
                  bltu         s8, t6, 48f
46:               blt          s1, ra, 48f
                  xori         a5, t6, -1090
48:               srl          a0, s8, s6
                  srl          t4, s4, s0
                  ori          t2, a6, -513
                  addi         s3, gp, 1754
                  lw           s5, 4(s0)
                  addi         s0, s0, 40
                  sltu         s4, a3, a7
                  sltu         a7, a0, a3
90:               addi x22, x21, 0
90:               jalr x22, x22, 0
sub_3:            bltu         a4, sp, sub_3_stack_p
                  sltiu        a5, a3, -1217
                  ori          a7, t5, -1825
sub_3_stack_p:    addi         s0, s0, -12
                  or           tp, s0, a0
                  add          s9, s3, s9
                  srli         ra, s1, 14
                  and          t5, s2, a4
                  srl          s8, a4, t5
                  sw           s5, 4(s0)
                  srli         a7, t4, 27
                  xor          s3, t6, a2
                  srl          a4, s0, a5
                  sra          a4, s0, gp
                  xori         tp, a0, -1261
                  slti         a1, gp, 258
                  auipc        a2, 711643
                  addi         s6, s7, -1273
                  sub          a1, zero, s3
sub_3_j7:         jal          s5, sub_5 #jump sub_3 -> sub_5
                  srli         tp, a7, 26
                  bgeu         s11, t5, sub_3_j8 #branch to jump instr
                  ori          s3, s0, -1575
                  xor          s11, s2, t6
                  srl          gp, t6, a5
                  lui          zero, 626411
                  sub          t1, s1, s9
                  auipc        s11, 313512
                  ori          t0, t4, -1928
                  srl          s7, a6, t5
sub_3_j8:         jal          s5, sub_4 #jump sub_3 -> sub_4
sub_3_3:          jal          s5, 15f
0:                jal          tp, 2f
1:                jal          t1, 8f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          s2, 0b
5:                jal          sp, 11f
6:                jal          t1, 16f
7:                jal          ra, 14f
8:                jal          t4, 4b
9:                jal          t1, 7b
10:               jal          ra, 6b
11:               jal          ra, 12f
12:               jal          a7, 9b
13:               jal          s9, 10b
14:               jal          ra, 3b
15:               jal          t1, 1b
16:               jal          gp, 17f
17:               sll          s6, a4, s7
sub_3_2:          jal          s5, 14f
0:                jal          ra, 15f
1:                jal          t1, 3f
2:                jal          ra, 12f
3:                jal          a2, 0b
4:                jal          ra, 7f
5:                jal          t1, 11f
6:                jal          t0, 5b
7:                jal          t1, 10f
8:                jal          t1, 4b
9:                jal          t1, 13f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          s2, 9b
13:               jal          ra, 8b
14:               jal          s2, 6b
15:               addi         s7, s11, 838
sub_3_1:          jal          s5, 3f
0:                jal          ra, 13f
1:                jal          t6, 11f
2:                jal          sp, 9f
3:                jal          ra, 14f
4:                jal          t2, 2b
5:                jal          a1, 0b
6:                jal          ra, 16f
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          t1, 6b
10:               jal          ra, 4b
11:               jal          ra, 8b
12:               jal          s11, 10b
13:               jal          ra, 12b
14:               jal          ra, 15f
15:               jal          sp, 1b
16:               srli         s11, s4, 17
sub_3_0:          jal          s5, 2f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          t1, 11f
4:                jal          t5, 1b
5:                jal          ra, 0b
6:                jal          t2, 4b
7:                jal          ra, 5b
8:                jal          sp, 7b
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               andi         s7, a5, 709
sub_3_4:          jal          s5, 11f
0:                jal          t4, 8f
1:                jal          ra, 22f
2:                jal          a1, 3f
3:                jal          s11, 10f
4:                jal          t1, 23f
5:                jal          s11, 20f
6:                jal          t1, 2b
7:                jal          ra, 16f
8:                jal          gp, 7b
9:                jal          ra, 5b
10:               jal          ra, 0b
11:               jal          t1, 4b
12:               jal          ra, 15f
13:               jal          ra, 26f
14:               jal          tp, 25f
15:               jal          ra, 24f
16:               jal          ra, 1b
17:               jal          s6, 18f
18:               jal          tp, 6b
19:               jal          t1, 21f
20:               jal          s6, 19b
21:               jal          ra, 12b
22:               jal          t1, 13b
23:               jal          ra, 9b
24:               jal          t1, 14b
25:               jal          ra, 17b
26:               srai         t0, a3, 8
                  sltiu        s6, a0, 321
                  sub          a4, a0, s9
                  andi         s4, t0, -1277
                  ori          a5, s3, -1257
                  auipc        s3, 951117
                  sub          t6, s3, gp
                  bne          gp, a6, 11f
                  auipc        a1, 670626
                  bge          s9, t2, 20f
                  ori          t2, t5, -1253
                  bgeu         t3, t0, 21f
11:               sll          s6, s10, s2
                  srai         t5, t4, 8
                  slti         s4, t1, 789
                  lui          sp, 864335
                  srai         tp, t0, 13
                  or           a7, s10, t0
                  and          s9, s4, s8
                  sub          ra, a1, t6
                  auipc        s6, 575045
20:               bge          t2, a1, 38f
21:               xori         sp, s7, -69
                  bltu         s1, s10, 25f
                  srai         t6, a0, 17
                  srl          a7, s3, s5
25:               sltiu        s11, a7, 1977
                  add          s8, t5, a2
                  sub          s3, a2, t5
                  sltiu        s2, a5, -1971
                  srli         zero, ra, 0
                  and          tp, s6, ra
                  xor          s6, t4, a0
                  add          s5, s8, gp
                  bge          s11, t4, 35f
                  bgeu         t1, s9, 43f
35:               sll          s5, a6, s1
                  lui          t2, 646215
                  xor          a2, ra, t4
38:               blt          s11, t1, 41f
                  bne          s3, a0, 44f
                  xor          s9, s1, ra
41:               ori          gp, gp, -1845
                  sltiu        t5, ra, 216
43:               addi         ra, s5, -131
44:               slli         s11, s10, 13
                  srl          s5, zero, s11
                  add          s5, s5, s11
                  bgeu         zero, a0, 54f
                  or           a1, a1, s8
                  sra          a1, s8, s7
                  sll          t1, s3, a7
                  srl          a6, s10, a2
                  and          s6, t3, a3
                  sltiu        sp, a7, -1390
54:               blt          t2, t4, 69f
                  add          s2, t5, t5
                  srl          a5, s10, s2
                  andi         s2, gp, 1878
                  slt          t6, t4, t6
                  beq          ra, t5, 78f
                  bgeu         s5, ra, 68f
                  auipc        t0, 171389
                  sll          sp, a5, a5
                  srli         t4, a6, 7
                  slli         t4, a0, 31
                  or           a5, tp, zero
                  bge          a4, tp, 77f
                  sub          zero, sp, ra
68:               srl          s5, a3, s3
69:               bge          s8, sp, 82f
                  bltu         t5, a1, 86f
                  lui          a1, 1018814
                  andi         a7, s10, 1626
                  ori          gp, s4, 377
                  ori          tp, t4, -1252
                  sra          a7, a7, s7
                  lui          t5, 917520
77:               andi         t2, t1, 286
78:               sll          s11, t0, s2
                  or           gp, t1, t1
                  slli         s9, t4, 11
                  beq          tp, ra, 99f
82:               srai         t0, a7, 27
                  sra          s4, s6, s11
                  or           s4, zero, a2
                  or           a3, s5, tp
86:               blt          s5, t6, 105f
                  bgeu         a1, a5, 94f
                  sub          a2, a0, zero
                  bltu         a1, sp, 90f
90:               srai         t4, a7, 20
                  srli         a1, s7, 4
                  add          a1, gp, s11
                  or           s11, zero, s4
94:               blt          a1, s11, 103f
                  bltu         s1, zero, 114f
                  andi         a7, t5, 250
                  srai         t0, s5, 4
                  sltu         ra, t2, zero
99:               blt          a3, a3, 119f
                  auipc        ra, 668933
                  sub          a4, s6, s8
                  or           a5, t3, s5
103:              xor          a7, s3, a5
                  ori          s4, t6, -970
105:              ori          s7, s0, -806
                  sltiu        gp, s9, -71
                  addi         a2, s10, 599
                  bge          s5, t2, 121f
                  srl          ra, t4, a0
                  srli         t4, a2, 3
                  xori         gp, a2, 441
                  sub          s8, t0, a2
                  sra          s8, t5, t5
114:              sub          s7, a7, s6
                  nop
                  srai         sp, s8, 1
                  addi         t1, t3, -136
                  auipc        s8, 84528
119:              or           zero, a6, a7
                  auipc        sp, 396253
121:              andi         s7, tp, -1471
                  xor          s6, a7, s2
                  slli         s5, a1, 24
                  lui          s2, 96495
                  sub          zero, s11, sp
                  slti         a5, s10, 306
                  beq          a0, t3, 138f
                  xori         s8, zero, -1382
                  add          s7, ra, a0
                  bge          a4, ra, 150f
                  auipc        s6, 832050
                  slti         s7, sp, -1968
                  xori         t0, tp, 1813
                  srl          s9, t5, s1
                  and          a1, s9, t4
                  lui          t6, 50160
                  sltiu        a1, s1, -170
138:              andi         t2, s9, 1330
                  and          a5, s5, a2
                  bltu         zero, t4, 150f
                  lui          s9, 410905
                  sll          s10, ra, s8
                  nop
                  auipc        tp, 503471
                  bge          zero, s4, 148f
                  and          a0, gp, t0
                  xor          s2, gp, s8
148:              lui          t5, 488129
                  nop
150:              sra          s10, sp, t6
                  and          s5, s0, zero
                  bltu         ra, t2, 170f
                  sltu         s10, s4, t0
                  slli         t1, s2, 3
                  srli         s7, s1, 14
                  ori          a0, s2, -1874
                  sra          t5, a2, s0
                  sll          t6, s3, t0
                  sltu         a2, s1, a3
                  srai         tp, a5, 17
                  sltu         s9, s2, s5
                  slli         a6, a1, 9
                  sltiu        ra, t5, 142
                  andi         s3, s6, 773
                  or           sp, tp, a4
                  ori          gp, tp, 2003
                  srli         a7, sp, 5
                  slti         s10, s10, 132
                  addi         t0, s3, 301
170:              lui          s9, 12455
                  and          t5, t2, a5
                  or           t5, a7, s7
                  sra          t1, s6, s2
                  sltiu        s10, s0, 1869
                  slti         s7, a6, -466
                  xor          s8, a3, s7
                  srli         s5, zero, 8
                  andi         a5, s2, 656
                  beq          sp, sp, 199f
                  bne          gp, s4, 188f
                  sll          t0, s0, a3
                  sltu         a0, a3, t2
                  sub          t4, s5, a4
                  sra          ra, zero, s7
                  sltiu        t0, tp, 669
                  bne          s9, s7, 205f
                  sra          s11, a1, s0
188:              addi         s5, t4, 922
                  bltu         s0, tp, 199f
                  sra          a0, t2, s11
                  auipc        s10, 912601
                  sra          zero, a0, a1
                  srl          s4, a5, a6
                  ori          zero, t1, -235
                  addi         a5, t4, 1674
                  sub          s2, a6, ra
                  and          t5, t5, s5
                  bgeu         s7, ra, 209f
199:              blt          a6, s6, 210f
                  or           s5, t0, t2
                  xori         s2, s10, -1267
                  sub          t6, a4, s10
                  add          a0, t3, a4
                  slt          t0, s1, a7
205:              ori          a4, s6, -1447
                  addi         ra, t6, -1144
                  slli         s11, s7, 1
                  bgeu         s6, t1, 226f
209:              sra          s7, t3, zero
210:              bltu         s4, t1, 230f
                  slt          t6, a1, t5
                  or           t5, t0, t1
                  srli         a4, t2, 17
                  add          a7, a2, a4
                  addi         s6, s7, 1414
                  beq          a4, a5, 234f
                  and          zero, t4, s6
                  srai         s8, sp, 21
                  bltu         a5, s0, 222f
                  xori         a6, s0, -941
                  sltiu        a3, a6, -1153
222:              sra          s9, sp, a2
                  xor          t6, ra, s0
                  sra          a4, gp, s10
                  bltu         s6, sp, 240f
226:              slt          a3, s5, a0
                  lui          s2, 310335
                  and          a4, s3, a3
                  srli         a3, t0, 22
230:              sub          s11, s9, gp
                  andi         a7, s11, 496
                  addi         s10, s11, -1471
                  srl          t1, s4, s11
234:              bge          s3, tp, 253f
                  bgeu         a7, t5, 251f
                  slti         s7, s3, -641
                  bne          a5, a3, 257f
                  and          gp, s5, s9
                  sll          t6, a5, a0
240:              sub          a0, a4, s3
                  beq          a1, a4, 254f
                  slt          a4, a4, s2
                  bge          a7, zero, 244f
244:              addi         s8, zero, -254
                  srl          sp, t1, t0
                  blt          t1, s6, 248f
                  sub          a6, a3, zero
248:              beq          s1, a4, 267f
                  srl          a2, s3, s9
                  slt          ra, t3, a2
251:              slli         a0, a5, 4
                  andi         a3, s3, -1635
253:              beq          a6, a4, 260f
254:              blt          a5, t2, 259f
                  auipc        s10, 615995
                  or           t0, a1, t5
257:              slt          s10, s4, s8
                  bne          ra, a4, 265f
259:              and          a6, a2, s5
260:              bltu         s9, zero, 278f
                  beq          sp, a6, 281f
                  blt          a7, s5, 267f
                  sltu         sp, s1, a7
                  bltu         t4, t2, 275f
265:              add          t1, s9, t4
                  nop
267:              blt          t6, a1, 279f
                  bne          s2, s1, 277f
                  slt          t5, a4, gp
                  or           a3, a1, s0
                  bne          s2, sp, 284f
                  add          s2, a7, s1
                  slli         s6, a5, 19
                  sltiu        s6, t5, -956
275:              bge          t4, t2, 278f
                  blt          t1, sp, 279f
277:              addi         a0, a1, -1541
278:              or           t1, s4, s7
279:              beq          t4, a2, 288f
                  bne          a3, s10, 295f
281:              sub          s10, s9, a3
                  slt          a1, a0, a2
                  nop
284:              sll          s9, a7, gp
                  xor          sp, s0, s5
                  addi         s9, a2, 396
                  bge          t6, s10, 295f
288:              sltiu        gp, s0, -867
                  slt          t0, t3, s5
                  beq          s8, sp, 295f
                  slt          s10, a7, t6
                  ori          t1, sp, 235
                  sub          s10, s6, t6
                  sll          s10, s1, a5
295:              srai         s8, s2, 19
                  sltu         s9, a3, a5
                  lw           s5, 4(s0)
                  auipc        s4, 1035591
                  sltu         t4, tp, s4
                  and          a5, a7, s7
                  addi         s0, s0, 12
                  srl          t4, t6, t5
429:              addi x24, x21, 1
429:              jalr x24, x24, 0
sub_2:            ori          a3, t1, -1899
                  sra          t6, s7, s11
                  xori         sp, ra, -12
                  slt          s4, gp, s8
                  addi         s0, s0, -52
                  sw           s5, 4(s0)
                  sltu         a0, zero, s3
                  slli         s9, a1, 17
                  nop
                  slli         s2, s6, 22
                  bgeu         t1, ra, sub_2_j6 #branch to jump instr
                  slli         t2, a0, 24
                  srli         gp, sp, 12
                  andi         s9, tp, 1800
                  or           a1, a0, s1
                  srli         s8, gp, 24
                  sltu         s11, s11, s9
                  sll          s7, s0, t1
sub_2_j6:         jal          s5, sub_4 #jump sub_2 -> sub_4
                  ori          s6, a5, 499
                  auipc        gp, 974669
                  add          a2, s0, t1
                  srai         s11, t0, 18
                  srl          a5, s2, s0
                  bgeu         s5, t6, 9f
                  slti         t5, a0, 2040
                  bne          a0, s0, 9f
                  sra          t2, s6, zero
9:                and          tp, zero, t4
                  slt          a1, s11, s8
                  sub          a1, a6, gp
                  lw           s5, 4(s0)
                  addi         s0, s0, 52
                  sra          s11, s2, tp
                  ori          s9, a6, 1076
                  auipc        t1, 158900
                  xor          a5, s4, sp
                  slli         a5, s11, 9
38:               addi x10, x21, 1
38:               jalr x10, x10, 0
sub_4:            and          a7, a6, s0
                  blt          a0, s4, sub_4_stack_p
                  srli         a0, a1, 8
sub_4_stack_p:    addi         s0, s0, -20
                  sw           s5, 4(s0)
                  addi         a5, t4, 471
                  and          t5, zero, a4
                  srai         s7, s5, 25
                  xor          t1, s5, s7
                  bltu         s6, s3, 7f
                  auipc        s4, 103276
                  slti         t0, a2, -1912
                  bltu         ra, sp, 15f
7:                xori         a6, s10, 1270
                  bgeu         a4, s8, 15f
                  and          a0, sp, s7
                  sll          a6, s4, s9
                  bne          t4, t3, 18f
                  auipc        s4, 1041098
                  bne          a2, s4, 22f
                  nop
15:               slti         t4, a4, -1387
                  srl          s10, s7, a6
                  sll          s2, t4, s3
18:               slt          s7, s0, s8
                  srai         s4, s9, 10
                  lui          s9, 706117
                  sltiu        a5, s5, -746
22:               nop
                  lw           s5, 4(s0)
                  andi         s6, t2, 311
                  sra          ra, a2, t4
                  and          t4, s1, ra
                  sub          ra, t0, s4
                  srl          a0, s7, s7
                  slt          t0, zero, s0
                  sltu         a3, t1, s0
                  slli         t2, s3, 4
                  slli         t5, sp, 2
                  addi         s0, s0, 20
                  addi         a4, a7, 1995
41:               addi x4, x21, 1
41:               jalr x4, x4, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x28, x8, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x19, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x19, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x19, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x19, x27, ecall_handler
                  li x27, 0x1
                  beq x19, x27, instr_fault_handler
                  li x27, 0x5
                  beq x19, x27, load_fault_handler
                  li x27, 0x7
                  beq x19, x27, store_fault_handler
                  li x27, 0xc
                  beq x19, x27, pt_fault_handler
                  li x27, 0xd
                  beq x19, x27, pt_fault_handler
                  li x27, 0xf
                  beq x19, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x8, x28, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
