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
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf4882a11
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xf59797fe
                  li x5, 0x0
                  li x6, 0x5
                  li x7, 0x0
                  li x9, 0xfadc7c2b
                  li x10, 0x6
                  li x11, 0xcc3f0d75
                  li x12, 0xd
                  li x13, 0xc81d9b1b
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf3d1970b
                  li x19, 0x753a2c58
                  li x20, 0xf8539b81
                  li x21, 0x2
                  li x22, 0xf6e0f964
                  li x23, 0x80000000
                  li x24, 0x5
                  li x25, 0xafe06606
                  li x26, 0xd2efdfd7
                  li x27, 0x0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x0
                  la x28, user_stack_end
main:             jal          s8, 5f
0:                jal          t1, 2f
1:                jal          gp, 8f
2:                jal          t1, 1b
3:                jal          ra, 6f
4:                jal          ra, 11f
5:                jal          t1, 0b
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          t1, 3b
11:               add          a2, s10, t6
main_14:          jal          s8, 8f
0:                jal          t1, 14f
1:                jal          a3, 16f
2:                jal          ra, 1b
3:                jal          t1, 7f
4:                jal          ra, 9f
5:                jal          t1, 13f
6:                jal          tp, 10f
7:                jal          ra, 6b
8:                jal          sp, 4b
9:                jal          t4, 5b
10:               jal          t1, 0b
11:               jal          t1, 3b
12:               jal          s8, 11b
13:               jal          ra, 15f
14:               jal          ra, 2b
15:               jal          ra, 12b
16:               slt          a3, s0, s7
main_3:           jal          s8, 2f
0:                jal          ra, 15f
1:                jal          sp, 22f
2:                jal          ra, 11f
3:                jal          t1, 6f
4:                jal          ra, 1b
5:                jal          t0, 12f
6:                jal          ra, 4b
7:                jal          sp, 10f
8:                jal          ra, 27f
9:                jal          s5, 20f
10:               jal          ra, 17f
11:               jal          t1, 14f
12:               jal          t5, 21f
13:               jal          t1, 5b
14:               jal          s3, 9b
15:               jal          ra, 8b
16:               jal          ra, 13b
17:               jal          s2, 16b
18:               jal          s8, 0b
19:               jal          s11, 25f
20:               jal          ra, 19b
21:               jal          sp, 23f
22:               jal          ra, 18b
23:               jal          ra, 3b
24:               jal          ra, 26f
25:               jal          ra, 24b
26:               jal          ra, 7b
27:               sra          tp, s5, s2
main_18:          jal          s8, 0f
0:                jal          ra, 17f
1:                jal          s10, 20f
2:                jal          ra, 24f
3:                jal          ra, 25f
4:                jal          s10, 2b
5:                jal          s11, 14f
6:                jal          gp, 23f
7:                jal          t4, 26f
8:                jal          sp, 16f
9:                jal          t5, 12f
10:               jal          t1, 8b
11:               jal          s8, 1b
12:               jal          ra, 4b
13:               jal          ra, 9b
14:               jal          t5, 3b
15:               jal          t2, 11b
16:               jal          t1, 7b
17:               jal          ra, 15b
18:               jal          t1, 22f
19:               jal          tp, 28f
20:               jal          ra, 6b
21:               jal          gp, 5b
22:               jal          s6, 19b
23:               jal          ra, 13b
24:               jal          s5, 10b
25:               jal          s7, 27f
26:               jal          ra, 21b
27:               jal          t0, 18b
28:               sltu         gp, t6, a7
main_24:          jal          s8, 17f
0:                jal          ra, 10f
1:                jal          ra, 7f
2:                jal          s10, 25f
3:                jal          ra, 0b
4:                jal          ra, 30f
5:                jal          ra, 21f
6:                jal          s10, 29f
7:                jal          t1, 26f
8:                jal          ra, 13f
9:                jal          ra, 4b
10:               jal          t0, 27f
11:               jal          ra, 23f
12:               jal          t1, 9b
13:               jal          t1, 14f
14:               jal          ra, 3b
15:               jal          ra, 28f
16:               jal          s2, 2b
17:               jal          t4, 11b
18:               jal          s11, 8b
19:               jal          t1, 6b
20:               jal          t0, 1b
21:               jal          ra, 22f
22:               jal          ra, 16b
23:               jal          ra, 5b
24:               jal          t1, 18b
25:               jal          tp, 24b
26:               jal          a0, 15b
27:               jal          ra, 19b
28:               jal          ra, 12b
29:               jal          ra, 20b
30:               sub          t0, s6, ra
main_6:           jal          s8, 9f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          sp, 11f
4:                jal          ra, 5f
5:                jal          ra, 16f
6:                jal          t1, 2b
7:                jal          t1, 8f
8:                jal          s8, 20f
9:                jal          s8, 1b
10:               jal          a7, 22f
11:               jal          sp, 21f
12:               jal          t1, 23f
13:               jal          s1, 18f
14:               jal          ra, 6b
15:               jal          ra, 19f
16:               jal          ra, 0b
17:               jal          gp, 12b
18:               jal          ra, 15b
19:               jal          ra, 7b
20:               jal          gp, 10b
21:               jal          t0, 13b
22:               jal          ra, 14b
23:               srli         a0, s7, 19
main_27:          jal          s8, 2f
0:                jal          s9, 22f
1:                jal          t1, 12f
2:                jal          s10, 3f
3:                jal          t1, 23f
4:                jal          ra, 14f
5:                jal          t1, 17f
6:                jal          ra, 24f
7:                jal          ra, 9f
8:                jal          t0, 10f
9:                jal          ra, 21f
10:               jal          s3, 6b
11:               jal          ra, 18f
12:               jal          ra, 0b
13:               jal          ra, 19f
14:               jal          ra, 16f
15:               jal          a2, 11b
16:               jal          t1, 5b
17:               jal          ra, 15b
18:               jal          ra, 13b
19:               jal          a4, 7b
20:               jal          s11, 1b
21:               jal          ra, 25f
22:               jal          ra, 4b
23:               jal          tp, 8b
24:               jal          t1, 20b
25:               sll          s7, t5, zero
main_21:          jal          s8, 11f
0:                jal          t0, 12f
1:                jal          ra, 15f
2:                jal          ra, 14f
3:                jal          t1, 10f
4:                jal          t1, 7f
5:                jal          ra, 4b
6:                jal          s8, 18f
7:                jal          s4, 19f
8:                jal          sp, 3b
9:                jal          a2, 6b
10:               jal          t1, 1b
11:               jal          t1, 2b
12:               jal          ra, 16f
13:               jal          s6, 0b
14:               jal          ra, 17f
15:               jal          t1, 9b
16:               jal          ra, 5b
17:               jal          ra, 8b
18:               jal          gp, 13b
19:               auipc        a5, 901247
main_29:          jal          s8, 0f
0:                jal          ra, 19f
1:                jal          t1, 13f
2:                jal          t1, 6f
3:                jal          ra, 21f
4:                jal          ra, 1b
5:                jal          sp, 11f
6:                jal          ra, 5b
7:                jal          ra, 23f
8:                jal          ra, 18f
9:                jal          ra, 16f
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               jal          a0, 7b
13:               jal          ra, 12b
14:               jal          s3, 15f
15:               jal          ra, 10b
16:               jal          s2, 22f
17:               jal          ra, 14b
18:               jal          ra, 9b
19:               jal          a0, 20f
20:               jal          ra, 8b
21:               jal          ra, 2b
22:               jal          t1, 17b
23:               slti         s11, t4, 277
main_2:           jal          s8, 19f
0:                jal          ra, 9f
1:                jal          tp, 6f
2:                jal          ra, 21f
3:                jal          ra, 11f
4:                jal          a2, 12f
5:                jal          t1, 17f
6:                jal          ra, 5b
7:                jal          t0, 15f
8:                jal          t1, 4b
9:                jal          t1, 20f
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               jal          ra, 3b
15:               jal          t1, 8b
16:               jal          t1, 22f
17:               jal          ra, 18f
18:               jal          tp, 0b
19:               jal          tp, 10b
20:               jal          sp, 2b
21:               jal          ra, 13b
22:               slli         s5, s8, 4
main_17:          jal          s8, 6f
0:                jal          s7, 8f
1:                jal          s10, 11f
2:                jal          ra, 15f
3:                jal          ra, 9f
4:                jal          ra, 1b
5:                jal          ra, 14f
6:                jal          ra, 3b
7:                jal          tp, 5b
8:                jal          s10, 13f
9:                jal          a4, 0b
10:               jal          ra, 2b
11:               jal          t1, 10b
12:               jal          sp, 16f
13:               jal          ra, 7b
14:               jal          ra, 4b
15:               jal          ra, 12b
16:               sll          s7, t4, sp
main_16:          jal          s8, 17f
0:                jal          ra, 11f
1:                jal          t1, 19f
2:                jal          s1, 3f
3:                jal          tp, 10f
4:                jal          ra, 24f
5:                jal          ra, 14f
6:                jal          t1, 12f
7:                jal          ra, 13f
8:                jal          t1, 22f
9:                jal          t1, 21f
10:               jal          t5, 25f
11:               jal          ra, 4b
12:               jal          a2, 2b
13:               jal          s2, 15f
14:               jal          ra, 0b
15:               jal          gp, 8b
16:               jal          ra, 7b
17:               jal          ra, 23f
18:               jal          tp, 5b
19:               jal          t1, 6b
20:               jal          ra, 16b
21:               jal          ra, 1b
22:               jal          t1, 9b
23:               jal          t1, 18b
24:               jal          ra, 20b
25:               slli         t1, t1, 17
main_1:           jal          s8, 2f
0:                jal          ra, 23f
1:                jal          ra, 9f
2:                jal          ra, 3f
3:                jal          ra, 16f
4:                jal          s3, 5f
5:                jal          s2, 14f
6:                jal          t0, 20f
7:                jal          ra, 19f
8:                jal          ra, 17f
9:                jal          t1, 0b
10:               jal          ra, 7b
11:               jal          tp, 8b
12:               jal          s7, 4b
13:               jal          t1, 11b
14:               jal          ra, 6b
15:               jal          t1, 24f
16:               jal          s9, 1b
17:               jal          s6, 15b
18:               jal          tp, 10b
19:               jal          t1, 22f
20:               jal          ra, 18b
21:               jal          s8, 12b
22:               jal          ra, 13b
23:               jal          t0, 21b
24:               ori          a4, s10, -1179
main_28:          jal          s8, 0f
0:                jal          ra, 3f
1:                jal          t6, 15f
2:                jal          t1, 7f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          t6, 14f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          t1, 2b
9:                jal          ra, 13f
10:               jal          a1, 12f
11:               jal          ra, 8b
12:               jal          t1, 1b
13:               jal          gp, 4b
14:               jal          ra, 11b
15:               auipc        a7, 25961
main_8:           jal          s8, 8f
0:                jal          ra, 19f
1:                jal          s7, 0b
2:                jal          s8, 1b
3:                jal          ra, 18f
4:                jal          ra, 17f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          tp, 13f
8:                jal          ra, 9f
9:                jal          t1, 15f
10:               jal          ra, 20f
11:               jal          t1, 16f
12:               jal          t1, 5b
13:               jal          s9, 3b
14:               jal          t1, 12b
15:               jal          t1, 2b
16:               jal          ra, 6b
17:               jal          t1, 21f
18:               jal          t1, 10b
19:               jal          ra, 7b
20:               jal          ra, 14b
21:               xori         a7, t4, 79
main_13:          jal          s8, 20f
0:                jal          ra, 18f
1:                jal          a4, 2f
2:                jal          ra, 21f
3:                jal          a4, 10f
4:                jal          ra, 26f
5:                jal          ra, 14f
6:                jal          a7, 12f
7:                jal          t1, 17f
8:                jal          t1, 13f
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          ra, 23f
12:               jal          ra, 28f
13:               jal          ra, 22f
14:               jal          t1, 6b
15:               jal          t1, 25f
16:               jal          t4, 9b
17:               jal          a4, 5b
18:               jal          ra, 16b
19:               jal          t1, 7b
20:               jal          t1, 24f
21:               jal          ra, 15b
22:               jal          ra, 29f
23:               jal          ra, 8b
24:               jal          ra, 1b
25:               jal          ra, 27f
26:               jal          ra, 0b
27:               jal          gp, 19b
28:               jal          ra, 3b
29:               srl          s8, gp, t2
main_19:          jal          s8, 12f
0:                jal          ra, 5f
1:                jal          t1, 19f
2:                jal          t1, 10f
3:                jal          gp, 18f
4:                jal          gp, 25f
5:                jal          ra, 11f
6:                jal          t1, 24f
7:                jal          t5, 26f
8:                jal          ra, 16f
9:                jal          t1, 2b
10:               jal          a4, 4b
11:               jal          ra, 13f
12:               jal          a0, 23f
13:               jal          ra, 27f
14:               jal          ra, 22f
15:               jal          ra, 9b
16:               jal          t1, 21f
17:               jal          t2, 0b
18:               jal          t1, 15b
19:               jal          t1, 3b
20:               jal          ra, 8b
21:               jal          ra, 14b
22:               jal          ra, 6b
23:               jal          t6, 7b
24:               jal          ra, 1b
25:               jal          t1, 17b
26:               jal          ra, 20b
27:               sra          s11, a7, s11
main_9:           jal          s8, 9f
0:                jal          gp, 7f
1:                jal          a5, 5f
2:                jal          t1, 4f
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          ra, 6f
6:                jal          t0, 2b
7:                jal          s2, 1b
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          gp, 0b
11:               slli         gp, t4, 19
main_26:          jal          s8, 9f
0:                jal          t1, 6f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          t1, 8f
4:                jal          ra, 2b
5:                jal          ra, 1b
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          a2, 7b
10:               jal          sp, 3b
11:               xor          s1, s9, gp
main_25:          jal          s8, 16f
0:                jal          t5, 10f
1:                jal          ra, 19f
2:                jal          ra, 13f
3:                jal          t6, 18f
4:                jal          t1, 3b
5:                jal          ra, 0b
6:                jal          ra, 28f
7:                jal          t1, 17f
8:                jal          ra, 4b
9:                jal          tp, 23f
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          s11, 2b
13:               jal          tp, 20f
14:               jal          t1, 22f
15:               jal          ra, 26f
16:               jal          s9, 24f
17:               jal          ra, 9b
18:               jal          ra, 27f
19:               jal          t1, 12b
20:               jal          s8, 6b
21:               jal          sp, 7b
22:               jal          s4, 15b
23:               jal          t1, 25f
24:               jal          ra, 21b
25:               jal          ra, 8b
26:               jal          ra, 1b
27:               jal          t0, 5b
28:               slt          ra, s5, a4
main_20:          jal          s8, 1f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          t1, 8f
5:                jal          ra, 4b
6:                jal          t1, 0b
7:                jal          s9, 5b
8:                jal          ra, 3b
9:                jal          t1, 2b
10:               xor          a0, a6, s0
main_12:          jal          s8, 12f
0:                jal          ra, 18f
1:                jal          ra, 2f
2:                jal          ra, 8f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          t0, 9f
6:                jal          t0, 16f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          sp, 15f
10:               jal          ra, 11f
11:               jal          ra, 5b
12:               jal          a7, 14f
13:               jal          a2, 6b
14:               jal          t1, 1b
15:               jal          t1, 0b
16:               jal          t1, 7b
17:               jal          ra, 13b
18:               lui          t0, 860428
main_7:           jal          s8, 8f
0:                jal          t1, 3f
1:                jal          ra, 9f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          t1, 10f
5:                jal          ra, 0b
6:                jal          ra, 11f
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          t1, 2b
10:               jal          t1, 1b
11:               addi         s3, a4, -1338
main_23:          jal          s8, 18f
0:                jal          t1, 5f
1:                jal          ra, 0b
2:                jal          t0, 16f
3:                jal          t1, 10f
4:                jal          a5, 13f
5:                jal          t1, 20f
6:                jal          ra, 12f
7:                jal          a2, 15f
8:                jal          ra, 17f
9:                jal          t1, 14f
10:               jal          ra, 9b
11:               jal          t1, 1b
12:               jal          t2, 2b
13:               jal          tp, 11b
14:               jal          ra, 8b
15:               jal          a3, 3b
16:               jal          s3, 22f
17:               jal          t0, 19f
18:               jal          ra, 7b
19:               jal          sp, 21f
20:               jal          s1, 6b
21:               jal          gp, 4b
22:               add          zero, s7, t5
main_0:           jal          s8, 16f
0:                jal          t1, 9f
1:                jal          s1, 20f
2:                jal          ra, 18f
3:                jal          s11, 5f
4:                jal          t1, 3b
5:                jal          ra, 0b
6:                jal          ra, 15f
7:                jal          t1, 14f
8:                jal          ra, 2b
9:                jal          ra, 13f
10:               jal          t1, 19f
11:               jal          t1, 1b
12:               jal          ra, 17f
13:               jal          ra, 11b
14:               jal          ra, 10b
15:               jal          ra, 7b
16:               jal          s1, 8b
17:               jal          ra, 6b
18:               jal          t1, 12b
19:               jal          ra, 4b
20:               auipc        a2, 959002
                  nop
                  nop
                  slli         s4, s5, 20
                  xor          a2, a7, zero
                  sltu         a4, a0, a7
                  srl          t2, s7, t6
                  slti         sp, ra, 159
                  srli         t6, s4, 11
                  sub          a0, a5, gp
                  sltiu        a0, s5, -1595
                  lui          s5, 904208
                  srli         a0, t6, 15
                  bge          ra, t2, 17f
                  add          s8, s9, a2
                  sll          t5, sp, s2
                  bne          s6, s3, 32f
                  auipc        zero, 204855
17:               or           s3, s5, s10
                  sra          s4, s7, sp
                  srli         a0, t3, 29
                  sra          s9, ra, s4
                  add          a7, ra, a3
                  bgeu         s5, a0, 33f
                  sra          ra, a4, a3
                  sltiu        s3, s6, -450
                  srai         zero, a3, 2
                  addi         s11, t3, 1472
                  ori          t0, a6, 759
                  auipc        s2, 854266
                  sltiu        a2, a7, -324
                  bltu         a6, s5, 49f
                  add          a2, s10, ra
32:               lui          a0, 486678
33:               lui          t0, 902769
                  bge          a2, a1, 41f
                  lui          a2, 281507
                  add          a1, a5, sp
                  slt          ra, s4, a7
                  andi         s5, s11, -1924
                  beq          t3, a6, 59f
                  sra          t1, s2, s1
41:               slt          s4, t1, t5
                  sltu         t4, a1, t6
                  auipc        t5, 54649
                  addi         s11, s10, -412
                  xor          s6, s7, s5
                  xori         t5, ra, -1099
                  nop
                  sub          s7, s3, sp
49:               slti         t0, a1, -491
                  or           t1, tp, s10
                  bltu         t4, s3, 58f
                  auipc        a1, 518283
                  xori         s3, a1, -1819
                  slti         s6, t4, -667
                  or           s9, t1, t1
                  nop
                  xor          s4, s1, s4
58:               addi         s3, s3, -1479
59:               sltiu        s11, a2, 807
                  slli         s5, s6, 31
                  addi         s6, a7, 1451
                  srli         a5, s7, 9
                  beq          s10, a4, 74f
                  srai         a5, s10, 21
                  slti         t1, a4, 163
                  andi         t6, s7, -1382
                  ori          s4, tp, 819
                  blt          t0, t3, 81f
                  andi         s11, s7, -715
                  slli         s4, sp, 11
                  nop
                  xor          s11, tp, t2
                  lui          sp, 273741
74:               lui          a4, 91720
                  ori          s7, a6, -540
                  bge          t1, a3, 79f
                  bge          s2, a4, 81f
                  addi         s3, s4, 1300
79:               xor          s10, s10, a6
                  sll          a7, a4, sp
81:               srl          t6, s0, t0
                  nop
                  sub          s9, t6, sp
                  bgeu         t5, s7, 87f
                  add          t6, ra, s1
                  slti         t2, t5, 16
87:               ori          gp, s0, -1103
                  srl          s8, a5, t1
                  slli         a4, s9, 30
                  sltu         a7, s6, a7
                  xori         s5, s8, 929
                  srl          a4, s5, sp
                  add          s1, t1, s10
                  slt          a3, s4, s10
                  bge          s10, s10, 113f
                  bge          s1, t4, 105f
                  bltu         gp, s2, 105f
                  bltu         t4, s3, 100f
                  blt          t6, s2, 111f
100:              slti         a0, ra, 782
                  addi         a5, s11, -609
                  nop
                  srli         a1, t4, 21
                  srai         s6, a7, 28
105:              bne          a2, t4, 125f
                  xori         t1, t4, -1772
                  xori         gp, t1, -486
                  slti         a4, sp, -1756
                  bltu         s0, t4, 128f
                  sltu         gp, s9, s8
111:              xori         a1, t5, 579
                  nop
113:              sltiu        a3, a6, -613
                  srl          t2, sp, a4
                  slti         s1, t2, 1896
                  srli         t6, t2, 0
                  sll          sp, t4, t2
                  srai         a7, s9, 5
                  bne          s4, s8, 124f
                  and          gp, s8, a3
                  beq          gp, s8, 122f
122:              bne          t2, a1, 130f
                  xor          s7, a5, a7
124:              bltu         s8, t4, 143f
125:              bne          t0, s7, 143f
                  sub          s1, s4, s1
                  sub          s4, s0, a4
128:              sltiu        s11, ra, -1317
                  ori          s9, sp, 1275
