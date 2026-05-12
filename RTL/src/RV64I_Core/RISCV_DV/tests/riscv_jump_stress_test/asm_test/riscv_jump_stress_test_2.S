.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0xf98c1563
                  li x3, 0xfffe444f
                  li x4, 0xb4a7bc91
                  li x5, 0x8
                  li x6, 0x80000000
                  li x8, 0xc42a7a8a
                  li x9, 0xfca68cf3
                  li x10, 0x0
                  li x12, 0xf1e9912c
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xd9b0d2b
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x600a7ea1
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf47cee1d
                  li x24, 0x0
                  li x25, 0xf55d4ca5
                  li x26, 0x3
                  li x27, 0x73b40ee8
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xb
                  li x31, 0xb
                  la x11, user_stack_end
main:             jal          t1, 0f
0:                jal          ra, 17f
1:                jal          s3, 10f
2:                jal          t1, 12f
3:                jal          ra, 15f
4:                jal          s9, 8f
5:                jal          ra, 4b
6:                jal          s11, 24f
7:                jal          t1, 21f
8:                jal          ra, 9f
9:                jal          ra, 20f
10:               jal          ra, 6b
11:               jal          t1, 22f
12:               jal          ra, 19f
13:               jal          ra, 3b
14:               jal          t1, 5b
15:               jal          t3, 1b
16:               jal          ra, 18f
17:               jal          ra, 14b
18:               jal          a2, 11b
19:               jal          s4, 13b
20:               jal          t1, 16b
21:               jal          ra, 2b
22:               jal          t1, 23f
23:               jal          ra, 7b
24:               sll          s1, gp, t5
main_33:          jal          t1, 7f
0:                jal          tp, 5f
1:                jal          t1, 13f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          t1, 12f
9:                jal          ra, 1b
10:               jal          s7, 14f
11:               jal          ra, 2b
12:               jal          t1, 15f
13:               jal          ra, 8b
14:               jal          t1, 16f
15:               jal          t1, 11b
16:               and          s7, t2, s0
main_35:          jal          t1, 12f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 20f
4:                jal          a5, 2b
5:                jal          t1, 14f
6:                jal          t1, 1b
7:                jal          ra, 11f
8:                jal          ra, 15f
9:                jal          t1, 16f
10:               jal          ra, 21f
11:               jal          a5, 4b
12:               jal          ra, 0b
13:               jal          a2, 10b
14:               jal          ra, 17f
15:               jal          ra, 5b
16:               jal          s1, 8b
17:               jal          s9, 18f
18:               jal          t1, 6b
19:               jal          t1, 13b
20:               jal          ra, 19b
21:               slli         s4, s4, 24
main_22:          jal          t1, 2f
0:                jal          t1, 4f
1:                jal          s11, 24f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          ra, 17f
5:                jal          ra, 6f
6:                jal          t1, 12f
7:                jal          ra, 20f
8:                jal          ra, 16f
9:                jal          t1, 10f
10:               jal          t1, 15f
11:               jal          t1, 25f
12:               jal          ra, 21f
13:               jal          ra, 22f
14:               jal          ra, 7b
15:               jal          t1, 23f
16:               jal          sp, 9b
17:               jal          t3, 11b
18:               jal          t0, 14b
19:               jal          t1, 26f
20:               jal          ra, 27f
21:               jal          ra, 1b
22:               jal          t1, 18b
23:               jal          ra, 5b
24:               jal          gp, 13b
25:               jal          ra, 19b
26:               jal          ra, 8b
27:               or           s5, s1, gp
main_3:           jal          t1, 3f
0:                jal          ra, 4f
1:                jal          ra, 12f
2:                jal          a5, 8f
3:                jal          t1, 5f
4:                jal          t4, 9f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          a2, 13f
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          s8, 11f
11:               jal          sp, 2b
12:               jal          ra, 7b
13:               jal          ra, 10b
14:               slti         s1, tp, -1470
main_31:          jal          t1, 5f
0:                jal          t1, 9f
1:                jal          ra, 21f
2:                jal          t1, 17f
3:                jal          ra, 2b
4:                jal          t1, 25f
5:                jal          t0, 3b
6:                jal          ra, 23f
7:                jal          a7, 6b
8:                jal          s9, 0b
9:                jal          ra, 13f
10:               jal          a0, 4b
11:               jal          t1, 20f
12:               jal          ra, 14f
13:               jal          ra, 15f
14:               jal          t1, 19f
15:               jal          ra, 22f
16:               jal          s10, 12b
17:               jal          t3, 8b
18:               jal          ra, 11b
19:               jal          t1, 24f
20:               jal          t1, 1b
21:               jal          t1, 16b
22:               jal          ra, 18b
23:               jal          t6, 10b
24:               jal          ra, 7b
25:               or           s7, t3, a3
main_1:           jal          t1, 0f
0:                jal          ra, 2f
1:                jal          ra, 5f
2:                jal          t1, 4f
3:                jal          sp, 10f
4:                jal          ra, 9f
5:                jal          t1, 7f
6:                jal          t1, 1b
7:                jal          t1, 3b
8:                jal          ra, 6b
9:                jal          ra, 8b
10:               add          s0, s7, s7
main_11:          jal          t1, 13f
0:                jal          t1, 27f
1:                jal          ra, 21f
2:                jal          t4, 9f
3:                jal          ra, 15f
4:                jal          ra, 1b
5:                jal          gp, 3b
6:                jal          ra, 17f
7:                jal          ra, 16f
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          a0, 29f
11:               jal          s5, 4b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          s2, 8b
15:               jal          sp, 22f
16:               jal          ra, 20f
17:               jal          ra, 7b
18:               jal          ra, 19f
19:               jal          ra, 0b
20:               jal          tp, 23f
21:               jal          ra, 25f
22:               jal          ra, 11b
23:               jal          ra, 26f
24:               jal          t5, 28f
25:               jal          ra, 12b
26:               jal          t1, 10b
27:               jal          ra, 24b
28:               jal          ra, 6b
29:               sltiu        s1, s7, -1005
main_37:          jal          t1, 6f
0:                jal          ra, 3f
1:                jal          ra, 14f
2:                jal          t1, 8f
3:                jal          ra, 11f
4:                jal          t1, 13f
5:                jal          ra, 10f
6:                jal          ra, 17f
7:                jal          s6, 12f
8:                jal          gp, 7b
9:                jal          t0, 5b
10:               jal          t0, 0b
11:               jal          t1, 1b
12:               jal          a4, 19f
13:               jal          ra, 2b
14:               jal          gp, 16f
15:               jal          t1, 18f
16:               jal          ra, 4b
17:               jal          ra, 15b
18:               jal          t1, 9b
19:               sub          a3, a6, t3
main_23:          jal          t1, 16f
0:                jal          s7, 14f
1:                jal          a4, 18f
2:                jal          gp, 0b
3:                jal          a0, 4f
4:                jal          t1, 9f
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          ra, 7b
9:                jal          t1, 13f
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          ra, 10b
13:               jal          ra, 11b
14:               jal          ra, 15f
15:               jal          gp, 1b
16:               jal          t5, 12b
17:               jal          sp, 6b
18:               xor          s0, a1, ra
main_28:          jal          t1, 6f
0:                jal          t1, 12f
1:                jal          ra, 17f
2:                jal          a0, 11f
3:                jal          t1, 15f
4:                jal          s6, 14f
5:                jal          ra, 2b
6:                jal          s0, 10f
7:                jal          ra, 13f
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          ra, 16f
11:               jal          ra, 9b
12:               jal          ra, 8b
13:               jal          t1, 0b
14:               jal          t3, 1b
15:               jal          t3, 7b
16:               jal          t1, 5b
17:               nop
main_19:          jal          t1, 3f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          s7, 10f
3:                jal          ra, 12f
4:                jal          t1, 0b
5:                jal          ra, 1b
6:                jal          s9, 7f
7:                jal          t1, 8f
8:                jal          ra, 2b
9:                jal          s4, 13f
10:               jal          ra, 9b
11:               jal          s10, 4b
12:               jal          ra, 5b
13:               sra          a7, s0, s10
main_21:          jal          t1, 5f
0:                jal          a3, 1f
1:                jal          ra, 12f
2:                jal          ra, 6f
3:                jal          t1, 11f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          ra, 10f
7:                jal          t0, 2b
8:                jal          ra, 9f
9:                jal          ra, 15f
10:               jal          t1, 17f
11:               jal          ra, 7b
12:               jal          tp, 8b
13:               jal          t1, 16f
14:               jal          t1, 4b
15:               jal          ra, 14b
16:               jal          ra, 0b
17:               sra          a7, sp, sp
main_7:           jal          t1, 0f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          gp, 14f
3:                jal          tp, 10f
4:                jal          ra, 15f
5:                jal          ra, 11f
6:                jal          t1, 5b
7:                jal          gp, 17f
8:                jal          t1, 16f
9:                jal          ra, 7b
10:               jal          t1, 2b
11:               jal          ra, 3b
12:               jal          t1, 8b
13:               jal          t4, 12b
14:               jal          ra, 9b
15:               jal          t1, 1b
16:               jal          t5, 6b
17:               sub          s3, t4, t4
main_14:          jal          t1, 12f
0:                jal          s1, 25f
1:                jal          t1, 8f
2:                jal          ra, 20f
3:                jal          ra, 4f
4:                jal          tp, 17f
5:                jal          sp, 23f
6:                jal          ra, 21f
7:                jal          s4, 14f
8:                jal          t1, 5b
9:                jal          ra, 27f
10:               jal          s1, 13f
11:               jal          ra, 24f
12:               jal          ra, 18f
13:               jal          ra, 19f
14:               jal          t1, 22f
15:               jal          s8, 16f
16:               jal          s1, 28f
17:               jal          sp, 10b
18:               jal          ra, 7b
19:               jal          gp, 11b
20:               jal          t5, 15b
21:               jal          s11, 1b
22:               jal          t1, 0b
23:               jal          s6, 2b
24:               jal          s3, 29f
25:               jal          ra, 26f
26:               jal          gp, 9b
27:               jal          tp, 6b
28:               jal          t1, 3b
29:               srli         t4, ra, 23
main_12:          jal          t1, 6f
0:                jal          tp, 18f
1:                jal          ra, 11f
2:                jal          ra, 24f
3:                jal          ra, 23f
4:                jal          ra, 14f
5:                jal          t0, 7f
6:                jal          t1, 8f
7:                jal          t1, 4b
8:                jal          a4, 13f
9:                jal          t1, 17f
10:               jal          a4, 20f
11:               jal          ra, 12f
12:               jal          ra, 21f
13:               jal          t1, 10b
14:               jal          sp, 25f
15:               jal          ra, 16f
16:               jal          ra, 5b
17:               jal          ra, 26f
18:               jal          ra, 19f
19:               jal          t1, 28f
20:               jal          t1, 22f
21:               jal          ra, 3b
22:               jal          a5, 27f
23:               jal          ra, 0b
24:               jal          s1, 15b
25:               jal          ra, 9b
26:               jal          s2, 29f
27:               jal          ra, 1b
28:               jal          t5, 2b
29:               slli         tp, a0, 5
main_29:          jal          t1, 10f
0:                jal          ra, 1f
1:                jal          t1, 2f
2:                jal          t1, 3f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          s7, 13f
8:                jal          ra, 16f
9:                jal          ra, 0b
10:               jal          t1, 5b
11:               jal          gp, 15f
12:               jal          ra, 14f
13:               jal          ra, 8b
14:               jal          ra, 7b
15:               jal          ra, 12b
16:               or           sp, zero, a2
main_25:          jal          t1, 20f
0:                jal          t5, 4f
1:                jal          ra, 26f
2:                jal          t1, 21f
3:                jal          ra, 13f
4:                jal          ra, 27f
5:                jal          ra, 23f
6:                jal          t0, 7f
7:                jal          ra, 22f
8:                jal          ra, 5b
9:                jal          t1, 2b
10:               jal          ra, 12f
11:               jal          s1, 3b
12:               jal          ra, 8b
13:               jal          t1, 6b
14:               jal          ra, 16f
15:               jal          t1, 19f
16:               jal          ra, 11b
17:               jal          t1, 28f
18:               jal          t1, 17b
19:               jal          ra, 18b
20:               jal          s1, 25f
21:               jal          ra, 24f
22:               jal          s5, 1b
23:               jal          tp, 15b
24:               jal          t5, 0b
25:               jal          ra, 9b
26:               jal          t1, 10b
27:               jal          t1, 14b
28:               sltu         a3, t3, s7
main_9:           jal          t1, 18f
0:                jal          t1, 12f
1:                jal          a7, 9f
2:                jal          s3, 4f
3:                jal          ra, 14f
4:                jal          a0, 0b
5:                jal          ra, 11f
6:                jal          tp, 17f
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          ra, 19f
10:               jal          s5, 13f
11:               jal          s7, 3b
12:               jal          ra, 10b
13:               jal          t1, 6b
14:               jal          t1, 2b
15:               jal          t1, 7b
16:               jal          ra, 1b
17:               jal          a0, 16b
18:               jal          ra, 15b
19:               srai         s11, gp, 1
main_20:          jal          t1, 21f
0:                jal          ra, 22f
1:                jal          t1, 14f
2:                jal          ra, 7f
3:                jal          a2, 10f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          t0, 3b
7:                jal          gp, 23f
8:                jal          t1, 25f
9:                jal          gp, 18f
10:               jal          ra, 19f
11:               jal          ra, 16f
12:               jal          a5, 5b
13:               jal          t1, 0b
14:               jal          ra, 17f
15:               jal          tp, 4b
16:               jal          s3, 1b
17:               jal          ra, 13b
18:               jal          ra, 20f
19:               jal          ra, 15b
20:               jal          ra, 2b
21:               jal          ra, 12b
22:               jal          a3, 24f
23:               jal          s7, 11b
24:               jal          ra, 8b
25:               xori         s3, s1, -584
main_30:          jal          t1, 0f
0:                jal          a0, 16f
1:                jal          ra, 5f
2:                jal          t1, 14f
3:                jal          s3, 13f
4:                jal          ra, 3b
5:                jal          a0, 7f
6:                jal          ra, 10f
7:                jal          t3, 8f
8:                jal          ra, 12f
9:                jal          tp, 18f
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          tp, 15f
13:               jal          t1, 21f
14:               jal          ra, 19f
15:               jal          s3, 24f
16:               jal          t1, 2b
17:               jal          a2, 22f
18:               jal          t1, 1b
19:               jal          ra, 20f
20:               jal          ra, 23f
21:               jal          t1, 9b
22:               jal          t1, 11b
23:               jal          s11, 17b
24:               nop
main_27:          jal          t1, 11f
0:                jal          s2, 3f
1:                jal          t1, 10f
2:                jal          t1, 6f
3:                jal          ra, 12f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          tp, 4b
8:                jal          ra, 9f
9:                jal          tp, 1b
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               srai         a0, ra, 21
main_18:          jal          t1, 4f
0:                jal          t1, 6f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          t1, 0b
4:                jal          sp, 8f
5:                jal          t1, 2b
6:                jal          ra, 10f
7:                jal          ra, 1b
8:                jal          t0, 7b
9:                jal          t1, 3b
10:               sub          s10, s5, a7
main_5:           jal          t1, 3f
0:                jal          ra, 9f
1:                jal          s0, 5f
2:                jal          ra, 10f
3:                jal          s10, 7f
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          gp, 4b
10:               jal          a5, 1b
11:               jal          t1, 13f
12:               jal          t1, 11b
13:               xor          s7, sp, t6
main_24:          jal          t1, 14f
0:                jal          t1, 18f
1:                jal          s7, 3f
2:                jal          t1, 13f
3:                jal          s9, 2b
4:                jal          t5, 0b
5:                jal          t1, 9f
6:                jal          ra, 21f
7:                jal          ra, 4b
8:                jal          t1, 11f
9:                jal          ra, 24f
10:               jal          t1, 8b
11:               jal          ra, 16f
12:               jal          t1, 5b
13:               jal          ra, 15f
14:               jal          ra, 25f
15:               jal          t0, 19f
16:               jal          s1, 6b
17:               jal          t4, 26f
18:               jal          t1, 22f
19:               jal          ra, 12b
20:               jal          t1, 1b
21:               jal          ra, 20b
22:               jal          sp, 10b
23:               jal          t1, 7b
24:               jal          ra, 17b
25:               jal          t1, 23b
26:               xor          t0, a3, t5
                  add          s2, ra, t4
                  sltiu        a3, a4, 1154
                  and          gp, a4, s7
                  sra          a4, a1, a6
                  or           s3, t6, s3
                  srai         t6, ra, 11
                  xor          t0, s7, a0
                  slli         s7, t0, 27
                  srli         t0, s2, 0
                  srai         t0, t5, 19
                  xori         a2, zero, 804
                  sltu         a0, ra, t1
                  or           s8, gp, a3
                  bge          t5, sp, 20f
                  bne          t3, a7, 27f
                  ori          a2, s9, -362
                  srl          s11, gp, t1
                  slt          s11, a7, s10
                  beq          a4, sp, 22f
                  ori          s4, a2, 681
20:               and          ra, s8, s3
                  xori         s1, t3, 1779
22:               or           s8, s9, s8
                  sll          t5, a3, a6
                  bltu         a5, s5, 44f
                  bltu         a3, t4, 33f
                  or           s10, s4, s6
27:               blt          a2, t2, 42f
                  add          s11, t1, a1
                  or           s4, sp, a7
                  nop
                  beq          s2, sp, 48f
                  xori         a7, a6, 1982
33:               srai         s9, zero, 10
                  srli         a5, zero, 18
                  sub          t3, tp, tp
                  bge          t4, s3, 42f
                  bge          ra, s1, 42f
                  slli         a0, a6, 31
                  sll          a4, a5, t5
                  xor          s6, a0, s10
                  sll          s9, a0, a0
42:               nop
                  xori         a4, s1, -770
44:               andi         s10, s0, 1609
                  addi         s11, t3, -1788
main_36:          jal          t1, 3f
0:                jal          t1, 2f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          ra, 7f
6:                jal          s2, 4b
7:                jal          ra, 16f
8:                jal          ra, 10f
9:                jal          ra, 14f
10:               jal          s6, 12f
11:               jal          t1, 0b
12:               jal          s0, 1b
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          ra, 6b
16:               srl          a0, a3, a4
                  bne          t6, s2, 62f
                  sltiu        t4, a6, 1754
48:               ori          t1, a3, 1136
                  and          a3, t2, a1
                  srai         a7, a6, 25
                  xor          s0, t0, a0
                  srl          t5, a2, sp
                  blt          t6, a1, 60f
                  andi         s2, ra, 490
                  xori         sp, a5, 129
                  auipc        a7, 774013
                  bltu         tp, t3, 67f
                  sub          s3, gp, t4
                  add          s8, s0, ra
