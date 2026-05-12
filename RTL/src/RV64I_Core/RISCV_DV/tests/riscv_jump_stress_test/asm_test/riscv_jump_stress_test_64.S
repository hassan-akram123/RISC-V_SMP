.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 1
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
                  li x0, 0x6
                  li x1, 0xfa30e761
                  li x2, 0xf2a8a5bb
                  li x3, 0xf1357915
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x6
                  li x7, 0x5
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x211c70fb
                  li x11, 0x80000000
                  li x12, 0x7352a7fc
                  li x13, 0xf1f13caa
                  li x14, 0x7f916938
                  li x15, 0x0
                  li x16, 0x47b6635c
                  li x17, 0x80000000
                  li x18, 0x6
                  li x20, 0x0
                  li x21, 0xfe938351
                  li x22, 0x6889def3
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x4d76eaa5
                  li x28, 0x616a03fe
                  li x29, 0xfd7ff16c
                  li x30, 0x9
                  li x31, 0x0
                  la x23, user_stack_end
main:             jal          t1, 18f
0:                jal          t1, 5f
1:                jal          t5, 26f
2:                jal          ra, 4f
3:                jal          ra, 14f
4:                jal          ra, 24f
5:                jal          ra, 23f
6:                jal          a0, 2b
7:                jal          ra, 16f
8:                jal          t1, 17f
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          t1, 20f
12:               jal          t1, 15f
13:               jal          a7, 21f
14:               jal          ra, 27f
15:               jal          t0, 6b
16:               jal          t1, 12b
17:               jal          ra, 25f
18:               jal          t0, 8b
19:               jal          ra, 1b
20:               jal          t1, 19b
21:               jal          a7, 11b
22:               jal          ra, 7b
23:               jal          ra, 13b
24:               jal          gp, 0b
25:               jal          ra, 22b
26:               jal          s0, 9b
27:               jal          ra, 28f
28:               auipc        t2, 784387
main_17:          jal          t1, 13f
0:                jal          s9, 21f
1:                jal          ra, 18f
2:                jal          gp, 7f
3:                jal          t1, 1b
4:                jal          t1, 19f
5:                jal          ra, 22f
6:                jal          ra, 14f
7:                jal          ra, 0b
8:                jal          t1, 10f
9:                jal          t1, 5b
10:               jal          t1, 3b
11:               jal          t4, 15f
12:               jal          t1, 4b
13:               jal          ra, 17f
14:               jal          tp, 8b
15:               jal          t2, 9b
16:               jal          ra, 23f
17:               jal          tp, 2b
18:               jal          a2, 20f
19:               jal          a3, 16b
20:               jal          t1, 12b
21:               jal          ra, 11b
22:               jal          ra, 6b
23:               addi         a3, s10, 1673
main_10:          jal          t1, 7f
0:                jal          s0, 2f
1:                jal          ra, 15f
2:                jal          ra, 22f
3:                jal          a5, 13f
4:                jal          a4, 9f
5:                jal          s1, 20f
6:                jal          a0, 24f
7:                jal          s5, 3b
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          ra, 18f
11:               jal          gp, 14f
12:               jal          s10, 6b
13:               jal          t1, 23f
14:               jal          ra, 4b
15:               jal          t1, 12b
16:               jal          t1, 1b
17:               jal          t1, 11b
18:               jal          ra, 8b
19:               jal          ra, 25f
20:               jal          t1, 16b
21:               jal          ra, 17b
22:               jal          ra, 21b
23:               jal          t1, 10b
24:               jal          ra, 19b
25:               add          s1, t1, t1
main_30:          jal          t1, 13f
0:                jal          ra, 14f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          t1, 15f
4:                jal          t1, 0b
5:                jal          s1, 18f
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          t1, 9f
9:                jal          s4, 2b
10:               jal          t0, 12f
11:               jal          ra, 8b
12:               jal          t1, 3b
13:               jal          ra, 1b
14:               jal          tp, 17f
15:               jal          ra, 6b
16:               jal          ra, 11b
17:               jal          s5, 16b
18:               slt          tp, t5, a2
main_8:           jal          t1, 14f
0:                jal          ra, 9f
1:                jal          ra, 18f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          t1, 20f
5:                jal          ra, 0b
6:                jal          ra, 15f
7:                jal          ra, 13f
8:                jal          ra, 1b
9:                jal          ra, 3b
10:               jal          a5, 12f
11:               jal          t0, 4b
12:               jal          tp, 19f
13:               jal          ra, 10b
14:               jal          ra, 17f
15:               jal          ra, 8b
16:               jal          t1, 11b
17:               jal          ra, 5b
18:               jal          s4, 16b
19:               jal          s11, 6b
20:               sub          t6, a4, s11
main_11:          jal          t1, 9f
0:                jal          ra, 12f
1:                jal          a5, 8f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          a3, 5f
5:                jal          gp, 1b
6:                jal          tp, 10f
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          s4, 3b
11:               jal          ra, 6b
12:               ori          s4, t1, -683
main_5:           jal          t1, 1f
0:                jal          t1, 16f
1:                jal          a3, 6f
2:                jal          t1, 10f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          ra, 9f
6:                jal          a1, 8f
7:                jal          ra, 0b
8:                jal          a2, 12f
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          s4, 5b
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          a6, 15f
15:               jal          ra, 7b
16:               srl          a2, s0, s1
main_38:          jal          t1, 8f
0:                jal          ra, 9f
1:                jal          t6, 7f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          s8, 2b
5:                jal          t6, 4b
6:                jal          t1, 1b
7:                jal          ra, 3b
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          ra, 11f
11:               sltu         a1, s2, t0
main_32:          jal          t1, 1f
0:                jal          gp, 7f
1:                jal          ra, 16f
2:                jal          ra, 21f
3:                jal          a3, 19f
4:                jal          ra, 11f
5:                jal          a5, 22f
6:                jal          ra, 8f
7:                jal          ra, 6b
8:                jal          a0, 15f
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          ra, 24f
12:               jal          ra, 23f
13:               jal          ra, 3b
14:               jal          a3, 12b
15:               jal          t1, 20f
16:               jal          ra, 10b
17:               jal          ra, 2b
18:               jal          t1, 0b
19:               jal          ra, 4b
20:               jal          a1, 5b
21:               jal          ra, 9b
22:               jal          s2, 14b
23:               jal          t1, 13b
24:               add          s9, a0, a2
main_18:          jal          t1, 9f
0:                jal          ra, 11f
1:                jal          ra, 6f
2:                jal          t1, 15f
3:                jal          s9, 0b
4:                jal          a0, 2b
5:                jal          t1, 3b
6:                jal          a6, 13f
7:                jal          t0, 8f
8:                jal          gp, 14f
9:                jal          t1, 7b
10:               jal          ra, 4b
11:               jal          t1, 12f
12:               jal          t0, 10b
13:               jal          ra, 5b
14:               jal          ra, 1b
15:               sltiu        t2, s1, -664
main_31:          jal          t1, 9f
0:                jal          a4, 25f
1:                jal          ra, 7f
2:                jal          ra, 19f
3:                jal          a3, 13f
4:                jal          s6, 16f
5:                jal          t1, 21f
6:                jal          ra, 5b
7:                jal          ra, 23f
8:                jal          ra, 1b
9:                jal          ra, 2b
10:               jal          ra, 18f
11:               jal          tp, 3b
12:               jal          ra, 4b
13:               jal          t1, 27f
14:               jal          t0, 11b
15:               jal          a3, 6b
16:               jal          s2, 14b
17:               jal          t1, 12b
18:               jal          ra, 26f
19:               jal          ra, 15b
20:               jal          tp, 10b
21:               jal          t1, 8b
22:               jal          s2, 20b
23:               jal          ra, 0b
24:               jal          ra, 22b
25:               jal          t1, 24b
26:               jal          ra, 17b
27:               srai         a3, s9, 24
main_9:           jal          t1, 11f
0:                jal          t1, 6f
1:                jal          t1, 7f
2:                jal          a7, 10f
3:                jal          s0, 1b
4:                jal          t1, 12f
5:                jal          a3, 17f
6:                jal          t1, 14f
7:                jal          ra, 5b
8:                jal          t1, 2b
9:                jal          s0, 15f
10:               jal          ra, 16f
11:               jal          ra, 8b
12:               jal          a0, 13f
13:               jal          gp, 3b
14:               jal          tp, 4b
15:               jal          ra, 0b
16:               jal          t2, 9b
17:               and          t5, t3, s0
main_24:          jal          t1, 13f
0:                jal          t5, 19f
1:                jal          ra, 14f
2:                jal          t1, 16f
3:                jal          gp, 8f
4:                jal          s2, 11f
5:                jal          t1, 2b
6:                jal          ra, 17f
7:                jal          ra, 18f
8:                jal          tp, 7b
9:                jal          ra, 12f
10:               jal          s11, 5b
11:               jal          t1, 3b
12:               jal          ra, 0b
13:               jal          t1, 15f
14:               jal          tp, 4b
15:               jal          ra, 10b
16:               jal          ra, 6b
17:               jal          ra, 1b
18:               jal          s6, 9b
19:               ori          s10, t0, 90
main_3:           jal          t1, 20f
0:                jal          t6, 11f
1:                jal          ra, 15f
2:                jal          t1, 23f
3:                jal          s10, 7f
4:                jal          t1, 5f
5:                jal          ra, 3b
6:                jal          t3, 2b
7:                jal          t6, 14f
8:                jal          a0, 0b
9:                jal          ra, 13f
10:               jal          t2, 21f
11:               jal          ra, 12f
12:               jal          ra, 9b
13:               jal          ra, 16f
14:               jal          ra, 17f
15:               jal          ra, 10b
16:               jal          t0, 1b
17:               jal          t6, 8b
18:               jal          ra, 4b
19:               jal          t1, 18b
20:               jal          gp, 22f
21:               jal          t1, 6b
22:               jal          s11, 19b
23:               and          a1, t3, a2
main_1:           jal          t1, 10f
0:                jal          ra, 2f
1:                jal          t0, 11f
2:                jal          t1, 3f
3:                jal          s8, 7f
4:                jal          gp, 8f
5:                jal          s5, 9f
6:                jal          tp, 4b
7:                jal          t1, 1b
8:                jal          tp, 12f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               lui          t6, 234767
main_33:          jal          t1, 2f
0:                jal          ra, 7f
1:                jal          ra, 22f
2:                jal          ra, 27f
3:                jal          ra, 17f
4:                jal          gp, 9f
5:                jal          t1, 15f
6:                jal          t1, 11f
7:                jal          t1, 20f
8:                jal          ra, 26f
9:                jal          t0, 23f
10:               jal          t5, 21f
11:               jal          ra, 25f
12:               jal          s2, 24f
13:               jal          s2, 18f
14:               jal          ra, 13b
15:               jal          t1, 0b
16:               jal          ra, 6b
17:               jal          ra, 12b
18:               jal          t1, 4b
19:               jal          ra, 28f
20:               jal          ra, 16b
21:               jal          ra, 14b
22:               jal          ra, 3b
23:               jal          ra, 5b
24:               jal          t1, 19b
25:               jal          ra, 1b
26:               jal          t1, 10b
27:               jal          t0, 8b
28:               ori          ra, tp, -1694
main_40:          jal          t1, 5f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          t6, 1b
4:                jal          ra, 3b
5:                jal          ra, 0b
6:                jal          t1, 4b
7:                jal          a6, 10f
8:                jal          s9, 7b
9:                jal          t1, 8b
10:               jal          s9, 2b
11:               andi         s6, s4, -1258
main_13:          jal          t1, 3f
0:                jal          s11, 8f
1:                jal          s1, 9f
2:                jal          s4, 10f
3:                jal          t1, 6f
4:                jal          ra, 1b
5:                jal          ra, 4b
6:                jal          s5, 7f
7:                jal          t1, 0b
8:                jal          s8, 5b
9:                jal          t1, 2b
10:               sltu         a7, t5, t0
main_6:           jal          t1, 16f
0:                jal          t1, 3f
1:                jal          ra, 11f
2:                jal          ra, 17f
3:                jal          ra, 9f
4:                jal          tp, 14f
5:                jal          t1, 2b
6:                jal          ra, 4b
7:                jal          tp, 15f
8:                jal          ra, 10f
9:                jal          t1, 8b
10:               jal          a5, 12f
11:               jal          ra, 18f
12:               jal          t1, 13f
13:               jal          ra, 7b
14:               jal          ra, 5b
15:               jal          ra, 6b
16:               jal          t1, 0b
17:               jal          ra, 1b
18:               xor          a4, a6, a5
main_14:          jal          t1, 12f
0:                jal          ra, 6f
1:                jal          s10, 10f
2:                jal          ra, 5f
3:                jal          ra, 2b
4:                jal          t1, 11f
5:                jal          t1, 0b
6:                jal          ra, 14f
7:                jal          ra, 9f
8:                jal          ra, 15f
9:                jal          ra, 13f
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          ra, 7b
13:               jal          ra, 1b
14:               jal          ra, 4b
15:               addi         s5, s0, -834
main_28:          jal          t1, 14f
0:                jal          t3, 13f
1:                jal          t1, 8f
2:                jal          ra, 4f
3:                jal          t1, 24f
4:                jal          t1, 17f
5:                jal          t1, 6f
6:                jal          a3, 16f
7:                jal          t0, 11f
8:                jal          gp, 23f
9:                jal          t0, 22f
10:               jal          t1, 7b
11:               jal          ra, 9b
12:               jal          ra, 5b
13:               jal          t0, 12b
14:               jal          ra, 27f
15:               jal          t1, 2b
16:               jal          ra, 10b
17:               jal          ra, 19f
18:               jal          ra, 15b
19:               jal          ra, 25f
20:               jal          t4, 21f
21:               jal          a3, 18b
22:               jal          gp, 1b
23:               jal          ra, 3b
24:               jal          t1, 28f
25:               jal          gp, 26f
26:               jal          ra, 0b
27:               jal          gp, 20b
28:               ori          t5, a0, 233
main_23:          jal          t1, 26f
0:                jal          s10, 16f
1:                jal          s0, 0b
2:                jal          t1, 24f
3:                jal          t3, 8f
4:                jal          tp, 23f
5:                jal          t1, 4b
6:                jal          ra, 19f
7:                jal          ra, 14f
8:                jal          ra, 6b
9:                jal          ra, 20f
10:               jal          ra, 7b
11:               jal          ra, 12f
12:               jal          t2, 27f
13:               jal          t4, 21f
14:               jal          ra, 29f
15:               jal          ra, 5b
16:               jal          t1, 2b
17:               jal          ra, 30f
18:               jal          ra, 3b
19:               jal          ra, 28f
20:               jal          s8, 22f
21:               jal          ra, 9b
22:               jal          t1, 11b
23:               jal          ra, 13b
24:               jal          a5, 18b
25:               jal          s2, 1b
26:               jal          t0, 15b
27:               jal          tp, 10b
28:               jal          ra, 17b
29:               jal          t1, 25b
30:               srai         t5, t5, 21
main_20:          jal          t1, 22f
0:                jal          s9, 11f
1:                jal          ra, 18f
2:                jal          t1, 19f
3:                jal          ra, 9f
4:                jal          ra, 16f
5:                jal          ra, 17f
6:                jal          ra, 1b
7:                jal          ra, 12f
8:                jal          ra, 3b
9:                jal          s0, 14f
10:               jal          ra, 6b
11:               jal          t0, 4b
12:               jal          s8, 23f
13:               jal          t1, 24f
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          ra, 20f
17:               jal          ra, 0b
18:               jal          s2, 21f
19:               jal          t1, 15b
20:               jal          ra, 10b
21:               jal          ra, 2b
22:               jal          a5, 8b
23:               jal          ra, 13b
24:               slli         s1, a7, 27
main_21:          jal          t1, 11f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          ra, 10f
3:                jal          t1, 1b
4:                jal          t1, 3b
5:                jal          ra, 16f
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          ra, 12f
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          ra, 19f
14:               jal          ra, 0b
15:               jal          t1, 18f
16:               jal          t1, 17f
17:               jal          ra, 15b
18:               jal          ra, 6b
19:               or           a3, sp, ra
main_25:          jal          t1, 1f
0:                jal          t1, 6f
1:                jal          a1, 10f
2:                jal          t1, 11f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          ra, 0b
6:                jal          t0, 14f
7:                jal          ra, 13f
8:                jal          t0, 15f
9:                jal          s11, 4b
10:               jal          t1, 5b
11:               jal          ra, 3b
12:               jal          ra, 8b
13:               jal          ra, 2b
14:               jal          t6, 7b
15:               and          a2, t3, s10
main_34:          jal          t1, 7f
0:                jal          ra, 17f
1:                jal          t1, 8f
2:                jal          tp, 0b
3:                jal          ra, 1b
4:                jal          gp, 3b
5:                jal          ra, 10f
6:                jal          ra, 2b
7:                jal          ra, 9f
8:                jal          t1, 11f
9:                jal          ra, 12f
10:               jal          t4, 13f
11:               jal          ra, 6b
12:               jal          a5, 5b
13:               jal          a0, 16f
14:               jal          s10, 15f
15:               jal          t1, 4b
16:               jal          t1, 14b
17:               srai         a1, t3, 29
main_37:          jal          t1, 15f
0:                jal          ra, 12f
1:                jal          ra, 16f
2:                jal          t1, 13f
3:                jal          t1, 10f
4:                jal          a3, 9f
5:                jal          ra, 1b
6:                jal          ra, 14f
7:                jal          s4, 3b
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          ra, 11f
11:               jal          ra, 17f
12:               jal          ra, 6b
13:               jal          ra, 7b
14:               jal          t1, 4b
15:               jal          t1, 8b
16:               jal          ra, 2b
17:               xori         s11, t5, -710
main_0:           jal          t1, 9f
0:                jal          s10, 11f
1:                jal          t1, 14f
2:                jal          t3, 8f
3:                jal          t4, 15f
4:                jal          ra, 7f
5:                jal          ra, 12f
6:                jal          t1, 5b
7:                jal          gp, 1b
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          t1, 6b
11:               jal          t1, 2b
12:               jal          ra, 16f
13:               jal          ra, 4b
14:               jal          t1, 10b
15:               jal          ra, 13b
16:               jal          ra, 17f
17:               slt          s6, s11, s4
main_22:          jal          t1, 11f
0:                jal          tp, 19f
1:                jal          ra, 6f
2:                jal          a5, 16f
3:                jal          ra, 18f
4:                jal          t6, 5f
5:                jal          a4, 10f
6:                jal          ra, 14f
7:                jal          ra, 15f
8:                jal          ra, 7b
9:                jal          ra, 12f
10:               jal          tp, 20f
11:               jal          s0, 17f
12:               jal          a7, 8b
13:               jal          ra, 0b
14:               jal          ra, 9b
15:               jal          ra, 21f
16:               jal          ra, 3b
17:               jal          s11, 4b
18:               jal          ra, 1b
19:               jal          ra, 2b
20:               jal          s9, 13b
21:               lui          s8, 778302
main_35:          jal          t1, 3f
0:                jal          ra, 6f
1:                jal          ra, 17f
2:                jal          tp, 4f
3:                jal          ra, 12f
4:                jal          ra, 19f
5:                jal          s9, 13f
6:                jal          gp, 16f
7:                jal          ra, 10f
8:                jal          ra, 14f
9:                jal          t1, 8b
10:               jal          a4, 11f
11:               jal          tp, 2b
12:               jal          t1, 18f
13:               jal          ra, 7b
14:               jal          t3, 1b
15:               jal          t1, 9b
16:               jal          tp, 5b
17:               jal          ra, 0b
18:               jal          ra, 15b
19:               sll          zero, ra, a7
main_29:          jal          t1, 7f
0:                jal          ra, 20f
1:                jal          ra, 12f
2:                jal          ra, 16f
3:                jal          ra, 9f
4:                jal          ra, 5f
5:                jal          ra, 18f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          tp, 15f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          ra, 22f
12:               jal          t1, 24f
13:               jal          ra, 0b
14:               jal          tp, 21f
15:               jal          t1, 14b
16:               jal          ra, 3b
17:               jal          a6, 2b
18:               jal          ra, 19f
19:               jal          ra, 23f
20:               jal          t1, 17b
21:               jal          t1, 4b
22:               jal          s9, 10b
23:               jal          ra, 6b
24:               srli         s1, gp, 31
main_19:          jal          t1, 5f
0:                jal          ra, 8f
1:                jal          a1, 3f
2:                jal          a5, 7f
3:                jal          s1, 2b
4:                jal          s5, 12f
5:                jal          t4, 0b
6:                jal          s4, 11f
7:                jal          ra, 9f
8:                jal          tp, 10f
9:                jal          ra, 4b
10:               jal          ra, 6b
11:               jal          ra, 1b
12:               and          s2, a3, a7
main_16:          jal          t1, 6f
0:                jal          ra, 3f
1:                jal          ra, 27f
2:                jal          t1, 22f
3:                jal          ra, 2b
4:                jal          ra, 12f
5:                jal          t1, 19f
6:                jal          ra, 11f
7:                jal          a2, 10f
8:                jal          t1, 17f
9:                jal          ra, 18f
10:               jal          ra, 28f
11:               jal          ra, 9b
12:               jal          a6, 24f
13:               jal          s10, 5b
14:               jal          a2, 1b
15:               jal          ra, 13b
16:               jal          ra, 20f
17:               jal          t3, 15b
18:               jal          ra, 25f
19:               jal          s5, 26f
20:               jal          a1, 4b
21:               jal          a0, 7b
22:               jal          t1, 8b
23:               jal          ra, 16b
24:               jal          ra, 14b
25:               jal          t0, 0b
26:               jal          t1, 23b
27:               jal          s0, 21b
28:               slt          a7, s9, a6
main_27:          jal          t1, 9f
0:                jal          ra, 3f
1:                jal          ra, 0b
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          s6, 8f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          ra, 2b
10:               jal          s11, 14f
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          ra, 6b
14:               slt          t2, a1, s10
                  and          a7, a3, s4
                  or           t3, a2, t3
                  bne          a5, a4, 13f
                  xori         a1, t6, 1778
                  bne          s0, s0, 16f
                  slli         a4, s0, 13
                  beq          tp, s5, 17f
                  slt          t3, sp, s5
                  bltu         s9, s10, 24f
                  sltiu        t6, s3, 1503
                  sltu         a4, t2, a4
                  blt          a2, t3, 25f
                  lui          a5, 46392
