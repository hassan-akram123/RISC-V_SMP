.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x29, kernel_stack_end

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
                  li x0, 0x8
                  li x1, 0x0
                  li x2, 0xa0fee234
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xf1267677
                  li x6, 0x6913a790
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x7
                  li x11, 0xf1a87b74
                  li x12, 0x91e983d5
                  li x13, 0xf91d200f
                  li x15, 0x0
                  li x16, 0xb
                  li x17, 0xc
                  li x18, 0x2
                  li x19, 0xc
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xf36e82e5
                  li x23, 0x0
                  li x24, 0xf8f864de
                  li x25, 0xa
                  li x26, 0xded55a3d
                  li x27, 0xd50ed864
                  li x28, 0x0
                  li x30, 0x80000000
                  li x31, 0xf485f937
                  la x14, user_stack_end
main:             jal          ra, 27f
0:                jal          t1, 16f
1:                jal          s10, 14f
2:                jal          ra, 28f
3:                jal          t1, 1b
4:                jal          t1, 23f
5:                jal          ra, 24f
6:                jal          a1, 3b
7:                jal          t1, 9f
8:                jal          ra, 4b
9:                jal          s7, 19f
10:               jal          t1, 5b
11:               jal          ra, 6b
12:               jal          ra, 10b
13:               jal          t1, 22f
14:               jal          s6, 18f
15:               jal          ra, 2b
16:               jal          ra, 15b
17:               jal          ra, 7b
18:               jal          s4, 26f
19:               jal          gp, 12b
20:               jal          ra, 13b
21:               jal          s10, 20b
22:               jal          t1, 29f
23:               jal          ra, 17b
24:               jal          t1, 11b
25:               jal          t0, 8b
26:               jal          s1, 0b
27:               jal          s1, 25b
28:               jal          ra, 21b
29:               auipc        s8, 928774
main_16:          jal          ra, 0f
0:                jal          t0, 12f
1:                jal          ra, 6f
2:                jal          a6, 1b
3:                jal          s4, 11f
4:                jal          ra, 9f
5:                jal          s2, 8f
6:                jal          s9, 5b
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          sp, 2b
10:               jal          ra, 3b
11:               jal          t0, 15f
12:               jal          a1, 13f
13:               jal          s5, 14f
14:               jal          ra, 7b
15:               auipc        s6, 703723
main_0:           jal          ra, 8f
0:                jal          s9, 1f
1:                jal          ra, 13f
2:                jal          t1, 9f
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          s3, 4b
7:                jal          s4, 3b
8:                jal          ra, 7b
9:                jal          s9, 11f
10:               jal          ra, 14f
11:               jal          t0, 10b
12:               jal          ra, 6b
13:               jal          s9, 12b
14:               andi         t1, a0, -615
main_2:           jal          ra, 11f
0:                jal          a5, 13f
1:                jal          tp, 14f
2:                jal          a3, 0b
3:                jal          sp, 9f
4:                jal          ra, 16f
5:                jal          ra, 1b
6:                jal          t3, 15f
7:                jal          ra, 12f
8:                jal          t2, 5b
9:                jal          t1, 6b
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          ra, 2b
13:               jal          s8, 10b
14:               jal          t1, 7b
15:               jal          ra, 4b
16:               sra          a5, ra, a7
main_3:           jal          ra, 7f
0:                jal          s8, 3f
1:                jal          t2, 11f
2:                jal          ra, 0b
3:                jal          ra, 12f
4:                jal          a5, 9f
5:                jal          gp, 14f
6:                jal          ra, 1b
7:                jal          ra, 13f
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          ra, 4b
11:               jal          ra, 16f
12:               jal          tp, 5b
13:               jal          ra, 10b
14:               jal          ra, 15f
15:               jal          ra, 8b
16:               or           s2, t1, s9
main_43:          jal          ra, 22f
0:                jal          ra, 2f
1:                jal          sp, 3f
2:                jal          t1, 23f
3:                jal          ra, 14f
4:                jal          gp, 30f
5:                jal          ra, 16f
6:                jal          ra, 5b
7:                jal          ra, 24f
8:                jal          ra, 11f
9:                jal          t1, 20f
10:               jal          t1, 12f
11:               jal          tp, 13f
12:               jal          ra, 4b
13:               jal          ra, 9b
14:               jal          t1, 27f
15:               jal          ra, 0b
16:               jal          t1, 10b
17:               jal          ra, 29f
18:               jal          ra, 21f
19:               jal          t0, 26f
20:               jal          ra, 19b
21:               jal          sp, 1b
22:               jal          ra, 7b
23:               jal          t1, 28f
24:               jal          t1, 18b
25:               jal          t1, 15b
26:               jal          a3, 17b
27:               jal          ra, 8b
28:               jal          ra, 6b
29:               jal          ra, 25b
30:               slt          gp, t3, a2
main_33:          jal          ra, 8f
0:                jal          t1, 5f
1:                jal          t1, 3f
2:                jal          ra, 1b
3:                jal          ra, 7f
4:                jal          t1, 9f
5:                jal          ra, 11f
6:                jal          t1, 13f
7:                jal          s2, 14f
8:                jal          t1, 4b
9:                jal          t1, 10f
10:               jal          t0, 12f
11:               jal          s10, 2b
12:               jal          s8, 6b
13:               jal          t0, 0b
14:               slti         a1, s3, 189
main_17:          jal          ra, 6f
0:                jal          t5, 10f
1:                jal          s2, 23f
2:                jal          t1, 24f
3:                jal          s1, 17f
4:                jal          s8, 20f
5:                jal          ra, 21f
6:                jal          ra, 11f
7:                jal          ra, 14f
8:                jal          ra, 9f
9:                jal          t2, 25f
10:               jal          t1, 16f
11:               jal          ra, 0b
12:               jal          ra, 19f
13:               jal          ra, 18f
14:               jal          s11, 12b
15:               jal          ra, 4b
16:               jal          sp, 7b
17:               jal          ra, 13b
18:               jal          t1, 2b
19:               jal          t6, 8b
20:               jal          t1, 22f
21:               jal          ra, 15b
22:               jal          t0, 3b
23:               jal          ra, 26f
24:               jal          t1, 1b
25:               jal          ra, 5b
26:               addi         a5, s10, -1658
main_11:          jal          ra, 2f
0:                jal          ra, 3f
1:                jal          ra, 10f
2:                jal          ra, 5f
3:                jal          a5, 4f
4:                jal          t5, 7f
5:                jal          ra, 6f
6:                jal          t1, 1b
7:                jal          t0, 9f
8:                jal          ra, 0b
9:                jal          s2, 11f
10:               jal          ra, 8b
11:               slti         a7, gp, 897
main_32:          jal          ra, 5f
0:                jal          ra, 7f
1:                jal          t0, 6f
2:                jal          ra, 1b
3:                jal          a3, 15f
4:                jal          gp, 13f
5:                jal          ra, 12f
6:                jal          t1, 18f
7:                jal          ra, 4b
8:                jal          tp, 9f
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          ra, 16f
12:               jal          t1, 11b
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               jal          ra, 8b
16:               jal          s8, 17f
17:               jal          ra, 10b
18:               slti         tp, t1, 625
main_51:          jal          ra, 19f
0:                jal          s9, 14f
1:                jal          s1, 2f
2:                jal          t1, 6f
3:                jal          t1, 13f
4:                jal          t3, 8f
5:                jal          ra, 16f
6:                jal          t1, 5b
7:                jal          ra, 1b
8:                jal          t1, 9f
9:                jal          ra, 17f
10:               jal          t1, 0b
11:               jal          a5, 7b
12:               jal          ra, 10b
13:               jal          ra, 20f
14:               jal          t1, 11b
15:               jal          ra, 18f
16:               jal          ra, 4b
17:               jal          t1, 15b
18:               jal          t1, 3b
19:               jal          t0, 12b
20:               lui          t0, 230629
main_13:          jal          ra, 7f
0:                jal          ra, 13f
1:                jal          t1, 6f
2:                jal          tp, 9f
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          s1, 11f
6:                jal          s8, 3b
7:                jal          t1, 4b
8:                jal          s2, 14f
9:                jal          t1, 10f
10:               jal          t0, 0b
11:               jal          t1, 12f
12:               jal          t1, 8b
13:               jal          t1, 1b
14:               lui          s2, 735530
main_36:          jal          ra, 12f
0:                jal          s4, 6f
1:                jal          ra, 15f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          t1, 2b
5:                jal          t5, 13f
6:                jal          a0, 3b
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          tp, 4b
10:               jal          t1, 1b
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               jal          a1, 11b
14:               jal          a2, 9b
15:               sra          s3, s6, t6
main_1:           jal          ra, 1f
0:                jal          s5, 5f
1:                jal          t6, 6f
2:                jal          t1, 10f
3:                jal          t1, 7f
4:                jal          ra, 9f
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          ra, 8f
8:                jal          sp, 0b
9:                jal          ra, 2b
10:               ori          t2, zero, 392
main_34:          jal          ra, 22f
0:                jal          ra, 15f
1:                jal          s5, 17f
2:                jal          s11, 27f
3:                jal          s10, 9f
4:                jal          ra, 16f
5:                jal          t1, 6f
6:                jal          a6, 0b
7:                jal          ra, 4b
8:                jal          t1, 12f
9:                jal          t1, 14f
10:               jal          ra, 7b
11:               jal          ra, 29f
12:               jal          t0, 20f
13:               jal          ra, 3b
14:               jal          sp, 21f
15:               jal          ra, 10b
16:               jal          t6, 28f
17:               jal          t3, 18f
18:               jal          t1, 24f
19:               jal          ra, 13b
20:               jal          s6, 26f
21:               jal          t1, 25f
22:               jal          ra, 23f
23:               jal          ra, 5b
24:               jal          ra, 19b
25:               jal          t1, 11b
26:               jal          ra, 2b
27:               jal          t1, 1b
28:               jal          s3, 8b
29:               sltu         t5, t0, s10
main_24:          jal          ra, 19f
0:                jal          s4, 27f
1:                jal          s2, 4f
2:                jal          ra, 1b
3:                jal          s5, 13f
4:                jal          t1, 18f
5:                jal          ra, 29f
6:                jal          ra, 14f
7:                jal          ra, 0b
8:                jal          a1, 24f
9:                jal          s10, 16f
10:               jal          t3, 21f
11:               jal          sp, 10b
12:               jal          s3, 6b
13:               jal          ra, 2b
14:               jal          ra, 5b
15:               jal          t1, 25f
16:               jal          ra, 20f
17:               jal          s1, 22f
18:               jal          s7, 26f
19:               jal          a5, 9b
20:               jal          ra, 3b
21:               jal          ra, 7b
22:               jal          t1, 15b
23:               jal          ra, 28f
24:               jal          t5, 23b
25:               jal          ra, 12b
26:               jal          ra, 11b
27:               jal          t1, 8b
28:               jal          ra, 17b
29:               add          s10, t1, a4
main_39:          jal          ra, 18f
0:                jal          s9, 13f
1:                jal          ra, 12f
2:                jal          ra, 19f
3:                jal          t1, 10f
4:                jal          s9, 1b
5:                jal          t1, 21f
6:                jal          ra, 9f
7:                jal          ra, 14f
8:                jal          t1, 11f
9:                jal          ra, 15f
10:               jal          ra, 5b
11:               jal          s3, 4b
12:               jal          ra, 6b
13:               jal          a1, 16f
14:               jal          s4, 3b
15:               jal          t1, 2b
16:               jal          ra, 17f
17:               jal          ra, 20f
18:               jal          t6, 8b
19:               jal          t6, 0b
20:               jal          t1, 7b
21:               srai         a0, s9, 21
main_49:          jal          ra, 15f
0:                jal          gp, 12f
1:                jal          t1, 16f
2:                jal          ra, 14f
3:                jal          ra, 2b
4:                jal          ra, 13f
5:                jal          s2, 10f
6:                jal          ra, 11f
7:                jal          ra, 3b
8:                jal          t1, 9f
9:                jal          ra, 0b
10:               jal          ra, 8b
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               jal          t1, 6b
14:               jal          t1, 4b
15:               jal          a5, 5b
16:               sub          tp, s9, s3
main_25:          jal          ra, 26f
0:                jal          ra, 7f
1:                jal          ra, 16f
2:                jal          t1, 30f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          a7, 18f
6:                jal          ra, 2b
7:                jal          ra, 23f
8:                jal          t1, 20f
9:                jal          ra, 24f
10:               jal          ra, 14f
11:               jal          t5, 29f
12:               jal          ra, 15f
13:               jal          t1, 3b
14:               jal          t6, 19f
15:               jal          ra, 17f
16:               jal          ra, 4b
17:               jal          ra, 10b
18:               jal          t6, 8b
19:               jal          ra, 0b
20:               jal          sp, 1b
21:               jal          ra, 12b
22:               jal          ra, 9b
23:               jal          t1, 28f
24:               jal          t1, 6b
25:               jal          t1, 27f
26:               jal          s4, 21b
27:               jal          a0, 22b
28:               jal          ra, 13b
29:               jal          t1, 25b
30:               add          t5, a5, t5
main_10:          jal          ra, 10f
0:                jal          t1, 7f
1:                jal          ra, 2f
2:                jal          tp, 13f
3:                jal          t1, 9f
4:                jal          ra, 15f
5:                jal          t1, 1b
6:                jal          ra, 18f
7:                jal          ra, 8f
8:                jal          t1, 16f
9:                jal          ra, 17f
10:               jal          t1, 4b
11:               jal          t3, 0b
12:               jal          ra, 6b
13:               jal          t0, 14f
14:               jal          ra, 12b
15:               jal          t1, 11b
16:               jal          ra, 3b
17:               jal          ra, 5b
18:               sra          s3, s11, s6
main_19:          jal          ra, 25f
0:                jal          ra, 22f
1:                jal          t1, 19f
2:                jal          ra, 27f
3:                jal          gp, 21f
4:                jal          ra, 0b
5:                jal          t1, 3b
6:                jal          t0, 4b
7:                jal          t3, 28f
8:                jal          ra, 24f
9:                jal          ra, 29f
10:               jal          ra, 6b
11:               jal          t1, 12f
12:               jal          ra, 26f
13:               jal          ra, 14f
14:               jal          tp, 10b
15:               jal          ra, 17f
16:               jal          ra, 2b
17:               jal          s10, 8b
18:               jal          s3, 13b
19:               jal          ra, 11b
20:               jal          ra, 18b
21:               jal          t1, 16b
22:               jal          t1, 23f
23:               jal          ra, 9b
24:               jal          ra, 20b
25:               jal          ra, 7b
26:               jal          ra, 5b
27:               jal          ra, 15b
28:               jal          ra, 1b
29:               auipc        s5, 550427
main_40:          jal          ra, 7f
0:                jal          t6, 11f
1:                jal          t5, 8f
2:                jal          a7, 1b
3:                jal          s1, 13f
4:                jal          ra, 3b
5:                jal          tp, 12f
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          t1, 10f
9:                jal          s1, 4b
10:               jal          t1, 6b
11:               jal          t1, 5b
12:               jal          ra, 2b
13:               sll          a2, a5, t0
main_15:          jal          ra, 3f
0:                jal          t1, 2f
1:                jal          ra, 14f
2:                jal          sp, 16f
3:                jal          t3, 7f
4:                jal          ra, 0b
5:                jal          tp, 25f
6:                jal          s4, 24f
7:                jal          ra, 17f
8:                jal          ra, 10f
9:                jal          t2, 26f
10:               jal          s4, 22f
11:               jal          s4, 12f
12:               jal          t2, 18f
13:               jal          ra, 4b
14:               jal          ra, 5b
15:               jal          ra, 23f
16:               jal          gp, 27f
17:               jal          ra, 20f
18:               jal          ra, 9b
19:               jal          ra, 11b
20:               jal          tp, 15b
21:               jal          ra, 19b
22:               jal          ra, 21b
23:               jal          s8, 8b
24:               jal          ra, 1b
25:               jal          ra, 13b
26:               jal          s5, 6b
27:               xor          gp, a3, s2
main_42:          jal          ra, 9f
0:                jal          ra, 1f
1:                jal          tp, 10f
2:                jal          gp, 11f
3:                jal          ra, 15f
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          t1, 14f
7:                jal          ra, 5b
8:                jal          t6, 13f
9:                jal          ra, 2b
10:               jal          ra, 4b
11:               jal          t0, 7b
12:               jal          t0, 3b
13:               jal          ra, 6b
14:               jal          t0, 0b
15:               sltiu        a7, sp, -21
main_45:          jal          ra, 8f
0:                jal          ra, 5f
1:                jal          sp, 28f
2:                jal          ra, 27f
3:                jal          ra, 12f
4:                jal          s9, 19f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          ra, 22f
11:               jal          ra, 18f
12:               jal          tp, 13f
13:               jal          ra, 20f
14:               jal          t1, 17f
15:               jal          a1, 6b
16:               jal          t0, 3b
17:               jal          s3, 7b
18:               jal          a3, 21f
19:               jal          ra, 24f
20:               jal          ra, 15b
21:               jal          ra, 16b
22:               jal          t1, 25f
23:               jal          ra, 4b
24:               jal          t1, 0b
25:               jal          ra, 26f
26:               jal          t1, 23b
27:               jal          ra, 11b
28:               ori          s10, t4, -1449
main_35:          jal          ra, 0f
0:                jal          ra, 6f
1:                jal          t1, 5f
2:                jal          ra, 9f
3:                jal          gp, 7f
4:                jal          t1, 1b
5:                jal          ra, 2b
6:                jal          ra, 8f
7:                jal          a7, 4b
8:                jal          t1, 3b
9:                jal          ra, 10f
10:               sra          a2, s11, s7
main_20:          jal          ra, 19f
0:                jal          ra, 6f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          ra, 22f
4:                jal          a0, 7f
5:                jal          ra, 17f
6:                jal          gp, 16f
7:                jal          s9, 5b
8:                jal          a5, 11f
9:                jal          a2, 4b
10:               jal          ra, 18f
11:               jal          ra, 15f
12:               jal          t5, 9b
13:               jal          s11, 10b
14:               jal          ra, 21f
15:               jal          t0, 1b
16:               jal          ra, 8b
17:               jal          ra, 3b
18:               jal          gp, 20f
19:               jal          a5, 2b
20:               jal          s5, 12b
21:               jal          ra, 0b
22:               andi         t3, s8, -208
main_29:          jal          ra, 19f
0:                jal          t0, 15f
1:                jal          t1, 12f
2:                jal          t5, 11f
3:                jal          a5, 10f
4:                jal          ra, 22f
5:                jal          ra, 1b
6:                jal          ra, 23f
7:                jal          sp, 18f
8:                jal          ra, 17f
9:                jal          ra, 16f
10:               jal          ra, 4b
11:               jal          gp, 8b
12:               jal          sp, 21f
13:               jal          a2, 6b
14:               jal          a7, 5b
15:               jal          ra, 20f
16:               jal          ra, 13b
17:               jal          t1, 14b
18:               jal          s7, 0b
19:               jal          ra, 3b
20:               jal          ra, 9b
21:               jal          ra, 7b
22:               jal          ra, 2b
23:               add          a1, a0, s9
main_22:          jal          ra, 16f
0:                jal          t1, 12f
1:                jal          t1, 15f
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          ra, 23f
5:                jal          s1, 22f
6:                jal          t1, 8f
7:                jal          ra, 10f
8:                jal          ra, 11f
9:                jal          s4, 13f
10:               jal          ra, 20f
11:               jal          t1, 1b
12:               jal          t1, 14f
13:               jal          ra, 2b
14:               jal          ra, 18f
15:               jal          ra, 3b
16:               jal          ra, 0b
17:               jal          t1, 4b
18:               jal          ra, 6b
19:               jal          ra, 17b
20:               jal          t5, 5b
21:               jal          ra, 19b
22:               jal          t1, 21b
23:               sltiu        s6, zero, 703
main_5:           jal          ra, 12f
0:                jal          gp, 1f
1:                jal          ra, 14f
2:                jal          ra, 18f
3:                jal          t1, 0b
4:                jal          t1, 9f
5:                jal          ra, 2b
6:                jal          ra, 17f
7:                jal          ra, 6b
8:                jal          s3, 13f
9:                jal          tp, 15f
10:               jal          ra, 16f
11:               jal          ra, 7b
12:               jal          ra, 19f
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          t3, 5b
16:               jal          t1, 3b
17:               jal          ra, 20f
18:               jal          ra, 8b
19:               jal          ra, 4b
20:               slti         s9, a5, 1240
main_18:          jal          ra, 4f
0:                jal          tp, 5f
1:                jal          ra, 7f
2:                jal          tp, 8f
3:                jal          ra, 12f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          t1, 10f
7:                jal          s3, 11f
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          ra, 2b
11:               jal          ra, 3b
12:               andi         s10, a1, 130
main_6:           jal          ra, 12f
0:                jal          s2, 4f
1:                jal          s5, 0b
2:                jal          ra, 9f
3:                jal          t6, 1b
4:                jal          t0, 14f
5:                jal          a5, 7f
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          ra, 6b
9:                jal          a7, 17f
10:               jal          t2, 18f
11:               jal          ra, 13f
12:               jal          t1, 5b
13:               jal          ra, 3b
14:               jal          ra, 16f
15:               jal          a7, 11b
16:               jal          ra, 10b
17:               jal          ra, 8b
18:               slt          s4, s8, zero
main_47:          jal          ra, 8f
0:                jal          t1, 17f
1:                jal          s7, 5f
2:                jal          ra, 14f
3:                jal          t1, 20f
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          sp, 12f
8:                jal          ra, 16f
9:                jal          a5, 7b
10:               jal          ra, 23f
11:               jal          s5, 21f
12:               jal          t1, 3b
13:               jal          s7, 10b
14:               jal          a3, 19f
15:               jal          a7, 9b
16:               jal          ra, 24f
17:               jal          t1, 22f
18:               jal          t1, 15b
19:               jal          sp, 13b
20:               jal          ra, 25f
21:               jal          ra, 26f
22:               jal          t1, 4b
23:               jal          t1, 11b
24:               jal          ra, 18b
25:               jal          s6, 0b
26:               auipc        s2, 972640
main_30:          jal          ra, 5f
0:                jal          ra, 6f
1:                jal          t5, 2f
2:                jal          s9, 8f
3:                jal          t1, 4f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          t1, 3b
7:                jal          ra, 9f
8:                jal          t1, 0b
9:                jal          t1, 1b
10:               jal          s1, 11f
11:               nop
main_50:          jal          ra, 26f
0:                jal          gp, 16f
1:                jal          ra, 27f
2:                jal          a1, 19f
3:                jal          ra, 11f
4:                jal          ra, 25f
5:                jal          ra, 8f
6:                jal          t0, 21f
7:                jal          ra, 18f
8:                jal          s2, 13f
9:                jal          ra, 5b
10:               jal          t2, 0b
11:               jal          t1, 6b
12:               jal          t1, 4b
13:               jal          s1, 20f
14:               jal          ra, 17f
15:               jal          t1, 23f
16:               jal          ra, 22f
17:               jal          t0, 3b
18:               jal          ra, 1b
19:               jal          tp, 12b
20:               jal          s5, 24f
21:               jal          ra, 15b
22:               jal          s7, 2b
23:               jal          ra, 9b
24:               jal          ra, 10b
25:               jal          t1, 7b
26:               jal          ra, 14b
27:               andi         a7, a3, 1494
main_21:          jal          ra, 12f
0:                jal          s9, 9f
1:                jal          t1, 11f
2:                jal          t1, 6f
3:                jal          t0, 10f
4:                jal          t1, 2b
5:                jal          s11, 1b
6:                jal          ra, 16f
7:                jal          ra, 3b
8:                jal          gp, 15f
9:                jal          t1, 4b
10:               jal          t1, 14f
11:               jal          ra, 0b
12:               jal          t1, 8b
13:               jal          sp, 7b
14:               jal          ra, 5b
15:               jal          t1, 13b
16:               nop
main_48:          jal          ra, 6f
0:                jal          ra, 5f
1:                jal          t1, 0b
2:                jal          ra, 18f
3:                jal          ra, 19f
4:                jal          t1, 3b
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          s7, 8f
8:                jal          a3, 9f
9:                jal          ra, 17f
10:               jal          ra, 16f
11:               jal          t2, 12f
12:               jal          ra, 13f
13:               jal          a0, 20f
14:               jal          ra, 7b
15:               jal          t1, 4b
16:               jal          ra, 15b
17:               jal          t1, 2b
18:               jal          ra, 1b
19:               jal          ra, 14b
20:               sltu         tp, a0, s11
                  beq          s9, s6, 10f
                  sub          t5, s2, t3
                  sll          a0, a5, t0
                  add          s5, s2, t0
                  or           s6, t1, s10
                  sll          s4, a5, a5
                  srl          t5, a2, a1
                  sub          gp, a0, s2
                  sra          s5, s7, s5
                  srl          a3, a2, tp