60:               sltu         s1, s4, s6
                  slt          s1, t1, tp
62:               sltu         zero, s11, a3
                  xor          a5, s8, zero
                  bne          a2, s7, 84f
                  srai         zero, ra, 7
                  beq          zero, s2, 70f
67:               sltu         gp, s1, a7
                  srai         t6, a7, 30
                  or           a3, a3, s1
70:               add          a7, a4, a1
                  srli         s1, a4, 9
                  bge          a5, t2, 89f
                  slli         s2, s7, 15
                  blt          s1, a2, 80f
                  bge          a5, gp, 84f
                  bgeu         t2, t3, 90f
                  andi         s9, s0, -648
                  sll          a4, t0, t0
                  bne          t2, ra, 97f
80:               slli         s9, s3, 6
                  slli         t4, s2, 10
                  ori          a2, a5, -321
                  srli         a5, s9, 21
84:               bge          s4, tp, 98f
                  nop
                  sub          s0, tp, s5
                  srl          a0, tp, a1
                  beq          a1, t0, 101f
89:               blt          zero, s0, 106f
90:               xori         t1, t3, 1202
                  xor          ra, a0, t4
                  addi         t0, t0, -622
                  blt          t2, s1, 110f
                  sltiu        s5, t1, 468
                  xor          a2, t6, t1
                  and          sp, gp, s7
97:               bltu         t5, s5, 101f
98:               srai         sp, a0, 29
                  bltu         zero, tp, 114f
                  slt          ra, a0, t4
101:              or           s11, t0, s10
                  ori          a3, t5, -185
                  addi         s8, gp, 264
                  srli         s11, s3, 18
                  slli         zero, a3, 8
106:              beq          t4, s9, 113f
                  bltu         ra, s10, 121f
                  bne          sp, s3, 111f
                  sub          a2, a5, a0
110:              bge          s10, s6, 127f
111:              nop
                  sub          t0, s11, t6
main_8:           jal          t1, 12f
0:                jal          s9, 10f
1:                jal          s7, 6f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          t1, 0b
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          a5, 1b
8:                jal          t1, 5b
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          s10, 9b
13:               xori         t6, t6, -800
113:              slti         t4, s9, 2029
114:              sltu         s1, s10, zero
                  bgeu         tp, t2, 117f
                  add          s6, a5, t6
117:              andi         a4, s6, 1789
                  srai         s5, t6, 24
                  slt          a5, sp, t3
                  or           tp, a5, s8
121:              bltu         s3, s0, 134f
                  andi         s4, s10, -750
                  bgeu         t0, a7, 138f
                  ori          a4, a5, 940
                  add          a2, zero, gp
                  bne          s8, t4, 140f
127:              add          s6, s8, s7
                  addi         a7, s8, 930
                  srai         a5, s2, 8
                  sltu         sp, s9, s9
                  auipc        tp, 309131
                  addi         a7, s8, -1021
                  beq          s9, s3, 139f
134:              blt          s7, s4, 138f
                  sra          s11, t0, tp
                  bge          s3, s0, 143f
                  blt          a0, s2, 144f
138:              auipc        a3, 576348
139:              xor          s1, a3, ra
140:              andi         s7, s3, 1382
                  bltu         s7, tp, 156f
                  sltiu        a0, sp, -1934
143:              sltiu        a5, sp, 1531
144:              slti         zero, a5, -1491
                  srl          s3, a4, s8
                  slti         t4, zero, -935
                  srl          sp, t3, s11
                  and          s3, a5, t3
                  addi         s5, s1, 165
                  sub          t3, s5, t4
                  bne          s9, s3, 160f
                  auipc        gp, 12804
                  ori          tp, t1, 939
                  nop
                  blt          a1, s3, 158f
156:              and          s7, t6, a3
                  addi         s7, s11, 1020
158:              slti         t6, t5, 1321
                  and          tp, s5, t4
160:              xor          t5, a1, s0
                  bgeu         a2, a4, 177f
                  bne          zero, s7, 180f
                  and          t6, a4, s3
                  beq          s11, tp, 181f
                  bne          t6, s5, 179f
                  srai         tp, zero, 11
                  bne          s8, ra, 173f
                  sll          s11, s11, t5
                  srli         s2, s6, 26
                  beq          ra, ra, 190f
                  xor          s4, s9, a5
                  slt          s8, a7, t0
173:              slli         s8, a0, 23
                  srl          a7, s3, s10
                  and          gp, s9, ra
                  nop
177:              sltu         t1, s11, tp
                  beq          t4, a6, 198f
179:              addi         t1, t3, -452
180:              sltiu        s8, a0, -1545
181:              xor          s11, t1, t3
                  blt          a6, a1, 196f
                  slli         sp, t5, 0
                  xor          a7, t2, a7
                  srai         ra, sp, 31
                  srl          t1, s9, a5
                  nop
main_17:          jal          t1, 14f
0:                jal          t1, 15f
1:                jal          t6, 18f
2:                jal          ra, 21f
3:                jal          tp, 20f
4:                jal          a2, 22f
5:                jal          t1, 0b
6:                jal          tp, 9f
7:                jal          ra, 11f
8:                jal          ra, 3b
9:                jal          s10, 8b
10:               jal          ra, 6b
11:               jal          gp, 23f
12:               jal          ra, 24f
13:               jal          ra, 4b
14:               jal          ra, 17f
15:               jal          gp, 16f
16:               jal          ra, 26f
17:               jal          ra, 12b
18:               jal          ra, 5b
19:               jal          t1, 13b
20:               jal          ra, 19b
21:               jal          gp, 1b
22:               jal          t1, 27f
23:               jal          t1, 2b
24:               jal          s11, 25f
25:               jal          ra, 7b
26:               jal          tp, 10b
27:               andi         gp, s6, -1734
                  and          t5, s7, a7
                  blt          s2, tp, 197f
190:              auipc        sp, 83831
                  bgeu         a7, s4, 204f
                  add          s2, s11, t0
                  lui          t4, 982268
                  blt          zero, s0, 198f
                  nop
196:              sub          t0, t0, s5
197:              andi         s0, t6, 1115
main_6:           jal          t1, 0f
0:                jal          ra, 22f
1:                jal          t5, 18f
2:                jal          a4, 4f
3:                jal          t1, 6f
4:                jal          ra, 16f
5:                jal          ra, 24f
6:                jal          t1, 19f
7:                jal          t1, 11f
8:                jal          t1, 20f
9:                jal          t1, 3b
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          ra, 8b
13:               jal          s11, 15f
14:               jal          gp, 9b
15:               jal          ra, 2b
16:               jal          t4, 5b
17:               jal          ra, 23f
18:               jal          a5, 7b
19:               jal          a5, 17b
20:               jal          t6, 13b
21:               jal          ra, 14b
22:               jal          t1, 21b
23:               jal          s9, 1b
24:               slti         s4, gp, 1781
198:              slli         a4, s4, 31
                  slti         t4, zero, -237
                  bge          tp, sp, 217f
                  slti         a2, tp, -2047
                  beq          t1, s9, 219f
                  or           tp, s3, a3
204:              addi         s8, s11, -883
                  andi         s3, s1, 1061
                  beq          s7, t1, 211f
                  ori          s10, t5, 285
                  nop
                  nop
                  slli         s10, t2, 4
211:              and          ra, s1, a4
                  srai         t4, s6, 25
                  auipc        ra, 12030
                  xor          t3, a0, gp
                  addi         s10, t0, -1704
                  srai         t3, a3, 12
217:              xor          s1, a0, t3
                  srl          s8, s2, s7
219:              add          a4, s5, s6
                  beq          a5, a4, 237f
                  xori         s11, s6, -31
                  bltu         s9, s11, 226f
                  sll          s1, a0, t2
                  sra          s11, t4, t0
                  auipc        s10, 933605
226:              bgeu         s7, s0, 228f
                  slli         ra, t1, 11
228:              auipc        zero, 911699
                  srl          t3, a6, tp
                  sub          s4, s6, t5
                  sub          s9, s2, t5
                  bne          s3, s9, 239f
                  sll          a0, s5, a1
                  sll          a3, s6, t2
                  xori         ra, t2, -2003
                  add          gp, sp, t1
237:              slti         tp, a7, 1411
                  or           t4, s0, s2
239:              srai         t5, t5, 26
                  or           a0, gp, s1
                  blt          s4, s9, 258f
                  sra          s0, sp, s7
                  bltu         a0, a7, 253f
                  slti         s2, t1, 457
                  bltu         a1, s9, 265f
                  slt          s5, sp, s1
                  srl          tp, a3, tp
                  sub          s4, a4, t6
                  slli         t6, t0, 30
                  srli         ra, s8, 14
                  auipc        s0, 228930
                  blt          t3, a0, 258f
253:              sltiu        s1, s5, 374
                  or           zero, t5, a2
                  xori         a0, t1, 1602
                  bltu         gp, t3, 271f
                  nop
258:              xori         t6, s2, 45
                  sub          t3, s11, s3
                  slti         t3, s10, -582
                  lui          s6, 519940
                  sll          t0, t6, s4
                  ori          s8, s0, -781
                  xor          s6, t2, zero
265:              beq          a6, s7, 268f
                  bne          s5, ra, 271f
                  slli         s8, s11, 10
268:              and          s8, s6, a1
                  or           s3, t4, s7
                  sra          t4, ra, a3
271:              slti         t6, a3, 1580
                  sra          zero, a1, a0
                  slt          t3, a2, t0
                  and          a3, s4, a6
                  or           s10, s7, s5
                  xor          zero, s0, s10
                  sra          tp, ra, a7
                  andi         sp, s4, 1167
                  auipc        s9, 931412
                  slt          s7, t6, sp
                  and          gp, s5, t0
                  sltu         zero, s3, a4
                  srai         tp, s0, 6
                  bge          t4, a2, 293f
                  or           s1, s8, a3
                  bgeu         s2, t3, 303f
                  sra          tp, s2, t0
                  srli         s0, t1, 4
                  sll          s11, t1, a3
                  sub          s7, s7, gp
                  srai         t6, a3, 12
                  nop
293:              slti         s8, s1, -914
                  srai         a7, a2, 24
main_26:          jal          t1, 7f
0:                jal          ra, 12f
1:                jal          gp, 0b
2:                jal          ra, 11f
3:                jal          s10, 2b
4:                jal          t1, 6f
5:                jal          ra, 13f
6:                jal          ra, 10f
7:                jal          t1, 4b
8:                jal          ra, 1b
9:                jal          t0, 5b
10:               jal          s4, 8b
11:               jal          ra, 9b
12:               jal          ra, 3b
13:               slt          tp, s2, t1
                  andi         a4, s9, -574
                  blt          s8, s2, 302f
                  auipc        a5, 968091
                  bgeu         t0, a3, 311f
                  auipc        t5, 836512
                  sltiu        ra, tp, -431
                  addi         t5, s4, 268
302:              sll          a5, t6, a0
303:              slti         gp, t0, 345
                  sltu         t0, a5, gp
                  sub          s0, s10, a0
                  sra          t5, t3, s3
                  ori          s4, s11, -1766
                  xori         t6, s4, 2015
                  nop
                  bgeu         a6, t5, 327f
311:              sra          a0, ra, ra
                  or           s7, s5, t6
                  and          a0, a0, a5
                  sltiu        t0, a1, -219
                  addi         t6, t0, 794
                  srli         a3, a6, 2
                  addi         t3, s9, 863
                  nop
                  ori          s2, tp, 1102
                  and          t0, s2, s6
                  xori         t0, t2, 1823
                  slt          t3, a3, a3
                  bge          s7, s9, 330f
                  xor          s9, a3, s11
                  la           t4, sub_1
                  nop
                  sltiu        t5, a0, -951
                  auipc        a3, 229796
                  addi         s2, s2, 1378
                  sub          s2, t6, t4
                  addi         t4, t4, -649
                  beq          t2, s1, main_j1 #branch to jump instr
                  slti         s2, a7, -759
                  andi         t6, t2, 1893
                  and          t3, a7, s3
main_j1:          jalr         t1, t4, 650 #jump main -> sub_1
                  beq          t1, s4, 328f
                  slt          a4, s1, s9
                  blt          t5, s0, 328f
327:              sltiu        s2, a2, -827
328:              ori          a4, t2, 854
                  srai         a5, s2, 23
330:              sub          a3, ra, s7
                  bltu         t6, a7, 338f
                  lui          s5, 2717
                  slli         s2, a7, 27
                  sll          s6, t3, a7
                  addi         ra, gp, -1590
                  nop
                  andi         tp, a7, 1896
338:              sltu         s4, ra, t4
                  bltu         a4, zero, 355f
                  beq          a7, a7, 357f
                  blt          tp, t6, 349f
                  nop
                  ori          t1, a5, 895
                  bgeu         a0, a5, 357f
                  blt          s10, a3, 355f
                  bgeu         s6, s2, 361f
                  bge          ra, a1, 364f
                  blt          t5, s5, 362f
349:              slli         s2, a5, 26
                  bne          t6, s10, 370f
                  add          sp, ra, ra
                  ori          s5, s2, -2002
                  or           a0, a6, s0
                  nop
355:              sltiu        ra, a6, 296
                  addi         a3, s6, -1284
357:              bgeu         s9, t2, 364f
                  bgeu         s10, s10, 375f
                  slt          s6, a2, tp
                  bltu         a5, t4, 374f
361:              xori         a3, s7, 1871
362:              xor          sp, t4, s6
                  bgeu         t1, t3, 377f
364:              bne          s2, gp, 368f
                  sub          sp, zero, a7
                  nop
                  sra          s0, s8, t1
368:              srli         s4, t0, 5
                  sltiu        a4, zero, -835
370:              add          t4, s3, sp
                  ori          s0, ra, 178
                  srl          s6, t2, ra
                  sra          a0, tp, t6
374:              sub          a2, t6, t0
375:              xor          t5, a3, a4
                  xori         s6, s7, -1471
377:              beq          t1, t1, 395f
                  lui          s0, 1007213
                  and          tp, a6, s6
                  sltiu        s5, t1, 1256
                  slt          gp, s5, s11
                  sub          sp, a2, zero
                  lui          s4, 89532
                  srai         t5, t6, 24
                  lui          t5, 562751
                  bne          zero, s1, 390f
                  srl          a4, a1, s5
                  sub          s10, s11, t4
                  bge          a0, s4, 403f
390:              sra          a3, gp, s9
                  bltu         t4, ra, 408f
                  srli         s3, s5, 19
                  sub          tp, a2, s3
                  bne          a7, a2, 410f
395:              nop
                  sub          s0, a6, t3
                  sll          s9, t4, s9
                  or           s5, ra, s6
                  sub          s9, a6, s0
                  slli         s2, t3, 24
                  slti         s0, s8, -792
                  ori          s8, ra, 265
403:              slti         s4, a4, -571
                  slli         a4, sp, 25
                  blt          s10, s7, 408f
                  auipc        a4, 41034
                  sltu         a4, gp, s5
408:              add          tp, zero, s1
                  bgeu         a7, a0, 417f
410:              bgeu         t3, a2, 427f
                  blt          s3, t4, 431f
                  xori         a4, ra, -2039
                  slti         t1, s11, -942
                  auipc        s5, 195636
                  slti         a0, a6, -1977
                  blt          a5, a4, 418f
417:              blt          tp, s7, 421f
418:              sltu         a5, t4, t1
                  slt          s10, t3, s8
                  andi         s0, a4, -1301
421:              sll          s8, s9, s9
                  bge          s1, t0, 429f
                  bgeu         t4, a6, 430f
                  srai         s4, s0, 20
                  bgeu         s8, t6, 440f
                  bgeu         t6, tp, 431f
427:              slt          t4, sp, s10
                  srli         t4, s6, 20
429:              sra          t4, ra, a5
430:              sltu         t0, s11, a1
431:              slti         s7, t2, -1333
                  ori          s6, sp, -1915
                  xor          s3, s6, s1
                  srl          sp, s2, a2
                  bgeu         t4, sp, 453f
                  or           s7, gp, a7
                  sub          s4, t2, s2
                  xor          tp, s6, s0
                  sltiu        gp, s0, 1069
440:              sll          ra, s9, sp
                  addi         sp, s6, -545
                  nop
                  add          s0, s2, t0
                  lui          a3, 330195
                  lui          ra, 657064
                  and          s0, s2, t0
                  lui          s0, 595391
                  xori         a5, s9, -598
                  nop
                  srai         t1, t1, 17
                  nop
                  and          s1, gp, s10
453:              sra          s1, s3, a7
                  beq          t1, s0, 468f
                  xor          a0, a5, tp
                  and          s0, s2, s10
                  blt          s9, a0, 461f
                  andi         a5, s6, -678
                  sltiu        zero, s11, -1626
                  nop
461:              auipc        a2, 307020
                  sltiu        s2, a4, 1999
                  andi         t4, t6, 1218
                  sltu         s7, t4, s2
                  ori          sp, a5, -396
                  slt          zero, s10, s5
                  xori         t6, zero, 1135
468:              sra          s5, s7, gp
                  beq          a3, s10, 478f
                  xor          s3, s3, ra
                  add          t4, gp, s11
                  bgeu         s4, t5, 489f
                  auipc        s11, 43364
                  lui          s10, 681445
                  addi         t0, s10, -1711
                  lui          s2, 935399
                  beq          s8, t3, 490f
478:              ori          s8, t3, -81
                  sra          s8, tp, sp
                  auipc        sp, 670299
                  bgeu         ra, s6, 485f
                  andi         a0, s1, -1170
                  nop
                  bgeu         t1, a7, 499f
485:              srai         t0, a1, 18
                  bne          ra, t5, 496f
                  srl          s9, a3, s3
                  bltu         s9, s11, 502f
main_10:          jal          t1, 8f
0:                jal          s11, 5f
1:                jal          sp, 2f
2:                jal          s6, 10f
3:                jal          t5, 9f
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          t4, 3b
7:                jal          tp, 4b
8:                jal          ra, 6b
9:                jal          t1, 0b
10:               xori         s8, a6, -750
489:              ori          a5, t6, -1659
490:              sll          gp, t5, ra
                  srl          t3, a0, t3
                  lui          s1, 880489
                  sll          t0, s1, s9
                  ori          s3, a4, -1845
                  bltu         t4, a1, 501f
496:              nop
                  lui          a0, 426273
                  sltu         a0, a4, a2
499:              or           s4, a1, s11
                  slli         t3, s7, 3