130:              ori          s5, s8, -1958
                  bne          a2, ra, 142f
                  addi         s8, s7, 553
                  slt          s7, a6, zero
                  and          s5, s3, s11
                  bge          t4, t6, 142f
                  bgeu         s2, s3, 151f
                  andi         s11, a2, -1734
                  srli         t1, a1, 29
                  bne          t6, a1, 152f
                  sltiu        t0, s10, -525
                  andi         s11, a1, 1946
142:              srl          s8, a3, tp
143:              bge          s6, tp, 157f
                  addi         t1, a1, 1225
                  auipc        t5, 677715
                  xor          s5, sp, s9
                  la           a3, sub_1
                  addi         a3, a3, 437
                  auipc        a4, 953537
                  slti         a1, tp, -1026
                  addi         t6, t0, -1832
                  bge          s8, a1, main_j1 #branch to jump instr
                  sltiu        s9, t0, -1394
                  slli         a0, s7, 20
main_j1:          jalr         s8, a3, -436 #jump main -> sub_1
                  sra          t5, s6, tp
                  srai         t5, s1, 20
                  bne          s0, t5, 153f
                  sub          s7, t2, a1
151:              xori         a1, s7, 14
152:              auipc        a7, 125051
153:              add          a5, a4, t6
                  bltu         zero, t1, 155f
155:              bgeu         a2, s10, 169f
                  bltu         s6, s10, 175f
157:              and          s5, t3, s7
                  slli         s1, s10, 31
                  srli         s7, s9, 19
                  sra          s3, t6, s11
                  xori         a7, a7, -1932
                  bge          t0, gp, 175f
                  auipc        a2, 870113
                  sltiu        s1, t5, 1115
                  nop
                  slli         s9, s0, 31
                  sub          s10, a5, t4
                  sub          a7, t5, t5
169:              slli         s4, tp, 24
                  slli         tp, a3, 26
                  xori         s6, s5, 328
                  lui          s3, 581736
                  andi         t2, t2, 1046
                  xori         s2, t6, -1070
175:              addi         s1, a0, -1191
                  srli         tp, s9, 18
                  sub          t2, t3, a4
                  lui          s6, 349733
                  andi         s4, s7, 429
                  srli         a3, sp, 14
                  sub          s11, a1, s2
                  and          a4, t2, s6
                  or           a1, a1, a3
                  ori          t6, a4, -1582
                  bne          t2, t3, 192f
                  srl          t5, s7, s6
                  srai         t5, s2, 9
                  slli         zero, s1, 13
                  slti         sp, t5, -1959
                  beq          t0, t2, 198f
                  or           s10, a3, t2
192:              srl          s5, a7, gp
                  or           s8, s7, t3
                  srai         t2, t6, 0
                  ori          t6, t6, -1864
                  slli         s9, a4, 31
                  xori         s1, gp, 385
198:              sub          a1, t6, s11
                  auipc        zero, 697117
                  slli         a5, s5, 7
                  sltu         a0, gp, a4
                  sra          a7, zero, s2
                  sltu         a3, s8, s5
                  slt          t1, a0, s9
                  bne          zero, s10, 213f
                  sll          ra, a3, t0
                  blt          a4, t1, 218f
                  bge          a4, gp, 212f
                  lui          s9, 803165
                  blt          s10, s9, 230f
                  xori         gp, a0, -1477
212:              ori          t4, ra, -765
213:              add          a5, a0, gp
                  add          a4, t1, a3
                  or           t6, s8, t4
                  bgeu         sp, t3, 235f
                  bne          t6, s6, 230f
218:              srai         t2, s2, 9
                  xor          s2, a7, a2
                  sra          s2, s2, s8
                  bge          gp, t0, 238f
                  xori         a3, s4, -2028
                  ori          ra, a7, 308
                  slli         s2, s0, 6
                  srli         gp, t1, 31
                  srai         t4, s2, 15
                  andi         t2, t1, 128
                  andi         t0, t5, -954
                  srli         a0, s5, 1
230:              auipc        a3, 902065
                  nop
                  nop
                  slti         s2, a4, -1138
                  slt          t4, zero, s4
235:              auipc        a3, 577370
                  auipc        a1, 734819
                  or           s8, sp, a3
238:              sub          s5, t0, s8
                  ori          t0, a0, -941
                  blt          s6, s8, 245f
                  addi         s11, gp, 1693
                  sll          t4, a0, s8
                  xor          t4, s7, s6
                  auipc        t4, 88280
245:              slt          t5, t6, t1
                  addi         t4, t3, -1698
                  auipc        s4, 57886
                  xor          s4, a2, t5
                  bgeu         s7, s1, 261f
                  or           s5, s6, s2
                  blt          t6, gp, 256f
                  sll          t2, t6, a1
                  lui          s9, 569173
                  addi         a0, s6, -1176
                  add          a4, a2, a0
256:              xor          s2, t3, s1
                  bge          t0, a0, 268f
                  beq          t1, a1, 277f
                  bltu         ra, a7, 279f
                  bne          s11, a3, 263f
261:              sltiu        zero, gp, 1677
                  nop
263:              lui          s3, 338075
                  sltiu        a2, a3, 763
                  beq          s3, s3, 283f
                  sltu         s6, s10, t3
                  add          t5, t1, a1
268:              bgeu         t0, s1, 270f
                  sra          t0, s7, t0
270:              slt          s9, a6, s6
                  and          s6, t0, s7
                  andi         s5, ra, -732
                  beq          a7, t0, 291f
                  sll          a2, s9, s2
                  bge          gp, t5, 290f
                  sra          sp, ra, s4
277:              bltu         t2, s9, 286f
                  sll          s3, s9, a3
279:              sub          sp, a1, s9
                  sltiu        a2, a0, 1021
                  bge          s0, s7, 288f
                  nop
283:              sra          t0, s5, s4
                  lui          a7, 548390
                  nop
286:              sub          a0, t0, tp
                  slli         a0, s1, 14
288:              sltiu        t4, s5, -1524
                  xor          a7, s5, t0
290:              sltu         a7, s10, a0
291:              lui          s5, 1019859
                  slli         s8, t5, 15
                  sra          s2, t5, t3
                  sub          ra, t3, a0
main_30:          jal          s8, 13f
0:                jal          s3, 7f
1:                jal          t1, 2f
2:                jal          t1, 5f
3:                jal          t1, 16f
4:                jal          ra, 3b
5:                jal          sp, 18f
6:                jal          t1, 9f
7:                jal          ra, 11f
8:                jal          ra, 0b
9:                jal          t5, 8b
10:               jal          t1, 14f
11:               jal          t2, 10b
12:               jal          ra, 1b
13:               jal          s7, 12b
14:               jal          t1, 17f
15:               jal          ra, 4b
16:               jal          ra, 6b
17:               jal          t1, 19f
18:               jal          ra, 15b
19:               jal          t5, 20f
20:               and          t4, a6, s9
                  bltu         s6, tp, 302f
                  slli         a1, s4, 2
                  bgeu         s5, sp, 301f
                  lui          t1, 131686
                  ori          s7, t6, -1554
                  bne          a4, t2, 303f
301:              and          sp, gp, ra
302:              or           s3, t1, a6
303:              sll          s1, tp, s1
                  blt          a6, s8, 315f
                  addi         t1, s5, -964
                  xori         a0, s8, 223
                  sra          s2, s9, t1
                  or           s9, sp, s4
                  and          s3, a3, t0
                  ori          s3, a3, 1377
                  xori         a0, s9, -1090
                  bne          t2, a1, 323f
                  slti         t6, s10, 1447
                  xor          a2, t6, a4
315:              srli         s9, a6, 28
                  xori         ra, s9, 388
                  xori         a5, a7, 430
                  srai         t1, t4, 27
                  auipc        a7, 871790
                  sra          s9, a6, t4
                  or           s9, s7, s8
                  blt          t1, t3, 336f
323:              auipc        s6, 437541
                  xor          a4, a7, t4
                  bge          a2, s4, 332f
                  sltiu        s3, sp, 755
                  or           a5, s1, zero
                  lui          ra, 503163
                  slti         t5, t2, 1006
                  sub          a2, s11, a5
                  bltu         t3, ra, 350f
332:              sra          s8, a6, sp
                  bne          a1, s11, 346f
                  bltu         ra, s0, 351f
                  srai         s6, t6, 31
336:              bge          a1, t4, 354f
                  sltu         s8, t6, a3
                  bge          t6, a5, 342f
                  xor          t4, zero, a0
                  beq          t0, t1, 341f
341:              add          s7, s1, a4
342:              xori         s6, a0, 1448
                  andi         tp, tp, -1841
                  xori         a1, a7, -1365
                  ori          s3, s4, -98
346:              sltu         a1, t0, s3
                  sll          t4, s6, s2
                  sltiu        s3, a3, 1926
                  lui          s2, 9634
350:              sltiu        a1, s7, -1186
351:              sltiu        ra, a2, -439
                  lui          t1, 895576
                  beq          t0, s1, 368f
354:              addi         s3, sp, -1111
                  xor          zero, s11, s5
                  add          a7, s4, s5
                  xori         t5, a6, -881
                  add          zero, s6, a1
                  sltiu        gp, t1, 354
                  addi         s5, a5, -1761
                  slt          t1, t4, a0
                  bge          a0, a1, 370f
                  srl          t4, s4, gp
                  beq          t0, zero, 371f
                  auipc        s2, 416249
                  sub          t0, a0, s4
                  bne          a1, tp, 370f
368:              slli         zero, a7, 27
                  ori          t5, s1, -229
370:              add          s10, s6, t4
371:              andi         s10, ra, 1569
                  sll          t6, s5, a4
                  addi         s5, t0, 1216
                  xor          a3, zero, a6
                  andi         tp, s1, 1856
                  sra          a5, t5, a3
                  add          s9, s10, zero
                  beq          t4, a2, 386f
                  xori         gp, s5, 1775
                  slt          s5, t2, sp
                  sll          gp, s2, s6
                  sltu         a1, a6, zero
                  blt          s10, t4, 394f
                  bgeu         s7, s5, 391f
                  sra          t0, s0, a5
386:              xori         zero, a5, 966
                  andi         s1, t0, -1147
                  or           tp, t1, a0
                  addi         a2, a1, -1822
                  slli         s5, s10, 29
391:              sub          a1, t1, tp
                  slti         t2, s6, -365
                  nop
394:              sll          sp, t4, t3
                  lui          t4, 58289
                  auipc        a7, 377853
                  sll          t6, s4, t5
                  sra          a7, s8, s4
                  lui          s3, 360020
                  xori         s6, a7, 1104
                  or           s5, a1, a7
                  and          t5, s2, s1
                  sltu         t5, tp, a7
                  slti         s5, s6, 109
                  beq          sp, sp, 418f
                  sltiu        s8, a0, 1354
                  bgeu         a3, t6, 409f
                  xor          a2, a5, s2
409:              sltu         s11, gp, s2
                  slt          a7, a3, ra
                  xori         s3, t4, -1334
                  auipc        t1, 913196
                  and          ra, gp, a1
                  xor          t0, s4, a3
                  srl          a2, gp, t6
                  sltiu        a7, sp, 374
                  sub          a7, s0, t5
418:              bne          zero, s4, 438f
                  sll          a2, s2, s7
                  slti         s1, t5, 1463
                  sltiu        a4, t5, 1151
                  lui          a5, 164853
                  auipc        t5, 46562
                  sltiu        s1, s2, -403
                  addi         s7, sp, -1877
                  sll          a4, s2, s10
                  bne          s9, t0, 447f
                  sll          t2, a4, a0
                  xor          gp, a1, t5
                  sltu         t4, s4, t4
                  add          t4, ra, s2
                  slti         s4, a1, 1693
                  sltu         t4, s11, gp
                  blt          t4, sp, 453f
                  addi         a0, a2, -1214
                  or           t1, t0, a5
                  srli         s2, s8, 25
438:              bgeu         s7, t1, 450f
                  nop
                  sub          gp, s9, s6
                  and          t1, s4, s6
                  bltu         zero, s3, 453f
                  and          s8, s7, tp
                  slt          t5, a6, s1
                  xor          s9, a5, zero
                  slt          s11, s0, tp
447:              xori         s3, t3, -1705
                  xor          s7, s11, s5
                  add          a1, ra, s7
450:              andi         s6, a7, 1349
                  slti         s3, a0, 403
                  xori         s10, s5, 511
453:              addi         t4, s1, 622
                  srli         ra, a7, 30
                  bgeu         s10, a7, 473f
                  sltiu        s6, s1, -1481
                  xor          sp, a6, s3
                  blt          s2, s11, 477f
                  xor          t6, gp, s10
                  blt          s8, s3, 465f
                  ori          s11, s4, -1668
                  slli         ra, t1, 16
                  sra          tp, t5, t6
                  sub          t4, s4, ra
465:              sub          a2, a0, s0
                  add          t4, a3, t3
                  ori          a1, s7, 1756
                  add          s3, s4, t4
                  slli         s4, t5, 11
                  bne          s3, s7, 479f
                  sltu         t1, t1, s11
                  sltiu        s6, tp, 697
473:              sub          zero, sp, t2
                  srli         s11, s0, 28
                  slt          a1, s8, a7
                  xori         t4, s7, 136
477:              slli         a1, s4, 15
                  auipc        a3, 532366
479:              srai         a0, tp, 19
                  xor          s3, ra, s7
                  bne          s0, s5, 486f
                  blt          a3, a7, 486f
                  or           gp, t3, a0
                  srai         tp, a5, 15
                  srl          s7, s0, ra
486:              beq          t6, a0, 489f
                  srai         s1, zero, 29
                  ori          a7, t3, -438
489:              sra          s10, a0, t5
                  sll          a0, s1, a4
                  nop
                  sub          t1, s9, s3
                  xor          t1, s3, s8
                  sltiu        s8, t4, 1052
                  srli         t6, a4, 1
                  addi         a1, ra, 1540
                  sltiu        a7, gp, 1519
                  slti         s6, s0, 1876
                  bne          t4, a6, 518f
                  slli         s10, s4, 22
                  nop
                  blt          s3, s3, 514f
                  bge          t3, a5, 507f
                  srli         t4, a7, 3
                  slt          t5, a1, t2
                  and          s9, s1, a5
507:              and          a1, s5, a7
                  andi         s1, s2, -141
                  xori         s8, t0, -982
                  andi         s4, s5, -1716
                  sra          a0, t3, t4
                  add          s4, a6, s3
                  sltiu        zero, t5, -1270
514:              sltu         a7, t5, s10
                  srl          s8, t5, s4
                  slti         a3, t6, -1241
                  beq          a6, s0, 518f
518:              srl          t2, tp, sp
                  sll          s11, a6, t0
                  xori         t1, s6, -321
                  srl          a5, t1, a5
                  sltiu        s6, t4, 825
                  sll          a5, a5, s1
                  sltiu        ra, gp, 286
                  sra          a2, a6, t6
                  sltu         tp, t5, a4
                  sra          sp, s8, zero
                  beq          a6, a5, 541f
                  and          s6, s10, t3
                  and          gp, a7, t6
                  xor          s10, t6, s6
                  slti         sp, t4, -793
                  sub          zero, s4, zero
                  srl          sp, a6, s6
                  bne          a6, t4, 550f
                  bge          tp, s8, 543f
                  or           tp, a2, t5
                  add          a2, s6, t0
                  bge          sp, a1, 550f
                  sll          s9, s9, s3
main_15:          jal          s8, 3f
0:                jal          t1, 11f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          ra, 2b
4:                jal          ra, 5f
5:                jal          t1, 9f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          t2, 14f
9:                jal          ra, 6b
10:               jal          gp, 13f
11:               jal          ra, 4b
12:               jal          ra, 7b
13:               jal          ra, 1b
14:               add          t6, a0, t4
541:              xori         s5, s8, 29
                  andi         a3, s5, 1410
543:              xori         a3, a0, -570
                  andi         t4, zero, -126
                  or           a3, s2, s6
                  sub          tp, t4, a6
                  or           s2, tp, t6
                  sltu         zero, gp, a5
                  beq          zero, a3, 562f
550:              bltu         ra, t6, 555f
                  nop
                  srli         s7, a1, 26
                  auipc        a3, 347713
                  sub          s4, a0, t5
555:              bltu         t5, s3, 558f
                  slt          tp, t2, s1
                  ori          s7, s0, -967
558:              slli         ra, s10, 8
                  bne          t3, zero, 578f
                  andi         s2, t1, -1761
                  sll          sp, zero, s0
562:              srl          t4, a7, a0
                  xori         s4, s4, 133
                  sll          s11, s6, t2
                  srl          s7, s1, tp
                  lui          a0, 856947
                  and          t5, a6, ra
                  sltu         t6, a6, s0
                  sll          s6, s2, a6
                  bgeu         s9, s10, 579f
                  or           s11, t0, s6
                  sll          a1, s9, s8
                  lui          a2, 166795
                  ori          a3, s2, 1896
                  andi         a3, s3, 2019
                  andi         t1, a2, 1276
                  nop
578:              sub          t0, s11, t4
579:              addi         s7, a0, 946
                  bge          a5, s3, 600f
                  sltiu        s3, a4, -1649
                  xor          t0, t1, a2
                  slli         ra, t0, 18
                  sub          t5, t5, a5
                  andi         zero, a7, 705
                  slti         a7, t2, -818
                  bne          gp, s2, 594f
                  sra          s2, t0, a7
                  bgeu         s1, t3, 606f
                  srl          s5, a6, s10
                  lui          t0, 324751
                  sll          s1, s8, t3
                  nop
594:              sll          sp, s0, t4
                  bne          a5, sp, 609f
                  ori          a1, s3, 1726
                  auipc        t6, 939852
                  sra          t2, s9, zero
                  sra          a3, sp, gp
600:              auipc        sp, 104548
                  bne          t4, s10, 621f
                  srai         a3, t4, 26
                  xori         gp, s10, 1448
                  bltu         s3, a2, 622f
                  bltu         s5, s9, 623f
606:              srl          s6, s4, s0
                  bge          a3, sp, 609f
                  sub          tp, ra, s2
609:              sltiu        t5, s8, 1173
                  or           t1, s0, s2
                  xor          s3, a7, s4
                  sra          ra, s9, s3
                  blt          a2, s4, 621f
                  xor          s11, a2, s8
                  beq          sp, ra, 620f
                  nop
                  slt          sp, t1, t6
                  xori         t5, a6, 139
                  ori          sp, s1, 968
620:              sltu         sp, s1, s4
621:              slt          a7, t6, s6
622:              lui          t5, 1032736
623:              auipc        a3, 636594
                  bgeu         s0, t0, 631f
                  or           s7, a1, t1
                  xori         a5, t2, 1090
                  auipc        t2, 432402
                  bne          s9, t1, 636f
                  srl          gp, s5, s11
                  bge          s1, t6, 641f
631:              srli         s4, a4, 16
                  xori         s11, t1, 1079
                  bge          t1, a2, 644f
                  nop
                  sra          t1, s0, t5
636:              sra          s1, a2, a7
                  srai         sp, a1, 6
                  slt          s2, a0, a7
                  slli         s8, a5, 3
                  sra          zero, s11, t6
641:              sltiu        a4, s5, -1416
                  xor          t0, t3, t3
                  xori         t5, s8, -1335
644:              nop
                  lui          t2, 612150
                  slt          s9, s5, a1
                  bltu         a1, a2, 666f
                  sltiu        a2, a5, 1731
                  sltiu        a7, zero, 1070
                  slti         a0, t2, -1580
                  sra          s3, s0, zero
                  auipc        a4, 200715
                  add          a1, tp, gp
                  and          s4, t0, s2
                  xor          sp, zero, s11
                  and          s7, t0, s10
                  sub          s6, a3, s2
                  srli         t0, a2, 26
                  srli         t5, t1, 1
                  andi         t1, a6, 1736
                  slli         t5, a2, 13
                  slti         t6, s9, -1558
                  nop
                  auipc        a1, 796134
                  bge          s10, t4, 668f
666:              srai         a5, a4, 16
                  blt          t5, a2, 671f
668:              lui          t1, 73820
                  nop
                  slli         sp, t0, 25
671:              bge          a7, s1, 680f
                  nop
                  add          a2, t0, zero
                  andi         a0, s8, -799
                  slli         s1, t4, 17
                  xori         t5, s5, 177
                  slli         a3, s4, 1
                  or           a2, t0, ra
                  bltu         zero, zero, 690f
680:              srli         tp, a5, 30
                  add          ra, s5, s4
                  xor          s9, s9, zero
                  slti         s3, s8, 621
                  sltiu        s5, gp, 387
                  or           a3, s6, s11
                  slli         t0, a4, 2
                  bltu         t0, t1, 690f
                  beq          a4, s9, 695f
                  sub          t2, s11, zero
690:              sltu         a3, s3, t5
                  srl          zero, s7, s8
                  blt          t4, s7, 712f
                  srli         a5, a0, 26
                  slli         a5, s4, 20
695:              bne          s4, s7, 707f
                  srli         a7, s8, 17
                  slli         s9, a5, 8
                  xor          s6, a1, t4
                  sltu         s7, s6, t6
                  sub          s6, s3, tp
                  addi         tp, s10, 1653
                  srli         zero, s6, 22
                  sltiu        s9, s4, -1458
                  sll          a0, s8, a2
                  sll          sp, t1, s7
                  xori         t2, s4, -1564
707:              andi         t0, zero, 112
                  srai         s2, a5, 15
                  slti         s11, s8, -941
                  bne          t2, sp, 728f
                  srli         s6, s4, 30