10:               xori         s10, s8, 201
                  sltiu        a3, t6, 527
                  slli         s10, a1, 31
                  auipc        ra, 908963
                  slti         gp, a4, 2047
                  sltiu        a6, s3, -1062
                  or           s9, a1, ra
                  bgeu         s1, a6, 37f
                  bltu         s8, t3, 27f
                  blt          s11, tp, 23f
                  bltu         a2, t0, 32f
                  bne          s2, s5, 24f
                  or           t5, a3, zero
23:               sra          a2, a7, a1
24:               or           a2, a7, s6
                  srai         a6, s5, 21
                  auipc        s9, 151631
27:               blt          zero, s6, 47f
                  slli         s3, s8, 18
                  sra          s8, a3, gp
                  sra          t5, a1, a3
                  slli         a3, s4, 5
32:               bne          s8, s4, 45f
                  sltiu        a7, s5, 2017
                  sltiu        t6, t1, -738
                  bltu         s2, t1, 42f
                  bltu         a6, s5, 46f
37:               slt          s9, s0, a3
                  and          ra, ra, s3
                  beq          a2, a0, 51f
                  bltu         s4, s6, 52f
                  sll          t6, t3, s8
42:               sub          s11, t4, t6
                  and          a7, s11, s6
                  blt          t2, a2, 60f
45:               blt          s6, a5, 56f
46:               blt          tp, t0, 63f
47:               ori          zero, sp, 1890
                  sltiu        s4, s2, 1017
                  slli         gp, a6, 20
                  srl          tp, t1, s2
51:               sll          t6, s3, s7
52:               nop
                  or           s4, ra, a6
                  auipc        s1, 761870
                  beq          s6, s8, 67f
56:               bltu         a3, a4, 67f
                  srli         s3, s1, 10
                  xor          t6, t2, a2
                  sltu         a6, s0, a5
60:               add          ra, a4, a0
                  or           a6, t2, s4
                  and          s6, tp, t3
63:               xori         zero, gp, 461
                  sltu         t0, a2, t1
                  add          a7, tp, s4
                  srli         t1, a1, 22
67:               beq          s4, s11, 75f
                  beq          s5, a7, 69f
69:               bltu         tp, s10, 82f
                  slli         a1, t0, 25
                  sll          s8, a7, s9
                  bne          a3, a7, 90f
                  srai         s7, s8, 25
                  sra          sp, a6, ra
75:               blt          t4, a3, 86f
                  sub          a7, s7, a1
                  srai         t2, a0, 4
                  lui          s4, 791225
                  srai         s4, t5, 21
                  srli         s8, a6, 5
                  add          s3, a2, s5
82:               lui          t6, 958107
                  bltu         t0, gp, 85f
                  slli         t3, t5, 25
85:               slt          s1, s0, tp
86:               bgeu         a7, a1, 101f
                  srl          s7, a1, sp
                  slt          gp, s9, a5
                  lui          gp, 826489
90:               slti         s3, s11, -1903
                  slli         sp, a7, 14
                  slti         a6, t3, -1316
                  auipc        a5, 892662
                  bne          t5, a2, 114f
                  add          ra, t6, tp
                  bne          a6, t5, 110f
                  slli         s3, s10, 6
                  srli         s5, a5, 3
                  sra          s9, s8, t5
                  bltu         s2, s4, 106f
101:              srli         a1, s7, 2
                  bge          a2, s2, 113f
                  lui          zero, 533731
                  auipc        s9, 101198
                  or           s8, sp, a3
106:              sltu         a0, a4, s1
                  bne          a4, a7, 118f
                  srl          s2, s6, tp
                  addi         t5, zero, 1812
110:              bgeu         tp, a0, 118f
                  bltu         t4, s1, 118f
                  slti         s9, a5, 1784
113:              sll          t6, sp, ra
114:              bltu         s3, s3, 115f
115:              sub          a6, a6, s4
                  slli         tp, t5, 0
                  and          a0, ra, gp
118:              sltu         a7, t1, ra
                  srai         a7, t0, 31
                  bltu         s0, a0, 128f
                  andi         t3, t6, -1973
                  slti         tp, t1, -971
                  addi         s6, a5, 1355
                  sltiu        a3, s7, -1633
                  nop
                  srl          t6, s11, s1
                  sltiu        tp, a1, 1463
128:              sll          a7, s2, s5
                  lui          a1, 1006157
                  auipc        a7, 827331
                  blt          ra, ra, 143f
                  bgeu         s4, sp, 142f
                  addi         gp, ra, -363
                  sub          s3, a5, t4
                  slli         t6, s3, 24
                  lui          s2, 686146
                  xor          a1, ra, s9
                  sub          s3, a7, a0
                  addi         sp, a3, -248
                  sra          t1, a1, s8
                  ori          a6, s2, 1458
142:              add          s7, s4, s0
143:              sra          t3, a5, a0
                  and          t5, s3, s1
                  slli         tp, t0, 30
                  srli         a3, s7, 7
                  blt          a0, t3, 158f
                  bge          s11, s0, 162f
                  xor          s5, s0, t5
                  and          t3, s9, a4
                  blt          s9, a2, 160f
                  and          a7, gp, t4
                  srai         t3, s2, 25
                  xor          s4, a2, s5
                  bge          s8, s11, 163f
                  nop
                  bge          t2, t1, 169f
158:              slti         t0, t4, 649
                  and          a5, a7, t0
160:              sltu         s2, a6, a1
                  sub          s3, s4, s11
162:              lui          a5, 22486
163:              ori          s7, zero, -1267
                  srli         s8, s4, 6
                  sll          t6, s6, t6
                  beq          s5, ra, 177f
                  sra          s9, a6, a7
                  auipc        a3, 291423
169:              slli         a6, gp, 21
                  or           s10, s9, a2
                  addi         s5, s11, 1367
                  srl          s9, s1, s6
                  auipc        s2, 728414
                  auipc        gp, 778300
                  beq          sp, a0, 179f
                  add          s10, s3, ra
177:              lui          ra, 82410
                  andi         ra, ra, -569
179:              sltiu        s10, s11, -1949
                  auipc        a7, 23516
                  sltu         t2, a0, s10
                  slti         a7, a6, -637
                  andi         a6, t4, 801
                  slt          s4, gp, t0
                  sub          s7, a0, s6
                  slti         gp, s1, 25
                  auipc        t5, 376799
                  and          zero, s10, s2
                  sub          s7, gp, t3
                  xor          s4, tp, t0
                  bge          s6, sp, 193f
                  beq          s7, s11, 204f
193:              auipc        tp, 231954
                  sll          gp, s1, t4
                  and          t1, zero, s2
                  ori          sp, t1, 1268
                  ori          t1, zero, 184
                  nop
                  slli         a3, s9, 4
                  srli         zero, s9, 1
                  beq          zero, s7, 207f
                  sltiu        sp, s9, 1160
                  bne          a3, ra, 216f
204:              slli         s2, s2, 23
                  bge          a3, s7, 217f
                  slti         a1, a0, 1647
207:              bltu         s1, ra, 227f
                  blt          t1, s8, 228f
                  srl          ra, tp, t1
                  blt          s10, a4, 221f
                  addi         s10, s5, -718
                  slt          s5, t2, s8
                  sltiu        s5, a7, -30
                  sltiu        a1, a5, -1755
                  xori         s10, zero, 972
216:              auipc        sp, 685386
217:              slli         s11, a5, 5
                  addi         a6, s10, 1784
                  addi         t3, s9, -1392
                  and          s10, s9, a7
221:              srl          s5, t2, t1
                  xor          t0, tp, s7
                  bgeu         a5, t3, 240f
                  add          s11, s6, zero
                  or           a0, s1, ra
                  sltu         t1, s5, a4
227:              bne          t0, s0, 230f
228:              sltiu        s1, a4, 660
                  addi         s8, tp, 2018
230:              srli         s4, s5, 3
                  andi         s1, a0, 878
                  auipc        ra, 795077
                  sub          sp, s3, a5
                  addi         gp, a3, -2002
                  bltu         s5, s8, 246f
                  sra          zero, s5, t5
                  beq          sp, t0, 250f
                  slli         t0, t5, 17
                  ori          t3, a7, -1213
240:              blt          a4, s9, 255f
                  srai         gp, a1, 23
                  auipc        s1, 478098
                  bgeu         a6, s7, 253f
                  auipc        s8, 550683
                  slti         s5, s8, -523
246:              bne          s9, s5, 262f
                  lui          s5, 307729
                  srl          t0, a0, s5
                  srli         tp, s8, 5
250:              or           gp, s9, t5
                  slli         s3, zero, 2
                  sltiu        s3, t3, -1408
253:              blt          a0, a3, 271f
                  nop
255:              and          t0, s4, s9
main_31:          jal          ra, 2f
0:                jal          ra, 12f
1:                jal          a6, 7f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          s9, 14f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          ra, 13f
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          s1, 6b
12:               jal          sp, 11b
13:               jal          a1, 5b
14:               sltiu        a6, s8, -1809
                  sltiu        s7, s11, -1573
                  ori          t1, s8, 1548
                  andi         zero, s11, -2006
                  sll          gp, a6, s1
                  or           a2, t3, sp
                  and          a7, s7, s3
262:              add          t3, sp, t4
                  add          a0, zero, s10
                  sra          s6, a6, s6
                  sll          t1, gp, gp
                  sub          s10, a0, t2
                  bge          sp, s2, 278f
                  lui          t6, 750259
                  addi         s11, s7, -996
                  slt          s5, a6, ra
271:              or           a2, s11, t2
                  srli         zero, s9, 17
                  and          t5, s3, tp
                  slt          t5, s8, tp
                  bgeu         a3, s1, 295f
                  xor          a1, zero, a0
                  sltiu        sp, t4, 50
278:              sll          s3, t1, s2
                  slli         a2, t3, 7
                  srl          t2, t0, t2
                  sub          s8, s4, a5
                  sltu         gp, tp, t3
                  ori          s6, s10, -807
                  sltu         zero, ra, s1
                  slli         s6, a5, 22
                  or           a1, a1, a1
                  auipc        t1, 139472
                  beq          a4, s5, 299f
                  sltiu        a3, s7, -968
                  lui          a0, 819665
                  andi         s10, tp, -1
                  slt          s6, s9, s10
                  bne          tp, a3, 306f
                  sltu         s2, t5, s9
295:              addi         s4, s9, 470
                  sll          t2, s3, tp
                  sll          t3, s6, s9
                  ori          s8, a6, -1150
299:              bltu         s11, s8, 312f
                  bltu         gp, s3, 314f
                  srli         s6, s6, 26
                  or           a2, gp, s4
                  or           a7, a4, a1
                  srl          a0, a1, a6
                  auipc        a0, 363089
306:              ori          a7, ra, 1654
                  addi         t1, a4, 1865
                  slti         t5, s2, 273
                  slli         s8, a7, 25
                  lui          s6, 437272
                  addi         t3, s9, -1935
312:              lui          t5, 312092
                  srai         t1, s6, 18
314:              sltu         sp, gp, sp
                  sltiu        s4, t0, 1632
                  srl          tp, s1, s1
                  beq          s11, s3, 329f
                  xor          t6, t4, s2
                  beq          sp, t2, 323f
                  beq          s1, s1, 326f
                  sra          s5, sp, s9
                  sub          s1, t0, zero
323:              bltu         t4, t3, 335f
                  srai         s3, sp, 14
                  bltu         a0, zero, 337f
326:              auipc        s7, 374093
                  or           t6, a0, a4
                  sltiu        t5, ra, 1326
329:              beq          a1, s5, 330f
330:              xor          a0, a3, a5
                  sll          s1, sp, t1
                  sll          t0, sp, a0
                  andi         s11, s3, -1343
                  srai         a6, s7, 29
335:              sltu         s7, t2, s1
                  bge          s2, s0, 354f
337:              sub          s6, t4, a2
                  add          sp, t4, s7
                  ori          a1, s1, 139
                  lui          a3, 827896
                  lui          a7, 1006738
                  ori          a2, t0, -646
                  sub          t6, t2, s1
                  srl          a5, t3, ra
                  or           s9, gp, a0
                  bltu         sp, a5, 363f
                  beq          s1, s3, 355f
                  lui          a3, 12241
                  auipc        t6, 5397
                  lui          a7, 3322
                  and          a0, a4, s0
                  xor          t0, s8, a5
                  andi         t2, s0, 1799
354:              addi         a1, s4, -823
355:              add          s9, a5, s5
                  bge          a7, tp, 367f
                  blt          s6, s2, 360f
                  nop
                  addi         s5, t3, -1646
360:              sll          a2, s1, zero
                  bgeu         t1, s11, 372f
                  sub          t1, a4, a2