501:              blt          s1, a4, 508f
502:              slti         t0, s1, -1683
                  xor          s4, t5, a5
                  auipc        t1, 234253
                  ori          t0, a2, -1292
                  slt          a2, s4, s9
                  srl          t3, s5, s5
508:              sll          s4, s3, t1
                  xori         s11, s0, 1554
                  blt          t6, a7, 516f
                  bltu         s11, t1, 528f
                  sra          a5, t6, s1
                  blt          t1, a2, 533f
                  lui          s4, 642207
                  srai         s2, s4, 18
516:              sltiu        s11, t3, -592
                  sltiu        t3, gp, -925
                  andi         s0, s10, 1548
                  ori          t1, s6, -1177
                  bltu         s4, zero, 537f
                  slli         s1, a7, 18
                  xori         s3, a4, -1103
                  bltu         a1, s8, 536f
                  bltu         t2, tp, 537f
                  sra          s0, s3, gp
                  bgeu         s2, s0, 540f
                  sltiu        s5, a3, -1106
528:              lui          zero, 950059
                  ori          gp, gp, 1908
                  srli         t1, s1, 15
                  bne          t2, a5, 537f
                  sltiu        gp, a3, -1523
533:              sra          a3, a4, s11
                  bge          a1, t4, 541f
                  sltu         t0, a4, a0
536:              bne          zero, t1, 541f
537:              xori         s10, a2, 1436
                  sll          t6, a0, a7
                  bne          a1, t6, 557f
540:              sll          a2, gp, a6
541:              srai         s3, a3, 16
                  beq          s3, sp, 549f
                  bltu         a3, s3, 547f
                  slli         gp, t6, 4
                  bge          a0, s4, 561f
                  slti         s1, a0, 337
547:              xori         t4, t0, 1443
                  bltu         a7, s10, 565f
549:              nop
                  lui          s10, 262694
                  beq          s7, s1, 568f
                  sra          t0, s8, ra
                  auipc        s4, 545452
                  blt          a5, t6, 562f
                  sll          a7, a6, s2
                  srli         t5, a1, 1
557:              srli         tp, t0, 13
                  srl          s0, gp, tp
                  sll          s0, a6, t2
                  bge          s10, a6, 580f
561:              sra          s2, a3, s9
562:              bne          t1, t3, 566f
                  ori          s3, a4, 565
                  nop
565:              addi         gp, a3, -13
566:              slti         s5, zero, 1849
                  srl          zero, s3, s3
568:              add          s0, t4, s9
                  sltu         s11, s11, a3
                  lui          tp, 751525
                  sub          tp, tp, s11
main_16:          jal          t1, 1f
0:                jal          s6, 14f
1:                jal          gp, 6f
2:                jal          ra, 18f
3:                jal          s6, 17f
4:                jal          gp, 0b
5:                jal          t6, 12f
6:                jal          s1, 15f
7:                jal          ra, 4b
8:                jal          a3, 7b
9:                jal          t1, 10f
10:               jal          t1, 11f
11:               jal          ra, 5b
12:               jal          ra, 13f
13:               jal          ra, 3b
14:               jal          ra, 2b
15:               jal          ra, 9b
16:               jal          t1, 8b
17:               jal          ra, 16b
18:               slt          a5, s5, a2
                  lui          t5, 121789
                  bge          t6, a7, 579f
                  addi         tp, s1, -898
                  addi         s0, t4, 84
                  or           t4, s4, s8
                  xor          t6, zero, s0
                  andi         zero, a5, 1051
579:              nop
580:              or           a0, s6, t5
                  lui          t6, 414671
                  srli         s7, s11, 25
                  sra          a7, a7, t4
                  beq          t6, t2, 598f
                  xori         t4, a4, -1771
                  slli         ra, a1, 21
                  nop
                  or           a3, a1, a3
                  slli         s6, a7, 7
                  and          t6, s6, t0
                  srli         gp, a4, 26
                  blt          ra, t4, 607f
                  xor          a4, s2, a0
                  and          s10, s10, s1
                  bltu         s0, s2, 605f
                  add          s5, s1, s8
                  bltu         s7, tp, 614f
598:              bgeu         zero, a6, 607f
                  bge          s1, a7, 619f
                  addi         a0, a3, -1530
                  or           tp, a0, s11
                  add          a2, a0, tp
                  andi         s10, s9, -1297
                  and          tp, ra, ra
605:              lui          s11, 922545
                  add          s10, s9, a0
607:              slt          tp, s6, a1
                  srl          tp, t5, a3
                  auipc        t6, 444450
                  lui          t4, 606510
                  bge          a4, s10, 628f
                  and          s2, s0, a4
                  addi         s9, t1, -700
614:              beq          a4, t5, 629f
                  xori         s11, zero, 1525
                  and          s6, s7, s10
                  auipc        a5, 706688
                  bgeu         a2, s0, 631f
619:              slt          a2, t5, s4
                  slt          s8, t4, sp
                  add          zero, t4, zero
                  sll          s10, t2, s3
                  or           s2, t6, s4
                  xori         sp, t3, 1009
                  bne          s4, s3, 627f
                  ori          s7, s2, 966
627:              xori         a4, a3, 726
628:              sltiu        a3, a3, -803
629:              or           ra, t1, a5
                  lui          t0, 298382
631:              nop
                  sltiu        t5, a4, -242
                  beq          t5, t1, 636f
                  lui          s8, 18237
                  lui          a4, 290276
636:              sltiu        a2, t2, -729
                  bge          s7, t0, 651f
                  srai         zero, s0, 8
                  bne          s0, s9, 643f
                  blt          s0, gp, 647f
                  bltu         s11, gp, 658f
                  beq          a3, s4, 646f
643:              srli         s6, t1, 17
                  add          a3, s3, a0
                  sub          a7, s0, a1
646:              andi         s11, s5, 1072
647:              auipc        a3, 511005
                  sll          t6, a4, a5
                  sra          tp, s10, s1
                  srai         a0, a7, 22
651:              slt          t3, t0, t6
                  slt          t1, a5, zero
                  srli         a2, s9, 10
                  srai         s7, a4, 13
                  bge          s0, s9, 670f
                  slli         a2, t0, 18
                  addi         sp, t0, -991
658:              auipc        t5, 401134
                  sra          a2, s6, t2
                  bltu         a3, t3, 666f
                  lui          zero, 575494
                  andi         a0, a6, 249
                  srli         s8, tp, 25
                  sltu         s11, t4, gp
                  bne          zero, s4, 669f
666:              lui          t3, 12377
                  add          t6, s8, s6
                  and          tp, s0, s1
669:              add          t3, s0, s4
670:              sra          a0, s7, t6
                  slli         ra, a0, 16
                  andi         a4, a5, 1404
                  bne          s8, t3, 690f
                  bne          s1, t2, 688f
                  xori         s5, ra, 235
                  sll          s10, a3, s8
                  xor          s0, s6, a1
                  bltu         s10, t3, 683f
                  blt          s5, s4, 692f
                  add          zero, s4, t6
                  andi         a7, a7, -128
                  sub          a7, s7, s7
683:              sltiu        t0, tp, 167
                  auipc        t6, 837273
                  srai         a2, s4, 23
                  ori          s9, t4, -529
                  add          t3, t6, t4
688:              beq          a1, ra, 690f
                  slli         t6, s10, 22
690:              xori         t6, a3, -506
                  slt          a3, a2, t1
692:              slti         t0, a0, 264
                  andi         a0, gp, -1940
                  beq          s9, t4, 714f
                  bgeu         s5, zero, 704f
                  xori         a5, a3, -1218
                  sub          t5, s4, t3
                  beq          a2, s10, 704f
                  bge          t4, t1, 714f
                  srai         s11, t1, 8
                  srli         t1, s4, 9
                  auipc        s2, 304378
                  xor          sp, s6, tp
704:              sltu         a7, zero, s6
                  addi         t3, s2, 491
                  slt          a7, s10, zero
                  xori         t0, gp, -487
                  slti         s4, a4, 17
                  beq          s4, t5, 726f
                  and          a3, a7, s4
                  sltiu        a5, t0, -1939
                  nop
                  bge          s7, a0, 730f
714:              slti         s0, s0, 1198
                  add          t0, a4, zero
                  sub          s6, s7, a0
                  add          s4, s0, t6
                  bgeu         a5, s10, 734f
                  sra          s10, t5, sp
                  sra          s1, a3, zero
                  nop
                  and          a7, gp, ra
                  add          t1, t5, a2
                  bne          s3, t4, 731f
                  andi         zero, s8, -143
726:              bne          ra, sp, 729f
                  srai         tp, zero, 18
                  add          a3, s3, tp
729:              slli         s4, s0, 4
730:              sltu         sp, s2, t2
731:              srai         t0, s7, 18
                  srai         s0, s2, 11
                  xori         a3, ra, -458
734:              ori          sp, gp, 167
                  sltu         s8, t3, a7
                  lui          t1, 5142
                  lui          s2, 617950
                  and          s4, s4, a6
                  bltu         s4, a4, 749f
                  ori          s4, s1, -315
                  srli         tp, s1, 6
                  sub          t1, s1, s9
                  slt          a2, t1, sp
                  bgeu         t0, t5, 761f
                  xori         s1, t3, 1479
                  slti         a7, a4, -3
                  sub          s3, s6, gp
                  beq          s7, a2, 768f
749:              bne          a5, a4, 762f
                  slt          t6, a7, tp
                  auipc        s11, 82329
                  and          a7, s8, s8
                  and          t0, a1, s7
                  bltu         a3, zero, 768f
                  andi         t5, s10, 2041
                  blt          gp, s10, 773f
                  sub          a5, ra, a6
                  bltu         s7, s6, 772f
                  sub          s2, gp, s9
                  beq          a6, s4, 767f
761:              add          t0, a3, a1
762:              sub          s10, s3, t5
                  auipc        a2, 883961
                  srai         t6, a4, 5
                  beq          a6, a4, 772f
                  or           s5, t2, s9
767:              beq          s9, tp, 785f
768:              lui          s11, 72465
                  xor          t5, a1, s2
                  sll          s3, t3, t3
                  sll          tp, t5, t3
772:              add          s0, a3, s8
773:              or           t3, s2, a3
                  srli         a4, t0, 13
                  bne          s2, a2, 779f
                  beq          t5, a6, 784f
                  bne          t5, t4, 784f
                  nop
779:              srl          t5, s6, t0
                  sltiu        a3, a6, 837
                  slt          s6, a3, s8
                  ori          ra, s0, 587
                  slti         zero, s7, -1636
784:              slli         a7, s8, 5
785:              ori          a2, zero, 312
                  slti         ra, s3, 1372
                  beq          a7, tp, 801f
                  auipc        t6, 56787
                  srli         sp, a2, 29
                  bltu         s3, s10, 805f
                  nop
                  ori          t6, s10, 558
                  lui          t0, 711254
                  nop
                  srli         a4, t0, 18
                  sltiu        s5, a1, -1046
                  sra          s0, sp, ra
                  auipc        sp, 639932
                  slti         t0, t0, 874
                  xor          gp, a1, tp
801:              addi         t0, tp, -682
                  xor          a4, s6, t6
                  sra          a3, t5, s3
                  lui          a5, 581431
805:              sub          s9, s9, t4
                  or           s6, s4, s2
                  bge          s2, t5, 824f
                  andi         t1, s0, 2005
                  slti         s1, a1, -1187
                  sltiu        zero, a1, -1491
                  and          s4, t4, s0
                  xori         s0, tp, 859
                  add          s2, s0, s10
                  bltu         s11, s3, 817f
                  xor          s5, ra, a1
                  sll          zero, s5, s0
817:              beq          tp, a0, 831f
                  bge          gp, s10, 825f
                  slt          s3, tp, gp
                  sll          a3, gp, a6
                  bltu         t3, tp, 828f
                  blt          t6, s3, 839f
                  nop
824:              xor          t3, t0, a7
825:              xor          t0, a3, s10
                  slli         s7, a0, 18
                  auipc        a0, 430053
828:              bne          s9, t5, 845f
                  sub          s4, s7, t5
                  addi         a7, a1, -1689
831:              xor          s7, a7, t4
                  xori         a7, t2, 2029
                  sltu         tp, a2, sp
                  lui          s8, 198236
                  beq          t4, a1, 837f
                  slti         s7, t1, 1174
837:              sltiu        s11, ra, -809
                  slti         s1, a0, 1119
main_2:           jal          t1, 10f
0:                jal          t1, 8f
1:                jal          s2, 7f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          gp, 6b
10:               jal          s6, 3b
11:               and          s6, s9, t6
839:              sll          a2, gp, a1
                  auipc        s3, 7452
                  slti         a0, tp, 1216
                  auipc        s8, 63446
                  xor          s2, a6, t4
                  and          a3, zero, a4
845:              sra          zero, s1, ra
                  or           tp, a0, zero
                  andi         s6, t0, 1289
                  srai         gp, a1, 28
                  bltu         t5, s2, 867f
                  nop
                  srli         s2, s1, 24
                  sra          a4, t1, gp
                  slt          s3, s4, t1
                  srl          gp, gp, a5
                  nop
                  slt          zero, a3, zero
                  sll          t1, a4, a7
                  slti         s9, a0, 257
                  sltu         s6, zero, s3
                  bge          a4, t5, 874f
                  add          ra, zero, s10
                  and          a4, s1, s9
                  xori         t1, zero, 1928
                  bltu         t5, t3, 881f
                  and          t5, s8, a7
                  srli         a4, t1, 19
867:              slti         s10, s6, 969
                  sltu         a5, s3, t4
                  xori         s8, t1, 135
                  and          tp, s9, a7
                  andi         s10, s6, 657
                  bgeu         a1, t6, 888f
                  sll          s11, s6, a0
874:              srai         t5, s0, 9
                  addi         zero, a2, 1438
                  add          t1, t6, t4
                  sub          a7, a1, zero
                  bltu         a6, s6, 891f
                  xori         t0, s0, 1612
                  xor          s4, s8, a2
881:              beq          tp, s2, 885f
                  sltiu        gp, ra, 1155
                  andi         t6, a4, 173
                  slt          tp, s4, a5
885:              sltiu        s5, t0, -973
                  bgeu         a1, t2, 903f
                  auipc        s10, 470267
888:              srl          t4, s9, t5
                  add          tp, s8, a5
                  sltiu        t3, s8, -688
891:              srli         s6, s3, 10
                  bge          a6, zero, 912f
                  add          s2, t1, gp
                  bge          s9, a5, 907f
                  sltiu        s0, s1, -14
                  nop
                  sll          s1, s5, a0
                  xori         s6, s10, 835
                  srai         s4, a4, 16
                  bne          s10, s4, 908f
                  srl          s9, s3, a3
                  sll          s4, t3, s9
903:              nop
                  blt          t4, s5, 909f
                  and          a2, s10, t1
                  srl          a2, t0, s0
907:              auipc        s5, 335030
908:              or           s9, s2, a4
909:              and          s0, t5, zero
                  bge          t4, t0, 914f
                  xor          s5, a6, a0
912:              sra          a4, gp, zero
                  srl          t5, t5, s7
914:              slti         a3, s5, -1346
                  sll          s10, s9, a0
                  and          t5, a0, t5
                  bltu         s8, s6, 932f
                  or           a4, zero, a4
                  auipc        a7, 774572
                  and          s10, s7, a0
                  sra          a7, s1, a0
                  slli         s10, s3, 25
                  sra          t6, s2, t6
                  slt          zero, s4, zero
                  nop
                  slti         s0, tp, -376
                  srli         s5, s0, 16
                  sra          s8, s7, zero
                  sub          gp, t4, a7
                  slli         s10, a2, 18
                  sra          s10, t0, t6
932:              nop
                  slli         a7, s4, 5
                  and          a7, s10, s5
                  slli         s0, s8, 10
                  slti         a5, a1, 1687
                  xori         s8, s11, 208
                  slti         zero, s10, -605
                  sra          tp, t5, t2
                  xor          a4, s5, t6
                  bgeu         t2, t5, 951f
                  and          s1, a2, t2
                  srai         t6, gp, 22
                  or           s1, sp, s6
                  blt          a2, a0, 951f
                  sub          t4, s8, t0
                  andi         t1, t5, -960
                  lui          t6, 502869
                  sltiu        s1, t6, -1355
                  xor          a0, a2, s1
951:              blt          a7, s8, 971f
                  sltu         s0, s6, t3
                  srl          t0, zero, t3
                  auipc        s11, 188296
                  lui          t6, 391492
                  or           s3, gp, s3
                  sll          a3, gp, t6
                  sra          s6, t2, s2
                  addi         tp, t4, 1278
                  srl          s11, sp, s9
                  bge          t5, a2, 970f
                  srai         sp, s6, 1
main_32:          jal          t1, 8f
0:                jal          tp, 1f
1:                jal          s7, 16f
2:                jal          ra, 25f
3:                jal          ra, 14f
4:                jal          t1, 7f
5:                jal          ra, 27f
6:                jal          t1, 11f
7:                jal          t1, 19f
8:                jal          ra, 9f
9:                jal          a0, 24f
10:               jal          ra, 28f
11:               jal          ra, 5b
12:               jal          t0, 4b
13:               jal          ra, 21f
14:               jal          t1, 17f
15:               jal          ra, 23f
16:               jal          ra, 18f
17:               jal          sp, 22f
18:               jal          t1, 13b
19:               jal          ra, 26f
20:               jal          s2, 15b
21:               jal          t1, 2b
22:               jal          s5, 6b
23:               jal          a3, 0b
24:               jal          ra, 3b
25:               jal          t1, 10b
26:               jal          a5, 20b
27:               jal          t1, 12b
28:               or           t0, zero, tp
                  bltu         gp, s5, 967f
                  and          s9, a7, a3
                  bge          t3, t2, 971f
                  slti         s6, t6, -1898
967:              ori          s4, s5, 728
                  bgeu         s1, a7, 982f
                  add          t4, tp, sp
970:              ori          a3, s7, 1330
971:              bltu         t2, t5, 988f
                  beq          a3, s9, 992f
                  slli         tp, s1, 5
                  sub          t6, s6, a6
                  beq          s8, a2, 980f
                  sltiu        t6, a5, 341
                  addi         a3, s1, 579
                  addi         a7, a7, -1809
                  beq          gp, s6, 983f
980:              sub          t4, t3, a1
                  lui          t4, 434078
982:              sltiu        s8, t1, 348
983:              srl          s6, a6, s9
                  sltiu        s9, s3, 1652
                  sll          a7, s8, s6
                  slli         t5, a7, 2
                  andi         a7, a5, 483
988:              bge          sp, t2, 1005f
                  and          tp, s0, sp
                  sll          s9, ra, s7
                  xor          a4, s7, a7