712:              sltiu        s11, gp, -608
                  sltu         s10, a2, sp
                  bgeu         a5, a5, 729f
                  andi         s5, s2, -794
                  bgeu         s0, t5, 720f
                  slt          s7, t5, t5
                  bne          t5, a7, 732f
                  sll          s1, t4, t4
720:              bgeu         a1, a7, 737f
                  slt          t5, t6, t6
                  slti         s6, a1, -1457
                  sll          a7, s2, s7
                  xori         sp, ra, 693
                  andi         a4, s7, 1389
                  auipc        s1, 1022189
                  slti         s5, a5, -1266
728:              sub          t6, ra, s0
729:              sub          ra, s0, a5
                  xor          sp, tp, gp
                  andi         s4, s11, 1431
732:              slti         s1, a2, 440
                  addi         t6, s1, 850
                  nop
                  sltu         a7, sp, t1
                  slli         a3, a5, 15
737:              sltiu        s5, s6, 973
                  andi         s11, zero, -1844
                  add          s9, sp, tp
                  slt          s1, a2, t4
                  auipc        a7, 926637
                  sll          a4, s2, s1
                  sub          s7, t2, a2
                  srl          s7, s1, a5
                  ori          a4, s7, 484
                  add          t0, sp, s2
                  add          sp, t6, t1
                  xori         s5, s8, -26
                  xori         tp, a2, -848
                  auipc        t4, 340555
                  srl          s3, a4, s8
                  sub          a7, s10, gp
                  sltiu        s6, s9, -27
                  or           t2, zero, s11
                  srli         s8, gp, 4
                  slti         t6, a0, 1588
                  sll          t4, a5, sp
                  bne          tp, s8, 777f
                  slli         t0, zero, 20
                  bgeu         t5, a0, 764f
                  andi         zero, t1, -151
                  bgeu         a7, s9, 770f
main_10:          jal          s8, 9f
0:                jal          a4, 24f
1:                jal          ra, 13f
2:                jal          gp, 16f
3:                jal          t1, 18f
4:                jal          t1, 23f
5:                jal          ra, 17f
6:                jal          t1, 7f
7:                jal          t1, 15f
8:                jal          t1, 22f
9:                jal          ra, 8b
10:               jal          ra, 6b
11:               jal          tp, 21f
12:               jal          ra, 0b
13:               jal          t1, 12b
14:               jal          ra, 11b
15:               jal          t0, 4b
16:               jal          t1, 3b
17:               jal          tp, 19f
18:               jal          t1, 20f
19:               jal          ra, 1b
20:               jal          s2, 14b
21:               jal          ra, 10b
22:               jal          a7, 5b
23:               jal          ra, 25f
24:               jal          sp, 2b
25:               lui          s10, 522650
                  ori          t6, a7, 1528
764:              nop
                  bltu         a2, zero, 778f
                  bge          a4, a4, 773f
                  bge          s10, a5, 785f
                  beq          s7, s7, 779f
                  or           t4, gp, a4
770:              beq          s8, s2, 790f
                  xori         sp, t3, -1992
                  blt          t4, s4, 791f
773:              xor          s7, a7, t0
                  or           zero, s4, s0
                  xor          a3, a4, sp
                  sll          a1, s6, t6
777:              ori          t0, t0, 1200
778:              blt          s10, s11, 797f
779:              lui          s8, 105663
                  slt          s10, s7, tp
                  sra          a1, a5, s5
                  sra          a4, s11, a4
                  slt          t6, ra, t1
                  ori          a7, s6, 990
785:              srl          s5, t2, s4
                  sll          tp, s10, s8
                  addi         t5, s0, -1072
                  or           zero, t6, t2
                  slt          sp, s3, sp
790:              srai         gp, s2, 18
791:              xor          sp, s10, s7
                  sll          t5, ra, s3
                  bgeu         gp, t1, 794f
794:              sltu         tp, t6, zero
                  add          zero, a2, a7
                  add          t2, a3, a4
797:              srli         s3, a2, 19
                  beq          s3, t0, 806f
                  srli         gp, s4, 0
                  xor          gp, t0, t4
                  slt          s11, a0, gp
                  blt          s3, s3, 807f
                  sub          t6, s8, a7
                  bgeu         s7, s9, 815f
                  addi         sp, s7, 1418
806:              sub          s2, t6, a1
807:              nop
                  sll          s1, t5, sp
                  nop
                  nop
                  bne          s7, gp, 816f
                  slli         gp, sp, 8
                  slli         s9, s5, 20
                  sub          s9, t4, tp
815:              xori         a4, tp, -634
816:              lui          a4, 182843
                  or           s6, s7, tp
                  sra          s3, sp, a5
                  xor          a5, ra, a4
                  beq          t5, t0, 823f
                  and          a3, s0, sp
                  bgeu         a5, a0, 824f
823:              addi         t1, a5, -108
824:              slti         tp, a2, -1449
                  slt          s2, s3, s2
                  beq          a7, t4, 839f
                  ori          s8, a1, -1106
                  beq          t3, a0, 835f
                  srl          tp, gp, s9
                  ori          a2, s1, 792
                  lui          s7, 232637
                  beq          gp, sp, 843f
                  addi         a7, s5, -1024
                  sltiu        t2, t2, -145
835:              nop
                  srli         s6, a2, 5
main_11:          jal          s8, 8f
0:                jal          ra, 27f
1:                jal          ra, 2f
2:                jal          s4, 6f
3:                jal          ra, 12f
4:                jal          t1, 9f
5:                jal          s10, 30f
6:                jal          t1, 17f
7:                jal          ra, 16f
8:                jal          a0, 15f
9:                jal          ra, 21f
10:               jal          s11, 19f
11:               jal          t1, 3b
12:               jal          s7, 10b
13:               jal          t1, 20f
14:               jal          t1, 4b
15:               jal          t1, 29f
16:               jal          t1, 24f
17:               jal          ra, 26f
18:               jal          ra, 23f
19:               jal          ra, 14b
20:               jal          ra, 22f
21:               jal          ra, 13b
22:               jal          a4, 25f
23:               jal          ra, 5b
24:               jal          t1, 0b
25:               jal          ra, 28f
26:               jal          t1, 7b
27:               jal          t1, 18b
28:               jal          s7, 1b
29:               jal          ra, 11b
30:               srl          s1, a7, s9
                  bge          s9, s7, 849f
                  auipc        s5, 450640
839:              slt          t4, s1, gp
                  add          a1, s5, t3
                  bne          t6, tp, 849f
                  bgeu         sp, s5, 862f
843:              slt          s7, a6, gp
                  sra          t1, t1, s10
                  sra          s8, s10, s1
                  addi         s3, s10, 661
                  nop
                  bne          t2, t5, 868f
849:              srl          ra, gp, a6
                  sub          ra, s1, s2
                  or           t1, a5, sp
                  ori          s8, s7, -553
                  and          a4, sp, a2
                  add          s4, t5, s11
                  sub          a7, t2, t1
                  slt          a7, s11, a6
                  sltiu        s7, ra, 667
                  ori          a4, s5, 507
                  addi         t5, s1, 1718
                  blt          s11, s4, 879f
                  sltiu        t6, s8, -682
862:              slti         s1, zero, -65
                  srl          s10, s2, s1
                  auipc        s8, 253920
                  ori          t1, a2, -567
                  add          t2, tp, t5
                  bgeu         s6, a0, 878f
868:              slt          s6, t1, t2
                  auipc        s1, 22972
                  lui          a4, 270666
                  sub          s3, s10, t4
                  xori         s1, s11, 837
                  bne          tp, s1, 877f
                  sltiu        a3, a1, 779
                  add          s2, t4, a2
                  srli         s6, zero, 11
877:              addi         a1, s1, 1801
878:              and          a2, a1, a1
879:              and          a3, a4, s7
                  addi         a0, t5, -1995
                  sltu         t4, t3, t6
                  sub          t4, a2, s4
                  ori          s11, t6, 1341
                  bge          t4, t3, 885f
885:              andi         s11, t3, 981
                  srai         t1, a0, 28
                  srl          t0, sp, t6
                  xori         s5, s1, -985
                  slti         t4, a3, 35
                  auipc        t4, 862842
                  sltiu        gp, t2, 1662
                  bltu         s5, a5, 906f
                  auipc        ra, 322475
                  srai         s10, t4, 26
                  add          a1, t2, s7
                  sub          s1, s2, a2
                  nop
                  slti         gp, a1, 917
                  beq          s6, s5, 910f
                  sra          a7, s6, s7
                  bltu         s5, s3, 906f
                  bltu         s11, gp, 911f
                  bne          s4, s5, 916f
                  sub          a4, s1, gp
                  bge          t1, s5, 918f
906:              lui          gp, 671724
                  bltu         t3, s7, 925f
                  sub          s4, s3, a6
                  sll          t6, a5, a4
910:              sltu         s10, t3, sp
911:              auipc        s11, 524026
                  ori          t5, s7, 1498
                  sll          t6, tp, s6
                  bge          a1, t6, 931f
                  or           a7, a7, tp
916:              srai         s8, zero, 27
                  sltiu        s11, gp, -862
918:              and          t0, s5, tp
                  lui          ra, 201337
                  auipc        s2, 463242
                  auipc        t1, 161475
                  sltu         tp, s8, gp
                  sub          s2, s10, gp
                  slli         gp, t5, 9
925:              slti         a2, s3, 655
                  or           s6, ra, s0
                  bltu         a6, s7, 946f
                  srli         s4, s7, 6
                  auipc        t6, 487358
                  bge          s9, tp, 949f
931:              nop
                  slli         tp, tp, 4
                  blt          t2, s6, 935f
                  or           s10, s4, s7
935:              beq          t2, a7, 939f
                  or           s5, gp, s10
                  xor          zero, s8, a3
                  srl          t0, a6, a4
939:              ori          s2, t3, -30
                  xor          s6, t1, s9
                  and          t6, a6, s5
                  beq          s8, t1, 945f
                  bltu         a5, gp, 946f
                  srli         s11, s6, 27
945:              sltiu        s2, a4, -6
946:              xor          s2, s8, s10
                  sll          s3, s2, zero
                  slli         s5, s8, 22
949:              or           t4, a3, s5
                  and          a5, a3, s10
                  add          gp, a6, t5
                  slt          s2, t6, t0
                  bgeu         a3, s4, 960f
                  lui          s4, 285726
                  bge          a3, t6, 962f
                  bge          s3, s5, 971f
                  slti         s6, s9, 12
                  srai         s7, a4, 30
                  bne          s1, a0, 977f
960:              sltu         s1, a1, s9
                  andi         s7, t6, -735
962:              bltu         t0, gp, 970f
                  sra          s5, t1, s8
                  xor          tp, a0, t6
                  or           s4, a1, a5
                  addi         s7, t0, -129
                  ori          s7, t3, -1185
                  bltu         a0, s5, 975f
                  bgeu         t3, s3, 974f
970:              bge          zero, zero, 983f
971:              xori         a0, s2, 1938
                  slti         s6, s4, 478
                  xor          a7, s7, s11
974:              and          s7, tp, a5
975:              auipc        s11, 154838
                  nop
977:              and          a7, s11, s6
                  lui          zero, 305915
                  sll          a2, s6, s6
                  lui          t2, 300979
                  slti         a0, a6, 1612
                  nop
983:              sub          a4, s3, ra
                  bltu         a2, s2, 991f
                  srl          s7, s11, s0
                  sltu         s7, t5, t6
                  andi         a1, s6, 1704
                  slt          gp, s11, a4
                  bge          s3, s5, 1000f
                  blt          a1, tp, 1003f
991:              or           s7, s0, t1
                  or           s7, a6, s10
                  andi         a4, a2, 1705
                  bge          zero, s1, 1011f
                  sltiu        s1, t6, 52
                  add          s4, t2, a5
                  sll          a1, a0, s0
                  sra          s11, a6, a0
                  ori          a1, s7, 941
1000:             slti         ra, t0, 475
                  or           t4, a0, t0
                  ori          s1, sp, 551
1003:             lui          s5, 468234
                  addi         s10, ra, -745
                  beq          a4, s6, 1008f
                  nop
                  blt          s2, s0, 1027f
1008:             sltiu        s3, s5, -1489
                  bltu         s3, t3, 1023f
                  srli         a1, s9, 26
1011:             nop
                  sra          sp, t2, a5
                  or           gp, gp, t3
main_4:           jal          s8, 16f
0:                jal          ra, 8f
1:                jal          ra, 20f
2:                jal          a1, 22f
3:                jal          s1, 13f
4:                jal          ra, 11f
5:                jal          t1, 15f
6:                jal          ra, 3b
7:                jal          t1, 18f
8:                jal          s3, 5b
9:                jal          a4, 23f
10:               jal          ra, 12f
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          ra, 1b
14:               jal          ra, 6b
15:               jal          ra, 21f
16:               jal          t1, 19f
17:               jal          ra, 7b
18:               jal          ra, 0b
19:               jal          ra, 4b
20:               jal          ra, 17b
21:               jal          ra, 9b
22:               jal          ra, 10b
23:               andi         a5, s6, -1216
                  addi         t5, a7, 1494
                  lui          t1, 291982
                  nop
                  andi         a1, a4, -1919
                  ori          t5, gp, -924
                  sub          a1, t0, a0
                  sltiu        t5, s11, 1815
                  nop
                  beq          a3, s4, 1041f
1023:             slli         ra, tp, 7
                  sltu         t1, s8, a5
                  auipc        tp, 959058
                  srl          a1, t4, a7
1027:             addi         s5, t3, -463
                  lui          a0, 993184
                  bne          a7, zero, 1033f
                  beq          a7, gp, 1049f
                  lui          tp, 952589
                  lui          gp, 270357
1033:             add          s6, a6, t2
                  bge          a5, s6, 1041f
                  xor          s7, t1, a6
                  or           a3, s2, a3
                  andi         s9, a5, 1298
                  auipc        a5, 215011
                  xor          s11, a2, zero
                  sltu         tp, a0, s11
1041:             slli         s5, s10, 15
                  blt          s7, gp, 1047f
                  beq          a5, a2, 1062f
                  nop
                  srli         gp, a3, 30
                  beq          zero, s1, 1055f
1047:             xor          t4, t2, a6
                  srai         t0, ra, 13
1049:             ori          s8, s2, 1542
                  slt          s7, sp, s9
                  sltiu        s5, s11, -1440
                  or           a2, a5, s0
                  blt          a6, t6, 1057f
                  nop
1055:             srai         s2, s3, 21
                  and          s4, t1, t1
1057:             sra          s6, t3, a4
                  slli         s8, t0, 9
                  slli         tp, s0, 7
                  slt          a5, zero, s8
                  ori          s2, s3, 1603
1062:             bgeu         s1, s0, 1070f
                  srli         s7, a0, 16
                  addi         a0, s3, 320
                  or           t5, a1, t1
                  bge          s4, t0, 1078f
                  slli         s6, s8, 12
                  srl          a0, t4, s6
                  add          a3, s2, a0
1070:             sltu         s2, s1, s9
                  ori          a3, a2, -1737
                  sll          t0, t3, t0
                  slli         t5, sp, 15
                  sltu         tp, zero, a4
                  sltiu        a7, s4, 119
                  andi         t0, tp, 963
                  sll          s6, s7, s11
1078:             add          s11, t1, s10
                  addi         gp, a6, -278
                  sltu         s6, s8, t3
                  ori          a3, t1, -1224
                  addi         s8, s10, 1995
                  sll          a2, a7, gp
                  andi         s2, a0, 1900
                  sll          t6, a3, ra
                  nop
                  beq          t2, gp, 1105f
                  srai         a3, s2, 5
                  srai         sp, t2, 5
                  slti         a2, s10, -1655
                  bltu         a5, a2, 1106f
                  bge          t5, t2, 1099f
                  and          a2, a7, a2
                  ori          sp, t5, -415
                  srli         s9, s0, 22
                  bge          t4, s8, 1104f
                  sub          a3, t2, s8
                  add          s10, t3, t6
1099:             bge          ra, t6, 1101f
                  nop
1101:             and          a2, t6, zero
                  nop
                  sltiu        zero, a6, -245
1104:             srai         t6, s0, 12
1105:             bgeu         tp, a3, 1108f
1106:             sub          gp, a5, sp
                  and          sp, s10, s5
1108:             bgeu         zero, t1, 1113f
                  and          gp, t4, s7
                  srli         t4, a7, 6
                  xori         s11, t4, -1323
                  beq          s9, s7, 1132f
1113:             slt          t2, s1, ra
                  auipc        sp, 556919
                  sltu         tp, s1, s1
                  bltu         zero, a1, 1134f
                  beq          a5, t3, 1128f
                  srli         a5, t6, 5
                  sltiu        a7, sp, -476
                  blt          a2, t3, 1131f
                  xori         t0, sp, -1417
                  slli         a4, a0, 15
                  andi         t6, gp, -1884
                  srai         a1, s5, 26
                  auipc        zero, 24421
                  srai         gp, ra, 30
                  xor          t0, a6, tp
1128:             xori         s9, tp, 1193
                  sltiu        a2, sp, 924
                  addi         s1, t2, -947
1131:             xor          s9, s11, a5
1132:             xor          t0, s7, s3
                  sltiu        s8, tp, 1921
1134:             bltu         s11, t4, 1135f
1135:             ori          a2, zero, 30
                  andi         a0, s0, 399
                  sll          s6, sp, s2
                  auipc        gp, 339226
                  srl          s8, s3, s11
                  andi         s8, s1, -1180
                  auipc        t5, 307788
                  sltiu        t6, t0, -1121
                  xor          a5, gp, t2
                  add          zero, t1, a5
                  slti         t6, t6, -1812
                  srai         a4, t4, 2
                  slli         s9, gp, 14
                  sltiu        s7, t3, 912
                  blt          a0, a5, 1162f
                  beq          t3, zero, 1169f
                  sltu         s1, a4, a5
                  lui          t0, 1012509
                  sltu         s3, t5, gp
                  srl          a4, a1, a7
                  bltu         s3, s1, 1170f
                  or           a7, s1, s6
                  andi         t1, t4, 766
                  slli         t2, t2, 23
                  slt          a3, s0, a2
                  slti         zero, s11, -765
                  xori         a0, t4, 1931
1162:             sltiu        s6, tp, 308
                  slt          zero, t1, s6
                  sra          t1, s10, a0
                  bne          a5, tp, 1177f
                  or           tp, s5, s9
                  addi         s9, s7, -538
                  nop
1169:             ori          t6, a7, 1558
1170:             auipc        a3, 163683
                  addi         s11, ra, 685
                  srl          t4, s8, zero
                  addi         t6, t3, 1061
                  andi         a4, a2, 439
                  addi         s5, s10, 2029
                  slti         a4, gp, -1188
1177:             addi         a2, zero, 969
                  sltiu        s4, t1, -609
                  or           a1, sp, s7
                  slt          s10, s6, s9
                  blt          a3, zero, 1186f
                  blt          a5, s0, 1189f
                  blt          a4, t5, 1197f
                  srl          s9, a1, t6
                  sltu         t2, s1, s7
1186:             srai         t1, s10, 18
                  bge          a5, s0, 1200f
                  sltiu        a2, t6, -1148
1189:             nop
                  nop
                  sll          s3, a0, s6
                  or           s4, a7, t0
                  srl          s8, t2, s4
                  blt          s3, a3, 1205f
                  add          ra, t1, s1
                  bne          s4, s2, 1204f
1197:             andi         a1, s7, -1396
                  slt          s3, t1, s0
                  bne          a1, s7, 1218f
1200:             bltu         s1, s8, 1204f
                  bge          a2, sp, 1208f
                  sub          s7, s1, s5
                  addi         zero, s0, -994
1204:             bne          a7, s9, 1223f
1205:             slli         a4, s7, 11
                  nop
                  sra          t1, tp, a2
1208:             xor          a3, zero, s3
                  sll          s6, ra, s8
                  sltu         a2, t0, s5
                  bgeu         s11, s9, 1229f
                  srli         s11, s1, 3
                  bne          s8, a0, 1216f
                  srai         s7, t2, 18
                  addi         s3, a0, 448
main_5:           jal          s8, 9f
0:                jal          ra, 19f
1:                jal          ra, 20f
2:                jal          ra, 24f
3:                jal          ra, 30f
4:                jal          t1, 22f
5:                jal          t1, 13f
6:                jal          ra, 28f
7:                jal          ra, 8f
8:                jal          ra, 15f
9:                jal          t5, 2b
10:               jal          t1, 17f
11:               jal          ra, 1b
12:               jal          gp, 3b
13:               jal          s3, 29f
14:               jal          s6, 5b
15:               jal          t1, 25f
16:               jal          t6, 26f
17:               jal          sp, 16b
18:               jal          ra, 14b
19:               jal          ra, 18b
20:               jal          a7, 12b
21:               jal          t1, 4b
22:               jal          s9, 0b
23:               jal          a3, 10b
24:               jal          t1, 27f
25:               jal          t1, 6b
26:               jal          ra, 7b
27:               jal          ra, 21b
28:               jal          ra, 11b
29:               jal          ra, 23b
30:               xor          s11, t6, s11
1216:             slli         a3, t2, 7
                  and          s2, gp, s5
1218:             bge          sp, a0, 1219f
1219:             slt          t1, s6, sp
                  sltiu        sp, a2, 952
                  srl          zero, t3, tp
                  bltu         gp, t5, 1240f
1223:             and          zero, a2, s6
                  srli         t1, s10, 22
                  bge          a2, gp, 1245f
                  sra          a0, s8, a3
                  slt          t4, t4, s6
                  srl          tp, s9, a1