363:              addi         t5, t4, 1208
                  sra          s6, a2, a1
                  sll          s11, t1, a6
                  or           t6, t2, t4
367:              srl          t0, a4, t2
                  sra          s4, t3, s8
                  andi         t2, s9, -1259
                  slt          a3, t5, t5
                  auipc        t2, 936775
372:              srli         t6, a3, 22
                  sltu         s5, a7, ra
                  slli         zero, a2, 6
                  ori          s3, a2, 191
                  xor          t6, t1, s11
                  sra          s5, ra, t1
                  sltu         s3, t0, s4
                  slt          s10, a0, t3
                  sub          s3, ra, s4
                  bgeu         zero, s1, 401f
                  bgeu         s0, s9, 393f
                  or           t0, s4, s3
                  slt          s4, s11, ra
                  andi         gp, s4, -1471
                  lui          tp, 328153
                  xori         tp, a1, 1463
                  addi         a2, a0, 1813
                  sll          a5, t6, gp
                  sll          s7, ra, a6
                  and          a0, a4, s7
                  ori          t6, s3, 790
393:              add          s7, a3, s6
                  bgeu         s9, ra, 404f
                  blt          t4, s1, 411f
                  add          s10, s2, a2
                  srai         a2, ra, 30
                  sll          a5, s4, s11
                  sra          s9, s6, a0
                  beq          t2, t1, 408f
401:              andi         s9, s5, -721
                  addi         zero, a6, 1274
                  srl          s5, s8, s7
404:              slt          t3, s0, a1
                  xor          a6, ra, t0
                  beq          tp, a1, 421f
                  add          t2, s2, s3
408:              srai         t3, a2, 1
                  slt          t6, t0, t4
                  and          s6, s4, ra
411:              or           t5, s7, a5
                  srl          a1, a6, ra
                  bgeu         t6, t1, 433f
                  slt          ra, t2, s2
                  sra          s7, t3, tp
                  bge          s4, s6, 418f
                  sub          t6, s3, a0
418:              srl          gp, s5, gp
                  andi         t5, s7, -1737
                  xori         s10, t4, 618
421:              slti         ra, s5, 1235
                  srli         a5, s10, 24
                  slt          a0, zero, t4
                  sra          a0, s3, t4
                  srli         s4, s5, 17
                  bne          gp, s9, 433f
                  slt          s1, s4, t0
                  xori         a5, zero, -1036
                  srai         a5, t2, 3
                  slti         s3, s2, -1621
                  srl          s8, s1, s9
                  srli         a7, t0, 19
433:              xor          s8, s10, zero
                  sltiu        a3, s6, 732
                  srl          a5, s6, zero
                  sll          t0, a0, t1
                  nop
                  andi         a6, t2, 1017
                  sub          tp, t1, ra
                  lui          a2, 281828
                  xori         s5, a3, -1480
                  or           ra, t2, s0
                  nop
                  lui          t1, 979516
                  beq          t6, s6, 465f
                  nop
                  sll          s4, zero, s2
                  ori          a6, zero, -1131
                  bne          t5, s10, 459f
                  addi         t6, s9, 771
                  bge          s3, t6, 460f
                  bge          t2, t4, 463f
                  andi         t5, t1, 718
                  srai         t6, s6, 10
                  bge          ra, a7, 467f
                  blt          s3, tp, 467f
                  srai         t2, s8, 9
                  bgeu         s1, tp, 478f
459:              bge          s11, t3, 471f
460:              sltu         s4, s8, a0
                  bne          t2, t5, 476f
                  slli         sp, a0, 25
463:              sll          s6, t3, a6
                  sll          s9, s3, a6
465:              addi         s6, a5, -234
                  sub          a5, a2, s6
467:              xor          tp, t6, s9
                  beq          s3, t0, 476f
                  slt          ra, t0, a2
                  srl          a1, s0, t6
471:              bge          a6, t0, 478f
                  srl          s10, t5, a7
                  beq          s1, t0, 483f
                  srli         s4, t1, 19
                  slti         s2, s8, 183
476:              srai         s4, s6, 30
                  sltiu        s3, a7, -591
478:              nop
                  sltu         a0, t2, t4
                  nop
                  andi         s3, a0, -35
                  ori          gp, a7, -1764
483:              bne          t5, t6, 496f
                  srli         s7, s2, 7
                  sltu         s3, s6, t3
main_26:          jal          ra, 4f
0:                jal          t1, 23f
1:                jal          ra, 21f
2:                jal          gp, 5f
3:                jal          t1, 8f
4:                jal          t0, 20f
5:                jal          a0, 15f
6:                jal          sp, 9f
7:                jal          t1, 18f
8:                jal          ra, 1b
9:                jal          ra, 27f
10:               jal          t1, 24f
11:               jal          t1, 0b
12:               jal          ra, 14f
13:               jal          ra, 3b
14:               jal          ra, 26f
15:               jal          ra, 22f
16:               jal          ra, 28f
17:               jal          ra, 6b
18:               jal          t1, 2b
19:               jal          ra, 25f
20:               jal          t1, 12b
21:               jal          ra, 16b
22:               jal          ra, 11b
23:               jal          gp, 17b
24:               jal          t1, 13b
25:               jal          ra, 10b
26:               jal          tp, 7b
27:               jal          t1, 19b
28:               lui          a5, 699538
                  andi         a1, zero, -1884
                  add          s5, gp, s4
                  srli         t2, t2, 5
                  lui          t0, 250266
                  sll          t5, s0, t1
                  sll          s4, zero, s7
                  beq          s0, ra, 512f
                  and          zero, a3, t3
                  sll          s9, t1, a0
                  sll          t5, a3, sp
496:              bltu         a3, t2, 512f
                  add          a1, a2, a7
                  lui          s1, 927692
                  slti         s11, s2, 1071
                  bgeu         s11, tp, 508f
                  slti         s6, s6, 1156
                  beq          gp, s9, 514f
                  sra          a1, s2, s7
                  blt          a5, t4, 516f
                  lui          s11, 871535
                  sra          a2, t5, t2
                  lui          gp, 191590
508:              srai         t2, s7, 4
                  bltu         t0, s1, 523f
                  srai         a2, t4, 29
                  sll          zero, s10, s6
512:              or           s9, t4, tp
                  bgeu         t2, a1, 524f
514:              srai         t0, s8, 6
                  addi         sp, s5, -135
516:              bgeu         t5, s9, 520f
                  or           t1, a1, s0
                  andi         s4, zero, -347
                  srli         s9, s11, 30
520:              andi         zero, t3, 1557
                  slli         a3, s8, 7
                  lui          s10, 63344
523:              sra          t6, s6, t0
524:              auipc        t5, 877950
                  addi         a2, s10, -1102
                  andi         s10, t4, -606
                  auipc        gp, 332267
                  nop
                  xori         a7, s11, -48
                  xori         t2, t1, -535
                  bgeu         a7, t2, 549f
                  bltu         t2, s8, 538f
                  or           sp, a4, s8
                  xor          s3, a5, t6
                  auipc        t2, 918674
                  bne          s9, t0, 547f
                  nop
538:              srai         a6, s0, 9
                  bgeu         a6, a7, 549f
                  sra          a5, ra, s3
                  and          s11, s10, a0
                  bltu         a5, ra, 545f
                  beq          s3, gp, 544f
544:              slt          a7, s2, a0
545:              slt          a1, t0, a5
                  nop
547:              andi         a3, s7, 1813
                  srl          s4, a4, t3
549:              slli         zero, t5, 1
                  slli         a0, t5, 0
                  bne          tp, s7, 562f
                  addi         a7, a4, 714
                  andi         t2, s6, 1884
                  sub          zero, a3, t6
                  sltu         t0, s6, a4
                  bne          ra, t4, 565f
                  srai         s7, t6, 7
                  xor          a6, t4, zero
                  slti         s6, s1, -392
                  bge          t6, t4, 577f
                  srli         a5, a0, 4
562:              slli         t6, a1, 27
                  or           t0, t2, gp
                  sltiu        a2, s3, 1804
565:              sub          gp, t3, t3
                  bne          zero, s8, 586f
                  auipc        a2, 1043479
                  nop
                  add          t5, s10, gp
                  slli         a7, s11, 8
                  xori         s2, tp, 717
                  add          s8, t2, gp
                  sltiu        s5, gp, 1904
                  xor          t5, a1, a6
                  lui          s11, 689497
                  sub          t5, a0, a0
577:              slti         t2, a3, 1227
                  slti         a0, s11, 1941
                  sra          s10, s2, t1
                  slt          a6, s3, s9
                  xor          a5, s7, s6
                  srl          s5, s1, a0
                  and          t3, t5, s11
                  or           a0, t2, s5
                  addi         sp, s9, -583
586:              slt          a2, a4, a1
                  sra          t6, a1, s0
                  slti         zero, s10, -655
                  srli         s4, t5, 1
                  sra          a2, zero, a2
                  lui          zero, 686738
                  slli         tp, a0, 30
                  sra          a2, s10, a5
                  blt          s10, t6, 606f
                  bge          s7, s5, 606f
                  lui          s11, 943726
                  xor          s2, a1, sp
                  sra          s8, t6, t6
                  auipc        s2, 416324
                  bne          s11, sp, 613f
                  bne          ra, a7, 603f
                  srl          t1, a1, s0
603:              srai         t3, s5, 17
                  ori          t5, a4, -1698
                  srli         s4, s8, 1
606:              srli         a5, a2, 4
                  srli         a1, sp, 29
                  bne          a4, t5, 628f
                  auipc        ra, 482778
                  bltu         t3, s2, 624f
                  nop
                  bltu         s6, a1, 629f
613:              bge          s0, a1, 624f
                  bge          a3, a7, 618f
                  nop
                  blt          gp, a1, 618f
                  sltu         sp, t5, s9
618:              slt          t2, a6, t0
                  slli         a0, t6, 22
                  beq          t2, s7, 631f
                  sltu         s3, a0, gp
                  srai         s7, s2, 5
                  slt          s4, t0, s9
624:              sltiu        a1, s2, -1635
                  add          tp, a5, t3
                  addi         a6, s2, -798
                  sub          s5, zero, s9
628:              xori         s9, t6, 646
629:              sll          tp, t1, s3
                  bgeu         t6, s5, 641f
631:              beq          s10, a7, 643f
                  sra          a6, tp, s10
                  bgeu         s1, ra, 643f
                  addi         t1, s4, -634
                  xori         sp, sp, 1053
                  and          t5, s5, a0
                  sub          s2, s4, a1
                  beq          s4, s6, 649f
                  sub          s3, s3, s1
                  lui          a0, 749560
641:              sll          s11, t4, s2
                  bge          s1, s10, 657f
643:              bne          s11, a2, 655f
                  nop
                  nop
                  addi         s2, s3, -1771
                  sll          s2, a6, a4
                  bge          s11, a3, 654f
649:              slt          ra, s5, t3
                  sltu         a2, zero, a1
                  ori          a0, s8, 1801
                  sll          a1, t1, a1
                  xori         a6, s5, 986
654:              slt          a6, a5, s7
655:              sub          s3, s4, t4
                  sll          s2, s0, sp
657:              blt          s6, t1, 670f
                  addi         t3, sp, -92
                  auipc        s5, 184234
                  bltu         a3, t1, 663f
                  or           zero, ra, s4
                  slt          gp, a1, s3
663:              lui          s2, 726327
                  sra          t2, tp, s2
                  sltu         a0, s0, t2
                  bne          t0, s10, 667f
667:              srai         a3, s3, 0
                  srai         a5, s0, 17
                  srl          s5, t4, t3
670:              addi         s8, a1, 631
                  slti         s6, t1, 1962
                  slt          t6, s7, t1
                  xor          zero, s7, s8
                  bne          t2, s9, 682f
                  and          sp, t1, a4
                  xori         s8, t0, 644
                  sra          a1, a0, s3
                  andi         s1, a3, -1494
                  bltu         t3, a5, 695f
                  srli         s7, s10, 31
                  andi         s8, t6, -108
682:              addi         s6, tp, 910
                  slli         s4, t3, 11
                  and          t2, a2, s10
                  and          a3, a0, gp
                  nop
                  lui          sp, 264507
                  and          tp, gp, tp
                  or           a1, gp, s10
                  slli         a5, a2, 5
                  bge          ra, t6, 701f
                  and          a5, s0, ra
                  bge          t3, gp, 713f
                  sltiu        a6, s4, 705
695:              andi         ra, gp, 1851
                  sltu         a2, s9, s10
                  srai         t3, s10, 18
                  lui          s7, 701207
                  sltiu        t1, s5, 740
                  slli         s1, t4, 8
701:              sltu         a3, a7, zero
                  addi         s10, s10, -1532
                  bne          t2, s1, 712f
                  and          a0, a7, s0
                  nop
                  slli         a1, ra, 4
                  sub          a6, t2, a1
                  nop
                  sra          s7, a1, t5
                  sltiu        a6, s5, -1831
                  ori          a2, t3, -249
712:              xor          t6, a7, a5
713:              sll          s11, s6, t3
                  lui          a3, 963214
                  slli         a7, a2, 23
                  sll          s6, a0, a1
                  sltiu        a6, a0, -274
                  srai         a3, a4, 22
                  bgeu         s11, a1, 731f
                  bge          gp, t1, 740f
                  beq          t1, t3, 733f
                  srl          s11, t0, a4
                  bne          t0, s2, 736f
                  bgeu         s0, t2, 731f
                  bge          t1, a1, 736f
                  bne          s4, zero, 734f
                  or           a0, t0, t4
                  xori         s11, tp, 248
                  and          sp, zero, s1
                  xori         ra, a6, -990
731:              auipc        a1, 320676
                  slti         a0, a4, -1162
733:              slti         t6, a1, -460
734:              ori          t1, tp, -397
                  add          s4, s10, s1
736:              beq          tp, s0, 754f
                  slli         s11, s2, 26
                  srli         a0, tp, 15
                  or           a2, t5, gp
740:              add          s1, t4, t4
                  ori          s9, s9, -1595
                  addi         a2, t6, -997
                  slt          a0, s6, t2
                  nop
                  nop
                  add          s11, t4, s3
                  or           t5, s11, a3
                  ori          s2, zero, 473
main_28:          jal          ra, 2f
0:                jal          ra, 13f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 6f
4:                jal          gp, 10f
5:                jal          t0, 9f
6:                jal          ra, 11f
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          t1, 8b
10:               jal          ra, 14f
11:               jal          s11, 1b
12:               jal          ra, 4b
13:               jal          ra, 5b
14:               andi         s1, s5, -925
                  bgeu         sp, tp, 752f
                  auipc        s7, 68451
                  bltu         a4, s6, 759f
752:              slti         tp, s2, -1420
                  slti         s2, t4, 509
754:              sltu         t5, t6, t6
                  slli         s7, s0, 26
                  srli         t3, a1, 1
                  or           t0, s2, ra
                  nop
759:              sll          a0, t5, sp
                  xori         s8, a1, 729
                  sra          s11, sp, a2
                  sra          s2, t4, ra
                  slt          a0, t5, s10
                  addi         a5, s9, 1249
                  xori         s4, tp, -114
                  bgeu         t6, t0, 777f
                  xor          t1, gp, s0
                  bltu         t4, ra, 788f
                  and          s6, a5, s2
                  sltiu        s9, s4, 1420
                  and          a0, s3, a4
                  andi         t2, s7, 165
                  nop
                  xor          gp, s7, t6
                  bltu         a4, a1, 783f
                  add          s3, t2, s0
777:              lui          a6, 1027718
                  auipc        s2, 730298
                  bne          a3, s10, 797f
                  bge          ra, s9, 789f
                  slli         s10, s5, 9
main_8:           jal          ra, 17f
0:                jal          s4, 21f
1:                jal          t0, 23f
2:                jal          sp, 24f
3:                jal          ra, 29f
4:                jal          ra, 12f
5:                jal          tp, 19f
6:                jal          ra, 5b
7:                jal          ra, 9f
8:                jal          t1, 0b
9:                jal          t1, 14f
10:               jal          ra, 16f
11:               jal          t1, 10b
12:               jal          ra, 2b
13:               jal          ra, 30f
14:               jal          t2, 6b
15:               jal          t1, 25f
16:               jal          ra, 1b
17:               jal          ra, 7b
18:               jal          t1, 3b
19:               jal          sp, 8b
20:               jal          t1, 11b
21:               jal          t1, 28f
22:               jal          s2, 27f
23:               jal          a1, 18b
24:               jal          t1, 26f
25:               jal          ra, 4b
26:               jal          t1, 20b
27:               jal          ra, 13b
28:               jal          ra, 15b
29:               jal          sp, 22b
30:               srl          s5, a6, t0
                  bltu         sp, s8, 784f
783:              srl          s3, s8, a2
784:              srai         s11, t4, 19
                  xori         s4, a1, 899
                  add          s4, t2, s10
                  bltu         s11, t6, 798f
788:              and          a2, s7, s6
789:              srl          s3, a3, s1
                  bge          s3, a3, 796f
                  bne          a5, s1, 803f
                  nop
                  srai         s9, a2, 2
                  xor          tp, s2, tp
                  sltiu        s2, a3, -1572
796:              addi         s7, t5, -133
797:              beq          t5, s6, 801f
798:              beq          s11, t5, 811f
                  bge          t0, t2, 806f
                  sltu         t1, ra, s2
801:              and          s1, tp, a2
                  sra          tp, a0, s11
803:              xori         s11, t6, -314
                  or           a7, s4, a0
                  bgeu         t1, s4, 821f
806:              sll          a2, t3, s9
                  xor          a5, s0, s4
                  sltu         a2, a4, a0
                  and          a7, s5, t4
                  auipc        a5, 835137
811:              auipc        s11, 287452
                  slti         s3, t0, 757
                  sltu         s1, s10, t1
                  bgeu         a4, t2, 834f
                  sub          s1, a7, a0
                  slti         t6, s0, 1123
                  srai         tp, t0, 14
                  bgeu         t1, a5, 830f
                  srai         tp, tp, 10
                  bgeu         a5, a6, 831f
821:              andi         s2, a5, -243
                  bgeu         s6, a3, 833f
                  slli         t1, tp, 13
                  lui          s11, 279296
                  srli         s10, ra, 23
                  slti         s3, zero, 1703
                  slti         a5, s4, -872
                  bge          a2, t0, 848f
                  or           s1, t2, t6
830:              bgeu         a5, a2, 847f
831:              sltu         s10, s10, a3
                  lui          s5, 281172
833:              sltiu        s11, a2, -1467
                  la           s4, sub_1
                  addi         s4, s4, 22
                  or           a5, t6, s2
                  bgeu         sp, a1, main_j1 #branch to jump instr
                  add          s5, a5, a1
                  or           s10, s6, t1
                  or           s6, t0, a1
                  sltu         ra, s5, t5