992:              blt          ra, s0, 1008f
                  bgeu         s6, a3, 1010f
                  add          s6, s7, s9
                  slti         s5, a7, -1574
main_0:           jal          t1, 1f
0:                jal          a3, 21f
1:                jal          ra, 8f
2:                jal          ra, 10f
3:                jal          ra, 14f
4:                jal          ra, 19f
5:                jal          s4, 3b
6:                jal          ra, 22f
7:                jal          t1, 4b
8:                jal          ra, 11f
9:                jal          t1, 23f
10:               jal          ra, 24f
11:               jal          a5, 0b
12:               jal          ra, 2b
13:               jal          s10, 26f
14:               jal          s7, 18f
15:               jal          t1, 27f
16:               jal          ra, 7b
17:               jal          t1, 5b
18:               jal          t1, 13b
19:               jal          sp, 9b
20:               jal          t1, 15b
21:               jal          s2, 6b
22:               jal          t1, 25f
23:               jal          t1, 20b
24:               jal          ra, 17b
25:               jal          t1, 12b
26:               jal          t1, 16b
27:               srl          a7, s8, s1
                  srl          s10, ra, a7
                  ori          tp, t2, -1620
                  bltu         s4, s6, 1006f
                  bgeu         sp, gp, 1012f
                  xori         tp, tp, -1148
                  srai         a5, s7, 31
                  slt          t5, s1, a5
                  slt          a4, t6, s5
                  slt          a5, a4, a3
1005:             srli         s11, tp, 14
1006:             slti         a5, t5, 350
                  bne          s7, s6, 1017f
1008:             and          t5, a0, a6
                  bltu         a6, s1, 1016f
1010:             addi         s7, s6, -812
                  add          zero, s9, s8
1012:             bltu         a6, t0, 1027f
                  sub          t4, a0, ra
                  slt          s1, zero, t0
                  bgeu         s7, s4, 1022f
1016:             andi         s3, zero, -1381
1017:             srli         t6, a5, 27
                  add          a2, t1, s6
                  andi         s7, sp, 1410
                  bltu         s1, ra, 1027f
                  ori          s4, t6, -1728
1022:             andi         a0, a5, 1638
                  add          tp, a4, a2
                  andi         tp, zero, -1253
                  nop
                  bge          t5, gp, 1046f
1027:             blt          s7, s11, 1041f
                  slti         t0, s4, 1571
                  srli         a3, a6, 27
                  bltu         a5, t4, 1048f
                  sll          tp, t1, t5
                  srli         t0, ra, 30
                  xori         s11, t6, -136
                  sltu         s9, s11, s0
                  slti         a4, s11, -190
                  sltiu        gp, s1, 1691
                  or           s10, a3, a3
                  beq          a1, s3, 1044f
                  srli         a2, s0, 18
                  sra          t0, s5, tp
1041:             bltu         a1, s9, 1047f
                  sra          ra, s9, sp
                  slti         a7, t4, -170
1044:             sub          s11, t0, sp
                  ori          gp, s3, -1437
1046:             xor          s6, t1, s11
1047:             addi         a7, t4, -518
1048:             slli         t3, s5, 20
                  bne          zero, a0, 1062f
                  slli         gp, s8, 19
                  sub          sp, s4, t0
                  bgeu         s2, a5, 1056f
                  srai         s6, zero, 24
                  slti         t1, gp, 1043
                  add          s6, s3, s3
1056:             xori         s8, s9, -320
                  sub          s9, tp, a5
                  sub          s3, a7, s10
                  bgeu         s4, ra, 1073f
                  addi         s5, s3, 1563
                  addi         s9, s7, -1300
1062:             bgeu         a7, s11, 1065f
                  blt          s10, s3, 1067f
                  xori         s3, a6, 255
1065:             bne          ra, s10, 1074f
                  beq          s8, s6, 1083f
1067:             slt          s6, a1, a6
                  beq          s6, ra, 1083f
                  srli         s9, a0, 7
                  and          sp, a5, a0
                  or           s0, t1, s1
                  sll          t1, t1, a6
1073:             blt          t3, zero, 1090f
1074:             sltiu        s4, s11, -1542
                  add          t1, t4, s0
                  add          a0, a3, t6
                  sub          s5, t2, a7
                  sub          s2, a5, s11
                  slt          s4, s10, t5
                  lui          t4, 643615
                  ori          s3, a1, -36
                  beq          a6, s8, 1084f
1083:             bgeu         a3, t4, 1090f
1084:             beq          t6, a0, 1091f
                  slt          ra, t0, s0
                  sll          s8, s8, s9
                  sub          s5, t0, a1
                  addi         s7, t1, -473
                  ori          s0, gp, 1965
1090:             andi         ra, s2, 728
1091:             nop
                  ori          a5, t2, 689
                  sub          t4, t1, a7
                  beq          s1, t0, 1098f
                  xori         s5, s11, -1624
                  or           a2, a2, s8
                  bne          a4, s2, 1111f
1098:             srai         a3, a1, 6
                  bltu         s5, s11, 1116f
                  beq          a5, s11, 1117f
                  slli         gp, tp, 9
                  beq          t2, s9, 1104f
                  slt          s4, t0, s2
1104:             srl          t1, a0, s9
                  srai         s2, ra, 14
                  auipc        s9, 346061
                  xor          gp, s4, s9
                  addi         a2, s11, -1085
                  nop
                  srli         s3, gp, 26
1111:             sub          s8, a3, s10
                  bltu         tp, s4, 1127f
                  auipc        tp, 330236
                  lui          a5, 439956
                  bltu         s1, t1, 1121f
1116:             sltiu        a3, a4, 968
1117:             ori          a0, t6, -1869
                  andi         t0, gp, 788
                  slt          a2, s1, a1
                  and          t4, t1, a1
1121:             sltu         s0, s0, a3
                  lui          a2, 934129
                  bge          sp, s6, 1126f
                  andi         s5, a5, -1524
                  sltu         s5, gp, s4
1126:             bge          zero, a6, 1143f
1127:             addi         s9, s3, 198
                  slli         a5, t3, 23
                  bne          a1, t5, 1133f
                  nop
                  slti         s11, a5, -1575
                  nop
1133:             and          a5, s0, t2
                  slt          s11, s9, a0
                  srai         s10, a6, 31
                  bne          a3, s4, 1143f
                  sra          s10, s3, s1
                  slt          t3, a0, t5
                  slli         s11, sp, 3
                  or           t1, a5, t6
                  bge          a0, t0, 1145f
                  srai         s3, s0, 4
1143:             bge          a2, gp, 1163f
                  bge          a3, t1, 1149f
1145:             bgeu         t2, sp, 1159f
                  sub          a2, t0, a1
                  sra          t6, t1, t6
                  blt          t2, s10, 1156f
1149:             slli         a7, s6, 22
                  slt          a7, a2, a6
                  ori          s10, t1, -705
                  sltu         t4, ra, sp
                  sra          tp, t6, sp
                  beq          a0, s2, 1172f
                  srl          a2, t2, a0
1156:             sltiu        s0, s5, -151
                  slti         ra, s9, -1758
                  bltu         a2, zero, 1173f
1159:             sub          a4, gp, a4
                  sll          a3, gp, a3
                  ori          s6, s7, -1608
                  add          s7, s5, a3
1163:             bgeu         a3, a6, 1183f
                  blt          t0, t0, 1178f
                  blt          a0, a6, 1178f
                  or           a7, s6, a5
                  auipc        s5, 1045421
                  slti         s2, a1, 1827
                  bgeu         a5, a6, 1186f
                  bgeu         t4, a1, 1186f
                  sra          gp, a5, s3
1172:             sra          ra, a6, a7
1173:             slt          s10, t0, s5
                  sra          tp, t4, a4
                  srl          s11, s5, s2
                  xori         a3, s4, 1415
                  blt          s7, s2, 1186f
1178:             lui          t6, 372767
                  add          s11, t3, a0
                  sll          s8, t1, s7
                  ori          t5, gp, 1666
                  bgeu         s9, s8, 1199f
1183:             xor          s3, s4, a6
                  slti         s0, t3, -314
                  srli         s8, gp, 28
1186:             slti         s7, t1, -1525
                  bne          sp, t3, 1200f
                  auipc        a0, 871102
                  slli         sp, s11, 7
                  nop
                  slt          a5, a3, s1
                  slti         s8, a0, 621
                  andi         a0, s3, 30
                  nop
                  srli         gp, s11, 11
                  sub          t6, a5, a0
                  blt          t0, t5, 1203f
                  xor          t4, s3, s6
1199:             andi         sp, a3, 1847
1200:             ori          s3, s10, 1
                  beq          t1, a2, 1211f
                  sltiu        t4, s5, -4
1203:             sub          t5, s11, s3
                  sltiu        s11, s9, 319
                  xori         s11, t0, 835
                  slti         s3, tp, -1146
                  bne          t2, s4, 1224f
                  sltu         a2, a7, s2
                  sltiu        a0, a1, -1605
                  bge          s4, s1, 1223f
1211:             sll          s9, s2, a2
                  addi         t5, t5, 1813
                  and          t4, s8, t6
                  and          gp, zero, t2
                  auipc        t6, 788491
                  slti         s6, t6, 745
                  bgeu         a5, a7, 1234f
                  bge          zero, t2, 1233f
                  slli         t4, a0, 30
                  and          s11, gp, sp
                  srl          zero, a5, t1
                  bge          gp, a5, 1236f
1223:             sltu         ra, t2, a0
1224:             beq          s10, a7, 1233f
                  lui          ra, 343863
                  sub          a2, a4, s10
                  srl          tp, t0, s2
                  xor          t4, s4, a4
                  sltu         s5, s11, a7
                  xori         a7, gp, 608
                  or           a2, s9, s5
                  srai         a0, t6, 13
1233:             slti         s0, tp, 1881
1234:             sltu         a7, s10, s10
                  auipc        a3, 748561
1236:             slt          s3, a4, t0
                  bltu         a6, s4, 1243f
                  blt          s3, a6, 1246f
                  sltiu        s1, s6, 231
                  sltiu        zero, s0, 562
                  srl          t5, s4, a6
                  sltiu        sp, s1, -1857
1243:             srl          s7, zero, t5
                  andi         a3, s4, 1898
                  bgeu         s8, a3, 1252f
1246:             bne          s8, t2, 1250f
                  add          gp, s5, a1
                  auipc        gp, 113892
                  andi         s2, t0, -1739
1250:             sra          zero, t3, s2
                  lui          t5, 709518
1252:             and          t4, a5, a1
                  nop
                  xori         s8, a3, -2014
                  add          t4, a2, zero
                  xor          s8, s10, a5
                  bltu         sp, s2, 1271f
                  beq          a7, a7, 1262f
                  bgeu         s7, t5, 1272f
                  sltiu        a5, t3, 103
                  bge          s7, s2, 1278f
1262:             ori          s2, s3, 915
                  srai         zero, s2, 10
                  sltu         s1, s7, s11
                  add          a2, a5, a2
                  srli         t3, a4, 3
                  lui          a4, 203150
                  slli         t6, s1, 5
                  bgeu         s9, sp, 1289f
                  srli         gp, ra, 11
1271:             andi         s5, s11, -1914
1272:             xori         s6, s2, 491
                  sltiu        s10, a1, 305
                  slti         a2, t2, 1526
                  bge          s4, s5, 1279f
                  blt          s2, s6, 1283f
                  blt          s11, s11, 1280f
1278:             add          gp, t6, t6
1279:             srl          t3, s10, s8
1280:             slti         ra, a7, -312
                  srl          a5, s1, s8
                  add          t3, s4, s1
1283:             sltiu        s5, s3, -6
                  and          t3, s4, tp
                  ori          s9, s1, 1902
                  blt          ra, ra, 1301f
                  sll          s8, s10, ra
                  addi         s6, s3, -1181
1289:             bgeu         t0, s6, 1305f
                  sra          a7, a4, a1
                  or           t3, a2, t2
                  xori         t6, s8, 1541
                  srai         t6, a2, 12
                  bltu         s5, a1, 1299f
                  bltu         sp, t3, 1297f
                  and          a3, ra, s7
1297:             sltu         a4, s4, s5
                  xori         s1, gp, 1019
1299:             sltu         s8, s7, a3
                  bltu         s1, a7, 1318f
1301:             or           a0, gp, gp
                  beq          t3, a6, 1312f
                  sltu         s2, gp, a4
                  bgeu         a2, t1, 1324f
1305:             slti         t1, s8, 1714
                  srl          s3, gp, t4
                  srli         s9, a1, 15
                  srl          t5, s1, a0
main_15:          jal          t1, 8f
0:                jal          ra, 4f
1:                jal          tp, 12f
2:                jal          ra, 17f
3:                jal          ra, 7f
4:                jal          ra, 16f
5:                jal          t1, 3b
6:                jal          ra, 11f
7:                jal          t1, 14f
8:                jal          ra, 6b
9:                jal          a2, 13f
10:               jal          ra, 15f
11:               jal          t1, 1b
12:               jal          ra, 18f
13:               jal          s4, 5b
14:               jal          ra, 0b
15:               jal          ra, 19f
16:               jal          ra, 10b
17:               jal          t1, 9b
18:               jal          a2, 2b
19:               srai         t3, t0, 7
                  srli         t1, s2, 8
                  bne          s11, t4, 1317f
                  bge          a4, a6, 1325f
1312:             xori         sp, t6, -163
                  lui          ra, 848278
                  sll          tp, t5, a4
                  srli         a2, s4, 28
                  andi         ra, s4, 464
1317:             ori          s7, a3, 629
1318:             slti         s10, s7, -857
                  sltiu        s3, a1, -1899
                  sltu         s6, s0, sp
                  sltiu        t4, sp, -1457
                  bgeu         gp, a5, 1339f
                  and          t1, s3, a6
1324:             ori          s6, t2, -900
1325:             srli         t4, t5, 6
                  xori         a3, t5, -1152
                  and          s6, a5, t3
                  slli         s4, s4, 1
                  srai         s10, zero, 20
                  sra          gp, t4, t2
                  addi         ra, t3, 940
                  slti         a3, s4, -334
                  xori         tp, gp, -553
                  bne          t6, ra, 1340f
                  andi         sp, t1, 1636
                  srl          s0, a6, t5
                  sra          a7, a2, s4
                  auipc        a7, 54964
1339:             bgeu         s1, s5, 1356f
1340:             srai         s3, a0, 11
                  ori          s11, t5, -1150
                  addi         zero, s4, 0
                  bge          a5, a5, 1345f
                  or           zero, a4, gp
1345:             sub          a0, s8, t4
                  nop
                  srai         a3, s8, 31
                  addi         t6, t6, 1505
                  bgeu         s4, t1, 1366f
                  add          a0, s2, zero
                  lui          t1, 447133
                  or           s3, a2, a5
                  nop
                  bne          t0, s10, 1371f
                  add          s6, gp, sp
1356:             bltu         s7, ra, 1359f
                  bltu         t2, s3, 1362f
                  sra          s3, s0, t0
1359:             andi         t1, gp, -559
                  sltiu        tp, t3, 687
                  addi         a7, t1, -1353
1362:             slti         t1, a3, -177
                  sub          s5, gp, s0
                  srai         a3, t5, 26
                  lui          ra, 895724
1366:             sra          t3, zero, a1
                  bltu         s7, a3, 1384f
                  add          s7, s10, s8
                  addi         a4, s5, 1112
                  sltiu        t5, t1, -1666
1371:             addi         t6, a6, -1186
                  bltu         t3, a1, 1380f
                  srai         gp, a6, 25
                  ori          t1, a0, 1804
                  bge          s8, t0, 1395f
                  andi         s5, t6, 378
                  bgeu         s5, s4, 1391f
                  add          s4, zero, t5
                  sltu         a0, t3, tp
1380:             blt          s5, s1, 1387f
                  beq          a1, s11, 1387f
                  sltu         s4, t6, s0
                  nop
1384:             sltu         s1, s2, s3
                  auipc        a4, 740007
                  sra          s11, a5, t1
1387:             lui          s10, 316945
                  bgeu         s8, a1, 1403f
                  sltu         a0, s5, s7
                  xori         a7, s8, 752
1391:             auipc        a7, 373765
                  or           sp, t6, s5
                  ori          ra, zero, -1756
                  beq          t6, sp, 1408f
1395:             xori         a3, zero, -1158
                  ori          sp, t2, 869
                  sll          ra, a3, s6
                  auipc        sp, 285022
                  bltu         s2, t6, 1415f
                  add          s0, t6, s5
                  andi         s9, a3, -441
                  sltiu        t3, s2, 1540
1403:             add          a4, t2, a6
                  srai         sp, s7, 22
                  slli         ra, s7, 11
                  nop
                  sll          s1, tp, a7
1408:             add          ra, t5, s6
                  sltiu        s7, s1, -1173
                  xori         a2, s6, -1653
                  or           s9, a0, s8
                  slli         t0, t5, 11
                  and          s9, s2, zero
                  sltiu        s3, tp, 1358
1415:             sra          sp, a4, t3
                  ori          t4, t5, 1935
                  nop
                  sltiu        a2, t5, -856
                  blt          a3, s3, 1439f
                  bgeu         a7, s6, 1434f
                  sltu         s6, t5, a3
                  bltu         t6, t1, 1440f
                  srli         t6, s7, 23
                  lui          t4, 363358
                  add          a0, s10, a1
                  sll          t3, s5, s7
                  srl          s5, a3, t0
                  bge          sp, t1, 1445f
                  srl          s9, gp, s9
                  xor          a3, t3, s2
                  auipc        ra, 327093
                  slti         s6, s10, 1556
                  nop
1434:             sra          ra, s0, a6
                  bge          t3, a5, 1439f
                  bge          a7, s11, 1453f
                  andi         a0, a2, -117
                  slli         a3, a1, 14
1439:             bge          a6, s4, 1443f
1440:             slt          s0, a5, a1
                  sub          t6, a3, a6
                  srai         t0, a3, 30
1443:             beq          s1, a7, 1447f
                  and          ra, s11, s9
1445:             add          t6, t2, s3
                  bge          sp, a1, 1459f
1447:             slti         t5, s11, -363
                  and          s6, t0, s1
                  bge          s6, s7, 1456f
                  andi         a2, t6, 1090
                  sub          s2, a1, t6
                  xor          a4, gp, a5
1453:             bltu         s10, s3, 1468f
                  slt          t6, sp, sp
                  sra          a0, s1, s1
1456:             sub          s11, s6, sp
                  slli         gp, a0, 2
                  srl          s0, t6, t6