1229:             sub          s11, a6, t2
                  sltu         s8, zero, ra
                  or           s8, a1, s1
                  andi         a0, s11, -354
                  srli         zero, a1, 27
                  bne          s8, s5, 1245f
                  add          a7, s5, t6
                  and          ra, gp, a7
                  bltu         s5, s8, 1248f
                  slt          s7, gp, s11
                  ori          a5, a3, -467
1240:             sub          tp, s6, a5
                  or           ra, zero, t4
                  sltiu        s11, a6, -1310
                  slli         a5, s5, 4
                  srl          s10, s2, t6
1245:             addi         a7, t4, 512
                  slt          sp, t0, s11
                  add          t6, s4, zero
1248:             sub          gp, t0, a5
                  nop
                  ori          s1, gp, 1209
                  bge          t5, t1, 1256f
                  or           a2, s2, a5
                  sltiu        t2, s7, -856
                  sll          a1, a4, s1
                  xori         sp, t6, 950
1256:             ori          s4, a1, -202
                  slti         zero, s4, 1498
                  xori         a3, s10, -1012
                  sub          a5, s7, s6
                  sub          t6, t3, a2
                  bgeu         a1, t3, 1268f
                  slti         a4, t6, 223
                  beq          s11, s3, 1271f
                  blt          s5, s5, 1284f
                  andi         s6, s2, -842
                  and          s2, s9, ra
                  sll          gp, a5, a0
1268:             sltu         gp, s1, s5
                  srl          s7, t6, s0
                  slti         sp, t3, 1183
1271:             slli         s10, a2, 14
                  sra          t5, s7, gp
                  sll          tp, s4, t6
                  srl          a0, s0, t5
                  blt          t4, s9, 1292f
                  srl          a7, t3, t1
                  lui          a2, 30408
                  sltiu        s1, ra, 602
                  bge          s10, s2, 1283f
                  sltu         s10, s2, tp
                  andi         zero, s2, 1664
                  sltiu        s1, ra, 1148
1283:             xori         t5, ra, -1451
1284:             and          a2, s9, sp
                  nop
                  nop
                  srli         sp, a7, 19
                  srl          s2, a0, t5
                  ori          s2, zero, 133
                  beq          s1, s7, 1292f
                  slti         gp, gp, -1497
1292:             sub          ra, t1, s7
                  add          s6, s3, a4
                  srli         gp, a1, 2
                  nop
                  sra          t4, t6, s11
                  bge          s8, a1, 1300f
                  blt          t6, gp, 1307f
                  slti         gp, s3, -1912
1300:             and          s3, ra, zero
                  xori         s2, s2, 1288
                  srai         s5, a5, 10
                  or           s8, s6, s7
                  sltiu        t2, s5, 1194
                  lui          t0, 185190
                  andi         s9, s11, -1413
1307:             sltiu        s7, s3, -1882
                  addi         s5, s4, -874
                  bne          s0, s11, 1323f
                  sltu         a0, t2, t6
                  slli         t6, gp, 1
                  beq          ra, s4, 1330f
                  sub          a7, t6, gp
                  xori         s2, s0, -451
                  xori         s4, t3, 1132
                  beq          s1, s6, 1336f
                  bne          a5, tp, 1336f
                  srai         s3, a2, 2
                  ori          s11, a4, -1435
                  srai         t2, a7, 6
                  srli         t1, sp, 21
                  sub          a3, a7, gp
1323:             bge          a4, s8, 1327f
                  sub          a5, t3, t2
                  lui          a0, 342392
                  bgeu         a6, t3, 1344f
1327:             and          s9, s1, s7
                  srli         t5, tp, 22
                  auipc        s5, 787389
1330:             lui          s11, 98558
                  sltiu        s5, s6, -1755
                  bge          ra, t2, 1351f
                  andi         s2, t1, 1184
                  addi         s3, s3, -358
                  addi         t4, s4, 309
1336:             bge          t0, t5, 1341f
                  add          a7, t5, gp
                  srli         s9, a1, 29
                  srl          s1, a0, s10
                  xor          zero, t2, s3
1341:             sltiu        s1, s8, 1133
                  sll          t5, a6, sp
                  bne          s0, gp, 1348f
1344:             sra          s11, sp, s7
                  nop
                  srli         s8, zero, 26
                  bge          a0, s9, 1356f
1348:             srli         s5, s5, 22
                  bge          s4, tp, 1356f
                  or           t1, s2, t0
1351:             and          t4, s0, s7
                  xori         s4, a1, -1048
                  srai         a2, s6, 17
                  ori          a1, s5, 764
                  bgeu         sp, a1, 1367f
1356:             sra          zero, s11, a5
                  bgeu         a0, gp, 1364f
                  nop
                  ori          s5, a5, -1626
                  xori         a1, t2, -1923
                  sltiu        sp, a4, -1385
                  sll          s10, a5, a1
                  srli         s4, s6, 10
1364:             slti         s3, a2, 780
                  lui          s3, 745687
                  nop
1367:             bgeu         a6, t4, 1375f
                  sltu         zero, s7, a7
                  andi         s4, t3, -20
                  slli         a4, s3, 20
                  bltu         zero, s7, 1373f
                  bltu         s11, s3, 1375f
1373:             xori         t6, t5, 36
                  or           s4, s5, t0
1375:             bltu         a2, s4, 1383f
                  blt          a6, a2, 1387f
                  sub          sp, t3, zero
                  andi         t4, t3, 1718
                  xori         s10, a3, -1840
                  bne          s5, s9, 1399f
                  addi         gp, sp, -295
                  slt          s3, a5, s6
1383:             sll          ra, s3, s11
                  andi         s11, s4, -14
                  addi         a2, sp, 168
                  sltu         s10, a2, gp
1387:             blt          t5, s2, 1391f
                  add          t1, a7, t1
                  beq          s7, tp, 1402f
                  srli         tp, s3, 27
1391:             sra          s5, s11, t3
                  bltu         s7, ra, 1399f
                  and          a4, a0, a6
                  or           t5, a3, a3
                  slti         t6, s8, 1948
                  srai         s3, gp, 19
                  nop
                  auipc        a7, 58806
1399:             srai         s9, a4, 6
                  ori          s7, s2, -1769
                  sub          zero, t3, s3
1402:             bne          a1, t3, 1413f
                  slli         s3, t5, 7
                  xor          a1, s6, s10
                  slti         a5, s9, 19
                  andi         s5, s6, -756
                  sub          t0, a3, a4
                  and          a7, s0, a7
                  lui          tp, 572910
                  nop
                  slti         t2, t2, 801
                  xori         s9, zero, 570
1413:             add          s10, a0, t6
                  sll          gp, a1, s4
                  blt          t3, a1, 1432f
                  xori         gp, t1, -779
                  srl          ra, s1, zero
                  lui          s3, 234995
                  add          a5, s7, t3
                  sra          a2, a1, t3
                  bge          a0, tp, 1434f
                  blt          s2, s5, 1425f
                  sub          a5, s0, t5
                  srl          s9, s4, a7
1425:             srl          tp, t4, s8
                  sra          t6, s8, t2
                  bgeu         a5, s8, 1447f
                  slli         t2, s3, 7
                  srl          s7, t2, a1
                  or           a7, s9, s10
                  or           s3, s5, sp
1432:             add          s10, a0, s10
                  sltu         s11, a3, zero
1434:             xor          a4, s7, t3
                  and          s10, a1, s7
                  sltiu        t4, t4, 1377
                  srai         t1, s4, 19
                  add          s1, a4, sp
                  blt          sp, s1, 1454f
                  sll          t1, ra, gp
                  slli         a2, a7, 22
                  and          ra, s6, a4
                  sra          t1, s7, s7
                  add          t2, s5, sp
                  slt          sp, t0, s0
                  srli         s9, gp, 11
1447:             slli         t0, s1, 22
                  bgeu         s5, t0, 1449f
1449:             bgeu         tp, a0, 1460f
                  beq          t5, t2, 1452f
                  slti         s8, s7, 1514
1452:             srai         s7, s9, 16
                  srli         t6, zero, 11
1454:             sub          s7, s3, zero
                  srai         s8, t5, 0
                  xori         tp, t1, -1146
                  beq          t6, s6, 1468f
                  beq          t4, a2, 1476f
                  nop
1460:             blt          tp, a2, 1467f
                  addi         s6, s7, -210
                  bge          s3, a0, 1481f
                  addi         a3, t3, 785
                  lui          s6, 932804
                  bltu         s1, s1, 1473f
                  blt          s5, tp, 1471f
1467:             slti         s2, ra, 102
1468:             addi         s10, s8, 1113
                  blt          s2, t0, 1480f
                  srli         s4, s8, 30
1471:             slti         tp, s6, 393
                  add          tp, s6, zero
1473:             beq          s8, s2, 1493f
                  sltiu        a7, s11, -227
                  andi         t0, t4, -1437
1476:             nop
                  srli         t4, s6, 13
                  sll          t1, a1, t4
                  bgeu         zero, t0, 1482f
1480:             beq          a7, s5, 1489f
1481:             bltu         s0, a0, 1500f
1482:             sra          s2, ra, s8
                  sll          s2, a1, a2
                  bge          t3, zero, 1495f
                  lui          tp, 851569
                  auipc        a2, 297097
                  xor          s1, s7, s0
                  bgeu         s10, a0, 1502f
1489:             bne          a2, a4, 1506f
                  ori          t2, s5, 1557
                  srli         a5, gp, 3
                  ori          a5, s7, -980
1493:             ori          s7, s5, -694
                  sltiu        s7, gp, 472
1495:             add          s4, s5, zero
                  sltiu        s5, sp, -584
                  bne          s4, a2, 1510f
                  bge          t6, s0, 1502f
                  andi         s11, a3, 1223
1500:             or           s5, s0, a0
                  sra          t0, t0, s9
1502:             sra          a5, a4, s1
                  andi         s9, a7, 1172
                  sub          t6, t4, gp
                  addi         s9, a2, 1391
1506:             add          a0, s6, ra
                  sll          a3, s4, s11
                  slt          a3, t1, a0
                  sll          a1, s1, tp
1510:             or           s8, s5, a7
                  addi         tp, a2, -774
                  auipc        t0, 383310
                  sll          a4, zero, s3
                  xor          t5, t1, s9
                  sltiu        ra, t6, 1490
                  addi         s7, a6, 717
                  beq          a7, t4, 1530f
                  nop
                  sra          t5, gp, s8
                  addi         a5, t4, 1317
                  or           s11, s6, s8
                  blt          s11, s2, 1540f
                  bge          s7, ra, 1528f
                  slli         zero, s10, 10
                  slti         s5, t1, -665
                  sub          a1, a6, gp
                  sltiu        a1, a7, 1102
1528:             bne          s10, t4, 1529f
1529:             srli         t5, t1, 5
1530:             bgeu         a3, a2, 1534f
                  bltu         t2, a6, 1539f
                  auipc        t2, 749458
                  add          s3, s1, gp
1534:             sltiu        a5, a7, 1120
                  and          s3, t3, gp
                  bltu         a6, a6, 1551f
                  xor          s9, s5, t2
                  ori          sp, s8, 1838
1539:             beq          s10, a1, 1551f
1540:             sra          t5, a1, ra
                  bltu         s11, t5, 1548f
                  auipc        a0, 707423
                  sra          t0, a6, gp
                  srli         a1, a5, 29
                  sra          zero, a4, s6
                  bne          s0, s11, 1566f
                  beq          sp, s9, 1550f
1548:             blt          a4, ra, 1555f
                  slti         a5, s3, 877
1550:             sltu         t4, a1, a5
1551:             andi         s2, s10, 591
                  slti         tp, a5, -859
                  addi         zero, s10, 1875
                  bgeu         s1, s5, 1573f
1555:             slt          t0, a6, a6
                  and          a0, a6, s6
                  or           ra, gp, a4
                  xori         s7, a2, 1278
                  sll          t0, t4, a7
                  xori         s1, t6, 1550
                  xor          s8, a0, s10
                  auipc        s11, 817149
                  srli         s9, a1, 12
                  la           a5, sub_1
                  ori          t0, s9, 892
                  sub          a7, ra, s2
                  sub          gp, s2, tp
                  slt          t2, s10, a5
                  addi         a5, a5, -652
                  sra          s5, t1, s10
                  sra          s1, s0, s8
                  srl          s4, s5, a0
                  bltu         tp, t0, main_j2 #branch to jump instr
                  srl          t4, zero, s11
                  slt          sp, zero, zero
main_j2:          jalr         s8, a5, 652 #jump main -> sub_1
                  bne          t0, s6, 1583f
                  and          t2, t0, s0
1566:             sltu         zero, t4, t0
                  auipc        s10, 226730
                  sltiu        t5, t2, 918
                  sll          s11, s9, a7
                  ori          s7, gp, 1021
                  bgeu         t0, a2, 1582f
                  addi         s4, a4, 1889
1573:             beq          s7, ra, 1577f
                  sra          s6, s0, gp
                  bne          a1, a2, 1582f
                  slli         t4, ra, 16
1577:             auipc        a3, 118956
                  xori         ra, t0, -46
                  nop
                  xor          s4, s4, tp
                  srl          a1, a6, a5
1582:             or           s2, a6, a6
1583:             bltu         s1, zero, 1594f
                  sltu         t5, a2, s7
                  ori          t0, a4, 1815
                  srli         ra, a5, 7
                  srai         t0, s9, 25
                  auipc        s8, 681393
                  add          sp, s5, t6
                  lui          t2, 276141
                  sltu         t0, s5, s11
                  or           s8, s7, s4
                  sll          a5, a6, s5
1594:             slli         a4, a1, 27
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t3, t3, -52
                  srai         a1, t3, 22
                  addi         t6, t6, -1763
                  sw           s8, 4(t3)
                  sra          t6, sp, sp
                  and          s3, s5, s8
                  and          t2, t0, a1
                  srai         t4, s4, 23
                  sll          s6, sp, t5
                  lui          s3, 633560
                  xori         t1, tp, -972
                  slt          sp, s3, a2
                  sltiu        s6, s8, -416
                  sltiu        a4, a7, 71
                  bge          s2, s2, sub_2_j6 #branch to jump instr
                  slti         a5, s11, -905
                  sll          sp, ra, s8
sub_2_j6:         jal          s8, sub_5 #jump sub_2 -> sub_5
                  srli         s9, a7, 19
                  and          s8, a5, s1
                  nop
                  add          t0, gp, s2
                  srli         t0, a4, 3
                  srli         t0, s8, 8
sub_2_j7:         jal          s8, sub_5 #jump sub_2 -> sub_5
                  sltiu        t4, a3, 365
                  nop
                  sll          sp, s6, s10
                  ori          sp, s5, 1631
                  nop
                  sll          a2, ra, s8
                  beq          ra, a5, 16f
                  slt          a0, tp, t3
                  blt          s8, a2, 20f
                  srl          sp, s9, t1
                  add          s5, zero, s9
                  slti         a3, s0, -307
                  bltu         zero, s5, 18f
                  bltu         s5, s10, 31f
                  auipc        zero, 818248
                  slli         tp, ra, 21
16:               srli         t5, a4, 7
                  and          a7, t2, a2
18:               bne          a5, s11, 31f
                  bgeu         s4, ra, 21f
20:               srli         t1, t5, 21
21:               ori          s10, s3, 774
                  slli         t5, a1, 2
                  srai         ra, s8, 28
                  srai         s8, s11, 29
                  bne          t6, a5, 31f
                  bge          s8, s0, 28f
                  srl          s3, t6, t6
28:               beq          a5, s10, 31f
                  sll          s1, s2, ra
                  bne          s2, s8, 31f
31:               sltu         a7, a5, gp
                  lw           s8, 4(t3)
                  sltiu        s2, s5, 379
                  add          t2, a0, s5
                  addi         t3, t3, 52
                  sll          a5, tp, gp
                  nop
                  slti         t6, t0, -1544
                  auipc        s5, 259498
                  addi         tp, a0, 1987
                  sltiu        a3, s5, 1785
                  addi         tp, s9, -374
68:               addi x18, x24, 0
68:               jalr x18, x18, 0
sub_3:            slti         zero, s9, 1997
                  srai         t5, t2, 21
                  auipc        a2, 662054
                  addi         t3, t3, -44
                  sw           s8, 4(t3)
                  slt          t4, a5, s0
                  xor          t5, t1, a3
                  sltiu        t6, a6, 918
                  xori         s4, s11, -273
                  slt          sp, a3, zero
                  auipc        ra, 973519
                  srl          s6, t0, zero
                  bge          s11, a0, sub_3_j8 #branch to jump instr
                  sltiu        a0, a7, 768
sub_3_j8:         jal          s8, sub_4 #jump sub_3 -> sub_4
                  bge          ra, a4, 9f
                  slti         t4, t3, 1940
                  bltu         a4, a2, 7f
                  sra          s2, a0, s1
                  andi         a2, a4, -1003
                  beq          t2, s6, 17f
                  xori         s9, s11, 1312
7:                or           sp, tp, a7
                  andi         s1, s0, -327
9:                or           a4, ra, s1
                  andi         gp, a6, -765
                  ori          t4, a1, -173
                  addi         t6, s1, 331
                  ori          a2, gp, 460
                  beq          s4, s4, 34f
                  bltu         s7, s1, 19f
                  beq          t5, s10, 29f
17:               add          tp, s0, t4
                  nop
19:               add          s11, a1, t0
                  slli         t0, zero, 8
                  addi         s4, a4, 1131
                  srai         a3, gp, 27
                  ori          ra, t1, -1709
                  srl          t1, s2, s8
                  auipc        s4, 796687
                  slli         a0, zero, 5
                  sub          a2, t5, s11
                  lui          t6, 167455
29:               addi         a2, a4, -1550
                  and          a2, a2, s9
                  bltu         t1, s7, 32f
32:               sub          sp, a2, t5
                  add          a2, t3, tp
34:               srl          t1, a7, t0
                  lui          t4, 516311
                  xor          t2, a1, t5
                  bgeu         s0, s7, 45f
                  andi         a0, t4, -1977
                  lui          s5, 451121
                  sll          tp, a4, t6
                  slli         ra, t4, 30
                  andi         a7, a5, 602
                  lui          a5, 409311
                  slti         t1, gp, 512
45:               or           t6, t0, gp
sub_3_0:          jal          s8, 3f
0:                jal          s2, 10f
1:                jal          ra, 4f
2:                jal          s1, 0b
3:                jal          t1, 8f
4:                jal          a7, 7f
5:                jal          t1, 14f
6:                jal          s7, 13f
7:                jal          a3, 5b
8:                jal          t1, 9f
9:                jal          ra, 6b
10:               jal          t1, 11f
11:               jal          ra, 1b
12:               jal          ra, 2b
13:               jal          t1, 12b
14:               add          tp, a1, t5
                  auipc        a1, 310043
                  auipc        t0, 430590
                  xor          s11, s2, s8
                  srli         s11, a5, 2
                  bltu         t1, t0, 64f
                  bne          t0, tp, 54f
                  beq          a2, s4, 62f
                  slli         t6, t3, 16
54:               slti         s2, a0, -830
                  ori          gp, a5, 1087
                  lui          t1, 149140
                  xori         s10, a5, 1650
                  xor          zero, a7, t5
                  add          s1, s1, s0
                  sltiu        s4, t0, -9
                  auipc        gp, 658658
62:               bne          a5, a2, 78f
                  slt          s4, a5, tp
64:               sub          sp, a2, t2
                  sub          t5, t3, ra
                  lui          a3, 253476
                  slti         s4, s7, -1849
                  add          sp, s0, t6
                  sub          t2, t3, s0
                  sltu         a5, t0, a2
                  addi         s4, s7, -547
                  sltiu        t4, a0, 1871
                  add          s4, t3, t4
                  slli         tp, t4, 7
                  bgeu         a3, t4, 81f
                  slti         t5, s7, -1124
                  or           s5, s5, t4
78:               srli         s3, a0, 10
                  or           a0, a6, s9
                  and          s5, s9, t2
81:               slli         sp, a3, 31
                  lui          s1, 424025
                  lui          t0, 142324
                  sub          t0, a3, a4
                  slli         s8, gp, 21
                  srl          s7, a1, t6
                  sltiu        s6, t5, 727
                  sltu         a4, a6, s9
                  lui          s9, 164164
                  sltiu        s7, s8, 1948
                  lui          a4, 522621
                  lw           s8, 4(t3)
                  auipc        a4, 395144
                  addi         t3, t3, 44
                  andi         t0, s0, 1294
                  sltu         s10, s8, gp
128:              addi x25, x24, 0
128:              jalr x25, x25, 0
sub_4:            srl          a5, tp, t5
                  addi         t3, t3, -24
                  xor          tp, t3, s0
                  sw           s8, 4(t3)
                  ori          zero, ra, -180
                  nop
                  sll          s3, s5, s3
sub_4_0:          jal          s8, 7f
0:                jal          a5, 15f
1:                jal          ra, 10f
2:                jal          s10, 12f
3:                jal          s1, 14f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          t1, 2b
7:                jal          ra, 6b
8:                jal          ra, 11f
9:                jal          t1, 1b
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               jal          t4, 8b
13:               jal          ra, 0b
14:               jal          t1, 13b
15:               slti         s11, a3, -356
                  srl          a7, t6, sp
                  andi         a7, a2, 1958
                  sltu         t6, t2, t1
                  slt          s1, t1, sp
                  auipc        a4, 377533
                  bne          s5, a4, 7f
                  slti         s9, s2, -709