main_j1:          jalr         ra, s4, -21 #jump main -> sub_1
834:              sltu         ra, a0, t0
                  xori         s7, s10, 129
                  srai         s11, t6, 15
                  andi         sp, s3, 1176
                  andi         s7, t0, -749
                  lui          a2, 695364
                  lui          a0, 271119
                  bge          s2, t4, 851f
                  srl          t6, a0, a2
                  xor          zero, s1, s0
                  andi         zero, sp, -1717
                  sub          s1, a7, t5
                  bltu         s1, a3, 857f
847:              sub          zero, s1, s3
848:              sltu         s4, t5, t0
                  slli         t3, a2, 16
                  bge          a5, a7, 862f
851:              lui          a2, 967923
                  add          t2, ra, s0
                  blt          s3, a3, 866f
                  bge          s9, s2, 868f
                  srli         t6, a3, 25
                  lui          ra, 132010
857:              beq          a7, t5, 869f
                  and          t2, a2, s9
                  or           a2, tp, a4
                  nop
                  sra          t1, s6, zero
862:              srai         s11, t6, 21
                  auipc        s1, 540941
                  blt          t3, t5, 879f
                  sub          zero, s4, s10
866:              slli         s5, s4, 4
                  ori          t0, t0, -411
868:              xori         t1, s4, 1690
869:              add          zero, s0, s8
                  sra          t0, t1, zero
                  addi         a3, t6, 1554
                  bltu         s1, t0, 873f
873:              nop
                  srai         gp, s9, 6
                  or           t5, a1, t3
                  sltiu        s1, a1, 1478
                  sltu         t6, a5, t3
                  sltiu        a1, t1, 1292
879:              srl          tp, a5, t1
                  or           s11, t3, t1
                  slt          a1, a3, s2
                  or           t2, s8, t4
                  addi         a1, s7, 1878
                  blt          s7, a1, 894f
                  nop
                  sltu         sp, s11, gp
                  slt          s5, s1, s3
                  sltu         a6, s11, s6
                  addi         s9, a1, 590
                  nop
                  add          t6, a4, a1
                  and          tp, tp, s3
                  srai         sp, s7, 14
894:              blt          t4, a1, 904f
                  slli         t2, a2, 11
                  srl          s6, t3, a6
                  blt          a6, t5, 909f
                  addi         s2, t5, -809
                  xor          a1, s6, s7
                  nop
                  srli         s3, s1, 21
                  ori          s6, gp, -1896
                  srli         a6, a7, 14
904:              sltu         s4, s1, s4
                  blt          t6, s4, 917f
                  andi         t0, s9, -1255
                  slli         s9, s4, 14
                  bgeu         a5, t3, 920f
909:              sra          a6, a6, s5
                  ori          s6, zero, 2018
                  sltu         s2, a1, gp
                  slti         ra, a1, -424
                  ori          sp, t4, 1362
                  srai         t1, a7, 5
                  add          s11, s7, t3
                  slli         a5, gp, 20
917:              xori         t3, s3, 120
                  bge          a5, s3, 929f
                  slli         t1, t3, 7
920:              sltiu        s9, t2, 1958
                  blt          a1, t4, 932f
                  blt          t5, t0, 926f
                  add          tp, ra, t5
                  andi         tp, gp, -1338
                  sltiu        s7, s10, 1187
926:              slli         t3, t0, 21
                  or           t3, s11, t6
                  bne          t4, s5, 936f
929:              xor          s11, a7, a0
                  srai         zero, tp, 14
                  ori          s8, a2, -918
932:              xor          a0, s0, s7
                  bne          s11, t6, 939f
                  ori          s8, a6, -1477
                  xor          a6, ra, sp
936:              bne          a7, s4, 937f
937:              bge          a6, a2, 946f
                  srl          a0, tp, t3
939:              or           t2, tp, tp
                  sll          ra, a4, t5
                  xor          s9, t0, t5
                  blt          s1, a5, 945f
                  sll          a7, s11, t1
                  srl          s8, t5, a3
945:              srl          s5, a6, a5
946:              sll          t6, t4, s1
                  sltiu        a5, t2, -112
                  bne          t1, sp, 958f
                  srai         a3, tp, 11
                  sltiu        a0, s9, 1105
                  slt          a2, a4, t1
                  sll          s1, a2, s11
                  auipc        a6, 184788
                  bge          a4, s11, 969f
                  slli         t2, s7, 5
                  sra          t0, s11, s3
                  bgeu         t2, a4, 969f
958:              or           s2, sp, gp
                  nop
                  bne          s9, gp, 971f
                  srl          s10, s7, a2
                  and          t0, a6, a0
                  xor          s6, s9, a1
                  sltiu        s3, s0, 817
                  xor          s8, a4, s11
                  or           s8, s11, s8
                  srai         a2, t5, 11
                  andi         gp, s8, 1024
969:              sltu         t2, s9, s2
                  or           t0, a7, sp
971:              and          a3, s2, t5
                  srai         t2, gp, 11
                  xori         zero, s1, 667
                  auipc        t2, 985446
                  add          a7, s11, ra
                  sltu         s6, s4, t5
                  slt          s11, s6, s10
                  bgeu         s0, zero, 989f
                  sltu         s3, tp, a5
                  sll          t1, s7, a6
                  sra          a5, s1, gp
                  addi         a7, t5, -199
                  and          a2, s4, s4
                  addi         t6, tp, 1165
                  blt          t0, s1, 993f
                  addi         t0, a3, -1100
                  sltiu        s9, s5, 436
                  and          t1, t0, s10
989:              blt          zero, sp, 1002f
                  bgeu         a3, t5, 1003f
                  bltu         s0, s10, 1011f
                  sltu         a1, s7, a1
993:              bge          s0, s4, 995f
                  andi         sp, s6, 1164
995:              sll          t5, s8, t3
                  sltiu        s5, zero, -1512
                  slli         s9, t3, 8
                  nop
                  xori         a5, t0, 1378
                  beq          s9, s10, 1011f
                  add          s7, a0, t3
1002:             sll          t5, s5, t1
1003:             andi         t1, s5, -1699
                  sll          t1, s11, t6
                  slt          t1, a0, a2
                  or           zero, s9, t5
                  blt          s11, s6, 1027f
                  bne          s6, t4, 1025f
                  xor          s8, ra, s11
                  srli         gp, s3, 26
1011:             slli         t3, sp, 13
                  addi         t5, t6, -1486
                  srai         s7, t1, 21
                  bge          s1, t1, 1021f
                  or           a5, s8, s10
                  sltu         s3, tp, t4
                  srai         a3, s0, 6
                  sltu         t1, s9, t4
                  or           s7, s8, tp
                  addi         s5, ra, -208
1021:             xori         gp, t4, 635
                  srl          zero, sp, sp
                  or           s4, s4, t2
                  bge          t3, a6, 1040f
1025:             bltu         a7, s11, 1045f
                  xor          a2, a4, s1
1027:             bne          s4, a1, 1045f
                  sll          zero, s7, ra
                  slli         s8, a7, 12
                  lui          zero, 520584
                  add          s11, a1, t2
                  srai         t3, gp, 8
                  srli         sp, a1, 9
                  auipc        a1, 430627
                  and          a7, tp, sp
                  nop
                  or           sp, zero, ra
                  sltiu        a1, zero, 232
                  sltu         s6, s9, a4
1040:             slt          t5, a5, s5
                  srli         a3, a7, 11
                  beq          s5, zero, 1056f
                  bne          s7, s6, 1061f
                  and          s3, s2, s4
1045:             ori          t0, s2, 344
                  addi         sp, s3, 1555
                  beq          s7, zero, 1054f
                  bne          t3, t0, 1060f
                  bgeu         sp, a4, 1051f
                  lui          s2, 681674
1051:             sll          s9, s8, s10
                  auipc        t0, 590760
                  ori          t5, s11, -1168
1054:             bltu         t4, s1, 1066f
                  sltiu        zero, ra, 1438
1056:             and          s5, t3, ra
                  slli         t0, a3, 5
                  sra          a0, s9, a3
                  xor          a2, ra, s3
1060:             add          tp, s7, t6
1061:             srai         s2, a7, 15
                  andi         t1, t3, -969
                  auipc        s2, 974122
                  addi         sp, s1, -215
                  sll          a0, tp, t5
1066:             lui          s8, 916006
                  xori         gp, ra, -1671
                  bge          a1, a4, 1082f
                  slti         a6, s3, -604
                  sub          ra, zero, s9
                  sltu         gp, s7, s10
                  slli         s2, t2, 9
                  blt          a3, a7, 1090f
                  slli         tp, s4, 0
                  sub          zero, s6, s8
                  sub          t2, s7, s11
                  sltu         a0, a7, s6
                  bgeu         s5, a1, 1094f
                  sra          a2, t0, ra
                  lui          t1, 938869
                  sltu         s11, tp, t3
1082:             sub          a3, s2, s11
main_7:           jal          ra, 16f
0:                jal          ra, 3f
1:                jal          s9, 18f
2:                jal          s10, 22f
3:                jal          ra, 2b
4:                jal          ra, 19f
5:                jal          t1, 12f
6:                jal          ra, 17f
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          ra, 7b
10:               jal          ra, 20f
11:               jal          tp, 0b
12:               jal          ra, 10b
13:               jal          t1, 4b
14:               jal          a2, 21f
15:               jal          t1, 14b
16:               jal          ra, 1b
17:               jal          a5, 15b
18:               jal          t1, 6b
19:               jal          ra, 11b
20:               jal          ra, 8b
21:               jal          ra, 9b
22:               xor          tp, t4, s7
                  andi         s1, gp, 861
                  slli         s8, s2, 15
                  sra          t2, s9, t2
                  bgeu         s6, a7, 1106f
                  beq          a5, s7, 1099f
                  slt          sp, t5, a2
                  auipc        s7, 781593
1090:             auipc        s5, 443157
                  slli         s10, t6, 4
                  sub          s9, s5, s10
                  nop
1094:             srai         s6, s2, 7
                  bltu         t2, t5, 1115f
                  srl          t1, s10, t6
                  bge          t3, s10, 1108f
                  sra          s8, s0, a3
1099:             srli         sp, ra, 1
main_41:          jal          ra, 21f
0:                jal          tp, 7f
1:                jal          ra, 11f
2:                jal          ra, 17f
3:                jal          ra, 25f
4:                jal          a2, 10f
5:                jal          ra, 20f
6:                jal          gp, 18f
7:                jal          tp, 16f
8:                jal          a2, 14f
9:                jal          ra, 23f
10:               jal          t0, 19f
11:               jal          ra, 22f
12:               jal          ra, 3b
13:               jal          ra, 12b
14:               jal          ra, 9b
15:               jal          ra, 8b
16:               jal          t1, 4b
17:               jal          ra, 5b
18:               jal          ra, 2b
19:               jal          s7, 15b
20:               jal          s5, 1b
21:               jal          ra, 24f
22:               jal          t3, 26f
23:               jal          ra, 6b
24:               jal          ra, 13b
25:               jal          t1, 0b
26:               ori          s3, t2, 1692
                  bltu         s8, s5, 1112f
                  blt          sp, a1, 1102f
1102:             blt          s7, t6, 1115f
                  xori         s5, s5, -492
                  slli         s2, t6, 31
                  beq          s4, gp, 1120f
1106:             auipc        a1, 227374
                  andi         t0, t2, -1631
1108:             addi         t3, s2, -698
                  bne          s0, t1, 1122f
                  slli         t1, a2, 24
                  xor          tp, t3, s9
1112:             sltiu        tp, a4, -270
                  auipc        s10, 520297
                  sll          t1, a4, a1
1115:             or           ra, t1, a6
                  lui          ra, 1011662
                  sltu         s9, s5, s11
                  bne          a6, s7, 1122f
                  add          a5, s1, s0
1120:             ori          t2, s1, 2013
                  add          t1, a7, s4
1122:             blt          t2, t3, 1133f
                  slli         a6, a6, 29
                  sll          s8, sp, a5
                  sll          a0, s9, t5
                  sltu         a3, ra, s7
                  xor          tp, s9, t3
                  slli         a3, a3, 17
                  add          sp, s0, s0
                  add          a0, t6, a4
                  sltiu        t5, t5, 526
                  and          s4, t3, a6
1133:             ori          gp, s6, 551
                  slli         s7, a4, 2
                  sltu         s7, a0, s8
                  sra          s4, s3, a1
                  srai         sp, a0, 10
                  bgeu         s4, ra, 1149f
                  sll          gp, tp, s1
                  auipc        gp, 867218
                  xor          gp, s9, s7
                  xor          s7, a5, t2
                  andi         a3, s11, -1579
                  blt          s6, t6, 1155f
                  srl          s1, a1, s8
                  and          s3, a5, ra
                  la           s7, sub_1
                  xor          s8, a6, s11
                  addi         s7, s7, 408
                  xori         s8, a7, -1044
                  lui          s11, 936762
                  slti         zero, ra, -2013
                  sub          t0, a2, s7
main_j2:          jalr         ra, s7, -407 #jump main -> sub_1
                  beq          s3, s7, 1155f
                  srai         t6, t3, 5
                  sll          s8, t4, a1
                  slti         tp, a3, -1053
1149:             auipc        sp, 526885
                  slt          a7, s2, t0
                  slli         a5, a2, 24
                  nop
                  slti         s10, s1, -1638
                  addi         gp, s2, 292
1155:             beq          a7, s9, 1158f
                  ori          a7, a5, 739
                  sra          a6, a1, a6
1158:             addi         zero, t4, 1478
                  auipc        t0, 395939
                  xori         tp, a0, 1782
                  slti         t3, s9, -1726
                  andi         s5, s9, -850
                  sub          s4, s11, s9
                  andi         a5, s0, 1017
                  srli         ra, t0, 0
                  sra          s9, s1, s2
                  sub          ra, tp, a4
                  blt          ra, s1, 1176f
                  sub          s9, a4, a2
                  bne          s2, s2, 1176f
                  srli         s8, a5, 27
                  bltu         s0, t0, 1192f
                  slti         a6, gp, -474
                  sub          s9, sp, a0
                  xor          s5, tp, a7
1176:             bge          s3, a6, 1187f
                  sra          a2, s9, t2
                  srai         s9, a2, 21
                  add          ra, t5, a3
                  xori         a3, t3, 852
                  auipc        s2, 161102
                  addi         s5, a6, 1926
                  auipc        t5, 753337
                  ori          s4, s6, -2019
                  bltu         t6, t4, 1194f
                  bne          a5, a1, 1194f
1187:             slti         t1, t5, 445
                  ori          ra, t1, -1127
                  sltiu        t0, s4, 146
                  slti         a7, s5, 127
                  sltiu        t2, s3, -1489
1192:             sll          tp, s2, tp
                  addi         zero, t4, -1504
1194:             blt          s11, s10, 1204f
                  slti         s7, a0, 749
                  lui          t5, 808177
                  sltu         s5, s8, s5
                  bgeu         t0, sp, 1204f
                  slti         t2, a2, -847
                  slti         t1, s6, -387
                  add          s4, s7, s3
                  addi         t6, a7, 1739
                  add          s1, s4, a7
1204:             sltu         t5, s0, gp
                  nop
                  bne          s3, t5, 1217f
                  blt          s2, s2, 1210f
                  xor          s4, ra, s10
                  sra          a0, a4, s5
1210:             xor          a3, s0, a5
                  nop
                  addi         s6, t5, -928
                  auipc        sp, 636626
                  nop
                  slt          s11, t0, s7
                  andi         a2, s9, 1716
1217:             bgeu         s11, t3, 1224f
                  addi         gp, ra, -348
                  bltu         s3, a5, 1237f
                  bltu         t0, a7, 1235f
                  auipc        a5, 893574
                  sltiu        a3, a4, -148
                  addi         s4, tp, 745
1224:             beq          a1, a3, 1226f
                  and          t2, s5, a4
1226:             xori         s10, s2, 375
                  slli         zero, s11, 7
                  sltiu        s7, s1, 1515
                  nop
                  slt          a3, s10, a0
                  sub          a7, a7, a2
                  bge          t4, a2, 1252f
                  add          s6, tp, zero
                  srli         s11, s4, 31
1235:             slti         a7, a6, -784
                  addi         a2, a2, 31
1237:             slt          a1, a7, a7
                  bne          a7, zero, 1249f
                  srai         t0, s10, 2
                  ori          ra, a3, -116
                  nop
                  ori          s1, a1, 256
                  srli         s5, s8, 18
                  bltu         a6, ra, 1255f
                  ori          s9, a1, 1648
                  lui          s11, 356288
                  sltiu        t5, tp, -691
                  xor          s10, gp, s7
1249:             slt          ra, s4, a4
                  slti         ra, t5, 971
                  blt          t0, t6, 1264f
1252:             sltu         tp, a2, a5
                  srl          a1, s6, ra
                  sll          a3, t5, t3
1255:             xori         a3, s7, -1160
                  beq          s4, s4, 1273f
                  sltiu        s11, s0, 1220
                  slt          a7, s4, t5
                  sub          s8, t3, zero
                  bne          t4, t6, 1268f
                  bge          sp, s9, 1277f
                  bge          a6, t2, 1274f
                  bltu         a4, gp, 1273f
1264:             sll          s1, a7, s11
                  and          tp, s6, a2
                  addi         s1, s0, -590
                  sub          s8, s6, sp
1268:             bltu         t5, s6, 1280f
                  nop
                  bne          a5, a0, 1279f
                  sltu         tp, a6, gp
                  auipc        sp, 20997
1273:             bltu         a5, s8, 1287f
1274:             sub          t5, s0, sp
                  sub          t5, a6, ra
                  xor          zero, a2, a3
1277:             addi         a7, t1, -1304
                  blt          t3, s8, 1290f
1279:             srl          a7, t2, a0
1280:             bltu         t2, a7, 1290f
                  sltiu        s11, a7, -1032
                  add          sp, t5, s3
                  add          zero, t1, s2
                  slti         a7, zero, -1110
                  sll          tp, a6, gp
                  bge          zero, sp, 1299f
1287:             beq          s3, t4, 1298f
                  sltiu        t5, a2, 1777
                  xor          ra, s9, t3
1290:             slt          zero, s9, a4
                  slli         s8, t2, 24
                  slti         s4, a3, -1125
                  auipc        ra, 98470
                  srli         t6, t1, 26
                  lui          s6, 371580
                  andi         t2, s9, 460
                  srl          a2, s6, s8
1298:             slli         a1, s5, 21
1299:             bgeu         t0, a5, 1310f
                  beq          t3, t0, 1312f
                  slli         s11, a1, 27
                  blt          s3, s7, 1322f
                  bltu         s7, t0, 1311f
                  sltiu        sp, s7, -324
                  ori          a1, a6, -491
                  xori         ra, s5, -743
                  slt          sp, t6, t3
                  xor          t2, zero, t6
                  bgeu         ra, a0, 1329f