1459:             andi         t0, s9, 1536
                  add          t0, a4, s8
                  addi         s2, s2, -534
                  lui          a2, 51133
                  andi         s8, s11, -1734
                  sll          s7, s0, a6
                  bge          t1, s3, 1472f
                  auipc        s5, 813839
                  sub          a0, a5, t0
1468:             srai         t0, s0, 1
                  sltiu        s4, a1, 1837
                  xor          s8, s10, a2
main_4:           jal          t1, 16f
0:                jal          a4, 5f
1:                jal          t1, 15f
2:                jal          t1, 17f
3:                jal          a7, 19f
4:                jal          t1, 7f
5:                jal          a2, 14f
6:                jal          t1, 0b
7:                jal          s3, 20f
8:                jal          t1, 4b
9:                jal          ra, 2b
10:               jal          ra, 11f
11:               jal          s3, 12f
12:               jal          t1, 8b
13:               jal          gp, 1b
14:               jal          t1, 13b
15:               jal          t1, 18f
16:               jal          ra, 6b
17:               jal          s7, 3b
18:               jal          t1, 9b
19:               jal          ra, 10b
20:               xor          zero, t2, s6
                  xor          a0, a2, s8
1472:             or           s7, s1, s7
                  addi         t0, a2, -586
                  slt          s0, s5, t0
                  sra          s9, t4, t4
                  srli         t4, t0, 0
                  andi         sp, s9, -1192
                  bne          s2, a5, 1488f
                  blt          t4, tp, 1492f
                  slt          t4, ra, t0
                  xor          a4, tp, a3
                  slti         s5, a5, -2033
                  srl          s2, t3, s3
                  srli         a7, a7, 9
                  or           sp, ra, zero
                  bgeu         a4, t3, 1492f
                  srli         s10, a3, 28
1488:             ori          gp, tp, 981
                  xori         s11, zero, -1856
                  bne          s8, s8, 1499f
                  beq          s4, t6, 1508f
1492:             slli         gp, s7, 29
                  sub          s11, a0, t0
                  auipc        t5, 239158
                  beq          s3, sp, 1502f
                  bgeu         a7, s2, 1510f
                  slli         tp, t6, 10
                  andi         a0, s6, -1297
1499:             ori          s5, t3, -47
                  bne          a3, tp, 1507f
                  srli         s10, s10, 21
1502:             or           a5, t0, ra
                  or           tp, t5, sp
                  srli         sp, a0, 21
                  beq          a0, s11, 1510f
                  andi         t1, a3, 23
1507:             bltu         s9, s11, 1514f
1508:             sub          s8, ra, tp
                  xori         t0, a5, -1158
1510:             blt          s1, a2, 1526f
                  srl          gp, s2, a2
                  sub          s1, a3, t3
                  beq          gp, a3, 1530f
1514:             sltiu        s5, t1, 658
                  or           gp, a2, gp
                  beq          t5, tp, 1522f
                  bltu         s6, tp, 1537f
                  srl          a3, s5, tp
                  or           s9, t3, s11
                  bltu         s10, tp, 1537f
                  bltu         s3, tp, 1530f
1522:             srl          s0, s1, t4
                  beq          t4, s3, 1531f
                  and          a4, a0, gp
                  lui          s10, 772957
1526:             slli         t3, t2, 27
                  bne          s10, a1, 1541f
                  add          a2, s5, a3
                  addi         gp, tp, -1351
1530:             lui          s1, 43482
1531:             xor          sp, s6, t5
                  srl          s8, a0, a2
                  blt          t6, a5, 1535f
                  slt          a5, t4, s10
1535:             or           s10, t5, s7
                  slli         gp, a5, 4
1537:             srai         s11, a4, 8
                  blt          t6, s6, 1542f
                  or           s4, t3, a3
                  xor          t5, a1, a0
1541:             srli         t6, t5, 6
1542:             blt          s8, s5, 1557f
                  sra          s2, a7, s10
                  xor          t5, s8, t1
                  lui          s10, 923007
                  sltu         s9, s5, s3
                  blt          s11, s11, 1557f
                  andi         t0, s0, -1143
                  and          t1, gp, gp
                  or           t1, s11, a6
                  slt          t4, a3, t6
                  xor          a2, t6, s11
                  add          t6, t5, sp
                  sub          s0, t3, t5
                  sll          t5, t4, s8
                  srai         tp, ra, 21
1557:             srli         gp, a3, 24
                  ori          s8, a7, 1291
                  and          t3, t4, s2
                  xor          s2, s9, a1
                  and          t5, t5, gp
                  slli         s10, t2, 27
                  slti         s9, s6, -85
                  slli         t0, s5, 22
                  add          tp, t3, a0
                  blt          a5, t2, 1579f
                  bltu         s10, t6, 1571f
                  add          s6, a2, t2
                  sra          s7, s10, s9
                  bge          a2, s0, 1585f
1571:             sltiu        s5, gp, -511
                  beq          s8, t4, 1586f
                  and          sp, t0, s3
                  add          t1, a6, s6
                  sltiu        t6, s4, -2035
                  sra          t4, a3, t6
                  sll          t3, a5, a1
                  nop
1579:             lui          s2, 450721
                  bltu         tp, t3, 1583f
                  addi         a2, gp, 1435
                  addi         s7, s3, -1093
1583:             srli         a2, a5, 15
                  add          s0, a4, s11
1585:             lui          t1, 990784
1586:             or           ra, a5, s5
                  bltu         s11, a0, 1591f
                  srai         s8, a4, 10
                  bne          t6, s11, 1602f
                  bne          t0, t5, 1607f
1591:             bge          a0, s3, 1608f
                  blt          t2, s8, 1610f
                  sub          s7, a5, tp
                  srli         ra, a3, 25
                  slt          s8, a1, t5
                  sltu         s11, s4, s0
                  srli         s0, t3, 5
                  sltiu        s10, sp, -771
                  bge          a6, s2, 1605f
                  slti         s11, s0, 1847
                  add          ra, a2, a1
1602:             andi         a7, a2, -730
                  srli         a5, a4, 12
                  ori          sp, t3, -282
1605:             xori         s0, a5, 172
                  sltiu        ra, s8, -811
1607:             srl          s10, t2, s7
1608:             add          tp, s11, s10
main_13:          jal          t1, 9f
0:                jal          ra, 10f
1:                jal          a5, 4f
2:                jal          ra, 0b
3:                jal          t1, 5f
4:                jal          a7, 6f
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          t1, 2b
8:                jal          ra, 1b
9:                jal          t1, 8b
10:               andi         t4, a7, -1563
                  slti         sp, zero, 2006
1610:             ori          gp, t6, -911
                  sra          a5, a3, tp
                  slli         s0, a0, 27
                  ori          t4, a5, -601
                  slli         gp, a4, 23
                  srl          s8, s8, tp
                  or           t1, a7, a6
                  bne          s10, t5, 1637f
                  bne          t1, t5, 1631f
                  slti         s7, tp, 601
                  xori         t4, t2, 875
                  xori         s4, t0, 698
                  sltu         s9, t6, s2
                  blt          t2, ra, 1637f
                  bne          zero, s9, 1641f
                  andi         s8, s3, -1531
                  add          s7, tp, s8
                  ori          s9, t6, -1133
                  blt          a4, s9, 1648f
                  srai         t1, a3, 10
                  addi         t1, zero, 121
1631:             srli         a4, s11, 20
                  sub          s4, t6, t3
                  xori         t1, s8, 1284
                  bgeu         a2, t6, 1638f
                  srl          t0, s8, s5
                  or           s5, sp, t5
1637:             nop
1638:             and          s9, a1, s7
                  srli         sp, a7, 31
                  andi         s4, s6, -749
1641:             blt          t3, s5, 1645f
                  or           ra, a4, s7
                  or           a2, a7, t2
                  or           s10, s4, gp
1645:             srli         s1, s0, 24
                  xor          a0, s1, t5
                  blt          t6, t6, 1649f
1648:             bge          t2, a3, 1654f
1649:             bge          s4, a6, 1666f
                  add          s2, t4, a2
                  add          t1, a1, a5
                  sra          s6, tp, s10
                  or           s11, s9, t3
1654:             bne          s7, sp, 1664f
                  slti         gp, s10, 116
                  sltiu        s1, gp, 1727
                  slti         t1, s2, 35
                  bgeu         gp, t2, 1671f
                  beq          a3, zero, 1676f
                  or           gp, a0, ra
                  blt          tp, t3, 1667f
                  slt          s3, gp, a4
                  xor          t6, s11, s1
1664:             sll          t0, a0, s5
                  lui          zero, 462698
1666:             bgeu         a2, t3, 1675f
1667:             and          t3, s7, s6
                  slt          s7, a5, t3
                  blt          s6, a7, 1677f
                  sll          zero, t6, s7
1671:             beq          s10, s11, 1674f
                  srl          t1, t4, gp
                  lui          a0, 486846
1674:             and          t5, s11, t1
1675:             sra          zero, gp, t1
1676:             slt          gp, a2, t2
1677:             srl          t4, a1, t2
                  beq          t5, t4, 1683f
                  auipc        zero, 719392
                  sub          s2, s3, t4
                  nop
                  sll          s3, a2, zero
1683:             slti         s0, a4, 1326
                  sub          a5, t6, a4
                  xori         t0, s2, -419
                  slti         s10, s0, -1336
                  srli         s4, t4, 15
                  beq          s0, s1, 1705f
                  xori         a0, t2, -827
                  bltu         s2, a5, 1704f
                  sltiu        a3, s1, -640
                  bgeu         s7, a6, 1708f
                  srli         sp, s4, 29
                  addi         s0, s9, 1801
                  or           s5, a4, s8
                  andi         s6, s3, 139
                  srai         s10, s1, 31
                  lui          tp, 813726
                  slt          tp, t2, a3
                  bge          a0, t1, 1707f
                  slti         s11, s3, -773
                  and          t6, a0, t3
                  andi         ra, s5, 455
1704:             andi         a3, a1, -339
1705:             sll          s5, s4, a5
                  sltu         s1, t3, t1
1707:             srli         ra, s7, 25
1708:             bne          s5, s4, 1712f
                  srai         s5, t4, 26
                  blt          a7, s6, 1728f
                  xor          t1, ra, a4
1712:             sltu         t1, ra, s10
                  andi         t5, t0, -579
                  sltiu        a7, a6, 3
                  slti         t0, s6, 1541
                  bge          s0, a2, 1723f
                  slli         tp, t5, 1
                  slt          ra, t0, t5
                  add          t3, sp, ra
                  srli         s5, s1, 15
                  or           ra, a6, t1
                  beq          t6, s9, 1739f
1723:             sll          s8, t2, t0
                  bne          a3, sp, 1731f
                  xor          a7, s5, s4
                  sub          t5, a6, a6
                  xori         tp, s0, 1805
1728:             blt          s7, s5, 1742f
                  beq          t1, t0, 1744f
                  sub          s2, s3, s5
1731:             sll          s2, a7, gp
                  nop
                  and          a2, a6, a2
                  srl          s2, a3, s5
                  blt          t5, s2, 1750f
                  bltu         a3, tp, 1756f
                  srai         tp, sp, 26
                  slt          ra, s1, a0
1739:             srl          t0, a6, s4
                  auipc        t4, 147736
                  bltu         t2, a2, 1754f
1742:             bgeu         a6, s4, 1759f
                  andi         s2, s7, 1542
1744:             slli         t0, t6, 30
                  bne          a2, t5, 1758f
                  bne          s8, a0, 1763f
                  sll          tp, t0, t5
                  auipc        sp, 572055
                  andi         sp, a1, -1240
1750:             auipc        gp, 65067
                  srai         t3, s11, 29
                  sltu         a5, t5, sp
                  bltu         t6, s10, 1770f
1754:             beq          s7, s11, 1762f
                  slli         s9, s10, 18
1756:             ori          t4, t0, -1199
                  sub          t1, t6, t2
1758:             beq          s8, s3, 1762f
1759:             srli         s4, s6, 0
                  blt          a5, s6, 1774f
                  blt          ra, s8, 1779f
1762:             bgeu         ra, sp, 1771f
1763:             sltiu        t5, s10, -1173
                  slti         a4, a1, 1357
                  xor          zero, s7, s7
                  slt          a2, t5, t5
                  or           t1, gp, a6
                  sra          a5, t2, a0
                  blt          a2, s6, 1784f
1770:             or           t4, s10, s2
1771:             add          a5, s11, s0
                  sltu         s11, t1, t3
                  sltu         s10, s10, s1
1774:             or           a7, a3, t6
                  auipc        t3, 369783
                  srli         s2, a1, 13
                  bgeu         s3, t3, 1793f
                  bne          s11, s5, 1793f
1779:             slt          s10, s2, s10
                  srai         zero, t6, 19
                  sra          t4, ra, a0
                  andi         tp, a4, -1926
                  slli         t0, s9, 13
1784:             bltu         a5, s7, 1791f
                  slli         t1, t1, 24
                  nop
                  ori          tp, t6, -1235
                  sub          s6, s1, s10
                  slti         s0, t6, 16
                  srli         t4, s2, 2
1791:             sra          sp, s2, s1
                  and          s6, s11, gp
1793:             slli         zero, gp, 12
                  sltiu        s3, a3, -1917
                  bge          s6, a0, 1802f
                  auipc        s5, 796598
                  sub          s0, s5, s9
                  auipc        t1, 239105
                  sltu         t5, s4, a3
                  slti         s5, a0, -1897
                  auipc        zero, 1024737
1802:             sll          a7, s0, ra
                  slli         s8, t0, 22
                  sra          t4, s9, a0
                  sltiu        a0, zero, 644
                  blt          s4, a6, 1810f
                  sltu         s4, a7, a0
                  sub          s6, sp, a7
                  sra          a3, t0, s5
1810:             sub          zero, s8, s2
                  lui          t0, 414342
                  and          t4, s4, s1
                  bne          s7, t1, 1818f
                  bge          t0, t3, 1818f
                  auipc        s8, 564269
                  bge          s4, s6, 1818f
                  add          gp, t4, a6
1818:             beq          a7, a5, 1824f
                  slt          a3, a7, zero
                  ori          t3, s5, -1026
                  andi         gp, a6, -1394
                  andi         s4, s10, -1682
                  xori         t0, s9, 1295
1824:             sub          a5, a6, s10
                  or           zero, s3, s5
                  nop
                  andi         a4, s4, -239
                  xori         s11, s10, -227
                  lui          a4, 1018687
                  xori         zero, a7, -1340
                  or           a5, t0, t3
                  and          s3, s7, t0
                  slt          s9, s10, tp
                  xori         t4, gp, 1225
                  nop
                  auipc        s1, 280101
                  slti         s7, s8, 1384
                  beq          s8, gp, 1855f
                  or           a4, a2, tp
                  auipc        s0, 429734
                  sltiu        s9, t0, 328
                  srl          tp, a7, s1
                  bgeu         t3, t0, 1860f
                  bge          s1, gp, 1854f
                  bge          zero, gp, 1865f
                  xori         a2, s6, 1572
                  bge          s4, t4, 1867f
                  sltu         s11, s1, t5
                  andi         a5, a5, 219
                  sltiu        t5, t3, 1203
                  bge          a1, s1, 1858f
                  srli         a0, a3, 17
                  slti         t5, t4, -161
1854:             add          zero, s7, t3
1855:             xori         s9, t3, 2014
                  bgeu         a0, s6, 1859f
                  lui          zero, 450536
1858:             slli         t0, a4, 20
1859:             lui          a5, 803783
1860:             srli         s10, a6, 12
                  srai         s9, t4, 12
                  sub          s1, s5, s6
                  beq          s1, a7, 1869f
                  bgeu         a3, s1, 1878f
1865:             blt          a4, a1, 1879f
                  slli         a3, a4, 6
1867:             addi         a4, s1, 839
                  addi         s7, s10, 126
1869:             bne          t6, s6, 1879f
                  sra          s11, t6, s2
                  sub          s8, t2, t6
                  sltu         a5, s9, s5
                  sra          t4, a0, t3
                  bgeu         tp, a5, 1894f
                  bge          a0, t6, 1892f
                  ori          sp, t6, 2032
                  or           t3, s3, t3
1878:             auipc        s9, 78709
1879:             add          gp, t6, s8
                  xor          s1, s9, t3
                  beq          a2, s11, 1898f
                  lui          sp, 866714
                  lui          tp, 63775
                  bge          t4, t4, 1888f
                  srl          a0, t2, a7
                  auipc        a4, 596074
                  or           s9, t0, tp
1888:             slti         t6, a2, -1473
                  lui          t5, 390109
                  bge          t3, tp, 1896f
                  srli         s10, tp, 4
1892:             lui          s9, 467113
                  srl          a2, s5, t6
1894:             andi         s10, a6, 1192
                  slli         zero, a1, 9
1896:             sltu         sp, sp, s0
                  xori         t6, a0, 1001
1898:             addi         s7, t4, 1464
                  sub          zero, s5, ra
                  sll          s10, s7, s7
                  bgeu         gp, t0, 1908f
                  sub          s6, a4, a1
                  bge          sp, a7, 1907f
                  auipc        tp, 647552
                  srli         s9, a4, 24
                  or           s10, t5, s11
1907:             sll          t3, s10, t4
1908:             srl          zero, t4, a6
                  beq          t5, a5, 1911f
                  blt          a5, ra, 1911f
1911:             sltiu        a5, s7, 1868
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            or           a4, a4, s4
                  bltu         s4, a5, sub_3_stack_p
                  slt          s1, s4, t3
                  ori          ra, a4, 136
                  and          sp, t5, s2
                  add          t0, s3, s5
                  srli         s8, a6, 30
sub_3_stack_p:    addi         a1, a1, -36
                  xor          s7, t3, s1
                  sw           t1, 4(a1)
                  lui          sp, 38317
                  sra          s2, a5, a4
                  slti         t5, tp, -486
                  sub          a3, a4, s6
                  xor          t1, s11, s6
                  nop
                  sub          s8, s11, s1
                  xori         a3, s10, -1496
                  la           s10, sub_5
                  addi         s10, s10, -674
                  ori          s9, t4, -1473
                  slti         s1, a1, -1634
                  slt          t0, s3, a6
                  xor          a7, s10, ra