7:                bge          a2, s2, 19f
                  srai         a4, a6, 25
                  nop
                  srli         a1, s5, 25
                  bge          ra, tp, 28f
                  srli         t5, s10, 20
                  srl          s3, s9, s2
                  sll          s5, t6, t0
                  bltu         s8, s2, 32f
                  blt          t3, s6, 34f
                  lui          s2, 233001
                  slli         t1, a2, 16
19:               srai         s7, t0, 10
                  slti         t0, a1, -1212
                  and          zero, s7, t2
                  addi         s10, s10, 678
                  addi         t5, s8, -1891
                  slli         t0, t2, 28
                  sra          ra, s11, t3
                  srli         t1, t2, 4
                  bltu         a3, t2, 28f
28:               srai         t4, t1, 26
                  addi         t1, s10, -1823
                  sltu         t0, a2, s8
                  sll          zero, t4, t5
32:               srl          t2, tp, a0
                  slti         t2, sp, 63
34:               slli         a1, a0, 30
                  addi         a1, ra, 1732
                  addi         a0, t6, 2001
                  addi         s10, sp, 1390
                  bge          s6, s6, 51f
                  or           s5, s5, sp
                  sub          t2, a6, a3
                  bltu         s5, a4, 51f
                  addi         zero, s11, -1498
                  srl          t0, t0, t6
                  andi         s6, s2, 372
                  bgeu         a2, zero, 49f
                  add          a3, t3, s8
                  srai         a2, sp, 7
                  lui          a1, 975911
49:               bltu         s0, a5, 51f
                  sra          a5, a2, a1
51:               ori          a7, a4, -1994
                  slti         zero, t3, -806
                  srli         t5, t2, 17
                  xori         t5, a1, 1185
                  nop
                  and          a4, s6, t1
                  slti         sp, t5, -1674
                  lw           s8, 4(t3)
                  addi         t3, t3, 24
                  xori         s11, t0, -1693
                  or           a5, t4, a2
                  srai         a5, s11, 21
87:               addi x31, x24, 1
87:               jalr x31, x31, 0
sub_5:            add          s3, a0, sp
                  auipc        a7, 875171
                  auipc        s4, 485839
                  bltu         a6, t4, sub_5_stack_p
sub_5_stack_p:    addi         t3, t3, -36
                  slti         tp, s4, -1395
                  andi         ra, a2, 1286
                  xor          tp, s5, s0
                  srl          s4, gp, s9
                  sw           s8, 4(t3)
                  ori          s2, s0, -987
sub_5_16:         jal          s8, 1f
0:                jal          ra, 4f
1:                jal          s9, 8f
2:                jal          a0, 0b
3:                jal          ra, 7f
4:                jal          tp, 13f
5:                jal          t1, 3b
6:                jal          s9, 9f
7:                jal          t1, 6b
8:                jal          t1, 11f
9:                jal          ra, 10f
10:               jal          s11, 12f
11:               jal          ra, 5b
12:               jal          t5, 2b
13:               auipc        ra, 828804
sub_5_0:          jal          s8, 18f
0:                jal          ra, 4f
1:                jal          ra, 28f
2:                jal          gp, 16f
3:                jal          gp, 12f
4:                jal          ra, 23f
5:                jal          t1, 3b
6:                jal          ra, 1b
7:                jal          s7, 26f
8:                jal          s7, 2b
9:                jal          tp, 8b
10:               jal          ra, 17f
11:               jal          ra, 10b
12:               jal          ra, 20f
13:               jal          ra, 19f
14:               jal          t1, 11b
15:               jal          t1, 9b
16:               jal          t1, 21f
17:               jal          ra, 13b
18:               jal          a5, 24f
19:               jal          t1, 6b
20:               jal          t1, 14b
21:               jal          ra, 22f
22:               jal          ra, 7b
23:               jal          t1, 5b
24:               jal          s2, 25f
25:               jal          ra, 27f
26:               jal          a1, 0b
27:               jal          ra, 15b
28:               ori          s4, s11, -98
sub_5_17:         jal          s8, 8f
0:                jal          ra, 3f
1:                jal          t1, 24f
2:                jal          ra, 11f
3:                jal          s6, 5f
4:                jal          ra, 25f
5:                jal          s1, 23f
6:                jal          s1, 2b
7:                jal          ra, 4b
8:                jal          ra, 18f
9:                jal          t4, 15f
10:               jal          ra, 9b
11:               jal          ra, 16f
12:               jal          t1, 19f
13:               jal          a3, 21f
14:               jal          s9, 1b
15:               jal          t2, 6b
16:               jal          ra, 14b
17:               jal          ra, 10b
18:               jal          ra, 17b
19:               jal          ra, 0b
20:               jal          a7, 7b
21:               jal          s3, 20b
22:               jal          ra, 12b
23:               jal          ra, 13b
24:               jal          a5, 22b
25:               slli         tp, s5, 10
sub_5_8:          jal          s8, 14f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          sp, 18f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          ra, 12f
6:                jal          a2, 0b
7:                jal          ra, 20f
8:                jal          t1, 19f
9:                jal          ra, 3b
10:               jal          ra, 17f
11:               jal          ra, 7b
12:               jal          ra, 8b
13:               jal          s1, 10b
14:               jal          a7, 2b
15:               jal          ra, 21f
16:               jal          t1, 13b
17:               jal          ra, 11b
18:               jal          t1, 1b
19:               jal          t5, 15b
20:               jal          t1, 9b
21:               andi         s3, s0, 1181
sub_5_9:          jal          s8, 7f
0:                jal          ra, 1f
1:                jal          a4, 12f
2:                jal          ra, 11f
3:                jal          t1, 6f
4:                jal          t1, 0b
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          t1, 4b
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               jal          tp, 9b
11:               jal          ra, 5b
12:               jal          t1, 8b
13:               jal          ra, 10b
14:               nop
sub_5_7:          jal          s8, 0f
0:                jal          gp, 9f
1:                jal          t1, 2f
2:                jal          t0, 10f
3:                jal          t0, 5f
4:                jal          ra, 1b
5:                jal          t0, 4b
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          t1, 7b
9:                jal          ra, 6b
10:               add          s5, s4, s10
sub_5_5:          jal          s8, 2f
0:                jal          ra, 4f
1:                jal          ra, 5f
2:                jal          ra, 12f
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          sp, 8f
6:                jal          s10, 10f
7:                jal          t1, 15f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 0b
12:               jal          gp, 14f
13:               jal          sp, 16f
14:               jal          t1, 1b
15:               jal          a2, 3b
16:               slti         t5, a1, -1792
sub_5_6:          jal          s8, 11f
0:                jal          t1, 9f
1:                jal          t1, 21f
2:                jal          ra, 17f
3:                jal          ra, 12f
4:                jal          t1, 18f
5:                jal          t1, 6f
6:                jal          ra, 14f
7:                jal          gp, 1b
8:                jal          ra, 20f
9:                jal          t1, 19f
10:               jal          t2, 0b
11:               jal          t1, 3b
12:               jal          ra, 10b
13:               jal          t1, 7b
14:               jal          t1, 4b
15:               jal          ra, 16f
16:               jal          t1, 2b
17:               jal          t1, 5b
18:               jal          t1, 13b
19:               jal          ra, 8b
20:               jal          ra, 15b
21:               xor          t2, s6, a4
sub_5_11:         jal          s8, 14f
0:                jal          ra, 17f
1:                jal          a7, 9f
2:                jal          s6, 23f
3:                jal          t1, 15f
4:                jal          t1, 18f
5:                jal          gp, 6f
6:                jal          ra, 22f
7:                jal          ra, 2b
8:                jal          sp, 13f
9:                jal          a2, 16f
10:               jal          sp, 5b
11:               jal          ra, 21f
12:               jal          ra, 0b
13:               jal          ra, 24f
14:               jal          ra, 7b
15:               jal          ra, 1b
16:               jal          a5, 20f
17:               jal          t1, 3b
18:               jal          t1, 19f
19:               jal          ra, 10b
20:               jal          ra, 8b
21:               jal          t1, 12b
22:               jal          t1, 11b
23:               jal          ra, 4b
24:               ori          ra, s3, 1550
sub_5_3:          jal          s8, 16f
0:                jal          t0, 24f
1:                jal          t1, 11f
2:                jal          ra, 10f
3:                jal          ra, 15f
4:                jal          t1, 6f
5:                jal          s10, 7f
6:                jal          ra, 0b
7:                jal          t1, 9f
8:                jal          ra, 19f
9:                jal          a2, 3b
10:               jal          ra, 1b
11:               jal          t1, 13f
12:               jal          ra, 18f
13:               jal          s9, 14f
14:               jal          ra, 5b
15:               jal          t5, 8b
16:               jal          ra, 23f
17:               jal          ra, 22f
18:               jal          ra, 21f
19:               jal          ra, 12b
20:               jal          t1, 2b
21:               jal          s11, 17b
22:               jal          a5, 4b
23:               jal          a7, 20b
24:               addi         t4, s8, -369
sub_5_18:         jal          s8, 13f
0:                jal          ra, 17f
1:                jal          ra, 20f
2:                jal          t1, 9f
3:                jal          ra, 22f
4:                jal          a4, 18f
5:                jal          t1, 2b
6:                jal          t1, 8f
7:                jal          ra, 11f
8:                jal          ra, 5b
9:                jal          ra, 19f
10:               jal          s9, 6b
11:               jal          ra, 12f
12:               jal          t1, 0b
13:               jal          ra, 21f
14:               jal          t1, 16f
15:               jal          a3, 14b
16:               jal          t1, 7b
17:               jal          sp, 1b
18:               jal          sp, 15b
19:               jal          a0, 3b
20:               jal          t1, 10b
21:               jal          ra, 4b
22:               srl          s5, s2, a1
sub_5_15:         jal          s8, 14f
0:                jal          s8, 11f
1:                jal          ra, 18f
2:                jal          t1, 4f
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          a2, 20f
6:                jal          ra, 17f
7:                jal          ra, 2b
8:                jal          ra, 12f
9:                jal          t1, 21f
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          ra, 22f
13:               jal          t0, 15f
14:               jal          gp, 5b
15:               jal          t1, 3b
16:               jal          ra, 19f
17:               jal          ra, 13b
18:               jal          ra, 0b
19:               jal          ra, 7b
20:               jal          a7, 10b
21:               jal          ra, 8b
22:               andi         s11, a4, 849
sub_5_12:         jal          s8, 15f
0:                jal          ra, 9f
1:                jal          ra, 18f
2:                jal          ra, 21f
3:                jal          ra, 11f
4:                jal          ra, 12f
5:                jal          ra, 7f
6:                jal          ra, 25f
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          t0, 22f
11:               jal          ra, 20f
12:               jal          t1, 19f
13:               jal          t1, 6b
14:               jal          ra, 13b
15:               jal          t1, 4b
16:               jal          ra, 1b
17:               jal          ra, 10b
18:               jal          t1, 23f
19:               jal          ra, 8b
20:               jal          ra, 16b
21:               jal          ra, 24f
22:               jal          t1, 3b
23:               jal          ra, 14b
24:               jal          t1, 17b
25:               sltu         a5, s6, t2
sub_5_14:         jal          s8, 4f
0:                jal          t1, 8f
1:                jal          t6, 11f
2:                jal          ra, 15f
3:                jal          s1, 9f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          ra, 14f
7:                jal          t1, 1b
8:                jal          ra, 6b
9:                jal          s7, 5b
10:               jal          ra, 13f
11:               jal          t1, 10b
12:               jal          ra, 7b
13:               jal          ra, 2b
14:               jal          ra, 3b
15:               slti         a2, s10, -1617
sub_5_2:          jal          s8, 13f
0:                jal          a5, 1f
1:                jal          ra, 7f
2:                jal          gp, 15f
3:                jal          ra, 2b
4:                jal          t1, 16f
5:                jal          a2, 4b
6:                jal          s1, 10f
7:                jal          t0, 11f
8:                jal          ra, 17f
9:                jal          t0, 0b
10:               jal          s1, 14f
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          t2, 9b
14:               jal          t1, 3b
15:               jal          a0, 5b
16:               jal          ra, 12b
17:               addi         s5, a2, -2007
sub_5_19:         jal          s8, 13f
0:                jal          ra, 6f
1:                jal          tp, 3f
2:                jal          ra, 18f
3:                jal          t1, 23f
4:                jal          ra, 12f
5:                jal          a5, 8f
6:                jal          ra, 5b
7:                jal          tp, 1b
8:                jal          ra, 21f
9:                jal          ra, 15f
10:               jal          ra, 16f
11:               jal          t1, 14f
12:               jal          t1, 17f
13:               jal          ra, 20f
14:               jal          ra, 7b
15:               jal          ra, 0b
16:               jal          t1, 4b
17:               jal          s6, 11b
18:               jal          ra, 24f
19:               jal          t0, 2b
20:               jal          ra, 22f
21:               jal          t1, 25f
22:               jal          ra, 10b
23:               jal          ra, 19b
24:               jal          ra, 9b
25:               sltiu        s8, s2, -1009
sub_5_1:          jal          s8, 1f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          t1, 17f
3:                jal          t1, 15f
4:                jal          t1, 8f
5:                jal          s9, 10f
6:                jal          ra, 2b
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          s8, 16f
10:               jal          ra, 14f
11:               jal          s2, 3b
12:               jal          a1, 13f
13:               jal          ra, 4b
14:               jal          t1, 11b
15:               jal          a1, 0b
16:               jal          tp, 12b
17:               slli         zero, t2, 4
sub_5_4:          jal          s8, 13f
0:                jal          ra, 16f
1:                jal          t2, 5f
2:                jal          ra, 6f
3:                jal          a2, 0b
4:                jal          ra, 23f
5:                jal          sp, 10f
6:                jal          a0, 3b
7:                jal          ra, 18f
8:                jal          ra, 1b
9:                jal          t1, 8b
10:               jal          ra, 11f
11:               jal          ra, 12f
12:               jal          t1, 21f
13:               jal          ra, 2b
14:               jal          ra, 15f
15:               jal          ra, 24f
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          ra, 9b
19:               jal          ra, 7b
20:               jal          t1, 17b
21:               jal          t0, 4b
22:               jal          ra, 20b
23:               jal          a4, 22b
24:               sll          a3, a5, a3
                  srai         a3, t4, 28
                  bge          a3, a0, 13f
                  srl          s1, ra, s4
                  sltiu        a7, s10, -1404
                  bltu         t0, a0, 22f
                  bne          s8, gp, 10f
                  srl          s10, tp, a2
                  slt          s9, s10, s3
                  sll          t0, s0, t3
                  ori          s9, a3, 776
10:               slt          s7, s10, s0
                  sll          s9, t5, t2
                  addi         a3, s7, -1614
13:               bne          a0, s11, 29f
                  bne          s10, sp, 34f
                  blt          s4, s9, 16f
16:               bltu         s6, a6, 35f
                  auipc        tp, 683027
                  srli         s11, t3, 17
                  slli         a5, s9, 14
                  nop
                  beq          t5, ra, 37f
22:               add          a5, s11, s2
                  slt          s6, s9, a2
                  srl          sp, t3, t5
                  blt          s4, s4, 31f
                  xor          zero, t0, t5
                  srl          t0, s9, t2
                  lui          s1, 883799
29:               blt          zero, tp, 39f
                  add          s8, t4, s2
31:               nop
                  slt          s1, s9, t2
                  add          zero, s1, s8
34:               or           s3, t4, a4
35:               bge          s0, s5, 39f
                  or           a2, t0, a4
37:               sltu         zero, gp, s2
                  ori          s5, s11, -121
39:               bltu         t3, t1, 49f
                  nop
                  srli         t1, s3, 16
                  xori         s7, t0, 70
                  sltiu        a3, zero, -87
                  srl          s11, t6, ra
                  blt          a6, a4, 56f
                  sll          s7, a2, s2
                  xor          s6, ra, t5
                  bne          a0, a2, 60f
49:               ori          a7, s10, -459
                  bne          s10, s4, 54f
                  bgeu         s8, a3, 64f
                  beq          s8, t4, 55f
                  ori          zero, a3, 6
54:               auipc        s9, 385591
55:               bge          a0, a3, 62f
56:               sub          s9, s6, a4
                  nop
                  sltiu        t1, t5, 1474
                  and          t4, a1, t4
60:               srai         s1, s7, 17
                  add          a3, a2, a0
62:               or           s11, t0, sp
                  or           s5, a2, s9
64:               slti         t6, s6, -686
                  srai         s3, sp, 4
                  xor          s11, a6, sp
                  sll          gp, sp, s5
                  bge          t6, s2, 71f
                  srli         ra, a1, 9
                  lui          s5, 431983
71:               xori         zero, a1, -76
                  bltu         s7, t1, 91f
                  beq          s8, s0, 92f
                  or           a4, gp, s0
                  or           gp, s8, s10
                  auipc        t0, 1042794
                  bgeu         s5, t5, 82f
                  nop
                  bne          gp, s9, 80f
80:               slli         s4, s0, 21
                  srli         s9, a3, 11
82:               nop
                  and          a5, tp, s5
                  blt          t2, t4, 96f
                  bltu         a6, zero, 102f
                  slti         s8, ra, -1460
                  bne          a5, s10, 90f
                  xori         a3, a7, -1514
                  add          s6, s4, a2
90:               blt          s5, s0, 92f
91:               lui          a2, 340743
92:               sltiu        ra, a2, -389
                  slt          zero, s2, s10
                  or           ra, a3, a3
                  or           t0, t6, s5
96:               lui          sp, 83232
                  sra          s11, gp, t4
                  auipc        s6, 1014790
                  and          a4, s10, s0
                  auipc        s9, 998514
                  xori         a5, s9, 169
102:              bgeu         t3, tp, 116f
                  xor          s4, t6, s3
                  blt          s4, a2, 115f
                  or           s5, t4, s5
                  srl          a5, gp, ra
                  slti         s1, s5, 599
                  lui          a1, 723188
                  bgeu         s9, s5, 121f
                  and          s1, tp, a6
                  slti         s9, a5, -717
                  sra          t6, s6, t6
                  slt          t5, s5, gp
                  bne          a1, s7, 117f
115:              xori         s11, gp, -1854
116:              bge          gp, t6, 132f
117:              sll          s7, t0, t2
                  slti         t1, t0, -9
                  beq          s0, t3, 121f
                  sra          ra, t1, a7
121:              slt          s7, zero, s5
                  xori         s5, a2, 982
                  srai         s4, a2, 13
                  ori          s8, s10, 750
                  bltu         tp, a5, 145f
                  lui          zero, 106360
                  srli         s3, t6, 5
                  addi         a4, t2, -1853
                  ori          s3, sp, -446
                  sltu         s1, s6, gp
                  sub          s7, t5, a7
132:              xor          s10, s4, s0
                  sltu         t1, s4, t3
                  sra          t1, s2, s10
                  sra          s10, tp, s1
                  and          gp, a3, tp
                  srai         a5, ra, 21
                  bltu         tp, t3, 141f
                  slt          s4, t2, s1
                  auipc        a4, 428870
141:              slli         t4, s5, 4
                  bne          s10, gp, 149f
                  bltu         s6, t4, 155f
                  beq          a7, s10, 154f
145:              sra          s2, s5, s2
                  xori         a3, t4, 568
                  bge          t1, t1, 166f
                  bgeu         t0, a6, 149f
149:              slti         s2, a4, 704
                  srai         s9, tp, 7
                  srai         t1, s2, 7
                  sra          a1, a6, t0
                  sub          t2, zero, a3
154:              andi         a1, a3, -350
155:              bge          t0, t4, 160f
                  slti         s2, t0, 1106
                  beq          t6, s11, 158f
158:              add          a5, a7, s8
                  blt          s0, s6, 171f
160:              slli         ra, t3, 0
                  andi         gp, a7, -1434
                  slt          tp, tp, ra
                  srli         a1, t1, 15
                  bne          t6, t4, 177f
                  lui          s5, 910189
166:              sltu         a2, tp, s9
                  nop
                  and          gp, a7, s9
                  srai         t5, t0, 3
                  sltu         t6, s8, t3
171:              srai         s4, s2, 29
                  or           s4, s4, a1
                  srl          a4, t3, s7
                  srai         t6, s6, 27
                  srai         s6, s10, 19
                  blt          a2, a0, 193f
177:              sltu         s4, s9, t1
                  bltu         t0, s5, 197f
                  sltiu        a3, t6, 674
                  ori          s11, ra, 1096
                  andi         a2, zero, 840
                  andi         sp, s5, 917
                  xori         s4, t0, -1014
                  slti         ra, a0, 1693
                  and          s11, s5, t0
                  lui          s5, 299010
                  beq          t2, t0, 191f
                  bgeu         s3, t5, 204f
                  bne          t5, s3, 193f
                  srai         s2, t2, 1
191:              xor          s8, a0, s2
                  lui          ra, 336678
193:              bgeu         s3, s1, 205f
                  add          gp, t6, s2
                  sra          gp, a7, t4
                  sra          a2, s1, a3
197:              srl          gp, t2, a0
                  and          sp, ra, a2
                  srli         ra, s3, 22
                  andi         a0, t0, -948
                  sltiu        s11, zero, 1268
                  ori          a0, a0, 1118
                  slti         s6, gp, -198