13:               sra          t3, t5, t6
                  xori         s6, a7, -950
                  srai         a0, t0, 27
16:               slli         s4, gp, 22
17:               blt          s6, a2, 36f
                  sra          a3, ra, a6
                  srai         a2, t2, 15
                  or           a0, s7, s2
                  or           s8, ra, t4
                  slt          a5, a5, s8
                  sub          gp, tp, s7
24:               slt          s10, a2, s8
25:               ori          tp, t4, 1830
                  sub          s5, a6, t3
                  bne          s3, s2, 46f
                  sll          s6, s10, t6
                  sra          tp, s0, gp
                  slli         a6, t0, 0
                  add          zero, t0, t2
                  bgeu         s8, s1, 35f
                  slli         s5, sp, 17
                  bltu         t2, a2, 51f
35:               sll          a1, t0, t5
36:               nop
                  sltu         t6, gp, s10
                  auipc        s11, 682360
                  bge          gp, s11, 41f
                  sltu         a6, s8, s6
41:               bltu         s6, a7, 48f
                  and          tp, a7, a3
                  beq          s1, s4, 50f
                  srai         t3, t5, 21
                  beq          s5, s10, 51f
46:               addi         ra, t4, 137
                  blt          s8, a1, 62f
48:               bge          s11, a6, 57f
                  sra          s11, s11, zero
50:               add          ra, zero, s3
51:               slli         t2, sp, 14
                  bgeu         s9, s9, 55f
                  addi         t2, a2, 135
                  bgeu         a1, t4, 58f
55:               xori         zero, s9, 1849
                  srl          s10, t4, s7
57:               sltiu        s1, s2, 828
58:               sub          a3, s0, s10
                  sll          t5, zero, t6
                  sltiu        s0, t6, -1421
                  bgeu         t3, sp, 76f
62:               slti         tp, s5, 1569
                  slti         t1, t5, -806
                  add          t6, t4, zero
                  blt          s10, a2, 69f
                  slli         a7, t4, 9
                  slt          s9, a0, a6
                  slt          t1, s6, a5
69:               bge          s1, t0, 84f
                  bgeu         t3, t5, 89f
                  sub          a4, s0, zero
                  addi         s1, t6, -1638
                  srl          s11, a1, t1
                  slli         s4, t6, 24
                  bltu         a0, tp, 95f
76:               lui          t6, 174444
                  or           a0, s8, a2
                  ori          t1, a1, -976
                  sll          gp, a6, t1
                  lui          a6, 938363
                  or           s6, a3, t1
                  bltu         a0, zero, 96f
                  slti         a7, s0, -438
84:               auipc        s11, 988114
                  addi         s10, s0, 1680
                  bne          s3, a7, 94f
                  srl          s11, s11, t5
                  addi         a0, s8, -866
89:               sub          t0, a4, a1
                  sra          t5, tp, a5
                  srl          t4, s6, s8
                  sltiu        s9, a2, 1646
                  slti         s11, a2, -1338
94:               srai         t0, s8, 23
95:               srai         s1, a4, 14
96:               addi         s0, s0, 1238
                  sltiu        s4, a1, -67
                  bne          a3, s2, 114f
                  xori         a6, zero, 618
                  sra          a5, t3, a4
                  xor          s6, a7, a5
                  addi         s5, s8, -12
                  sll          s6, a3, a2
                  and          s10, s2, s6
                  beq          s11, t6, 114f
                  blt          a2, sp, 110f
                  slt          t1, s1, t1
                  sra          a6, s4, zero
                  srai         a1, s5, 3
110:              bgeu         tp, t5, 118f
                  slt          a3, s2, s3
                  auipc        zero, 513101
                  bge          a1, a2, 126f
114:              or           s6, s10, a3
                  bne          t0, a6, 124f
                  srli         s6, t5, 4
                  addi         s10, a0, 1332
118:              sll          s9, t4, a0
                  sltu         t2, t3, s9
                  slti         a3, s4, -456
                  xor          t6, zero, a5
                  bgeu         t2, a5, 137f
main_26:          jal          t1, 5f
0:                jal          t1, 16f
1:                jal          a1, 4f
2:                jal          t1, 3f
3:                jal          gp, 14f
4:                jal          tp, 17f
5:                jal          ra, 15f
6:                jal          ra, 22f
7:                jal          tp, 12f
8:                jal          ra, 18f
9:                jal          t6, 0b
10:               jal          t1, 19f
11:               jal          ra, 24f
12:               jal          t1, 2b
13:               jal          t4, 10b
14:               jal          ra, 21f
15:               jal          ra, 20f
16:               jal          t1, 7b
17:               jal          t2, 11b
18:               jal          t6, 6b
19:               jal          a5, 8b
20:               jal          gp, 23f
21:               jal          ra, 1b
22:               jal          t0, 9b
23:               jal          s0, 13b
24:               xor          t6, s0, s10
                  sra          a3, s7, a2
124:              bne          a6, a6, 128f
                  srai         s8, a7, 27
126:              slti         t1, tp, 1156
                  srai         s5, s9, 22
128:              bge          t1, t3, 132f
                  bne          a1, t0, 136f
                  andi         tp, a2, 306
                  ori          zero, a6, 1555
132:              nop
                  sll          t2, a6, s8
                  bgeu         sp, tp, 140f
                  slt          t3, s8, s11
136:              bge          s11, s9, 145f
137:              and          a1, s11, ra
                  blt          a4, t4, 141f
                  beq          s1, s1, 146f
140:              bne          a4, s3, 159f
141:              slli         s5, s11, 26
                  lui          s1, 217976
                  bgeu         s1, t3, 151f
                  slli         t4, s0, 0
145:              srai         t6, t6, 8
146:              bltu         s6, s11, 165f
                  slli         a1, tp, 29
                  bltu         s5, s5, 167f
                  nop
                  sub          a6, t0, s5
151:              bltu         a3, gp, 164f
                  sub          tp, a7, a5
                  xori         s10, s7, 1016
                  and          a4, t1, gp
                  slt          t2, s3, a6
                  add          tp, t5, a6
                  addi         s5, a0, -1500
                  ori          ra, a4, -384
159:              bne          sp, s8, 168f
                  bgeu         s0, a5, 174f
                  bne          t5, a0, 164f
                  addi         t2, s2, 360
                  bltu         s4, s0, 171f
164:              sll          tp, s11, s5
165:              sra          t2, s8, s9
                  slt          t5, t5, s7
167:              bne          s11, s11, 182f
168:              sub          tp, s0, s11
                  nop
                  srai         t2, s8, 1
171:              bgeu         t2, a7, 191f
                  auipc        s0, 348271
                  srli         tp, a2, 3
174:              addi         s11, t2, 935
                  or           t2, s3, t2
                  slt          s5, s11, t2
                  andi         zero, t2, 1157
                  and          gp, s0, t5
                  slti         t6, t5, -627
                  xor          a7, tp, s1
                  ori          s11, s0, 750
182:              slt          zero, s4, t6
                  bge          s9, gp, 200f
                  srai         a4, s5, 4
                  sub          a0, t0, a0
                  bltu         t0, s2, 197f
                  slli         t2, a0, 24
                  or           s5, a4, s8
                  sra          a1, a6, t5
                  slli         t5, s0, 28
191:              addi         s4, s3, -1541
                  bge          s8, a3, 208f
                  bltu         a7, s11, 195f
                  lui          t5, 439889
195:              blt          t2, t6, 210f
                  auipc        s11, 674082
197:              blt          s4, s10, 213f
                  ori          a2, a4, -480
                  slli         a6, a1, 12
200:              andi         a5, gp, -1760
                  bne          s6, s0, 212f
                  slt          a0, t0, t5
                  bge          t1, s8, 207f
                  bltu         a2, sp, 216f
                  addi         a3, s8, 1092
                  add          gp, s4, a3
207:              blt          a6, t0, 216f
208:              srai         t4, a5, 20
                  bge          t0, zero, 223f
210:              sltu         s8, s6, s8
                  slt          s10, s5, s0
212:              sra          s4, s3, s0
213:              bgeu         s1, s4, 228f
                  addi         a4, ra, 1690
                  bne          s0, a4, 219f
216:              slli         s9, a5, 7
                  bltu         t5, tp, 219f
                  sra          a0, t6, t2
219:              or           a3, a6, t1
                  blt          a1, s11, 239f
                  andi         s0, s4, 978
                  or           t0, a1, t0
223:              andi         t3, t4, 1893
                  srl          s4, tp, t3
                  bgeu         s3, a6, 233f
                  or           t3, a2, ra
                  bne          t2, s11, 231f
228:              srli         a5, t1, 1
                  auipc        tp, 857611
                  bge          s10, s11, 233f
231:              blt          s8, t3, 242f
                  add          ra, ra, t4
233:              lui          t1, 977220
                  xor          a0, t4, a4
                  sltiu        s10, t4, 1249
                  lui          s2, 931400
                  bne          s5, a3, 248f
                  or           t5, ra, s11
239:              srai         t6, ra, 26
                  addi         s11, t6, -263
                  srl          zero, s7, s10
242:              auipc        t1, 710309
                  slli         t0, s2, 9
                  ori          s9, gp, 1375
                  bge          t6, s7, 264f
                  beq          a5, gp, 265f
                  srli         zero, t0, 31
                  srl          s6, a0, t1
                  la           t2, sub_2
                  ori          gp, ra, -265
                  addi         t2, t2, -482
                  slt          a5, s4, s10
                  lui          t6, 756550
                  or           ra, ra, t4
main_j2:          jalr         t1, t2, 483 #jump main -> sub_2
                  srai         a5, s11, 0
248:              sltu         s6, s3, s8
                  xor          s1, t1, tp
                  xori         a1, sp, 985
                  bltu         sp, s3, 260f
                  sltiu        t1, a1, -1578
                  and          tp, t2, gp
                  or           s0, t1, s11
                  bne          t3, a7, 270f
                  lui          a7, 583020
                  slti         t4, ra, -1483
                  bltu         s7, s1, 266f
                  sltiu        zero, ra, -1025
260:              and          s2, a0, t4
                  addi         a6, s5, -168
                  beq          s0, s10, 269f
                  sub          t5, a2, a6
264:              bge          s5, s11, 277f
265:              bltu         s3, a5, 285f
266:              bge          t0, s0, 272f
                  slti         s1, ra, -1810
                  slti         t2, s8, -787
269:              slli         s0, s6, 0
270:              xor          a0, t3, a3
                  bge          a5, zero, 283f
272:              sltu         a7, s8, t5
                  srai         t3, a1, 30
                  xor          a7, t2, a5
                  and          s1, t4, s10
                  ori          s1, s10, -352
277:              or           t4, s9, a7
                  bne          t5, gp, 294f
                  sra          s8, s2, s9
                  slli         s4, a2, 23
                  xori         t1, t2, 1007
                  srl          ra, t0, a1
283:              sltu         t4, zero, t4
                  slti         s11, s8, -1890
285:              srli         s11, gp, 2
                  bne          s4, a6, 301f
                  srli         s6, t6, 7
                  and          a2, s4, s1
                  blt          t2, t4, 298f
                  sltiu        t1, a6, 2008
                  addi         s8, a2, 124
                  and          zero, s3, zero
                  and          t6, s4, t4
294:              ori          t2, s9, -591
                  bgeu         t2, s11, 312f
                  lui          t1, 661191
                  bne          a3, t1, 301f
298:              add          a0, s6, a4
                  srai         s8, t1, 24
                  slti         a4, t6, 1600
301:              srli         s1, s4, 2
main_4:           jal          t1, 14f
0:                jal          ra, 12f
1:                jal          ra, 5f
2:                jal          t1, 7f
3:                jal          ra, 16f
4:                jal          t1, 20f
5:                jal          ra, 10f
6:                jal          t1, 3b
7:                jal          ra, 0b
8:                jal          t0, 21f
9:                jal          ra, 11f
10:               jal          ra, 17f
11:               jal          t6, 1b
12:               jal          ra, 13f
13:               jal          s9, 9b
14:               jal          t5, 23f
15:               jal          t1, 18f
16:               jal          t1, 4b
17:               jal          ra, 19f
18:               jal          ra, 8b
19:               jal          t1, 6b
20:               jal          ra, 15b
21:               jal          ra, 22f
22:               jal          t1, 24f
23:               jal          ra, 2b
24:               nop
                  ori          a5, t4, -1345
                  bltu         s0, a1, 312f
                  add          t4, gp, s3
                  bgeu         s6, t0, 308f
                  lui          s8, 693134
                  xor          t6, a7, s7
308:              bltu         a1, s6, 322f
                  slli         s11, s2, 3
                  srai         t3, s9, 5
                  xor          s10, a6, s4
312:              nop
                  slli         a3, s7, 25
                  xori         s11, zero, 531
                  addi         s2, s4, 1743
                  sll          a7, s2, ra
                  slti         t1, zero, -1929
                  nop
                  srai         t4, t5, 31
                  srli         a5, s11, 20
                  addi         t1, t4, 1674
322:              xor          t6, t6, a1
                  or           s2, t0, a2
                  sltiu        zero, ra, -632
                  add          t6, a5, a1
                  slt          a7, s4, s1
                  beq          a3, t6, 341f
                  bgeu         s4, sp, 344f
                  add          s8, a0, s6
                  sltiu        a7, a4, 690
                  sll          s11, gp, t5
                  slt          zero, a1, zero
                  bge          t3, a4, 340f
                  bgeu         a2, s5, 350f
                  nop
                  and          t1, s10, t5
                  nop
                  srai         t3, t4, 0
                  beq          s5, a3, 343f
340:              xor          a6, a0, a6
341:              ori          a0, zero, 370
                  or           a7, a6, a6
343:              auipc        a1, 421574
344:              bltu         ra, a0, 350f
                  addi         a2, tp, 1205
                  auipc        ra, 323840
                  sltiu        a7, a1, 345
                  and          a0, s2, s11
                  sll          t4, s0, a7
350:              sll          t4, t2, t2
                  beq          t6, s3, 362f
                  blt          s8, s9, 366f
                  add          ra, a6, s3
                  sub          s4, a3, s1
                  auipc        t3, 404978
                  lui          s8, 936507
                  bne          a2, t0, 372f
                  bgeu         a4, s9, 365f
                  slli         s11, gp, 7
                  sltiu        a2, s0, -743
                  addi         a6, t4, -202
362:              blt          a2, t4, 382f
                  and          t5, t0, a5
                  sll          zero, t5, t0
365:              slt          a2, a5, s7
366:              andi         s9, a7, 1985
                  add          s1, a3, t0
                  bltu         s11, ra, 370f
                  add          s6, t5, a3
370:              srai         s5, s4, 7
                  srai         t1, a1, 10
372:              and          t4, s7, a1
                  slli         s5, s5, 28
                  xori         a7, zero, -190
                  blt          t0, s3, 379f
                  beq          s7, t5, 391f
                  lui          s2, 480221
                  beq          a1, s8, 394f
379:              srai         s11, s2, 8
                  srai         t3, t2, 10
                  slti         t5, t5, 2038
382:              bne          a3, s6, 385f
                  or           s8, s0, t0
                  sub          t0, s4, t0
385:              xori         a2, t3, -211
                  srl          s0, s1, ra
                  lui          a1, 706616
                  xor          s9, gp, a3
                  slti         t3, s5, -1804
                  addi         t6, gp, 677
391:              srl          t0, a3, s2
                  sltu         s4, s5, tp
                  auipc        t5, 606601
394:              bgeu         a6, a0, 402f
                  blt          t2, gp, 414f
                  xor          a6, s6, a0
                  srl          s1, s1, s11
                  sub          s8, s11, t2
                  blt          a7, s6, 412f
                  sll          t1, a2, t0
                  addi         s2, t3, 350
402:              lui          ra, 588725
                  sll          a3, sp, s1
                  bltu         t5, s2, 412f
                  addi         a1, s6, 285
                  and          s9, s9, s9
                  sll          s6, t0, s11
                  blt          s9, s1, 412f
                  bgeu         a6, a1, 412f
                  xor          ra, a7, a3
                  bgeu         s11, t0, 423f
412:              srai         s6, gp, 25
                  andi         s10, ra, 5
414:              bge          s5, a1, 425f
                  auipc        s10, 870072
                  andi         t2, s10, 297
                  srl          t6, t5, a5
                  srai         a1, a6, 2
                  bne          a5, s2, 426f
                  sll          a2, t2, t5
                  slt          t1, gp, s1
                  andi         ra, t6, -552
423:              sltiu        t5, s11, 1834
                  sltiu        s8, t3, -504
425:              auipc        s2, 857833
426:              and          zero, a6, a4
                  xori         a4, s7, -855
                  lui          a1, 52069
                  beq          t1, a0, 444f
                  sltu         t4, t6, s4
                  sltu         s5, tp, s0
                  blt          tp, s9, 446f
                  srli         a2, t1, 15
                  slti         s5, t3, -66
                  addi         s1, t0, -1100
                  add          tp, s9, s9
                  blt          s8, a4, 454f
                  lui          t0, 915293
                  addi         a5, sp, -392
                  bltu         s11, s4, 449f
                  srai         gp, ra, 8
                  bge          s5, s4, 461f
                  lui          tp, 631957
444:              sltu         a7, s4, ra
                  srli         s2, t1, 22
446:              slt          a5, s6, tp
                  add          a3, s4, s6
                  sltiu        a7, s8, 882
449:              blt          a3, a5, 458f
                  blt          s11, t6, 469f
                  sll          a6, s7, s6
                  auipc        s11, 258501
                  slti         s4, s8, -2015
454:              slli         zero, s10, 7
                  bgeu         t4, s1, 464f
                  bge          s10, t0, 460f
                  srl          a5, t0, tp
458:              srl          ra, t1, a5
                  or           a3, a3, a5
460:              auipc        a0, 59627
461:              slti         t3, t2, -51
                  sltu         s10, a6, t5
                  sltu         a3, a5, t4
464:              xor          a3, s9, a5
                  add          a7, a4, s5
                  andi         s11, s6, 273
                  slti         s8, sp, 326
                  or           tp, a3, t5
469:              xor          s10, a3, a5
                  bne          zero, a5, 473f
                  slli         s9, t6, 27
                  nop
473:              bltu         t5, a6, 481f
                  sra          s0, gp, s6
                  bltu         t4, gp, 484f
                  xor          t1, t3, s5
                  or           ra, s10, sp
                  addi         s1, tp, 1541
                  xor          s0, sp, a7
                  srli         a1, s10, 27
481:              andi         s4, sp, -1060
                  bne          a5, s4, 497f
                  sra          gp, t1, s7
484:              srl          a1, ra, s9
main_15:          jal          t1, 14f
0:                jal          ra, 5f
1:                jal          t1, 3f
2:                jal          ra, 0b
3:                jal          ra, 8f
4:                jal          ra, 13f
5:                jal          ra, 16f
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          gp, 7b
10:               jal          gp, 11f
11:               jal          ra, 4b
12:               jal          s0, 18f
13:               jal          t1, 19f
14:               jal          ra, 15f
15:               jal          t1, 17f
16:               jal          a7, 20f
17:               jal          ra, 1b
18:               jal          ra, 6b
19:               jal          a3, 2b
20:               xori         gp, s4, -1667
                  add          a4, a3, s10
                  sub          s5, a2, t4
                  ori          a6, s10, 217
                  sltiu        a1, t3, 929
                  auipc        t6, 730270
                  xori         s1, t3, 1549
                  sltiu        s10, t2, -459
                  sltu         s6, t4, s4
                  and          a5, a3, t6
                  srli         a5, s0, 16
                  xori         t3, gp, -128
                  addi         s0, s2, -1066
497:              or           t3, t6, s11
                  or           a0, s5, a0
                  bne          s9, a4, 505f
                  sll          a5, s0, s4
                  addi         s6, tp, 1131
                  sltu         s11, t0, a4
                  beq          zero, a1, 514f
                  nop
505:              sll          s8, t1, a0
                  nop
                  beq          sp, t0, 521f
                  bgeu         a2, t4, 523f
                  srai         tp, s8, 11
                  blt          t1, a7, 529f
                  srli         t4, a4, 9
                  or           a0, s10, ra
                  bltu         gp, s5, 530f
514:              sltiu        s11, s6, 1163
                  bge          t0, sp, 534f
                  add          s0, a3, a0
                  sltiu        a6, t5, 395
                  slti         s4, t6, 290
                  or           t1, s1, t5
                  lui          t1, 243256