sub_3_j7:         jalr         t1, s10, 675 #jump sub_3 -> sub_5
sub_3_13:         jal          t1, 14f
0:                jal          ra, 23f
1:                jal          ra, 13f
2:                jal          ra, 10f
3:                jal          t1, 19f
4:                jal          t1, 2b
5:                jal          tp, 15f
6:                jal          gp, 3b
7:                jal          t1, 16f
8:                jal          s4, 1b
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          ra, 18f
12:               jal          ra, 17f
13:               jal          s11, 21f
14:               jal          ra, 9b
15:               jal          ra, 6b
16:               jal          ra, 12b
17:               jal          t1, 0b
18:               jal          sp, 22f
19:               jal          ra, 4b
20:               jal          t1, 11b
21:               jal          t1, 7b
22:               jal          ra, 5b
23:               slli         a0, s5, 17
sub_3_8:          jal          t1, 18f
0:                jal          t1, 13f
1:                jal          ra, 4f
2:                jal          ra, 22f
3:                jal          ra, 8f
4:                jal          ra, 11f
5:                jal          ra, 3b
6:                jal          t1, 27f
7:                jal          ra, 5b
8:                jal          ra, 12f
9:                jal          s2, 1b
10:               jal          t5, 26f
11:               jal          t1, 17f
12:               jal          ra, 25f
13:               jal          ra, 6b
14:               jal          ra, 16f
15:               jal          s1, 20f
16:               jal          sp, 15b
17:               jal          ra, 28f
18:               jal          ra, 7b
19:               jal          ra, 14b
20:               jal          t1, 9b
21:               jal          s11, 0b
22:               jal          ra, 23f
23:               jal          s5, 29f
24:               jal          t1, 30f
25:               jal          s0, 10b
26:               jal          ra, 2b
27:               jal          t1, 19b
28:               jal          ra, 24b
29:               jal          ra, 21b
30:               lui          s2, 400179
sub_3_5:          jal          t1, 17f
0:                jal          ra, 16f
1:                jal          t1, 20f
2:                jal          ra, 24f
3:                jal          ra, 14f
4:                jal          t1, 0b
5:                jal          tp, 7f
6:                jal          ra, 2b
7:                jal          s4, 27f
8:                jal          ra, 25f
9:                jal          t6, 5b
10:               jal          t1, 9b
11:               jal          t1, 26f
12:               jal          tp, 1b
13:               jal          ra, 18f
14:               jal          ra, 12b
15:               jal          a0, 13b
16:               jal          t0, 6b
17:               jal          ra, 15b
18:               jal          ra, 3b
19:               jal          ra, 22f
20:               jal          s0, 8b
21:               jal          ra, 23f
22:               jal          t1, 28f
23:               jal          tp, 19b
24:               jal          ra, 21b
25:               jal          ra, 10b
26:               jal          t1, 4b
27:               jal          ra, 11b
28:               or           s11, t6, s8
sub_3_10:         jal          t1, 10f
0:                jal          t1, 5f
1:                jal          s2, 12f
2:                jal          s0, 4f
3:                jal          t1, 0b
4:                jal          a0, 8f
5:                jal          t4, 14f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          t1, 1b
9:                jal          s5, 3b
10:               jal          ra, 2b
11:               jal          s9, 13f
12:               jal          gp, 11b
13:               jal          sp, 7b
14:               sltiu        s9, t5, -659
sub_3_9:          jal          t1, 16f
0:                jal          ra, 18f
1:                jal          ra, 13f
2:                jal          s11, 19f
3:                jal          t1, 14f
4:                jal          ra, 0b
5:                jal          s5, 1b
6:                jal          ra, 25f
7:                jal          t1, 26f
8:                jal          t6, 22f
9:                jal          t1, 4b
10:               jal          t1, 11f
11:               jal          a2, 12f
12:               jal          ra, 23f
13:               jal          sp, 3b
14:               jal          ra, 9b
15:               jal          ra, 2b
16:               jal          ra, 8b
17:               jal          ra, 20f
18:               jal          t0, 17b
19:               jal          ra, 5b
20:               jal          a7, 10b
21:               jal          ra, 6b
22:               jal          s7, 7b
23:               jal          ra, 27f
24:               jal          s3, 21b
25:               jal          a7, 15b
26:               jal          tp, 24b
27:               addi         s9, t3, -1965
sub_3_11:         jal          t1, 14f
0:                jal          t1, 10f
1:                jal          ra, 4f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          ra, 11f
5:                jal          s3, 8f
6:                jal          ra, 9f
7:                jal          s8, 15f
8:                jal          ra, 3b
9:                jal          s6, 0b
10:               jal          t1, 1b
11:               jal          t6, 13f
12:               jal          gp, 16f
13:               jal          t1, 17f
14:               jal          ra, 12b
15:               jal          a0, 6b
16:               jal          s2, 5b
17:               slt          sp, s10, gp
sub_3_3:          jal          t1, 17f
0:                jal          s11, 22f
1:                jal          ra, 19f
2:                jal          s2, 12f
3:                jal          ra, 11f
4:                jal          ra, 16f
5:                jal          s5, 23f
6:                jal          t0, 4b
7:                jal          gp, 5b
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          ra, 13f
11:               jal          ra, 18f
12:               jal          s6, 14f
13:               jal          t0, 9b
14:               jal          ra, 10b
15:               jal          t1, 21f
16:               jal          s7, 24f
17:               jal          ra, 3b
18:               jal          ra, 8b
19:               jal          ra, 7b
20:               jal          ra, 6b
21:               jal          t1, 2b
22:               jal          ra, 20b
23:               jal          ra, 15b
24:               slli         a5, a7, 22
sub_3_2:          jal          t1, 1f
0:                jal          t1, 21f
1:                jal          ra, 7f
2:                jal          a3, 17f
3:                jal          s5, 0b
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          sp, 5b
7:                jal          s9, 14f
8:                jal          ra, 22f
9:                jal          ra, 4b
10:               jal          ra, 24f
11:               jal          ra, 20f
12:               jal          ra, 23f
13:               jal          s9, 12b
14:               jal          ra, 13b
15:               jal          ra, 16f
16:               jal          a7, 11b
17:               jal          t1, 18f
18:               jal          s3, 10b
19:               jal          ra, 3b
20:               jal          t1, 2b
21:               jal          t1, 6b
22:               jal          ra, 15b
23:               jal          a2, 19b
24:               lui          a0, 232033
sub_3_0:          jal          t1, 13f
0:                jal          t6, 17f
1:                jal          t3, 8f
2:                jal          tp, 1b
3:                jal          t1, 12f
4:                jal          t0, 15f
5:                jal          t1, 9f
6:                jal          ra, 7f
7:                jal          s0, 14f
8:                jal          ra, 3b
9:                jal          t1, 6b
10:               jal          ra, 5b
11:               jal          ra, 2b
12:               jal          ra, 0b
13:               jal          t1, 16f
14:               jal          t1, 4b
15:               jal          t1, 18f
16:               jal          gp, 11b
17:               jal          t5, 10b
18:               ori          s9, zero, 1320
sub_3_7:          jal          t1, 15f
0:                jal          s4, 5f
1:                jal          ra, 23f
2:                jal          ra, 9f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 20f
8:                jal          t1, 11f
9:                jal          gp, 3b
10:               jal          t1, 16f
11:               jal          ra, 10b
12:               jal          ra, 13f
13:               jal          ra, 22f
14:               jal          t6, 1b
15:               jal          ra, 17f
16:               jal          t3, 0b
17:               jal          ra, 21f
18:               jal          t1, 14b
19:               jal          ra, 18b
20:               jal          t0, 2b
21:               jal          gp, 4b
22:               jal          ra, 19b
23:               xor          t6, t6, s0
sub_3_6:          jal          t1, 26f
0:                jal          a2, 12f
1:                jal          t0, 8f
2:                jal          ra, 0b
3:                jal          s1, 15f
4:                jal          a7, 3b
5:                jal          t1, 10f
6:                jal          s1, 2b
7:                jal          ra, 14f
8:                jal          t1, 7b
9:                jal          ra, 5b
10:               jal          ra, 19f
11:               jal          ra, 24f
12:               jal          ra, 20f
13:               jal          ra, 21f
14:               jal          s9, 17f
15:               jal          s1, 13b
16:               jal          ra, 25f
17:               jal          ra, 4b
18:               jal          t5, 9b
19:               jal          gp, 1b
20:               jal          sp, 18b
21:               jal          t1, 16b
22:               jal          s5, 11b
23:               jal          ra, 6b
24:               jal          ra, 27f
25:               jal          tp, 22b
26:               jal          ra, 23b
27:               lui          s0, 609245
                  lui          ra, 354551
                  blt          a2, t1, 2f
2:                sra          a4, a7, a0
                  slti         s8, a7, -342
                  andi         a4, a7, 1348
                  slti         s1, s4, 54
                  or           ra, a0, t4
                  or           zero, t2, zero
                  addi         ra, s0, -253
                  xor          a3, ra, sp
                  bgeu         s2, a6, 23f
                  bge          sp, s10, 29f
                  add          sp, a2, a1
                  slti         a3, s11, -1415
                  lui          t0, 727163
                  srl          s6, t5, t4
                  bne          s0, a0, 28f
                  slli         s2, ra, 3
                  sltu         s10, t1, s10
                  bgeu         t5, t2, 32f
                  and          s9, s8, s3
                  sltiu        zero, t2, 1026
                  auipc        t1, 557664
23:               bge          s3, t0, 29f
                  slt          s0, s8, s11
                  beq          a6, a3, 43f
                  blt          s6, a7, 42f
                  slli         s3, s5, 29
28:               ori          t0, s11, 1466
29:               and          zero, s3, a1
                  or           s0, a7, s10
                  andi         sp, a5, -884
32:               srl          t1, s4, gp
                  bgeu         s1, s7, 41f
                  auipc        ra, 193015
                  ori          a5, t5, 891
                  slli         t6, a6, 13
                  blt          t1, s2, 50f
                  lui          t6, 743649
                  bgeu         s5, ra, 49f
                  sltu         s9, zero, s2
41:               srai         s4, s11, 25
42:               slti         s0, s4, -582
43:               srl          a3, a2, s7
                  sltiu        t6, s11, -1825
                  add          a2, s0, s7
                  or           ra, s6, gp
                  and          s1, a5, t0
                  bge          s6, tp, 65f
49:               bgeu         s10, a2, 55f
50:               beq          gp, t2, 65f
                  srl          a7, a4, s8
                  addi         t6, a2, 433
                  nop
                  sra          s7, t4, a0
55:               and          zero, a7, s7
                  srli         a3, s7, 10
                  nop
                  xor          s2, s10, s3
                  ori          s3, a4, 1134
                  sub          s3, s1, t6
                  srai         s0, s0, 14
                  blt          a1, s5, 66f
                  sll          a4, ra, ra
                  xori         a4, gp, -1501
65:               srl          s3, a5, s9
66:               xor          ra, s10, a4
                  xori         a3, t1, -364
                  sra          s2, t1, s10
                  bgeu         a4, a4, 71f
                  xor          t0, t5, t3
71:               nop
                  auipc        a3, 944780
                  bgeu         t0, ra, 90f
                  ori          s1, ra, -655
                  ori          t1, t2, -1369
                  or           s8, s5, a6
                  sub          s5, s10, a4
                  srl          t4, a3, s8
                  sltu         t5, s3, t1
                  bltu         gp, s9, 88f
                  srli         a2, a1, 23
                  sra          a3, tp, s11
                  lui          s7, 844189
                  sra          s9, s7, a1
                  sltiu        a2, s2, 1884
                  bge          a7, a6, 92f
                  sub          t4, tp, t0
88:               slt          t6, s6, t1
                  nop
90:               xor          t3, s7, a2
                  slti         gp, t4, -1820
92:               srli         s3, sp, 9
                  sub          zero, t4, a5
                  srai         s2, a5, 13
                  xor          s4, a5, a1
                  slt          s8, t2, a1
                  beq          t2, tp, 98f
98:               xor          a2, s9, a0
                  bltu         sp, sp, 110f
                  xor          s5, tp, gp
                  xor          a5, s5, s3
                  bne          gp, t1, 108f
                  bltu         s9, a4, 120f
                  bgeu         s7, t0, 114f
                  add          s2, s9, s1
                  sll          s6, s3, gp
                  bltu         t0, s4, 124f
108:              slli         t6, ra, 7
                  slti         s2, t0, -393
110:              nop
                  bltu         t2, s2, 113f
                  blt          sp, t6, 124f
113:              xori         s9, a1, -1490
114:              addi         a2, zero, 389
                  nop
                  add          t4, a6, s1
                  and          a0, a3, s2
                  xor          s5, s4, t4
                  addi         t6, t2, -1800
120:              nop
                  srli         a4, a1, 22
                  andi         a2, s11, 1193
                  slti         s1, t0, 546
124:              bltu         s1, t0, 127f
                  srl          s6, a0, s9
                  sll          ra, s6, a6
127:              bltu         s4, a7, 130f
                  sltiu        s11, t5, 1059
                  addi         sp, sp, 1012
130:              and          a4, zero, a5
                  andi         a2, s6, -207
                  or           a5, t2, a4
                  sltu         t4, a7, s8
                  sll          a3, s1, a1
                  srl          s7, a4, ra
                  slt          s11, s11, s3
                  sltu         s3, s2, a4
                  sub          s0, t5, s2
                  srai         s2, a2, 29
                  sltu         zero, a5, ra
                  lui          s0, 278050
                  nop
                  bgeu         t5, s11, 163f
                  bne          t2, a2, 161f
                  sltu         s7, a1, s2
                  add          zero, t4, s1
                  nop
                  srli         t0, s10, 6
                  srli         a4, s4, 13
                  slli         a4, t2, 31
                  srai         a7, t0, 15
                  auipc        s2, 398110
                  sub          s3, s9, a6
                  bltu         s6, ra, 167f
                  xori         s2, a7, -1350
                  bne          s8, s8, 167f
                  srai         s2, s9, 8
                  xori         gp, t5, 548
                  add          s9, sp, s8
                  bgeu         tp, s3, 166f
161:              bge          a1, t5, 167f
                  sltiu        a0, s6, -235
163:              addi         a4, t6, 587
                  sltiu        t0, a6, 22
                  or           a2, a7, t4
166:              blt          ra, a3, 184f
167:              bge          s10, a7, 184f
                  sub          s3, t6, s2
                  bgeu         a1, a7, 184f
                  lui          s6, 299309
                  bltu         s8, a1, 183f
                  bge          s11, t1, 180f
                  blt          a1, gp, 176f
                  and          s2, t6, sp
                  beq          a6, s1, 181f
176:              bltu         t6, s3, 194f
                  addi         s8, s2, 792
                  srli         tp, s2, 5
                  ori          s8, s6, -1852
180:              sll          s3, a7, t2
181:              add          zero, s2, s4
                  srl          ra, s7, t4
183:              addi         s1, t3, -314
184:              bgeu         t1, a2, 201f
                  sltu         s5, gp, a3
                  add          sp, s7, t6
                  auipc        s8, 254129
                  blt          s1, ra, 198f
                  srl          a7, s7, tp
                  addi         s2, a3, -1524
                  sltu         s9, gp, t6
                  and          ra, t1, t1
                  srli         gp, t4, 29
194:              bltu         s3, t6, 202f
                  sltiu        a7, t2, 1048
                  auipc        s8, 163419
                  slti         s6, zero, -1202
198:              andi         a7, a7, 1923
                  sll          gp, s7, t4
                  addi         s3, zero, 994
201:              xori         s0, s0, 1997
202:              sra          a4, s9, t2
                  bge          s5, s5, 223f
                  beq          s9, t0, 206f
                  andi         a3, s2, 369
206:              blt          a3, s4, 208f
                  sltiu        s4, s5, -67
208:              addi         s5, a3, 204
                  srli         a4, s4, 10
                  auipc        a2, 812934
                  bne          s10, t2, 224f
                  xor          ra, s9, s1
                  sltiu        s5, a5, 1081
                  bne          s0, a6, 226f
                  nop
                  blt          s3, t2, 232f
                  addi         a3, zero, 1672
                  xori         t4, s10, 565
                  bgeu         s11, a1, 236f
                  bltu         t4, t3, 221f
221:              bltu         a3, s7, 224f
                  bgeu         a4, s7, 223f
223:              slti         sp, s1, 92
224:              sra          tp, s4, t6
                  slti         t0, t2, -632
226:              slti         s3, s6, -1652
                  slti         tp, a4, -1299
                  bne          t6, t5, 234f
                  addi         s4, tp, -720
                  sll          s2, s4, a7
                  addi         a2, zero, 736
232:              blt          a3, a3, 236f
                  xori         a3, tp, -568
234:              add          t5, s0, a1
                  sra          t5, s5, t5
236:              xor          a4, gp, t1
                  xor          a4, a3, s0
                  sra          s9, s8, zero
                  sltu         s7, s11, s2
                  bne          a4, a0, 253f
                  beq          s11, a4, 251f
                  xori         s1, s10, -1695
                  sra          t6, t5, s7
                  sltiu        s3, s11, 1426
                  or           t5, t2, tp
                  or           s8, s3, s9
                  bltu         s7, ra, 253f
                  srai         s7, s7, 25
                  slti         s5, t3, 1566
                  andi         s0, s7, -1257
251:              sltiu        a0, s2, 1785
                  slli         s3, s6, 16
253:              lui          sp, 891862
                  lui          s11, 334385
                  sub          s6, a5, t3
                  bge          s11, s4, 268f
                  bge          ra, s11, 265f
                  bne          t5, t4, 264f
                  ori          a3, a0, 1833
                  sra          s11, a7, t5
                  slt          s9, s10, a7
                  add          t3, t4, s7
                  beq          tp, a6, 264f
264:              sltu         s5, a1, a0
265:              srai         a7, t5, 19
                  and          s4, t5, s11
                  slli         s2, s1, 4
268:              bltu         ra, s8, 285f
                  nop
                  sub          s2, zero, s3
                  sltiu        s7, s1, -342
                  slti         ra, a1, -348
                  srl          tp, s0, s6
                  lui          a4, 694296
                  sra          a3, s10, a0
                  sltiu        s3, s10, -1634
                  bne          s4, ra, 285f
                  slli         tp, a6, 21
                  blt          a6, s6, 281f
                  bgeu         a7, a2, 283f
281:              xori         t4, t6, 1566
                  or           s4, t6, s11
283:              blt          s11, s10, 296f
                  and          s1, a3, s11
285:              auipc        s3, 425847
                  and          t5, t2, a2
                  srl          s11, ra, a1
                  add          t6, a0, s11
                  or           s9, t1, a0
                  ori          s3, s2, -325
                  auipc        sp, 971693
                  srli         gp, a2, 18
                  sub          s5, s1, a1
                  addi         gp, s3, -471
                  auipc        s10, 843728
296:              bne          s7, s3, 300f
                  beq          a6, t1, 307f
                  sltiu        s4, gp, -189
                  slti         sp, s5, -633
300:              sll          s7, s6, s3
                  ori          s5, s5, 1623