204:              nop
205:              srl          s6, a3, s3
                  auipc        gp, 98304
                  slt          gp, s2, a0
                  srl          t0, t6, zero
                  sltu         s11, a1, t3
                  auipc        s8, 817161
                  beq          s4, s2, 221f
                  nop
                  slli         s7, gp, 9
                  xor          t2, s3, a6
                  slt          a1, a0, s11
                  add          zero, s11, a7
                  slti         s3, t2, -746
                  sll          ra, t6, a7
                  beq          a5, zero, 225f
                  sltiu        s3, s5, -502
221:              add          s10, s7, s11
                  srli         a0, s7, 6
                  and          s4, s11, s5
                  nop
225:              srl          tp, s7, zero
                  bge          s1, a1, 237f
                  add          s3, s10, s6
                  bne          s6, a4, 233f
                  ori          t2, a7, -1944
                  sltu         a2, s9, zero
                  auipc        a5, 236435
                  sltu         a2, tp, sp
233:              sltu         s7, a7, t1
                  beq          s2, s7, 248f
                  sub          zero, t5, t5
                  srl          t4, s8, s0
237:              bgeu         a1, s1, 255f
                  slli         s2, s8, 5
                  xori         s8, s2, -109
                  slt          s4, s6, s0
                  lui          a3, 828193
                  slli         a7, t0, 5
                  slt          s2, a7, a0
                  lui          s10, 242135
                  slti         t0, t1, -637
                  bge          a4, s3, 257f
                  sub          s3, t1, ra
248:              ori          s2, s1, -1168
                  blt          a0, a2, 261f
                  bne          a4, tp, 269f
                  or           s6, gp, t4
                  slti         a0, s3, -1840
                  bltu         t0, s8, 256f
                  addi         a5, t6, 1775
255:              sub          s1, a0, t5
256:              lui          gp, 8573
257:              and          t0, a4, a6
                  add          s8, a5, t0
                  bltu         s6, t3, 261f
                  nop
261:              bgeu         s10, t1, 273f
                  bgeu         s2, a3, 266f
                  sltiu        a1, s7, 1089
                  bgeu         t2, s9, 278f
                  sll          a2, s2, s7
266:              blt          a6, gp, 278f
                  lui          s4, 429481
                  bne          t2, s1, 273f
269:              bgeu         s2, s2, 287f
                  addi         s10, s2, -740
                  bne          t6, s7, 290f
                  auipc        s10, 321222
273:              ori          t5, ra, 1811
                  beq          sp, s7, 284f
                  addi         tp, tp, -1652
                  sltu         a1, s10, sp
                  bltu         s1, t2, 278f
278:              addi         t4, gp, 1519
                  sltiu        a2, s0, 446
                  addi         t4, t5, -299
                  srli         s8, a6, 5
                  bge          s7, a0, 288f
                  sll          s4, t6, a3
284:              bltu         s11, t3, 296f
                  auipc        s10, 802972
                  bge          a5, a1, 299f
287:              slt          s6, a5, s5
288:              add          zero, gp, t3
                  sll          s4, ra, s11
290:              sub          s5, s6, s0
                  ori          t6, s6, 520
                  srl          t6, s0, ra
                  srli         s3, s2, 21
                  nop
                  sll          t5, t4, s11
296:              beq          s6, t5, 297f
297:              sltiu        s3, a4, 1431
                  sub          s7, s9, t3
299:              xor          ra, a7, ra
                  add          zero, sp, s7
                  and          a1, t5, s0
                  srli         tp, t0, 10
                  addi         t4, s10, -137
                  sltu         t2, t4, s1
                  sltu         s7, ra, s4
                  sltiu        s11, ra, -351
                  auipc        s10, 492793
                  sra          s11, a2, t3
                  bltu         s1, t6, 329f
                  lui          s4, 428692
                  sub          a7, a0, zero
                  xori         s10, s11, -725
                  bltu         t6, s10, 318f
                  sub          t6, t0, s2
                  sra          s1, t2, t3
                  slti         zero, tp, -1309
                  blt          zero, t3, 336f
318:              slt          s8, a0, s4
                  addi         s3, zero, -31
                  srl          gp, t4, t4
                  slli         t6, t5, 24
                  sub          t0, s11, s9
                  andi         t0, s6, -1680
                  bne          t0, s6, 340f
                  bgeu         s10, s2, 328f
                  sltu         t6, t1, s10
                  or           t1, a7, s6
328:              beq          t6, ra, 340f
329:              auipc        ra, 276483
                  xori         s1, t5, -1083
                  blt          t6, a3, 334f
                  slti         a5, s2, -2010
                  andi         zero, s9, 1375
334:              srl          a2, s3, s6
                  ori          s8, a3, -1204
336:              and          zero, a3, t4
                  sll          s10, t3, t2
                  slli         s2, t4, 3
                  add          a7, s7, t5
340:              sra          s4, a5, sp
                  sra          a0, a5, a2
                  bltu         a0, a6, 346f
                  blt          s5, tp, 353f
                  slti         a3, s8, -972
                  and          a1, a6, s4
346:              sll          s7, a3, s0
                  and          s6, a1, a3
                  nop
                  bgeu         a7, t0, 360f
                  sub          s9, zero, s7
                  slli         zero, t3, 21
                  sub          s9, s1, s5
353:              xori         s10, ra, 1621
                  srai         s2, s7, 19
                  srli         s7, a2, 5
                  andi         s9, s9, 1771
                  addi         s6, a6, -943
                  bge          t5, s5, 361f
                  srl          a1, s6, t1
360:              srl          t0, a5, t0
361:              nop
                  sll          s1, t5, gp
                  sll          s4, a5, a0
                  slt          s9, a7, s11
                  blt          t6, s9, 384f
                  srli         a3, t4, 31
                  add          sp, t6, s3
                  bne          s5, t4, 384f
                  slt          s10, a0, t0
                  lui          s3, 515215
                  srl          zero, s2, zero
                  bltu         s5, s3, 389f
                  bgeu         a6, s11, 380f
                  and          s4, s10, a6
                  srli         s8, sp, 19
                  addi         a7, s3, 1231
                  sll          t5, s6, t5
                  srl          s10, s8, a2
                  beq          s1, s6, 390f
380:              sra          s2, s10, a5
                  or           s1, t2, a5
                  srl          s2, t4, s0
                  nop
384:              or           a3, a6, a7
                  srai         a1, a1, 7
                  srli         tp, a3, 27
                  srl          s9, s0, a1
                  lui          a0, 459792
389:              xori         a0, t5, 1074
390:              ori          tp, zero, 989
                  addi         s9, a1, 1688
                  srl          a7, t5, gp
                  nop
                  slli         t4, a7, 17
                  slli         s1, sp, 16
                  blt          a3, a1, 403f
                  xori         s6, s0, -1072
                  bltu         s1, zero, 402f
                  blt          s1, s8, 409f
                  bltu         t6, t0, 417f
                  andi         s8, s9, -92
402:              addi         t0, ra, 1099
403:              lui          zero, 977573
                  xor          s9, gp, t4
                  srl          s2, t4, ra
                  sub          s7, a2, gp
                  srli         t6, a0, 21
                  bltu         s5, t3, 427f
409:              nop
                  or           a5, a6, s3
                  nop
                  addi         gp, s4, 249
                  nop
                  xori         s3, s4, 1291
                  sra          tp, tp, s0
                  auipc        a3, 1000560
417:              blt          s7, s3, 421f
                  and          s6, s3, s1
                  srl          s9, sp, s8
                  slli         t4, sp, 8
421:              bge          s11, s6, 432f
                  sra          ra, a6, t1
                  sra          gp, t0, a1
                  xori         s7, s1, -1557
                  srai         gp, s11, 0
                  srl          t4, tp, t2
427:              andi         a4, a6, -1051
                  sltu         s11, a0, sp
                  slti         s10, s3, 179
                  srli         s2, ra, 20
                  addi         a2, sp, -245
432:              sra          s2, t5, s9
                  addi         s9, s10, -1281
sub_5_10:         jal          s8, 5f
0:                jal          ra, 13f
1:                jal          t1, 3f
2:                jal          gp, 9f
3:                jal          t0, 2b
4:                jal          ra, 8f
5:                jal          t1, 16f
6:                jal          ra, 15f
7:                jal          ra, 18f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          s8, 11f
11:               jal          ra, 7b
12:               jal          sp, 22f
13:               jal          tp, 21f
14:               jal          ra, 0b
15:               jal          t1, 19f
16:               jal          ra, 14b
17:               jal          ra, 20f
18:               jal          s8, 17b
19:               jal          t1, 12b
20:               jal          ra, 6b
21:               jal          t1, 1b
22:               nop
                  xori         tp, s2, 1324
                  bgeu         ra, s6, 438f
                  slt          s1, s7, s9
                  auipc        s3, 524105
438:              beq          s10, s9, 441f
                  slli         tp, a2, 22
                  beq          s3, s2, 453f
441:              bgeu         s7, t3, 453f
                  sub          a5, a6, a5
                  beq          s11, s11, 444f
444:              slt          a2, a6, ra
                  xori         t4, t2, -1228
                  bge          t2, gp, 462f
                  auipc        t6, 263283
                  xor          zero, t0, a1
                  or           a5, a0, a5
                  bge          a3, s0, 451f
451:              srli         t6, a6, 25
                  auipc        a3, 16592
453:              bne          s8, a4, 459f
                  sll          t0, t6, a4
                  sltiu        tp, zero, 1906
                  blt          sp, gp, 459f
                  lui          a1, 857366
                  srl          sp, sp, t0
459:              and          s11, s0, a3
                  slti         s5, a2, -6
                  auipc        s6, 1015312
462:              slli         t6, a1, 14
                  sltu         s8, s8, s4
                  xor          s5, a6, t2
                  ori          gp, a4, -761
                  auipc        s4, 523754
                  or           s1, a2, s11
                  andi         s8, a6, 141
                  srl          t1, t6, s8
                  sra          s7, t3, s0
                  nop
                  sra          ra, zero, s0
                  blt          ra, t1, 487f
                  andi         s4, a4, 525
                  blt          t1, a0, 494f
                  slli         s10, tp, 8
                  addi         t0, s1, -1504
                  auipc        a7, 188079
                  or           t2, t0, s6
                  bge          s3, a2, 492f
                  addi         ra, s7, -797
                  blt          a4, s11, 487f
                  beq          a6, s7, 493f
                  ori          t1, a3, 580
                  sra          t5, t5, a6
                  and          t1, s7, t6
487:              bge          zero, t4, 505f
                  srl          s8, a2, t2
                  bge          a1, t3, 494f
                  bne          a3, t0, 510f
                  nop
492:              nop
493:              slli         a3, s5, 0
494:              srli         t2, t4, 19
                  ori          s7, s10, -1853
                  nop
                  bne          s9, t3, 513f
                  andi         s1, ra, 119
                  slt          t2, s0, s4
                  sra          a4, t1, s1
                  and          a0, a7, t5
                  bgeu         a5, sp, 521f
                  lui          s5, 799459
                  srli         sp, sp, 8
505:              bge          t2, s8, 517f
                  xor          a0, a2, tp
                  sltiu        s11, t6, -1753
                  bgeu         s11, s5, 520f
                  auipc        t2, 532375
510:              xor          s7, ra, a0
                  and          t6, t0, s10
                  sll          a5, a0, t3
513:              nop
                  sra          ra, a6, s9
                  srl          a5, s10, a0
                  slt          sp, a3, ra
517:              ori          s11, sp, 1246
                  lui          s7, 868347
                  andi         zero, t2, 234
520:              bltu         t4, s8, 531f
521:              auipc        t6, 76054
                  srl          t0, t4, s6
                  srl          s7, a4, ra
                  addi         tp, a4, 1832
                  sltiu        s10, gp, 1054
                  andi         t0, a1, -1558
                  sra          s6, s7, a1
                  sll          a1, t6, a5
                  beq          sp, t6, 531f
                  and          a3, t2, s3
531:              srl          s5, t2, t2
                  bgeu         a6, a3, 544f
                  srli         a3, tp, 5
                  sltu         s8, a2, t3
                  andi         t2, s0, 480
                  beq          sp, s10, 556f
                  sll          s8, s6, s7
                  bge          s4, a1, 549f
                  srl          s3, t1, ra
                  sll          gp, sp, t4
                  slli         s6, t3, 3
                  andi         s1, t2, -1799
                  sll          t4, t1, s4
544:              nop
                  bltu         s1, a7, 555f
                  blt          s2, a7, 548f
                  bne          t5, s10, 563f
548:              sltu         s4, a7, s1
549:              sll          sp, t5, t2
                  srli         t5, s8, 0
                  lui          t4, 1008786
                  lui          a2, 983525
                  slt          s3, t0, s5
                  auipc        zero, 658486
555:              sll          s9, s2, s5
556:              auipc        s5, 342027
                  slti         gp, sp, 961
                  srl          ra, s11, sp
                  sll          t1, a2, gp
                  bge          s1, a4, 563f
                  sltu         s2, t0, t0
                  add          s1, a2, a0
563:              bge          a1, a0, 579f
                  bltu         t6, s2, 582f
                  addi         a4, a1, 1963
                  and          a2, t0, s2
                  sll          s9, tp, s1
                  beq          tp, a5, 587f
                  andi         s2, s11, 1115
                  lui          t2, 300703
                  bltu         s3, ra, 582f
                  sltiu        t6, s0, -915
                  lui          a1, 466802
                  slt          a7, t0, a3
                  slt          t1, a2, s3
                  beq          s10, s8, 580f
                  sra          a4, tp, t0
                  slt          s6, s9, s5
579:              sub          t2, a5, a7
580:              srli         tp, t3, 27
                  and          tp, t3, s2
582:              add          t6, a0, s5
                  bge          s6, sp, 595f
                  bge          gp, s4, 587f
                  sltu         a0, zero, s9
                  addi         a3, s8, -1550
587:              blt          s7, a3, 592f
                  addi         s8, sp, 1496
                  nop
                  xor          s8, t3, s10
                  sltu         zero, s11, gp
592:              slli         a1, a1, 8
                  xor          a4, t0, s4
                  xor          t2, s11, s6
595:              beq          t6, a4, 612f
                  auipc        s8, 860329
                  and          s2, t0, a6
                  bltu         tp, sp, 599f
599:              sltiu        s10, ra, -1540
                  andi         s5, s10, -1593
                  srli         s9, s9, 22
                  sub          s11, s11, s7
                  beq          s9, gp, 609f
                  addi         s7, t3, -505
                  andi         s4, a3, 356
                  xori         s10, s8, -457
                  srl          s8, tp, a7
                  add          t5, t0, s11
609:              bgeu         s8, a3, 616f
                  bgeu         a3, s7, 611f
611:              lui          zero, 313356
612:              srli         a5, ra, 15
                  sll          t2, t5, tp
                  sltu         tp, t0, s10
                  slt          a3, tp, sp
616:              bge          a0, t0, 635f
                  bne          gp, t0, 629f
                  bne          a2, s1, 637f
                  or           t5, s4, s2
                  srl          t2, t3, s4
                  sll          s5, ra, s8
                  and          t4, tp, t1
                  bgeu         s1, s0, 635f
                  ori          t1, s8, 669
                  beq          a0, sp, 630f
                  sltiu        t2, s2, -1699
                  slt          t6, tp, a6
                  sltiu        t4, s11, 115
629:              srli         zero, s3, 0
630:              slti         s1, ra, -633
                  sltiu        s8, s1, 635
                  sll          ra, s9, a4
                  andi         s8, s9, 1458
                  bne          tp, s0, 647f
635:              srl          t6, a6, t4
                  auipc        t2, 808307
637:              srl          t1, s10, s6
                  sltu         s4, a3, s9
                  sll          s4, t3, t0
                  and          a2, a2, a7
                  srai         a1, a7, 1
                  sltu         a5, s6, a0
                  srl          s8, s9, zero
                  xori         t0, s2, -1428
                  slt          ra, tp, s10
                  slt          s4, t6, s7
647:              bge          t4, s6, 650f
                  xor          s3, gp, t6
                  andi         gp, ra, 912
650:              xor          a4, s4, t2
                  ori          s8, zero, -938
                  sub          a3, gp, gp
                  blt          t2, a3, 667f
                  srai         a3, s6, 19
                  or           s2, t0, s0
                  slti         s10, s0, 361
                  nop
                  slli         sp, s0, 18
                  bge          a3, t2, 669f
                  xor          a3, s9, a3
                  slti         s7, a7, -1849
                  blt          s5, s10, 666f
                  srai         a7, s1, 6
                  or           s5, s8, s11
                  bltu         s10, t0, 682f
666:              add          a7, t5, s9
667:              sub          s4, t6, a1
                  srai         a1, s3, 29
669:              sub          zero, a2, ra
                  sltiu        s1, s2, -250
                  add          s8, a3, a0
                  andi         s6, a1, 1399
                  bltu         a7, zero, 693f
                  lui          tp, 188887
                  andi         tp, sp, 1509
                  sub          a4, s7, t2
                  sltiu        a0, t1, 965
                  srli         a2, t3, 0
                  add          sp, t0, gp
                  bgeu         s1, a4, 690f
                  sltiu        s7, s8, 417
682:              sra          t0, a5, gp
                  add          gp, s0, s7
                  sltu         s9, a6, a5
                  sll          a3, a7, s2
                  slli         gp, s5, 18
                  andi         s5, zero, -615
                  sll          a7, a7, s9
                  auipc        s6, 417782
690:              bne          ra, s5, 701f
                  auipc        t6, 246483
                  bge          t6, tp, 698f
693:              srai         s2, ra, 11
                  srai         t0, a0, 8
                  bltu         tp, tp, 697f
                  beq          a7, s4, 708f
697:              sltiu        s3, t4, -2002
698:              bge          s9, t0, 703f
                  bne          ra, s8, 711f
                  bge          s7, s2, 701f
701:              xori         s2, a1, -1670
                  sltiu        s1, sp, -341
703:              sltu         s5, a1, sp
                  sltu         t4, s11, t4
                  sll          a2, a5, s11
                  add          a3, gp, s2
                  srl          s3, a1, t4
708:              srli         tp, gp, 27
                  bge          tp, s7, 721f
                  srai         a7, a6, 1
711:              xor          a0, a3, t6
                  add          s1, s11, t5
                  lui          s1, 329256
                  ori          t4, s5, -10
                  xor          a4, a2, ra
                  sra          a2, s9, s3
                  bge          t1, ra, 730f
                  srai         s10, t6, 16
                  bgeu         a3, a5, 723f
                  slt          s10, tp, s9
721:              bgeu         a0, t1, 735f
                  or           a7, s10, s5
723:              andi         s11, s11, 1462
                  sltu         tp, s4, a0
                  slti         s2, s4, 1095
                  slt          s2, s5, s1
                  sll          a0, t4, a6
                  slli         t2, a3, 11
                  or           sp, t2, s6
730:              slt          s6, s8, a3
                  bltu         s10, a5, 732f
732:              or           s4, a0, s9
                  bltu         a5, t4, 752f
                  sltiu        a5, sp, -1172
735:              nop
                  bge          s6, t1, 748f
                  xor          a2, t5, s7
                  sra          ra, sp, sp
                  slt          s1, s6, t4
                  beq          s1, s0, 759f
                  slti         s7, t0, 203
                  andi         s1, t2, 958
                  sub          s5, a7, a4
                  nop
                  auipc        sp, 189855
                  or           t2, gp, a4
                  nop
748:              and          s3, s0, s2
                  xori         s6, t2, -919
                  xori         s9, a1, -1070
                  andi         a5, sp, -876
752:              add          s7, t3, s0
                  sll          a7, s6, s3
                  srl          a3, s5, t0
                  nop
                  sll          tp, sp, a4
                  srai         a4, t3, 1
                  srai         ra, t0, 10
759:              ori          a5, t3, 981
                  addi         a3, s1, -1504
                  bne          s0, a4, 765f
                  slti         s1, a3, -285
                  slt          s9, a7, t5
                  sub          t5, s6, t1
765:              beq          sp, sp, 781f
                  xori         a1, s1, -94
                  sltiu        a5, s2, 554
                  slli         a4, t3, 26
                  auipc        gp, 47859
                  sltiu        t1, t5, 1023
                  blt          s4, a1, 774f
                  sltu         tp, t3, tp
                  andi         s5, sp, -123
774:              srl          s11, a7, zero
                  srli         ra, a3, 22
                  bne          s5, a5, 787f
                  auipc        a7, 784554
                  add          s4, s7, s10
                  slt          s9, s11, s2
                  sltiu        s8, t6, -1160
781:              bge          s7, t0, 797f
                  srl          s3, s1, a5
                  sll          gp, t6, a3
                  lui          a2, 992524
                  blt          s6, ra, 803f
                  slt          s4, s8, t0
787:              sltu         t2, a1, a6
                  slti         s11, zero, 461
                  blt          s0, s7, 808f
                  srli         s2, t3, 29
                  lui          ra, 855658
                  andi         t0, t2, 1317
                  slt          s1, a4, s7
                  srli         zero, s5, 10
                  sltu         ra, a2, s11
                  srai         t5, t3, 24
797:              sltu         a1, t6, a2
                  auipc        s1, 1009477
                  xori         s4, t4, -1684
                  ori          s5, tp, -114
                  bge          a2, s9, 804f
                  sll          s9, t3, t0
803:              bgeu         s11, s1, 813f
804:              sltu         gp, s1, s5
                  srl          t2, s9, s6
                  slli         s8, s5, 21
                  andi         s9, ra, -276
808:              srl          gp, t0, gp
                  bge          t6, s0, 816f
                  add          s10, a6, s4
                  beq          s10, s4, 814f
                  bgeu         s1, a2, 817f
813:              sltu         s8, s2, gp
814:              add          s5, a0, t3
                  sltu         t1, a6, s2