521:              andi         t4, a5, -974
                  sll          a5, t1, t1
523:              sll          t2, zero, gp
                  and          s10, tp, sp
                  slt          t3, t3, gp
                  sltu         s4, s3, s3
                  blt          s0, a3, 534f
                  slli         s11, t0, 2
529:              or           s2, s5, a5
530:              slt          t4, t4, a4
                  bne          t4, s4, 542f
                  slti         ra, gp, 456
                  sra          a1, a2, s8
534:              auipc        s0, 654227
                  nop
                  blt          s0, a1, 556f
                  srli         t1, s11, 30
                  blt          s2, s4, 546f
                  bgeu         s7, gp, 548f
                  sltiu        s4, t4, 1199
                  sub          zero, gp, a0
542:              blt          s5, t2, 549f
                  bltu         ra, a4, 552f
                  sub          a2, s10, s3
                  blt          gp, sp, 548f
546:              sra          s9, s10, a7
                  xori         ra, a2, 1287
548:              or           t3, a6, zero
549:              srai         a4, tp, 24
                  bne          s3, t1, 569f
                  lui          s4, 324161
552:              bgeu         sp, a6, 568f
                  sltu         t3, t0, ra
                  srai         t6, a5, 6
                  srli         t6, zero, 28
556:              xori         a7, s5, -735
                  auipc        t2, 5568
                  bltu         t2, s5, 562f
                  bge          a2, sp, 572f
                  addi         t0, t0, 1085
                  bne          a0, s6, 576f
562:              srai         t4, s11, 3
                  nop
                  bge          t3, sp, 568f
                  add          t1, ra, s9
                  blt          ra, a7, 580f
                  and          a7, tp, t3
568:              srl          gp, t5, s3
569:              beq          t1, s11, 585f
                  sltiu        gp, a1, 4
                  slli         t6, t5, 28
572:              sltiu        zero, a4, -32
                  nop
                  bltu         t5, a1, 576f
                  sub          s9, t5, tp
576:              sltiu        s5, s5, -697
                  beq          s10, s3, 589f
                  sltiu        a5, t5, -55
                  nop
580:              xor          s9, a6, ra
                  andi         zero, sp, 140
                  srl          s0, ra, t6
                  sll          s8, t3, zero
                  bgeu         s1, t6, 603f
585:              srai         ra, a5, 11
                  srl          a7, t4, s2
                  slti         t2, gp, 387
                  sra          a3, a3, a5
589:              bge          s11, a1, 597f
                  bgeu         s9, a1, 609f
                  slt          a2, t4, a7
                  nop
                  bne          s6, a1, 609f
                  and          a1, a7, a1
                  srli         s2, t1, 7
                  sll          t3, s9, a2
597:              sltu         a0, a0, t1
                  sltiu        t0, ra, -645
                  ori          tp, s8, 1959
                  lui          a5, 512115
                  sub          t5, a5, a2
                  bltu         a7, sp, 608f
603:              nop
                  slti         tp, s4, 992
                  ori          ra, s6, -1324
                  sltu         a2, t5, t4
                  add          s1, s11, a7
608:              srli         s2, s11, 6
609:              slli         s6, a4, 23
                  slt          a3, s1, s5
                  srai         tp, a2, 26
                  bne          gp, a0, 628f
                  slli         a2, s5, 17
                  blt          a3, t5, 628f
                  bltu         t6, ra, 634f
                  xori         a7, ra, -122
                  lui          t3, 242916
                  bgeu         t1, s7, 622f
                  slti         s9, ra, 519
                  andi         t3, s6, -542
                  beq          t1, a1, 632f
622:              andi         s1, ra, -1216
                  lui          a3, 97994
                  auipc        s2, 538010
                  slt          zero, s4, s2
                  xor          s8, a6, a0
                  sub          a2, a6, t2
628:              ori          a7, s1, 783
                  sltu         a2, t1, s10
                  sub          t6, ra, t4
                  xori         t2, t3, 1913
632:              auipc        s5, 584709
                  bne          t6, s1, 642f
634:              sltu         a7, t3, a6
                  xor          a3, sp, s2
                  addi         t5, s3, 977
                  sltiu        s1, a2, -848
                  sll          s8, t5, s9
                  auipc        gp, 742454
                  bge          zero, a0, 654f
                  lui          a1, 278180
642:              xori         t2, a7, 1413
                  ori          s4, a0, 437
                  addi         t3, gp, -850
                  slti         a2, s3, 283
                  andi         a4, t1, -803
                  xor          tp, a4, a1
                  srai         s10, s10, 0
                  srl          a0, a6, ra
                  srl          a7, s7, t5
                  sub          ra, t5, a3
                  srl          a0, sp, s6
                  slli         zero, s1, 5
654:              sub          t5, s4, ra
                  sra          t4, t2, s7
                  add          s8, sp, s9
                  bgeu         t1, t3, 660f
                  srai         s10, s4, 28
                  bge          s2, s2, 670f
660:              blt          sp, t4, 680f
                  slli         s0, tp, 18
                  nop
                  xori         a2, s8, -992
                  srai         a1, a7, 7
                  sltu         t5, s11, s8
                  sltiu        gp, tp, -933
                  sltiu        a3, t3, 1811
                  xor          a7, a2, a1
                  sub          s9, t5, s5
670:              nop
                  srai         t3, t2, 28
                  bge          a7, t4, 684f
                  blt          tp, sp, 681f
                  bne          s9, t2, 689f
                  srli         gp, a0, 3
                  blt          s3, s8, 693f
                  sltu         a7, a5, tp
                  addi         t3, ra, -364
                  ori          s10, a2, 891
680:              addi         s5, s11, -669
681:              xor          s9, s5, s9
                  sll          tp, s9, a1
                  xori         a1, s6, 1882
684:              bgeu         ra, t0, 691f
                  bne          s3, t3, 700f
                  andi         t6, t2, 1976
                  srli         ra, t2, 5
                  and          a1, s7, t6
689:              bgeu         tp, s3, 692f
                  andi         s2, t2, -424
691:              addi         a7, t2, -2024
692:              nop
693:              slti         t5, s1, 1800
                  bge          a7, t2, 698f
                  auipc        a1, 810998
                  sub          s0, a3, a6
                  slti         gp, s5, -813
698:              or           t5, s2, s4
                  slt          ra, gp, s11
700:              nop
                  slt          a3, zero, gp
                  bgeu         sp, t0, 715f
                  xor          a4, a4, a1
                  and          t5, s5, s4
                  sub          a2, s10, a6
                  srl          s1, s10, tp
                  bltu         s10, s5, 716f
                  bltu         a6, t5, 717f
                  nop
                  addi         a2, s8, -296
                  add          a6, a0, zero
                  sltu         t2, a6, tp
                  slt          s9, gp, t2
                  sltu         s6, s1, s1
715:              sltu         a7, s1, t2
716:              xori         a6, s8, 1590
717:              ori          a4, s1, -1725
                  sltiu        t1, gp, -464
                  addi         t1, a4, 1772
                  slti         zero, a1, -1516
                  beq          s3, t1, 728f
                  bne          t4, a3, 737f
                  bge          t3, a0, 725f
                  or           gp, t2, s6
725:              sub          a4, s9, a6
                  slli         t5, s10, 5
                  ori          t1, a0, -622
728:              add          ra, s6, t1
                  bgeu         s4, s8, 733f
                  slt          s4, sp, t1
                  bge          a0, a7, 750f
                  sll          s6, s2, t3
733:              andi         s6, ra, -1482
                  slli         a4, s4, 28
                  bltu         t0, s5, 755f
                  sra          a4, t1, t5
737:              sra          s9, a2, a7
                  auipc        t2, 106342
                  bgeu         s7, s1, 754f
                  lui          s2, 113019
                  sub          a0, a2, s4
                  sll          zero, s7, s10
                  slli         s0, a6, 1
                  srl          s5, s10, a5
                  bne          s8, s2, 761f
                  bgeu         gp, a7, 759f
                  bgeu         ra, s10, 755f
                  xor          t6, t6, a4
                  srli         s2, t0, 3
750:              srai         t0, t2, 26
                  srl          s6, s4, s3
                  srli         tp, t5, 26
                  blt          t1, ra, 760f
754:              bne          a1, a5, 769f
755:              bge          s6, s3, 761f
                  lui          ra, 967631
                  or           t4, zero, s8
                  auipc        t1, 434387
759:              bgeu         s8, t0, 767f
760:              slli         a5, a4, 23
761:              bltu         s4, s6, 775f
                  blt          a3, a6, 781f
                  srl          a2, s11, t3
                  ori          a5, t2, -758
                  blt          t1, ra, 777f
                  nop
767:              bge          s10, s1, 771f
                  andi         a7, t1, -1688
769:              bltu         s0, t1, 773f
                  slt          s2, s11, s4
771:              srli         s9, a0, 3
                  slti         s6, s3, -1490
773:              addi         s6, s11, -1316
                  srai         t1, ra, 27
775:              slt          s8, ra, a3
                  la           a7, sub_1
                  addi         a7, a7, -1021
                  sltiu        s2, a3, 284
                  sra          s9, s4, gp
                  srli         ra, s0, 24
                  xor          tp, s8, sp
                  and          t5, a2, a6
main_j1:          jalr         t1, a7, 1022 #jump main -> sub_1
                  bge          s11, zero, 787f
777:              xori         a2, s8, 2020
                  sll          t1, sp, a1
                  slti         a6, ra, -522
                  slli         gp, t6, 22
781:              addi         a1, a7, -87
                  and          zero, t5, t5
                  bne          sp, ra, 792f
                  bge          s8, gp, 799f
                  srai         a3, s9, 6
                  slli         t6, t6, 15
787:              andi         ra, s3, -1970
                  sltu         s8, t1, sp
                  sll          s10, sp, s10
                  nop
                  sltiu        gp, s3, 1672
792:              bgeu         a5, a4, 808f
                  bne          gp, s7, 802f
                  sra          s10, t0, t6
                  slli         t3, sp, 20
                  ori          s1, zero, -1034
                  ori          a7, s11, 1085
                  sltiu        t6, a4, -1161
799:              blt          a7, s1, 806f
                  slt          s6, t6, s11
                  ori          s9, a7, 580
802:              slti         s5, tp, 197
                  sltiu        s6, a2, -446
                  bge          tp, s8, 818f
                  andi         a6, a2, -1760
806:              andi         t1, a7, 265
                  xor          s5, ra, gp
808:              addi         t3, s5, -1685
                  sltiu        s8, t2, 1455
                  srl          a1, a7, t5
                  bne          s1, a5, 828f
                  sub          t5, t3, a7
                  sltu         t0, s5, s4
                  ori          a1, zero, -292
                  lui          ra, 707681
                  nop
                  xor          a3, a7, a2
818:              xor          s0, s2, sp
                  xor          s2, s6, zero
                  xori         s11, a1, -1558
                  slti         a3, a7, -535
                  lui          s0, 748890
                  beq          a4, t0, 827f
                  ori          a3, s10, 1259
                  or           t1, t0, a6
                  sltiu        a2, s10, 1376
827:              and          gp, s9, gp
828:              slli         a5, zero, 21
                  or           a3, t1, t5
                  sra          s1, zero, tp
                  bgeu         a5, a4, 834f
                  sltu         a1, t5, s1
                  srai         s0, s2, 9
834:              sltu         s2, a6, t3
                  sll          s5, s2, a1
                  nop
                  andi         a0, s0, 725
                  xor          s11, gp, tp
                  sltu         s2, a7, s10
                  sll          s8, s5, s9
                  add          t0, a6, ra
                  sltu         s11, a1, s8
                  xori         t0, s1, 1635
                  addi         s4, s9, 586
                  or           zero, t5, t3
                  slli         s0, a4, 27
                  andi         a4, s4, -1778
                  sltu         s1, s0, a4
                  sltu         a2, tp, t4
                  bge          t5, s9, 852f
                  addi         t1, s0, -1178
852:              lui          s10, 449207
                  sub          a5, ra, a7
                  srl          t5, s6, s1
                  slti         a6, a1, 393
                  srai         s10, t3, 20
                  slti         s8, s6, -1997
                  or           s8, tp, t0
                  srli         s6, t6, 0
                  sltu         t2, s3, s8
                  xori         s6, s3, -452
                  sub          t4, a3, a7
                  or           s9, gp, s7
                  srli         t5, sp, 10
                  bltu         a7, t2, 876f
                  slli         s8, s0, 29
                  addi         t2, zero, 1621
                  nop
                  or           s0, a4, t2
                  xori         a4, t5, -1831
                  sll          s10, t2, ra
                  lui          t3, 658499
                  srl          s6, s2, a7
                  and          a4, tp, a3
                  blt          t3, t4, 878f
876:              bltu         zero, s8, 885f
                  srl          s6, s2, t2
878:              sub          a3, t2, s1
                  xor          t4, s2, s7
                  bltu         tp, a3, 899f
                  lui          a0, 723999
                  bge          a3, t6, 890f
                  xori         s2, s5, -427
                  blt          sp, s8, 893f
885:              sll          t3, tp, zero
                  xori         t6, s8, -1089
                  sra          a6, s7, gp
                  ori          s6, t1, 970
                  bgeu         s0, s0, 909f
890:              slt          s8, tp, s2
                  bltu         s4, sp, 903f
                  slt          a6, s8, t4
893:              bne          a4, tp, 908f
                  sltiu        s9, a2, -1553
                  auipc        a0, 176778
                  bge          a2, s5, 900f
                  beq          s3, tp, 912f
                  auipc        s11, 867300
899:              bge          s3, s0, 907f
900:              xor          gp, a0, s10
                  ori          a0, ra, -1200
                  bltu         gp, t5, 921f
903:              sltu         s11, a1, tp
                  nop
                  bge          s5, a3, 918f
                  add          t6, s11, tp
907:              addi         s0, t6, 40
908:              nop
909:              slli         ra, ra, 13
                  bltu         s9, s6, 929f
                  and          s10, s11, s5
912:              blt          t0, s3, 921f
                  slt          t5, t6, s2
                  srli         s10, s0, 30
                  xor          zero, s5, tp
                  blt          s3, s10, 927f
                  bgeu         t2, s2, 920f
918:              addi         a1, s11, -1041
                  sltiu        ra, t3, 1472
920:              sltiu        t6, t3, -1402
921:              ori          tp, t6, -1562
                  addi         a4, s10, 1232
                  bgeu         s3, t3, 937f
                  nop
                  bgeu         a2, t0, 941f
                  addi         tp, zero, 709
927:              srli         s10, a1, 12
                  srl          s2, a6, s2
929:              bgeu         t4, t2, 936f
                  add          a5, s8, s4
                  xor          a7, s11, a7
                  add          s0, s9, t6
                  sltiu        a4, s6, -1344
                  slti         zero, s2, -316
                  slli         s1, s9, 23
936:              sltu         a3, s5, s6
937:              addi         t3, sp, 85
                  add          t0, t0, t5
                  srl          s8, zero, a5
                  nop
941:              blt          sp, s4, 955f
                  and          s1, s6, t1
                  bge          a2, ra, 960f
                  slti         s9, s8, -918
                  slli         t1, s5, 0
                  and          a4, sp, t3
                  lui          s1, 374684
                  auipc        t6, 532151
                  blt          t2, t5, 953f
                  addi         t6, zero, -231
                  slli         s11, t3, 26
                  sub          s5, t4, a3
953:              ori          ra, s2, 194
                  srai         s9, a1, 16
955:              sltu         tp, s0, t6
                  slt          s6, a4, t6
                  bgeu         a2, a7, 966f
                  nop
                  auipc        s11, 584508
960:              or           a2, sp, ra
                  srl          a7, t4, s5
                  auipc        zero, 231053
                  slli         gp, tp, 18
                  and          t1, tp, s8
                  bge          a6, s9, 981f
966:              ori          t0, sp, 1770
                  slli         s1, a0, 25
                  bge          sp, a1, 971f
                  srli         t3, a5, 23
                  xor          zero, s1, a3
971:              slt          s8, s1, ra
                  nop
                  srl          s6, s11, t0
                  slti         t1, a6, -358
                  beq          t2, a1, 990f
                  and          gp, s2, t6
                  sub          ra, s1, s5
                  addi         ra, t0, -1437
                  sll          t1, t1, t2
                  sra          t5, a5, s6
981:              sub          t1, a7, s8
main_2:           jal          t1, 4f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          t1, 9f
3:                jal          ra, 2b
4:                jal          ra, 7f
5:                jal          t0, 10f
6:                jal          t2, 8f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          ra, 1b
11:               sll          tp, t1, s2
                  bne          a2, a1, 988f
                  auipc        s8, 738860
                  andi         t2, a5, 1772
                  bltu         t4, t1, 989f
                  bne          a4, gp, 988f
                  xor          a3, s9, sp
988:              slt          t2, t0, s5
989:              lui          a4, 730860
990:              bltu         t4, t5, 1009f
                  sltu         s4, s10, a0
                  slti         t1, s7, 1872
                  nop
                  ori          s9, a1, -176
                  sltiu        s9, t2, -910
                  blt          ra, sp, 1007f
                  add          a4, s3, s8
                  blt          s9, s9, 1005f
                  ori          s1, t4, 1017
                  sltiu        tp, t1, 939
                  blt          gp, a7, 1005f
                  and          tp, s6, t4
                  blt          gp, a4, 1015f
                  andi         a6, s5, -1679
1005:             and          s6, s1, a5
                  xor          a6, s1, ra
1007:             ori          s10, a3, -447
                  sltiu        a7, sp, 584
1009:             srli         ra, t6, 6
                  bne          a6, a2, 1012f
                  slti         zero, sp, 448
1012:             bne          zero, s7, 1021f
                  sltu         t6, s7, gp
                  srli         a6, s6, 21
1015:             beq          s7, tp, 1022f
                  srai         t3, a2, 24
                  lui          a1, 772676
                  or           t5, s1, t3
                  sll          t4, t6, t6
                  auipc        s2, 251765
1021:             sltiu        s8, gp, 121
1022:             slti         s6, a7, 509
                  or           a6, s4, t4
                  srai         a3, t5, 27
                  add          s1, s7, s9
                  add          a5, a2, a3
                  sll          a0, s0, sp
                  sub          a4, ra, tp
                  add          t4, t4, s8
                  bgeu         s3, s1, 1041f
                  or           a6, a1, s7
                  xori         zero, t5, 1811
                  beq          a4, s5, 1052f
                  xori         t2, tp, -1439
                  auipc        a2, 581742
                  srai         zero, t4, 23
                  slt          gp, s0, s2
                  add          a1, a4, t3
                  xori         s6, a4, -1489
                  addi         s0, a2, -1077
1041:             bge          s4, t2, 1047f
                  blt          s8, a7, 1045f
                  sltiu        s4, a1, -1916
                  addi         a3, sp, -288
1045:             sltiu        t1, zero, -1386
                  sltiu        gp, a1, -2017
1047:             xori         gp, t5, 1130
                  xor          s8, ra, a6
                  slli         a3, s1, 8
                  sltiu        a4, t0, -1823
                  auipc        t4, 1027262
1052:             nop
                  nop
                  addi         s0, s8, 951
                  bne          s10, s8, 1069f
                  or           a3, s2, t0
                  sll          tp, s7, t1
                  or           s10, a2, t0
                  srli         a3, t1, 27
                  or           s11, t2, zero
                  sltiu        a0, a3, 2026
                  srai         t4, t5, 14
                  xori         tp, s5, -1143
                  srli         gp, s2, 22
                  bgeu         a2, gp, 1080f
                  sll          a0, s6, s3
                  lui          t3, 203778
                  add          t5, a1, a6
1069:             srl          s8, a4, zero
                  beq          s7, s3, 1081f
                  sll          t0, t4, a2
                  bltu         t4, t3, 1092f
                  addi         s11, t2, -317
                  slt          a0, s5, zero
                  ori          s4, s4, 2027
                  nop
                  sltiu        t0, a7, 127
                  sltiu        a1, t5, 1170
                  bge          a3, s4, 1083f
1080:             ori          t1, s6, 813
1081:             sub          s6, a3, s3
                  and          a2, a0, s11
1083:             sltu         s0, t0, s7
                  auipc        zero, 425609
                  lui          a3, 588287
                  xor          a6, a1, a7
                  srli         s8, t4, 21
                  beq          a3, a2, 1102f
                  sub          ra, t1, a2
                  sltiu        s5, s2, 1845
                  bne          a5, a3, 1098f
1092:             beq          t2, zero, 1109f
                  srl          a5, s4, t6
                  auipc        a7, 342704
                  sub          s4, a5, s6
                  add          a2, t2, tp
                  andi         a5, t4, -766
1098:             slli         t4, tp, 20
                  xori         a6, ra, 1769
                  sltu         s2, s6, gp
                  srai         s2, a5, 29
1102:             sra          a4, a7, tp
                  bge          t5, t3, 1116f
                  or           s0, s9, t3
                  bge          t4, a0, 1120f
                  sll          a6, a2, s9
                  bne          zero, tp, 1123f
                  xor          s0, a1, s2
1109:             srli         s9, a0, 3
                  xori         s2, t2, -1580
                  bltu         t2, s9, 1130f
                  andi         a6, ra, -1448
                  xori         s2, t5, -1585
                  bne          s0, t5, 1122f
                  beq          s6, s1, 1124f