sub_3_4:          jal          t1, 23f
0:                jal          ra, 15f
1:                jal          a7, 4f
2:                jal          t1, 9f
3:                jal          ra, 28f
4:                jal          s10, 11f
5:                jal          t1, 21f
6:                jal          ra, 14f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 13f
10:               jal          t1, 1b
11:               jal          ra, 3b
12:               jal          ra, 2b
13:               jal          t1, 19f
14:               jal          s2, 22f
15:               jal          ra, 8b
16:               jal          t0, 24f
17:               jal          gp, 12b
18:               jal          ra, 29f
19:               jal          a4, 27f
20:               jal          ra, 18b
21:               jal          t1, 20b
22:               jal          t1, 16b
23:               jal          tp, 7b
24:               jal          sp, 25f
25:               jal          s10, 5b
26:               jal          ra, 17b
27:               jal          ra, 0b
28:               jal          gp, 26b
29:               nop
                  sub          s2, t3, s10
                  andi         ra, t2, 1424
                  slli         s4, s4, 26
                  or           a3, gp, sp
                  sltiu        s9, a6, 656
307:              bltu         a4, tp, 324f
                  addi         a7, ra, 1322
                  andi         s6, sp, -949
                  auipc        a2, 680878
                  slt          a4, zero, a2
                  slti         s11, s2, 745
                  slli         ra, s8, 0
                  xor          t5, sp, ra
                  sltu         s3, a4, s10
                  sltiu        sp, sp, 1691
                  sra          s3, t0, s8
                  add          a4, t5, t5
                  auipc        s10, 640426
                  auipc        s9, 723135
                  add          t5, a5, s0
                  lui          a5, 987663
                  srai         s2, a2, 14
324:              sub          t6, s3, tp
                  slli         s11, s1, 27
                  sub          a2, gp, ra
                  srai         t0, a4, 30
                  bltu         s7, t2, 348f
                  add          a5, tp, zero
                  ori          t3, s0, -310
                  ori          a7, a7, 720
                  slti         a5, a4, -120
                  xori         t6, s4, -1718
                  slti         s8, a2, -1119
                  add          t0, a1, s1
                  beq          s2, a6, 353f
                  slti         s6, sp, 602
                  slti         zero, a0, -1371
                  addi         s0, zero, 819
                  bltu         s8, a4, 358f
                  bne          a1, s5, 342f
342:              bge          t3, zero, 354f
                  andi         t0, s11, -202
                  and          t4, s3, s9
                  slli         a7, sp, 12
                  srl          s2, t1, t3
                  auipc        t5, 181889
348:              lui          a2, 306214
                  sub          s4, t2, tp
                  sltiu        s7, s3, -1885
                  lui          a7, 409463
                  auipc        gp, 330428
353:              blt          gp, a7, 355f
354:              add          zero, t0, a3
355:              blt          s5, s11, 373f
                  blt          zero, s11, 362f
                  ori          s2, s9, 1889
358:              auipc        t4, 773313
                  slli         t3, a7, 7
                  ori          t5, s3, -425
                  srli         a7, s4, 30
362:              addi         a0, s3, 1110
                  ori          a7, s7, 1231
                  srl          s6, gp, t4
                  lui          t5, 915299
                  xor          s1, s6, s2
                  sltu         s10, s5, sp
                  nop
                  sra          tp, t3, s11
                  srl          s7, s4, a2
                  slli         s4, s5, 10
                  srli         s6, s11, 18
373:              slli         t6, gp, 17
                  ori          t3, s9, -921
                  srl          tp, s5, t0
                  sll          s5, s9, s2
                  sltiu        ra, s3, 1991
                  sra          a5, s7, s3
                  beq          zero, t5, 389f
                  sltu         s9, s3, t3
                  xor          s8, tp, t1
                  auipc        s0, 221962
                  slt          tp, a0, ra
                  ori          s5, gp, 1931
                  auipc        t6, 427668
                  addi         a3, s10, -1576
                  sltu         s7, a3, ra
                  beq          zero, s11, 403f
389:              bltu         s1, t1, 392f
                  bne          s8, s4, 403f
                  sub          t3, s7, a3
392:              nop
                  srl          t1, s10, a7
                  xor          s6, gp, s10
                  beq          s5, gp, 411f
                  sra          a0, t2, s9
                  slti         s0, s8, 1237
                  blt          t0, a6, 411f
                  lui          s0, 460719
                  bge          a1, a6, 406f
                  beq          a1, t5, 412f
                  slt          sp, a6, a5
403:              slti         s7, s1, -1647
                  srli         s3, sp, 18
                  slli         s1, s1, 17
406:              add          s4, a7, a5
                  bge          s11, t3, 424f
                  beq          s7, zero, 419f
                  bne          s6, a6, 422f
                  or           t6, s9, s10
411:              addi         s11, zero, -952
sub_3_12:         jal          t1, 10f
0:                jal          t1, 2f
1:                jal          s1, 4f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          ra, 6f
5:                jal          ra, 8f
6:                jal          sp, 7f
7:                jal          s9, 5b
8:                jal          t1, 3b
9:                jal          t1, 11f
10:               jal          t1, 1b
11:               slt          t1, t1, t4
412:              ori          t1, a2, 1313
                  slt          s5, t5, s4
                  bgeu         s9, s9, 420f
                  sra          t5, t3, a3
                  nop
                  bgeu         tp, s7, 427f
                  sltiu        s10, t2, -264
419:              auipc        zero, 814275
420:              or           s2, t0, s3
                  srai         a3, s9, 2
422:              slli         s6, s8, 4
                  srli         s0, t5, 30
424:              bltu         s5, ra, 442f
                  nop
                  slli         a4, ra, 4
427:              sub          s4, gp, s9
                  andi         s5, s6, 612
                  xori         s4, s7, -1177
                  bltu         t4, s9, 436f
                  srai         s3, a5, 23
                  slt          s3, ra, a0
                  blt          t0, s5, 450f
                  slli         ra, t0, 17
                  blt          s2, t4, 452f
436:              beq          zero, a6, 438f
                  auipc        s10, 936643
438:              lui          s1, 780449
                  slli         ra, t5, 13
                  sub          s3, t6, s2
                  addi         t6, a2, -1116
442:              add          s5, t3, s2
                  slli         s1, sp, 12
                  nop
                  bltu         a4, a4, 449f
                  bne          gp, s6, 448f
                  sltu         s0, s11, zero
448:              auipc        s10, 987244
449:              srl          s0, s9, a3
450:              bne          sp, t0, 463f
                  or           s0, s0, s4
452:              slti         zero, t0, 767
                  andi         t5, s10, 555
                  lui          s2, 785449
                  bne          s8, ra, 461f
                  beq          t4, a2, 476f
                  ori          s1, t2, -637
                  slti         s0, a1, -127
                  slt          a0, ra, a6
                  sltiu        a0, s10, 862
461:              and          s4, tp, s11
                  nop
463:              sll          a0, gp, a2
                  sltu         ra, sp, gp
                  ori          ra, zero, -1939
                  or           a2, a4, s0
                  auipc        a4, 1007303
                  andi         s2, s0, -975
                  add          s5, s7, s4
                  bge          t1, a2, 478f
                  nop
                  sub          a2, sp, s9
                  slti         a2, t6, -1126
                  blt          s9, sp, 490f
                  addi         tp, s0, -1340
476:              sra          t5, s2, s8
                  beq          a3, tp, 492f
478:              xor          t0, a0, s6
                  bgeu         t2, tp, 492f
                  auipc        s4, 938687
                  sltu         t3, a1, s8
                  xori         s4, s8, 417
                  xor          t1, a6, t4
                  sltu         s1, s11, s2
                  slt          s6, s11, a5
                  add          t6, gp, tp
                  xori         t5, s11, -1976
                  srl          a2, s1, t4
                  bne          t0, s7, 501f
490:              bltu         t0, s2, 491f
491:              add          a4, a2, s6
492:              slli         s7, a2, 16
                  srai         tp, s8, 11
                  sltiu        a7, s1, 734
                  slti         a4, s4, -407
                  xor          t1, s10, s7
                  sub          s6, zero, a2
                  add          gp, t5, s11
                  sltiu        s10, a5, 234
                  slli         t0, s0, 18
501:              beq          a5, t4, 518f
                  blt          ra, s11, 519f
                  sra          a7, s2, s6
                  blt          s4, t5, 507f
                  ori          s4, a5, -1859
                  sub          a3, t5, ra
507:              srli         t4, s0, 31
                  or           a2, t5, a7
                  nop
                  andi         t3, sp, -1631
                  bgeu         s9, t2, 519f
                  ori          s10, t0, -435
                  slti         s0, t1, -1015
                  la           gp, sub_4
                  srli         s4, s2, 4
                  addi         gp, gp, 532
                  ori          s6, gp, 1559
                  xori         s4, a4, -1037
                  xor          a2, gp, a3
                  srl          s5, a4, a7
                  sub          a4, sp, a0
                  beq          a1, a4, sub_3_j6 #branch to jump instr
                  ori          t4, s3, -570
                  or           s9, s4, s7
sub_3_j6:         jalr         t1, gp, -531 #jump sub_3 -> sub_4
                  bltu         s6, a4, 523f
                  srl          a2, gp, a0
                  ori          zero, tp, -534
                  bne          t0, s7, 519f
                  srai         a5, a1, 27
518:              sltiu        s10, t6, 1302
519:              slli         zero, s0, 10
                  bgeu         sp, s5, 521f
521:              bltu         a4, t1, 539f
                  sra          gp, t6, gp
523:              sll          t3, sp, a6
                  ori          a5, a3, 2007
                  sltu         s11, a3, t1
                  slli         t1, a6, 20
sub_3_1:          jal          t1, 18f
0:                jal          t1, 20f
1:                jal          a0, 3f
2:                jal          ra, 19f
3:                jal          t3, 7f
4:                jal          t5, 17f
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          ra, 0b
8:                jal          s4, 10f
9:                jal          tp, 16f
10:               jal          ra, 11f
11:               jal          a7, 4b
12:               jal          s8, 5b
13:               jal          a7, 8b
14:               jal          t1, 15f
15:               jal          ra, 2b
16:               jal          ra, 6b
17:               jal          s11, 12b
18:               jal          sp, 13b
19:               jal          t1, 1b
20:               auipc        a7, 158128
                  blt          gp, s6, 533f
                  blt          t0, t5, 540f
                  auipc        s5, 255970
                  xori         t3, t0, 2045
                  slt          t6, s10, s0
                  srai         s9, a7, 26
533:              bgeu         s3, t0, 550f
                  nop
                  blt          a7, t5, 548f
                  sltiu        a7, a1, 845
                  xori         s5, zero, 1584
                  xori         s10, t0, 852
539:              xori         zero, sp, 462
540:              xori         s1, gp, 1000
                  sltu         s9, t5, s0
                  ori          t5, s1, 1623
                  or           t0, t6, s3
                  srli         t5, zero, 6
                  srli         sp, s1, 31
                  bgeu         a0, s11, 556f
                  beq          sp, s2, 564f
548:              sltiu        a7, ra, 1169
                  bgeu         t3, a2, 566f
550:              bltu         a6, a5, 563f
                  slti         s6, a1, 1231
                  addi         s5, s11, 1157
                  nop
                  and          s11, t6, ra
                  ori          s9, s0, 1652
556:              xor          s7, s1, a5
                  sra          s6, s0, s7
                  bltu         t0, s3, 564f
                  and          a4, s10, s5
                  ori          t6, zero, 336
                  sltiu        s8, a3, -1720
                  beq          a3, s2, 568f
563:              beq          t3, s4, 565f
564:              auipc        s5, 885798
565:              add          s10, t1, a0
566:              beq          ra, a2, 569f
                  or           s6, a5, a6
568:              add          s4, a2, s2
569:              bge          t0, s3, 582f
                  and          s2, ra, t3
                  slli         s2, t2, 23
                  bge          t6, t6, 590f
                  addi         s6, t1, 1126
                  sll          a4, t4, t4
                  beq          s1, s8, 595f
                  sll          zero, s7, s5
                  srl          a0, t5, s6
                  add          s3, s7, t2
                  andi         s10, t4, -1353
                  srai         ra, ra, 31
                  slt          t6, ra, s3
582:              or           s4, t0, t6
                  srl          t6, a7, zero
                  sll          tp, s4, s8
                  sltu         t0, t3, a3
                  sra          s2, s7, t0
                  sub          s6, s5, s3
                  or           s7, s2, tp
                  slt          a3, a4, a4
590:              and          gp, s6, s10
                  or           a5, a5, s10
                  srai         a3, sp, 10
                  sll          s1, s5, t6
                  and          s5, s6, s6
595:              bltu         tp, s9, 596f
596:              andi         a2, s7, -1299
                  ori          s9, s8, 1288
                  ori          zero, t1, -38
                  sub          s1, tp, s10
                  blt          tp, sp, 606f
                  sltiu        a3, tp, 1518
                  add          a3, t4, a5
                  and          s8, s11, a4
                  slti         t1, tp, 736
                  bltu         a2, s6, 606f
606:              slt          t5, t6, s11
                  srai         s3, t3, 15
                  sltu         s5, s11, sp
                  xor          a0, a2, sp
                  blt          s7, s4, 622f
                  slti         sp, s5, -1354
                  blt          a4, zero, 628f
                  slt          s3, a0, t1
                  bge          gp, ra, 618f
                  addi         sp, s4, 1846
                  auipc        t3, 4549
                  slti         s0, s7, 1332
618:              bge          a3, a1, 628f
                  srli         s11, s0, 21
                  sltiu        s2, s9, 10
                  auipc        t1, 164990
622:              addi         s3, t4, -1995
                  bne          gp, t3, 629f
                  sll          gp, t0, a5
                  ori          t1, t6, 1806
                  sub          gp, sp, s10
                  blt          s8, s11, 630f
628:              bge          zero, a0, 640f
629:              slli         t1, t0, 25
630:              srai         s5, a3, 14
                  add          t3, a0, a2
                  nop
                  nop
                  sltiu        s0, a4, -614
                  srai         s7, s5, 7
                  bgeu         gp, s2, 644f
                  slli         s3, s4, 14
                  and          a4, ra, t1
                  add          a2, a3, gp
640:              srl          tp, gp, s1
                  addi         a2, s1, -1761
                  addi         s4, s6, -861
                  bgeu         s5, s9, 660f
644:              srai         s6, s9, 4
                  sra          s7, gp, sp
                  bne          ra, a1, 661f
                  sltiu        zero, s2, 1646
                  bge          t1, t0, 666f
                  lui          a0, 467824
                  bgeu         s9, s8, 658f
                  srai         t0, a1, 16
                  addi         gp, a5, 314
                  nop
                  addi         s3, a0, -581
                  slti         s9, t2, 906
                  lui          a7, 191956
                  andi         a7, s8, -1925
658:              sra          ra, a7, a6
                  andi         t0, s11, 330
660:              blt          t6, a4, 671f
661:              slti         sp, tp, 1110
                  blt          a1, sp, 664f
                  sub          s2, s11, s8
664:              bge          s2, t6, 667f
                  sra          s3, t2, s10
666:              lui          a3, 269899
667:              nop
                  srl          t3, a2, s11
                  srli         s4, s11, 15
                  nop
671:              bne          a1, s8, 682f
                  srli         t1, s0, 5
                  srl          tp, sp, a3
                  bne          t6, s2, 687f
                  srli         t5, a2, 25
                  andi         tp, t2, 190
                  ori          s9, t2, -1428
                  lui          a3, 140000
                  sltiu        s6, s3, -1479
                  add          a3, tp, s9
                  sub          zero, s3, s10
682:              xor          sp, a3, s5
                  addi         a3, s10, -540
                  sra          sp, t3, s1
                  srai         s6, t3, 13
                  add          t6, t6, s11
687:              blt          s1, t1, 689f
                  bgeu         s10, zero, 689f
689:              bgeu         a3, a5, 701f
                  slti         ra, sp, -1887
                  bgeu         a1, a7, 708f
                  xor          a5, a3, s9
                  sub          s4, sp, a0
                  xor          a4, s10, t6
                  sub          s9, a5, a1
                  bgeu         s6, s0, 702f
                  sub          s0, s5, t3
                  bgeu         sp, s10, 704f
                  bgeu         t3, s4, 701f
                  bge          s3, a7, 708f
701:              andi         s2, s3, 1498
702:              auipc        s6, 341131
                  beq          s10, s10, 713f
704:              sll          gp, t6, zero
                  lui          a4, 120212
                  sltiu        s9, sp, -1118
                  bne          s7, a7, 724f
708:              sub          s11, ra, s6
                  addi         zero, a3, -1721
                  beq          s10, s9, 725f
                  sltu         s6, a7, s8
                  and          s11, a4, a6
713:              xori         s7, a5, 1940
                  xori         a3, s11, 631
                  slti         t6, a7, 30
                  srli         s0, sp, 11
                  bne          s2, s6, 729f
                  blt          t2, ra, 736f
                  andi         s11, s1, -159
                  sltu         gp, t0, s4
                  and          s0, a7, t3
                  bltu         s7, a0, 730f
                  nop
724:              sra          s1, a3, t0
725:              andi         a0, t4, -1480
                  bgeu         ra, a0, 729f
                  addi         s0, s7, -2025
                  andi         s0, s11, 865
729:              sltu         gp, s10, t4
730:              sra          s5, s5, s7
                  sltiu        s4, t5, 556
                  xori         a4, s0, 552
                  add          s4, zero, tp
                  lui          s8, 707411
                  xor          t0, t0, a5
736:              srai         s1, sp, 5
                  nop
                  bge          s4, s3, 741f
                  bgeu         s8, s4, 741f
                  bne          zero, t6, 741f
741:              sltu         s4, s0, t4
                  sltiu        s3, a6, 1811
                  lw           t1, 4(a1)
                  lui          t6, 336309
                  addi         a1, a1, 36
                  slli         s3, t5, 24
                  sub          sp, s1, t2
                  ori          t0, tp, 397
1130:             addi x22, x6, 0
1130:             jalr x22, x22, 0
sub_4:            or           zero, s0, s0
                  nop
                  or           t6, s10, s2
                  addi         a1, a1, -64
                  slti         tp, a6, -1031
                  sw           t1, 4(a1)
                  lui          gp, 315915
                  srli         a3, zero, 22
                  slti         t0, s3, -1234