816:              sltu         a4, s8, a6
817:              sll          s9, a0, sp
                  srl          sp, t4, t5
                  andi         t4, s10, -702
                  xori         a7, zero, 2017
                  ori          a2, a1, -1223
                  sub          a1, s8, ra
                  nop
                  and          s2, a7, t3
                  sltu         s2, s9, s8
                  srli         a7, s0, 23
                  xor          t1, s4, s2
                  srl          t1, a6, tp
                  slt          s4, s8, s9
                  sub          tp, a0, s8
                  and          a4, ra, t6
                  slt          a7, tp, s10
                  lui          t2, 795415
                  sub          s8, s4, s8
                  andi         s1, a5, 1940
                  srai         t5, s2, 0
                  or           s7, a2, s5
                  sltu         t1, s1, a3
                  srl          a0, s0, t1
                  blt          a3, s3, 841f
841:              bge          sp, s3, 854f
                  ori          s7, ra, -858
                  ori          s11, s2, -1232
                  nop
                  addi         zero, t0, 1024
                  blt          a0, a2, 850f
                  blt          a4, s6, 851f
                  srai         a0, s5, 22
                  slli         s8, gp, 19
850:              bgeu         s5, s1, 860f
851:              xor          zero, a0, s11
                  and          s6, t3, a6
                  sltiu        t0, t6, 767
854:              nop
                  blt          t1, s10, 865f
                  srli         s9, t0, 4
                  srai         t2, sp, 26
                  srl          s2, tp, a6
                  add          s10, s1, a3
860:              slt          t2, t2, a2
                  beq          s5, t4, 862f
862:              xor          t0, a0, a3
                  addi         s4, ra, -1502
                  lui          s7, 586854
865:              or           t1, s11, a2
                  bne          s6, a1, 878f
                  bltu         s1, t6, 886f
                  sub          t0, s9, a0
                  sltiu        ra, t6, 1219
                  sub          s5, s7, sp
                  sra          t0, t0, s9
                  add          t4, ra, tp
                  bge          s10, a2, 880f
                  add          t5, zero, sp
                  sltiu        s4, a5, -552
                  xori         a5, sp, 693
                  and          s11, s7, s4
878:              auipc        s1, 392723
                  lui          a0, 576779
880:              xor          s5, s6, a6
                  ori          gp, ra, 1413
                  xori         a7, a7, -89
                  bltu         gp, s7, 885f
                  and          a2, a2, a2
885:              sltu         s4, a5, t3
886:              sll          a0, s9, s2
                  sltiu        s10, s9, -1934
                  bltu         t4, t1, 904f
                  srli         s5, s2, 24
                  blt          s8, s11, 904f
                  xor          gp, s9, a0
                  bne          t4, t4, 910f
                  or           ra, a7, s3
                  beq          t2, s4, 914f
                  sltu         t4, gp, s5
                  srl          s8, s4, a2
                  ori          t2, t1, -32
                  nop
                  slli         gp, a4, 15
                  srli         a7, s6, 31
                  srli         t6, s8, 6
                  srl          a7, ra, s8
                  beq          s3, s7, 906f
904:              sltiu        s9, s9, 1728
                  bne          a4, s5, 924f
906:              sltu         t4, t6, ra
sub_5_13:         jal          s8, 9f
0:                jal          t1, 1f
1:                jal          t1, 6f
2:                jal          ra, 5f
3:                jal          t1, 7f
4:                jal          ra, 13f
5:                jal          ra, 4b
6:                jal          t4, 8f
7:                jal          ra, 14f
8:                jal          t1, 3b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          t0, 12f
12:               jal          ra, 0b
13:               jal          ra, 11b
14:               sll          s6, a6, s1
                  addi         ra, a3, 172
                  add          s3, a1, a5
                  addi         ra, s3, -743
910:              bne          t0, a7, 915f
                  andi         t2, s10, -1528
                  sltu         t2, s2, a4
                  add          t6, a6, a7
914:              xori         s6, s0, 140
915:              blt          t5, a7, 920f
                  or           a7, s7, s2
                  srai         a0, tp, 4
                  lui          t5, 605071
                  srl          a4, s4, t2
920:              bgeu         sp, s6, 932f
                  auipc        a0, 166267
                  and          s6, s1, s1
                  add          s2, s3, t4
924:              sll          a2, sp, s4
                  sltiu        s1, a2, 657
                  sll          t0, a1, a0
                  lui          a4, 792786
                  srli         t1, s4, 24
                  ori          a7, a5, -1319
                  and          s5, a3, a7
                  slli         a7, s0, 9
932:              bne          t3, a6, 938f
                  bge          a3, s3, 936f
                  bgeu         t1, ra, 950f
                  add          ra, zero, s0
936:              addi         s10, gp, 1422
                  xor          a7, t5, a4
938:              xori         t5, s10, -116
                  bge          a4, a2, 956f
                  bgeu         a1, sp, 952f
                  blt          t6, t1, 952f
                  ori          gp, s10, -176
                  lui          s9, 762956
                  sltiu        s11, s5, -1032
                  ori          t0, t0, -1930
                  auipc        t6, 935116
                  slt          a2, a5, sp
                  add          s8, t2, s2
                  ori          gp, t0, -1752
950:              nop
                  slt          s3, t2, s3
952:              srl          s1, s6, a4
                  auipc        a2, 875378
                  bltu         t1, ra, 957f
                  slti         s2, s5, -1435
956:              auipc        s9, 346235
957:              sltiu        s8, s9, -1058
                  slli         s8, zero, 3
                  xor          a5, sp, s0
                  slt          tp, a1, t1
                  sll          s4, s0, s11
                  bne          s6, s5, 974f
                  auipc        s10, 596193
                  andi         a7, s11, 1069
                  bne          s10, ra, 976f
                  sll          gp, tp, ra
                  sub          a7, t1, a2
                  xori         a7, a2, 2002
                  andi         s1, t5, -1565
                  add          s6, s5, t5
                  bne          a7, a2, 990f
                  srli         ra, t1, 23
                  auipc        s10, 804334
974:              and          s7, a4, a4
                  auipc        s11, 645590
976:              xor          s6, a1, s4
                  and          ra, sp, a0
                  srai         tp, s7, 10
                  sll          a3, t1, a4
                  srai         t2, s5, 16
                  srai         s1, t1, 12
                  sub          s1, t1, s4
                  xor          zero, s7, s2
                  beq          a4, a0, 995f
                  srli         s10, t4, 9
                  lui          a2, 818847
                  auipc        a2, 1018676
                  bne          s7, a3, 998f
                  add          s2, s7, a4
990:              beq          tp, s0, 999f
                  sltiu        a0, s3, -237
                  and          s2, s0, s2
                  slt          t0, a0, tp
                  xor          a1, s5, s6
995:              sltiu        a2, s1, -849
                  blt          s8, ra, 997f
997:              bgeu         t5, s4, 999f
998:              srli         a5, a6, 21
999:              srai         t4, a0, 2
                  lw           s8, 4(t3)
                  nop
                  addi         t3, t3, 36
                  auipc        t4, 687201
                  xori         s1, t5, 843
                  slt          t6, s7, a6
                  add          t1, t6, a1
                  or           a0, t2, s3
                  sra          t0, t4, t4
1459:             addi x5, x24, 1
1459:             jalr x5, x5, 0
sub_1:            slt          s9, t6, t5
                  add          a0, t6, t3
                  srli         sp, t3, 29
                  addi         t3, t3, -64
                  addi         ra, tp, -1097
                  sltiu        s6, a2, 1866
                  sltu         t0, t1, t4
                  slt          gp, a7, s5
                  sub          zero, s7, ra
                  sw           s8, 4(t3)
                  slti         s5, s2, -1480
                  srl          s1, s1, a3
                  la           t5, sub_2
                  sll          s11, s10, a5
                  addi         t5, t5, 230
                  slti         zero, s11, -1768
                  sltiu        a7, s4, 548
                  srai         s10, s2, 25
                  auipc        sp, 509396
sub_1_j3:         jalr         s8, t5, -229 #jump sub_1 -> sub_2
                  nop
                  slt          s1, s5, s8
                  srl          s4, t0, a2
                  xor          t2, tp, a1
                  nop
sub_1_j4:         jal          s8, sub_3 #jump sub_1 -> sub_3
                  add          a1, ra, a4
                  beq          s11, s9, sub_1_j5 #branch to jump instr
                  xor          tp, t2, s4
                  add          s7, t2, t6
                  slt          s6, a4, a5
                  srai         t1, s6, 2
                  slt          a5, s9, a7
                  xor          a7, t3, a1
                  xori         t2, a1, 254
                  srai         tp, t3, 29
sub_1_j5:         jal          s8, sub_2 #jump sub_1 -> sub_2
sub_1_3:          jal          s8, 2f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          s9, 7f
5:                jal          ra, 1b
6:                jal          t1, 10f
7:                jal          t1, 6b
8:                jal          t1, 0b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          t0, 8b
12:               jal          t1, 13f
13:               lui          ra, 512913
sub_1_2:          jal          s8, 6f
0:                jal          t1, 9f
1:                jal          t1, 11f
2:                jal          ra, 8f
3:                jal          ra, 12f
4:                jal          t1, 5f
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          s8, 14f
8:                jal          t4, 0b
9:                jal          t0, 1b
10:               jal          ra, 3b
11:               jal          ra, 15f
12:               jal          ra, 13f
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               addi         a0, s0, 1969
sub_1_1:          jal          s8, 14f
0:                jal          ra, 17f
1:                jal          ra, 5f
2:                jal          ra, 1b
3:                jal          t1, 16f
4:                jal          t1, 13f
5:                jal          ra, 20f
6:                jal          ra, 9f
7:                jal          t1, 11f
8:                jal          ra, 7b
9:                jal          t1, 2b
10:               jal          ra, 18f
11:               jal          s10, 23f
12:               jal          ra, 19f
13:               jal          gp, 22f
14:               jal          t1, 12b
15:               jal          ra, 10b
16:               jal          t1, 21f
17:               jal          t6, 6b
18:               jal          t1, 3b
19:               jal          ra, 4b
20:               jal          ra, 8b
21:               jal          ra, 0b
22:               jal          ra, 15b
23:               sra          s3, s8, a5
                  sra          s9, sp, s8
                  add          t0, a3, s2
                  ori          s9, s7, 48
                  lui          s4, 548230
                  and          a1, t2, zero
                  nop
                  sub          a4, a1, s11
                  slli         t2, sp, 10
                  auipc        s3, 585348
                  slt          s1, s5, s10
                  bge          t6, a5, 20f
                  slli         s3, gp, 27
                  srl          tp, a2, s6
                  and          ra, s7, s2
                  sll          ra, a2, a1
                  add          a1, a1, s3
                  bltu         s10, sp, 21f
                  lui          s7, 600480
                  lui          s7, 828768
                  slt          a2, gp, a3
20:               nop
21:               blt          s11, a1, 30f
                  slti         s7, sp, 1970
                  bne          a2, s9, 39f
                  srli         s7, a6, 22
                  sll          s6, sp, s1
                  nop
                  sub          a3, sp, t3
                  slli         s1, t3, 3
                  srai         s5, gp, 24
30:               slti         a0, a4, 1179
                  slli         s9, s6, 29
                  addi         t1, a6, 744
                  sll          s10, s10, a7
                  slli         s4, a3, 30
                  sltiu        tp, t5, 1814
                  lui          s1, 888941
                  lui          s6, 129796
                  add          s3, s11, a4
39:               xori         s7, s10, -518
                  xori         s7, a3, 1511
                  sltiu        gp, s6, -1558
                  ori          zero, gp, 845
                  auipc        a0, 827843
                  sra          gp, s7, a0
                  andi         a1, sp, 1546
                  and          s6, s10, s9
                  add          t2, s5, a5
                  bge          a0, s8, 59f
                  slt          a7, a2, tp
                  srl          t4, a6, gp
                  sra          s3, s8, a2
                  auipc        t4, 767771
                  bltu         s10, s8, 61f
                  srl          a1, sp, a2
                  add          s4, s1, t5
                  bgeu         a6, gp, 68f
                  andi         ra, s4, 997
                  nop
59:               lui          s9, 902604
                  blt          t4, s9, 76f
61:               sub          s5, t1, a4
                  srli         s5, t5, 23
                  or           s3, s0, a1
                  addi         s5, gp, 1268
                  auipc        a5, 74665
                  nop
                  srai         a2, s4, 6
68:               and          s1, t5, s4
                  bne          s3, t4, 73f
                  addi         a2, t6, 686
                  sub          a3, t5, a0
                  or           t0, t1, a7
73:               nop
                  nop
                  slli         s7, a4, 28
76:               blt          t6, t3, 85f
                  add          sp, s0, s1
                  slt          ra, tp, s9
                  xor          t6, gp, s7
                  sub          a1, a0, t5
                  nop
                  ori          s11, a6, -1918
                  slt          s1, s3, t0
                  beq          a0, a6, 104f
85:               slt          s2, t2, s5
                  sltu         t5, s3, t0
                  bgeu         a2, s8, 93f
                  sltu         zero, s0, t6
                  ori          s9, tp, 1978
                  bgeu         s3, t1, 94f
                  bltu         t6, a3, 104f
                  xor          gp, t3, a4
93:               xori         s3, a4, 905
94:               xori         ra, s8, -867
                  bge          tp, a7, 99f
                  slt          a0, t4, ra
                  srai         t6, zero, 25
                  auipc        s2, 1029708
99:               bge          a7, a7, 100f
100:              xor          t6, s3, t6
                  slti         s5, a5, 996
                  srai         a2, a3, 4
                  slti         s3, a0, 1486
104:              sltiu        t4, a4, -2012
                  bgeu         t5, s10, 119f
                  slti         t2, t1, -9
                  or           t2, a5, s8
                  srl          zero, t2, a1
                  sltiu        a0, s9, 540
                  beq          t5, s6, 124f
                  sll          s2, a2, s11
                  andi         a5, a0, -662
                  xor          ra, a0, a5
                  slt          a0, s11, t0
                  nop
                  sub          sp, s2, a4
                  xori         a1, a3, 1068
                  srli         a3, t1, 27
119:              addi         t2, zero, 2038
                  slli         s5, s9, 23
                  srai         a3, s4, 18
                  sll          t0, t4, a4
                  slli         s5, t5, 1
124:              auipc        s4, 926537
                  slti         t5, tp, 1481
                  sltiu        s3, t4, -1294
                  andi         s1, a0, -890
                  auipc        t0, 174444
                  blt          a5, s9, 149f
                  sltu         t6, gp, gp
                  auipc        s7, 317673
                  slli         zero, s5, 24
                  blt          s0, s0, 141f
                  andi         s7, tp, 617
                  bgeu         s9, s5, 137f
                  bne          sp, t4, 140f
sub_1_0:          jal          s8, 2f
0:                jal          ra, 8f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          s8, 6f
4:                jal          s6, 7f
5:                jal          ra, 9f
6:                jal          t4, 1b
7:                jal          t1, 10f
8:                jal          ra, 3b
9:                jal          t1, 4b
10:               xor          s4, a1, s0
137:              auipc        s7, 276531
                  addi         zero, zero, -353
                  sltu         s9, t3, a0
140:              sltiu        t1, a3, 1499
141:              srai         t5, zero, 15
                  bltu         a3, ra, 144f
                  lui          s10, 297171
144:              srai         s11, s2, 20
                  sub          s3, s2, s6
                  xori         a2, s3, 1375
                  xor          t6, a7, s8
                  bne          t3, s5, 161f
149:              bne          s9, s10, 154f
                  xori         s5, t1, 345
                  srli         tp, s11, 22
                  srli         s11, a5, 21
                  srl          gp, s4, ra
154:              blt          s6, a0, 155f
155:              and          a1, t2, s3
                  slt          s9, s8, sp
                  addi         a7, s8, -1807
                  bgeu         a2, t0, 169f
                  srl          t6, t3, a0
                  bge          a0, tp, 166f
161:              auipc        t5, 218729
                  bltu         s2, t1, 167f
                  and          a2, sp, gp
                  bge          s6, s6, 180f
                  ori          a3, a6, -79
166:              andi         t0, t6, -1536
167:              srai         s2, s6, 13
                  sll          s2, a6, s0
169:              sra          a1, s8, t6
                  sra          tp, s11, gp
                  bge          s6, t5, 173f
                  and          a3, a4, s6
173:              blt          s11, a6, 177f
                  xori         s5, gp, 185
                  or           s9, a3, t5
                  beq          a6, s3, 186f
177:              addi         s7, a7, 288
                  beq          s4, s9, 189f
                  srl          tp, s0, t0
180:              bge          s5, a0, 200f
                  slli         s6, a0, 26
                  srai         s11, a3, 12
                  xori         tp, s5, -236
                  add          sp, a5, s5
                  and          a1, a1, s4
186:              slt          t6, sp, t0
                  srli         sp, gp, 9
                  xor          a5, a4, s7
189:              sub          a4, a7, s10
                  xor          s2, a7, s2
                  sub          t6, t0, a7
                  srli         t5, a3, 4
                  sub          tp, t6, sp
                  slt          s6, s0, s5
                  nop
                  srl          ra, a7, s0
                  srl          gp, a5, t3
                  bgeu         s9, t4, 203f
                  sll          a3, s8, a2
200:              sll          a1, tp, s11
                  andi         a4, ra, -615
                  sub          s2, ra, a1
203:              slli         s10, s7, 21
                  slti         a0, a0, -893
                  or           a0, t2, s9
                  xori         tp, s2, -1823
                  sra          s8, s6, t1
                  slli         s1, t4, 11
                  slt          a4, s7, s6
                  srai         gp, t3, 1
                  addi         ra, ra, -513
                  nop
                  srai         s6, s5, 31
                  andi         a7, t6, -1176
                  and          s6, gp, a4
                  slt          ra, t3, a1
                  andi         s3, a1, -994
                  sub          a4, t0, a5
                  sub          s10, t2, s3
                  slti         gp, t2, -116
                  nop
                  sltu         t0, a5, a0
                  srli         sp, t6, 10
                  ori          ra, s11, 321
                  lui          t2, 596442
                  xori         a5, a7, -1305
                  slti         s8, ra, -204
                  auipc        a7, 987342
                  slti         s7, a2, -234
                  sltu         s8, s8, s8
                  sltu         s4, s8, s8
                  sltiu        t6, a1, -677
                  sltiu        a7, tp, -630
                  sll          tp, s7, t1
                  or           t0, t5, s6
                  nop
                  lw           s8, 4(t3)
                  sra          s11, s9, ra
                  addi         t3, t3, 64
                  srli         tp, t5, 4
                  xori         s5, tp, 736
                  sub          s7, s4, s8
                  srli         s5, t2, 21
                  addi         s4, a3, -986