1116:             sra          s2, sp, s10
                  srli         t5, a1, 27
                  bgeu         a3, tp, 1134f
                  xor          t3, a0, s2
1120:             nop
                  beq          s7, t0, 1125f
1122:             add          s1, s6, s6
1123:             and          s4, a5, a4
1124:             slt          t6, t3, s2
1125:             or           a6, a0, a4
                  sra          a7, a0, sp
                  and          a4, t6, sp
                  addi         a1, t0, 211
                  slt          a0, t2, s2
1130:             ori          a1, s4, 1902
                  slti         s5, a3, -1365
                  blt          a5, s1, 1151f
                  bltu         t1, a3, 1136f
1134:             bltu         a4, a4, 1149f
                  sra          t1, tp, s4
1136:             sll          a7, s9, s3
                  bltu         t4, t0, 1145f
                  xori         t1, a2, -1147
                  andi         a3, a2, -1780
                  srl          s11, t4, gp
                  slli         s8, sp, 25
                  xori         t3, s4, -2027
                  beq          gp, ra, 1152f
                  bltu         a4, a1, 1161f
1145:             nop
                  addi         t6, t2, -1530
                  sltu         t5, a5, gp
                  sltu         t2, s2, a1
1149:             or           t1, s0, t5
                  bgeu         s10, s7, 1161f
1151:             sub          zero, a4, sp
1152:             sll          a0, s1, a1
                  slt          a2, t3, zero
                  bgeu         s8, s7, 1163f
                  sltiu        t3, gp, 1515
                  addi         a1, s6, 1209
                  xori         a5, t0, 1264
                  auipc        tp, 705324
                  srl          t0, zero, s11
                  ori          a7, sp, 1130
1161:             or           s5, s3, s2
                  srli         a0, s1, 19
1163:             sltiu        a6, a6, 1174
                  srai         s11, a5, 5
                  sll          t0, a6, s6
                  or           s1, s7, a3
                  sltiu        t6, a7, -707
                  bne          s11, s9, 1183f
                  slli         zero, s1, 15
                  addi         s1, t2, -525
                  srl          zero, s11, s8
                  sltu         a6, s9, s9
                  addi         a2, a0, -278
                  slti         a1, t4, 1164
                  srai         s9, s10, 26
                  and          s9, a3, a4
                  addi         tp, t1, -1638
                  nop
                  slt          t0, a2, a3
                  srli         t6, t4, 25
                  slli         s2, t4, 11
                  blt          s0, s9, 1193f
1183:             srl          a5, a0, a3
                  ori          a2, s10, -33
                  andi         a4, t2, -700
                  srli         a7, s8, 29
                  xor          t6, a6, s3
                  srl          tp, s4, t5
                  slti         s10, ra, 1808
                  slt          s11, a0, s4
                  srai         a7, s2, 27
                  bge          s7, s7, 1200f
1193:             ori          a0, t1, -256
                  addi         a5, a5, -1772
                  srl          s4, a3, t3
                  andi         t0, s3, 968
                  sll          a1, s6, s9
                  lui          t4, 505194
                  blt          ra, ra, 1203f
1200:             or           a1, t2, a2
                  bne          s3, s4, 1204f
                  xori         a6, s6, -600
1203:             addi         s0, s11, -1725
1204:             bge          s2, s3, 1213f
                  srai         s11, t4, 7
                  and          t2, a4, s8
                  slli         t0, t1, 0
                  sltu         a3, s4, s6
                  sltiu        s9, s6, -1535
                  xor          zero, t0, t0
                  ori          t3, s9, 46
                  blt          ra, s3, 1226f
1213:             nop
                  slti         s5, a6, -2027
                  srl          s8, t6, t1
                  auipc        t4, 796777
                  blt          s11, s3, 1224f
                  bne          t0, a0, 1225f
                  sltu         a0, s11, sp
                  srai         t5, a5, 10
                  sltu         s6, s8, t1
                  sra          gp, t3, a4
                  auipc        s1, 619443
1224:             beq          s7, t3, 1232f
1225:             bgeu         s10, a2, 1227f
1226:             sll          a1, s3, a6
1227:             bltu         s5, s7, 1233f
                  or           t5, zero, tp
                  sltu         t6, s1, s1
                  slt          s10, s6, gp
                  xori         zero, ra, 1191
1232:             xori         gp, s6, 576
1233:             sub          ra, s6, t1
                  srai         a0, s2, 4
                  auipc        a6, 673802
                  slt          s9, s2, t5
                  xor          s6, a7, a4
                  slli         t1, s9, 1
                  sltu         s1, sp, s10
                  srai         a1, a1, 21
                  sltiu        a2, a1, -794
                  bltu         a4, s7, 1256f
                  srl          s1, s10, s10
                  sub          tp, a1, a0
                  xor          t4, a5, ra
                  srl          a4, s8, a5
                  lui          a2, 486009
                  sra          s6, t6, a7
                  sra          t0, t4, s7
                  addi         a6, a0, -1910
                  sll          ra, a6, t0
                  slt          a1, a7, s6
                  beq          s11, s2, 1257f
                  blt          s11, s9, 1258f
                  srl          ra, a3, a1
1256:             slli         a1, gp, 25
1257:             and          t6, a2, s3
1258:             sltiu        a0, t5, -1344
                  bgeu         gp, a6, 1272f
                  add          a4, s5, t0
                  slti         t4, a4, 1580
                  bge          t4, s2, 1265f
                  sub          a1, a0, t1
                  sll          t5, a6, s3
1265:             slti         a6, t1, -196
                  bltu         a4, s8, 1281f
                  srai         s6, s4, 12
                  slti         a6, t2, -1321
                  add          s11, s9, a7
                  slli         s8, t6, 26
                  or           a6, s10, a1
1272:             beq          a6, s6, 1291f
                  srli         a4, t1, 28
                  bge          ra, a1, 1293f
                  bge          a2, s2, 1287f
                  and          a4, a3, a4
                  or           a1, a7, t5
                  sltiu        s5, a5, 1098
                  srai         t5, t6, 16
                  and          t4, a3, a1
1281:             srli         t1, s6, 9
                  xori         a6, s3, -514
                  add          s1, s10, t2
                  and          a3, s6, s8
                  xor          a6, a5, t6
                  auipc        s8, 972198
1287:             sll          zero, s4, sp
                  auipc        s9, 1038893
                  bltu         t3, s11, 1305f
                  auipc        s9, 516098
1291:             andi         s2, s3, -1776
                  sra          t2, t4, a5
1293:             blt          t1, t3, 1302f
                  blt          s6, t0, 1310f
                  add          t5, a7, t6
                  addi         a4, s9, 1073
                  lui          t3, 63730
                  slli         s9, t2, 24
                  blt          gp, a0, 1319f
                  slti         t5, a5, 1417
                  sll          tp, s8, t0
1302:             sub          ra, s5, sp
                  slli         t4, s11, 9
                  bge          ra, s6, 1323f
1305:             sll          t3, t4, t6
                  and          a1, t3, s10
                  addi         s5, gp, -374
                  xor          s6, t5, s0
                  srai         s4, ra, 25
1310:             srl          s11, a7, zero
                  slli         t6, t1, 11
                  beq          s2, t2, 1327f
                  blt          s9, ra, 1332f
                  sltiu        s8, a5, -1743
                  blt          s9, t6, 1329f
                  auipc        a1, 348755
                  or           s2, a1, a0
                  and          t3, a4, a1
1319:             sll          a4, a0, a4
                  ori          s8, t2, -1922
                  sltu         s8, a1, s10
                  or           s1, s5, t0
1323:             and          s2, t1, s1
                  srai         s9, s3, 11
                  or           a7, s1, t4
                  slti         s1, s4, -1697
1327:             nop
                  xori         s4, a7, -244
1329:             addi         s5, s11, 1975
                  slli         s10, a2, 1
                  sltu         s2, s1, a7
1332:             lui          s6, 994680
                  add          t3, a5, a5
                  bgeu         s8, t0, 1346f
                  slli         t6, t2, 2
                  sll          zero, t1, s8
                  lui          t3, 737371
                  bltu         s9, s10, 1347f
                  sub          s2, s5, s10
                  bne          s7, s7, 1343f
                  nop
                  andi         t5, t5, 46
1343:             slt          gp, t0, a7
                  ori          s8, s11, 1577
                  lui          s1, 252769
1346:             auipc        a2, 344630
1347:             add          s5, s10, s11
                  or           s10, a2, t5
                  slt          a4, a0, a0
                  bltu         s1, s0, 1369f
                  sub          s11, t4, s0
                  sub          gp, a5, zero
                  ori          gp, sp, 369
                  sra          a1, sp, gp
                  slti         ra, sp, -1914
                  xor          s9, a2, gp
                  add          t2, a0, t5
                  sltiu        t4, a7, -946
                  addi         a0, s10, -946
                  sra          a3, s6, zero
                  bltu         t0, a3, 1363f
                  bge          sp, s2, 1365f
1363:             bltu         a3, s4, 1379f
                  or           s2, s6, a5
1365:             sub          a7, a5, t0
                  lui          s10, 369202
                  ori          t0, gp, -705
                  beq          t1, a1, 1384f
1369:             auipc        s5, 894790
                  and          ra, a1, t6
                  bge          t0, t2, 1379f
                  and          s4, t5, t1
                  sltu         s1, s6, a3
                  sltiu        s10, t2, -1465
                  bge          s6, s7, 1392f
                  sltu         a7, s1, ra
                  and          tp, t4, a4
                  andi         a6, t2, -1326
1379:             sra          gp, a2, s0
main_39:          jal          t1, 4f
0:                jal          t1, 12f
1:                jal          gp, 14f
2:                jal          ra, 9f
3:                jal          a7, 8f
4:                jal          t1, 2b
5:                jal          a3, 1b
6:                jal          t1, 7f
7:                jal          a6, 16f
8:                jal          ra, 6b
9:                jal          t2, 0b
10:               jal          t0, 11f
11:               jal          t1, 15f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 10b
15:               jal          t1, 13b
16:               and          a7, t2, a5
                  sll          s6, t4, t5
                  and          a5, t0, zero
                  lui          t2, 23517
                  ori          s2, s1, -1287
1384:             srai         t6, ra, 24
                  srl          t0, gp, s7
                  srai         s9, t0, 31
                  nop
                  nop
                  slti         a5, s11, 955
                  slt          a5, ra, a4
                  xori         s11, t0, 1417
1392:             auipc        s11, 181740
                  bltu         a2, a0, 1397f
                  slt          s2, tp, a5
                  or           t3, t0, s11
                  auipc        t2, 306665
1397:             nop
                  bltu         s8, s0, 1405f
                  blt          s2, gp, 1418f
                  xori         s2, s0, 75
                  bne          t3, t2, 1412f
                  slli         t3, t3, 3
                  lui          s2, 704956
                  slli         s10, a0, 25
1405:             andi         s11, s6, -471
                  sra          gp, s4, a7
                  nop
                  sra          t6, s3, t0
                  beq          t1, s8, 1423f
                  or           s9, t6, t4
                  bgeu         zero, t2, 1424f
1412:             nop
                  andi         a5, s2, 1062
                  sltu         a2, zero, s8
                  srai         s4, a7, 6
                  addi         a4, s4, 791
                  nop
1418:             andi         a6, s0, -1492
                  lui          s0, 758776
                  blt          t3, a6, 1429f
                  sra          t4, a6, ra
                  bgeu         tp, a5, 1426f
1423:             sra          s6, s9, a2
1424:             srli         s2, t5, 9
                  bne          zero, s6, 1440f
1426:             sltu         s4, a0, t0
                  addi         a3, s7, -975
                  beq          a5, tp, 1432f
1429:             bge          zero, s11, 1437f
                  andi         s9, s8, 178
                  nop
1432:             blt          a1, tp, 1438f
                  sltiu        a6, s0, -1164
                  bne          t6, a3, 1449f
                  ori          a4, a3, 221
                  or           s8, zero, tp
1437:             sra          a5, t5, s7
1438:             bgeu         s3, zero, 1445f
                  lui          a7, 290365
1440:             bge          s8, s8, 1449f
                  bge          s4, gp, 1456f
                  bge          t5, s3, 1462f
                  ori          t5, t4, 1754
                  bge          t5, s8, 1455f
1445:             auipc        a7, 383156
                  nop
                  sll          s9, s5, s10
                  ori          tp, a6, -101
1449:             andi         t5, a1, -1364
                  nop
                  sltiu        a2, t6, 1148
                  ori          s4, s4, -912
                  slt          s9, s6, a4
                  andi         s9, a3, 1429
1455:             slti         t1, t3, -1750
1456:             srli         a3, t0, 2
                  addi         a6, a4, 1429
                  srai         s6, t5, 21
                  bltu         t6, t4, 1468f
                  auipc        s9, 1027776
                  srli         a1, s4, 29
1462:             beq          a5, s1, 1475f
                  xori         s10, t1, -1759
                  srl          t2, s1, s1
                  andi         s1, s11, -1970
                  xor          gp, gp, s7
                  lui          a3, 460387
1468:             or           a1, s6, t5
                  srli         s11, t1, 14
                  sltu         t1, t6, t0
                  ori          s10, s7, 171
                  sltiu        a6, t3, 614
                  andi         s9, zero, -355
                  ori          s5, s4, -48
1475:             slli         s6, s10, 25
                  add          t0, s5, sp
                  slt          tp, s0, sp
                  xori         a7, s11, -850
                  add          gp, t3, ra
                  or           t5, t2, s4
                  srai         tp, tp, 9
                  bne          a0, gp, 1489f
                  andi         s10, s8, 1548
                  bge          s11, s7, 1499f
                  bltu         t0, t5, 1491f
                  sra          s8, a1, t3
                  sub          s5, s3, a0
                  sub          s1, t4, s9
1489:             slt          gp, tp, a7
                  lui          t2, 799756
1491:             add          s9, a7, a7
main_7:           jal          t1, 14f
0:                jal          t5, 3f
1:                jal          ra, 12f
2:                jal          ra, 11f
3:                jal          ra, 1b
4:                jal          a2, 2b
5:                jal          t1, 19f
6:                jal          t1, 4b
7:                jal          ra, 17f
8:                jal          ra, 5b
9:                jal          ra, 10f
10:               jal          ra, 0b
11:               jal          ra, 13f
12:               jal          ra, 15f
13:               jal          ra, 8b
14:               jal          t1, 18f
15:               jal          t1, 7b
16:               jal          ra, 9b
17:               jal          gp, 6b
18:               jal          a2, 16b
19:               slt          a5, s1, s8
                  sltu         s5, t3, s9
                  xor          t2, zero, s7
                  sltiu        s4, ra, 1182
                  sub          a4, t2, t5
                  slti         t4, s0, 1984
                  sub          a7, sp, tp
                  auipc        s11, 675139
1499:             andi         t0, zero, -704
                  slti         a0, s10, 491
                  sltu         s11, t4, a3
                  srli         tp, s5, 1
                  srai         t1, t3, 6
                  sltiu        a4, a3, 1334
                  add          s10, sp, t1
                  srli         s6, t5, 4
                  add          gp, a6, zero
                  bge          a4, a6, 1520f
                  xor          t0, t2, zero
                  or           s6, t5, s8
                  nop
                  sltiu        ra, s1, -1450
                  xor          tp, s9, s2
                  sra          s1, t5, a3
                  addi         t3, a3, -2042
                  xor          a7, a1, a5
                  beq          t4, s10, 1524f
                  bne          t2, a4, 1532f
                  slti         s5, s1, -785
1520:             bltu         a7, t2, 1537f
                  beq          t3, a5, 1532f
                  nop
                  lui          s1, 4960
1524:             sra          a0, s1, zero
                  bge          s2, s2, 1533f
                  sra          s5, a5, s9
                  addi         s8, a4, -200
                  bge          s10, a7, 1548f
                  slti         s4, a6, 929
                  srli         t3, s9, 14
                  sll          s5, t0, a1
1532:             or           s10, s11, tp
1533:             blt          a5, a2, 1549f
                  slti         t4, a7, -1834
                  slt          a5, a1, a2
                  srli         s11, gp, 18
1537:             blt          s3, a1, 1541f
                  bgeu         t5, s2, 1557f
                  addi         s2, a7, 981
                  bne          t5, t3, 1555f
1541:             addi         gp, t4, -45
                  nop
                  srai         a7, t2, 26
                  slli         a2, s1, 31
                  auipc        s6, 926985
                  or           a4, s0, s7
                  srl          ra, sp, s0
1548:             sub          a3, gp, t6
1549:             sub          t3, s2, a6
                  sub          a6, a0, s2
                  slli         s11, t0, 23
                  slli         t0, tp, 12
                  sra          tp, t5, t2
                  blt          gp, gp, 1573f
1555:             sltiu        t5, s1, -1394
                  auipc        a6, 880347
1557:             auipc        ra, 862748
                  ori          a1, a3, 747
                  sra          a3, s0, t5
                  srai         s0, s4, 17
                  lui          gp, 68470
                  blt          s0, s3, 1571f
                  add          a0, t4, ra
                  srli         s2, s9, 16
                  bltu         t6, t0, 1576f
                  andi         s2, t3, 820
                  bltu         s5, gp, 1570f
                  add          s1, ra, s9
                  nop
1570:             sll          tp, t0, s7
1571:             ori          t6, a4, -727
                  xor          a5, a3, t1
1573:             sub          t0, a7, s7
                  bge          s5, s9, 1593f
                  sltiu        a7, s1, 1710
1576:             ori          t1, t4, -359
                  blt          sp, ra, 1579f
                  ori          s2, s6, -2021
1579:             auipc        t1, 493363
                  bltu         a6, a2, 1583f
                  addi         gp, s1, -772
                  bne          t0, s10, 1586f
1583:             auipc        t1, 36981
                  andi         s5, tp, -1006
                  slli         t4, a7, 31
1586:             or           s2, t4, s2
                  srl          t4, s5, a1
                  addi         s9, sp, -428
                  lui          t5, 192294
                  beq          s11, tp, 1605f
                  sltu         s2, t6, s8
                  addi         t6, a3, -2018
1593:             bgeu         t2, sp, 1601f
                  lui          a2, 842902
                  bge          a3, a1, 1599f
                  bne          s4, s4, 1612f
                  srli         a7, a5, 20
                  lui          t2, 95580
1599:             slt          a6, a7, t6
                  slli         t1, t5, 24
1601:             srai         t3, s11, 18
                  sub          ra, tp, a4
                  add          a7, sp, s6
                  ori          a1, a7, -1999
1605:             blt          s8, a1, 1619f
                  lui          gp, 608405
                  and          a4, s2, s5
                  sll          s5, t4, s10
                  srai         s10, s3, 10
                  blt          t3, a1, 1619f
                  sub          tp, s9, s5
1612:             andi         s6, t1, 477
                  lui          a3, 823314
                  xor          a7, s4, s1
                  and          s0, s5, gp
                  and          s1, s5, s11
                  bge          a6, s0, 1619f
                  srai         t6, s1, 20
1619:             sltu         s6, t6, a1
                  nop
                  sra          t4, s1, s5
                  srai         s6, a3, 2
                  auipc        t3, 1028392
                  bgeu         s3, s11, 1628f
                  andi         s5, s10, 757
                  bge          a5, gp, 1629f
                  slt          t1, s1, ra
1628:             bgeu         s2, t2, 1637f
1629:             beq          s10, sp, 1642f
                  bltu         a7, s9, 1649f
                  or           ra, s11, a3
                  srl          tp, s9, s7
                  beq          a5, s10, 1639f
                  and          s6, a6, ra
                  slt          t5, a3, t5
                  and          zero, t5, zero
1637:             beq          a0, a6, 1648f
                  bgeu         a5, t0, 1641f
1639:             and          a0, a2, t2
                  slli         a3, ra, 22
1641:             slti         s1, t4, 1634
1642:             sltu         s0, sp, s10
                  andi         s2, a6, 1436
                  beq          a5, t1, 1652f
                  srli         s4, s8, 25
                  blt          sp, s8, 1650f
                  srl          a1, s4, a5
1648:             beq          t1, s0, 1664f
1649:             andi         s11, zero, 1240
1650:             sra          a0, a2, s9
                  srai         a7, t5, 16
1652:             auipc        a1, 69675
                  slti         s0, t3, -1117
                  bne          a4, a7, 1670f
                  or           t1, a3, a7
                  sra          t4, s9, t3
                  ori          a2, a0, -925
                  bltu         zero, a3, 1662f
                  sll          s11, gp, t0
                  bltu         s0, ra, 1677f
                  bltu         s9, a4, 1676f
1662:             sra          s4, t1, t5
                  and          zero, a7, t4
1664:             sll          ra, a3, s2
                  lui          s0, 421538
                  sub          t3, a3, a6
                  srl          t1, s7, a6
                  nop
                  srl          s8, tp, t1
1670:             bne          t3, a7, 1684f
                  srai         t6, s4, 8
                  xori         a6, s3, -303
                  bne          ra, a6, 1693f
                  xori         zero, a1, -335
                  and          s1, a7, s11
1676:             or           t0, a7, s9
1677:             slli         s0, s4, 1
                  sub          s10, t1, a4
                  add          s1, s8, ra
                  beq          t0, gp, 1699f
                  xor          zero, s4, s0
                  and          s10, t4, a5
                  bge          sp, t1, 1690f