1310:             xor          sp, a6, a7
main_38:          jal          ra, 1f
0:                jal          a3, 7f
1:                jal          t0, 6f
2:                jal          t6, 0b
3:                jal          s8, 4f
4:                jal          ra, 10f
5:                jal          ra, 11f
6:                jal          s7, 8f
7:                jal          ra, 12f
8:                jal          ra, 5b
9:                jal          s3, 3b
10:               jal          ra, 2b
11:               jal          t1, 9b
12:               andi         s7, s1, 1978
1311:             or           s4, zero, s10
1312:             xori         s11, t4, -1145
                  xor          s8, t2, t3
                  bge          a5, s6, 1318f
                  xori         a0, s3, -778
                  xor          t6, tp, s4
                  sub          a3, s7, a3
1318:             addi         a6, a0, 134
                  sltu         s4, t5, s11
                  sra          s7, a3, gp
                  sltu         t2, s3, t5
1322:             bltu         ra, t5, 1323f
1323:             bne          a4, s10, 1335f
                  ori          s4, t2, 2032
                  and          s6, a0, s4
                  sltu         s3, tp, zero
                  addi         t0, a2, -2048
                  or           s1, s11, t2
1329:             srl          t6, s8, a6
                  srai         a3, s2, 20
                  bgeu         s11, s2, 1342f
                  lui          a5, 638369
                  bge          s1, s4, 1348f
                  add          s6, a4, t5
1335:             sltiu        t3, a6, -1280
                  slti         tp, a1, -2040
                  sra          ra, a2, a5
                  bne          s1, s7, 1352f
                  srl          t0, s1, s1
                  bge          a4, t4, 1357f
                  beq          s10, s3, 1352f
1342:             ori          t3, t2, -1604
                  ori          t3, s4, -1309
                  bge          a5, zero, 1345f
1345:             bltu         t5, t0, 1354f
                  ori          a1, zero, -1370
                  srai         t1, s3, 18
1348:             blt          s1, tp, 1366f
                  nop
                  srl          s9, s5, t4
                  addi         t3, s1, 1675
1352:             ori          t3, a7, 821
                  slti         ra, s6, -293
1354:             srl          s9, a5, s0
                  sra          zero, sp, t1
                  sll          s7, s4, s10
1357:             bltu         t1, s10, 1369f
                  bge          a4, t4, 1369f
                  xori         t3, s2, -1836
                  blt          t1, s0, 1368f
                  xor          a5, s3, t3
                  slli         t3, s0, 0
                  lui          a2, 1019097
                  sra          s9, s4, s1
                  sltiu        ra, a7, 1053
1366:             sub          a5, t3, t3
                  andi         a6, t4, 1010
1368:             nop
1369:             srli         t3, s0, 15
                  bge          a1, s8, 1372f
                  lui          t3, 776256
1372:             or           ra, s7, a0
                  xor          s2, s11, t4
                  bgeu         s7, s11, 1377f
                  xori         t0, t1, 1299
                  andi         a3, zero, 1385
1377:             srai         a5, zero, 17
                  srai         t3, a1, 19
                  srl          a1, t5, ra
                  sltu         s11, a5, s3
                  srl          t5, a3, a4
                  and          a6, t6, s2
                  xori         gp, t1, 49
                  slli         t2, s3, 21
                  lui          t3, 334728
                  beq          s8, zero, 1396f
                  slli         tp, t6, 16
                  lui          s10, 768436
                  srli         t6, s4, 30
                  beq          tp, a7, 1403f
                  bltu         tp, sp, 1402f
                  bne          t3, s10, 1403f
                  auipc        zero, 212831
                  bltu         s5, a0, 1404f
                  xori         t6, s9, -1537
1396:             bltu         a6, s0, 1409f
                  bne          s0, s10, 1417f
                  andi         s10, a2, 1404
                  bltu         a1, s4, 1419f
                  bge          t3, s1, 1420f
                  lui          s4, 705246
1402:             lui          a6, 113836
1403:             sra          a0, s3, a3
1404:             ori          a2, ra, 391
                  nop
                  nop
                  add          s8, s6, tp
                  blt          a3, t4, 1415f
1409:             xori         sp, t5, -1447
                  xor          s5, s5, a5
                  sub          s9, sp, zero
                  addi         s8, s8, 405
                  and          s3, a1, a3
                  add          a3, a0, zero
1415:             bgeu         s9, tp, 1427f
                  slti         s8, a3, 20
1417:             srai         s5, s6, 29
                  blt          s5, s0, 1434f
1419:             sltiu        s8, a4, -1097
1420:             and          s7, s5, s1
                  auipc        tp, 253784
                  srli         s6, t6, 29
                  xor          zero, a0, t0
                  ori          t3, tp, -1302
                  bge          a3, s0, 1431f
                  sll          s10, zero, ra
1427:             add          s8, t1, t2
                  slti         t6, tp, -779
                  andi         s8, t6, -1609
main_44:          jal          ra, 17f
0:                jal          ra, 20f
1:                jal          ra, 2f
2:                jal          gp, 15f
3:                jal          ra, 5f
4:                jal          a5, 7f
5:                jal          ra, 11f
6:                jal          s10, 4b
7:                jal          ra, 22f
8:                jal          ra, 14f
9:                jal          a5, 21f
10:               jal          ra, 18f
11:               jal          ra, 10b
12:               jal          t1, 0b
13:               jal          sp, 8b
14:               jal          ra, 3b
15:               jal          ra, 16f
16:               jal          ra, 6b
17:               jal          ra, 12b
18:               jal          ra, 24f
19:               jal          ra, 1b
20:               jal          tp, 9b
21:               jal          t0, 23f
22:               jal          s6, 13b
23:               jal          ra, 19b
24:               sltu         s3, t3, a5
                  slli         s2, s11, 22
1431:             bltu         ra, s5, 1435f
                  sll          a1, s11, gp
                  sra          tp, s6, t5
1434:             bltu         ra, s2, 1446f
1435:             bgeu         gp, s5, 1443f
                  bltu         t1, t5, 1444f
                  nop
                  nop
                  bltu         s4, t4, 1454f
                  srli         s9, a7, 28
                  bgeu         zero, t5, 1444f
                  auipc        s5, 602
1443:             slti         a6, s1, -1352
1444:             and          t6, s2, s5
                  add          sp, s0, s6
1446:             blt          s3, a2, 1457f
                  or           a0, ra, sp
                  slli         zero, a0, 31
                  sll          t2, s0, tp
                  sltu         s1, a7, a4
                  bltu         s5, gp, 1467f
                  sltu         s1, a1, a5
                  xori         a0, a0, -37
1454:             sra          s7, a2, ra
                  bgeu         zero, ra, 1463f
                  xori         s7, t0, 943
1457:             auipc        a7, 251480
                  blt          gp, s4, 1468f
                  srli         a6, s4, 9
                  and          t6, s7, s11
                  srli         s3, ra, 9
                  slt          s10, s9, s10
1463:             xor          a5, t1, s10
                  sra          ra, zero, s3
                  ori          s3, s8, 2008
                  bne          t2, t5, 1472f
1467:             ori          a5, s4, -932
1468:             srli         a5, ra, 27
                  sltiu        sp, s8, 1238
                  sll          sp, gp, s2
                  slti         tp, s7, -757
1472:             ori          a1, s5, 1724
                  slt          s2, s7, sp
main_4:           jal          ra, 13f
0:                jal          ra, 2f
1:                jal          a7, 14f
2:                jal          a6, 9f
3:                jal          gp, 1b
4:                jal          t1, 8f
5:                jal          s4, 6f
6:                jal          t1, 17f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          tp, 11f
10:               jal          ra, 7b
11:               jal          t1, 15f
12:               jal          ra, 10b
13:               jal          ra, 12b
14:               jal          t2, 16f
15:               jal          ra, 4b
16:               jal          t1, 0b
17:               sll          t1, t3, t0
                  slli         t0, s0, 1
                  srli         sp, s8, 1
                  slt          t2, a0, a4
                  add          s9, t4, s10
                  bge          tp, zero, 1491f
                  andi         t6, s0, 210
                  beq          a1, s0, 1484f
                  beq          s3, a1, 1493f
                  blt          sp, a2, 1491f
                  slti         s5, t0, 101
1484:             lui          a1, 512790
                  addi         t1, gp, 190
                  bgeu         t3, t4, 1497f
                  sll          a2, t1, a4
                  bltu         s6, a3, 1508f
                  slt          t2, s9, sp
                  slti         s5, t5, 817
1491:             srli         a3, s5, 23
                  lui          s4, 915540
1493:             addi         t1, a7, 1215
                  bgeu         a2, t1, 1512f
                  blt          t5, s11, 1512f
                  xor          s4, s9, a6
1497:             or           s4, s10, t6
                  add          s7, s6, s4
                  addi         t5, a5, -1659
                  bge          tp, a7, 1514f
                  srl          t1, s3, s11
                  ori          t3, s5, 862
                  auipc        ra, 521011
                  sub          s11, s0, a1
                  auipc        a6, 267270
                  slli         s1, tp, 16
                  bne          a2, tp, 1517f
1508:             sll          tp, s6, a6
                  srl          s5, s6, s5
                  blt          a6, s6, 1530f
                  ori          ra, s3, -1830
1512:             lui          t1, 94437
                  bgeu         a7, a7, 1514f
1514:             ori          s1, s2, -662
                  srli         ra, a6, 19
                  addi         s9, a0, -1027
1517:             addi         a6, a5, 1855
                  xori         ra, tp, -1799
                  xori         s4, s9, 866
                  addi         a6, t4, 1574
                  auipc        t2, 991169
                  blt          a2, s9, 1529f
                  slli         t5, t3, 24
                  blt          t6, a7, 1535f
                  xori         t5, ra, -1044
                  lui          gp, 991044
                  slti         a1, t3, -1517
                  bgeu         s1, a3, 1539f
1529:             andi         t3, s4, -580
1530:             bne          t6, s11, 1542f
                  xori         t6, a2, -1808
                  sll          t0, t4, t2
                  addi         a1, ra, 1838
                  auipc        t5, 821541
1535:             blt          s4, a0, 1546f
                  sub          s5, a1, a4
                  addi         sp, t0, -108
                  bne          t1, gp, 1550f
1539:             bne          s10, t1, 1552f
                  xor          s9, t4, t3
                  slti         a3, gp, -2017
1542:             bltu         a1, s10, 1544f
                  nop
1544:             bgeu         ra, a5, 1556f
                  sub          s4, s4, t5
1546:             andi         a6, s4, 840
                  srai         t1, a3, 2
                  lui          s8, 191822
                  sra          s2, s6, a6
1550:             bltu         s6, s9, 1570f
                  srai         s2, a5, 6
1552:             bltu         s6, t0, 1563f
                  and          a1, s6, t4
                  bge          s11, s7, 1569f
                  bge          tp, t0, 1561f
1556:             slli         sp, a5, 10
                  slti         ra, s0, -974
                  blt          s2, s9, 1569f
                  add          a6, s4, gp
                  and          a5, s6, t5
1561:             lui          s1, 457312
                  addi         a7, s11, -1292
1563:             blt          t6, a6, 1574f
                  slli         s7, a3, 13
                  bge          a0, s1, 1577f
                  sltiu        s2, a6, 1186
                  lui          t2, 401942
                  slt          tp, s7, a5
1569:             sra          gp, t2, tp
1570:             beq          a2, s7, 1571f
1571:             and          s10, ra, t2
                  srli         s11, s11, 12
                  sub          ra, gp, ra
1574:             xor          s1, t1, s3
                  andi         s1, a6, 1039
                  bge          t1, t6, 1588f
1577:             lui          gp, 1011859
                  sll          s7, s9, sp
                  bge          t0, t1, 1589f
main_23:          jal          ra, 1f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          s6, 4f
3:                jal          a3, 2b
4:                jal          tp, 5f
5:                jal          ra, 10f
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               srl          s3, a7, t4
                  beq          t1, s1, 1590f
                  and          sp, s0, s5
                  slt          s11, t1, t0
                  bltu         a4, s3, 1596f
                  auipc        t1, 521265
                  sltiu        t5, s9, -1137
                  bne          s0, s1, 1606f
                  blt          t4, a4, 1599f
1588:             sub          s5, t6, a1
1589:             slli         tp, s8, 4
1590:             bltu         a2, tp, 1607f
                  bge          s9, ra, 1599f
                  sltiu        s7, a2, -925
                  slli         a0, a6, 15
                  xori         a2, t1, -1213
                  nop
1596:             or           s10, t2, a6
                  slt          s9, a3, s2
                  bne          a1, t4, 1616f
1599:             nop
                  sll          a5, t3, t4
                  bgeu         a5, a5, 1621f
                  xor          t2, a6, s2
                  sra          s4, s11, s8
                  or           a5, s0, s5
                  add          t5, s1, s10
1606:             slli         t3, a3, 19
1607:             sra          s7, gp, sp
                  slti         t2, s10, 1982
                  bge          s6, t0, 1623f
                  nop
                  andi         s2, ra, -586
                  addi         s11, t0, -422
                  bne          t3, s11, 1625f
                  bge          t2, a3, 1625f
                  nop
1616:             srai         s10, s1, 7
                  xor          t1, a5, sp
                  bge          t6, s0, 1622f
                  beq          s8, s9, 1639f
                  sll          s10, a4, ra
1621:             sra          s5, a7, a0
1622:             lui          t0, 956896
1623:             andi         t1, t5, 680
                  nop
1625:             add          s2, t5, s7
                  srl          s1, t2, zero
                  andi         t6, t2, 839
                  bltu         t2, a2, 1635f
                  ori          tp, a0, -25
                  ori          s2, s7, 1548
                  nop
                  sll          gp, s2, a1
                  lui          a2, 793728
                  xor          a0, s3, s1
1635:             bltu         s2, s8, 1651f
                  srai         s2, t6, 6
                  or           zero, a3, s8
                  bne          a0, sp, 1649f
1639:             nop
                  srli         a5, s10, 23
                  xor          ra, a3, a1
                  bltu         s10, a5, 1655f
                  xori         s2, t0, -1633
                  slt          t1, t1, tp
                  srli         s7, ra, 0
                  bgeu         a3, a4, 1648f
                  bgeu         a4, sp, 1656f
1648:             or           s3, t3, s10
1649:             slt          t6, a2, zero
                  srli         s1, s5, 13
1651:             blt          a3, s8, 1654f
                  srli         s5, t2, 24
main_12:          jal          ra, 5f
0:                jal          gp, 10f
1:                jal          sp, 7f
2:                jal          t1, 12f
3:                jal          ra, 11f
4:                jal          t1, 0b
5:                jal          ra, 3b
6:                jal          ra, 1b
7:                jal          a2, 4b
8:                jal          a5, 9f
9:                jal          t1, 2b
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               sltu         s5, s3, a7
                  ori          t2, a5, 1141
1654:             bge          gp, t1, 1662f
1655:             auipc        t5, 384021
1656:             andi         s10, s9, 286
                  bgeu         zero, a1, 1658f
1658:             beq          a0, t1, 1675f
                  xor          a6, tp, a1
                  xor          a2, a3, t1
                  xori         a2, s1, -1182
1662:             xor          a6, s8, s2
                  srli         ra, s4, 19
                  slti         sp, a7, 779
                  bltu         s1, t1, 1676f
                  slti         t5, a6, -1549
                  srl          s11, sp, s4
                  beq          sp, gp, 1676f
                  add          s4, s10, a5
                  or           t1, a4, s7
                  sltiu        a5, s5, 618
                  bgeu         s9, zero, 1692f
                  lui          t2, 404290
                  andi         a2, s2, -661
1675:             slt          a6, s10, t4
1676:             sll          a7, ra, s5
                  beq          a4, t1, 1691f
                  xor          t3, s6, t6
                  slli         gp, t1, 13
                  ori          a6, s2, -1513
                  bge          t1, s1, 1692f
                  slti         t0, a6, -2029
                  sra          t1, s0, a7
                  sltu         sp, a6, t6
                  xori         t1, t3, -722
                  nop
                  sub          s7, t2, tp
                  blt          a3, t6, 1691f
                  ori          s10, t4, -547
                  slti         a7, t4, 1613
1691:             xori         s4, t2, 786
1692:             add          a0, s9, s0
                  slti         s4, zero, -1852
                  ori          a6, s6, -665
                  and          s2, tp, a5
                  lui          s6, 791191
                  sltiu        s1, t4, 389
                  slti         a7, s7, -942
                  srli         s6, a4, 3
                  addi         s4, gp, -549
                  andi         t2, zero, -993
                  bltu         zero, t4, 1712f
                  nop
                  sra          s6, sp, gp
                  lui          s2, 17467
                  sub          t1, sp, a0
                  bgeu         a6, zero, 1713f
                  sll          s5, zero, a1
                  bne          s2, t4, 1720f
                  nop
                  blt          ra, s10, 1731f
1712:             bgeu         a5, sp, 1721f
1713:             srli         t1, s8, 14
                  xor          s3, gp, a4
                  blt          s8, s8, 1722f
                  sltiu        zero, a4, -681
                  sltu         gp, t6, s3
                  lui          s10, 534480
                  and          a6, s9, t4
1720:             srli         s5, s1, 24
1721:             slt          s10, a1, t4
1722:             beq          t3, s7, 1726f
                  slti         s5, a6, 1487
                  add          ra, a7, t6
                  slli         t6, s8, 2
1726:             add          a3, a2, s11
                  srli         t5, a7, 23
                  ori          s11, a2, -1922
                  bne          ra, s11, 1740f
                  srai         s3, a3, 18
1731:             xor          t5, s1, t6
                  bne          gp, ra, 1744f
                  srl          t0, a1, s5
                  sll          a2, a1, ra
                  bge          a4, t1, 1747f
                  auipc        t5, 1036226
                  ori          ra, a1, 358
                  andi         s10, s0, 1956
                  slli         t3, s0, 24
1740:             srai         t5, ra, 27
                  bge          s4, a1, 1761f
                  srai         t5, s7, 14
                  sll          s2, t2, gp
1744:             blt          t6, t2, 1746f
                  add          a5, s2, s5
1746:             sra          s6, a6, s10
1747:             srli         a6, s2, 5
                  srli         s4, a0, 6
                  srl          s6, s6, t5
                  nop
                  auipc        s6, 1008996
                  sltiu        t3, s1, 150
                  srl          s10, gp, sp
                  srai         gp, t1, 16
                  bltu         a5, t2, 1766f
                  nop
                  and          s2, s3, s5
                  srli         ra, s8, 22
                  sra          s11, gp, ra
                  xori         zero, s9, -129
1761:             bltu         a5, a4, 1769f
                  sub          s2, a4, t6
                  srl          s1, a4, s5
                  xori         t6, t6, 1631
                  bne          s7, s0, 1778f