351:              addi x7, x24, 1
351:              jalr x7, x7, 0
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
.word 0x879818af, 0x005eb359, 0x469c033d, 0x2a8d7075, 0xa8fbe0fc, 0x68644b09, 0xd82da38c, 0x90872a28
.word 0xa1f8e728, 0x18148323, 0xedc57917, 0xf67bd18f, 0x58f77b5a, 0x1c7401e4, 0x0d1bce61, 0xf3f1af64
.word 0x58ba0702, 0x6db1264f, 0xb585078f, 0xc1494c1b, 0x8b68e06f, 0x97ffadc1, 0x2e7e0726, 0xa0b05195
.word 0x8711acff, 0x005181c0, 0x2a6b7e1b, 0xe1e0ebc2, 0x66bfdb3a, 0x5c54cdbb, 0x3a061a5c, 0x89bdf616
.word 0x01aaead2, 0x1d9979b5, 0xdc9fbcb9, 0xdc7412f8, 0xe555a81c, 0x58f22a87, 0x3c4fd3f0, 0xa95c71ac
.word 0x4e366924, 0x4c8b0b3d, 0x959cd5dd, 0x9a2b10f3, 0x1e614bd7, 0x3b89f6b3, 0x7717b053, 0xc20f536f
.word 0xbfec2b42, 0x5ebb78b3, 0x22330243, 0x7f07ddfb, 0x7a1a4bf7, 0xb80fa07c, 0xb457888f, 0x6c8d9b6b
.word 0xfeff8b82, 0x78765093, 0xe98b84de, 0x3828e931, 0x87fc553d, 0xf574b5f0, 0xc35fcf34, 0xa85e34a5
.word 0xf89fdef1, 0xad42f1a4, 0x1b688470, 0x2ebf7022, 0x2f5e2708, 0x920ec675, 0x969cdbf3, 0xf07c8b8e
.word 0x38a27c27, 0xa7b772cf, 0x91d07b5f, 0x5d624818, 0x45bdd35a, 0x5032b7c8, 0x682bf400, 0xf3e5a05b
.word 0x54020e08, 0xfb7b553d, 0x474b267b, 0xd0281b7a, 0x30a94e79, 0xaeccd512, 0x3bf1e969, 0x8e403fbf
.word 0x75b4043f, 0xdaeb948b, 0x3d3cd209, 0x9c20fcdb, 0x6801e7e9, 0xc220db4f, 0xa81952d3, 0x133a1445
.word 0x8235026b, 0x26c73a8c, 0x0fe089a1, 0xc478c338, 0xa0d1ce29, 0xecf61d0e, 0xaca5c045, 0x74b123f7
.word 0x026b3aa6, 0xf3d4f02f, 0x103df15d, 0xf629b798, 0x42e7d751, 0x534ecc46, 0x63d8a4fe, 0xad5527be
.word 0x974d0c8d, 0x752ed9e8, 0xe29ce818, 0x4feef2ff, 0xb41d0bbb, 0x02aa24b9, 0xbb6cc833, 0x14355ac2
.word 0x758ecc0b, 0xd5c47c82, 0x3cf94eef, 0xf2974b06, 0x5c27de29, 0xde621807, 0x10ef500f, 0x3f8b8608
.word 0xce417a95, 0x768136f8, 0x923d6dd6, 0x4ef5ab6b, 0x6c348b20, 0xbe792f83, 0x3ecbf373, 0xbb64aaff
.word 0xecac5852, 0x836548f3, 0x16febde0, 0x7397b5c4, 0x3f14a246, 0x988b33aa, 0x9985f8bc, 0xe1acdd1b
.word 0x836c5274, 0x5a3a1f51, 0xd9ec8718, 0x743d7aea, 0xae26d345, 0xca9552f1, 0xfa6888a0, 0xef9abf68
.word 0xa61870da, 0x1c66f8a9, 0xb293e620, 0x19901de1, 0x765a2114, 0x20d00129, 0xa0e4e04b, 0x18d37673
.word 0xea43a82a, 0xe35d35a2, 0x66ff84d5, 0x06ba6227, 0x4a101cba, 0x7250b04f, 0xcbda8462, 0x87728dde
.word 0xd520db1b, 0xd40bfad0, 0x4b1eee94, 0x1173f2a2, 0x81022769, 0x79d9be0f, 0x951ffe94, 0xf2e83bb1
.word 0xfc6849db, 0xb8e5793a, 0xe5851a41, 0xa38eb381, 0xe1990be3, 0xe2e9416d, 0x8cfabb83, 0x24f3cf7c
.word 0x56b5fde6, 0xc32dab90, 0x44dcb443, 0x95c5ad96, 0xaadc11c9, 0x9f77fe84, 0x484743e1, 0x84a985e4
.word 0xbd5f19c5, 0xfa6d01e2, 0x3ff16458, 0x94c089d9, 0x1b5af2e2, 0x989290bf, 0x959bf87a, 0x81277c73
.word 0xf370c5e4, 0x6807bb9b, 0x30763555, 0x13e2e997, 0xfe636fbf, 0x6ecf0ac4, 0xe583b26c, 0x33aa16d3
.word 0xf701dc77, 0x74296429, 0x901417bc, 0x3bef481f, 0x6b90c608, 0xf5722821, 0xa22e3703, 0x607b261a
.word 0xf2502e03, 0xefc2ee2c, 0xb4c8c5ac, 0xe91a8b42, 0x4c2ca695, 0x6453b474, 0xe46f5664, 0x54c8d251
.word 0x9cfd1c89, 0xb5e78570, 0xa1f7bfc6, 0x11340ddf, 0x9311f236, 0x7a43e81b, 0x0c910e34, 0xccbd6cfb
.word 0x5e4d57a9, 0xae2f28ba, 0xd9f7587d, 0x03e5ea98, 0xbf9fb3c7, 0x2d6b0e6e, 0x98dfbfe2, 0x1078d2a7
.word 0xa894eff2, 0x522eef56, 0x3fe270eb, 0xa8620c90, 0xf9f616d0, 0xcc142e30, 0x447328e9, 0x55ff4fec
.word 0x3beb6584, 0x287c4048, 0x14c34d27, 0xdab2fe84, 0xb80ac773, 0x6b3bb3c8, 0xdb13c703, 0x062425ac
.word 0xd5466951, 0x72b6ab8a, 0xb02d2515, 0x077751d5, 0x4f2895e9, 0xa87d3cc2, 0x8cfb621e, 0x395fc3da
.word 0x310ecc8f, 0x5b844a5d, 0x53036e68, 0x97fa8bc0, 0xb4d2837e, 0x2ad32446, 0xd5935d56, 0xe20626a8
.word 0xccbcb75e, 0x79889ebe, 0xa5f0ae71, 0xf22930a5, 0xc3977314, 0x7cfe480e, 0xbaed4ef9, 0xd8fb1e62
.word 0x7f28fcd9, 0x6e39d0e4, 0x43e87ad6, 0xa93b44f1, 0xa5a06fcc, 0xdf61923c, 0xbe959be6, 0x2058ed09
.word 0xf66ae599, 0xa3560911, 0xe790f520, 0xc38ee535, 0xd76fcba9, 0xf584ec26, 0xd32cc07e, 0xefc5f482
.word 0x9d215f53, 0xfad3d47e, 0x8b0c9500, 0x11347209, 0x8950cbb6, 0x2e661f7d, 0x764a913a, 0x684fc679
.word 0xcfcc61fc, 0x8c186c35, 0xcdaccbb1, 0x83a53dc5, 0x39e77105, 0x78461e3d, 0xf419fc70, 0x3134352d
.word 0x9c6174b2, 0x600a82af, 0x2cb37fbd, 0xacfd36e9, 0xa81bd11d, 0xebb24a1e, 0xbdc8f223, 0x15df1d07
.word 0x4cc0dbdc, 0x6a680038, 0xda094815, 0xe2a54bd7, 0x3f90a61b, 0xcb1fa2d2, 0xf601caad, 0xfaec03b9
.word 0x34e2d25b, 0x6b802655, 0x6aa89dd6, 0x03bda6bd, 0x1e34d8e1, 0xa9e67d62, 0x73933164, 0x3520b7b4
.word 0x2ed699b1, 0xdadda3f1, 0xb76aa9f1, 0x20b2bd69, 0xb586c2b7, 0xd808e153, 0x939967e2, 0x4adb41ac
.word 0xc346f0a7, 0x2a1a3fdf, 0x6c0e1291, 0xbc574eab, 0xc0588685, 0xebbaa4b8, 0x9855bb3c, 0x3fc831b9
.word 0xed07f99d, 0x8be1e82d, 0x2ed29f7f, 0xa431561e, 0x134643d9, 0x22bf14d1, 0xaadaaad9, 0x7620c178
.word 0x8c17280c, 0x438e990f, 0xaa5339c7, 0x9a63c475, 0x4994270e, 0xcacded73, 0x7499f05c, 0x4c880a13
.word 0x06c94ac4, 0x78390d1b, 0xa9ab270b, 0xbbf606af, 0x89415438, 0x98b02cb7, 0xa1dd4ac8, 0xeeb0efa9
.word 0x817f6767, 0x248ececb, 0x7dedc19d, 0x7abcc8ef, 0x447f0fd2, 0xd51a6cda, 0x3953bd17, 0x8c2d32f1
.word 0x67201173, 0x74a4dad5, 0x0ca90c66, 0x776913d1, 0x04e8f151, 0x73067b43, 0x3de50277, 0xd185d80e
.word 0xc455c1d9, 0x3eaea8ad, 0x2b0ce488, 0xf8ba7431, 0x85585e62, 0xf8e1c749, 0xc3262667, 0xf86704ea
.word 0x97dd34da, 0xa893031a, 0x0801219d, 0xc2122f09, 0xb7b11909, 0xc191edaa, 0x335db7a6, 0x84143c07
.word 0x27091a82, 0x0f0c433f, 0xbd03bfcd, 0x144f7234, 0x3fb7c25a, 0xf5f38099, 0xfcf4193c, 0x1c40d853
.word 0xadb36605, 0x2fb87e50, 0x8c1f43f8, 0x121c30ca, 0xfbd1741e, 0xd26ca8e5, 0x37c1c81a, 0xa9e456aa
.word 0x29ed26f8, 0x5ce5935d, 0xdcd802bb, 0x84ee7f90, 0x48a06a8d, 0x4551afb0, 0x5ed62ef1, 0xa722f774
.word 0xf46eca64, 0x556f82ee, 0xaba848e5, 0x68f16b07, 0x7456595e, 0xf0f35345, 0x3b29ad6f, 0xab1c7173
.word 0x83c165b1, 0x97987eda, 0x680fe63d, 0x69ed7065, 0x8fccfdc3, 0x0956baff, 0xa14381e7, 0x93b7ca1c
.word 0x02a05805, 0x1c884a50, 0xd8313c4a, 0xd4f5ea53, 0xb858fe0f, 0x813a2d54, 0x676a8f07, 0x932f3d7a
.word 0xa98320bc, 0xeda0a573, 0xd500a716, 0x3a27375f, 0x253b4f7d, 0xf01b2ae3, 0xf496a016, 0x124753a5
.word 0x3e536eae, 0x051ed274, 0x8bdd5225, 0x0d0172da, 0xcfd9ac5d, 0x3de695c1, 0x8bbf7d19, 0x1a8e62c6
.word 0xeeaa27fe, 0x9a7f681d, 0x7c713e66, 0xa4f00931, 0xc609d662, 0x343460f8, 0x3e5aff09, 0x64bf610f
.word 0x2958ed2e, 0x18c9d3bc, 0x64557a3b, 0x68d7059b, 0xf1476a94, 0xb442b9cd, 0x4df7c47c, 0x516be98d
.word 0x46144c99, 0xf97b5fdc, 0x40b31bcf, 0xd46d0cc9, 0x8a0a6e8f, 0xad0a88f5, 0xf3b58dff, 0x0bb56576
.word 0x0081f7ab, 0x76b16225, 0xae894646, 0xf5b1e8c5
.section .region_1,"aw",@progbits;
region_1:
.word 0x48574f68, 0x557f43db, 0x77ef303e, 0xe86fae3f, 0xc4566203, 0x0647d9c7, 0x946cfc82, 0xe06336e0
.word 0xf0af4b46, 0x9d87d39c, 0xb5f33d6d, 0x1dfc95a1, 0xc52c2413, 0x45983b07, 0x464ba0f0, 0x996d3d85
.word 0x47cbabcb, 0x4f40d9ff, 0x7c3e6d0a, 0x854cedc9, 0xf9387db0, 0x35df5a6d, 0x1d27aa9e, 0x7d2581bf
.word 0x9c2da261, 0xd5fc646a, 0x32ea0c87, 0x04896b65, 0x3fb97b8a, 0x581f7ae5, 0x78920dd3, 0xcd6a3e68
.word 0x94cb7446, 0xf30ce193, 0x5a42751a, 0xc3611ce7, 0x766b67ee, 0x4dfbafcd, 0x846a17f3, 0xcfc8acb9
.word 0xefe85da1, 0x9b5f630e, 0x34bcfe7f, 0xbe2bbee5, 0xe15f2b9b, 0x31ff65a2, 0xf1765bd4, 0x91a6aed8
.word 0xafc39641, 0xfa79c71b, 0xbd223837, 0x8605d5e0, 0x5ed94579, 0x7f620199, 0x90d54b45, 0xa38eb4f3
.word 0x24b308f6, 0x6f304351, 0x5f8b94b4, 0xbe918e79, 0x62a42985, 0x2e192651, 0xd231811e, 0xf56aa892
.word 0xa5ade763, 0x249cdfeb, 0x59aa7368, 0xfb2e5090, 0x392ebc15, 0xf144e709, 0xe00e8cf1, 0x4714582f
.word 0x4e335372, 0xa1fba430, 0xe2ac5539, 0xb04b142b, 0xef35619b, 0xf05dc654, 0xfd4f6626, 0x5271d689
.word 0xe77bedd0, 0x9b211d46, 0x342118f4, 0x1c9d618a, 0x8bddf89e, 0x21d0cfe2, 0xdf047e45, 0x653351c2
.word 0xd62f1281, 0xd64c2789, 0x8d56deb7, 0x4899459c, 0x32ded7de, 0x6347cb7a, 0xbcf7d61e, 0x15da907c
.word 0xbc132e87, 0x68878802, 0xdc625307, 0x335b1990, 0x4c5d8cbd, 0x71e7204a, 0xc37d605f, 0xd6524261
.word 0x9130fbea, 0xb23f8f03, 0x5e1db5e7, 0x3d27c94b, 0xce86825e, 0x2f7c613d, 0x4db7577e, 0xf469c248
.word 0x7e05eb59, 0xb6f299f7, 0x8718c757, 0x5d1a634f, 0x46d29a6b, 0xad746fc9, 0x183a6568, 0xca8b5dfe
.word 0x1bf1146c, 0x83c08225, 0x616dedc1, 0x0f9eb5fa, 0xe811ea3e, 0x8d5ddab4, 0x67e42dd8, 0x79dbb9e2
.word 0xd4e1b1f4, 0x0310ca27, 0x1664295d, 0x3973282d, 0x895dcea2, 0xc598aeb6, 0x80bcc8c3, 0xfb07622a
.word 0xc243938d, 0x1445bba5, 0xc48bbc26, 0x2df7bed5, 0x4233d54b, 0x52d912c0, 0x3a087ddd, 0x731a8d26
.word 0x4aa903ba, 0x8bc56dc8, 0xc36aa5bb, 0x15977363, 0x5363a448, 0x24ec094a, 0xc8a39b7d, 0x74327d8a
.word 0x39c9e659, 0x67ae889c, 0xbe0e73c1, 0x466be24a, 0x45298308, 0x57c09b48, 0xea4ed806, 0x7c7f7160
.word 0x859e325e, 0xd960c2b7, 0x5276da4a, 0x05a9492c, 0xff5c2a55, 0xb0911917, 0x2e514073, 0x4b934321
.word 0xe465f004, 0xe18ae7cd, 0xa76e5e0a, 0x5e411bc2, 0x3146f5c3, 0x15c3b513, 0xf390920d, 0x2c58501e
.word 0xab4d04f6, 0x7a95f21b, 0xd65020b7, 0x63bdb7e5, 0xf7d5f495, 0xf2be6111, 0xc8c2e0c2, 0x44cd0592
.word 0x9221a983, 0xf37d5095, 0xe5a6ab1f, 0xb41ed9c0, 0x3a1ad058, 0x41714fef, 0x789ddda9, 0x6448a4ae
.word 0x486b7066, 0xcf5aa82a, 0xf7d4ea4a, 0x87ee8f84, 0x944fb7cd, 0xf3514332, 0xb4b7bef4, 0xf057404a
.word 0x0c5b51ef, 0x8ab84848, 0x60dd5e78, 0xaa8e9c03, 0xa4668646, 0x081bf4f7, 0xec05618c, 0xd7a5c0e6
.word 0x73dab017, 0xab1678c2, 0xc03373fa, 0xb5a20a87, 0xc89d7b95, 0x505359e0, 0xf656cf35, 0x7a597033
.word 0x8c496760, 0xaaac0a8c, 0xc4786b6d, 0x89c31339, 0x482bbf52, 0x427bb969, 0x53de8eea, 0xad2505bb
.word 0xde771095, 0x7775baae, 0xeb6fb5a7, 0x862b3bb2, 0xa6c9b999, 0x53149477, 0x9ef1dccc, 0xd6f404fe
.word 0x228b39e6, 0x217e1448, 0x250dcc5e, 0x7fc43ab9, 0x10a29527, 0x4471c620, 0x1eff50b2, 0x53075c84
.word 0xdff6002d, 0xa125d65d, 0xde84e85d, 0x398dc0e8, 0xd300158d, 0x28dffcd0, 0xfa382ba1, 0xc7c03991
.word 0x5089dee8, 0x73f1b4f1, 0x2574988f, 0x205401c5, 0x154af4b6, 0x238a3bbe, 0x8ca0fba1, 0x8348e20c
.word 0x4ad27bd2, 0xac82c6af, 0xa930e441, 0xa747645f, 0x5e9faf0c, 0xdf193954, 0xfb5f9498, 0x805f741b
.word 0xa80d715a, 0x8047e360, 0xc7b60e15, 0xf0d816c8, 0x0c5bde37, 0x99805ea6, 0x4e16a393, 0x56970041
.word 0x2cb0d768, 0x8d2a91d0, 0x450fca09, 0x4034ed48, 0x8e6cc7ce, 0x6ea34185, 0x6bfe0031, 0x11efaaf3
.word 0x3b2e02d6, 0x978e1e3b, 0xc0bc1066, 0x89d683a2, 0x5fd46bfe, 0xa1f6a9b5, 0x0f692b55, 0x2fa8def5
.word 0x23bbd414, 0x8c5b50f9, 0x3d8075e0, 0x013f5770, 0xcce7a6f3, 0x907c3ab1, 0x6b541704, 0xe52a3718
.word 0xd5d3c2af, 0x349cf103, 0x90a8d4b8, 0x067547e8, 0xfd90f3ce, 0x65f70875, 0xf42c43f4, 0xf28f114f
.word 0xe074ffa6, 0xa0b79585, 0xcc5033ef, 0xd43a8156, 0x0c7c87b6, 0x50e10693, 0x26077894, 0xbf797ac9
.word 0x15f34dc7, 0xee8f3a2f, 0xac1ae30b, 0xc1a8d51b, 0x16581245, 0x01972949, 0xcbedb556, 0xccc4db71
.word 0xd4190c4a, 0x0353e381, 0xf2d7a1a6, 0x9b4ebf3f, 0x37d78ad0, 0xc30e282f, 0xf6635a4b, 0x88e77a7d
.word 0x6ff99d16, 0xb6b076a7, 0x426ba900, 0xf6f055df, 0x1c573c19, 0xcdc86a03, 0x828bce74, 0x93602146
.word 0x1d14a26f, 0x3f26bfde, 0x164b5885, 0xda07d1ee, 0xbcf0de78, 0x1a00af68, 0x3ebee245, 0xbd22c65c
.word 0x0cc0e023, 0xc779bdfc, 0x3a31e962, 0xd50a7593, 0x3c4642c7, 0x77f2eda3, 0x2ec02495, 0xa1ee5d13
.word 0x52c437ff, 0x8a3b68cf, 0x3f720576, 0xbfad772d, 0x24f11089, 0x51aeee5c, 0x45c3fd74, 0x0ef4b335
.word 0xd65320ff, 0x58fcb89a, 0x823fd051, 0xe3c8ffd1, 0x56ff5fab, 0x41a5ae23, 0x56663d2d, 0x5e84ba24
.word 0x320e5665, 0xf34bc523, 0xd9af87d3, 0x1572636b, 0xbd0e67dc, 0x177ede28, 0xd3f50d88, 0x2416c850
.word 0x551ed07e, 0xeeeeace4, 0x36b4dd5e, 0xfb1c3db2, 0xbbc33f8a, 0x213b4780, 0xcf911446, 0xc605ff8a
.word 0x34f34a1b, 0x5f8ede18, 0x82c1d361, 0xb1bdd5d6, 0xd7aa5944, 0x8f1d6307, 0x4220d06f, 0x7cf92508
.word 0x5f602854, 0xc3ff0f54, 0xb16d1fc9, 0x139f0635, 0xd5ff2fe9, 0x945a8fa4, 0xe8c013c6, 0xd9a0c336
.word 0x0a53f8ae, 0xc94d2fd9, 0x51a8f572, 0x7d4324f5, 0x63615b03, 0xffeb9982, 0xf21ea42d, 0xa6b4436d
.word 0xdaaee040, 0x206ed07d, 0x7f91c637, 0xfee7da9c, 0x80ab8e21, 0x848de806, 0x0265982b, 0xe030d40b
.word 0x75bcf85e, 0xe513c89b, 0x46c7c708, 0x1f9aedfa, 0xe7935cc6, 0x51268dd1, 0xf271f4ed, 0x3adb59ee
.word 0xfa4aff36, 0xdf1a5db5, 0xe1dbdadb, 0x91ce7d1d, 0x2f8a21e0, 0xc6f59bd1, 0x43b2dd35, 0xe0a193b7
.word 0xec028d27, 0x974605a2, 0xe9247150, 0x071feb60, 0x645c484f, 0xff1b0e55, 0x08ecdda6, 0x9b8f52e9
.word 0x48bcfe85, 0xaacd5143, 0xf2276ec7, 0x35e548da, 0x7e1bd8af, 0x7a6853b8, 0x158ff305, 0x51859dcf
.word 0xafd53c76, 0x7af36014, 0x9553b5fe, 0x3c279afd, 0x55993367, 0xb560563e, 0xd05de93c, 0xce48d60b
.word 0xf4297447, 0xb62b6dfe, 0x458ce1e5, 0x54dc2038, 0xfedde573, 0x9d82b90a, 0x624d6772, 0xc6a5f1b8
.word 0x6bc0a7d9, 0xa4c8c8d4, 0xea6dfca8, 0x065ca663, 0xea9f8fbe, 0x011255eb, 0xa7b62c80, 0xa5c13f91
.word 0x2110f632, 0xe557ed49, 0x35e0cec8, 0x370ec12a, 0x7d704312, 0x381e00ed, 0x191d89b5, 0x8b6d87e9
.word 0xf6fe98ae, 0x56ab26db, 0x8a47887d, 0xa8dce3a6, 0x6ad168e5, 0xe539f5ae, 0xa3cc3e26, 0x4df4f7c1
.word 0x9299c02d, 0x7651015f, 0x00612dae, 0x59005bad, 0x2c62a2c7, 0xddb6b287, 0x3e132e4b, 0x6270dc6b
.word 0x70625404, 0x221bde58, 0xacec25ad, 0x763631ab
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x8, x28, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x27, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x27, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x27, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x27, x22, ecall_handler
                  li x22, 0x1
                  beq x27, x22, instr_fault_handler
                  li x22, 0x5
                  beq x27, x22, load_fault_handler
                  li x22, 0x7
                  beq x27, x22, store_fault_handler
                  li x22, 0xc
                  beq x27, x22, pt_fault_handler
                  li x22, 0xd
                  beq x27, x22, pt_fault_handler
                  li x22, 0xf
                  beq x27, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x28, x8, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