1684:             sub          tp, s11, s2
                  srai         a0, s11, 0
                  auipc        s6, 535140
                  slli         gp, a4, 31
                  bne          tp, t2, 1696f
                  slti         t0, a6, 1457
1690:             add          a3, t5, a1
                  bltu         a3, s5, 1703f
                  sra          s11, a1, a6
1693:             andi         s1, a7, -130
                  lui          a3, 286262
                  nop
1696:             blt          t5, t5, 1711f
                  bne          s7, a3, 1706f
                  addi         a2, s6, 614
1699:             sll          s5, s8, s8
                  slli         s2, a7, 16
                  and          a1, sp, sp
                  bgeu         s1, t6, 1717f
1703:             slli         a0, a3, 8
                  bne          a2, t3, 1718f
                  sltiu        s11, s7, -1646
1706:             srli         t2, a0, 23
                  slti         a5, a3, 1063
                  beq          a6, t4, 1715f
                  bltu         s10, tp, 1728f
                  sll          tp, ra, t4
1711:             blt          t2, a5, 1720f
                  xor          t3, t4, t2
                  blt          s1, a6, 1724f
                  sra          s0, s0, a7
1715:             add          s5, s3, ra
                  bne          gp, gp, 1730f
1717:             sltiu        s5, s11, -1891
1718:             sll          s9, a3, s0
                  bgeu         t1, a5, 1727f
1720:             and          t1, t4, s2
                  xori         a4, tp, 107
                  bne          a4, t3, 1726f
                  srli         t6, t4, 8
1724:             lui          s0, 819135
                  srli         tp, s9, 0
1726:             ori          a2, a5, -1178
1727:             sltu         ra, s8, a4
1728:             and          s5, a6, s6
                  slt          t6, a1, a1
1730:             sltu         s0, ra, a4
                  sub          s0, tp, t4
                  sltiu        s1, s0, 293
                  andi         s5, t6, 306
                  addi         s11, a0, 752
                  blt          sp, s10, 1750f
                  bltu         s4, s11, 1740f
                  and          s1, s8, a7
                  xor          t4, s1, s4
                  slli         a1, t2, 11
1740:             ori          zero, a0, 364
                  nop
                  srai         a3, sp, 10
                  beq          s10, a1, 1754f
                  auipc        s2, 156900
                  xori         a0, a2, 555
                  add          a2, s10, a1
                  sltiu        a3, a3, -962
                  addi         t1, s4, -401
                  srli         a3, s4, 24
1750:             add          gp, tp, a6
                  srl          s8, s11, s1
                  addi         s2, s11, -1327
                  slli         zero, t2, 14
1754:             srl          t1, t3, ra
                  ori          s9, a5, 94
                  sll          s1, a3, a6
                  bne          s5, a3, 1772f
                  sra          ra, s5, a0
                  slti         gp, s2, -1824
                  lui          s6, 419008
                  bltu         s4, s10, 1774f
                  bgeu         zero, s3, 1771f
                  auipc        t5, 1028018
                  nop
                  or           s1, t6, s11
                  ori          t4, a6, 866
                  add          t5, gp, s1
                  sll          s8, zero, sp
                  sub          t5, a3, s11
                  addi         a2, a6, -877
1771:             sltiu        t2, s4, -408
1772:             ori          ra, t0, 260
                  nop
1774:             sltiu        a6, t3, 53
                  andi         s5, gp, -17
                  bne          s6, a2, 1779f
                  sltiu        ra, s0, 859
                  sub          s5, s11, s3
1779:             srl          a6, tp, a4
                  slt          a7, s1, a5
                  bltu         s8, s8, 1788f
                  nop
                  slt          s4, zero, a2
                  srai         s5, ra, 31
                  bltu         t3, a3, 1789f
                  lui          tp, 742744
                  srl          s1, t2, s4
1788:             slti         t6, s11, -1865
1789:             addi         t2, t6, -1498
                  auipc        s2, 795209
                  lui          s8, 923542
                  sra          s1, a2, t1
                  beq          zero, zero, 1796f
                  slti         s1, s3, -859
                  or           gp, a1, a2
1796:             sub          s8, zero, t4
                  bne          t1, s11, 1816f
                  slti         a3, t4, -1016
                  xor          s4, s1, s6
                  blt          t3, t5, 1809f
                  ori          s9, sp, -292
                  andi         a7, a2, 944
                  lui          s8, 646763
                  add          t1, ra, sp
                  blt          a5, sp, 1811f
                  srai         zero, a3, 31
                  andi         t0, s9, 74
                  andi         s6, t1, 1691
1809:             slt          s8, s10, t4
                  ori          t6, a5, -1848
1811:             bne          a4, t5, 1819f
                  addi         gp, gp, 192
                  beq          a1, s4, 1822f
                  blt          a3, a1, 1829f
                  auipc        gp, 1037161
1816:             addi         s4, s9, -613
                  sra          a7, s8, t3
                  slt          a2, a7, a4
1819:             blt          s8, a4, 1839f
                  slli         tp, t2, 18
                  bgeu         sp, t5, 1828f
1822:             bne          gp, a2, 1838f
                  addi         gp, t4, -1462
                  sltiu        s8, t6, 570
                  auipc        zero, 56289
                  sltiu        s1, t6, -542
                  slt          t6, s10, s3
1828:             slli         s0, tp, 25
1829:             bgeu         s1, s2, 1848f
                  bne          ra, s5, 1841f
                  ori          ra, s1, -1774
                  blt          s11, s7, 1846f
                  slli         s8, s10, 20
                  or           a1, s6, sp
                  nop
                  bne          s7, a2, 1853f
                  addi         t6, s5, -435
1838:             ori          t3, s8, 552
1839:             sub          s10, t6, zero
                  srai         s0, s0, 0
1841:             bge          s5, a4, 1857f
                  andi         s0, s0, -356
                  srli         a4, s9, 27
                  srl          s9, a3, a5
                  and          s9, s4, s6
1846:             addi         s5, a5, 17
                  bne          a1, a4, 1859f
1848:             addi         s5, a7, -287
                  slt          a5, s1, t1
                  bgeu         s9, gp, 1869f
                  addi         t3, s3, 623
                  sltu         s9, s10, s7
1853:             or           t4, s7, s4
                  and          a0, s6, a0
                  bge          t3, a5, 1857f
                  sltu         s5, s3, tp
1857:             nop
                  and          a5, a3, t3
1859:             sll          s11, a5, s0
                  xori         t6, s8, -1092
                  xori         ra, sp, 715
                  slt          t4, a5, t1
                  slti         a0, t2, -1184
                  nop
                  sub          s6, s5, t1
                  sltiu        s5, t3, 785
                  xori         a2, s6, 1295
                  slt          s1, a7, t6
1869:             xor          a0, t6, t5
                  and          gp, s1, a2
                  bgeu         s10, s2, 1884f
                  addi         t3, zero, 1224
                  lui          a2, 884432
                  bne          s6, s11, 1893f
                  xor          t2, s7, t1
                  srai         a6, s7, 7
                  or           a4, t4, gp
                  slti         t0, s1, 375
                  sltiu        s8, a2, -1292
                  slli         a5, sp, 9
                  xori         t3, a4, 1150
                  srl          s6, s7, t4
                  srai         s10, t6, 20
1884:             nop
                  bltu         t0, t0, 1900f
                  srli         t0, t1, 22
                  addi         t0, a1, 1831
                  srl          s2, a0, s11
                  and          tp, ra, s4
                  and          tp, a7, tp
                  bge          t2, s11, 1902f
                  xor          s2, tp, s3
1893:             nop
                  auipc        a5, 918337
                  blt          s6, a5, 1902f
                  addi         a3, a4, 711
                  or           a3, s2, a5
                  srai         s4, zero, 1
                  srai         zero, sp, 20
1900:             addi         t0, s2, 880
                  sltu         s5, s4, s8
1902:             sltu         s10, s8, a5
main_12:          jal          t1, 12f
0:                jal          ra, 8f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          ra, 19f
4:                jal          ra, 6f
5:                jal          t4, 18f
6:                jal          a3, 2b
7:                jal          ra, 13f
8:                jal          ra, 4b
9:                jal          s11, 1b
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          ra, 16f
13:               jal          a2, 11b
14:               jal          t1, 5b
15:               jal          t1, 3b
16:               jal          t1, 9b
17:               jal          ra, 15b
18:               jal          a7, 10b
19:               slt          tp, a6, s1
                  blt          t4, t2, 1911f
                  srl          t0, a7, sp
                  bgeu         s3, zero, 1909f
                  srai         t5, a7, 14
                  slli         ra, t2, 7
                  xor          a1, a3, t5
1909:             lui          a7, 632371
                  ori          s9, s11, -1061
1911:             sub          t1, t4, a6
                  xori         s4, a0, -1029
                  bgeu         t3, s2, 1924f
                  auipc        zero, 519754
                  bltu         s2, a7, 1924f
                  srli         s4, t3, 13
                  nop
                  slt          s1, t0, t5
                  sra          t5, t1, t0
                  or           t0, t3, t3
                  ori          t0, a5, -570
                  xor          a4, s9, s6
                  bne          t0, gp, 1940f
1924:             andi         s2, a4, -1233
                  slti         a7, t4, 478
                  beq          t0, a1, 1929f
                  slli         zero, s11, 26
                  bge          t1, s3, 1930f
1929:             bltu         s0, s4, 1941f
1930:             auipc        s10, 293344
                  beq          t4, s7, 1946f
                  slli         tp, t2, 31
                  blt          a2, a4, 1936f
                  slt          t5, s7, a2
                  auipc        s2, 230973
1936:             srl          a4, s0, s3
                  slli         a3, s11, 25
                  sll          a2, t4, t0
                  srli         a1, sp, 5
1940:             slt          t2, t1, t6
1941:             add          t3, s11, s6
                  slli         t0, t3, 14
                  or           s4, t1, s7
                  srai         ra, a0, 28
                  xor          s9, s1, s2
1946:             beq          s4, t1, 1953f
                  nop
                  blt          s2, s8, 1963f
                  sub          t1, s10, s1
                  sub          gp, t3, t5
                  srli         s11, s8, 16
                  sll          a7, sp, a6
1953:             slli         a1, s9, 20
                  andi         t5, t2, 517
                  and          t6, gp, a1
                  blt          zero, s6, 1972f
                  sra          s11, a3, s0
                  slt          a2, s3, t3
                  or           s2, gp, zero
                  bgeu         t2, s5, 1969f
                  or           ra, zero, t0
                  srl          t1, s10, s6
1963:             bgeu         s10, s0, 1972f
                  beq          a1, s11, 1984f
                  auipc        t3, 1017623
                  lui          a0, 643073
                  andi         t6, tp, 1024
                  sltiu        ra, sp, -2047
1969:             bgeu         sp, a7, 1975f
                  sltu         t1, a4, t5
                  sltu         t4, t5, s7
1972:             bltu         s1, zero, 1988f
                  sltu         a3, a5, t2
                  ori          s0, s6, -112
1975:             bltu         t5, zero, 1994f
                  xori         s9, ra, 1946
                  bne          t6, tp, 1981f
                  xori         s8, zero, 344
                  bge          a0, a0, 1993f
                  srai         t1, s7, 12
1981:             slli         a3, s2, 24
                  slti         s2, s7, 288
                  slli         t1, s7, 19
1984:             sra          zero, t4, t6
                  blt          ra, t2, 1989f
                  slt          s4, s1, t6
                  sra          s4, a6, a5
1988:             addi         s5, t2, -530
1989:             bge          t1, s10, 2003f
                  addi         a6, t1, 1369
                  and          s4, s4, t4
                  or           s0, t4, t1
1993:             slli         t1, s0, 6
1994:             ori          s9, a1, -1045
                  sltu         a6, t6, gp
                  add          t6, s2, ra
                  and          a5, t6, sp
                  sltu         t2, a1, a6
                  srai         ra, s11, 1
                  slt          a3, t1, s8
                  slti         a0, t6, 500
                  andi         s0, tp, -784
2003:             slli         s9, s0, 29
                  lui          a5, 634582
                  sra          t5, s10, sp
                  auipc        tp, 126528
                  andi         a7, s6, -1737
                  slti         a4, s8, -1317
                  andi         s5, a6, -540
                  beq          t2, s3, 2018f
                  bne          t0, s4, 2030f
                  xor          t0, t2, s10
                  bgeu         a1, s11, 2021f
                  sub          s1, s4, t2
                  srai         t3, t4, 23
                  sll          a4, a4, s7
                  sltu         s1, a6, s10
2018:             xori         s0, a7, -497
                  auipc        t4, 195176
                  sub          s0, s5, t0
2021:             addi         a6, t2, 1535
                  sub          a5, s1, a3
                  slt          s0, s7, a7
                  slti         s0, a6, 559
                  lui          t0, 561466
                  bge          t3, s2, 2030f
                  slt          gp, t3, gp
                  bge          a3, t4, 2030f
                  sll          s5, s8, a5
2030:             and          t5, t2, t1
                  sll          s11, s8, s6
                  sll          t2, a3, s8
                  sra          zero, a7, s7
                  sll          s9, tp, s4
                  andi         a6, s10, -283
                  sra          t4, s2, t0
                  sub          a3, a3, a4
                  nop
                  srl          a0, s1, a7
                  sub          a2, t0, a3
                  bge          zero, t5, 2049f
                  bgeu         t2, sp, 2058f
                  ori          a3, gp, -1329
                  nop
                  beq          a5, t1, 2054f
                  slli         t4, a1, 19
                  and          t1, s5, t2
                  ori          ra, s4, -976
2049:             auipc        s8, 537083
                  sub          ra, s9, t1
                  or           tp, a6, a4
                  ori          s0, a1, 824
                  auipc        a3, 106837
2054:             slti         gp, a0, -82
                  auipc        t4, 516276
                  add          a5, a7, s6
                  srl          gp, t1, gp
2058:             auipc        a0, 736974
                  slli         a7, a5, 7
                  addi         a1, s9, 1626
                  slt          a4, zero, s6
                  sra          a3, sp, a2
                  sll          t3, s8, sp
                  sltu         a3, s5, s0
                  lui          s5, 25638
                  xor          s11, t5, sp
                  and          a7, a0, t5
                  sub          a6, a0, gp
                  and          s9, s2, a2
                  nop
                  slti         s5, a0, 251
                  blt          s6, s2, 2081f
                  nop
                  sub          s0, a6, t3
                  bltu         s1, t6, 2082f
                  beq          tp, s2, 2087f
                  sll          s0, a7, s2
                  beq          sp, gp, 2095f
                  addi         s8, s1, 1146
                  srai         t4, s7, 8
2081:             bltu         sp, s4, 2088f
2082:             slt          t6, t4, t3
                  auipc        s8, 792456
                  sltu         t5, s10, t5
                  bgeu         t1, a4, 2095f
                  andi         tp, s10, -1188
2087:             addi         t2, sp, -2011
2088:             xor          s2, s9, a4
                  blt          t5, s9, 2095f
                  srl          ra, s2, a5
                  bge          a1, ra, 2095f
                  xori         s11, a0, -1129
                  and          tp, t6, a1
                  sub          s8, a7, a3
2095:             slti         s11, s6, 1574
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bltu         t6, s9, sub_4_stack_p
                  or           s10, s3, a5
                  xor          t5, s5, s2
sub_4_stack_p:    addi         s7, s7, -56
                  sw           t1, 4(s7)
                  sltu         s4, a4, a4
                  or           a1, a7, s4
                  andi         tp, s2, -1994
                  nop
                  la           t6, sub_5
                  addi         t6, t6, 551
                  sra          t0, s9, t6
                  lui          tp, 31900
                  addi         tp, s6, 323
                  slti         t1, t4, 1
                  srai         tp, s11, 11
                  srli         zero, a1, 25
                  andi         a4, a1, 2038
                  sltiu        s9, a2, -237
sub_4_j6:         jalr         t1, t6, -550 #jump sub_4 -> sub_5
                  srli         s10, s0, 14
                  bltu         a4, s5, 11f
                  or           s1, s11, s2
                  add          s0, s2, t3
                  srai         t2, t0, 19
                  xor          tp, zero, a1
                  auipc        t1, 392698
                  and          t3, t5, a7
                  bgeu         s9, a2, 11f
                  srli         s1, a3, 29
                  nop
11:               slti         a2, a2, 1624
                  srl          ra, s2, zero
                  nop
                  lw           t1, 4(s7)
                  srli         gp, gp, 28
                  srli         s11, tp, 7
                  slli         a3, t1, 29
                  addi         s7, s7, 56
                  sub          s11, t1, a2
                  add          a6, a3, a7
                  addi         a4, a6, -300
                  slti         s0, s5, -1601
                  sra          a4, s2, zero
44:               addi x13, x6, 1
44:               jalr x13, x13, 0
sub_1:            srai         t4, a7, 8
                  addi         s7, s7, -12
                  or           t3, gp, a2
                  ori          s11, t6, 485
                  ori          ra, t3, 295
                  srl          gp, s6, gp
                  add          s1, s0, zero
                  addi         zero, t6, -578
                  sw           t1, 4(s7)
                  and          t6, zero, tp
sub_1_8:          jal          t1, 13f
0:                jal          t1, 8f
1:                jal          t0, 12f
2:                jal          t1, 5f
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          ra, 19f
6:                jal          ra, 16f
7:                jal          ra, 18f
8:                jal          ra, 7b
9:                jal          a2, 0b
10:               jal          ra, 1b
11:               jal          ra, 14f
12:               jal          a5, 9b
13:               jal          ra, 17f
14:               jal          t0, 2b
15:               jal          t2, 4b
16:               jal          ra, 11b
17:               jal          t6, 15b
18:               jal          a5, 3b
19:               xor          a4, tp, a4
sub_1_4:          jal          t1, 0f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 11f
3:                jal          s1, 9f
4:                jal          ra, 5f
5:                jal          ra, 10f
6:                jal          ra, 7f
7:                jal          tp, 2b
8:                jal          ra, 6b
9:                jal          tp, 13f
10:               jal          a3, 16f
11:               jal          gp, 14f
12:               jal          s1, 1b
13:               jal          ra, 8b
14:               jal          t0, 15f
15:               jal          ra, 17f
16:               jal          ra, 12b
17:               xori         s6, t4, -1735
sub_1_0:          jal          t1, 25f
0:                jal          ra, 8f
1:                jal          t6, 15f
2:                jal          ra, 24f
3:                jal          ra, 6f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          t1, 5b
7:                jal          ra, 1b
8:                jal          a5, 3b
9:                jal          t0, 23f
10:               jal          ra, 27f
11:               jal          a1, 10b
12:               jal          t1, 18f
13:               jal          ra, 21f
14:               jal          ra, 4b
15:               jal          ra, 11b
16:               jal          t1, 13b
17:               jal          t1, 12b
18:               jal          t0, 28f
19:               jal          t5, 14b
20:               jal          t0, 22f
21:               jal          t1, 26f
22:               jal          ra, 19b
23:               jal          gp, 29f
24:               jal          ra, 17b
25:               jal          a6, 0b
26:               jal          t1, 20b
27:               jal          ra, 2b
28:               jal          a0, 16b
29:               lui          t1, 326681
sub_1_2:          jal          t1, 5f
0:                jal          ra, 7f
1:                jal          ra, 17f
2:                jal          ra, 18f
3:                jal          a0, 20f
4:                jal          ra, 14f
5:                jal          ra, 11f
6:                jal          a5, 19f
7:                jal          ra, 2b
8:                jal          a5, 0b
9:                jal          ra, 12f
10:               jal          a2, 8b
11:               jal          ra, 16f
12:               jal          t1, 6b
13:               jal          ra, 3b
14:               jal          s5, 21f
15:               jal          ra, 9b
16:               jal          t1, 15b
17:               jal          t1, 4b
18:               jal          t1, 13b
19:               jal          t1, 10b
20:               jal          ra, 1b
21:               srli         s11, a7, 17
sub_1_7:          jal          t1, 1f
0:                jal          t1, 4f
1:                jal          ra, 18f
2:                jal          ra, 9f
3:                jal          gp, 15f
4:                jal          a7, 8f
5:                jal          ra, 3b
6:                jal          ra, 19f
7:                jal          t5, 20f
8:                jal          t1, 10f
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 17f
12:               jal          ra, 2b
13:               jal          ra, 7b
14:               jal          ra, 5b
15:               jal          ra, 0b
16:               jal          ra, 14b
17:               jal          ra, 13b
18:               jal          a3, 12b
19:               jal          t1, 16b
20:               jal          t1, 21f
21:               add          s6, a3, t5
sub_1_6:          jal          t1, 13f
0:                jal          ra, 16f
1:                jal          a0, 17f
2:                jal          t1, 0b
3:                jal          s6, 14f
4:                jal          ra, 10f
5:                jal          ra, 15f
6:                jal          tp, 3b
7:                jal          a5, 6b
8:                jal          ra, 2b
9:                jal          ra, 4b
10:               jal          t3, 12f
11:               jal          t2, 8b
12:               jal          ra, 18f
13:               jal          a6, 5b
14:               jal          tp, 1b
15:               jal          gp, 7b
16:               jal          t1, 9b
17:               jal          ra, 11b
18:               add          s0, s1, s8
sub_1_9:          jal          t1, 6f
0:                jal          t1, 8f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          s5, 13f
4:                jal          gp, 5f
5:                jal          a2, 11f
6:                jal          ra, 2b
7:                jal          t1, 3b
8:                jal          t1, 1b
9:                jal          ra, 0b
10:               jal          s4, 12f
11:               jal          ra, 9b
12:               jal          tp, 4b
13:               srl          a7, a5, s5
sub_1_11:         jal          t1, 16f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          t1, 5f
3:                jal          a1, 6f
4:                jal          t0, 15f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 11f
8:                jal          a0, 21f
9:                jal          tp, 17f
10:               jal          tp, 12f
11:               jal          s0, 22f
12:               jal          t1, 18f
13:               jal          gp, 2b
14:               jal          a5, 19f
15:               jal          ra, 13b
16:               jal          ra, 8b
17:               jal          ra, 7b
18:               jal          t0, 0b
19:               jal          ra, 20f
20:               jal          ra, 10b
21:               jal          t0, 14b
22:               slt          s11, s11, a1
sub_1_5:          jal          t1, 6f
0:                jal          gp, 5f
1:                jal          ra, 8f
2:                jal          t1, 25f
3:                jal          t1, 17f
4:                jal          ra, 27f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          ra, 19f
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          t3, 15f
11:               jal          t1, 7b
12:               jal          t1, 23f
13:               jal          ra, 22f
14:               jal          t1, 1b
15:               jal          gp, 9b
16:               jal          ra, 21f
17:               jal          tp, 26f
18:               jal          tp, 2b
19:               jal          ra, 14b
20:               jal          ra, 28f
21:               jal          s2, 20b
22:               jal          t2, 24f
23:               jal          t0, 11b
24:               jal          ra, 18b
25:               jal          t1, 0b
26:               jal          ra, 4b
27:               jal          t1, 10b
28:               or           tp, a7, a3
sub_1_1:          jal          t1, 1f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          t1, 0b
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          a4, 9f
6:                jal          t1, 8f
7:                jal          ra, 6b
8:                jal          t1, 3b
9:                jal          t1, 2b
10:               jal          t1, 5b
11:               auipc        s4, 151618
                  bne          t2, sp, 19f
                  beq          s11, s1, 5f
                  addi         zero, s4, -46
                  slt          s5, ra, s1
                  beq          s7, a0, 6f