1766:             srai         a5, ra, 30
                  sll          s2, s6, t3
                  sub          t3, sp, sp
1769:             beq          s9, zero, 1787f
                  slt          a3, a4, a1
                  sub          s11, s2, a2
                  xori         t3, gp, -941
                  xori         s7, s6, -1069
                  and          t5, t5, ra
                  addi         t0, s1, 222
                  srli         a3, t3, 6
                  sll          s3, s2, a5
1778:             bne          s2, tp, 1791f
                  bltu         t2, t1, 1791f
                  andi         sp, a1, -1831
                  beq          s2, a7, 1796f
                  lui          t3, 169040
                  xor          zero, t1, s4
                  srai         t0, sp, 11
                  or           t1, a0, a4
                  slli         t1, t2, 5
1787:             lui          a3, 614530
                  sll          s8, zero, s2
                  sltiu        s2, s4, -1934
                  srai         zero, t2, 0
1791:             or           s9, a2, a4
                  slt          s3, s2, s5
                  or           s5, a2, s6
                  sra          s2, s7, zero
                  slti         s5, t6, -1710
1796:             and          a1, s2, t6
                  add          s10, s7, a4
                  sll          s6, s10, s7
                  sub          t1, t4, s8
                  ori          s4, a1, -1076
                  add          t2, tp, a2
                  bltu         s3, s11, 1812f
                  addi         s6, s11, 642
                  sra          a1, sp, s10
                  nop
                  sll          a5, tp, zero
                  slt          t1, t6, tp
                  sra          t5, t3, s1
                  bne          s0, s7, 1821f
                  add          ra, a0, s3
                  nop
1812:             sra          s11, a2, s4
                  xor          a3, t6, sp
                  srai         t0, zero, 18
                  beq          s0, s0, 1831f
                  beq          s0, t4, 1824f
                  srli         s1, s3, 5
                  blt          sp, t4, 1830f
                  add          s11, t5, s7
                  addi         t5, s6, 697
1821:             slt          a1, a4, a2
                  add          a2, a6, s11
                  and          t3, t0, s6
1824:             srai         gp, a2, 21
                  andi         sp, s6, 1921
                  slti         t0, s10, -54
                  sltu         ra, a1, s6
                  ori          ra, t5, 1464
                  bne          t0, s8, 1845f
1830:             bgeu         t4, zero, 1832f
1831:             ori          a3, s0, 629
1832:             bltu         s3, s5, 1838f
                  sltu         a7, t3, s5
                  ori          a6, gp, 851
                  sra          a6, sp, s7
                  xor          zero, s5, a4
                  bne          ra, s4, 1849f
1838:             bgeu         s4, s10, 1849f
                  addi         gp, ra, -528
                  and          s10, gp, a5
                  bge          s2, s11, 1861f
                  lui          a2, 590732
                  add          s2, a7, s7
                  lui          s2, 680728
1845:             sub          a2, s9, s9
                  srli         ra, s1, 6
                  andi         s9, sp, -243
                  xori         s11, a0, 1724
1849:             blt          tp, a3, 1863f
                  slti         t6, a3, -1732
                  nop
                  slli         t0, s3, 16
                  and          s7, s6, a1
                  sltu         t5, a0, a6
                  bgeu         a6, s11, 1865f
                  sra          s3, s11, s0
                  auipc        s6, 264972
                  lui          sp, 375559
                  sltu         s3, s1, t5
                  xori         t1, t2, 663
1861:             xor          t3, s0, a7
                  xori         a2, tp, 1559
1863:             slti         s3, s4, 1311
                  beq          a5, s1, 1868f
1865:             bge          t2, sp, 1877f
                  slli         t0, a2, 16
                  add          tp, s3, a3
1868:             srli         a0, a6, 31
                  and          tp, s7, t5
                  srai         s2, s6, 27
                  sub          s1, t0, t4
                  srli         s8, a5, 11
                  slt          t3, t0, t4
                  and          t6, a6, s7
                  srai         s9, sp, 9
                  sll          s1, t5, zero
1877:             add          t3, ra, s1
                  beq          a0, t4, 1898f
                  nop
                  bne          s1, s3, 1891f
                  srai         t0, a4, 10
                  bgeu         s9, t1, 1883f
1883:             slt          zero, s5, a7
                  sra          s3, zero, a4
                  xori         a1, t3, 830
                  ori          gp, t5, 1772
                  sll          s7, s5, t5
                  addi         t6, sp, 1505
                  sltiu        t0, a2, 619
                  bgeu         s4, t6, 1901f
1891:             sub          s1, a3, t1
                  xori         a2, a7, 1046
                  sll          a5, t0, s9
                  lui          s5, 39382
                  add          s3, a1, t2
                  srl          a7, a1, s4
                  bne          t6, s2, 1905f
1898:             bltu         t4, t3, 1909f
                  bge          s11, s9, 1911f
                  sra          a2, zero, t6
1901:             lui          s10, 454220
                  slli         gp, t1, 23
                  addi         a2, t6, 1337
                  slli         ra, t0, 25
1905:             slti         a7, a0, 1652
                  slt          ra, s7, s7
                  slt          a7, t0, s1
                  ori          a7, s0, 1922
1909:             addi         s6, t6, 1105
                  srai         a6, s1, 15
1911:             and          s2, gp, a1
                  srai         a6, t1, 10
                  or           s4, a2, t1
                  srai         s7, a7, 16
                  and          a6, a4, t0
                  srl          a6, sp, t0
                  xori         a0, a2, -1428
                  slti         a0, t0, -679
                  addi         t3, t2, -1519
                  and          t5, a5, t2
                  beq          s9, t3, 1941f
                  sltu         s9, zero, a7
                  sub          a6, gp, s6
                  sll          t1, a4, gp
                  or           t0, s3, gp
                  andi         gp, s8, -1655
                  lui          a0, 785003
                  sltu         a0, a1, zero
                  sub          s4, s11, s0
                  nop
main_37:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          s3, 9f
2:                jal          t1, 11f
3:                jal          t5, 2b
4:                jal          s3, 1b
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          tp, 4b
8:                jal          ra, 6b
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               slli         t1, a3, 20
                  auipc        t0, 975937
                  bltu         s5, sp, 1941f
                  sltiu        a2, a6, -250
                  sub          s10, s8, s7
                  beq          s9, s3, 1942f
                  or           a3, s3, a6
                  slti         t5, a6, -1516
                  slli         tp, s10, 23
                  slt          s1, s5, s10
                  sltu         s1, a0, t2
1941:             sll          s6, a2, a4
1942:             srai         ra, s0, 30
                  add          t3, t6, a2
                  srai         sp, t3, 12
main_9:           jal          ra, 15f
0:                jal          ra, 11f
1:                jal          t1, 10f
2:                jal          ra, 6f
3:                jal          ra, 20f
4:                jal          ra, 3b
5:                jal          ra, 7f
6:                jal          t1, 9f
7:                jal          ra, 16f
8:                jal          ra, 12f
9:                jal          ra, 8b
10:               jal          ra, 18f
11:               jal          ra, 2b
12:               jal          s6, 17f
13:               jal          s11, 1b
14:               jal          t1, 0b
15:               jal          ra, 13b
16:               jal          s4, 4b
17:               jal          ra, 5b
18:               jal          ra, 19f
19:               jal          t1, 14b
20:               addi         a3, t6, -1535
                  or           t3, t3, t5
                  addi         s2, s1, -1920
                  bge          s1, s8, 1950f
                  slti         tp, s9, -1353
                  slli         zero, t2, 27
1950:             lui          a6, 609039
                  xor          s1, s3, s11
                  and          sp, a6, s0
                  slt          s7, s5, t5
                  sltiu        tp, s7, -1569
                  bge          t0, a2, 1968f
                  bgeu         t2, a3, 1974f
                  lui          s1, 830823
                  or           t0, s8, a5
                  nop
                  sub          s6, sp, a4
                  lui          sp, 819488
                  bne          t0, t3, 1973f
                  xori         t0, gp, 83
                  addi         a3, s7, -537
                  bgeu         t3, t5, 1978f
                  add          ra, t5, t6
                  bne          a7, s10, 1984f
1968:             srai         a1, t5, 18
                  sltu         t3, a2, s5
                  or           s4, s1, s7
                  bne          sp, s10, 1986f
                  sra          s1, s4, s7
1973:             sub          a6, tp, a5
1974:             blt          t5, t5, 1984f
                  nop
                  andi         t1, a0, 1704
                  bne          t5, t3, 1978f
1978:             lui          s3, 686824
                  addi         t2, t0, 468
                  srl          a6, s0, a3
                  srl          gp, ra, t5
                  add          t5, a5, a6
                  xori         a3, s11, 2033
1984:             srai         ra, a3, 7
                  sltiu        s3, s11, -1173
1986:             beq          zero, s2, 2006f
                  sltu         a0, s3, s1
                  beq          t6, gp, 2000f
                  andi         sp, a5, 1594
                  xor          tp, s1, t6
                  or           a7, a6, s3
                  xori         s1, t5, 1265
                  slti         t6, s7, -1712
                  slti         zero, a0, 45
                  ori          gp, sp, -222
                  bge          s6, s11, 2016f
                  andi         s5, s6, 772
                  bge          sp, s5, 2006f
                  add          t2, ra, t5
2000:             sub          a1, a5, t3
                  sra          a7, s11, a1
                  sub          a3, t0, s4
                  srai         a3, sp, 15
                  bgeu         zero, s11, 2016f
                  lui          s5, 475203
2006:             slti         a3, zero, -455
                  bne          a3, s10, 2013f
                  xori         s4, s9, 1071
                  srl          a6, s4, s1
                  sltiu        s2, s3, 825
                  sra          t2, t4, s1
                  slt          s7, t2, t1
2013:             xor          ra, a3, s10
                  beq          t4, ra, 2022f
                  bne          s7, t3, 2026f
2016:             lui          s5, 501911
                  nop
                  slt          t5, a1, sp
                  bltu         t0, s4, 2026f
                  sltu         s5, t4, s9
                  nop
2022:             addi         t6, s5, -1214
                  auipc        s6, 594421
                  andi         t2, sp, 1805
                  andi         zero, s8, -1443
2026:             sltiu        a2, zero, 1439
                  beq          t1, t3, 2042f
                  sub          s1, s7, s1
                  and          t2, s5, s6
                  auipc        zero, 323940
                  sra          s7, s9, gp
                  slti         a1, a0, -1951
                  srl          ra, a1, s3
                  sra          s9, a2, s11
                  beq          t1, s1, 2044f
                  slt          s7, t1, s4
                  or           gp, t6, s6
                  srai         a6, s6, 20
                  sltiu        a2, a7, -158
                  add          s5, t1, t6
                  slti         t0, tp, -1018
2042:             bltu         t3, a2, 2046f
                  slli         a2, s9, 5
2044:             andi         sp, s6, 114
                  sll          s11, t6, t5
2046:             bne          a6, a0, 2048f
                  beq          t3, t5, 2065f
2048:             srl          s9, t3, t0
                  srli         t3, t1, 18
                  sub          s4, s3, a2
                  auipc        a6, 736092
                  srai         t2, t3, 13
                  beq          s11, a2, 2065f
                  bltu         a7, sp, 2065f
                  slti         a7, t0, -2023
                  bge          t3, s3, 2066f
                  lui          s2, 999798
                  srli         s5, t5, 22
                  slt          s10, t4, a5
                  sltu         zero, a6, t4
                  and          t3, a0, t5
                  or           s8, t6, a6
                  blt          a6, t6, 2080f
                  add          s6, s1, t3
2065:             sll          t6, a4, s0
2066:             bge          zero, a3, 2086f
                  bne          a6, t5, 2080f
                  srai         a1, t6, 1
                  bne          a3, a2, 2080f
                  or           t2, a1, a0
                  xor          t6, s6, s7
                  slt          s1, t2, ra
                  xor          t6, s3, a2
                  addi         t6, t6, 1925
                  lui          t5, 456517
                  or           s3, s10, a1
                  or           t3, a6, a0
                  sltu         a0, s8, s5
                  xori         t3, a7, 506
2080:             bltu         tp, s5, 2093f
                  srai         s5, s8, 20
                  ori          gp, s4, 824
                  bne          s3, ra, 2099f
                  ori          a5, a0, 147
                  srli         s10, a6, 21
2086:             blt          s9, s1, 2096f
                  lui          s3, 720737
                  nop
                  xor          gp, t0, t4
                  slli         a6, s9, 8
                  slti         ra, a5, 1954
                  bgeu         s7, s1, 2095f
2093:             slt          s11, sp, s11
                  sltu         s10, t3, a0
2095:             and          s5, zero, t6
2096:             slti         a2, a0, -1652
                  bne          a2, s8, 2108f
                  ori          a3, a2, -348
2099:             or           gp, s7, s8
                  xori         t5, ra, -367
                  srl          a3, a5, sp
                  srli         a7, t3, 24
                  add          s1, a2, t0
                  and          s4, tp, a5
                  add          s2, a1, a3
                  slti         sp, a4, 1375
                  slli         a0, s6, 17
2108:             sll          s7, ra, s0
                  ori          s5, s0, -580
                  sltiu        a7, tp, -758
                  sll          t3, s10, s4
                  add          a1, ra, s10
                  lui          s8, 382512
                  ori          s10, a4, -24
                  and          gp, s2, a3
                  bltu         t3, s3, 2127f
                  lui          s1, 275903
                  ori          a6, s5, -39
                  add          s2, s5, s6
                  bne          a2, s10, 2134f
main_46:          jal          ra, 12f
0:                jal          ra, 14f
1:                jal          ra, 22f
2:                jal          ra, 1b
3:                jal          t1, 21f
4:                jal          ra, 8f
5:                jal          s7, 10f
6:                jal          t6, 15f
7:                jal          s7, 2b
8:                jal          ra, 16f
9:                jal          ra, 20f
10:               jal          ra, 17f
11:               jal          t3, 19f
12:               jal          t5, 18f
13:               jal          s4, 11b
14:               jal          a0, 3b
15:               jal          t1, 5b
16:               jal          ra, 6b
17:               jal          tp, 9b
18:               jal          sp, 13b
19:               jal          sp, 0b
20:               jal          t1, 7b
21:               jal          t0, 4b
22:               lui          t3, 676011
                  addi         s4, t1, 272
                  or           t6, a4, a4
                  sltiu        s1, a1, 1994
                  bne          s6, s5, 2136f
                  slli         s6, t2, 21
                  bgeu         a7, s11, 2128f
2127:             srl          s3, tp, a2
2128:             slti         s2, s7, 1989
                  andi         t2, s0, 1177
                  bgeu         a7, s5, 2143f
                  bltu         t6, s8, 2142f
                  slli         t1, t6, 12
                  xori         a1, t2, -767
2134:             sub          ra, a4, gp
                  add          s1, tp, a2
2136:             sll          s10, t0, zero
                  sltiu        s11, s4, 1983
                  bltu         a6, a0, 2149f
                  blt          t3, s2, 2156f
                  sltiu        a7, a3, 913
                  bne          a7, sp, 2152f
2142:             blt          a5, t4, 2162f
2143:             sll          t3, s0, t3
                  lui          s3, 112231
                  beq          s7, a7, 2153f
                  sltu         t5, t3, t5
                  lui          a5, 128680
                  bge          s8, s10, 2166f
2149:             srl          a5, a3, t3
main_14:          jal          ra, 9f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          a6, 5f
3:                jal          t1, 0b
4:                jal          s1, 6f
5:                jal          ra, 4b
6:                jal          s9, 7f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               auipc        a2, 784793
                  bne          s7, t5, 2160f
                  and          t3, s7, s7
2152:             ori          t3, s10, -1028
2153:             beq          a2, s9, 2165f
                  xori         zero, a2, 567
                  sltu         t0, ra, s0
2156:             lui          t0, 603929
                  beq          s5, t3, 2161f
                  bge          s0, t0, 2170f
                  sub          s11, a7, s0
2160:             nop
2161:             sltu         s2, s1, tp
2162:             srl          s7, s7, t1
                  slli         a5, s2, 20
                  addi         a6, s9, 165
2165:             bltu         s0, gp, 2176f
2166:             sltu         a5, s9, zero
                  sltiu        a2, a0, 722
                  blt          a4, s9, 2179f
                  sll          s1, ra, t6
2170:             xori         gp, t1, 527
                  beq          s3, t4, 2183f
                  blt          a0, s3, 2192f
                  lui          a0, 952645
                  srl          s5, s6, s4
                  beq          zero, t1, 2183f
2176:             xor          s3, s1, t6
                  sltu         s4, t6, t3
                  xor          a5, t1, a3
2179:             add          gp, s5, a7
                  bgeu         a1, s4, 2195f
                  srli         a0, a7, 8
                  bne          t5, a0, 2188f
2183:             slt          tp, sp, s11
                  bgeu         s7, s6, 2196f
                  sll          zero, s10, t1
                  slti         s5, s3, -685
                  or           sp, s2, a3
2188:             slti         sp, ra, 697
                  slt          t1, tp, a0
                  bge          a3, gp, 2199f
                  ori          s6, t2, 420
2192:             ori          s6, s1, -1682
                  srai         a3, s0, 15
                  bne          a4, s6, 2208f
2195:             and          s9, s3, t2
2196:             nop
                  srl          s10, t3, s10
                  srai         t3, a3, 21
2199:             sra          t5, a4, s1
                  srli         a5, a4, 19
                  xori         zero, a3, -419
                  addi         ra, ra, -1090
                  ori          s10, s2, -1973
                  slt          t3, s5, s8
                  andi         a2, t2, 697
                  xori         s1, t4, 435
                  sra          a3, s1, t1
2208:             xori         a1, t5, 1957
                  auipc        t6, 19343
                  addi         s11, a4, -1538
                  sltu         a3, s3, t2
                  sltiu        t6, t1, 1907
                  srl          a7, a3, s4
                  sub          s2, a0, a6
                  srli         s4, s0, 5
                  sub          s3, s10, s3
                  nop
                  xor          a1, t2, tp
                  srai         s9, s6, 22
                  sltiu        a5, a7, 533
                  sltu         tp, s3, t4
                  lui          gp, 1028514
                  srli         sp, s0, 27
                  nop
                  ori          t1, s3, 1551
                  nop
                  sub          t6, s9, a2
                  andi         s7, a2, 505
                  auipc        s11, 97484
                  beq          t5, s5, 2246f
                  auipc        a3, 202071
                  sll          s8, sp, t5
                  slti         t3, a6, 42
                  sltu         s5, a5, a0
                  slli         t6, a5, 10
                  xori         a1, a6, 744
                  auipc        tp, 859329
                  slt          s4, s8, a3
                  and          s7, a3, s1
                  bgeu         s1, gp, 2253f
                  slti         s1, s1, 920
                  slli         t1, a1, 23
                  xor          a5, s5, s7
                  sltu         s9, a4, a7
                  slti         s6, t3, -1329