sub_4_2:          jal          t1, 9f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          s10, 0b
3:                jal          t1, 6f
4:                jal          ra, 17f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          ra, 13f
9:                jal          ra, 15f
10:               jal          s0, 14f
11:               jal          ra, 2b
12:               jal          t1, 10b
13:               jal          t1, 5b
14:               jal          ra, 4b
15:               jal          t1, 8b
16:               jal          t0, 1b
17:               sltiu        a5, s1, 279
sub_4_0:          jal          t1, 0f
0:                jal          ra, 10f
1:                jal          gp, 6f
2:                jal          t1, 4f
3:                jal          ra, 13f
4:                jal          t1, 17f
5:                jal          ra, 9f
6:                jal          ra, 2b
7:                jal          ra, 14f
8:                jal          ra, 19f
9:                jal          t1, 11f
10:               jal          s11, 16f
11:               jal          gp, 15f
12:               jal          ra, 3b
13:               jal          ra, 18f
14:               jal          ra, 5b
15:               jal          ra, 8b
16:               jal          ra, 12b
17:               jal          t1, 7b
18:               jal          ra, 1b
19:               xor          s5, a7, a2
sub_4_1:          jal          t1, 18f
0:                jal          t1, 1f
1:                jal          ra, 19f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          s5, 14f
6:                jal          s7, 10f
7:                jal          t1, 12f
8:                jal          a0, 6b
9:                jal          t1, 7b
10:               jal          ra, 16f
11:               jal          s5, 15f
12:               jal          ra, 13f
13:               jal          ra, 8b
14:               jal          gp, 9b
15:               jal          t1, 17f
16:               jal          t0, 11b
17:               jal          t1, 4b
18:               jal          ra, 2b
19:               and          t0, a6, s9
                  addi         t1, s3, 1743
                  addi         s7, s8, -675
                  slli         s10, s10, 4
                  bltu         t5, s5, 6f
                  sra          a2, s9, s3
                  ori          s5, s6, 1111
6:                ori          a5, tp, 393
                  slti         s4, t3, -1776
                  blt          zero, a6, 14f
                  sra          t5, zero, a6
                  xori         s1, s1, -29
                  blt          t5, s4, 17f
                  and          tp, t3, t3
                  slti         s11, s3, -1501
14:               xor          a4, a0, t6
                  srl          s7, t2, a7
                  and          s4, t5, s1
17:               xori         gp, t4, -5
                  beq          s7, tp, 28f
                  sra          t0, t1, a7
                  and          t6, t0, t0
                  bltu         t4, a4, 31f
                  slt          s1, a7, a1
                  slt          sp, t3, t4
                  sltiu        sp, s2, -840
                  bne          sp, sp, 35f
                  beq          s7, s11, 41f
                  ori          s3, s11, 1691
28:               srai         s7, sp, 29
                  slti         s2, a5, 288
                  slti         s9, ra, 956
31:               sub          s9, t2, gp
                  bltu         ra, ra, 52f
                  sltu         zero, tp, s8
                  sltu         s1, t1, s1
35:               sltiu        s3, sp, 124
                  sltiu        zero, t6, -1583
                  srli         s11, t2, 28
                  xori         a7, a2, -1562
                  andi         s6, t4, 1425
                  slli         t1, s9, 15
41:               bgeu         s11, t6, 52f
                  ori          t3, a6, -1827
                  or           s9, a4, a4
                  sltu         t4, sp, t6
                  bltu         s7, s3, 60f
                  beq          t3, a1, 62f
                  sltu         s5, ra, t6
                  sltu         s11, sp, a6
                  andi         s11, a7, -1834
                  sll          s9, t6, a6
                  bge          s9, gp, 71f
52:               auipc        s5, 402833
                  lui          s8, 216656
                  bltu         t4, a2, 65f
                  xori         s4, a2, -1818
                  xori         s7, s9, -1223
                  andi         ra, s7, -120
                  add          s7, a1, a0
                  and          tp, s4, s5
60:               sub          tp, s7, s7
                  ori          zero, s7, 1816
62:               srai         a5, t5, 17
                  srli         ra, zero, 10
                  srl          s2, t0, s9
65:               xor          s1, t5, gp
                  beq          ra, t5, 82f
                  bne          tp, s11, 87f
                  srai         t3, t3, 20
                  srai         s6, zero, 14
                  and          s11, s11, a6
71:               srli         s5, sp, 28
                  addi         s5, s10, 838
                  blt          ra, gp, 81f
                  bge          a6, s6, 89f
                  srl          a7, s0, s4
                  sll          s6, t4, s6
                  add          gp, ra, s0
                  andi         s4, gp, 817
                  bltu         t2, gp, 86f
                  addi         t0, s10, -847
81:               ori          s3, s1, -1906
82:               slli         t5, s1, 2
                  srl          s1, a7, a5
                  slti         a5, s4, -434
                  beq          a5, zero, 97f
86:               blt          t2, t4, 105f
87:               nop
                  bne          a6, s6, 96f
89:               sll          a5, s9, a7
                  srai         s5, zero, 11
                  xori         s2, t5, 513
                  sll          s8, ra, t1
                  srl          t5, s5, gp
                  bgeu         a3, a1, 108f
                  addi         t5, t5, -1890
96:               bltu         a2, a0, 115f
97:               ori          a2, t0, 298
                  blt          s4, t2, 99f
99:               srai         s2, ra, 8
                  lui          s6, 850633
                  srli         s10, a7, 15
                  slti         zero, s0, 1199
                  srli         gp, s5, 11
                  ori          t4, t2, 1426
105:              beq          t1, t0, 113f
                  addi         t6, ra, -849
                  bltu         s5, t1, 121f
108:              sltu         tp, zero, a0
                  xori         s10, a7, -1020
                  xori         t3, t6, -1111
                  add          s10, a0, a2
                  slt          s6, s7, a3
113:              blt          s9, t3, 132f
                  srai         s5, s11, 6
115:              bge          a4, a0, 121f
                  srl          s6, zero, a2
                  slti         s5, s4, 1735
                  andi         s5, zero, -1202
                  slti         s1, t6, 364
                  addi         t6, s8, 343
121:              slt          s4, s4, t0
                  srai         s6, s1, 6
                  xor          t1, s4, a1
                  addi         s2, a0, -855
                  bne          s5, s11, 143f
                  andi         t0, s8, -102
                  srai         s1, s2, 21
                  blt          sp, t1, 147f
                  sra          s3, t2, s6
                  blt          a0, s2, 133f
                  sra          s6, a6, s3
132:              add          s7, s5, a0
133:              sltiu        ra, s3, -9
                  srli         zero, t0, 23
                  or           gp, a0, a6
                  nop
                  nop
                  and          a4, s0, t1
                  sltiu        s6, s10, 1791
                  nop
                  lui          t6, 412018
                  srai         t1, t1, 1
143:              addi         a7, a2, -1721
                  add          s11, a4, s1
                  sra          s8, a5, t6
                  ori          s2, s7, -238
147:              xor          s9, t4, t3
                  srl          t0, a0, sp
                  andi         t0, t4, -547
                  lui          a2, 941473
                  xori         a5, a6, -633
                  lw           t1, 4(a1)
                  slti         s8, s3, -1184
                  addi         a1, a1, 64
                  srli         s1, s8, 2
                  auipc        a2, 783752
227:              addi x3, x6, 1
227:              jalr x3, x3, 0
sub_1:            nop
                  sra          a3, s3, zero
                  bgeu         t5, a0, sub_1_stack_p
                  sltu         s8, t6, s1
                  srli         s2, t2, 8
                  sltiu        s4, a0, 692
                  sra          a3, a3, t0
                  sll          s1, t1, s7
                  auipc        t5, 448737
sub_1_stack_p:    addi         a1, a1, -60
                  sw           t1, 4(a1)
                  addi         s4, s7, 1731
                  sltu         s8, a6, s5
                  slti         t5, a2, -2040
                  sub          s6, s10, t1
                  andi         s7, t3, 98
                  ori          s9, a6, 434
                  addi         t0, zero, -1443
                  slti         s11, s0, -1491
                  slli         tp, a4, 29
                  sra          a7, t5, s10
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sltu         t5, t2, t2
                  slti         t0, t1, -1511
                  slli         s8, s8, 14
                  xor          s11, s7, s7
                  sra          s6, s1, t4
                  lui          s2, 696536
                  srl          t4, t4, t6
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sub          s9, sp, a0
                  and          t0, s0, s7
                  addi         t6, tp, 1618
                  andi         tp, a6, 2040
                  sra          zero, a2, gp
                  and          s3, s5, t5
                  srli         s4, s8, 24
                  nop
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
sub_1_0:          jal          t1, 22f
0:                jal          a2, 11f
1:                jal          a4, 5f
2:                jal          ra, 20f
3:                jal          tp, 12f
4:                jal          ra, 8f
5:                jal          t1, 17f
6:                jal          t3, 15f
7:                jal          ra, 25f
8:                jal          sp, 7b
9:                jal          ra, 6b
10:               jal          ra, 4b
11:               jal          ra, 9b
12:               jal          ra, 2b
13:               jal          ra, 21f
14:               jal          t1, 13b
15:               jal          ra, 23f
16:               jal          t1, 3b
17:               jal          ra, 24f
18:               jal          ra, 10b
19:               jal          ra, 0b
20:               jal          ra, 18b
21:               jal          ra, 19b
22:               jal          t0, 14b
23:               jal          ra, 1b
24:               jal          sp, 16b
25:               or           s8, t0, s7
                  slli         sp, s7, 20
                  beq          t0, a3, 17f
                  bne          t0, t0, 22f
                  addi         s10, t3, 64
                  lui          s3, 531360
                  blt          t5, tp, 24f
                  xor          t4, s3, s9
                  sll          a4, s8, s1
                  sltu         s10, s8, s9
                  xor          s0, a2, a7
                  andi         sp, a0, 1434
                  sltu         s4, t1, a5
                  andi         a3, t4, 569
                  sltiu        a4, s7, -649
                  bltu         t4, a5, 19f
                  bgeu         t6, s3, 18f
                  bne          a2, a4, 25f
17:               slt          t1, t0, s9
18:               srl          t6, s9, t4
19:               srai         gp, tp, 28
                  addi         a4, t6, -646
                  or           s11, zero, s1
22:               sra          t6, s11, s8
                  srli         s10, t5, 14
24:               xor          t3, s7, s0
25:               beq          t6, s4, 36f
                  slli         sp, t4, 23
                  lui          t0, 622382
                  xori         a4, a6, -1830
                  beq          t2, t3, 40f
                  xori         s8, s5, 1692
                  bltu         a2, s4, 44f
                  addi         s5, t5, 150
                  sub          ra, s0, s4
                  sltiu        a3, s5, -1897
                  sltu         a2, s7, s8
36:               slti         s1, s1, 973
                  beq          t3, a5, 53f
                  slt          s8, a2, s8
                  and          sp, a1, s8
40:               bgeu         t0, t1, 41f
41:               bne          a6, zero, 46f
                  lui          s5, 909081
                  slli         tp, t6, 22
44:               add          s3, s11, zero
                  auipc        a2, 601888
46:               slli         t0, t1, 22
                  nop
                  lui          s0, 714296
                  add          s9, s2, t1
                  blt          t6, s5, 60f
                  srli         a4, a3, 25
                  sll          a7, a1, s0
53:               slt          t3, a6, sp
                  srl          s0, gp, s7
                  lui          t6, 159205
                  xor          zero, a3, t2
                  xor          gp, s11, a5
                  srli         s6, ra, 26
                  nop
60:               xor          a7, s0, a2
                  slt          s5, t4, s7
                  lui          s5, 502099
                  ori          zero, a4, 809
                  andi         a2, ra, -2040
                  sub          s0, a4, s3
                  and          s5, t3, a0
                  bgeu         s7, t6, 72f
                  blt          a3, a1, 88f
                  bgeu         s8, s5, 84f
                  srli         s10, zero, 12
                  bgeu         s9, s0, 84f
72:               andi         t1, gp, 1359
                  andi         s1, a0, -759
                  bne          s0, a7, 75f
75:               srai         t6, t1, 21
                  andi         s7, a0, -519
                  sub          s0, s7, s11
                  srai         tp, sp, 28
                  bltu         tp, s6, 80f
80:               slti         s10, t4, -398
                  auipc        s0, 86625
                  beq          s4, s11, 88f
                  or           a0, s2, t5
84:               slli         s1, t0, 24
                  add          a0, sp, s3
                  slt          a2, t6, s3
                  beq          t4, a1, 97f
88:               lui          s1, 271856
                  andi         a4, t3, -152
                  slli         s7, a2, 21
                  and          a5, a6, s10
                  srl          t4, s0, a4
                  slt          s2, t3, tp
                  srai         sp, s0, 16
                  lui          t5, 299807
                  or           a5, s3, s6
97:               xor          s9, tp, s10
                  nop
                  lw           t1, 4(a1)
                  sltiu        t3, s6, -1193
                  addi         a1, a1, 60
                  sll          s4, a1, s10
169:              addi x25, x6, 0
169:              jalr x25, x25, 0
sub_5:            bltu         a1, s8, sub_5_stack_p
sub_5_stack_p:    addi         a1, a1, -64
                  sll          s8, t6, ra
                  ori          s11, a5, -241
                  andi         a2, t0, 1146
                  sw           t1, 4(a1)
                  xor          s5, s0, s4
sub_5_0:          jal          t1, 0f
0:                jal          tp, 5f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          gp, 7f
4:                jal          t5, 11f
5:                jal          ra, 9f
6:                jal          ra, 12f
7:                jal          ra, 4b
8:                jal          a2, 10f
9:                jal          s7, 1b
10:               jal          ra, 2b
11:               jal          ra, 6b
12:               addi         a3, tp, -1909
                  srl          s9, s2, s3
                  xori         t5, s11, -519
                  sltiu        a7, a0, 113
                  srl          t6, t2, t1
                  sra          t5, a6, s3
                  bltu         s8, a0, 7f
                  and          s11, a5, gp
7:                bge          zero, gp, 21f
                  slt          ra, a7, a0
                  and          a2, s0, s9
                  ori          t5, s6, -826
                  bne          ra, a5, 30f
                  and          t3, sp, t2
                  add          s5, a1, s6
                  auipc        s4, 521168
                  or           s4, a5, s11
                  sra          ra, t0, s9
                  sll          t3, t3, s10
                  srl          s3, s0, ra
                  blt          t3, gp, 22f
                  xori         t6, a5, -1557
21:               and          s6, ra, s9
22:               sra          t3, a5, a0
                  addi         s4, s10, 1492
                  bne          t4, s4, 33f
                  lui          a3, 938089
                  and          a4, a7, t0
                  sll          s11, a7, s2
                  slli         t6, t5, 16
                  sltu         a3, s3, zero
30:               blt          s4, t4, 41f
                  srl          s2, t5, s7
                  nop
33:               bne          a2, gp, 40f
                  bge          s4, s7, 47f
                  ori          s11, a2, 1227
                  bne          a3, s10, 40f
                  sltu         a4, a5, a7
                  sra          s6, a6, ra
                  bgeu         s0, s6, 47f
40:               and          t3, a2, sp
41:               slt          s0, s6, a0
                  or           s1, s7, a3
                  sra          s1, t5, a0
                  xor          s5, s6, a7
                  and          tp, s11, s9
                  or           s7, t1, t5
47:               nop
                  xori         s5, t1, -1039
                  ori          s3, s10, -1916
                  ori          s4, a2, -955
                  auipc        s0, 373267
                  blt          s5, gp, 58f
                  srai         t5, t0, 19
                  and          s9, a4, s7
                  blt          a2, s4, 57f
                  addi         s6, t1, -1517
57:               and          a5, zero, s1
58:               sub          s0, t4, sp
                  sltiu        a0, t0, -2036
                  lw           t1, 4(a1)
                  srli         t0, t3, 30
                  addi         a1, a1, 64
                  sltu         s2, s3, a1
                  auipc        t3, 621320
86:               addi x23, x6, 1
86:               jalr x23, x23, 0
sub_2:            bltu         t0, zero, sub_2_stack_p
                  lui          sp, 87083
                  srl          sp, a4, s2
                  sltiu        tp, t1, -1287
                  xori         s9, s2, -1610
                  add          s2, t2, t5
                  xori         s1, s11, 1990
sub_2_stack_p:    addi         a1, a1, -28
                  srai         s0, a0, 14
                  sw           t1, 4(a1)
                  slli         s2, s5, 6
                  sub          s8, s5, s4
                  addi         zero, s11, 923
                  srl          s11, t0, ra
                  la           a0, sub_5
                  slti         s6, t0, 797
                  and          s2, a6, t3
                  sll          gp, s7, t2
                  addi         a0, a0, -402
                  auipc        t5, 375052
                  beq          s10, s9, sub_2_j5 #branch to jump instr
                  add          s3, a2, s7
                  srl          t6, t5, t6
sub_2_j5:         jalr         t1, a0, 402 #jump sub_2 -> sub_5
                  srli         s0, zero, 6
                  slli         s8, a4, 30
                  addi         t0, s1, 1398
                  srai         a0, t1, 18
                  slti         s10, s6, 1263
                  slli         sp, gp, 27
                  ori          a5, s5, 1726
                  sra          t3, s9, s9
                  lui          s9, 358235
                  blt          sp, s1, 27f
                  srl          a3, s10, s4
                  sra          tp, sp, a1
                  lui          t4, 445753
                  srai         t4, t3, 10
                  srl          t5, sp, t2
                  sra          s0, a2, s10
                  beq          a4, a1, 25f
                  ori          s0, t4, -807
                  addi         s9, t2, 879
                  nop
                  addi         s9, s1, -229
                  xor          t1, ra, a7
                  beq          s4, t3, 24f
                  sltiu        tp, s8, 1594
24:               bne          t0, s6, 33f
25:               or           ra, s9, t1
                  lui          a3, 712475
27:               or           t1, a0, s1
                  auipc        zero, 43688
                  xor          t4, a7, a2
                  bltu         t6, t6, 33f
                  sltiu        a4, s0, 361
                  andi         tp, tp, -1086
33:               or           t6, t1, s4
                  add          s6, a0, tp
                  slli         gp, s11, 19
                  lw           t1, 4(a1)
                  srl          s8, a0, t4
                  srai         s2, s3, 8
                  srl          t4, s2, zero
                  addi         a1, a1, 28
                  and          s4, s11, s9
                  addi         s11, s2, 1551
67:               addi x30, x6, 1
67:               jalr x30, x30, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x7, x11, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x30, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x30, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x30, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x30, x24, ecall_handler
                  li x24, 0x1
                  beq x30, x24, instr_fault_handler
                  li x24, 0x5
                  beq x30, x24, load_fault_handler
                  li x24, 0x7
                  beq x30, x24, store_fault_handler
                  li x24, 0xc
                  beq x30, x24, pt_fault_handler
                  li x24, 0xd
                  beq x30, x24, pt_fault_handler
                  li x24, 0xf
                  beq x30, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x11, x7, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