5:                bgeu         t6, a6, 21f
6:                srl          s8, a3, t1
                  sltu         a4, s1, a5
                  nop
                  xori         s2, sp, 697
                  auipc        tp, 225003
                  ori          s10, t4, 1638
                  slti         zero, zero, 142
                  sub          gp, t6, a5
                  sub          s4, s10, s9
                  srl          zero, s1, s7
                  xori         t4, t4, -717
                  sltiu        t3, t4, -1370
                  auipc        zero, 412353
19:               bgeu         t3, t6, 22f
                  nop
21:               add          t6, s6, t3
22:               ori          t0, s2, 288
                  slli         s8, t5, 27
                  bgeu         s1, t2, 27f
                  xor          a0, sp, t5
                  addi         a4, a0, -427
27:               sll          s1, s4, t2
                  srli         s10, ra, 9
                  sra          s11, a7, a0
                  slti         t5, s10, 1812
                  auipc        t6, 743751
                  add          a4, s4, s11
                  blt          ra, s6, 49f
                  sll          t2, s4, s1
                  ori          s6, a7, -443
                  addi         a0, gp, 671
                  xori         s10, gp, -1094
                  lui          t3, 388656
                  slli         s2, s6, 12
                  bltu         s0, a4, 44f
                  lui          t0, 119620
                  xori         ra, s2, -1415
                  bge          s2, sp, 63f
44:               beq          t0, s11, 56f
                  andi         t6, t4, -1399
                  sra          a4, s6, t3
                  xori         s11, t0, -2014
                  srl          a5, t1, s0
49:               sltiu        s9, a0, 1288
                  beq          a3, zero, 65f
                  beq          a1, zero, 59f
                  andi         a6, ra, -226
                  slli         s8, s2, 0
                  lui          t5, 193242
                  xor          t6, t3, t0
56:               or           t4, s6, t5
                  ori          a7, s10, 226
                  xori         s4, t6, -1083
59:               xori         a1, s8, 1001
                  bgeu         t6, s2, 65f
                  bge          a6, t3, 65f
                  and          s9, tp, a7
63:               sll          s5, s3, s1
                  bgeu         t1, s6, 65f
65:               bne          s8, a4, 68f
                  slt          t0, t0, a5
                  slti         a1, s2, 891
68:               bltu         zero, t4, 87f
                  ori          a2, t5, -1990
                  srl          t0, s5, t3
                  beq          s0, t2, 85f
                  srl          s2, ra, a6
                  srli         a2, a0, 21
                  beq          t6, t4, 80f
                  sltiu        t3, s5, 375
                  slt          t0, t1, t0
                  xor          ra, a1, s6
                  sub          s1, a3, ra
                  bgeu         a5, s7, 97f
80:               addi         s1, a4, -922
                  or           s11, t5, s11
                  bne          s6, zero, 87f
                  srai         t3, a2, 15
                  bne          a4, gp, 89f
85:               nop
                  bge          s5, t0, 88f
87:               bne          t5, a1, 99f
88:               auipc        a2, 277940
89:               sltiu        zero, s5, -212
                  bne          a7, a3, 101f
                  or           s2, s8, a4
                  xori         tp, a1, -19
                  srli         zero, ra, 6
                  ori          s5, s2, 1583
                  slt          a4, a6, s1
                  addi         s11, t2, 185
97:               andi         s1, t6, 322
                  bgeu         s8, a5, 109f
99:               and          s10, t4, s5
                  ori          t5, tp, -1454
101:              nop
                  srli         s11, s4, 12
                  srli         a3, s7, 30
                  bne          a0, a7, 111f
                  sra          s6, a2, s10
                  nop
                  andi         s6, a4, -688
                  ori          a7, s3, -1860
109:              or           zero, s9, s11
                  bge          t5, gp, 125f
sub_1_3:          jal          t1, 7f
0:                jal          t1, 2f
1:                jal          s1, 8f
2:                jal          t1, 3f
3:                jal          ra, 9f
4:                jal          ra, 5f
5:                jal          t1, 10f
6:                jal          t2, 11f
7:                jal          tp, 4b
8:                jal          ra, 6b
9:                jal          ra, 1b
10:               jal          s8, 0b
11:               sra          zero, s8, gp
111:              srai         t4, gp, 14
                  srai         a0, a0, 9
                  bne          s10, t1, 124f
                  addi         t4, s4, -1560
                  lui          t6, 1032824
                  addi         s8, t0, -1034
                  sll          s10, sp, s1
                  and          s9, a4, a1
                  sll          t0, s9, s9
                  lui          s9, 594063
                  srai         s5, a3, 11
                  bltu         tp, a6, 132f
                  srai         s2, a0, 23
124:              sra          s10, t1, sp
125:              add          s11, zero, sp
                  sltiu        s1, ra, -793
                  sub          s8, tp, t4
                  slti         a5, t5, -975
                  sltiu        t4, sp, -1895
                  andi         s2, a2, -1402
                  xor          a6, s6, a6
132:              sll          t0, s6, s5
                  srl          tp, t0, s5
                  or           a0, s11, s11
                  srli         s2, gp, 17
                  sll          s6, sp, t4
                  andi         a6, s0, 276
                  andi         a7, s6, 1878
                  bltu         s6, s5, 155f
                  beq          a2, s10, 143f
                  add          s1, a3, t1
                  and          tp, s1, a2
143:              bge          s3, t5, 158f
                  sub          s0, a7, t3
                  addi         a4, s7, 2022
                  slt          t1, s1, a6
                  sll          t6, gp, t4
                  nop
                  add          a4, s6, t5
                  xori         tp, t5, -757
                  and          a6, t2, t1
                  lui          tp, 301694
                  bltu         t0, s3, 156f
                  slli         a5, s2, 29
155:              bgeu         s11, tp, 175f
156:              andi         ra, a7, 451
                  ori          t1, s10, -74
158:              slli         s4, s6, 27
                  addi         a5, a6, 1640
                  bne          a1, t6, 171f
                  bltu         s2, a5, 165f
                  sltiu        a6, gp, 1781
                  ori          a2, ra, 256
                  sltu         s5, a4, zero
165:              bltu         s1, tp, 180f
                  beq          sp, sp, 171f
                  xori         s10, s4, -586
                  andi         s9, sp, -1520
                  sll          gp, a6, t0
                  bgeu         sp, s7, 189f
171:              sub          s0, s6, s0
                  addi         s2, tp, 426
                  bne          gp, s5, 179f
                  or           a3, a7, s3
175:              sub          s5, a3, ra
                  addi         s5, a2, 841
                  beq          a2, ra, 189f
                  ori          s9, t4, 75
179:              addi         s1, s11, 898
180:              sra          s2, t5, s3
sub_1_12:         jal          t1, 0f
0:                jal          t1, 7f
1:                jal          t0, 14f
2:                jal          gp, 1b
3:                jal          ra, 11f
4:                jal          ra, 8f
5:                jal          ra, 10f
6:                jal          t6, 4b
7:                jal          ra, 12f
8:                jal          ra, 5b
9:                jal          t1, 3b
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          t1, 6b
13:               jal          ra, 2b
14:               addi         zero, s8, -1527
                  sltu         t1, t6, t1
                  ori          s9, t2, -513
                  xori         a0, s2, 1743
                  slli         a2, t3, 22
                  srli         s6, t2, 21
                  bltu         t0, a6, 198f
                  and          s0, s11, a6
                  xori         s6, tp, -1323
189:              or           tp, s6, s11
                  bge          s5, t1, 209f
                  srli         s8, s6, 17
                  sltu         s4, s3, s11
                  bgeu         t4, t1, 197f
                  blt          s6, a4, 199f
                  ori          a1, s7, 489
                  add          t1, gp, t5
197:              slti         ra, s2, -98
198:              bne          sp, s6, 209f
199:              addi         s6, t5, -1288
                  auipc        a2, 826502
                  slt          a1, s4, s0
                  sra          a5, s4, t1
                  add          a1, t1, t1
                  sra          t6, s3, a5
                  srli         a1, s8, 6
                  sll          s11, t6, a0
                  sra          s9, a4, a7
                  sltu         t2, a3, a6
209:              add          tp, s7, s2
                  sll          a6, s11, t5
                  srai         t6, a3, 29
                  srai         s8, t2, 4
                  nop
                  lui          t5, 477649
                  xori         a3, s11, -240
                  beq          sp, tp, 230f
                  xor          a0, a0, t0
sub_1_10:         jal          t1, 4f
0:                jal          gp, 3f
1:                jal          ra, 14f
2:                jal          t1, 17f
3:                jal          s2, 16f
4:                jal          tp, 9f
5:                jal          a3, 7f
6:                jal          s5, 13f
7:                jal          ra, 8f
8:                jal          t1, 10f
9:                jal          ra, 1b
10:               jal          ra, 2b
11:               jal          ra, 6b
12:               jal          tp, 15f
13:               jal          s8, 12b
14:               jal          ra, 0b
15:               jal          ra, 5b
16:               jal          a2, 11b
17:               jal          ra, 18f
18:               nop
                  and          t3, zero, zero
                  bge          t1, s3, 229f
                  auipc        s9, 960160
                  slli         a2, s7, 25
                  sltiu        tp, t4, -100
                  andi         t6, s4, 17
                  bltu         a5, t2, 226f
                  add          gp, a6, t1
226:              blt          s9, t4, 234f
                  or           s1, tp, t6
                  xor          s9, s10, s3
229:              slti         s2, s6, 1674
230:              and          s0, sp, t4
                  lui          t4, 242736
                  lui          t0, 32050
                  andi         gp, s7, -1896
234:              srl          a1, t4, s3
                  slti         s9, t6, -671
                  xor          s5, t6, s11
                  xori         s8, a1, 771
                  lui          s8, 14015
                  ori          gp, a6, 1176
                  sltiu        s11, s11, -1936
                  sltu         tp, s10, t0
                  slli         a4, t2, 21
                  sltu         s2, a3, t3
                  slti         a7, s7, -1008
                  xor          t5, t5, t6
                  xor          s8, t4, t2
                  slti         s10, a5, 1456
                  ori          a2, s7, 1705
                  bne          a7, s11, 256f
                  blt          a1, s3, 266f
                  srai         s0, s4, 20
                  blt          gp, s8, 254f
                  addi         zero, s6, -1159
254:              sra          a2, s8, s8
                  bltu         s1, t0, 258f
256:              slt          gp, a1, t5
                  xor          t2, a7, s5
258:              bge          a5, t0, 259f
259:              xor          a4, a2, t6
                  sra          zero, a4, ra
                  bltu         a3, a4, 265f
                  slti         a2, s3, -1683
                  andi         a2, ra, 209
                  or           s8, a0, s0
                  sub          s11, s7, s10
                  ori          s0, tp, 1524
                  ori          tp, s10, -633
                  srai         t6, t2, 9
                  xor          s4, s11, s9
                  addi         s10, t6, -702
sub_1_j3:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  srai         ra, s11, 25
265:              sll          t0, s5, s2
266:              ori          s2, a3, 1400
                  blt          ra, s7, 285f
                  srli         s5, s0, 24
                  srli         a3, tp, 4
                  nop
                  srli         t6, s5, 30
                  or           s9, s8, t4
                  slti         a4, t3, 1185
                  and          t0, s0, s3
                  bne          s2, s2, 280f
                  sra          a4, s4, t5
                  srl          s2, s2, s1
                  sub          a6, s8, ra
                  auipc        s4, 446926
280:              srai         tp, s8, 1
                  ori          t4, t1, -266
                  sub          a2, a3, t2
                  lui          a0, 21172
                  sltu         s9, a0, s8
                  bge          a3, s9, sub_1_j4 #branch to jump instr
                  xor          s1, t6, a1
                  ori          s5, t1, -1606
                  srli         a0, a2, 10
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  sra          ra, t0, s11
                  addi         a6, s0, 1261
                  sra          t0, t3, a3
                  xor          tp, t1, t5
285:              srl          a1, a7, s2
                  srli         s6, a0, 6
                  addi         s9, s11, -1485
                  beq          a1, s5, 299f
                  and          t3, sp, sp
                  addi         s10, t5, -697
                  srl          s10, t3, t0
                  xori         zero, s7, 319
                  sltu         t5, t1, a4
                  sub          s8, s11, t4
                  sltiu        tp, a3, -1557
                  bge          s3, t4, 301f
                  slli         a4, s1, 2
                  slli         a4, zero, 23
299:              bne          t4, a6, 311f
                  lui          s8, 1016609
301:              lui          t0, 430221
                  nop
                  slli         t2, ra, 20
                  blt          s6, gp, 324f
                  lui          t0, 921721
                  auipc        t0, 644763
                  xor          a6, s5, ra
                  auipc        s4, 396064
                  bltu         t4, a5, 314f
                  bgeu         t1, s8, 320f
311:              xor          a0, s6, ra
                  blt          ra, s11, 315f
                  ori          t1, ra, -1126
314:              sub          s10, s2, a6
315:              sll          tp, t2, a2
                  srl          s4, a1, s1
                  sub          a6, t4, zero
                  and          a1, zero, a6
                  sltiu        t4, t6, -1287
320:              sll          a4, tp, zero
                  sub          s1, t1, t1
                  sltu         gp, s1, ra
                  xor          s9, s7, s7
324:              addi         t5, ra, -1268
                  xor          s0, s6, s10
                  slti         a2, s8, 1601
                  nop
                  add          s0, t6, a3
                  blt          sp, t4, 333f
                  bltu         s9, s1, 349f
                  or           t5, a1, sp
                  addi         s11, t2, -1495
333:              sub          t6, a2, sp
                  beq          a4, a1, 345f
                  bne          s8, t3, 337f
                  sltiu        zero, a3, 1872
337:              sll          a2, s2, s8
                  auipc        t4, 753353
                  slli         a3, t2, 1
                  beq          sp, a3, 355f
                  slli         t4, s11, 17
                  beq          s1, s10, 358f
                  bltu         t4, a7, 354f
                  sll          t2, s1, t4
345:              sll          s5, t0, s3
                  lui          s2, 513428
                  srai         a6, gp, 11
                  sub          zero, s6, a7
349:              sltu         s5, a4, t2
                  slti         a0, t2, -2038
                  lui          t4, 706268
                  nop
                  slti         s5, a5, -685
354:              slt          t2, gp, s2
355:              add          s5, s3, t6
                  auipc        a0, 579123
                  auipc        t5, 1013971
358:              auipc        a6, 696373
                  bge          t0, s3, 362f
                  add          a3, t1, t6
                  bgeu         s1, t4, 380f
362:              or           a4, t4, gp
                  sub          ra, t3, t1
                  sll          gp, s0, s6
                  sub          s6, a7, s3
                  sub          a7, ra, s11
                  bltu         t1, a7, 381f
                  srl          ra, s0, t4
                  xori         t0, gp, -1301
                  srai         ra, t3, 17
                  slli         s6, zero, 4
                  slti         s11, s3, -1882
                  auipc        t3, 348526
                  bgeu         s1, a4, 378f
                  auipc        s0, 845754
                  bge          s3, a2, 391f
                  sltiu        s8, s4, -1808
378:              slti         a2, a7, 1906
                  addi         a0, s7, -150
380:              bne          a5, a5, 384f
381:              bne          s0, tp, 392f
                  srl          s10, t0, a0
                  lui          s11, 644697
384:              sltiu        a0, a0, -319
                  sra          a2, t5, t2
                  srai         t4, sp, 17
                  bgeu         t5, s0, 405f
                  sltu         a7, a7, t5
                  and          tp, sp, s11
                  auipc        s6, 491257
391:              add          s11, s7, t6
392:              bne          s7, ra, 393f
393:              sltiu        tp, s10, -1090
                  sltiu        s0, gp, 90
                  sll          a2, tp, a1
                  xor          a0, a3, tp
                  or           a3, s4, s9
                  sra          t6, zero, t5
                  slli         a7, t5, 26
                  slli         s10, a1, 28
                  xori         a4, s10, 920
                  add          s0, s5, s10
                  sra          a2, t3, tp
                  ori          s1, t4, 1386
405:              sll          t1, s8, gp
                  beq          a5, a3, 409f
                  and          gp, a0, gp
                  beq          s11, a2, 410f
409:              sub          t1, t4, a4
410:              lui          t2, 377873
                  nop
                  ori          s4, a4, -1420
                  and          zero, tp, gp
                  xori         t6, a5, 869
                  xori         t5, s8, -1523
                  addi         a3, s9, -1422
                  auipc        s0, 881241
                  slt          tp, s11, s10
                  srli         a3, t2, 25
                  bltu         gp, a6, 426f
                  ori          tp, s9, -541
                  srai         t3, t6, 6
                  sub          s11, a1, s2
                  beq          s2, a1, 440f
                  slli         s5, t6, 3
426:              bge          zero, t2, 431f
                  srai         gp, a7, 10
                  andi         t6, t1, -371
                  xori         t0, sp, -707
                  add          t3, t4, a6
431:              slt          a3, a2, t4
                  beq          t5, s6, 439f
                  andi         s8, s3, 1413
                  bge          a4, gp, 442f
                  add          t6, s4, t6
                  lui          t3, 270250
                  slti         s8, t0, 1728
                  ori          t3, t3, 1008
439:              and          zero, a5, a4
440:              srai         t6, s6, 31
                  slt          t3, t4, s8
442:              or           ra, s9, t2
                  nop
                  sub          ra, gp, t5
                  bgeu         a6, a1, 457f
                  srl          ra, t0, s9
                  sll          a4, a2, t1
                  xor          s0, s1, a7
                  beq          t2, a1, 464f
                  xori         t1, a7, 1690
                  blt          s3, s1, 471f
                  or           s10, s6, sp
                  bge          s3, a6, 471f
                  nop
                  bne          s9, t3, 456f
456:              ori          ra, t2, -1178
457:              nop
                  auipc        t2, 554577
                  srli         s8, s6, 8
                  bge          a4, t5, 476f
                  sub          a4, a0, s8
                  bltu         s0, gp, 473f
                  sll          s6, s8, s5
464:              bgeu         a1, s10, 468f
                  srli         t4, a6, 27
                  add          s10, tp, s4
                  srl          s8, gp, a6
468:              xor          t0, s7, s6
                  lui          t3, 528173
                  add          a0, zero, t3
471:              auipc        t2, 320398
                  slt          ra, s1, zero
473:              lui          s1, 1008801
                  andi         s4, s1, 41
                  srl          t1, s2, s5
476:              slli         t3, s1, 11
                  srl          t3, s1, t3
                  auipc        tp, 50636
                  xori         t6, a2, -1676
                  sub          a2, t5, ra
                  slti         s4, s2, -1763
                  nop
                  blt          s0, a1, 489f
                  or           s6, t1, s8
                  nop
                  slti         s4, a4, 2002
                  bgeu         s11, s9, 502f
                  sll          a4, a6, t2
489:              xor          s10, a7, sp
                  lui          t0, 66715
                  and          tp, s5, a4
                  blt          t2, s10, 494f
                  sll          a5, t0, s6
494:              or           s6, s3, s2
                  slt          t1, s7, a4
                  bgeu         s5, gp, 501f
                  slti         s6, t6, 1494
                  sub          t4, s1, a6
                  slt          ra, t4, t0
                  sltu         t6, t4, s3