2246:             andi         a5, zero, -487
                  xori         s4, a4, 263
                  srli         t3, sp, 18
                  addi         a6, s11, -1120
                  sltiu        s7, s3, 206
                  nop
                  bge          t4, s5, 2272f
2253:             sra          zero, s4, t4
                  bge          s7, a7, 2255f
2255:             and          ra, s0, t4
                  auipc        sp, 986024
                  sltu         t5, s6, t1
                  bne          t4, s2, 2268f
                  srl          t3, t1, t1
                  sra          a2, a2, s11
                  bne          t1, t5, 2264f
                  bne          a1, tp, 2269f
                  sltiu        a0, t4, -842
2264:             auipc        t3, 1045357
                  blt          a7, t3, 2276f
                  sltiu        sp, zero, 953
                  bltu         a0, s9, 2276f
2268:             bgeu         s9, sp, 2282f
2269:             sltiu        a6, s9, -209
                  slt          s10, a2, tp
                  blt          a7, a4, 2283f
2272:             sra          a0, s7, a5
                  andi         tp, s9, -666
                  addi         s1, s0, -1098
                  ori          t3, s7, -523
2276:             srli         s11, sp, 23
                  nop
                  bge          t0, t1, 2288f
                  slti         sp, t6, 1449
                  sltu         s6, a5, t2
                  nop
2282:             slli         a6, s4, 14
2283:             auipc        t3, 460159
                  blt          s4, s1, 2288f
                  srai         a6, s8, 31
                  ori          s5, a4, -1710
                  sltu         t0, t0, ra
2288:             or           zero, s8, s4
                  bne          s2, t0, 2309f
                  or           s3, t1, t5
                  sltu         s10, a6, t6
                  srai         s5, t5, 0
                  add          a6, zero, t0
                  sll          a0, s7, s0
                  sll          a0, a1, t5
                  bgeu         t1, sp, 2299f
                  sltu         s10, a0, tp
                  sll          a7, s8, t1
2299:             auipc        s5, 628780
                  addi         t3, s5, 232
                  srai         t1, t2, 20
                  slt          a0, a3, t0
                  addi         s7, s11, 117
                  nop
                  slti         a6, s5, 1145
                  bge          s0, a7, 2316f
                  slli         s2, zero, 18
                  sltu         tp, tp, s4
2309:             sub          t0, s8, s3
                  bge          s5, a4, 2318f
                  sltu         s5, s11, s9
                  srai         s1, gp, 20
                  bltu         gp, zero, 2325f
                  bgeu         s4, s2, 2327f
                  xori         s8, s8, 1885
2316:             ori          s5, t0, 1960
                  bgeu         s7, s3, 2328f
2318:             xor          t1, a6, t3
                  lui          s6, 237731
                  nop
                  auipc        t1, 87344
                  bgeu         zero, s2, 2328f
                  auipc        s11, 241730
                  srai         t3, a4, 10
2325:             sll          a6, s9, t1
                  srli         s10, a0, 20
2327:             andi         a0, gp, -200
2328:             auipc        tp, 1013300
                  sltu         s9, t6, tp
                  addi         t0, a7, -742
                  lui          s7, 352172
                  xor          t3, t1, gp
                  blt          s6, s6, 2353f
                  andi         a6, a2, 1822
                  srl          s9, t4, a5
                  beq          s9, ra, 2348f
                  addi         a2, t5, -623
                  bge          s11, a7, 2353f
                  sll          s10, a0, a5
                  bge          t5, zero, 2357f
                  bne          t5, a0, 2357f
                  blt          a1, s10, 2344f
                  slti         a0, t0, -1727
2344:             ori          gp, t2, 1708
                  srai         t0, s3, 14
                  srai         s2, t6, 28
                  sll          a2, s4, a4
2348:             xori         t6, s3, 1939
                  xori         t6, a3, -2016
                  nop
                  sltiu        s1, sp, 982
                  andi         t3, s7, 1664
2353:             nop
                  srli         t3, a5, 14
                  addi         a1, s0, -922
                  srai         a2, s2, 3
2357:             bgeu         s9, s11, 2370f
                  ori          t1, t1, -650
                  slli         s9, s5, 16
                  sra          s3, s0, s3
                  bltu         t0, a4, 2372f
                  nop
                  bne          a0, t6, 2374f
                  or           tp, t0, a0
                  slt          s11, s1, t1
                  srli         a2, s10, 3
                  bltu         s2, s11, 2374f
                  addi         a3, s6, 455
                  sltiu        s2, a1, -1831
2370:             auipc        a5, 768679
                  or           s3, ra, a2
2372:             bltu         a3, zero, 2390f
                  bne          s10, tp, 2393f
2374:             xor          t6, s0, ra
                  andi         a7, zero, -1783
                  or           s8, s10, a4
                  add          a2, t4, s5
                  and          a3, s6, s4
                  sll          gp, t4, zero
                  srli         a2, t5, 16
                  slt          a0, t5, t1
                  sltiu        t5, t2, 695
                  srli         tp, s8, 14
                  nop
                  lui          s5, 885440
                  lui          tp, 401755
                  beq          s1, s9, 2399f
                  sltiu        a0, a1, 1639
                  slti         ra, a0, -968
2390:             ori          gp, s0, 1558
                  sra          s3, a7, sp
                  sra          s6, s9, zero
2393:             sltiu        s5, zero, 398
                  bge          s8, ra, 2405f
                  sra          ra, t3, s3
                  add          gp, s10, t2
                  srl          s7, s11, gp
                  andi         s10, a4, 1051
2399:             lui          s6, 551173
                  bne          s2, gp, 2408f
                  andi         s1, a1, -204
                  addi         t1, t0, -881
                  lui          s6, 930210
                  xor          a2, zero, s2
2405:             slli         t3, a6, 17
                  add          a0, sp, sp
                  slli         zero, a2, 17
2408:             blt          s2, a7, 2409f
2409:             xor          t2, a4, t1
                  srl          s5, s3, s7
                  sub          s1, t4, s3
                  bge          a1, t5, 2420f
                  srli         t3, s7, 3
                  sra          zero, a6, a7
                  bne          t1, t3, 2418f
                  slt          ra, s6, s7
                  bltu         s9, t0, 2429f
2418:             beq          s3, a4, 2435f
                  or           tp, a0, ra
2420:             add          t0, s5, zero
                  srli         s2, s8, 13
                  sll          a5, a6, sp
                  bne          zero, t0, 2435f
                  sltiu        s2, s2, 1216
                  andi         a1, sp, 775
                  xori         s3, a0, 31
                  sra          s11, s7, s7
                  bgeu         ra, a4, 2440f
2429:             srli         s4, a5, 24
                  bge          s11, gp, 2450f
                  addi         s6, s3, 751
                  or           t2, tp, s10
                  blt          t4, t6, 2449f
                  lui          s5, 435449
2435:             srl          a5, t3, s3
                  andi         a5, zero, 545
                  or           a7, ra, a2
                  sltiu        a7, s4, 534
                  andi         s1, s6, 488
2440:             sltu         tp, t2, a6
                  srl          s9, a6, a7
                  sll          a2, s6, s5
                  srli         s7, a2, 28
                  and          s3, s7, s4
                  auipc        sp, 836886
                  sll          t0, s5, sp
                  srli         s6, t6, 1
                  bltu         t6, zero, 2459f
2449:             srli         s3, s4, 28
2450:             blt          sp, a7, 2461f
                  bge          a0, s7, 2466f
                  blt          a6, zero, 2463f
                  sltiu        a0, s7, -344
                  srli         t5, s4, 5
                  sltiu        t5, a0, 714
                  slli         s3, a5, 3
                  add          s2, a4, a3
                  add          a0, s10, s5
2459:             auipc        a2, 579911
                  slli         sp, s1, 0
2461:             blt          sp, s10, 2474f
                  bne          s11, s0, 2466f
2463:             addi         a6, t5, -680
                  slti         s8, s7, -1928
                  add          a1, a7, t2
2466:             or           s8, s9, tp
                  xori         s3, zero, 1617
                  bgeu         t1, t2, 2486f
                  auipc        ra, 713257
                  sltu         t5, s0, s0
                  andi         s7, a5, 661
                  nop
                  andi         s8, s4, 602
2474:             addi         a6, t1, 48
                  sra          gp, a5, a4
                  or           gp, t3, gp
                  sll          s1, t3, s7
                  srai         a5, s9, 19
                  bge          t4, s2, 2493f
                  srl          a7, t3, s4
                  bgeu         s9, a0, 2487f
                  slt          a1, t6, zero
                  sltiu        s1, t5, 961
                  slt          tp, sp, tp
                  bltu         t3, a1, 2487f
2486:             beq          s5, a7, 2506f
2487:             xori         a1, t4, -1575
                  sltu         tp, t1, s7
                  beq          t0, s4, 2502f
                  auipc        s9, 831441
                  xor          a6, s0, s0
                  slti         s4, ra, 764
2493:             add          t0, a2, s8
                  sltiu        t5, t1, 1058
                  srai         s11, s9, 2
                  srli         s11, s0, 29
                  nop
                  bltu         t3, t4, 2499f
2499:             sltu         t2, a4, zero
                  andi         zero, t2, -441
                  sltu         t5, t6, sp
2502:             andi         a0, s0, 133
                  blt          s9, a4, 2515f
                  xori         t1, zero, -1354
                  or           a5, s3, zero
2506:             addi         s8, sp, -119
                  add          sp, t0, a4
                  srai         s4, s4, 8
                  add          a5, t5, sp
                  slt          s6, a6, a0
                  ori          a7, s8, -1811
                  lui          t6, 715588
                  and          a3, s10, a4
                  sra          s4, t4, a3
2515:             sltu         a6, a7, a5
                  blt          t1, s6, 2525f
                  srli         s3, ra, 18
                  bne          s4, a2, 2529f
                  sltiu        zero, t6, 1816
                  xor          t5, t3, s9
                  addi         tp, s9, -146
                  blt          s7, s0, 2533f
                  xori         a2, t2, -1548
                  lui          s6, 501524
2525:             addi         t0, s11, -726
                  add          s6, t4, s9
                  xor          a0, t2, s11
                  beq          zero, a1, 2538f
2529:             sub          s10, a7, ra
                  xor          s5, a7, t6
                  sub          t0, s9, a0
                  bgeu         a6, s10, 2542f
2533:             ori          s1, s1, 1915
                  bne          gp, a3, 2554f
                  sltiu        a1, gp, -109
                  srli         a7, t5, 3
                  blt          a2, s9, 2545f
2538:             sub          a6, s5, s8
                  lui          s2, 622701
                  xori         gp, s11, 1524
                  xor          gp, s0, t1
2542:             slli         s9, t1, 7
                  slt          zero, zero, tp
                  bltu         t3, a0, 2551f
2545:             sub          s11, s4, t5
                  auipc        s7, 756683
                  blt          t4, a6, 2554f
                  addi         s6, s6, -1397
                  slt          s1, t4, a5
                  sra          t0, s1, a7
2551:             nop
                  srli         gp, s3, 29
                  auipc        s5, 884661
2554:             beq          a2, sp, 2558f
                  and          tp, a2, s0
                  sra          s10, t5, s2
                  bgeu         gp, t0, 2558f
2558:             bge          t3, s1, 2575f
                  bne          s2, s7, 2567f
                  addi         tp, t5, -935
                  sub          tp, s4, a0
                  blt          s1, s9, 2578f
                  srli         s7, s9, 9
                  sra          tp, a4, ra
                  blt          a6, a6, 2577f
                  sltiu        s10, s11, 36
2567:             addi         tp, tp, -1138
                  slti         sp, s9, -870
                  sra          a7, t3, s11
                  sll          zero, zero, s0
                  bltu         a2, tp, 2580f
                  bltu         t2, a2, 2583f
                  srl          s10, a5, t1
                  sra          t3, s3, s6
2575:             auipc        s1, 201138
                  bltu         s7, a0, 2588f
2577:             addi         tp, s3, 1453
2578:             slli         a3, a6, 26
                  sltu         zero, ra, t2
2580:             sub          s6, s11, sp
                  and          s3, a0, t5
                  xori         s1, gp, 1269
2583:             beq          s3, gp, 2593f
                  blt          a2, a0, 2596f
                  slti         sp, a2, 1257
                  addi         a3, s0, -1468
                  bge          s8, t2, 2599f
2588:             sltu         s9, ra, tp
                  nop
                  nop
                  addi         ra, a6, 692
                  xori         ra, a4, -1124
2593:             blt          s11, s1, 2604f
                  sub          sp, a1, tp
                  sltu         s3, gp, t0
2596:             add          s11, s0, a4
                  ori          s1, zero, 1246
                  xor          sp, sp, tp
2599:             sltiu        t5, ra, 623
                  slti         a0, a3, 520
                  xor          a3, s8, s0
                  srli         t6, s11, 28
                  beq          ra, a7, 2613f
2604:             ori          t0, s4, -1117
                  add          s5, t2, a7
                  bltu         tp, a1, 2613f
                  nop
                  xori         s4, t4, -871
                  sll          s5, a2, ra
                  sll          s8, t6, t0
                  srai         a5, ra, 26
                  slti         a3, s8, -159
2613:             ori          s10, t3, 602
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sub          s8, ra, s4
                  addi         a4, a4, -44
                  xori         a1, s0, -653
                  lui          s3, 672397
                  addi         s1, t6, 0
                  or           s9, s3, t1
                  sw           ra, 4(a4)
                  sltu         a5, a3, a3
                  sltiu        t0, t1, 1924
                  andi         a7, a6, -602
                  and          a6, t0, a6
                  la           tp, sub_4
                  xori         t1, s0, 1901
                  add          a2, a0, s8
                  addi         tp, tp, 452
                  and          a1, s11, s11
                  bge          tp, s1, sub_3_j6 #branch to jump instr
                  lui          s11, 371029
                  or           t0, s8, t5
sub_3_j6:         jalr         ra, tp, -452 #jump sub_3 -> sub_4
sub_3_0:          jal          ra, 11f
0:                jal          t1, 17f
1:                jal          s5, 21f
2:                jal          gp, 18f
3:                jal          ra, 6f
4:                jal          t3, 0b
5:                jal          s7, 13f
6:                jal          s4, 16f
7:                jal          t2, 15f
8:                jal          ra, 19f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          t1, 2b
12:               jal          ra, 4b
13:               jal          a1, 14f
14:               jal          a3, 12b
15:               jal          s9, 9b
16:               jal          ra, 1b
17:               jal          ra, 20f
18:               jal          ra, 7b
19:               jal          ra, 5b
20:               jal          ra, 3b
21:               xor          a2, s1, t0
                  bgeu         s7, s5, 11f
                  nop
                  nop
                  sltiu        zero, s8, 1647
                  sltiu        s6, s1, -591
                  srli         s2, gp, 27
                  sltu         a1, t5, a3
                  lui          a3, 1020982
                  beq          t2, t3, 26f
                  bge          sp, s9, 14f
                  andi         t6, a6, -355
11:               bgeu         s4, s2, 12f
12:               nop
                  addi         t3, s10, 61
14:               blt          a3, t5, 31f
                  or           s11, t6, s6
                  sub          t1, s7, s1
                  sll          a1, s4, a2
                  beq          s11, a0, 38f
                  xori         t2, a7, 872
                  slli         zero, t2, 11
                  xor          a5, gp, a3
                  blt          s3, a5, 40f
                  auipc        s3, 926606
                  and          gp, t6, a3
                  slt          t6, a2, a3
26:               slti         a6, t5, 1080
                  slt          tp, t2, s1
                  lui          tp, 87230
                  add          tp, a2, t5
                  slt          s10, a1, s1
31:               sra          a2, a2, s0
                  sltiu        a0, s8, 1455
                  srai         s8, t2, 30
                  and          sp, a2, a1
                  sltu         ra, s0, s7
                  srl          s6, t5, s7
                  slti         s7, ra, 226
38:               sra          t2, t1, t3
                  or           s6, sp, ra
40:               srl          a3, t0, s10
                  auipc        gp, 286648
                  srli         s6, a0, 25
                  bne          a0, s2, 56f
                  bgeu         t3, a4, 56f
                  xor          s9, s5, t3
                  xor          tp, t6, s7
                  sltu         ra, s2, t2
                  srli         ra, a3, 29
                  bne          a0, t2, 56f
                  auipc        a2, 386114
                  sll          t6, sp, ra
                  add          s6, t2, a4
                  beq          t0, a4, 56f
                  and          a0, a4, s10
                  auipc        gp, 103514
56:               sll          sp, s3, t0
                  lw           ra, 4(a4)
                  lui          tp, 998362
                  addi         a4, a4, 44
                  add          s7, s0, s0
                  srai         a7, zero, 27
                  slt          a7, s4, s1
106:              addi x26, x1, 1
106:              jalr x26, x26, 0
sub_1:            sltiu        t6, a5, -1626
                  sltiu        gp, s11, 539
                  add          a1, t0, a4
                  addi         a4, a4, -16
                  sw           ra, 4(a4)
                  slt          tp, s9, s5
                  xori         s8, ra, 1479
                  lui          t5, 11156
                  auipc        ra, 948182
                  ori          a1, sp, -37
                  slli         s4, s0, 1
                  xori         gp, a5, 115
                  ori          s1, s8, -1399
                  slti         t5, sp, -552
                  srli         a5, a6, 12
                  lui          s8, 767577
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  sll          t2, t4, gp
                  sra          gp, tp, s2
                  slt          tp, s1, s5
                  slli         a3, t4, 14
                  la           s3, sub_2
                  slti         s11, t4, -439
                  addi         s3, s3, -993
                  add          s7, s3, a2
                  xor          s10, t0, a0
sub_1_j4:         jalr         ra, s3, 993 #jump sub_1 -> sub_2
                  bltu         a1, s2, 9f
                  blt          s0, a5, 9f
                  addi         t1, a7, 995
                  ori          a5, t4, 1278
                  lui          a3, 50999
                  slti         a1, a1, 1957
                  bge          t0, a3, 9f
                  sltu         s9, a6, s7
                  ori          zero, t6, 747
9:                lui          tp, 859254
                  nop
                  sltu         a5, s3, t6
                  lw           ra, 4(a4)
                  addi         a4, a4, 16
                  xor          t1, s4, a5
42:               addi x18, x1, 1
42:               jalr x18, x18, 0
sub_4:            addi         a4, a4, -52
                  ori          s2, s8, -799
                  sw           ra, 4(a4)
                  srai         t3, s0, 15
                  srai         a0, s2, 24
                  and          s6, a2, s9
                  xor          s10, t6, s11
                  and          t6, a3, t6