501:              ori          s1, s4, 1893
502:              lui          t4, 519972
                  ori          a4, s6, -478
                  ori          s8, s10, 1317
                  addi         s6, s3, 379
                  srai         a3, gp, 27
                  sll          s1, t0, a7
                  blt          a6, t1, 512f
                  srl          zero, s3, s3
                  sltiu        a4, a5, -1650
                  auipc        t6, 989143
512:              auipc        s2, 114903
                  slti         s11, s10, -275
                  slti         s8, a5, -1016
                  srli         s0, s10, 10
                  bgeu         t1, s7, 527f
                  beq          tp, s3, 536f
                  and          s5, t3, zero
                  add          t6, tp, ra
                  srai         a7, t5, 3
                  bne          gp, s0, 524f
                  blt          t2, a3, 524f
                  bltu         s10, s2, 526f
524:              nop
                  andi         t6, s6, -890
526:              srli         ra, t0, 2
527:              bne          s6, t1, 532f
                  add          t4, s11, s8
                  bltu         t0, a1, 545f
                  sra          zero, gp, s8
                  auipc        a7, 668622
532:              add          t0, t0, a5
                  nop
                  slli         s6, s6, 16
                  bge          zero, a6, 545f
536:              andi         a5, s9, -298
                  sra          a2, s1, s11
                  ori          s8, s1, 553
                  nop
                  xori         s9, s0, 1947
                  andi         a2, a3, 1797
                  xor          tp, a5, s2
                  slt          s5, a0, sp
                  bltu         s2, a3, 548f
545:              slli         s0, t5, 0
                  add          zero, a7, zero
                  bgeu         a5, s5, 555f
548:              bge          s4, s3, 562f
                  bge          a3, s4, 556f
                  slt          a4, a6, s10
                  bgeu         t0, s9, 570f
                  auipc        a7, 673080
                  sll          s4, s4, s1
                  add          tp, ra, s8
555:              addi         a1, s10, -1361
556:              srl          a4, a0, ra
                  sra          t1, s2, a4
                  srli         t2, gp, 1
                  slli         t3, a5, 8
                  lui          s11, 194012
                  addi         t3, s3, 541
562:              srli         t2, t1, 14
                  or           s0, t3, zero
                  or           s0, s1, s7
                  slti         s8, s5, 1471
                  slt          s6, s8, gp
                  srai         t0, s1, 23
                  bge          s4, s9, 580f
                  addi         s4, a3, 494
570:              lui          t4, 1039661
                  nop
                  xori         zero, a7, -634
                  bltu         s6, t6, 585f
                  bltu         a0, t2, 585f
                  slt          gp, s3, s11
                  ori          s6, a7, 1527
                  and          zero, s10, t5
                  lui          a3, 967181
                  auipc        a7, 923513
580:              or           a4, s10, s1
                  xor          s11, s0, s11
                  bgeu         s9, s11, 585f
                  auipc        s9, 54606
                  ori          s5, ra, -1394
585:              beq          s6, sp, 590f
                  ori          s8, a5, 771
                  addi         a4, s5, -820
                  sltiu        t3, s2, -106
                  sltiu        gp, s5, 8
590:              xori         s0, s6, 1058
                  sltiu        a4, t0, 374
                  srli         a6, tp, 18
                  bge          s9, t3, 598f
                  sll          t0, s3, a1
                  slli         s9, a4, 17
                  slti         tp, s3, -1608
                  srli         a7, a1, 9
598:              bltu         t1, t5, 612f
                  srl          t1, t4, s4
                  slt          s8, t2, t2
                  and          ra, t0, t4
                  srl          t1, ra, gp
                  lui          s9, 684868
                  srl          a4, a5, t5
                  addi         t4, s0, 847
                  bltu         s9, a7, 609f
                  bne          s8, ra, 611f
                  and          a5, a1, a6
609:              addi         a4, a1, 1817
                  xor          tp, gp, s9
611:              slti         a3, s3, -1430
612:              sltu         s8, zero, a0
                  lui          t6, 33566
                  sltu         s10, a4, t6
                  xor          tp, a6, a5
                  sra          zero, a2, t6
                  srli         a6, s2, 20
                  ori          s11, s3, -1589
                  lui          a1, 186987
                  xori         t0, s10, 668
                  slt          t4, s3, t5
                  and          t5, a5, s8
                  ori          t2, s8, 1963
                  sltu         zero, s10, a1
                  bge          a3, s9, 637f
                  srai         s9, s9, 8
                  xori         a5, tp, 529
                  andi         a7, s11, -1978
                  srai         s2, t6, 1
                  add          a6, t5, s5
                  ori          a1, sp, 636
                  add          s8, a3, s7
                  blt          s0, s1, 644f
                  and          t1, t1, t5
                  auipc        t0, 854585
                  sltiu        s2, a7, -297
637:              andi         s1, s6, 518
                  nop
                  andi         s4, sp, -1627
                  slt          s4, a3, s2
                  bltu         tp, t1, 657f
                  slli         a3, gp, 31
                  xor          a7, a2, a0
644:              bltu         tp, a4, 659f
                  bne          s11, s10, 652f
                  xori         t2, s1, -939
                  beq          t2, s3, 658f
                  bgeu         s6, s8, 654f
                  ori          zero, a4, -1145
                  sltu         s5, s2, a4
                  sll          a3, t5, a4
652:              bge          s2, s9, 667f
                  lui          a7, 145335
654:              addi         s6, t1, 871
                  srai         a4, s5, 7
                  andi         t6, s7, 1834
657:              srli         t3, a1, 2
658:              sra          s2, s10, sp
659:              sra          a1, zero, s1
                  lui          s2, 569732
                  slti         t5, s9, 2023
                  beq          s11, s2, 666f
                  or           s2, a2, s4
                  and          tp, sp, a3
                  bne          t6, s11, 670f
666:              slt          s5, s3, a4
667:              bne          s11, t4, 679f
                  blt          s1, tp, 670f
                  bltu         s1, s2, 677f
670:              sub          t4, s1, ra
                  sll          s2, ra, t5
                  add          a0, a6, s6
                  slli         a5, sp, 18
                  nop
                  sra          zero, sp, a7
                  addi         t1, a0, -1409
677:              srl          a2, s4, s10
                  slti         t0, t4, -281
679:              add          a6, s5, a2
                  slti         a2, t0, 23
                  slli         s0, t5, 23
                  slti         s4, ra, -1698
                  lw           t1, 4(s7)
                  srl          a2, zero, s2
                  xor          a6, tp, s4
                  or           a1, ra, s0
                  nop
                  addi         s7, s7, 12
                  and          a3, s6, t4
                  sll          t4, a6, t6
986:              addi x7, x6, 0
986:              jalr x7, x7, 0
sub_3:            bge          s1, a2, sub_3_stack_p
                  sltiu        a1, s11, -1838
sub_3_stack_p:    addi         s7, s7, -32
                  add          s11, sp, s3
                  sw           t1, 4(s7)
                  lui          t2, 254734
                  slt          t2, gp, s5
                  la           s8, sub_4
                  slli         a4, a4, 4
                  ori          t0, a3, -462
                  sll          t3, zero, gp
                  addi         s8, s8, 630
                  auipc        s11, 606244
                  srai         s5, s8, 23
sub_3_j5:         jalr         t1, s8, -629 #jump sub_3 -> sub_4
                  blt          s1, t2, 12f
                  lui          s8, 713730
                  bgeu         a6, a6, 8f
                  sub          s1, s9, s4
                  slli         s6, a0, 15
                  slli         s11, a6, 30
                  lui          a5, 265705
                  slt          t0, s0, t0
8:                sra          a2, a1, s2
                  andi         t1, a1, -1458
                  srl          t2, s8, s0
                  xori         a5, s0, 1738
12:               srai         t4, s9, 9
                  sub          t2, a1, t6
                  and          s9, t6, s9
                  andi         s10, t2, 841
                  lw           t1, 4(s7)
                  sll          a2, ra, t5
                  addi         s7, s7, 32
                  sltu         a7, a7, t5
35:               addi x3, x6, 1
35:               jalr x3, x3, 0
sub_5:            bltu         s8, a6, sub_5_stack_p
                  sltiu        s10, s7, 243
sub_5_stack_p:    addi         s7, s7, -44
                  lui          t2, 922283
                  slli         t4, gp, 27
                  addi         ra, a1, -894
                  sw           t1, 4(s7)
                  slli         t5, a0, 31
                  slli         t6, t3, 21
                  and          s10, a1, a2
                  xor          a3, t1, s2
                  auipc        a1, 1009123
sub_5_1:          jal          t1, 2f
0:                jal          a0, 14f
1:                jal          ra, 4f
2:                jal          ra, 1b
3:                jal          t1, 0b
4:                jal          a0, 16f
5:                jal          a5, 26f
6:                jal          gp, 7f
7:                jal          ra, 10f
8:                jal          a6, 12f
9:                jal          ra, 8b
10:               jal          t1, 13f
11:               jal          ra, 6b
12:               jal          t1, 22f
13:               jal          t1, 23f
14:               jal          t1, 25f
15:               jal          ra, 5b
16:               jal          ra, 21f
17:               jal          t0, 3b
18:               jal          a0, 17b
19:               jal          ra, 11b
20:               jal          ra, 9b
21:               jal          ra, 24f
22:               jal          t1, 27f
23:               jal          gp, 18b
24:               jal          tp, 19b
25:               jal          ra, 20b
26:               jal          t1, 28f
27:               jal          a5, 15b
28:               sra          s0, s10, s8
sub_5_0:          jal          t1, 7f
0:                jal          t1, 6f
1:                jal          t0, 16f
2:                jal          ra, 1b
3:                jal          ra, 11f
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          ra, 12f
8:                jal          ra, 13f
9:                jal          ra, 5b
10:               jal          t1, 0b
11:               jal          t1, 2b
12:               jal          ra, 4b
13:               jal          t0, 15f
14:               jal          t1, 3b
15:               jal          t1, 14b
16:               srli         a4, tp, 6
                  srl          s6, s8, a6
                  blt          s11, t4, 2f
2:                xori         a5, s9, 53
                  sub          a2, gp, s2
                  sltu         s10, s3, t4
                  srli         a3, s9, 14
                  bltu         a2, gp, 7f
7:                sub          a4, a3, s2
                  andi         a3, t1, -2010
                  bgeu         s6, t4, 21f
                  andi         t5, t5, 464
                  lui          gp, 17209
                  and          a4, t2, s10
                  andi         a2, tp, 1073
                  sltiu        s9, ra, -1425
                  xori         a4, zero, 659
                  srai         s4, s3, 9
                  sra          t6, s8, t1
                  bltu         s8, s9, 33f
                  sub          t2, t6, a4
                  add          t1, s3, s8
21:               srl          a0, a7, a5
                  srai         a6, a5, 12
                  addi         t2, t6, 1294
                  add          t5, t1, s1
                  xor          a6, a4, tp
                  sltiu        a5, t0, -1357
                  ori          a6, a5, -1476
                  addi         s0, a2, -1161
                  nop
                  and          s11, a6, t4
                  lui          gp, 79411
                  and          s4, s5, t0
33:               blt          tp, zero, 53f
                  nop
                  blt          t5, gp, 51f
                  and          t4, s5, a7
                  bgeu         a5, t6, 56f
                  xor          s8, gp, t6
                  nop
                  sra          s11, t5, s11
                  sra          zero, sp, t4
                  bltu         a5, a1, 49f
                  srai         t4, gp, 22
                  srai         s10, gp, 15
                  slli         s1, a5, 0
                  add          ra, t0, s6
                  srl          s11, t1, t2
                  sltu         t3, t1, s7
49:               bne          a5, a6, 62f
                  sll          s10, s11, tp
51:               bgeu         s2, gp, 58f
                  srl          s2, s7, s4
53:               beq          sp, t0, 59f
                  beq          a0, sp, 71f
                  or           a3, a4, s5
56:               xor          s11, a0, s3
                  or           t0, t0, sp
58:               slli         s10, t0, 20
59:               lui          gp, 413338
                  srai         s11, s5, 7
                  srli         zero, s5, 27
62:               bgeu         a2, a1, 64f
                  ori          t3, sp, -1170
64:               srai         a4, a2, 9
                  lui          a0, 9639
                  slt          gp, t2, a4
                  bge          t1, s7, 81f
                  auipc        tp, 443289
                  bltu         s7, s7, 82f
                  sll          s9, a5, s10
71:               blt          a0, a0, 82f
                  srli         s2, s10, 8
                  bltu         s8, s7, 79f
                  sll          a3, s4, a7
                  and          t2, a0, gp
                  and          s6, s6, a7
                  bgeu         a7, t4, 80f
                  add          s6, s7, s11
79:               bltu         a7, s6, 88f
80:               and          a5, s1, a6
81:               add          a3, s3, s1
82:               nop
                  lui          s10, 394817
                  srli         s11, t1, 13
                  sra          a2, a7, a7
                  auipc        ra, 881153
                  ori          a6, t5, -1697
88:               sltiu        t1, s4, -1269
                  xori         zero, t2, 845
                  slt          ra, t5, a4
                  add          t5, s6, t6
                  srai         t6, s2, 24
                  auipc        ra, 959341
                  sll          a0, sp, t3
                  slli         a7, t3, 6
                  auipc        s4, 163602
                  slli         ra, a2, 29
                  slt          a7, s8, s3
                  bne          s8, s10, 110f
                  or           s5, t0, a6
                  bgeu         s2, zero, 106f
                  or           a7, t4, a4
                  blt          s3, sp, 116f
                  beq          s3, s1, 120f
                  bne          t5, t1, 120f
106:              bne          s8, s6, 111f
                  bge          t5, a5, 116f
                  lui          gp, 447398
                  bltu         s1, s9, 124f
110:              auipc        a7, 141071
111:              addi         tp, s6, 895
                  bltu         s1, a2, 130f
                  beq          a7, ra, 126f
                  srli         s0, sp, 10
                  sra          ra, s1, t5
116:              srl          s9, gp, t4
                  sra          s11, s10, ra
                  srai         s0, t6, 18
                  srli         s1, t2, 28
120:              nop
                  or           t1, a2, s10
                  sll          s9, s9, s11
                  addi         t0, zero, 1082
124:              slli         zero, t1, 9
                  or           t6, t1, a2
126:              slt          t4, t2, a4
                  slli         a0, tp, 21
                  bge          s9, t1, 131f
                  sltiu        a4, t6, 1525
130:              andi         t4, s7, -1805
131:              sltu         t4, t0, gp
                  lw           t1, 4(s7)
                  sltiu        ra, t5, 301
                  xor          s0, s5, t0
                  addi         s7, s7, 44
                  sra          a1, tp, t5
                  srli         s2, s5, 11
                  srli         a0, t3, 15
                  nop
                  xor          a1, s9, a2
201:              addi x21, x6, 0
201:              jalr x21, x21, 0
sub_2:            nop
                  beq          t2, s8, sub_2_stack_p
sub_2_stack_p:    addi         s7, s7, -64
                  add          a6, t3, t5
                  sw           t1, 4(s7)
                  ori          t6, a1, -1938
                  slli         a0, s8, 18
                  sltiu        s11, s8, -1336
sub_2_0:          jal          t1, 8f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          ra, 12f
3:                jal          t6, 19f
4:                jal          t4, 20f
5:                jal          ra, 25f
6:                jal          a5, 2b
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          ra, 24f
10:               jal          t1, 17f
11:               jal          tp, 5b
12:               jal          ra, 15f
13:               jal          a2, 21f
14:               jal          a0, 26f
15:               jal          a0, 4b
16:               jal          ra, 9b
17:               jal          ra, 18f
18:               jal          ra, 6b
19:               jal          ra, 22f
20:               jal          ra, 3b
21:               jal          a3, 7b
22:               jal          ra, 23f
23:               jal          ra, 11b
24:               jal          ra, 13b
25:               jal          t4, 16b
26:               srli         s11, a7, 29
                  sra          s10, s2, s1
                  or           s1, s8, s6
                  ori          t0, a5, 201
                  bge          t3, s10, 9f
                  srai         s1, a2, 28
                  sra          a4, s6, a4
                  add          a7, t5, t6
                  or           ra, a7, a1
                  lui          s11, 961575
9:                xor          a2, s8, s0
                  sltu         a3, a6, a4
                  add          tp, s3, s2
                  ori          a2, zero, -415
                  auipc        s5, 471594
                  sra          a1, t4, s0
                  slt          s5, t0, a0
                  lui          s10, 622744
                  sub          a3, sp, a5
                  bne          ra, a5, 20f
                  andi         t6, s11, 1566
20:               sltiu        s5, t3, 48
                  ori          s5, a1, -1242
                  addi         t3, t6, -649
                  lui          s8, 342365
                  lui          s9, 94882
                  blt          s3, a3, 40f
                  slt          s6, a1, a6
                  blt          a3, a1, 36f
                  and          t0, ra, t1
                  addi         a0, ra, 918
                  slli         s10, a4, 7
                  ori          ra, t6, 1464
                  slli         a6, s0, 27
                  bge          a1, a5, 38f
                  bne          a3, a1, 37f
                  and          a6, s10, s8
36:               bge          zero, a3, 40f
37:               srl          s10, a2, s2
38:               lui          t5, 152178
                  andi         s0, t1, -1342
40:               sltu         a2, a5, s4
                  bltu         a3, sp, 46f
                  auipc        tp, 847177
                  bne          t0, t3, 45f
                  addi         t2, t1, -964
45:               blt          t1, s3, 48f
46:               xori         s8, t6, 736
                  xor          t5, t6, t6
48:               srl          ra, a2, t4
                  add          ra, t5, s1
                  sltiu        t1, s6, 295
                  and          s0, s7, sp
                  bltu         s4, s7, 61f
                  lui          s6, 81350
                  srai         a2, s11, 7
                  ori          t3, a4, 276
                  addi         t2, s0, -804
                  slti         t1, s8, 386
                  srli         t0, s1, 1
                  sra          s2, t1, zero
                  sltu         s6, a0, s3
61:               auipc        s6, 505074
                  ori          t0, t2, -802
                  blt          s11, a0, 65f
                  or           s2, s7, s9
65:               slli         a6, gp, 0
                  lui          t6, 35818
                  add          a2, sp, s9
                  andi         zero, t0, 1016
                  add          t3, tp, s1
                  lw           t1, 4(s7)
                  srl          a7, s0, s10
                  addi         s7, s7, 64
                  sra          a2, t5, s5
                  add          a3, s8, a6
                  sll          tp, t5, s7
                  or           zero, t0, s9
                  or           a3, s8, t0
114:              addi x5, x6, 1
114:              jalr x5, x5, 0
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
.word 0x3757cd8d, 0xc0fc5c5d, 0x29c7929b, 0x5ea24b15, 0x8e4be738, 0xe3f6b5b4, 0xa35b8fe9, 0xd4c06cef
.word 0x57664a9d, 0xc798812d, 0xbc6294de, 0x541b74e7, 0x616d8940, 0x39b9593b, 0x38d6112a, 0xd7a2269d
.word 0xf955d8a9, 0x183cbe32, 0xac0264f9, 0xc6dfa734, 0x99269787, 0xbd56965a, 0xe45c2876, 0xe839ee47
.word 0xd069d648, 0x3e08d0f3, 0x25189848, 0xbeb82d2e, 0x8b69b918, 0xf9611448, 0x7b492146, 0xd45fd58b
.word 0xc290de06, 0xb2f97919, 0x5676b0e1, 0xb1169748, 0x15614f49, 0xacceff43, 0xd3805894, 0x0cb233a0
.word 0x082a59b8, 0x4340c3b7, 0xb8e18a75, 0x73897b8a, 0xaf254d71, 0x07f1a9b4, 0xdaaa5010, 0x41ad610f
.word 0xb8e7ba69, 0x789b8ee5, 0xba8e6f95, 0x2e8bb01e, 0x92405acd, 0xe80c587f, 0x8acdc9a8, 0xf7534fa5
.word 0x6666fa49, 0xb3440974, 0x3aaf4df8, 0x31215d1d, 0x00be6d95, 0x678631c5, 0x17bf8da7, 0x3dabc2a0
.word 0x6f1f9581, 0xafaef87a, 0x11e0cea3, 0x92c7bfeb, 0x1519a416, 0xe742dcb4, 0xae6ceae9, 0xef80fa1d
.word 0xb2590c70, 0x6596b3d5, 0xe839c0fb, 0x3e7689f8, 0xf03811f5, 0x0086a99b, 0x98f5575c, 0xe9a72f10
.word 0x85a5b24c, 0xc43d1eff, 0xf07f3ce3, 0x3e2de23e, 0x6725c5e2, 0x3cea6189, 0x86a36dbf, 0xe186b7c8
.word 0x0b9221e7, 0x85e53dab, 0x34351927, 0x0290d840, 0xa0cb3bfa, 0x2d38717f, 0x64c8a603, 0xe96bcea8
.word 0x56a9630f, 0x0a5e521f, 0xb49790a7, 0x0bd775ae, 0x40a8e514, 0xb89b32f1, 0xf5011b0b, 0xf0f5a4ae
.word 0x425729ea, 0xd595cf15, 0xf4ccc5ff, 0x6b922967, 0x5b3e221f, 0x477a6233, 0x671d6165, 0x965e1f9b
.word 0x309ce974, 0x4f801a61, 0xb3bc5648, 0xbedfda43, 0x0ea28da1, 0x3bd83a23, 0xbcfa4473, 0xd7cd4f01
.word 0x9b159476, 0x25672fb2, 0xb0648d5e, 0xbe8e3957, 0x34ac4cf7, 0xa88a7a5a, 0x43af4b5a, 0xa655d27e
.word 0x7b5629bf, 0x73cabe6d, 0x2233e9a1, 0xe70eb91b, 0xa8de072b, 0x54fbfae3, 0x48838be3, 0x045d4fd9
.word 0xd56ccce7, 0x591e007c, 0x2de18961, 0x5ef40b20, 0x7fdc0e2c, 0x73566dd7, 0x32634e13, 0x24e40de8
.word 0xc00b8304, 0x7a24d4fd, 0x46a81c2f, 0xb2e7f6fc, 0xf5aaad21, 0xae52da1b, 0x6577b441, 0x449865d1
.word 0xf7e0e0b4, 0x4dc8eab1, 0xd686461a, 0x235e2dbf, 0xa5472b6e, 0x99c358bc, 0xcca13dbc, 0x90c789ff
.word 0xae6ebb9d, 0x5d5a4376, 0xe80e8ca0, 0x63a1d405, 0xe43a072d, 0x2a50d047, 0x868e81a3, 0xa8016028
.word 0x8d80574c, 0x1812bdf0, 0x74940b32, 0x86b69419, 0x29147c50, 0x588440df, 0x857bb65e, 0xc6cb8b76
.word 0x95b4c06e, 0xdce81b0c, 0x544611de, 0xba0b6492, 0xa6cf9283, 0x3810aadb, 0x65672b54, 0xa719e29b
.word 0xaf64bb2f, 0x89a608ef, 0x707bcd86, 0xa36896fb, 0x5a8433f5, 0x4d33ca5d, 0xa9d2a1ac, 0x4a4f2dc7
.word 0x7f267e2f, 0x5a6c20bf, 0xc3ab8dfc, 0x94629b76, 0x5e754620, 0xa22d85c3, 0xc033c74a, 0x6f88d22a
.word 0xb33ed21a, 0x7b989eee, 0xb1ef99d3, 0x90e2a87f, 0x0f8e4a14, 0x498bbcf5, 0x3ec74852, 0x15b34877
.word 0x22de798c, 0xa21d72a3, 0xeb6f373c, 0xa2a0359e, 0x97415e77, 0x75b696a7, 0xea8a43d6, 0x2597d48a
.word 0xb2e19ce8, 0xfe84c2a5, 0xdf5c977c, 0xda5cef57, 0xfcea6294, 0xa3d6aae1, 0x26572078, 0xc118eca9
.word 0xc8a22b21, 0x5a1887b0, 0xe07e2054, 0x002df11c, 0xb52f8a85, 0x27918f1e, 0xa051a236, 0xab30faee
.word 0xccfee71d, 0xddcec5bd, 0x792b61c9, 0x6e096330, 0x3e94c09a, 0x1fc9c75e, 0x09ee58ec, 0xd91e385c
.word 0xe80a2696, 0xc36b90e5, 0xa3252ab4, 0x5f053350, 0xf860e5c1, 0xc53afb10, 0x9f6c193b, 0x4a55a36a
.word 0xf86f3522, 0x820f3c22, 0xa7e0225c, 0x84e2b970, 0xc3cb6cc5, 0xcdb77462, 0xcb3b5e6d, 0x980a070c
.word 0x6ccd9b2f, 0xdce02501, 0x73b29fb8, 0x529a5c4d, 0x183a4efa, 0x88105927, 0xd409581a, 0x1f432ab4
.word 0xee925a68, 0x5653f728, 0xde22fc9d, 0xc1df61b3, 0x75a2a057, 0x421dea65, 0x8f7ba561, 0xc7ad4f8f
.word 0x1cde0b86, 0x9e4c4b61, 0x97fa6cf8, 0x294c0740, 0x6cbbfb6e, 0x0f0ce97f, 0x077b9f99, 0xe2d408f8
.word 0x917a39da, 0xbdfc84eb, 0x83d63fb1, 0x150f9623, 0x2fdf1a16, 0x94679344, 0xaa19ec39, 0xc88a0ffb
.word 0xc2cfe7ca, 0xeb58a71a, 0x6e09e602, 0x3ad62371, 0x61294978, 0xc0be42d1, 0x4c016d1e, 0x10d056b2
.word 0x962cb858, 0x3e3bc018, 0xb6f4b696, 0xc271e6ee, 0x57b62c40, 0xbe0ef96a, 0x28899a62, 0x07b440b3
.word 0x21f29e85, 0xc350c135, 0x6b3cbf30, 0x04f0c599, 0x80d8c8dd, 0xbece71c1, 0x2608431a, 0xf51901dd
.word 0x6d6e9ad1, 0xa3e6a819, 0x54d73c72, 0xdcb987d6, 0x81f3f71c, 0xff2d1d38, 0x95df2b10, 0x4b598ae7
.word 0x7a5b4ee3, 0xab4bfd0a, 0xbefda0a9, 0xdb78ad38, 0x144fa490, 0x3147b1e7, 0x05359ec6, 0x9dca6930
.word 0x680e0968, 0xbb9d73df, 0x7e529495, 0x701ba51b, 0x5cb8ad3e, 0x7da58c3e, 0xc13b0a23, 0x87d0aba3
.word 0xc4c77e23, 0xf4dcb0a8, 0xd64733ec, 0x11744731, 0xdd429912, 0xf91f9b90, 0x11a19c63, 0xac158553
.word 0x982ca614, 0xad842a30, 0x92b1979a, 0x6685f03d, 0xc05b2db7, 0xd8468885, 0x162b5d2a, 0x01840985
.word 0x3822c352, 0x17450657, 0xf9ab947e, 0xda23ff4d, 0x9fa783db, 0x975e8067, 0xcc9f0a46, 0x074697ee
.word 0x098e04b6, 0x5c1318c9, 0x7ca5620a, 0x0d30faa6, 0x6b94b817, 0x080d119a, 0x8c5805bf, 0xbf94f79c
.word 0xf287aed5, 0xc4b515d4, 0xe4ef8cb2, 0x56d21f74, 0xb12e23f6, 0x7ae3f82d, 0x87a73bac, 0x52fcbd25
.word 0x150e911e, 0xa636e1bc, 0xc3651507, 0xe07536f6, 0x3999e84c, 0xde9a1fbf, 0x98feb4aa, 0x58923cf3
.word 0xbf234550, 0xccafa9f0, 0x48af01a2, 0x4a6dd706, 0x2b8a00de, 0xc38ecc6f, 0xbb877f49, 0x6b535370
.word 0xfa7e6633, 0xaed73328, 0x95957419, 0xc27c27e1, 0xd78e8ed8, 0x69e245bd, 0xa8840477, 0x52cedbc5
.word 0x13d9d1e0, 0x0e304e4a, 0x7d6c6904, 0xddd8d24b, 0x4b5a3ebe, 0x533d33ed, 0xb5624b51, 0xe8e00478
.word 0x91e35657, 0xbb6f09a4, 0x9e3aeadf, 0x40254d9c, 0x686d5654, 0xd06e4797, 0xa7b9b055, 0xb220e053
.word 0x3fefc6c5, 0x34fcf2cb, 0x6859c9a9, 0x7fe4ced5, 0xa975e38b, 0x22b48b23, 0x8f10707d, 0x8293a45c
.word 0x1ce5b618, 0xdeb4130d, 0xc6ead552, 0xd16639d2, 0x4c4d83b0, 0x4719c41b, 0x78ffcc31, 0x6d5711df
.word 0xe5b33394, 0xaa235ec7, 0xba909080, 0x717e4891, 0x3dee0b99, 0x51a9fccb, 0x0fab77e0, 0xa9ed9a83
.word 0x28f8fa87, 0xf6a24e2e, 0x083813b1, 0x9f07cff3, 0x703c4961, 0xcbb3bcf5, 0xe5e8ee76, 0x7d24dbca
.word 0x0a62572d, 0x409a0ff8, 0x156b9e8d, 0x1f7a12ed, 0x9c8086fb, 0xa7027618, 0x5ff1a595, 0xede63e82
.word 0xcd5d8050, 0x009582fa, 0xea785fe7, 0x5f5724f3, 0x961af3e2, 0xdae61611, 0xfa32ebce, 0xeb301dd2
.word 0x91c8a293, 0xac3abb7b, 0x09b78cdd, 0xd7a8473b, 0xf682ebde, 0x878a26c0, 0xaf35e7bf, 0x7fba1448
.word 0x15f46f7e, 0x900fa76b, 0x552bec0e, 0xeddc01e2, 0xfca00af4, 0xf795bd77, 0x60332a21, 0x5df6cf1e
.word 0xbf5730b9, 0x85cee4f9, 0x8371f698, 0x4cf31604, 0xa10aa42b, 0xc05f81d6, 0xc149c821, 0x1ce79d1c
.word 0xc47997e0, 0x5b617a6a, 0x52c3d890, 0xf6a88fcd, 0xc9d319ea, 0xa2c1c69f, 0xbb8080d3, 0x2b235b73
.word 0x9c45bfd6, 0x2a7a08ee, 0x0b1711b9, 0x68f5f1b5
.section .region_1,"aw",@progbits;
region_1:
.word 0xcbc6d588, 0xc9cabdd2, 0xf77ffb7e, 0xe2f35f30, 0x247c2d3f, 0x84da6544, 0xaf9e604c, 0x10ddf5b9
.word 0x4a13face, 0x18027296, 0x18c83f88, 0x59bb2d77, 0xda344c5b, 0xcda013d5, 0x02bf1a8e, 0xc470899e
.word 0x8465b8db, 0x1f4f4d59, 0x63267e9a, 0x37d05cb3, 0x9a0c3383, 0xb03dc56f, 0x9dda68bd, 0x5c38af71
.word 0x143ab915, 0x62424456, 0x210470d5, 0x39fcda87, 0x40d59a8e, 0x5c9061d8, 0xdd59de39, 0x9bc26215
.word 0x1a79449d, 0xef8babd8, 0x9e00a5f8, 0x55f46d58, 0x6dc83f45, 0x8f79e26b, 0x414d9714, 0xd1c2f456
.word 0xa43540ce, 0x24c3cf17, 0xf28daef1, 0xce508e78, 0x2060f1a5, 0x0f6b024f, 0x31214173, 0x91c5b55d
.word 0xc6808145, 0xeca48989, 0xdee09293, 0xea7535d6, 0x81a6b658, 0xf90c2e44, 0x85648e7e, 0x3fda66b8
.word 0x6fcfbdb9, 0xb95104db, 0x7d7349c7, 0x99824ec6, 0x19badd34, 0xcbc34374, 0xd6b01c2f, 0xb6e76608
.word 0xf6addfc7, 0x89287327, 0xf603be67, 0xaf602618, 0x1605785a, 0x5b5c8673, 0x2cf78c10, 0xc4573080
.word 0xabfd280f, 0xeece8c7c, 0x161f7e34, 0xbefc095d, 0xec3aab56, 0x9e29b0df, 0x8b6dd0ae, 0xf900c887
.word 0x208e8865, 0x23bf3b7d, 0x76970772, 0x6d37b463, 0xc757baac, 0xae12824c, 0xa3a49235, 0x9c2fb637
.word 0x53bd8b68, 0xd93d991c, 0x7e6c7491, 0x81cfdb0a, 0xd5f50834, 0x653d67b8, 0x6a1e8dd2, 0xfc9a75db
.word 0x81a89343, 0x0e886dff, 0xa469d777, 0x219ca219, 0xdca2be16, 0xf174f18d, 0x5056537d, 0x54005171
.word 0xee1ec9dc, 0xd0de5883, 0x59f3f23d, 0x1d944ef6, 0x63231539, 0x9349dc84, 0xe729725f, 0x3cb2b575
.word 0xd39e433a, 0xa502c62b, 0x40e62d08, 0x072e881c, 0x71944b19, 0x733a441e, 0xd983e7ef, 0x80fb40cf
.word 0xe6d66f30, 0x65fa3522, 0xc9232770, 0xf9e28c39, 0x95ce44c0, 0xb1faaa08, 0x9350f789, 0xb6e59cb5
.word 0x5bfc6186, 0x5c3ec0ee, 0xd1a93b24, 0x934a49fe, 0xb18a5efb, 0xb29b3452, 0x7d1eca9c, 0x8669b0b9
.word 0xaca2c33c, 0x65bd2839, 0xe28cecad, 0xf20f497f, 0x8962a9eb, 0x658b1474, 0x82d450f5, 0x431467b7
.word 0xa9a628e8, 0x7bcf6132, 0x3f84311f, 0xce7976e7, 0x18d24ac5, 0x13924f2e, 0xa2a942f6, 0x684a5080
.word 0x9bdf3e3b, 0xafaa494c, 0x7e6a1962, 0xace69c2a, 0x143780db, 0xe569d93b, 0x4551ae0a, 0xd0d6a764
.word 0x00092bae, 0x1514b20a, 0x7e3bc5af, 0xcad7d9a2, 0xa1e0ef6e, 0xb00b7a97, 0x1cc7c558, 0x34439799
.word 0x3cf6e134, 0x0f1a586e, 0xeb7c3289, 0x35c2d67a, 0x7374ae17, 0xf95facd1, 0x1825cb71, 0x5eab0a19
.word 0xd35e5b39, 0x7d03b9dc, 0xa1f6daa9, 0x69b2e346, 0xef565529, 0x04ee7c5e, 0xc043585e, 0x5a9ada84
.word 0x40cf7dcc, 0x95424b1a, 0x3d40b7f9, 0x189e137d, 0x0936a958, 0xedccc004, 0xd649d201, 0x2299180e
.word 0x51891523, 0x7694f4ec, 0x4bf9d147, 0x684d5323, 0x932900ee, 0xfa46fc6b, 0x70c43f71, 0x07f64621
.word 0x02fca091, 0x492af36f, 0x5c94b261, 0xdc6d15d4, 0x9373db6c, 0x5b1315f1, 0xdc2bfe7d, 0x8733b22e
.word 0x0a6f50a9, 0xf0b39589, 0xb59d5f06, 0x6abff124, 0x65b079e6, 0xabb6112f, 0x24a32697, 0xa69869a7
.word 0x160cace6, 0x9d71db67, 0x0dd24fd5, 0x5345a62b, 0x1900db9b, 0x8de84e98, 0x95835c02, 0xe87a00c5
.word 0xcbdc5429, 0xdb5af78c, 0x5e06bf93, 0xc36b2fe8, 0x631f8a8d, 0x446ad234, 0xefb5470d, 0x007b0ba1
.word 0x5abbb529, 0xf8568675, 0x986caed7, 0x81e3cba8, 0x38bbb32e, 0x0ef3c85f, 0xa076b729, 0x697faf9a
.word 0xb23ab6c3, 0x45d4098b, 0xa76ace8b, 0x775e3048, 0x650d2758, 0x87bcf1ac, 0x1de902be, 0xc28d7492
.word 0xb9e1483e, 0x29942b5f, 0x8ec36aad, 0x5ed4df57, 0x6639313d, 0xb78dc77a, 0xdca6779c, 0xd6311546
.word 0x0f051f02, 0x90582eb5, 0x9285b732, 0x0a8da0e4, 0x2d1f4efb, 0x1b652d6f, 0xc097a8c8, 0x9fd494d3
.word 0x056d3b45, 0x28fe8371, 0x16d86706, 0xb26623de, 0xb0ee81f5, 0x82f5f4e7, 0xa2a08d7b, 0x1fc27014
.word 0x5a6b1265, 0x47bcf920, 0x68a9f76d, 0x177d3e02, 0xf522759a, 0x3760d1a7, 0x22219003, 0xcc086b00
.word 0x5787c28e, 0x7b3ef34c, 0x367a5223, 0xbef37064, 0xf40cc3a2, 0x884c89ea, 0xa61b4a5e, 0x833459e5
.word 0xba9cad6b, 0xf7944337, 0xf51bd270, 0xafbb5e96, 0xea6d72f2, 0x5536f726, 0x03facc34, 0x0a26018d
.word 0xa073296b, 0xd06b8c2a, 0xe61d43d7, 0x60994609, 0xf3c05cc4, 0x353b554a, 0x7971b3c5, 0x1eb7d453
.word 0xc802916a, 0x5fca8346, 0x99a507c2, 0xc1e57ec3, 0x14a417a3, 0xfdb30826, 0x23f0dc14, 0xd02987f1
.word 0xfd7ec32d, 0xeb1d79c2, 0x192dd09c, 0x66ff5bc2, 0x2320eb7e, 0x45040db5, 0x6da4574a, 0xa6558907
.word 0xfc03e679, 0x5c3a6833, 0x3fe3a848, 0x2ae4cbb9, 0x654ddca8, 0x15f7c885, 0xd40e8e21, 0x395df6ed
.word 0x4ce34285, 0xb2dc40c2, 0x1706c12e, 0xe92688ba, 0x253e53a5, 0x84e21061, 0xc5fc223d, 0x16f98819
.word 0x24d0be53, 0x6859b316, 0xb544a992, 0x3a0279a1, 0xd484e850, 0x83a1107c, 0xfb7a3330, 0xbcfeede0
.word 0x9d993ac2, 0x3d82e228, 0xff2ef04a, 0x12cb6e3c, 0x000874a6, 0x28c90d25, 0x9bccc07a, 0x7fe1a6e0
.word 0xa337cefa, 0xa9c0870b, 0xc16d133b, 0x20f288b1, 0x928805aa, 0x5ee17ab2, 0xdc35bd1c, 0xecaf4d1b
.word 0x8036380f, 0xcf68bf2c, 0x4ed703d4, 0x1ed41895, 0xd48ae564, 0x6150f33e, 0xb66593ca, 0xb9acf7e2
.word 0x3912f5bc, 0x1491872b, 0xa3763b6d, 0x41fe52fe, 0x81207e8a, 0x506f89e1, 0xd63bb912, 0x3421352a
.word 0x05a3276b, 0xc84a69f1, 0x7e009f51, 0xf6f49e64, 0xfc838b84, 0x16313ab1, 0x1307bf12, 0x1341c987
.word 0x8ef1b382, 0x67ea547e, 0x6f1c53db, 0xb7c4a338, 0xab95cfea, 0x6a56377d, 0xab2baa75, 0x0a77c3c0
.word 0xdf40f7f4, 0x3385964a, 0xd4c97ba9, 0x2f59f43f, 0x779120ed, 0xa81e6586, 0x276734fa, 0x05c19a21
.word 0xe50e72ab, 0x3d1c11da, 0x150296e0, 0xa0849129, 0xf658447b, 0xd9827879, 0x73b96c75, 0x07d146a7
.word 0xa8ad5869, 0xd5f4a08a, 0xda6cbf19, 0x58e4b9d7, 0x14acd711, 0x5a45cc6a, 0x3e38eeaa, 0xc101cf7c
.word 0x7a6ce4a2, 0x20ce8974, 0x88f34da1, 0x7d003c5c, 0xc5b7cb9f, 0x2cbacb9c, 0x67f2d751, 0x9a573e82
.word 0xba3f781d, 0x37c3ff56, 0x8d2f5456, 0x11e4d7f0, 0x99a06792, 0x850bbcbc, 0x0ede8341, 0x47653287
.word 0x9d9f0b24, 0x5618d0e7, 0x9b2d4ed1, 0xc650ed24, 0xb87c5050, 0xce07047e, 0xbb2856dd, 0x0581e991
.word 0x2daad6bc, 0x533382db, 0x34d5f639, 0x43ba6124, 0x8ddc8db9, 0xd50bda15, 0x706b81bb, 0xe6e56630
.word 0xdd0ce08c, 0x526e8658, 0xd79fb572, 0x2156aa5c, 0xde830c05, 0x2e1fde09, 0x44a372d6, 0x22580b11
.word 0xc645b389, 0x9fa7b449, 0xe8315638, 0x7aa58e55, 0xacbdf6c5, 0xd0b777a3, 0x80b75fef, 0xfcfbc1b7
.word 0xd9f1c1bb, 0x4fda1161, 0x84081891, 0x56533f57, 0x7a1f7044, 0x9b6084ca, 0x648404ef, 0x686b65cf
.word 0x66c15d8a, 0xb30f648d, 0x99cad2d7, 0x88e40666, 0xaa6312ce, 0xcc3d8fe8, 0xde6803ea, 0xe76c74eb
.word 0x843d8ad7, 0x24c1e44e, 0xe25fb5a3, 0x0a2c29f2, 0xaf94c9eb, 0xf3e08ccb, 0xf7f6546b, 0x6dffc2e1
.word 0xb9bea76b, 0x04c04ac4, 0xddadfeab, 0x63709b1e, 0x4214a4bc, 0x5fb976f9, 0xe97a6fac, 0x009bc1f0
.word 0xee9ee1a2, 0x63216798, 0x80abec13, 0x80a71abe
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x19, x23, zero
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x11, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x11, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x11, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x11, x27, ecall_handler
                  li x27, 0x1
                  beq x11, x27, instr_fault_handler
                  li x27, 0x5
                  beq x11, x27, load_fault_handler
                  li x27, 0x7
                  beq x11, x27, store_fault_handler
                  li x27, 0xc
                  beq x11, x27, pt_fault_handler
                  li x27, 0xd
                  beq x11, x27, pt_fault_handler
                  li x27, 0xf
                  beq x11, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x23, x19, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