sub_4_2:          jal          ra, 7f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          t1, 20f
3:                jal          t1, 8f
4:                jal          ra, 15f
5:                jal          ra, 17f
6:                jal          ra, 1b
7:                jal          ra, 23f
8:                jal          t1, 13f
9:                jal          ra, 4b
10:               jal          ra, 24f
11:               jal          t6, 22f
12:               jal          ra, 21f
13:               jal          ra, 0b
14:               jal          ra, 19f
15:               jal          ra, 6b
16:               jal          a1, 9b
17:               jal          s8, 3b
18:               jal          ra, 14b
19:               jal          ra, 12b
20:               jal          s5, 11b
21:               jal          ra, 16b
22:               jal          s4, 18b
23:               jal          gp, 5b
24:               sltu         s6, s9, s9
sub_4_0:          jal          ra, 21f
0:                jal          ra, 12f
1:                jal          sp, 9f
2:                jal          ra, 0b
3:                jal          t1, 23f
4:                jal          s7, 24f
5:                jal          ra, 16f
6:                jal          ra, 13f
7:                jal          ra, 2b
8:                jal          t1, 15f
9:                jal          t1, 26f
10:               jal          s5, 6b
11:               jal          sp, 25f
12:               jal          gp, 5b
13:               jal          t1, 7b
14:               jal          ra, 18f
15:               jal          a7, 3b
16:               jal          ra, 27f
17:               jal          ra, 14b
18:               jal          gp, 10b
19:               jal          ra, 1b
20:               jal          s9, 19b
21:               jal          ra, 20b
22:               jal          ra, 17b
23:               jal          t5, 22b
24:               jal          s1, 8b
25:               jal          ra, 4b
26:               jal          t1, 11b
27:               auipc        tp, 890365
sub_4_3:          jal          ra, 25f
0:                jal          a6, 5f
1:                jal          t1, 27f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          ra, 14f
5:                jal          ra, 26f
6:                jal          ra, 19f
7:                jal          s7, 22f
8:                jal          ra, 13f
9:                jal          t1, 23f
10:               jal          t1, 1b
11:               jal          t1, 20f
12:               jal          ra, 10b
13:               jal          a1, 0b
14:               jal          t1, 18f
15:               jal          ra, 2b
16:               jal          t1, 17f
17:               jal          t1, 3b
18:               jal          s11, 8b
19:               jal          t1, 15b
20:               jal          ra, 16b
21:               jal          a0, 12b
22:               jal          s7, 6b
23:               jal          ra, 4b
24:               jal          ra, 21b
25:               jal          ra, 11b
26:               jal          ra, 24b
27:               srai         a7, s3, 14
sub_4_4:          jal          ra, 28f
0:                jal          s8, 30f
1:                jal          ra, 12f
2:                jal          t1, 25f
3:                jal          ra, 20f
4:                jal          ra, 9f
5:                jal          tp, 2b
6:                jal          ra, 24f
7:                jal          s6, 6b
8:                jal          ra, 13f
9:                jal          ra, 10f
10:               jal          t1, 21f
11:               jal          ra, 17f
12:               jal          t1, 26f
13:               jal          s7, 18f
14:               jal          tp, 22f
15:               jal          ra, 14b
16:               jal          s7, 19f
17:               jal          ra, 15b
18:               jal          ra, 4b
19:               jal          t1, 8b
20:               jal          ra, 1b
21:               jal          ra, 3b
22:               jal          s7, 7b
23:               jal          t1, 0b
24:               jal          ra, 27f
25:               jal          s9, 11b
26:               jal          ra, 5b
27:               jal          t1, 23b
28:               jal          ra, 29f
29:               jal          ra, 16b
30:               sub          s2, t2, s2
                  bltu         a4, t0, 8f
                  slti         t1, s10, -1528
                  or           tp, a2, a3
                  bne          a5, a6, 10f
                  ori          t0, tp, -563
                  sra          t2, t4, t1
                  sra          a7, a3, t3
                  sra          t3, s1, s9
8:                srl          a1, s7, s8
                  bltu         s10, t6, 14f
10:               sub          a6, s1, tp
                  bltu         t2, s9, 14f
                  sll          a1, a0, ra
                  slt          s8, t5, s4
14:               blt          s5, s7, 31f
                  or           a3, t5, zero
                  slti         s11, t1, 271
                  ori          a6, a1, -322
                  andi         s6, tp, -191
                  auipc        t3, 706944
                  bne          t6, a2, 35f
                  srl          s2, a1, a4
                  lui          a7, 1035538
                  slt          t5, t4, t0
                  srli         s10, tp, 1
                  add          s8, s2, s1
                  sltiu        ra, a0, 967
                  add          a2, t3, ra
                  add          a2, t0, a2
                  bltu         a7, t4, 44f
                  bge          tp, s6, 48f
31:               blt          a5, a1, 49f
                  srl          a1, s2, a1
                  slli         t3, t1, 24
                  sltiu        s4, a6, 854
35:               add          s7, a7, s11
                  sltu         s7, s3, s5
                  addi         s6, a1, -139
                  sub          s8, s2, s0
                  or           t2, s2, a1
                  srl          ra, t2, t3
                  sltiu        a0, s8, 166
                  blt          s9, a4, 54f
                  srli         a0, s11, 22
44:               srli         s9, t1, 2
                  sub          s4, s5, a0
                  or           s8, a7, a6
                  slt          s7, a7, zero
48:               sltu         t0, s4, t0
49:               and          tp, zero, a0
                  xori         t0, s4, -677
                  sltu         s4, s4, t2
                  and          a7, s11, t2
                  slli         t0, t6, 5
54:               nop
                  lui          sp, 1029471
                  bgeu         s2, t1, 61f
                  sra          zero, s6, tp
                  sltiu        t1, gp, -241
                  or           a2, a3, a5
                  ori          s10, sp, 614
61:               xor          a6, s8, a0
                  nop
                  bge          t6, tp, 77f
                  srai         s4, a7, 24
                  bne          a2, a3, 81f
                  add          ra, s2, a2
                  ori          a7, a2, -1785
                  sra          s1, t4, sp
                  slti         t3, ra, -1477
                  bgeu         a5, sp, 80f
                  sll          s2, t4, s9
                  sll          ra, a6, t2
                  sltu         a1, t3, a7
                  bne          s1, t2, 76f
                  sltu         a6, ra, s5
76:               and          t6, gp, a5
77:               lui          a5, 125452
                  ori          a3, a7, 178
                  srl          sp, s3, s6
80:               or           zero, sp, t4
81:               add          t0, zero, s5
                  slti         a6, t0, 231
                  bgeu         a7, t4, 99f
                  slli         t2, s6, 26
                  sltu         a0, t4, s5
                  sll          a3, a0, t2
                  bltu         ra, sp, 94f
                  sltu         ra, a7, s8
                  sltu         t1, s2, s11
                  beq          gp, s0, 98f
                  and          s8, a6, s10
                  nop
                  sltiu        s10, gp, -961
                  bne          a6, s1, sub_4_j8 #branch to jump instr
                  sra          s10, t6, s0
                  srl          t1, t2, a1
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  sltiu        tp, a5, -796
                  srl          zero, s1, a2
                  sub          s9, s2, t6
94:               andi         s1, t5, -1864
                  nop
                  sll          tp, s10, a7
                  andi         t6, s10, -475
98:               and          s3, t2, t3
99:               sltiu        s7, ra, -1342
                  bge          s9, sp, 112f
                  nop
                  lui          a0, 334252
                  sltiu        ra, s1, -810
                  andi         a6, s11, -2002
                  ori          ra, a7, -1549
                  slti         a0, s10, -576
                  srli         ra, a1, 9
                  sub          s2, t3, s11
                  xori         a7, s5, 507
                  andi         s1, t0, -1136
                  xori         s1, a4, 1114
112:              addi         t5, s4, 1651
                  sltu         t1, t0, zero
                  addi         sp, s0, -1502
                  xori         a2, s5, -134
                  sltu         s7, s5, a1
                  slt          s7, ra, t1
                  slli         ra, gp, 27
                  blt          s0, a4, 132f
                  slli         sp, s1, 27
                  bge          t6, a4, 124f
                  or           a2, a1, zero
                  xor          s9, s1, s3
124:              sltu         ra, a7, s6
                  srli         t3, s11, 27
                  ori          a2, s9, 1539
                  addi         s11, a2, -1373
                  srl          s4, a2, a5
                  blt          a4, zero, 138f
                  sra          a5, tp, a7
                  addi         gp, t4, 360
132:              addi         a2, s8, -224
                  nop
                  xori         zero, s0, -1805
                  slti         s11, s2, 1200
                  srli         t1, t3, 20
                  srl          a6, t2, t2
138:              xor          s11, a7, s3
                  lui          t3, 128835
                  sll          gp, ra, gp
                  slti         a2, t0, 740
                  ori          s8, s7, -1449
                  andi         s6, s2, 85
                  slli         t1, a3, 13
                  sra          a0, a1, s11
                  sll          s6, ra, a1
                  bge          a3, t6, 162f
                  slli         a0, s2, 8
                  lui          a2, 1016800
                  addi         gp, a2, -753
                  srl          s1, s5, s7
                  or           s9, a7, gp
                  auipc        s8, 693279
                  ori          s5, t6, 745
                  xor          s8, s1, s7
                  xor          a5, s2, s0
                  andi         s5, t0, 1436
                  lui          a0, 405008
                  beq          s4, s6, 176f
                  bltu         a7, s4, 161f
161:              lui          s8, 128949
162:              slt          a0, a7, t4
                  beq          s9, a0, 174f
                  or           s11, a1, s0
                  slt          a1, s6, s1
                  sub          a5, s4, s10
                  nop
                  xori         a7, t1, -688
                  addi         tp, a2, 1994
                  slli         a2, t4, 30
                  srai         a5, a0, 25
                  bltu         a0, t0, 181f
                  beq          gp, s0, 190f
174:              nop
                  sub          s2, s1, s1
176:              sra          s3, sp, s9
                  sra          gp, sp, t1
                  add          s6, sp, zero
                  xori         a1, t2, -1092
                  addi         s5, zero, 1633
181:              bltu         a0, a1, 197f
                  add          s9, s1, t6
                  srli         a0, t4, 29
                  nop
                  bge          s4, s7, 197f
                  nop
                  srli         s2, a2, 14
                  and          s7, sp, s9
                  la           a1, sub_5
                  srl          a6, a1, s11
                  addi         a1, a1, 859
                  srli         t0, ra, 29
                  sra          s4, tp, a6
                  beq          s11, t0, sub_4_j7 #branch to jump instr
                  sltiu        s7, a3, 1358
                  and          gp, s4, s6
                  slli         a3, a1, 9
sub_4_j7:         jalr         ra, a1, -858 #jump sub_4 -> sub_5
                  ori          a7, t1, -587
                  lui          s10, 1000451
                  add          ra, s8, s7
190:              srl          s6, s9, s8
                  sra          s6, gp, a5
                  sltiu        t1, t1, -538
                  beq          s2, ra, 209f
                  sltu         s6, s2, s0
                  beq          s9, s1, 210f
                  blt          t1, s4, 210f
197:              bltu         s5, ra, 209f
                  sltiu        t3, tp, 747
                  lui          a7, 391098
                  ori          s3, s2, 539
                  nop
                  sltu         t1, a5, t2
                  bge          gp, a6, 220f
                  add          a1, zero, a6
                  bgeu         a7, a1, 217f
                  slti         t3, a7, 599
                  xor          ra, t0, s3
                  bgeu         s6, ra, 223f
209:              xor          s3, t2, s2
sub_4_1:          jal          ra, 24f
0:                jal          t1, 6f
1:                jal          s5, 4f
2:                jal          t1, 5f
3:                jal          t1, 28f
4:                jal          gp, 18f
5:                jal          t1, 3b
6:                jal          t1, 16f
7:                jal          t2, 2b
8:                jal          a0, 1b
9:                jal          ra, 15f
10:               jal          tp, 27f
11:               jal          ra, 10b
12:               jal          ra, 7b
13:               jal          ra, 12b
14:               jal          ra, 23f
15:               jal          t0, 20f
16:               jal          t1, 19f
17:               jal          t3, 14b
18:               jal          ra, 13b
19:               jal          t1, 8b
20:               jal          ra, 0b
21:               jal          s7, 25f
22:               jal          t1, 11b
23:               jal          ra, 29f
24:               jal          t1, 26f
25:               jal          ra, 9b
26:               jal          t0, 22b
27:               jal          t1, 21b
28:               jal          tp, 17b
29:               srli         sp, s8, 20
210:              and          t5, s0, sp
                  blt          a1, t1, 229f
                  add          s4, zero, a6
                  blt          s1, s8, 230f
                  ori          a2, a5, 1625
                  blt          s0, t5, 231f
                  bne          tp, tp, 217f
217:              srli         t5, s2, 25
                  srl          t0, s2, tp
                  slti         s4, a3, 1786
220:              srl          s8, s8, s1
                  srl          t1, ra, tp
                  sra          s9, t5, s1
223:              and          sp, s8, a5
                  blt          s2, s8, 232f
                  or           a1, s4, t5
                  lui          t3, 40441
                  sub          a1, s1, t0
                  srai         s7, zero, 16
229:              bge          a2, s1, 238f
230:              sltu         s4, a0, a0
231:              slli         t1, s1, 3
232:              srli         a2, s11, 28
                  srli         t2, zero, 6
                  and          a2, tp, s5
                  sra          a6, zero, s5
                  or           a5, s2, s2
                  auipc        t3, 826058
238:              srai         gp, a4, 8
                  srai         t0, s10, 16
                  xor          a3, a5, a3
                  beq          t0, tp, 244f
                  sub          a5, t5, s10
                  srai         s2, t6, 12
244:              sll          tp, s5, tp
                  slti         t6, s4, -940
                  sra          t2, s8, a6
                  sltiu        a1, s7, 1706
                  sra          s3, a1, a1
                  srli         s6, a5, 22
                  srli         a1, t0, 30
                  slti         s11, s8, 1773
                  bltu         s4, a0, 254f
                  auipc        t3, 902052
254:              sltu         tp, a5, s1
                  sltiu        tp, s6, 1065
                  bge          tp, a0, 263f
                  slt          zero, a3, s3
                  srl          t2, t3, t1
                  addi         s7, t5, -1132
                  sra          s10, s4, s5
                  bge          s3, a1, 273f
                  srai         t5, s3, 25
263:              ori          t2, t2, -1331
                  ori          s2, t1, 82
                  ori          a5, zero, 499
                  srai         t1, tp, 18
                  xori         zero, s8, -1281
                  srl          t6, a7, gp
                  or           a5, t3, s9
                  bge          gp, a2, 285f
                  nop
                  srai         a7, a6, 10
273:              srai         t0, t3, 14
                  sltiu        s8, s3, 1301
                  xor          a3, a0, s7
                  sra          s1, s5, zero
                  srl          a1, s8, s1
                  beq          a2, t2, 287f
                  andi         a2, s0, -1841
                  ori          a0, a6, 1746
                  sub          t0, s7, t5
                  sltiu        zero, s6, 1817
                  bne          t4, a6, 287f
                  slt          t1, s10, s3
285:              ori          s10, t1, 1046
                  sltu         zero, a7, t0
287:              or           t2, zero, s6
                  lw           ra, 4(a4)
                  slli         a2, a0, 31
                  sub          a6, tp, s6
                  sub          zero, s4, zero
                  addi         a4, a4, 52
                  srl          t1, a5, gp
468:              addi x10, x1, 1
468:              jalr x10, x10, 0
sub_5:            and          s2, tp, s4
                  slt          a7, t5, s1
                  and          a2, s10, t3
                  srl          a5, a7, a1
                  sltiu        s9, ra, -863
                  addi         a4, a4, -24
                  addi         t2, a5, 558
                  auipc        s2, 395548
                  sw           ra, 4(a4)
                  xor          zero, a4, sp
                  srli         a2, gp, 2
                  sltiu        t0, t5, -337
                  bltu         a7, s0, 9f
                  sltiu        a7, s0, -247
                  sll          a0, t5, a2
                  and          s4, a7, t0
                  slt          a3, a7, s6
                  or           a7, a7, ra
                  srai         s3, gp, 22
                  blt          a4, t4, 9f
9:                lui          a6, 862388
                  lw           ra, 4(a4)
                  srai         s6, a5, 3
                  nop
                  auipc        t2, 329726
                  srl          s9, tp, s7
                  addi         a4, a4, 24
                  sltu         s11, a5, t6
                  slli         s2, a3, 16
                  add          tp, t1, t1
30:               addi x3, x1, 1
30:               jalr x3, x3, 0
sub_2:            slt          a7, zero, s10
                  sub          s7, s9, t3
                  addi         a4, a4, -28
                  sw           ra, 4(a4)
                  sltu         tp, ra, s0
                  nop
                  srli         a6, s7, 21
                  srl          a1, s8, t3
                  slti         s7, s8, 589
                  ori          tp, t1, 502
                  la           ra, sub_3
                  sub          a3, s2, zero
                  addi         ra, ra, 90
                  lui          s5, 569740
                  addi         s1, a0, -8
sub_2_j5:         jalr         ra, ra, -89 #jump sub_2 -> sub_3
                  addi         t3, s7, -494
                  andi         t1, a3, 328
                  slti         s2, t1, -901
                  sll          s5, s4, sp
                  ori          a3, s2, -1565
                  slt          t1, tp, s11
                  srl          s8, t1, gp
                  xor          t2, s6, s3
                  sra          s9, zero, ra
                  and          ra, t0, t0
                  andi         s11, s7, -1891
                  beq          a3, a3, 20f
                  sltiu        s2, s6, 856
                  lui          s2, 705361
                  nop
                  bge          a2, s5, 20f
                  srl          a6, a6, t4
                  sltiu        t0, ra, 1092
                  sltiu        a0, s11, 965
                  nop
20:               slti         t5, t2, -63
                  srli         a7, t5, 4
                  lw           ra, 4(a4)
                  andi         a1, sp, 952
                  lui          s2, 183419
                  and          t0, a1, t0
                  addi         a4, a4, 28
                  sltiu        s4, s6, 772
                  xor          a5, a6, a4
                  slt          gp, s1, s4
46:               addi x3, x1, 1
46:               jalr x3, x3, 0
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
mmode_intr_vector_1:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x29, x14, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x23, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x23, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x23, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x23, x20, ecall_handler
                  li x20, 0x1
                  beq x23, x20, instr_fault_handler
                  li x20, 0x5
                  beq x23, x20, load_fault_handler
                  li x20, 0x7
                  beq x23, x20, store_fault_handler
                  li x20, 0xc
                  beq x23, x20, pt_fault_handler
                  li x20, 0xd
                  beq x23, x20, pt_fault_handler
                  li x20, 0xf
                  beq x23, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

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
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x14, x29, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
