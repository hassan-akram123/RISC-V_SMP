.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xb
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xfe87f6d4
                  li x6, 0x9
                  li x7, 0x3
                  li x8, 0xfccdd400
                  li x9, 0xc
                  li x10, 0xdc66f41f
                  li x11, 0x80000000
                  li x12, 0xd
                  li x13, 0x80000000
                  li x14, 0xf417584f
                  li x15, 0x8
                  li x16, 0xf1799ddc
                  li x17, 0x80000000
                  li x19, 0x5f546b84
                  li x20, 0x4
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf38deeaf
                  li x24, 0xf209d267
                  li x25, 0x4
                  li x26, 0x3
                  li x27, 0x3
                  li x28, 0xf8b2e287
                  li x30, 0xdb299f32
                  li x31, 0x0
                  la x18, user_stack_end
main:             jal          s8, 4f
0:                jal          ra, 17f
1:                jal          gp, 21f
2:                jal          tp, 8f
3:                jal          t5, 2b
4:                jal          s11, 23f
5:                jal          ra, 25f
6:                jal          ra, 9f
7:                jal          s11, 15f
8:                jal          a3, 16f
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          s5, 22f
12:               jal          ra, 24f
13:               jal          ra, 3b
14:               jal          ra, 19f
15:               jal          ra, 18f
16:               jal          ra, 0b
17:               jal          ra, 12b
18:               jal          ra, 14b
19:               jal          t3, 20f
20:               jal          tp, 6b
21:               jal          ra, 10b
22:               jal          t0, 1b
23:               jal          ra, 13b
24:               jal          ra, 11b
25:               xori         a7, a5, -886
main_37:          jal          s8, 2f
0:                jal          ra, 7f
1:                jal          ra, 12f
2:                jal          ra, 6f
3:                jal          s11, 4f
4:                jal          ra, 5f
5:                jal          s8, 13f
6:                jal          ra, 0b
7:                jal          ra, 1b
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          t2, 9b
11:               jal          ra, 10b
12:               jal          ra, 8b
13:               ori          t2, t0, -645
main_9:           jal          s8, 3f
0:                jal          ra, 8f
1:                jal          ra, 13f
2:                jal          ra, 6f
3:                jal          t0, 12f
4:                jal          t0, 5f
5:                jal          t0, 9f
6:                jal          ra, 14f
7:                jal          ra, 0b
8:                jal          t0, 1b
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          tp, 2b
12:               jal          ra, 7b
13:               jal          gp, 10b
14:               or           a5, s0, ra
main_30:          jal          s8, 2f
0:                jal          a7, 14f
1:                jal          ra, 3f
2:                jal          a3, 18f
3:                jal          ra, 16f
4:                jal          ra, 6f
5:                jal          ra, 1b
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          gp, 15f
9:                jal          t3, 11f
10:               jal          ra, 8b
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               jal          a1, 19f
14:               jal          s10, 12b
15:               jal          ra, 7b
16:               jal          gp, 9b
17:               jal          ra, 0b
18:               jal          ra, 17b
19:               nop
main_11:          jal          s8, 13f
0:                jal          ra, 5f
1:                jal          ra, 16f
2:                jal          ra, 1b
3:                jal          gp, 15f
4:                jal          ra, 8f
5:                jal          s3, 14f
6:                jal          ra, 10f
7:                jal          ra, 3b
8:                jal          sp, 9f
9:                jal          ra, 11f
10:               jal          sp, 18f
11:               jal          ra, 2b
12:               jal          t2, 4b
13:               jal          s8, 0b
14:               jal          ra, 7b
15:               jal          ra, 17f
16:               jal          s6, 6b
17:               jal          ra, 12b
18:               srai         t3, t1, 21
main_5:           jal          s8, 20f
0:                jal          ra, 18f
1:                jal          t5, 3f
2:                jal          ra, 19f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 11f
6:                jal          ra, 5b
7:                jal          a7, 15f
8:                jal          ra, 22f
9:                jal          ra, 23f
10:               jal          gp, 7b
11:               jal          t2, 4b
12:               jal          ra, 13f
13:               jal          t0, 21f
14:               jal          ra, 6b
15:               jal          s1, 17f
16:               jal          ra, 0b
17:               jal          sp, 12b
18:               jal          s11, 14b
19:               jal          a1, 8b
20:               jal          ra, 16b
21:               jal          ra, 1b
22:               jal          ra, 9b
23:               slti         s10, a6, -808
main_17:          jal          s8, 15f
0:                jal          ra, 29f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          ra, 14f
4:                jal          ra, 26f
5:                jal          ra, 28f
6:                jal          ra, 17f
7:                jal          a4, 4b
8:                jal          ra, 19f
9:                jal          ra, 25f
10:               jal          ra, 20f
11:               jal          s0, 21f
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               jal          t2, 13b
15:               jal          ra, 10b
16:               jal          ra, 12b
17:               jal          ra, 9b
18:               jal          ra, 7b
19:               jal          a0, 27f
20:               jal          ra, 24f
21:               jal          ra, 2b
22:               jal          ra, 16b
23:               jal          sp, 5b
24:               jal          ra, 6b
25:               jal          ra, 22b
26:               jal          ra, 23b
27:               jal          ra, 11b
28:               jal          ra, 3b
29:               srli         t0, s1, 24
main_3:           jal          s8, 19f
0:                jal          tp, 14f
1:                jal          t2, 28f
2:                jal          ra, 24f
3:                jal          ra, 11f
4:                jal          ra, 18f
5:                jal          tp, 1b
6:                jal          a7, 26f
7:                jal          ra, 27f
8:                jal          ra, 22f
9:                jal          a4, 29f
10:               jal          ra, 2b
11:               jal          t6, 17f
12:               jal          sp, 16f
13:               jal          ra, 20f
14:               jal          a3, 30f
15:               jal          ra, 23f
16:               jal          a2, 10b
17:               jal          ra, 9b
18:               jal          ra, 5b
19:               jal          t3, 3b
20:               jal          ra, 0b
21:               jal          a1, 13b
22:               jal          ra, 6b
23:               jal          ra, 12b
24:               jal          ra, 25f
25:               jal          t0, 21b
26:               jal          ra, 15b
27:               jal          ra, 8b
28:               jal          s0, 7b
29:               jal          ra, 4b
30:               sub          s10, gp, t5
main_7:           jal          s8, 0f
0:                jal          ra, 7f
1:                jal          ra, 2f
2:                jal          sp, 9f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          tp, 11f
6:                jal          ra, 8f
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               jal          s10, 6b
11:               slt          s9, a3, ra
main_33:          jal          s8, 12f
0:                jal          t0, 4f
1:                jal          tp, 19f
2:                jal          ra, 10f
3:                jal          ra, 17f
4:                jal          ra, 7f
5:                jal          t5, 11f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          ra, 18f
9:                jal          tp, 5b
10:               jal          ra, 14f
11:               jal          a0, 13f
12:               jal          ra, 3b
13:               jal          ra, 15f
14:               jal          a7, 6b
15:               jal          ra, 1b
16:               jal          ra, 9b
17:               jal          ra, 2b
18:               jal          ra, 16b
19:               srli         a0, s10, 12
main_15:          jal          s8, 3f
0:                jal          gp, 12f
1:                jal          t6, 13f
2:                jal          ra, 8f
3:                jal          ra, 16f
4:                jal          ra, 17f
5:                jal          ra, 7f
6:                jal          s7, 1b
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          s1, 4b
10:               jal          ra, 15f
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          ra, 11b
14:               jal          ra, 5b
15:               jal          ra, 9b
16:               jal          ra, 2b
17:               slti         s8, s5, 1463
main_22:          jal          s8, 17f
0:                jal          s4, 2f
1:                jal          ra, 18f
2:                jal          tp, 15f
3:                jal          ra, 11f
4:                jal          t0, 8f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 16f
8:                jal          a4, 1b
9:                jal          ra, 4b
10:               jal          s6, 7b
11:               jal          t3, 10b
12:               jal          ra, 0b
13:               jal          s9, 5b
14:               jal          ra, 3b
15:               jal          ra, 9b
16:               jal          s6, 13b
17:               jal          ra, 14b
18:               srai         s7, a3, 31
main_42:          jal          s8, 4f
0:                jal          t3, 16f
1:                jal          s11, 10f
2:                jal          ra, 3f
3:                jal          t6, 19f
4:                jal          ra, 8f
5:                jal          s9, 6f
6:                jal          ra, 22f
7:                jal          ra, 20f
8:                jal          ra, 0b
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          s3, 21f
12:               jal          ra, 9b
13:               jal          a1, 2b
14:               jal          ra, 18f
15:               jal          s5, 7b
16:               jal          ra, 15b
17:               jal          ra, 5b
18:               jal          t0, 13b
19:               jal          a6, 1b
20:               jal          ra, 17b
21:               jal          ra, 23f
22:               jal          ra, 12b
23:               auipc        t6, 154627
main_16:          jal          s8, 5f
0:                jal          ra, 1f
1:                jal          ra, 4f
2:                jal          ra, 10f
3:                jal          a0, 2b
4:                jal          ra, 3b
5:                jal          ra, 6f
6:                jal          ra, 7f
7:                jal          s1, 8f
8:                jal          t0, 12f
9:                jal          ra, 13f
10:               jal          ra, 9b
11:               jal          ra, 0b
12:               jal          a7, 14f
13:               jal          ra, 15f
14:               jal          ra, 11b
15:               and          t6, t6, s5
main_6:           jal          s8, 2f
0:                jal          t0, 8f
1:                jal          a1, 4f
2:                jal          s0, 11f
3:                jal          ra, 13f
4:                jal          a0, 7f
5:                jal          tp, 3b
6:                jal          ra, 5b
7:                jal          ra, 17f
8:                jal          ra, 9f
9:                jal          t2, 16f
10:               jal          a0, 14f
11:               jal          ra, 12f
12:               jal          ra, 15f
13:               jal          ra, 0b
14:               jal          ra, 6b
15:               jal          ra, 10b
16:               jal          ra, 1b
17:               ori          a2, t0, -463
main_39:          jal          s8, 3f
0:                jal          ra, 9f
1:                jal          s6, 4f
2:                jal          ra, 6f
3:                jal          s10, 17f
4:                jal          s10, 2b
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          gp, 18f
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          ra, 16f
11:               jal          s4, 14f
12:               jal          ra, 1b
13:               jal          ra, 19f
14:               jal          ra, 15f
15:               jal          ra, 0b
16:               jal          sp, 5b
17:               jal          ra, 10b
18:               jal          ra, 8b
19:               addi         s3, s3, -1056
main_18:          jal          s8, 1f
0:                jal          a6, 7f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          tp, 4b
6:                jal          ra, 11f
7:                jal          ra, 12f
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          ra, 9b
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          ra, 8b
14:               slt          a4, s11, gp
main_38:          jal          s8, 11f
0:                jal          ra, 3f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          ra, 15f
4:                jal          ra, 10f
5:                jal          ra, 17f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          ra, 14f
9:                jal          ra, 18f
10:               jal          t5, 5b
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               jal          t0, 0b
14:               jal          ra, 16f
15:               jal          t6, 7b
16:               jal          s3, 4b
17:               jal          ra, 9b
18:               sra          ra, s6, s1
main_34:          jal          s8, 11f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          tp, 4f
3:                jal          tp, 13f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          ra, 12f
11:               jal          tp, 2b
12:               jal          a3, 14f
13:               jal          s6, 1b
14:               jal          gp, 0b
15:               addi         s7, s0, 1841
main_27:          jal          s8, 1f
0:                jal          t0, 6f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          t5, 5f
4:                jal          ra, 7f
5:                jal          s11, 15f
6:                jal          ra, 14f
7:                jal          gp, 13f
8:                jal          ra, 0b
9:                jal          ra, 2b
10:               jal          sp, 9b
11:               jal          ra, 10b
12:               jal          ra, 4b
13:               jal          a2, 11b
14:               jal          ra, 12b
15:               and          s6, t2, s2
main_0:           jal          s8, 10f
0:                jal          s9, 16f
1:                jal          ra, 21f
2:                jal          ra, 12f
3:                jal          t0, 1b
4:                jal          gp, 18f
5:                jal          ra, 8f
6:                jal          gp, 24f
7:                jal          ra, 2b
8:                jal          ra, 19f
9:                jal          ra, 14f
10:               jal          a6, 15f
11:               jal          ra, 0b
12:               jal          ra, 13f
13:               jal          t0, 22f
14:               jal          ra, 11b
15:               jal          ra, 17f
16:               jal          ra, 5b
17:               jal          ra, 7b
18:               jal          sp, 23f
19:               jal          sp, 3b
20:               jal          sp, 4b
21:               jal          sp, 6b
22:               jal          s4, 20b
23:               jal          a7, 9b
24:               ori          t3, gp, -712
main_28:          jal          s8, 0f
0:                jal          ra, 3f
1:                jal          a0, 20f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          ra, 21f
5:                jal          s1, 10f
6:                jal          ra, 19f
7:                jal          t0, 22f
8:                jal          t2, 23f
9:                jal          t5, 16f
10:               jal          ra, 1b
11:               jal          s11, 5b
12:               jal          ra, 8b
13:               jal          ra, 11b
14:               jal          t3, 18f
15:               jal          ra, 12b
16:               jal          ra, 15b
17:               jal          s1, 6b
18:               jal          t3, 17b
19:               jal          s0, 4b
20:               jal          sp, 9b
21:               jal          s5, 2b
22:               jal          s6, 14b
23:               xor          s4, a3, a6
main_12:          jal          s8, 0f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          ra, 1b
3:                jal          ra, 10f
4:                jal          a2, 8f
5:                jal          tp, 9f
6:                jal          ra, 11f
7:                jal          tp, 5b
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               andi         s11, t4, -1950
main_13:          jal          s8, 12f
0:                jal          ra, 15f
1:                jal          s8, 10f
2:                jal          ra, 3f
3:                jal          s0, 13f
4:                jal          ra, 16f
5:                jal          ra, 4b
6:                jal          t3, 9f
7:                jal          s0, 1b
8:                jal          s8, 7b
9:                jal          a5, 5b
10:               jal          tp, 2b
11:               jal          sp, 8b
12:               jal          a3, 0b
13:               jal          ra, 6b
14:               jal          ra, 11b
15:               jal          s1, 14b
16:               and          s9, s11, t4
main_10:          jal          s8, 6f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          tp, 13f
3:                jal          s5, 10f
4:                jal          ra, 9f
5:                jal          ra, 14f
6:                jal          ra, 12f
7:                jal          ra, 4b
8:                jal          a7, 0b
9:                jal          s4, 2b
10:               jal          s1, 1b
11:               jal          ra, 3b
12:               jal          ra, 11b
13:               jal          a7, 8b
14:               sltu         a5, s3, ra
main_29:          jal          s8, 21f
0:                jal          ra, 3f
1:                jal          t6, 0b
2:                jal          ra, 6f
3:                jal          t6, 2b
4:                jal          sp, 17f
5:                jal          ra, 7f
6:                jal          a0, 15f
7:                jal          ra, 14f
8:                jal          ra, 27f
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          ra, 28f
12:               jal          a0, 25f
13:               jal          ra, 12b
14:               jal          a3, 13b
15:               jal          ra, 10b
16:               jal          ra, 9b
17:               jal          ra, 30f
18:               jal          t6, 22f
19:               jal          ra, 23f
20:               jal          ra, 26f
21:               jal          ra, 29f
22:               jal          ra, 20b
23:               jal          ra, 16b
24:               jal          s8, 18b
25:               jal          s9, 24b
26:               jal          sp, 11b
27:               jal          s10, 4b
28:               jal          a3, 1b
29:               jal          ra, 19b
30:               or           s3, t0, s11
main_36:          jal          s8, 8f
0:                jal          tp, 5f
1:                jal          ra, 12f
2:                jal          tp, 9f
3:                jal          a2, 0b
4:                jal          ra, 10f
5:                jal          ra, 4b
6:                jal          a3, 2b
7:                jal          ra, 11f
8:                jal          ra, 7b
9:                jal          s8, 1b
10:               jal          s9, 6b
11:               jal          ra, 3b
12:               slt          a5, ra, a7
main_19:          jal          s8, 15f
0:                jal          ra, 16f
1:                jal          t0, 7f
2:                jal          t5, 8f
3:                jal          ra, 2b
4:                jal          ra, 21f
5:                jal          tp, 1b
6:                jal          gp, 17f
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          ra, 20f
10:               jal          ra, 3b
11:               jal          a4, 18f
12:               jal          ra, 14f
13:               jal          a4, 11b
14:               jal          sp, 5b
15:               jal          s4, 12b
16:               jal          ra, 19f
17:               jal          ra, 13b
18:               jal          ra, 9b
19:               jal          ra, 10b
20:               jal          s6, 0b
21:               sltiu        a1, s9, 1856
main_8:           jal          s8, 2f
0:                jal          t2, 16f
1:                jal          ra, 24f
2:                jal          s4, 0b
3:                jal          t2, 10f
4:                jal          a2, 25f
5:                jal          ra, 8f
6:                jal          t0, 20f
7:                jal          tp, 9f
8:                jal          ra, 11f
9:                jal          a5, 14f
10:               jal          tp, 21f
11:               jal          ra, 23f
12:               jal          sp, 4b
13:               jal          ra, 15f
14:               jal          a0, 5b
15:               jal          ra, 3b
16:               jal          a1, 17f
17:               jal          ra, 1b
18:               jal          t6, 12b
19:               jal          ra, 18b
20:               jal          ra, 13b
21:               jal          ra, 19b
22:               jal          ra, 7b
23:               jal          a1, 6b
24:               jal          ra, 22b
25:               sub          s8, s9, a2
main_2:           jal          s8, 19f
0:                jal          t6, 21f
1:                jal          ra, 16f
2:                jal          ra, 18f
3:                jal          ra, 17f
4:                jal          ra, 7f
5:                jal          ra, 15f
6:                jal          t0, 11f
7:                jal          a5, 22f
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          tp, 20f
11:               jal          t5, 12f
12:               jal          s11, 4b
13:               jal          ra, 9b
14:               jal          ra, 13b
15:               jal          t0, 3b
16:               jal          ra, 8b
17:               jal          a7, 0b
18:               jal          ra, 6b
19:               jal          ra, 10b
20:               jal          t0, 5b
21:               jal          ra, 1b
22:               slli         a6, gp, 3
main_32:          jal          s8, 11f
0:                jal          ra, 16f
1:                jal          tp, 15f
2:                jal          ra, 1b
3:                jal          ra, 0b
4:                jal          ra, 13f
5:                jal          t5, 4b
6:                jal          s7, 7f
7:                jal          gp, 14f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          t3, 9b
12:               jal          ra, 5b
13:               jal          ra, 10b
14:               jal          ra, 2b
15:               jal          ra, 12b
16:               srai         a4, a5, 6
main_31:          jal          s8, 9f
0:                jal          a3, 3f
1:                jal          ra, 12f
2:                jal          gp, 4f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          s4, 0b
6:                jal          a3, 5b
7:                jal          t0, 8f
8:                jal          ra, 6b
9:                jal          a1, 2b
10:               jal          ra, 11f
11:               jal          s0, 7b
12:               slli         s9, sp, 20
main_40:          jal          s8, 13f
0:                jal          ra, 15f
1:                jal          ra, 21f
2:                jal          ra, 7f
3:                jal          t6, 17f
4:                jal          ra, 19f
5:                jal          a6, 20f
6:                jal          t0, 25f
7:                jal          ra, 9f
8:                jal          t0, 22f
9:                jal          a5, 11f
10:               jal          ra, 1b
11:               jal          ra, 23f
12:               jal          ra, 16f
13:               jal          ra, 10b
14:               jal          s7, 8b
15:               jal          ra, 3b
16:               jal          a2, 5b
17:               jal          tp, 12b
18:               jal          a5, 0b
19:               jal          ra, 18b
20:               jal          ra, 14b
21:               jal          ra, 24f
22:               jal          ra, 2b
23:               jal          ra, 6b
24:               jal          ra, 4b
25:               add          s3, ra, s10
main_21:          jal          s8, 9f
0:                jal          ra, 6f
1:                jal          ra, 20f
2:                jal          ra, 21f
3:                jal          sp, 8f
4:                jal          ra, 10f
5:                jal          ra, 4b
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          gp, 19f
9:                jal          ra, 13f
10:               jal          a6, 2b
11:               jal          ra, 7b
12:               jal          tp, 18f
13:               jal          s1, 11b
14:               jal          ra, 0b
15:               jal          ra, 14b
16:               jal          ra, 5b
17:               jal          a6, 23f
18:               jal          a4, 16b
19:               jal          t0, 22f
20:               jal          ra, 15b
21:               jal          ra, 3b
22:               jal          ra, 17b
23:               sltu         t5, t3, sp
main_26:          jal          s8, 6f
0:                jal          ra, 1f
1:                jal          gp, 2f
2:                jal          ra, 29f
3:                jal          sp, 15f
4:                jal          s1, 12f
5:                jal          t2, 13f
6:                jal          ra, 25f
7:                jal          ra, 23f
8:                jal          ra, 26f
9:                jal          s4, 11f
10:               jal          ra, 24f
11:               jal          ra, 8b
12:               jal          ra, 30f
13:               jal          gp, 14f
14:               jal          ra, 16f
15:               jal          ra, 20f
16:               jal          ra, 10b
17:               jal          tp, 4b
18:               jal          t0, 19f
19:               jal          ra, 17b
20:               jal          ra, 22f
21:               jal          ra, 27f
22:               jal          s8, 21b
23:               jal          t0, 28f
24:               jal          ra, 18b
25:               jal          ra, 3b
26:               jal          ra, 7b
27:               jal          ra, 9b
28:               jal          s10, 0b
29:               jal          ra, 5b
30:               sll          a0, t6, s7
main_24:          jal          s8, 1f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          ra, 16f
3:                jal          s1, 15f
4:                jal          t6, 11f
5:                jal          t0, 0b
6:                jal          ra, 18f
7:                jal          ra, 14f
8:                jal          a0, 5b
9:                jal          ra, 17f
10:               jal          ra, 13f
11:               jal          ra, 12f
12:               jal          s10, 6b
13:               jal          s8, 8b
14:               jal          ra, 3b
15:               jal          ra, 10b
16:               jal          s7, 4b
17:               jal          s5, 2b
18:               auipc        a3, 471516
main_35:          jal          s8, 11f
0:                jal          ra, 10f
1:                jal          gp, 9f
2:                jal          ra, 15f
3:                jal          gp, 19f
4:                jal          ra, 22f
5:                jal          ra, 14f
6:                jal          ra, 20f
7:                jal          ra, 13f
8:                jal          ra, 21f
9:                jal          t0, 16f
10:               jal          ra, 17f
11:               jal          ra, 3b
12:               jal          t3, 4b
13:               jal          t0, 1b
14:               jal          ra, 0b
15:               jal          t6, 6b
16:               jal          s10, 2b
17:               jal          ra, 12b
18:               jal          gp, 7b
19:               jal          s11, 18b
20:               jal          t0, 8b
21:               jal          ra, 5b
22:               srli         a3, zero, 17
main_25:          jal          s8, 10f
0:                jal          ra, 22f
1:                jal          ra, 3f
2:                jal          gp, 18f
3:                jal          a4, 25f
4:                jal          t3, 28f
5:                jal          ra, 12f
6:                jal          s4, 23f
7:                jal          s8, 1b
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               jal          gp, 20f
11:               jal          ra, 2b
12:               jal          ra, 26f
13:               jal          s9, 9b
14:               jal          s9, 27f
15:               jal          ra, 6b
16:               jal          a7, 29f
17:               jal          gp, 24f
18:               jal          ra, 21f
19:               jal          s3, 4b
20:               jal          sp, 14b
21:               jal          ra, 16b
22:               jal          ra, 19b
23:               jal          ra, 11b
24:               jal          ra, 15b
25:               jal          ra, 0b
26:               jal          sp, 7b
27:               jal          ra, 13b
28:               jal          s3, 17b
29:               srl          a3, a7, s10
                  add          s7, a5, a5
                  xori         a4, s4, 458
                  xori         s9, t1, 1363
                  add          t5, a7, zero
                  sll          s5, s9, s5
                  sub          t5, a0, a7
                  xori         ra, s3, -1271
                  slli         tp, zero, 31
                  bltu         a2, t6, 27f
                  sll          ra, t4, s11
                  slti         s9, s4, 1325
                  bne          a6, ra, 21f
                  srai         a2, t0, 8
                  srai         s6, s2, 23
                  or           a6, t6, t0
                  sll          s1, t6, s4
                  srai         s8, t0, 13
                  bgeu         gp, s0, 25f
                  bltu         t2, a0, 28f
                  beq          s2, a6, 35f
                  srl          a3, t1, zero
21:               sra          s7, s4, t0
                  add          s5, s11, s11
                  nop
                  beq          s8, t2, 42f
25:               blt          a3, t1, 39f
                  auipc        s6, 1040632
27:               andi         t5, s5, 911
28:               sub          a4, s11, s9
                  sll          t0, t5, t5
                  sltu         gp, ra, a7
                  andi         s5, a5, 1630
                  srli         s0, s2, 22
                  bge          a2, s2, 45f
                  addi         s5, t2, 1078
35:               sltiu        t3, t1, 1602
                  bge          t6, s8, 42f
                  xori         a6, s6, 284
                  srai         s1, a7, 20
39:               bne          ra, a4, 43f
                  bgeu         a0, s7, 50f
                  sltu         sp, s7, ra
42:               beq          s11, s10, 54f
43:               sub          zero, ra, ra
                  sub          a4, sp, s1
45:               and          s4, s8, t3
                  ori          a5, s6, 1867
                  and          a2, gp, t6
                  slti         zero, s4, 1809
                  ori          zero, s11, -1280
50:               and          s7, t0, s1
                  srai         s8, t3, 5
                  srai         s3, t2, 24
                  beq          t0, s6, 69f
54:               sltiu        gp, t1, -1734
                  addi         a4, s3, 1321
                  bgeu         s9, a5, 75f
                  or           s10, t4, a7
                  srai         ra, t4, 3
                  blt          t5, a3, 61f
                  slti         t0, a3, -1302
61:               or           s0, a6, s2
                  xor          t6, s5, zero
                  lui          s1, 909894
                  sub          zero, zero, s0
                  ori          t2, a0, -831
                  bltu         s4, a3, 76f
                  and          a6, t2, t2
                  sra          t2, s8, s6
69:               addi         t0, a1, 1798
                  andi         a7, s5, -969
                  auipc        t3, 159117
                  srai         s7, s7, 31
                  or           a7, s7, s11
                  srli         a7, a1, 16
75:               andi         gp, s1, -521
76:               bltu         s5, gp, 78f
                  andi         a4, a2, -1629
78:               slli         sp, s4, 16
                  slti         t2, a2, 775
                  srai         s7, a3, 19
                  sll          s8, t1, t6
                  sll          s1, s0, t6
                  xori         s8, t1, -404
                  addi         tp, s0, 598
                  bgeu         s5, a0, 91f
                  slli         s6, t1, 13
                  srli         t5, t1, 14
                  srl          s0, a3, t1
                  sltu         t3, zero, a0
                  bltu         s2, t2, 92f
91:               nop
92:               lui          a7, 631931
                  bne          s8, a6, 99f
                  ori          sp, t0, 1791
                  bge          t0, t5, 107f
                  nop
                  bltu         s9, t3, 104f
                  slti         t3, a6, 854
99:               srai         sp, a6, 22
                  lui          s4, 727470
                  sltu         a6, a5, t0
                  add          s9, s0, t1
                  bgeu         a4, tp, 109f
104:              sub          a5, a4, t4
                  srli         s11, s1, 31
                  bge          t0, s5, 114f
107:              beq          s10, s5, 120f
                  beq          t6, sp, 109f
109:              and          t3, a3, s8
                  slt          a6, tp, s5
                  xor          s5, zero, s11
                  xor          zero, sp, tp
                  beq          a2, a2, 126f
114:              andi         t0, s6, -681
                  ori          s1, a6, 52
                  srli         t5, s10, 28
                  sltiu        a1, gp, 1693
                  and          s3, t1, s7
                  add          zero, sp, s2
120:              sub          s0, t3, t1
                  srai         t5, a7, 6
                  sra          a1, s8, sp
                  bltu         gp, zero, 142f
                  bne          t6, t6, 131f
                  bne          a3, tp, 141f
126:              bge          s4, ra, 145f
                  bge          s2, tp, 134f
                  addi         a4, s4, -36
                  beq          t1, gp, 142f
                  auipc        a0, 1004292
131:              xor          tp, s0, a4
                  slt          sp, a4, s1
                  addi         s11, s11, 1212
134:              bltu         s7, a1, 146f
                  slti         a5, a4, 168
                  sltu         t6, a4, s1
                  andi         a0, s3, -1745
                  xori         a0, zero, -299
                  sll          s7, t5, gp
                  slli         t5, t0, 16
141:              blt          a2, a0, 147f
142:              beq          t6, a3, 148f
                  addi         t0, s4, 65
                  or           t5, s4, s10
145:              sltu         a6, s11, t2
146:              andi         zero, s8, -626
147:              beq          t2, s1, 154f
148:              nop
                  slti         t6, t0, -376
                  auipc        a2, 737615
                  slti         t2, s5, -1729
                  auipc        sp, 445197
                  slt          t2, s7, s4
154:              srli         s4, zero, 22
                  nop
                  and          a2, t3, s6
                  lui          sp, 1039889
                  add          sp, t1, sp
                  bltu         tp, ra, 161f
                  srli         zero, t6, 18
161:              auipc        a3, 672048
                  addi         a6, a5, 1390
                  ori          sp, s6, 738
                  bge          s10, a6, 172f
                  addi         zero, ra, 17
                  xor          s5, s3, t3
                  xor          s4, s4, s9
                  slt          s8, s7, t2
                  srl          s3, s2, s4
                  bltu         a1, t2, 176f
                  slti         a4, ra, 142
172:              sra          t5, t4, a3
                  sub          zero, zero, ra
                  sltu         s8, t6, s1
                  or           s6, s2, a3
176:              andi         tp, t6, 233
                  or           s7, a7, t2
                  bltu         s7, a7, 188f
                  addi         s11, s11, 152
                  bne          t5, t4, 194f
                  or           t6, s7, s9
                  srl          s5, s11, s8
                  bne          a3, s7, 199f
                  add          t3, a6, t3
                  xor          t5, gp, t0
                  sub          a0, a0, t4
                  slti         gp, a1, -1186
188:              xori         s0, s3, 976
                  lui          gp, 120992
                  andi         t2, t6, -142
                  slt          s9, a2, s5
                  sltu         s9, s6, a1
                  srai         a0, t0, 31
194:              and          t3, t1, s5
                  sub          s7, s10, tp
                  add          a1, s2, tp
                  srli         sp, s7, 7
                  sltu         s6, s2, t3
199:              srl          s0, a4, s0
                  blt          s10, s4, 216f
                  sub          a3, gp, s0
                  addi         t6, sp, -519
                  auipc        a6, 667709
                  srli         a1, s4, 28
                  beq          s2, t5, 215f
                  bne          s3, t0, 224f
                  srai         a2, t3, 18
                  and          s5, t3, gp
                  blt          a1, a7, 213f
                  auipc        s11, 116516
                  blt          s9, a6, 230f
                  nop
213:              bne          a7, s11, 232f
                  slt          s3, s5, t2
215:              bge          s10, s8, 217f
216:              sll          a1, a5, s5
217:              srl          a7, a3, a6
                  xori         a0, sp, 390
                  or           sp, a1, a2
                  bgeu         s9, s9, 230f
                  addi         a0, s0, 1947
                  sub          s10, t2, zero
                  xori         t3, t4, -1080
224:              xor          t6, t1, t0
                  andi         t6, t1, 601
                  slt          s6, t6, s6
                  add          a1, a0, s10
                  blt          t5, sp, 236f
                  beq          s1, s2, 235f
230:              slli         gp, t1, 7
                  addi         a2, s3, 750
232:              srli         a6, t3, 18
                  sll          s3, t5, s1
                  nop
235:              srai         zero, s3, 22
236:              srli         t0, s1, 13
                  xori         a1, a7, -434
                  slt          a3, t4, s2
                  bgeu         a1, s0, 251f
                  slti         ra, t4, -757
                  sltu         s4, s10, gp
                  addi         a2, a7, 1990
                  beq          s0, t0, 253f
                  addi         s7, t5, 1507
                  srli         gp, tp, 28
                  ori          gp, a6, -2032
                  xor          sp, t0, s1
                  srli         s9, a1, 19
                  la           a4, sub_1
                  sra          s10, s11, t6
                  addi         s8, s0, -841
                  addi         a4, a4, 420
                  bge          a1, a3, main_j1 #branch to jump instr
                  add          a7, s6, ra
main_j1:          jalr         s8, a4, -419 #jump main -> sub_1
                  add          a6, tp, s11
                  bgeu         s10, a1, 250f
                  or           t5, t1, zero
250:              xori         a6, a2, 876
251:              sltu         t5, s1, a1
                  xor          a7, sp, s7
253:              sub          a3, a3, t5
                  and          t5, s2, sp
                  sltiu        gp, s4, -1890
                  auipc        s8, 580259
                  xori         s10, s9, 1515
                  add          s11, s7, t4
                  beq          t2, a5, 271f
                  auipc        a0, 696471
                  bltu         s9, s8, 274f
                  or           s0, a4, s9
                  srai         s5, a1, 16
                  srai         s4, s3, 29
                  beq          s10, a3, 281f
                  sll          s4, s3, tp
                  xori         t6, a3, 1961
                  nop
                  sltu         t2, s5, t5
                  sltiu        sp, s7, -231
271:              or           a2, t1, s5
                  andi         t3, zero, -1458
                  add          t3, t6, t5
274:              sub          a0, t5, s4
                  bgeu         t4, t3, 276f
276:              srli         a2, s1, 17
                  or           ra, s7, s1
                  sltiu        a7, t4, 173
                  xori         t0, a1, 194
                  or           s4, a2, tp
281:              and          gp, t2, s10
                  bge          a6, s1, 295f
                  and          s1, t5, t3
                  slli         sp, ra, 13
                  slti         a7, s2, -324
                  andi         sp, ra, -1243
                  slli         a0, s7, 4
                  sra          a6, s4, gp
                  sra          zero, a1, a4
                  srai         a3, t5, 1
                  auipc        a6, 969873
                  srai         a2, s3, 7
                  bne          a1, gp, 295f
                  auipc        sp, 333169
295:              slt          zero, s2, s5
                  beq          s4, s0, 304f
                  srai         s9, a2, 17
                  srli         a7, s1, 4
                  bne          s9, a4, 315f
                  lui          ra, 460312
                  nop
                  add          a5, t5, t5
                  add          t6, t4, s10
304:              auipc        s1, 792613
                  sltiu        s7, s6, 32
                  sll          a4, s0, s8
                  bgeu         a2, s1, 314f
                  beq          s3, sp, 318f
                  bge          s4, a5, 313f
                  xor          s3, a3, gp
                  sltu         a7, t5, t2
                  bne          s2, s6, 318f
313:              nop
314:              lui          s0, 72890
315:              lui          a4, 210065
                  bgeu         zero, t4, 318f
                  nop
318:              add          a2, s0, s7
                  sltu         s8, s3, t1
                  and          s0, t4, s1
                  srl          t6, s0, t2
                  and          t0, a6, a7
                  slt          s6, t6, t2
                  bltu         s7, t5, 343f
                  addi         ra, t4, -1500
                  bge          s9, a7, 327f
327:              ori          t3, s0, -634
                  slt          sp, t4, s4
                  slti         tp, s7, -456
                  or           s5, s4, a3
                  xor          a2, s4, gp
                  slli         a6, t4, 21
                  slt          tp, t2, s5
                  srli         s5, s10, 30
                  slti         t6, a7, 1759
                  xori         a1, s7, 1507
                  auipc        s10, 872132
                  slt          s3, t4, s7
                  xor          a5, s5, s1
                  slti         a3, tp, -1491
                  beq          s2, s5, 357f
                  beq          t0, zero, 361f
343:              xor          a5, t4, a3
                  bgeu         s10, t3, 350f
                  bne          a5, t4, 352f
                  bne          a2, a2, 362f
                  xor          a0, a4, t1
                  andi         s7, s2, 45
                  xori         s4, ra, 969
350:              or           s4, t5, a7
                  xori         t5, t1, -1328
352:              beq          s5, t6, 362f
                  auipc        zero, 454883
                  slti         sp, s5, -1396
                  xor          s5, s8, s4
                  xor          s10, a4, s2
357:              xori         t0, a3, 1693
                  ori          ra, sp, -1266
                  lui          s1, 259963
                  auipc        ra, 717369
361:              or           s11, s10, s5
362:              sll          gp, a0, s0
                  lui          t0, 312339
                  add          a6, a1, s5
                  bltu         s3, s10, 377f
                  sll          ra, s8, s6
                  lui          t0, 408882
                  srli         a2, s4, 14
                  srai         t6, a7, 15
                  ori          zero, s8, -791
                  blt          a6, s1, 381f
                  slt          a3, a2, a2
                  sltu         a5, gp, s0
                  slli         s3, a6, 26
                  xori         s3, s5, -1826
                  andi         zero, a4, 4
377:              sll          s8, s1, a3
                  bge          gp, a2, 396f
                  blt          t6, a2, 393f
                  slti         ra, t0, 29
                  add          a6, s9, s4
                  la           t0, sub_2
                  addi         t0, t0, -702
                  sltu         sp, s11, s4
                  andi         t2, s9, 175
                  slt          a2, s6, t2
                  or           a2, s1, t4
                  addi         a2, a0, -1278
                  auipc        ra, 755252
                  srli         t6, t5, 3
                  slt          a7, s11, s9
                  sltu         t5, s2, s5
main_j3:          jalr         s8, t0, 702 #jump main -> sub_2
381:              beq          tp, t1, 387f
                  sra          a0, a1, s6
                  bne          t6, t4, 385f
                  bne          s2, t3, 396f
385:              and          a6, s5, sp
                  bne          s10, s9, 392f
387:              bltu         s4, s6, 397f
                  andi         s6, s4, -1014
                  xori         s9, t5, -1015
                  or           a5, ra, s7
                  beq          t2, s6, 403f
392:              slt          zero, s0, s4
393:              beq          s6, s6, 406f
                  srai         s1, a4, 13
                  blt          s7, zero, 403f
396:              blt          t3, t3, 415f
397:              add          t5, a3, t0
                  srli         zero, a2, 19
                  srl          a5, zero, t1
                  bgeu         gp, s4, 412f
                  srl          s6, s10, s4
main_1:           jal          s8, 0f
0:                jal          ra, 11f
1:                jal          t2, 2f
2:                jal          ra, 3f
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          a1, 13f
7:                jal          ra, 1b
8:                jal          a4, 10f
9:                jal          ra, 12f
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               auipc        s7, 416485
                  andi         ra, s4, -1575
403:              bltu         t3, a4, 413f
                  andi         tp, t4, -1962
                  blt          s0, s11, 407f
406:              bne          a3, t2, 412f
407:              lui          zero, 926237
                  sra          a1, gp, t5
                  ori          a0, sp, 332
                  sub          tp, t0, a6
                  sub          s9, t5, t2
412:              xori         s6, s0, -380
413:              blt          s1, gp, 429f
                  and          s10, t5, s7
415:              slti         zero, s11, -1859
                  ori          t2, a3, 1062
                  addi         sp, zero, 1678
                  srl          t5, s5, s2
                  srl          s1, a7, t5
                  sll          zero, a7, a7
                  bltu         a1, zero, 428f
                  srai         t2, a4, 18
                  xor          a1, a3, s9
                  slli         a0, tp, 8
                  addi         s7, s11, 813
                  bne          a4, a0, 436f
                  sltiu        sp, a7, -2
428:              sub          a7, t0, a3
429:              srai         t0, sp, 23
                  andi         a5, s5, -1702
                  or           a7, ra, s5
                  srli         s10, a2, 23
                  srli         t6, s9, 8
                  sll          a4, t3, ra
                  sltu         a5, t4, s9
436:              or           a2, zero, a6
                  sub          a6, sp, s8
                  slli         zero, t6, 14
                  beq          a1, a5, 458f
                  addi         s1, gp, 2000
                  sub          a7, a0, t0
                  ori          s5, gp, -1455
                  blt          t3, s8, 445f
                  bge          zero, s9, 454f
445:              blt          s8, a2, 449f
                  bne          a3, s10, 459f
                  andi         t0, s1, -81
                  beq          t5, t5, 454f
449:              nop
                  slli         gp, a2, 30
                  slli         s4, s8, 6
                  sra          sp, a6, zero
                  sltu         s4, s2, s0
454:              srai         s0, s10, 5
                  or           s7, t1, s11
                  blt          s11, s10, 474f
                  bne          s5, s0, 469f
458:              sltiu        a7, t2, -124
459:              nop
                  bgeu         s5, a4, 470f
                  bne          t5, t3, 469f
                  srl          s6, s6, t4
                  and          s1, s6, s9
                  bltu         s3, a3, 466f
                  sll          a5, s2, t6
466:              bne          s4, gp, 482f
                  sub          s9, t0, a6
                  bge          t5, t0, 474f
469:              bgeu         s9, t2, 481f
470:              or           t5, s5, s0
                  sll          a2, a7, a2
                  srli         a0, a1, 15
                  slli         a2, t1, 2
474:              sltu         t6, s6, s11
                  nop
                  beq          s0, s2, 489f
                  and          a0, s8, gp
                  nop
                  or           s10, t4, s5
                  srli         s3, t4, 22
481:              addi         t2, s6, -113
482:              sltiu        s3, t6, -547
                  sltiu        a7, s1, 1571
                  slti         a4, a6, 1145
                  sll          s9, s7, a4
                  srli         gp, t3, 10
                  xori         s0, s11, -750
                  slt          s9, s3, a0
489:              bne          ra, zero, 495f
                  bgeu         s0, a6, 504f
                  srl          gp, s3, t4
                  nop
                  sra          s5, a3, s1
                  srli         a3, a3, 21
495:              srl          ra, s4, s3
                  andi         t0, a7, 1730
                  blt          a7, s6, 516f
                  and          s10, t2, a4
                  srl          s0, a7, t3
                  srl          t5, s1, t3
                  auipc        s7, 565971
                  bne          sp, t1, 521f
                  sub          t2, tp, a6
504:              bge          a3, s11, 512f
                  blt          a1, a4, 521f
                  add          s8, s5, t5
                  slli         tp, a5, 5
                  and          s0, s0, a5
                  or           s7, t1, a2
                  srai         s5, sp, 6
                  slti         a4, a3, -781
512:              bge          s1, t5, 519f
                  bge          t3, a4, 514f
514:              srai         a4, t5, 18
                  srl          s10, zero, a4
516:              srai         t0, t2, 21
                  bgeu         s10, s5, 523f
                  nop
519:              xor          t2, a4, a3
                  sltu         s11, a2, s11
521:              bgeu         t6, gp, 540f
                  sra          a5, s5, s3
523:              slti         s5, t1, -154
                  lui          s6, 33591
                  auipc        gp, 81454
                  auipc        s1, 961422
                  slt          gp, s2, a2
                  srl          s11, sp, ra
                  bltu         tp, gp, 542f
                  ori          tp, ra, -1343
                  bge          a3, s11, 532f
532:              bne          a4, t1, 542f
                  srli         s0, s1, 10
                  slti         t0, a6, 700
                  srai         a3, a5, 20
                  beq          s5, a1, 552f
                  sll          a1, s7, s4
                  blt          a2, s6, 540f
                  srl          s0, a2, zero
540:              and          a0, s3, s11
                  sltu         s4, t0, s9
542:              srl          a3, zero, a2
                  lui          a5, 973700
                  ori          s1, a1, 1523
                  auipc        t2, 33571
                  lui          s9, 603677
                  lui          s9, 185713
                  srli         s6, s10, 14
                  ori          s4, s8, 990
                  slti         a4, zero, 638
                  or           t2, ra, s6
552:              and          a1, s9, tp
                  bgeu         t0, t4, 559f
                  and          s0, s8, s0
                  addi         s11, a2, -1023
                  auipc        s6, 439225
                  sltiu        tp, s6, -1550
                  addi         sp, s4, 1047
559:              xor          a5, s10, a3
                  slt          t6, s3, t4
                  srai         s0, a3, 26
                  slt          a1, s4, s1
                  xor          t5, a1, s5
                  blt          a4, sp, 571f
                  sltu         a3, s1, s9
                  srli         a7, a3, 29
                  bgeu         s9, zero, 575f
                  sra          s5, a0, zero
                  addi         s1, s1, 1638
                  sltiu        t2, s5, 1039
571:              xori         s0, a0, 96
                  xor          a6, t4, s7
                  ori          s3, a4, 1217
                  bltu         a4, s1, 584f
575:              sll          s3, s5, a5
                  bltu         a5, s2, 595f
                  and          gp, gp, t4
                  andi         s3, s9, -233
                  beq          a4, t1, 592f
                  sltiu        t6, t4, -1677
                  xori         a7, s1, 1456
                  sra          a0, t0, a5
                  sub          s4, sp, s2
584:              bgeu         s10, t5, 594f
                  xori         zero, a5, 9
                  slti         s9, s10, -192
                  bgeu         s2, s5, 599f
                  sub          a2, a0, t3
                  andi         a0, t0, -561
                  bltu         s5, a5, 592f
                  bne          t5, sp, 593f
592:              bne          s11, zero, 604f
593:              sll          s11, a1, s4
594:              slti         s7, a6, 32
595:              blt          t1, s11, 611f
                  or           a4, s5, tp
                  sltiu        s7, sp, 957
                  slli         sp, s9, 23
599:              ori          t6, t0, 1122
                  xori         s8, sp, -1357
                  slt          s1, t4, a3
                  sltu         gp, t6, a2
                  bgeu         t2, s5, 607f
604:              ori          t5, zero, -1286
                  sltu         gp, a1, a2
                  blt          a5, a7, 622f
607:              addi         s8, s7, -140
                  srli         t5, a4, 22
                  or           s5, s11, a0
                  sra          a2, s3, s3
611:              srl          a7, a1, s11
                  xor          t3, s9, s11
                  bge          s6, s8, 625f
                  or           tp, t6, t6
                  nop
                  xor          a4, s2, s5
                  sub          s10, a7, s3
                  auipc        s4, 944009
                  srai         a7, a5, 10
                  xori         gp, s0, 324
                  beq          s11, t0, 628f
622:              sub          t3, a3, t2
                  sub          s10, t3, s8
                  bltu         s6, t4, 643f
625:              slt          a3, s0, s9
                  beq          t0, t5, 640f
                  and          s8, a2, t4
628:              xor          a1, s2, s0
                  srli         s6, a0, 26
                  bne          s1, s0, 638f
                  slt          s6, tp, tp
                  sub          a1, t0, t3
                  and          s7, s4, a0
                  andi         sp, a7, -34
                  xori         s0, a0, 1977
                  slli         a4, s8, 27
                  slt          s9, t1, s8
638:              andi         s4, a3, -1619
                  srli         t5, t4, 12
640:              bne          a3, s0, 646f
main_4:           jal          s8, 0f
0:                jal          tp, 9f
1:                jal          ra, 7f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          sp, 12f
5:                jal          s1, 13f
6:                jal          a5, 1b
7:                jal          sp, 3b
8:                jal          ra, 11f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               jal          ra, 5b
13:               sll          t2, s5, a5
                  bgeu         zero, a6, 647f
                  xori         s6, t2, 637
643:              bge          s10, s4, 661f
                  slt          s9, s9, s5
                  auipc        s11, 452484
646:              bgeu         s11, t5, 656f
647:              slli         s6, t1, 3
                  or           a4, t5, a6
                  srl          t0, t0, a1
                  addi         t2, s3, -620
                  slti         t3, a0, -1597
                  and          tp, s9, a5
                  beq          zero, tp, 665f
                  xor          zero, s8, t0
                  blt          s6, t3, 668f
656:              bltu         a3, s1, 672f
                  addi         s10, s4, -1180
                  xor          a2, s2, s1
                  bltu         a6, t3, 666f
                  slli         sp, s9, 23
661:              srai         s9, a2, 27
                  bne          sp, s8, 674f
                  srai         gp, s8, 28
                  addi         a2, s0, -1801
665:              and          t0, a1, t6
666:              beq          s3, s0, 682f
                  add          a0, s10, a6
668:              ori          a5, tp, -774
                  beq          a5, a6, 687f
                  sll          t3, gp, s8
                  slt          s11, s10, t5
672:              slli         a3, zero, 5
                  srl          tp, t1, s1
674:              or           s3, a3, a6
                  slli         a2, t2, 16
                  bge          s7, s11, 684f
                  sra          s3, s10, a3
                  srl          a1, a4, a3
                  auipc        gp, 726449
                  lui          tp, 994824
                  nop
682:              bgeu         a6, a3, 694f
                  add          s5, t2, ra
684:              xori         s9, a1, 333
                  slt          t3, a5, s4
                  addi         s7, t1, 1581
687:              ori          t3, t4, -585
main_20:          jal          s8, 10f
0:                jal          ra, 20f
1:                jal          ra, 9f
2:                jal          ra, 0b
3:                jal          ra, 13f
4:                jal          s9, 11f
5:                jal          ra, 22f
6:                jal          t0, 27f
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          s3, 19f
10:               jal          ra, 24f
11:               jal          ra, 17f
12:               jal          ra, 23f
13:               jal          a6, 6b
14:               jal          ra, 3b
15:               jal          s3, 1b
16:               jal          ra, 7b
17:               jal          s7, 18f
18:               jal          s6, 26f
19:               jal          ra, 8b
20:               jal          gp, 15b
21:               jal          ra, 2b
22:               jal          ra, 12b
23:               jal          ra, 16b
24:               jal          ra, 25f
25:               jal          ra, 21b
26:               jal          ra, 14b
27:               add          s6, a2, t6
                  blt          a5, a3, 694f
                  bgeu         a6, a6, 699f
                  and          s7, t1, s5
                  auipc        t5, 886010
                  addi         s4, s4, 1700
                  sll          s3, t3, tp
694:              addi         s7, t2, 1123
                  slti         zero, zero, 1046
                  addi         s0, a3, 964
                  slli         a5, a5, 17
                  nop
699:              sltu         s5, s1, a5
                  addi         a7, a5, 1912
                  auipc        s11, 683120
                  and          t2, t0, t1
                  srli         t5, t2, 3
                  srli         a1, a1, 8
                  sll          a2, t4, t6
                  srl          a3, t2, s6
                  sub          s8, a3, s1
                  addi         sp, a4, 1604
                  ori          s11, sp, -44
                  nop
                  auipc        a7, 995823
                  srai         tp, s9, 2
                  sub          s11, s5, s9
                  sltiu        t3, t0, -127
                  or           t0, a4, a4
                  sra          t0, a6, a1
                  or           a4, s6, s1
                  slt          s1, t4, t5
                  ori          sp, a2, 690
                  addi         t3, a3, 998
                  slli         a3, a1, 28
                  sll          t6, a2, s10
                  sub          s9, s10, t1
                  sub          s1, t4, a5
                  slli         a7, zero, 8
                  srai         s7, s6, 27
                  bltu         zero, a2, 746f
                  bltu         s1, a7, 736f
                  slt          t6, t1, a1
                  slti         a4, s1, 1719
                  slli         gp, s10, 16
                  lui          s3, 328675
                  slti         a2, s3, -1090
                  bgeu         s11, s8, 736f
                  slti         s4, a7, 1845
736:              auipc        s11, 670747
                  slli         s11, s4, 17
                  srl          s7, s0, s3
                  addi         sp, a1, 1752
                  slt          a1, a3, t1
                  sub          s1, t1, a6
                  and          s6, t6, gp
                  bgeu         a2, t6, 750f
                  and          a2, a0, a5
                  lui          sp, 424455
746:              srl          t0, s10, a6
                  sra          t6, zero, s0
                  slti         a2, tp, -1506
                  sll          s6, sp, s3
750:              bltu         t6, sp, 756f
                  slli         s3, zero, 22
                  srai         t2, a3, 9
                  beq          s9, s8, 757f
                  beq          s4, s0, 770f
                  xori         s6, s2, 737
756:              xori         a5, s1, -1268
757:              srai         t3, a3, 25
                  blt          tp, s7, 764f
                  blt          t6, s8, 778f
                  slt          a2, a3, t2
                  slt          s0, s1, s3
                  srli         sp, sp, 0
                  and          a0, s8, s3
764:              xor          a4, s10, a1
                  srl          s9, s3, s9
                  auipc        a1, 856901
                  xor          tp, s9, t1
                  bne          t4, s2, 782f
                  slli         t3, s4, 21
770:              xor          zero, sp, s5
                  slt          s3, a2, a0
                  ori          s8, t1, 1189
                  srli         t0, a6, 19
                  andi         a3, sp, -815
                  and          s4, t6, ra
                  sub          sp, sp, s5
                  lui          gp, 214131
778:              slti         a7, s5, -1679
                  andi         s9, t5, 1878
                  bge          s4, gp, 782f
                  nop
782:              lui          t5, 347002
                  bltu         t3, a6, 793f
                  beq          zero, s6, 803f
                  auipc        s9, 199895
                  xori         s4, t2, -640
                  and          t6, a5, a7
                  sra          t3, t0, a0
                  or           ra, t4, a3
                  bgeu         s1, s6, 792f
                  sll          s5, s4, zero
792:              bne          t0, t0, 802f
793:              srli         t3, a7, 18
                  andi         a0, t0, 622
                  and          a1, s4, tp
                  bltu         a5, t0, 806f
                  bgeu         s7, gp, 810f
                  srl          t0, s3, a7
                  srl          s9, s5, t4
                  addi         a4, t3, -389
                  nop
802:              bne          s2, s3, 803f
803:              bgeu         t3, a4, 809f
                  lui          s8, 925914
                  sub          a4, t1, a5
806:              sub          sp, s4, s8
                  xor          s0, a0, t6
                  sltiu        tp, tp, -314
809:              xor          a0, zero, a0
810:              addi         t6, s4, 23
                  slti         s1, tp, -684
                  ori          s1, s9, -823
                  andi         t6, gp, -949
                  sub          s9, s4, tp
                  bne          s11, s1, 825f
                  slt          a7, s11, s11
                  srai         s4, t1, 23
                  xori         s1, t1, -312
                  sltu         s3, sp, a3
                  bgeu         s5, a0, 830f
                  lui          s3, 779104
                  or           a4, tp, zero
                  bne          t4, s1, 839f
                  blt          s7, s7, 830f
825:              sltiu        t2, t0, 862
                  sra          s10, a5, s7
                  addi         zero, t4, -742
                  blt          t4, t1, 840f
                  ori          s5, a5, 2034
830:              slti         tp, s9, 1149
                  lui          a1, 907924
                  sub          s11, ra, s4
                  andi         t5, s11, -453
                  bne          t0, t4, 852f
                  sub          gp, s8, a4
                  srl          t6, s3, t0
                  sll          a4, s11, sp
                  or           gp, s10, a2
839:              srai         t2, ra, 30
840:              beq          gp, a6, 859f
                  srli         a3, s4, 28
                  bne          s0, t4, 854f
                  slli         s7, s10, 11
                  sltiu        t0, s3, -543
                  sltiu        s8, t4, -357
                  lui          s0, 690928
                  slt          s4, s7, t4
                  xori         s1, s5, -1853
                  xor          a7, s5, s7
                  sll          a1, t4, a1
                  sub          ra, a0, s4
852:              sll          tp, s9, a0
                  andi         a5, s2, -471
854:              addi         s9, zero, 1024
                  srl          a6, tp, s1
                  xor          a6, s9, a6
                  sltu         a1, a1, sp
                  ori          s11, s7, -709
859:              addi         t3, s0, -1656
                  nop
                  sltiu        t2, a6, -195
                  add          a6, s2, t5
                  add          a4, zero, a4
                  srai         s7, t1, 12
                  xor          gp, sp, t5
                  srl          zero, s9, t6
                  sra          ra, gp, a6
                  add          a3, t4, s9
                  nop
                  xor          a7, t2, zero
                  lui          t0, 318937
                  slli         a4, t1, 1
                  ori          t3, s4, -1692
                  sll          s10, s11, zero
                  srli         s5, t4, 8
                  sltiu        sp, a0, -737
                  slti         a2, tp, 331
                  or           t6, s5, t6
                  srai         s5, s6, 30
                  addi         s6, s4, 990
                  lui          a6, 707176
                  ori          a4, t1, -1623
                  beq          s10, sp, 885f
                  ori          zero, s5, 1744
885:              sltu         s0, s5, a0
                  sltiu        s7, sp, -1188
                  bgeu         s11, t0, 897f
                  xori         s9, t4, 1338
                  sltiu        s5, a2, -1043
                  sub          t2, s11, t5
                  srl          zero, sp, s4
                  slt          s6, zero, sp
                  nop
                  sltu         s4, a1, t5
                  srai         t5, s4, 23
                  slt          s4, t5, s1
897:              bne          s6, gp, 903f
                  auipc        gp, 130682
                  beq          t2, s10, 907f
                  sub          a4, zero, s5
                  la           t2, sub_1
                  srl          s6, s0, t1
                  nop
                  addi         t2, t2, 448
                  sub          s9, t0, a6
                  addi         a4, tp, 64
                  sra          a7, s10, gp
                  beq          a3, s1, main_j2 #branch to jump instr
                  addi         t3, s9, 331
                  slti         gp, a6, 45
                  auipc        a0, 511738
                  lui          a3, 8865
main_j2:          jalr         s8, t2, -447 #jump main -> sub_1
                  sltiu        s7, a4, 1682
                  and          t0, s2, t4
                  slti         a6, s2, 1885
903:              lui          s1, 366185
                  srl          s9, t0, t2
                  sub          ra, t6, s8
                  srai         a2, a7, 6
907:              blt          t1, sp, 911f
                  bltu         a6, t2, 922f
                  srl          s7, zero, s1
                  addi         a0, t1, -995
911:              sltiu        zero, gp, -1900
                  bne          t0, t1, 920f
                  add          t5, a3, s9
                  add          a3, t5, t3
                  sub          a6, s0, s6
                  or           s1, s10, a6
                  ori          a3, s4, -52
                  slti         s11, t4, 1128
                  srli         tp, ra, 21
920:              bltu         a7, s8, 922f
                  and          tp, a5, zero
922:              srli         s7, a6, 5
                  bltu         t1, a3, 936f
                  bgeu         s1, s10, 931f
                  xor          tp, s11, a5
                  nop
                  ori          tp, s6, 1678
                  srli         t2, s5, 27
                  xor          t0, t6, a5
                  or           s1, s3, s1
931:              sltiu        a7, a0, -1492
                  or           s7, t2, s5
                  srli         a2, t2, 11
                  xor          gp, s2, a2
                  beq          s7, t5, 941f
936:              bne          t3, s10, 943f
                  blt          t4, t4, 949f
                  slti         ra, s0, 627
                  nop
                  or           ra, gp, t5
941:              or           s8, s9, s3
                  sub          a2, a7, gp
943:              bltu         a0, s5, 949f
                  blt          a5, s8, 963f
                  and          s7, t6, s4
                  blt          t5, s4, 947f
947:              blt          t3, a5, 949f
                  or           s7, s10, t6
949:              sub          s1, s10, s4
                  xor          s0, t6, s7
                  sltu         s4, t1, t2
                  sltu         t3, t5, s6
                  sub          sp, s8, s6
                  and          s1, a6, s4
                  sra          s8, s0, s6
                  slt          s10, gp, s6
                  ori          tp, t2, 347
                  nop
                  sltiu        t0, t0, 1684
                  srl          t3, t0, t1
                  srli         t2, s1, 9
                  and          t3, t4, s1
963:              srl          a2, t5, a0
                  bne          a1, a5, 983f
                  srl          t0, t2, tp
                  sltiu        s4, s9, 881
                  slli         gp, a2, 31
                  andi         s9, s9, 1015
                  slli         t3, s9, 1
                  nop
                  or           s8, t4, t6
                  auipc        s11, 37497
                  andi         s5, t6, -1566
                  nop
                  bltu         a4, t5, 991f
                  add          s9, s5, s10
                  nop
                  bgeu         a4, gp, 991f
                  xor          s0, gp, t3
                  slli         gp, s9, 0
                  and          a2, s1, a4
                  blt          t1, a2, 992f
983:              slt          ra, t3, ra
                  and          gp, s10, a1
                  sra          sp, s8, s1
                  slti         a4, gp, -978
                  bgeu         a2, s9, 1003f
                  sll          s5, t6, a3
                  nop
                  bgeu         s6, s2, 991f
991:              and          s7, a6, ra
992:              sltiu        t3, s10, 768
                  lui          s3, 67993
                  slti         s10, s4, -907
                  slti         s1, t5, -1208
                  add          a4, s11, t0
                  bltu         t3, s5, 1016f
                  bgeu         a6, ra, 1017f
                  slt          a4, s1, s1
                  or           gp, s5, s7
                  srl          zero, t3, a6
                  bltu         gp, t1, 1018f
1003:             bne          s8, t2, 1021f
                  bgeu         s2, t2, 1010f
                  nop
                  ori          a2, a6, 585
                  sll          s10, zero, sp
                  lui          t2, 567222
                  srl          a6, a7, a6
1010:             andi         s6, a7, -1196
                  bltu         s4, s8, 1024f
                  bge          a1, t6, 1024f
                  bne          a7, s1, 1025f
                  bge          a7, a0, 1033f
                  sltiu        a3, a6, 490
1016:             andi         s10, s8, -783
1017:             or           sp, a1, a5
1018:             sltiu        sp, zero, -860
                  xori         sp, a1, -384
                  ori          a4, a5, -816
1021:             ori          a7, sp, -696
                  srli         s11, t2, 16
                  xori         s6, s9, 1531
1024:             addi         s9, t3, -1741
1025:             bgeu         s11, a7, 1033f
                  andi         s5, s8, 1783
                  addi         gp, a5, -1472
                  lui          s8, 798713
                  xor          gp, s10, a0
                  andi         zero, t0, 1067
                  srli         s6, s0, 28
                  bltu         s9, t5, 1044f
1033:             nop
                  srl          s5, t0, s0
                  nop
                  beq          s0, t2, 1052f
                  sltiu        s9, t0, 1096
                  slli         a4, a5, 5
                  sll          a4, s5, a6
                  xori         ra, s3, -374
                  nop
                  sub          s9, t6, tp
                  srli         gp, s0, 13
1044:             blt          gp, s7, 1052f
                  bgeu         t4, t4, 1047f
                  and          a5, s7, a0
1047:             slli         s11, ra, 20
                  beq          ra, s0, 1058f
                  andi         a6, s8, -447
                  sltiu        a6, s4, -1307
                  bltu         ra, s3, 1061f
1052:             sll          a7, zero, t6
                  sltiu        t0, s9, -485
                  auipc        gp, 301565
                  slti         gp, t5, 967
                  xori         s5, s9, -1550
                  nop
1058:             bge          ra, t5, 1065f
                  srai         a5, s3, 14
                  xori         gp, s6, 196
1061:             sra          t0, a4, s9
                  sra          t0, s1, a2
                  xori         a4, s10, -612
                  or           a1, a5, s2
1065:             xori         gp, t2, -1379
                  sll          s10, a4, s4
                  slt          ra, t6, a1
                  beq          t3, zero, 1072f
                  srl          gp, s7, s5
                  bne          s4, zero, 1080f
                  xor          s9, s6, s9
1072:             sltu         t3, t4, t3
                  sll          a2, s4, t2
                  sub          t3, t1, a5
                  sll          t5, t4, t3
                  blt          a6, gp, 1082f
                  xori         t3, t0, -538
                  srl          a6, s5, a5
                  bge          t1, s8, 1085f
1080:             and          s11, t6, t0
                  auipc        a6, 554736
1082:             sub          s8, s8, a2
                  bge          t2, t4, 1090f
                  xori         s5, s3, 344
1085:             srai         s6, s1, 28
                  or           s5, a7, s2
                  or           a1, ra, a3
                  sltu         a6, gp, a1
                  slt          s5, s10, a0
1090:             sra          sp, t4, zero
                  or           a4, t3, a3
                  auipc        s0, 113766
                  slti         a6, sp, -563
                  beq          ra, t4, 1108f
                  sub          a7, s8, a1
                  sra          s0, a3, s2
                  sltu         s6, s7, t3
                  bltu         a4, t5, 1114f
                  sltu         s5, a3, s5
                  srl          s7, t1, s11
                  bgeu         s11, gp, 1114f
                  blt          s8, a6, 1104f
                  blt          a2, t3, 1113f
1104:             slt          tp, a6, a7
                  bltu         t0, s0, 1107f
                  andi         gp, gp, -2031
1107:             lui          a1, 440225
1108:             beq          s7, s5, 1114f
                  and          s4, s10, t5
                  auipc        tp, 594969
                  nop
                  and          s5, s8, sp
1113:             add          a1, a6, s7
1114:             slli         s6, t1, 8
                  bge          s8, zero, 1117f
                  sub          a5, tp, t0
1117:             slt          a4, t0, sp
                  sll          s1, a4, s3
                  sltiu        t6, zero, 22
                  andi         s6, s5, 239
                  blt          tp, zero, 1123f
                  srli         s7, t5, 10
1123:             slt          ra, sp, t0
                  sll          a7, s1, tp
                  lui          sp, 244517
                  srai         t3, s8, 14
                  auipc        t0, 168417
                  srl          a4, s7, a7
                  bne          t0, t0, 1137f
                  sll          a2, s11, s10
                  sub          a5, s2, s6
                  bne          a7, t4, 1144f
                  sltu         s0, s10, zero
                  ori          s5, a3, -1538
                  bgeu         s4, a1, 1141f
                  or           s5, ra, ra
1137:             blt          a6, a3, 1153f
                  auipc        a0, 472850
                  srai         gp, t2, 29
                  and          a2, gp, s1
1141:             xor          s8, s0, s5
                  srl          a6, a7, a0
                  sra          t3, a0, sp
1144:             sltu         sp, t3, sp
                  auipc        s10, 846139
                  beq          t1, ra, 1164f
                  or           s4, s1, s3
                  bltu         s4, s5, 1155f
                  sltu         s8, s11, s5
                  addi         a7, zero, -410
                  srl          t6, ra, t5
                  xor          s10, s11, zero
1153:             andi         t3, s4, -646
                  sltu         s3, a0, a2
1155:             blt          t6, a7, 1167f
                  sub          s6, tp, t4
                  or           a5, zero, a5
                  blt          s1, t0, 1168f
                  bltu         gp, t1, 1178f
                  beq          s9, t4, 1161f
1161:             slli         s10, s7, 25
                  lui          a7, 135704
                  sll          gp, s4, a1
1164:             and          a3, tp, s6
                  addi         s11, t1, 319
                  sll          s6, t0, t2
1167:             ori          s1, a6, -307
1168:             xor          a5, sp, a4
                  sll          sp, t4, s3
                  lui          s4, 1047172
                  sltiu        s3, t3, -757
                  lui          t0, 203709
                  sll          t3, zero, a0
                  or           s8, s2, a2
                  xor          s3, zero, a5
                  beq          gp, tp, 1188f
                  xori         s3, tp, 1606
1178:             sltu         s1, zero, a6
                  andi         sp, sp, -1462
                  sll          a5, a2, t0
                  lui          sp, 549820
                  slt          s11, s9, t6
                  lui          s9, 889000
                  ori          s8, s10, 1303
                  slli         t3, gp, 30
                  nop
                  sra          s5, s8, a0
1188:             beq          sp, s4, 1201f
                  ori          s5, s0, 264
                  auipc        s11, 802646
                  addi         t0, a1, 1728
                  ori          t6, s7, -1516
                  blt          t5, s5, 1201f
                  sltu         s3, a2, s10
                  lui          s9, 817550
                  sub          a0, ra, s4
                  andi         gp, t6, 452
                  sltiu        zero, tp, -473
                  sub          a4, zero, s1
                  bltu         a1, s6, 1219f
1201:             sra          s1, a7, s7
                  srai         a3, a3, 26
                  add          s3, gp, s2
                  lui          a0, 530066
                  and          a5, a2, s10
                  slt          s11, a0, a4
                  xori         gp, zero, -1550
                  add          zero, s2, a7
                  blt          ra, s0, 1211f
                  srl          a0, s11, a4
1211:             blt          s3, gp, 1217f
                  xor          a4, s1, s10
                  addi         gp, s3, -1304
                  slli         a2, s3, 13
                  slti         s1, a7, -1833
                  xor          a2, s11, sp
1217:             srai         sp, a3, 16
                  bltu         tp, sp, 1222f
1219:             srli         t2, a5, 23
                  ori          s3, a3, -1463
                  addi         tp, s5, 937
1222:             beq          a4, a3, 1229f
                  nop
                  sltu         a5, a0, a1
                  beq          zero, zero, 1235f
                  bne          s4, a2, 1236f
                  bgeu         a7, sp, 1243f
                  bge          s1, s5, 1244f
1229:             sll          s6, s10, a0
                  sll          t2, s8, t2
                  and          s7, t2, s1
                  xori         s0, t3, 185
                  or           t2, t6, s9
                  srai         s1, t0, 0
1235:             srai         s0, a0, 13
1236:             sltiu        zero, s11, -165
                  srli         zero, t1, 26
                  beq          s8, t1, 1257f
                  slt          ra, s11, a6
                  slli         s11, t0, 10
                  xori         a6, s3, -452
                  srai         ra, s3, 7
1243:             sll          t5, gp, t3
1244:             andi         ra, sp, 1673
                  nop
                  blt          t3, ra, 1259f
                  addi         s1, s10, 729
                  bltu         s5, ra, 1254f
                  slli         t6, s2, 13
                  srai         t2, s10, 3
                  addi         s8, s3, -658
                  sltu         a0, ra, t3
                  bge          s9, a5, 1263f
1254:             srli         s11, zero, 8
                  slli         s11, s7, 29
                  or           s5, t4, t1
1257:             or           a7, t3, zero
                  slli         t0, s9, 5
1259:             addi         s3, a2, 717
                  auipc        tp, 217366
                  slt          t0, t3, ra
                  bge          a4, t5, 1276f
1263:             or           a0, s4, s5
                  addi         a5, a5, 821
                  slt          a3, a1, s0
                  bltu         s9, s4, 1272f
                  bne          a2, a5, 1273f
                  add          a3, s10, a5
                  addi         t5, sp, -1873
                  sltu         a4, a3, gp
                  slti         t5, t3, 993
1272:             sll          a4, t4, t0
1273:             beq          s9, tp, 1280f
                  slli         s5, t6, 2
                  srai         s10, t4, 8
1276:             bgeu         a6, s10, 1295f
                  bne          s10, t4, 1290f
                  sll          s4, s1, s3
                  sll          s10, s4, s4
1280:             sll          t5, a5, s7
                  andi         s11, a7, 83
                  sltu         t0, t4, t3
                  slt          t6, a2, s7
                  bltu         a2, t5, 1290f
                  bgeu         t2, t5, 1292f
                  srai         zero, s8, 6
                  xori         s0, s2, 1902
                  addi         s3, t1, 254
                  xori         s3, gp, -1442
1290:             nop
                  slli         a5, s0, 14
1292:             bge          t3, t5, 1311f
                  blt          a4, s3, 1309f
                  sltiu        t0, s1, 1244
1295:             bne          a0, s0, 1305f
                  bgeu         a4, s7, 1308f
                  sra          s11, ra, s9
                  add          s3, s4, t5
                  srai         tp, s3, 14
                  and          a1, a7, t6
                  lui          s6, 597236
                  lui          t0, 332178
                  or           t6, s11, t3
                  sll          a7, s3, t1
1305:             srli         a5, t5, 6
                  add          a5, a0, t0
                  sra          a3, a5, s7
1308:             xori         s11, a5, 1793
1309:             add          s7, a7, t2
                  andi         s7, a6, -61
1311:             srl          a4, t6, ra
                  sra          s4, s2, t5
                  bge          a4, s0, 1325f
                  bge          s7, a3, 1330f
                  nop
                  sltiu        a7, s3, -1120
                  sltiu        a6, t3, -1860
                  slti         zero, tp, 555
                  srai         a0, s9, 5
                  slt          a6, s9, s7
                  srai         s8, gp, 1
                  auipc        a5, 570772
                  slt          s10, t0, a5
                  auipc        tp, 19268
1325:             blt          t0, zero, 1337f
                  lui          a3, 565525
                  nop
                  slt          t6, sp, s2
                  or           s5, s5, s9
1330:             sltiu        zero, a6, 1501
                  add          zero, s8, s8
                  xori         t2, s4, 729
                  beq          a7, t4, 1339f
                  sub          s9, s7, t2
                  bgeu         sp, s8, 1336f
1336:             sra          a2, s5, t2
1337:             ori          t6, t0, -9
                  auipc        a6, 1033232
1339:             srl          s0, s4, t1
                  sra          s10, a2, a7
                  slli         t3, gp, 15
                  and          s6, t2, s7
                  bge          t6, s2, 1359f
                  sll          s7, t3, a0
                  or           t3, a3, gp
                  nop
                  add          s4, s10, a0
                  sltiu        a3, s9, 1910
                  srli         a3, s9, 3
                  nop
                  add          a3, s8, a5
                  bne          t2, tp, 1371f
                  or           s4, s3, s6
                  slti         a0, s7, 1836
                  bgeu         a6, s8, 1363f
                  sub          s10, t3, s7
                  blt          t0, s8, 1363f
                  sltu         s3, s5, t5
1359:             addi         s10, s1, 1132
                  bgeu         a7, t6, 1370f
                  ori          s4, a7, 1347
                  blt          a0, ra, 1380f
1363:             sra          t5, s0, a2
                  andi         a5, s1, 1640
                  or           t5, a2, a4
                  ori          t2, s4, -1237
                  addi         a4, t2, -74
                  srl          s7, s11, a1
                  srai         s9, a2, 12
1370:             srai         sp, t5, 0
1371:             sub          s7, a4, t3
main_41:          jal          s8, 11f
0:                jal          s6, 1f
1:                jal          t6, 27f
2:                jal          ra, 17f
3:                jal          ra, 8f
4:                jal          ra, 25f
5:                jal          ra, 29f
6:                jal          s11, 19f
7:                jal          ra, 28f
8:                jal          s10, 15f
9:                jal          s4, 13f
10:               jal          s8, 21f
11:               jal          t2, 14f
12:               jal          ra, 4b
13:               jal          ra, 24f
14:               jal          ra, 0b
15:               jal          s8, 12b
16:               jal          ra, 2b
17:               jal          ra, 26f
18:               jal          ra, 7b
19:               jal          ra, 23f
20:               jal          ra, 6b
21:               jal          t2, 9b
22:               jal          s1, 16b
23:               jal          ra, 3b
24:               jal          t0, 22b
25:               jal          ra, 18b
26:               jal          t6, 20b
27:               jal          ra, 10b
28:               jal          ra, 5b
29:               lui          a4, 186936
                  andi         a3, ra, -1692
                  and          a7, a1, s4
                  slli         a0, s8, 1
                  slti         a0, t2, -1518
                  srl          a2, t6, a1
                  xor          s3, s5, a6
                  bge          s9, t5, 1382f
                  andi         a1, sp, 1539
1380:             srli         a0, t6, 17
                  ori          a2, s7, -218
1382:             lui          s9, 786269
                  sll          a4, a0, s4
                  andi         t3, t5, -341
                  xori         a7, s4, -7
                  ori          a2, a3, -518
                  andi         s8, a5, 837
                  slt          s4, ra, s1
                  andi         gp, s8, -1038
                  xori         s11, a3, -1911
                  and          a1, ra, a2
                  andi         t3, s8, -85
                  bge          a3, s11, 1395f
                  sra          t6, a2, t6
1395:             lui          t5, 605242
                  srli         tp, s0, 15
                  slti         a7, s9, 1457
                  addi         s3, t5, 1693
                  srl          a7, s7, s8
                  sll          s9, sp, s10
                  sub          s11, s0, a0
                  bltu         t5, t6, 1412f
                  bgeu         s11, s10, 1413f
                  andi         s1, a4, 1405
                  bne          s6, ra, 1419f
                  addi         t6, t5, 1083
                  xor          a3, t5, s5
                  sltu         t0, a6, a0
                  bltu         t6, s1, 1417f
                  slt          s5, s5, sp
                  xor          sp, t4, s6
1412:             sub          a1, s8, gp
1413:             sra          s9, s1, zero
                  nop
                  sltu         sp, s9, t3
                  beq          s11, t6, 1429f
1417:             sub          a7, s10, t0
                  slli         s10, s5, 31
1419:             auipc        s1, 909106
                  sll          a0, s1, t6
                  sltiu        s7, tp, 1785
                  slli         a2, zero, 28
                  srl          s8, a0, tp
                  and          s3, s11, s6
                  srli         s8, tp, 0
                  sra          s11, s8, a4
                  andi         s9, s11, 762
                  lui          t6, 183283
1429:             xor          a2, sp, t2
                  auipc        a0, 933723
                  andi         s11, a1, -8
                  slti         a5, a1, 1842
                  srai         s11, s3, 1
                  blt          s0, s11, 1436f
                  srli         gp, a4, 0
1436:             blt          s8, a1, 1438f
                  or           a7, t2, t6
1438:             nop
                  add          s3, s9, s7
                  sra          zero, s11, a6
                  srli         s6, s8, 10
                  auipc        s11, 426054
                  lui          t0, 571108
                  sltu         sp, a6, s1
                  auipc        s4, 205835
                  srl          sp, ra, a3
                  sll          s8, s2, a3
                  or           s11, a5, a5
                  ori          s4, s6, -401
                  ori          s4, s11, 545
                  andi         s0, a6, -1377
                  lui          s9, 810278
                  or           t0, t4, s4
                  srai         s8, s8, 6
                  bne          tp, ra, 1461f
                  slti         gp, s9, -1042
                  sub          t0, t0, t0
                  srai         s8, s4, 4
                  slt          s8, t2, s3
                  srl          s1, a2, t4
1461:             bltu         a2, s4, 1468f
                  beq          a4, sp, 1480f
                  bge          s11, a5, 1475f
                  addi         s11, a7, -2021
                  srai         t0, sp, 24
                  blt          t2, s5, 1468f
                  srli         s5, s6, 31
1468:             and          a3, s7, tp
                  sltiu        t0, a1, 1330
                  bltu         t5, ra, 1484f
                  bge          s11, a7, 1490f
                  lui          tp, 464315
                  beq          s9, t1, 1489f
                  slt          s10, a6, a0
1475:             sll          a0, t6, a5
                  sll          s0, a3, gp
                  sra          s5, s4, t1
                  sra          a2, a4, ra
                  addi         s4, t0, 1856
1480:             sub          s9, s11, tp
                  ori          a6, t6, -350
                  bgeu         s1, s11, 1495f
                  add          s7, a1, a5
1484:             xor          t6, t2, s11
                  blt          gp, zero, 1487f
                  addi         t6, t4, 728
1487:             sra          zero, t0, t3
                  sll          a6, t6, s7
1489:             sltiu        s5, a1, 1956
1490:             sll          a4, t1, s4
                  add          a3, s0, a2
                  sltu         a2, s10, s9
                  slt          a7, a5, zero
                  srai         a6, t3, 6
1495:             bgeu         s6, a4, 1501f
                  and          s5, s8, s5
                  srli         a0, a2, 31
                  slti         s0, a3, -210
                  sra          s10, t0, t6
                  ori          s10, a4, 1434
1501:             blt          ra, s0, 1511f
                  sra          a7, a3, t6
                  and          s10, ra, gp
                  xori         s5, t0, -1687
                  beq          s2, s9, 1518f
                  bltu         a5, sp, 1518f
                  sra          ra, s0, a1
                  srli         t3, a4, 25
                  slt          a3, a4, s8
                  bne          a4, sp, 1529f
1511:             srai         s9, zero, 2
                  xor          s7, a3, gp
                  sub          a2, s3, s3
                  auipc        a1, 703553
                  auipc        s10, 306961
                  auipc        s0, 335519
                  auipc        s5, 755252
1518:             and          s3, a7, tp
                  beq          s11, s1, 1538f
                  bge          ra, a4, 1522f
                  nop
1522:             sll          zero, t5, t6
                  sll          t5, s0, s0
                  or           t6, ra, s5
                  beq          a5, t5, 1535f
                  add          t3, a0, a2
                  and          a1, a5, t1
                  sll          s9, s6, a2
1529:             blt          t3, s8, 1533f
                  bne          s7, a5, 1542f
                  xor          s5, a4, a0
                  xor          s0, sp, s7
1533:             xor          a6, s3, t0
                  xor          s9, s8, s3
1535:             xor          s4, ra, sp
                  ori          gp, s7, -1463
                  srai         a5, tp, 4
1538:             srl          a6, s11, s2
                  add          a6, a0, s6
                  andi         a1, s4, -168
                  sltiu        a1, a6, 1509
1542:             xori         s6, t5, -1774
                  nop
                  sltu         a6, gp, s10
                  nop
                  bltu         s9, sp, 1552f
                  bgeu         a3, a3, 1563f
                  slt          s11, ra, a0
                  xor          tp, s7, s9
                  srai         s0, s9, 5
                  andi         a0, t0, 824
1552:             or           s4, t1, t5
                  srl          s4, a4, s5
                  xori         a5, s4, 320
                  bgeu         tp, ra, 1571f
                  and          tp, gp, t6
                  lui          a0, 108453
                  beq          a1, s4, 1565f
                  beq          s7, gp, 1565f
                  slti         zero, a4, 1065
                  slt          a5, s1, s7
                  auipc        a7, 1038175
1563:             xor          zero, t1, a0
                  nop
1565:             slti         s1, tp, 974
                  nop
                  sltu         a5, s1, sp
                  bgeu         s6, sp, 1578f
                  slli         t3, s6, 23
                  add          a6, s5, gp
1571:             srli         s3, a0, 11
                  sub          a4, s6, ra
                  sltiu        a3, sp, 1714
                  and          a4, s7, tp
                  slli         a6, t0, 4
                  or           s6, a5, zero
                  xor          gp, a3, tp
1578:             and          t6, ra, a4
                  sll          s11, t0, t0
                  srl          t5, zero, s2
                  nop
                  lui          s5, 1023923
                  sub          a3, s8, t5
                  ori          a0, s1, 1551
                  xor          gp, zero, a0
                  slti         a3, t2, 1557
                  or           s10, a3, a2
                  addi         a4, s6, -512
                  sra          ra, a5, t0
                  srai         t6, a1, 24
                  lui          t3, 486283
                  bltu         zero, a7, 1600f
                  lui          s6, 246577
                  srli         gp, s2, 24
                  srai         s3, a2, 23
                  lui          a3, 842548
                  srai         t3, s11, 2
                  sub          t6, s3, a1
                  bge          s7, s10, 1609f
1600:             lui          s3, 6940
                  bge          s9, s9, 1609f
                  addi         t0, sp, 1532
                  and          s11, t6, a2
                  auipc        t0, 37283
                  or           s8, s10, s11
                  sll          sp, t5, a2
                  srli         s1, zero, 21
                  xori         zero, a1, -220
1609:             xori         a7, s9, 1980
                  slt          s3, s0, tp
                  slti         t3, a0, -200
                  bgeu         s9, s4, 1613f
1613:             xor          t6, s5, a0
                  bgeu         s10, s8, 1616f
                  blt          s10, t3, 1617f
1616:             or           s0, s2, ra
1617:             srli         s3, s9, 3
                  sltiu        s5, a1, -979
                  add          s0, t0, t5
                  sltiu        s10, a1, -590
                  auipc        s5, 36220
                  sub          gp, s7, t3
                  xori         s0, s1, -1091
                  xori         a5, s8, -209
                  and          s3, s8, tp
                  xori         a4, s3, -1868
                  bne          a7, s6, 1629f
                  xor          s0, s0, s3
1629:             xori         s9, a3, 86
                  srl          s6, s4, s6
                  andi         s4, s4, 887
                  xori         s11, a0, -93
                  bgeu         ra, t6, 1641f
                  auipc        s8, 981014
                  slti         t5, s6, -679
                  bge          s3, s6, 1648f
                  sra          t0, s6, s3
                  bne          s11, a7, 1654f
                  bltu         t4, t2, 1653f
                  bgeu         sp, t6, 1644f
1641:             nop
                  slti         a0, t3, 1996
                  slli         s10, s4, 0
1644:             blt          s6, t6, 1651f
                  nop
                  sub          a2, zero, t5
                  slt          s4, t3, t0
1648:             xori         s8, a1, -1840
                  slt          t0, a3, s11
                  xori         t5, t0, 618
1651:             bltu         s11, s0, 1661f
                  auipc        a5, 151347
1653:             slt          s6, t4, s2
1654:             or           ra, t4, ra
                  auipc        a4, 836132
                  bne          sp, gp, 1668f
                  blt          a4, sp, 1675f
                  sltu         t6, t3, s0
                  nop
                  sub          a6, a4, a3
1661:             srl          zero, a6, s10
                  slt          s1, t1, t1
                  lui          a6, 68095
                  lui          s4, 55261
                  bne          tp, ra, 1671f
                  addi         t2, t6, -725
                  slt          zero, t1, a4
1668:             slli         a5, t6, 6
                  xor          t2, ra, s5
                  slti         s3, tp, 1180
1671:             slti         a0, a6, -1936
                  bne          a0, a0, 1688f
                  sltu         a1, tp, a5
                  srl          s10, s1, a7
1675:             srli         a2, tp, 12
                  ori          t0, t6, 109
                  bge          sp, a6, 1685f
                  sltu         zero, sp, t3
                  bge          t2, s7, 1689f
                  sltiu        s6, t5, -1192
                  beq          a3, t4, 1700f
                  sll          a7, a1, sp
                  bge          a0, s1, 1702f
                  ori          s7, a5, 1177
1685:             xori         ra, t5, 1953
                  nop
                  slti         s5, a7, -1118
1688:             nop
1689:             blt          s11, s6, 1699f
                  srai         a0, s0, 12
                  and          s6, tp, ra
                  and          tp, s10, a4
                  nop
                  xori         t2, tp, 1167
                  sub          a5, ra, t1
                  slti         a3, s6, -1660
                  lui          a5, 660473
                  xor          t3, t4, a2
1699:             slt          s4, a2, s4
1700:             sub          s8, a3, a5
                  slli         s1, t0, 16
1702:             sll          s5, s4, t3
                  sub          gp, ra, a4
                  srl          t5, s10, a4
                  bgeu         t5, s2, 1724f
                  beq          s5, zero, 1719f
                  add          s5, s1, s1
                  addi         a7, a3, -186
                  bltu         t5, s6, 1725f
                  slti         s1, a6, -854
                  addi         s9, zero, 1500
                  sll          a0, s4, a4
                  sll          s9, s8, t4
                  addi         t0, zero, 728
                  sltiu        s0, sp, -1212
                  sub          t6, a3, t0
                  slt          s0, a4, t1
                  srli         s3, a2, 0
1719:             beq          a5, s6, 1726f
                  slli         s8, a0, 10
                  srai         zero, s2, 10
                  xor          s1, s4, gp
                  bge          s11, a0, 1729f
1724:             bltu         t1, s8, 1725f
1725:             slli         gp, t0, 1
1726:             xor          a0, a2, ra
                  sltiu        a2, t3, -458
                  sub          t6, s5, s0
1729:             lui          s11, 458383
                  addi         s11, s8, -638
                  bne          s9, a2, 1741f
                  bltu         sp, t2, 1745f
                  slti         a0, s11, -609
                  lui          s3, 442513
                  sltiu        s7, s0, -854
                  bne          s6, s8, 1742f
                  xori         t0, s6, 900
                  slti         sp, a1, 1688
                  bne          s8, a1, 1745f
                  auipc        a1, 202397
1741:             and          a7, t3, s3
1742:             beq          s1, s9, 1754f
                  auipc        a1, 348275
                  blt          tp, s4, 1751f
1745:             srli         t3, zero, 18
                  sll          a7, s4, sp
                  xor          s10, a1, s10
                  auipc        t2, 303686
                  lui          a1, 1006895
                  andi         a1, t0, 881
1751:             srl          ra, s10, s3
                  auipc        a7, 369314
                  bge          a5, t2, 1765f
main_14:          jal          s8, 13f
0:                jal          ra, 4f
1:                jal          t3, 16f
2:                jal          a0, 1b
3:                jal          s9, 6f
4:                jal          ra, 7f
5:                jal          ra, 19f
6:                jal          t0, 20f
7:                jal          sp, 3b
8:                jal          ra, 22f
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          ra, 18f
12:               jal          ra, 10b
13:               jal          gp, 5b
14:               jal          ra, 8b
15:               jal          gp, 23f
16:               jal          t5, 21f
17:               jal          ra, 9b
18:               jal          ra, 2b
19:               jal          ra, 0b
20:               jal          s10, 12b
21:               jal          ra, 17b
22:               jal          ra, 15b
23:               add          a2, s9, s11
1754:             sra          t6, t6, zero
                  sll          a0, t5, t1
                  andi         t3, s4, 709
                  xori         a0, sp, -1101
                  sub          a2, t2, s6
                  slti         s3, a7, 1540
                  sll          s9, s0, a5
                  srl          a6, s11, a5
                  srl          s9, s10, s10
                  lui          gp, 387294
                  add          t5, sp, t5
1765:             xor          a4, s9, s0
                  nop
                  slt          zero, s5, t4
                  nop
                  lui          s10, 18853
                  bge          a3, tp, 1780f
                  and          a6, sp, a1
                  add          s5, a0, ra
                  sltiu        s4, s1, -423
                  srli         t6, s4, 20
                  addi         a5, s6, -1187
                  sra          a2, s3, a3
                  xori         sp, t4, -1376
                  sltu         t6, t6, a7
                  and          s0, ra, s7
1780:             bne          a5, s4, 1782f
                  srai         a2, s0, 14
1782:             bgeu         gp, sp, 1800f
                  sra          s0, s0, sp
                  xori         sp, t3, 157
                  slti         s8, a7, 1665
                  xor          s1, s5, a6
                  ori          a6, s6, 1032
                  nop
                  slli         s10, s5, 25
                  xori         s4, s0, -2040
                  bge          a5, t0, 1805f
                  auipc        a1, 1009853
                  nop
                  blt          s0, a7, 1813f
                  addi         s11, gp, -330
                  add          t2, t4, s6
                  ori          s10, s8, 1293
                  addi         s4, s11, 126
                  srai         s10, a5, 15
1800:             bltu         t4, s6, 1810f
                  beq          s9, a1, 1807f
                  ori          zero, gp, -1806
                  srli         s0, s3, 2
                  sub          a2, s6, s4
1805:             andi         t5, s6, 4
                  auipc        s3, 64175
1807:             xori         s3, t6, 332
                  auipc        s6, 66821
                  sltiu        t3, a5, -1239
1810:             sltiu        a1, a4, 1153
                  beq          a7, s8, 1819f
                  slti         sp, s5, 901
1813:             sra          s5, t0, t4
                  andi         a1, t3, -643
                  sltiu        a2, s3, -698
                  bne          s6, a1, 1818f
                  sra          t0, zero, zero
1818:             and          s1, a5, a2
1819:             addi         s6, s9, 502
                  ori          t5, s11, 2035
                  add          tp, s7, zero
                  srl          sp, s2, s8
                  and          t3, zero, zero
                  andi         t5, ra, -1023
                  ori          s11, a1, -1920
                  andi         sp, s10, -112
                  lui          s11, 233655
                  beq          a1, s5, 1829f
1829:             beq          s7, a5, 1842f
                  sltu         s5, s2, a0
                  ori          a6, a3, -1062
                  blt          a6, t0, 1851f
                  bgeu         t5, gp, 1849f
                  auipc        a0, 987342
                  xor          t5, s3, a7
                  slli         s3, a3, 31
                  xori         a5, s3, 1509
                  slli         tp, t4, 12
                  blt          a6, a5, 1851f
                  srl          a1, s6, sp
                  bltu         t4, s10, 1848f
1842:             srli         gp, t1, 24
                  or           s9, t1, gp
                  srli         s1, s11, 29
                  lui          ra, 820566
                  srai         s11, gp, 5
                  blt          a6, a7, 1860f
1848:             sll          s3, t3, a5
1849:             bge          tp, gp, 1855f
                  addi         s1, s0, 1692
1851:             srl          a4, s10, s7
                  slti         a3, t4, -628
                  addi         s0, s6, 138
                  sra          a3, t1, tp
1855:             addi         t0, zero, 1733
                  slt          s9, s11, zero
                  beq          s7, s4, 1863f
                  auipc        gp, 927603
                  nop
1860:             sub          s3, a6, s3
                  and          s1, s1, s5
                  slli         s8, s1, 17
1863:             sltu         s8, a3, ra
                  sltu         s5, a7, a6
                  bltu         a4, t2, 1875f
                  beq          s2, a6, 1868f
                  sra          t3, s4, a6
1868:             add          s6, s0, s6
                  bgeu         a0, gp, 1885f
                  addi         s8, sp, 2045
                  xor          a3, s0, t0
                  auipc        t0, 800303
                  nop
                  srl          gp, s11, s4
1875:             blt          sp, t1, 1879f
                  andi         s4, a5, 1101
                  addi         a4, t1, 1864
                  addi         a6, zero, 97
1879:             blt          s3, ra, 1885f
                  bne          a4, s1, 1899f
                  xor          ra, tp, a5
                  sltu         a3, a6, zero
                  srai         ra, a2, 11
                  add          s0, a7, a1
1885:             bne          s3, gp, 1897f
                  addi         a6, a2, -322
                  bltu         s7, a6, 1895f
                  sll          a4, s7, s9
                  slt          s3, s2, t6
                  bge          s8, s10, 1906f
                  sll          s3, tp, t5
                  sll          a0, s10, a4
                  sltiu        s3, t0, -847
                  add          s9, s9, s0
1895:             bgeu         a3, s10, 1905f
                  xor          s1, s1, s6
1897:             addi         a6, a7, 393
                  beq          s4, t6, 1914f
1899:             beq          s4, s0, 1909f
                  nop
                  sub          gp, a0, a3
                  sll          tp, ra, s3
                  sll          a4, t3, a4
                  xori         gp, a1, -202
1905:             andi         sp, t0, 1025
1906:             slt          a6, s3, zero
                  xor          s7, gp, a7
                  or           a5, s5, a6
1909:             addi         ra, s4, -834
                  sltiu        s5, s10, 1113
                  beq          s1, s4, 1923f
                  sltu         a6, a5, a1
                  addi         s10, a2, 1869
1914:             sltu         a7, t2, s10
                  or           a3, s5, s3
                  xor          tp, s2, t3
                  slli         s6, t4, 19
                  sltu         s3, t2, t1
                  blt          s1, a1, 1932f
                  addi         t6, a7, -1786
                  blt          s9, a2, 1940f
                  srli         a6, s11, 14
1923:             slt          t6, s0, zero
                  nop
                  nop
                  ori          s4, a6, 121
                  auipc        tp, 364579
                  bge          t3, a1, 1938f
                  slt          a5, t6, t1
                  addi         t5, ra, -870
                  xori         sp, s10, 468
1932:             slli         a5, zero, 18
                  sub          tp, a0, a3
                  sltiu        s1, a1, 970
                  slt          a5, s10, a2
                  slt          zero, zero, s1
                  and          s11, s3, t1
1938:             sra          a5, s5, s3
                  blt          tp, gp, 1949f
1940:             xor          a4, s2, t2
                  slt          s11, s5, s4
                  sltiu        s0, s7, -255
                  bltu         ra, s8, 1956f
                  slli         a7, a2, 19
                  sltu         t3, ra, s2
                  bge          s3, s3, 1954f
                  blt          sp, t1, 1953f
                  or           s4, ra, a4
1949:             srl          t0, a2, s7
                  beq          s6, s9, 1960f
                  sub          t2, t5, s0
                  add          ra, a6, t2
1953:             srl          ra, gp, t5
1954:             bge          s11, a6, 1968f
                  sub          s10, a1, s5
1956:             or           a4, t2, a5
                  and          t0, t3, s1
                  bltu         a3, s4, 1960f
                  blt          s5, a3, 1975f
1960:             sub          s11, ra, a0
                  bne          t6, a1, 1968f
                  add          s4, s9, s6
                  xor          zero, zero, t0
                  auipc        s1, 733724
                  bge          a7, s2, 1971f
                  andi         gp, t0, 940
                  srl          a4, s2, tp
1968:             beq          s3, s5, 1970f
                  nop
1970:             bgeu         s0, s11, 1989f
1971:             bne          s8, s9, 1987f
                  bltu         t0, t1, 1984f
                  srl          a3, tp, a5
                  sra          s7, s10, a6
1975:             blt          t6, ra, 1993f
                  xori         a3, s6, 302
                  andi         s11, s9, -597
                  sub          a4, a3, tp
                  sll          t2, s11, s0
                  slli         t6, s7, 30
                  bne          s3, a7, 1988f
                  andi         t3, a0, 166
                  sltu         t3, s5, a1
1984:             xor          s11, a4, tp
                  srli         zero, zero, 5
                  bne          a1, sp, 1994f
1987:             and          s10, s5, s0
1988:             slt          a5, s9, t5
1989:             bltu         t1, ra, 1991f
                  srl          a6, t4, ra
1991:             ori          a1, a1, 1720
                  andi         a4, t5, -1102
1993:             or           t2, t1, gp
1994:             bgeu         t3, t4, 2000f
                  xori         s4, ra, 1038
                  sub          s7, s1, t2
                  ori          t5, t5, -624
                  bne          s5, sp, 2017f
                  bltu         t2, a0, 2000f
2000:             bgeu         t3, a6, 2004f
                  xor          s0, a1, t5
                  add          s9, zero, t5
                  slti         sp, a2, -1403
2004:             addi         s3, s6, -864
                  slt          t5, a6, a3
                  slli         t5, a1, 23
                  nop
                  slli         zero, s10, 13
                  sltiu        a6, zero, 1545
                  andi         a6, a6, -1299
                  ori          a6, s9, -758
                  auipc        zero, 395901
                  auipc        gp, 634920
                  nop
                  ori          s0, t3, 287
                  slli         s3, s1, 23
2017:             bgeu         s4, s9, 2029f
                  sltiu        ra, s6, -185
                  srli         s1, s0, 4
                  sub          t0, a2, t0
                  srl          t5, a3, a1
                  slt          a1, t2, a7
                  and          a7, gp, zero
                  sra          a5, a3, s0
                  srai         s10, s4, 22
                  slli         s6, s6, 24
                  addi         s10, t4, 193
                  srl          a3, s1, s4
2029:             andi         a7, t1, -574
                  bltu         zero, a1, 2036f
                  srai         t0, s0, 21
                  beq          t4, s2, 2038f
                  slt          a3, s7, a1
                  xori         s5, a5, 672
                  bge          s0, gp, 2054f
2036:             blt          t2, s0, 2049f
                  srl          s5, s10, a6
2038:             sltu         t3, s9, a1
                  or           s10, sp, s4
                  sltiu        ra, t2, 789
                  bne          s2, t2, 2048f
                  andi         a7, a1, -2036
                  lui          a2, 317431
                  beq          t3, tp, 2051f
                  sra          a6, s10, a7
                  slti         t5, t6, 210
                  slli         s3, s1, 28
2048:             sub          a5, zero, sp
2049:             sll          t5, s7, s5
                  auipc        t5, 181459
2051:             beq          a2, a7, 2063f
                  srl          tp, s2, s0
                  add          s7, a2, a7
2054:             blt          t5, a3, 2064f
                  add          t6, a3, t2
                  sra          a5, a7, a7
                  sltiu        s8, s11, -214
                  sub          s5, sp, s11
                  sra          tp, t0, a4
                  ori          t3, s2, 43
                  sub          s7, t3, s0
                  or           s4, s2, s0
2063:             sltiu        ra, s10, -356
2064:             andi         a3, s10, -1931
                  blt          s2, t3, 2084f
                  auipc        s4, 976449
                  andi         a0, tp, 1612
                  xori         t6, t6, -317
                  andi         ra, s9, -546
                  nop
                  bne          a2, zero, 2081f
                  slli         s4, s4, 16
                  srli         a0, s10, 6
                  or           a1, s3, t5
                  beq          gp, zero, 2091f
                  slli         a1, zero, 17
                  slti         a1, t3, 1481
                  srai         s4, s9, 29
                  addi         s0, zero, 376
                  sltiu        s6, a6, -997
2081:             bltu         s10, ra, 2087f
                  blt          t4, t1, 2088f
                  addi         t6, a5, -1226
2084:             slli         s8, a1, 12
                  sll          a2, t5, t0
                  sra          s6, s11, a4
2087:             sltu         a4, t0, a1
2088:             srai         s9, a7, 29
                  bltu         s1, t1, 2091f
                  bge          s2, tp, 2094f
2091:             sra          s8, t5, zero
                  sltiu        s1, a7, 1670
                  slti         a7, s9, -611
2094:             slti         s8, a5, -1472
                  add          s1, s6, s6
                  xor          s4, s5, s2
                  nop
                  xor          s3, gp, s7
                  addi         a5, s9, 1888
                  xori         gp, s10, 1627
                  and          s9, a0, s9
                  nop
                  srl          t5, a0, s0
                  sra          s5, a0, s11
                  bgeu         a2, s5, 2113f
                  srli         t3, s3, 14
                  bgeu         a5, a7, 2109f
                  and          t0, s2, a3
2109:             srli         t2, t0, 24
                  srai         s1, s9, 30
                  srli         ra, s4, 8
                  sra          a0, s4, ra
2113:             slti         s0, a4, -657
                  andi         s6, s11, 2011
                  addi         t6, a0, -35
                  bne          s3, ra, 2128f
                  blt          s0, a1, 2135f
                  sltu         zero, s1, t3
                  add          a0, s3, tp
                  slli         s11, s11, 24
                  slti         a1, a4, 795
                  srli         s5, s5, 19
                  srli         a4, t1, 7
                  lui          gp, 847313
                  blt          ra, s3, 2135f
                  sll          s5, a5, a6
                  sltu         a3, gp, s9
2128:             sra          s9, s0, sp
                  bne          sp, gp, 2131f
                  lui          t2, 447924
2131:             addi         s0, a2, -1739
                  add          a0, gp, s3
                  beq          a7, t2, 2134f
2134:             srl          a2, t2, s5
2135:             bltu         t5, s10, 2145f
                  sra          s11, t4, t1
                  xor          a4, gp, s7
                  srli         sp, zero, 28
                  add          s9, gp, s6
                  or           a0, t3, a5
                  srl          a0, s8, s3
                  add          t3, s2, s10
                  addi         a3, s2, 1312
                  addi         zero, a3, -1925
2145:             sltiu        a2, s0, 1701
                  bgeu         t2, t3, 2158f
                  add          tp, s8, t2
                  and          zero, s3, s6
                  or           s7, a0, a1
                  lui          s9, 344979
                  and          a7, t4, a7
                  sub          t0, s11, s7
                  blt          s10, s5, 2161f
                  bne          a4, t3, 2169f
                  auipc        a7, 261359
                  nop
                  addi         t6, a0, 1764
2158:             sra          a4, s7, s4
                  add          sp, s0, s0
                  srai         t5, t2, 17
2161:             add          s6, t5, s0
                  srl          sp, a6, t6
                  srli         t5, a4, 2
                  slli         s10, s0, 22
                  xori         a6, s2, 468
                  sltiu        t3, t4, -1147
                  auipc        t6, 101576
                  sltu         t2, s10, s3
2169:             addi         s5, a6, 1255
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            beq          s3, t0, sub_2_stack_p
                  slli         a0, s11, 26
sub_2_stack_p:    addi         s2, s2, -32
                  or           a6, t2, a4
                  add          ra, tp, s3
                  sw           s8, 4(s2)
                  addi         s1, s11, -521
                  add          a6, a4, s3
                  sll          s3, a5, zero
                  sra          t3, t0, t0
                  nop
                  andi         t5, t6, 2024
                  addi         s8, t2, -1751
                  slli         s6, a7, 12
                  nop
sub_2_j5:         jal          s8, sub_4 #jump sub_2 -> sub_4
                  andi         s10, s4, -517
                  sltu         t3, ra, t6
                  xor          s5, t3, sp
                  la           t5, sub_3
                  lui          a1, 761671
                  srli         a4, s11, 20
                  addi         t5, t5, 230
                  auipc        t0, 276813
                  lui          s10, 19663
                  addi         a5, a2, -1052
sub_2_j6:         jalr         s8, t5, -229 #jump sub_2 -> sub_3
sub_2_0:          jal          s8, 19f
0:                jal          ra, 8f
1:                jal          ra, 18f
2:                jal          ra, 7f
3:                jal          a3, 9f
4:                jal          ra, 13f
5:                jal          t6, 24f
6:                jal          sp, 2b
7:                jal          ra, 4b
8:                jal          ra, 27f
9:                jal          ra, 15f
10:               jal          ra, 14f
11:               jal          ra, 0b
12:               jal          ra, 11b
13:               jal          ra, 25f
14:               jal          ra, 23f
15:               jal          s4, 29f
16:               jal          sp, 21f
17:               jal          ra, 6b
18:               jal          tp, 17b
19:               jal          ra, 26f
20:               jal          tp, 5b
21:               jal          ra, 22f
22:               jal          ra, 1b
23:               jal          ra, 16b
24:               jal          ra, 28f
25:               jal          ra, 3b
26:               jal          ra, 12b
27:               jal          tp, 20b
28:               jal          ra, 10b
29:               srl          a0, a4, s3
sub_2_1:          jal          s8, 8f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          ra, 1b
3:                jal          ra, 13f
4:                jal          ra, 7f
5:                jal          ra, 4b
6:                jal          ra, 9f
7:                jal          ra, 12f
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          ra, 15f
11:               jal          ra, 14f
12:               jal          ra, 10b
13:               jal          ra, 11b
14:               jal          s4, 0b
15:               slli         s9, s6, 13
                  sub          t6, s1, a7
                  srl          zero, tp, a6
                  add          s8, s9, s10
                  slt          s11, ra, t6
                  sltiu        sp, a0, 1693
                  slt          s0, t6, zero
                  bne          a6, tp, 23f
                  slt          t0, t4, t1
                  beq          s5, s11, 15f
                  auipc        s10, 751604
                  bge          a1, a2, 20f
                  auipc        a1, 263938
                  blt          s4, s4, 26f
                  xor          ra, s3, s1
                  beq          a6, s7, 16f
15:               sll          a2, s9, a3
16:               beq          t2, a4, 24f
                  add          s7, t3, a4
                  sltiu        sp, t4, -323
                  nop
20:               lui          s4, 501339
                  bge          a7, s7, 31f
                  bgeu         t0, s4, 27f
23:               beq          t0, t4, 32f
24:               bltu         s9, s1, 35f
                  ori          tp, gp, -1633
26:               nop
27:               addi         s3, a5, 1925
                  srli         s8, t3, 19
                  blt          t1, s9, 33f
                  slt          t0, a1, t4
31:               sub          a0, s11, t6
32:               sltu         gp, a0, s5
33:               blt          s1, t2, 49f
                  ori          t3, s7, 1100
35:               xor          a3, a1, ra
                  bgeu         a3, s9, 51f
                  lui          a0, 531382
                  slt          s5, t3, s1
                  ori          s8, t2, 479
                  bltu         s10, a4, 59f
                  slli         a1, a3, 18
                  ori          gp, sp, -1466
                  slli         a3, gp, 20
                  bltu         s2, a3, 59f
                  auipc        ra, 273993
                  bge          s5, s10, 60f
                  slt          s11, s6, a7
                  add          ra, s7, gp
49:               and          sp, s4, gp
                  add          a7, a6, gp
51:               bge          a0, s5, 69f
                  xor          s3, t5, t2
                  sltu         s11, s8, s10
                  ori          a6, t2, -1726
                  xori         s11, s7, -291
                  bltu         s7, a7, 63f
                  addi         a6, s8, -1688
                  blt          s2, sp, 74f
59:               srai         a2, a0, 25
60:               sll          sp, s5, t5
                  xori         gp, a6, 1533
                  srl          s0, s9, s4
63:               beq          s0, a7, 83f
                  bltu         s9, a6, 70f
                  and          s4, t5, a5
                  bne          s10, s8, 80f
                  srli         t6, t5, 20
                  addi         ra, t6, 934
69:               bne          a7, a3, 82f
70:               nop
                  xori         sp, a2, -698
                  blt          gp, t3, 78f
                  bge          t0, a5, 79f
74:               or           a5, t2, a5
                  add          s0, t6, a3
                  andi         t6, s7, -546
                  bgeu         t2, zero, 97f
78:               auipc        a3, 248090
79:               or           a7, a3, a3
80:               slti         s3, tp, 1305
                  andi         gp, a5, -813
82:               xor          s8, s1, a0
83:               bgeu         s3, a5, 99f
                  slti         zero, t5, 1529
                  add          s11, ra, t0
                  or           gp, t2, s5
                  sub          s4, t5, a5
                  blt          a1, sp, 105f
                  bltu         t3, gp, 102f
                  and          s9, t6, s2
                  sub          s11, a7, t5
                  nop
                  add          ra, t5, s6
                  bne          a6, s7, 107f
                  bne          s11, a1, 101f
                  addi         t2, s11, 1021
97:               slt          t2, s8, ra
                  bge          t0, t0, 111f
99:               srl          s11, a6, t2
                  xor          a6, t3, s11
101:              srli         s0, s6, 18
102:              sltu         t2, ra, t5
                  ori          sp, t6, -973
                  bltu         s6, s2, 111f
105:              slli         s7, a2, 26
                  beq          sp, s6, 111f
107:              xori         s4, t4, -1395
                  bgeu         a0, s0, 111f
                  sltiu        s7, t3, 1267
                  beq          s11, s10, 111f
111:              srai         s9, s8, 12
                  slli         t2, zero, 23
                  lw           s8, 4(s2)
                  addi         s2, s2, 32
                  slli         s11, a0, 10
                  andi         s9, t5, -2004
                  slti         s11, t3, 1811
                  ori          t6, t5, 635
                  or           ra, s4, a5
                  auipc        s9, 962669
                  add          s4, t1, s4
197:              addi x9, x24, 0
197:              jalr x9, x9, 0
sub_1:            slli         a5, s8, 19
                  slli         s6, t1, 9
                  sltiu        t0, s6, 633
                  sra          t3, tp, s4
                  andi         a2, a4, 1727
                  addi         s2, s2, -36
                  and          a3, a4, t1
                  sw           s8, 4(s2)
                  xori         s10, ra, -265
sub_1_1:          jal          s8, 12f
0:                jal          a0, 5f
1:                jal          ra, 10f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          ra, 7f
5:                jal          tp, 9f
6:                jal          sp, 11f
7:                jal          ra, 3b
8:                jal          ra, 13f
9:                jal          s8, 6b
10:               jal          gp, 4b
11:               jal          ra, 2b
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               xori         s5, t0, -545
sub_1_8:          jal          s8, 17f
0:                jal          ra, 3f
1:                jal          s5, 21f
2:                jal          s7, 19f
3:                jal          ra, 23f
4:                jal          ra, 5f
5:                jal          t3, 2b
6:                jal          a0, 13f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          a4, 1b
10:               jal          ra, 8b
11:               jal          a0, 15f
12:               jal          ra, 11b
13:               jal          ra, 4b
14:               jal          t3, 0b
15:               jal          s0, 20f
16:               jal          tp, 24f
17:               jal          ra, 14b
18:               jal          gp, 9b
19:               jal          ra, 30f
20:               jal          ra, 26f
21:               jal          ra, 7b
22:               jal          s9, 25f
23:               jal          ra, 27f
24:               jal          ra, 28f
25:               jal          a5, 29f
26:               jal          s4, 10b
27:               jal          ra, 22b
28:               jal          ra, 18b
29:               jal          tp, 16b
30:               and          a3, s3, t4
sub_1_6:          jal          s8, 5f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          t5, 9f
6:                jal          t0, 1b
7:                jal          ra, 11f
8:                jal          ra, 7b
9:                jal          tp, 4b
10:               jal          ra, 0b
11:               sra          s11, s5, a7
sub_1_9:          jal          s8, 18f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          ra, 17f
6:                jal          ra, 22f
7:                jal          ra, 13f
8:                jal          ra, 26f
9:                jal          a4, 27f
10:               jal          sp, 15f
11:               jal          gp, 23f
12:               jal          ra, 29f
13:               jal          ra, 21f
14:               jal          s8, 19f
15:               jal          ra, 6b
16:               jal          ra, 25f
17:               jal          s3, 1b
18:               jal          s5, 10b
19:               jal          ra, 24f
20:               jal          ra, 12b
21:               jal          ra, 28f
22:               jal          ra, 7b
23:               jal          ra, 14b
24:               jal          tp, 2b
25:               jal          t2, 8b
26:               jal          s8, 20b
27:               jal          ra, 16b
28:               jal          t6, 11b
29:               srl          s0, s11, zero
sub_1_2:          jal          s8, 7f
0:                jal          sp, 5f
1:                jal          a4, 12f
2:                jal          ra, 19f
3:                jal          ra, 20f
4:                jal          ra, 24f
5:                jal          ra, 9f
6:                jal          t0, 1b
7:                jal          ra, 10f
8:                jal          ra, 17f
9:                jal          ra, 11f
10:               jal          s7, 25f
11:               jal          ra, 15f
12:               jal          ra, 26f
13:               jal          a0, 2b
14:               jal          ra, 8b
15:               jal          ra, 18f
16:               jal          ra, 14b
17:               jal          ra, 21f
18:               jal          s3, 16b
19:               jal          a3, 4b
20:               jal          ra, 6b
21:               jal          gp, 3b
22:               jal          ra, 23f
23:               jal          ra, 0b
24:               jal          s7, 22b
25:               jal          ra, 13b
26:               xori         s6, s10, 1185
sub_1_7:          jal          s8, 4f
0:                jal          ra, 14f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          ra, 15f
5:                jal          ra, 7f
6:                jal          tp, 13f
7:                jal          ra, 6b
8:                jal          ra, 18f
9:                jal          ra, 17f
10:               jal          ra, 11f
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          ra, 16f
14:               jal          ra, 2b
15:               jal          ra, 1b
16:               jal          t2, 3b
17:               jal          t6, 10b
18:               slt          gp, t4, zero
sub_1_4:          jal          s8, 8f
0:                jal          a1, 22f
1:                jal          s0, 0b
2:                jal          ra, 1b
3:                jal          ra, 10f
4:                jal          ra, 20f
5:                jal          ra, 11f
6:                jal          ra, 21f
7:                jal          ra, 19f
8:                jal          gp, 12f
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          a5, 17f
12:               jal          t3, 18f
13:               jal          sp, 4b
14:               jal          gp, 13b
15:               jal          ra, 5b
16:               jal          ra, 9b
17:               jal          a5, 14b
18:               jal          a3, 6b
19:               jal          ra, 2b
20:               jal          ra, 16b
21:               jal          ra, 15b
22:               andi         a4, a2, 547
sub_1_5:          jal          s8, 1f
0:                jal          t5, 17f
1:                jal          t0, 3f
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          tp, 0b
7:                jal          ra, 19f
8:                jal          ra, 10f
9:                jal          a0, 11f
10:               jal          ra, 25f
11:               jal          ra, 20f
12:               jal          a4, 5b
13:               jal          ra, 6b
14:               jal          ra, 22f
15:               jal          ra, 16f
16:               jal          ra, 13b
17:               jal          ra, 21f
18:               jal          a1, 4b
19:               jal          ra, 15b
20:               jal          ra, 23f
21:               jal          t2, 26f
22:               jal          ra, 24f
23:               jal          sp, 14b
24:               jal          a2, 18b
25:               jal          s8, 7b
26:               xori         a1, t4, -1517
                  xor          a5, t2, s11
                  ori          s3, t3, 1509
                  slli         s10, a1, 27
                  ori          s11, s5, -208
                  xori         s11, sp, -203
                  sltu         s4, gp, t5
                  ori          s10, a0, -1008
                  add          ra, a4, t1
                  nop
                  addi         a2, sp, -41
                  bltu         ra, a4, 21f
                  blt          s2, s2, 30f
                  srai         s5, s0, 5
                  bge          zero, a2, 27f
                  sltiu        s1, a7, 1025
                  xor          t6, a0, ra
                  blt          s11, a3, 36f
                  bgeu         sp, t6, 18f
18:               srl          sp, s8, a3
                  bltu         s5, s5, 25f
                  and          ra, a1, t0
21:               xor          sp, s0, ra
                  sub          s11, s0, s11
                  blt          s6, a4, 36f
                  lui          t5, 1025532
25:               srai         s8, t5, 19
                  lui          a1, 397155
27:               bne          s8, s5, 47f
                  beq          t2, s1, 48f
                  xor          t2, s2, s8
30:               srai         s11, a1, 3
                  bge          t3, tp, 37f
                  beq          s0, s11, 41f
                  xori         s0, t3, -761
                  auipc        s4, 410098
                  and          s10, t2, s0
36:               beq          s0, t4, 37f
37:               sltu         s0, a2, s11
                  sltu         s9, t0, t3
                  auipc        t5, 243429
                  add          s6, s1, t6
41:               addi         s9, s9, 1095
                  slti         s0, a3, -253
                  sub          t3, a6, s0
                  xori         ra, s0, -1187
                  srli         s5, s1, 5
                  xor          a0, t1, s3
47:               nop
48:               nop
                  addi         sp, zero, -1029
                  bgeu         sp, a6, 57f
                  srl          t6, s10, s3
                  auipc        s5, 985545
                  slt          sp, s5, tp
                  sltiu        s9, s9, -959
                  sub          s0, s9, s2
                  beq          ra, a5, 61f
57:               xori         gp, s3, -1249
                  sltiu        s8, a1, -272
                  bgeu         t2, a6, 73f
                  srl          ra, t6, t3
61:               srl          s10, a0, s8
                  sub          t3, t6, t5
                  andi         t0, a7, -1466
                  ori          t6, t1, -1932
                  auipc        s3, 906729
                  and          s10, s2, s1
                  xor          gp, s8, t2
                  slti         s0, t6, 897
                  nop
                  slti         t0, a6, -424
                  bgeu         s6, t5, 80f
                  bge          s1, gp, 91f
73:               sra          t2, s0, a6
                  srl          t6, s7, a1
                  beq          t0, a5, 94f
                  slt          t2, t0, s9
                  srli         a3, gp, 14
                  xori         s11, a2, 1836
                  bltu         a3, s4, 84f
80:               srl          s5, s4, s9
                  nop
                  xor          s7, s5, s8
                  beq          s8, t5, 87f
84:               bne          sp, a4, 86f
                  beq          ra, t1, 88f
86:               xori         t3, t2, 994
87:               addi         a1, a4, 1194
88:               bgeu         a2, a5, 101f
                  blt          a3, a7, 109f
                  srai         a3, t0, 16
91:               addi         t2, t2, 1803
                  bne          s8, s9, 99f
                  slli         s4, zero, 17
94:               srli         t5, s7, 7
                  xori         sp, sp, 1855
                  xori         s1, tp, -1731
                  bgeu         a2, zero, 116f
                  sub          ra, tp, a7
99:               beq          a7, t2, 113f
                  sll          zero, ra, t5
101:              addi         zero, s8, -199
                  slli         a4, t5, 15
                  ori          s11, t5, 320
                  sra          s6, a0, ra
                  bne          t4, t3, 113f
                  sltu         t2, s6, a4
                  add          s9, s6, ra
                  nop
109:              bgeu         s6, s2, 112f
                  bge          s4, t6, 124f
                  auipc        a4, 287265
112:              addi         zero, sp, 1646
113:              sltiu        t6, s5, 1725
                  bgeu         t3, t6, 119f
                  xor          t2, a2, zero
116:              and          s11, s3, s1
                  ori          s5, s10, 1533
                  bne          s6, s3, 132f
119:              srl          a4, s9, a0
                  bne          a6, a1, 140f
                  xori         s7, t6, -346
                  sltiu        a2, a6, 219
                  ori          s7, s6, -1622
124:              xori         a6, a7, -1928
                  sub          t0, s1, s3
                  blt          t5, s10, 137f
                  sltiu        a1, a4, -870
                  bge          zero, zero, 147f
                  and          tp, a3, s2
                  sub          s1, s2, a4
                  blt          sp, a5, 151f
132:              sub          s4, sp, s8
                  addi         ra, zero, -643
                  slli         ra, s5, 11
                  slti         s10, a6, -845
                  slli         s0, s0, 30
137:              srli         s6, t5, 6
                  bge          s9, sp, 152f
                  xori         a3, a5, 430
140:              bge          t3, s0, 159f
                  sll          s9, s1, t1
                  or           ra, a5, sp
                  slti         t2, a3, 772
                  sra          s1, tp, ra
                  slti         s4, a0, 1007
                  lui          s3, 583597
147:              srai         a0, a5, 28
                  sltiu        t5, a3, -1585
                  xori         t6, ra, 1015
                  slti         sp, s8, 1701
151:              srl          s5, ra, s4
152:              beq          s5, s7, 159f
                  bltu         s8, t3, 162f
                  sra          s0, a2, a4
                  sll          s3, t6, a6
                  sll          s10, t2, a0
                  bge          t3, s1, 177f
                  blt          s9, s5, 177f
159:              ori          gp, t3, -1949
                  sll          ra, s7, s0
                  beq          zero, s1, 164f
162:              slt          t0, a3, a1
                  slli         tp, t4, 3
164:              srli         t6, a6, 15
                  andi         s9, s1, 1610
                  nop
                  bltu         a7, t0, 181f
                  lui          a2, 249443
                  addi         s11, s5, -767
                  bge          gp, zero, 177f
                  sra          s4, s5, s0
                  sltiu        s8, tp, -568
                  or           s10, a7, s7
                  add          t5, s7, s8
                  slti         ra, sp, -407
                  or           a2, ra, gp
177:              beq          a0, s7, 180f
                  sra          a5, t1, t3
                  slti         a3, s2, -1152
180:              addi         t0, a6, 1306
181:              bne          a4, sp, 194f
                  slti         s4, s4, 1580
                  bgeu         ra, a7, 196f
                  xor          t2, ra, a3
                  lui          zero, 182282
                  slti         t2, s6, 305
                  bgeu         s0, a2, 188f
188:              bge          s6, s7, 192f
                  slti         a2, gp, 1389
                  slli         a7, a5, 2
                  bltu         s0, s7, 200f
192:              auipc        a2, 860164
                  andi         a1, a2, -871
194:              beq          a1, a7, 213f
                  or           t3, ra, a4
196:              xori         s9, zero, -1592
                  addi         t0, t6, 1352
                  bltu         s5, sp, 206f
                  lui          gp, 521022
200:              and          a4, s10, a7
                  sll          a6, sp, a4
                  sll          s10, s7, a1
                  and          s1, t2, sp
                  slt          t6, a4, t4
                  xor          t0, a5, t5
206:              add          s11, tp, sp
                  sra          s5, zero, t0
                  sltu         a2, t1, a5
                  bne          s9, s8, 214f
                  srl          t5, s11, s6
sub_1_3:          jal          s8, 15f
0:                jal          ra, 2f
1:                jal          a7, 13f
2:                jal          ra, 17f
3:                jal          ra, 4f
4:                jal          s4, 14f
5:                jal          s1, 7f
6:                jal          ra, 5b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          a5, 6b
13:               jal          s8, 12b
14:               jal          ra, 18f
15:               jal          ra, 16f
16:               jal          ra, 0b
17:               jal          ra, 9b
18:               srli         a7, a6, 21
                  slt          ra, t3, s7
                  sub          ra, a6, t3
213:              xor          a0, sp, s1
214:              xori         s6, s1, 1572
                  slli         tp, t1, 28
                  srli         a5, s4, 1
                  blt          s5, s1, 219f
                  beq          s11, s4, 238f
219:              xor          t3, a7, s5
                  beq          t4, s9, 226f
                  bltu         t3, sp, 222f
222:              xor          a6, a4, s3
                  slli         a0, a4, 1
                  slli         t6, t1, 5
                  srl          s8, gp, s7
226:              bltu         s0, s10, 232f
                  bgeu         gp, t5, 241f
                  slt          a3, s4, zero
                  add          a7, s5, a6
                  sltiu        t2, a5, 650
                  slli         ra, zero, 6
232:              sub          a0, s10, s3
                  sub          zero, t6, a3
                  blt          s8, a7, 237f
                  beq          s5, tp, 238f
                  bgeu         a7, t3, 242f
237:              slli         s9, sp, 20
238:              bltu         s7, sp, 257f
                  bgeu         s11, s10, 248f
                  xor          tp, tp, a1
241:              xor          s11, s7, s9
242:              nop
                  sll          a6, t6, s3
                  bne          s2, s1, 245f
245:              srl          t5, s9, s11
                  sra          s6, a5, s3
                  bge          a4, a5, 256f
248:              blt          sp, a4, 254f
sub_1_0:          jal          s8, 11f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          t6, 12f
3:                jal          ra, 8f
4:                jal          ra, 13f
5:                jal          ra, 0b
6:                jal          a5, 4b
7:                jal          sp, 9f
8:                jal          ra, 14f
9:                jal          t6, 5b
10:               jal          gp, 3b
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          a4, 10b
14:               lui          t5, 250373
                  ori          a3, t1, 1316
                  sltiu        s5, a5, -490
                  xori         a6, s3, 573
                  slti         s6, s9, 1541
                  slt          t5, s4, t6
254:              bgeu         zero, s1, 274f
                  addi         t5, s7, 424
256:              srai         s0, s11, 30
257:              slt          t2, s5, s1
                  srli         zero, s1, 31
                  nop
                  bgeu         a2, sp, 262f
                  add          s5, s3, a5
262:              bltu         t4, t5, 266f
                  lui          s9, 137330
                  blt          s9, s1, 265f
265:              auipc        zero, 87007
266:              add          t0, t3, s4
                  beq          sp, zero, 287f
                  andi         ra, t4, -1876
                  slt          sp, a3, a7
                  blt          a3, s9, 277f
                  srai         s11, a6, 13
                  slti         s4, a7, 1262
                  and          ra, a0, a7
274:              beq          ra, s9, 279f
                  ori          gp, sp, -94
                  slt          s7, s4, zero
277:              srli         s1, t4, 15
                  sra          s4, a2, s4
279:              sra          s5, s9, ra
                  srli         s8, s1, 31
                  sra          a4, ra, s11
                  bgeu         t5, tp, 302f
                  slti         s5, t4, -1498
                  srai         s11, t5, 10
                  ori          s4, s11, -1877
                  auipc        s4, 866356
287:              srl          a4, a6, s7
                  slli         s10, s5, 8
                  xori         t5, a0, 684
                  sub          a0, s2, a4
                  bne          s3, gp, 311f
                  nop
                  and          zero, s4, a3
                  lui          s8, 469655
                  nop
                  bne          t0, a1, 309f
                  addi         a2, s1, -1300
                  addi         tp, gp, -391
                  slli         s8, t4, 20
                  sub          s1, a6, a5
                  bne          s0, a2, 320f
302:              blt          t2, a7, 309f
                  slt          s1, t5, a7
                  slt          t2, s9, t4
                  and          a6, s1, s0
                  add          gp, s7, t4
                  sltiu        s3, a4, -135
                  slli         ra, s10, 10
309:              bge          t2, t4, 328f
                  sltu         t3, s5, zero
311:              lui          tp, 446413
                  and          s7, t5, a4
                  sll          s8, t6, t6
                  lui          t0, 456729
                  xor          s11, a3, a7
                  slt          s5, s5, a0
                  xor          a0, s4, a4
                  xor          a4, a0, s10
                  or           s6, s7, a4
320:              sll          a6, s11, a3
                  srai         s6, a6, 29
                  srai         a4, t5, 30
                  beq          t3, ra, 337f
                  srli         a3, s11, 7
                  bne          s3, sp, 336f
                  sll          s9, t2, a5
                  srai         s4, s0, 20
328:              sltu         zero, a6, t5
                  and          s3, s2, t6
                  srl          a0, s11, a1
                  srli         s5, s3, 18
                  beq          s5, s7, 346f
                  andi         s9, s8, 624
                  xor          t5, s3, t3
                  bgeu         s1, a0, 349f
336:              bgeu         zero, t3, 349f
337:              sra          t0, t4, s7
                  addi         tp, a3, 1080
                  bge          t5, s6, 353f
                  add          gp, zero, s9
                  sltu         sp, s11, a1
                  and          a3, a3, s3
                  srli         gp, t2, 8
                  srl          s8, a1, a3
                  sub          s1, zero, s9
346:              sra          a1, a2, a2
                  sltu         a4, t2, a3
                  srl          t5, a6, sp
349:              bge          s2, a7, 357f
                  srli         s10, a3, 27
                  nop
                  xor          tp, a0, s8
353:              slt          a7, s10, a7
                  xori         a1, t5, -1418
                  xori         t6, s6, 969
                  nop
357:              bltu         a2, gp, 376f
                  slt          a6, sp, gp
                  add          a6, s9, zero
                  slt          s4, s2, tp
                  bne          t2, t4, 366f
                  sltiu        a7, gp, -543
                  lui          a1, 23998
                  addi         t0, s6, 1209
                  slli         a1, s11, 15
366:              xori         t2, a6, -1283
                  ori          t6, t1, -333
                  nop
                  ori          a1, s6, 858
                  or           ra, t3, t6
                  sltiu        sp, s5, -1032
                  sub          ra, zero, a0
                  srai         s10, s2, 3
                  nop
                  sll          s7, zero, s1
376:              and          s1, t2, gp
                  sll          a6, s0, sp
                  sub          t2, s10, zero
                  sll          a3, s11, t2
                  srli         sp, s9, 1
                  sltiu        s10, t3, -1613
                  andi         t6, s1, -1755
                  nop
                  auipc        t6, 1009367
                  or           s7, t1, t0
                  or           a4, a7, s1
sub_1_j4:         jal          s8, sub_4 #jump sub_1 -> sub_4
                  xor          a4, s10, s10
                  or           a1, a1, s7
                  bne          t3, t5, 392f
                  sltiu        t2, s7, 668
                  lui          s7, 661079
                  nop
                  add          s11, s6, a5
                  sltu         s6, s3, sp
                  srli         a7, a7, 10
                  sll          s9, t2, a0
                  slt          t5, a0, s6
                  sltu         a4, s6, zero
                  blt          t2, s3, 395f
                  bgeu         s2, t2, 391f
391:              slti         a3, s9, -1365
392:              srli         t2, a1, 1
                  bgeu         a0, a3, 412f
                  xor          sp, s2, t3
395:              lui          a1, 300874
                  beq          s1, s9, 416f
                  slti         t6, s11, 1656
                  srai         sp, s1, 2
                  sub          t0, s0, s8
                  bgeu         s2, t3, 407f
                  blt          a4, t5, 420f
                  xori         t6, s1, -577
                  and          t5, zero, s10
                  or           t0, s0, t1
                  slli         t0, a7, 15
                  sltu         a5, t3, gp
407:              beq          t0, s5, 426f
                  beq          s0, s5, 421f
                  and          s4, ra, zero
                  bltu         a5, t0, 412f
                  bltu         s11, s9, 425f
412:              and          s10, s5, sp
                  srai         s9, t4, 7
                  sra          a2, a0, a0
                  srli         t3, ra, 6
416:              and          s8, zero, s9
                  srl          a7, t0, t1
                  srl          s4, a0, s4
                  and          s9, t4, ra
420:              bltu         a7, s9, 423f
421:              lui          tp, 492344
                  add          s6, s1, a1
423:              sub          a3, tp, gp
                  slti         s0, s7, 787
425:              bge          a5, s7, 431f
426:              xori         a0, s6, -1897
                  sll          t0, t6, a5
                  sra          a7, sp, s4
                  beq          s5, t1, 434f
                  sltiu        t2, t5, 1103
431:              bne          s0, t6, 451f
                  and          a0, s3, a6
                  and          s3, s2, t3
434:              and          s11, a3, a5
                  srli         t3, s8, 1
                  auipc        s1, 869200
                  slt          s11, tp, a3
                  bltu         gp, t4, 446f
                  or           ra, s3, s6
                  srli         s4, t6, 18
                  beq          zero, t5, 455f
                  lui          tp, 794690
                  bltu         s4, t1, 450f
                  nop
                  bne          s4, ra, 464f
446:              srli         gp, s9, 4
                  auipc        t5, 966165
                  xori         s11, a5, 324
                  slti         tp, s10, 134
450:              andi         s0, s3, -1984
451:              slt          gp, a1, zero
                  srl          s1, a1, s7
                  sra          ra, s5, s6
                  slli         t6, s6, 25
455:              ori          t5, s1, -1697
                  bge          t5, s6, 476f
                  lui          sp, 753683
                  nop
                  sra          s5, t2, a7
                  ori          a2, gp, 648
                  lui          a2, 1022097
                  srl          a4, t0, a7
                  slti         a5, s0, 1909
464:              sltiu        s4, t5, -2044
                  xor          t0, gp, t2
                  or           a1, s0, sp
                  srl          t3, s5, t0
                  bgeu         a3, t5, 477f
                  slt          t0, zero, zero
                  sll          s0, s3, s10
                  add          a0, s10, sp
                  ori          a2, ra, -979
                  xori         t6, s3, 382
                  slti         s4, t0, -131
                  srli         zero, s5, 17
476:              sra          a1, t6, t6
477:              xori         s0, t5, -778
                  beq          t4, t3, 481f
                  auipc        a3, 225774
                  sll          s11, t1, t1
481:              addi         s4, s1, 1605
                  slti         s6, t4, 1049
                  sltu         a1, s4, t1
                  add          a4, a3, a4
                  andi         s1, a2, 1656
                  bge          t0, s7, 487f
487:              andi         tp, a2, -1037
                  sub          t5, t1, s3
                  blt          t4, a4, 503f
                  slti         gp, s9, 2024
                  xor          s4, s7, s7
                  bgeu         s9, a1, 496f
                  xor          s6, t1, ra
                  blt          s7, t2, 513f
                  nop
496:              xori         t2, sp, 327
                  beq          a4, s6, 511f
                  sltiu        s10, t1, -1220
                  add          s0, s8, t0
                  sltu         ra, t1, zero
                  slli         ra, s11, 11
                  lui          s9, 231856
503:              bgeu         ra, a3, 512f
                  bge          a0, s8, 513f
                  slt          sp, t2, a6
                  bge          tp, s0, 511f
                  add          a5, ra, t0
                  auipc        a6, 247102
                  and          s10, s5, a6
                  srli         s9, t3, 13
511:              srli         a6, a7, 24
512:              sltu         s8, a1, a5
513:              sltu         t3, t3, a1
                  lui          s3, 281293
                  xori         s7, t1, 2034
                  or           s9, s1, a4
                  lw           s8, 4(s2)
                  addi         a1, gp, 1329
                  addi         s2, s2, 36
                  slli         a3, s4, 9
769:              addi x8, x24, 0
769:              jalr x8, x8, 0
sub_5:            xor          zero, a0, s5
                  beq          s11, t1, sub_5_stack_p
sub_5_stack_p:    addi         s2, s2, -28
                  sltu         a3, s2, t4
                  sub          ra, a0, s9
                  sw           s8, 4(s2)
                  srli         ra, a6, 26
                  sra          s4, s1, zero
                  bgeu         a0, s5, 13f
                  addi         a1, a3, -401
                  srli         a3, s9, 6
                  bge          a1, t1, 13f
                  addi         s5, s10, 272
                  srl          a1, a3, t0
                  srli         a4, a0, 25
                  or           t3, t4, a0
                  srl          s4, s5, s10
                  bgeu         s1, s11, 13f
                  auipc        a2, 566668
                  xori         s1, s3, -1889
13:               xori         s0, t5, 318
                  lui          gp, 386264
                  lw           s8, 4(s2)
                  nop
                  sub          sp, s6, a6
                  srli         gp, a1, 3
                  addi         s2, s2, 28
                  auipc        s4, 718419
28:               addi x19, x24, 0
28:               jalr x19, x19, 0
sub_4:            addi         t6, t5, 1248
                  addi         s2, s2, -48
                  sw           s8, 4(s2)
                  srai         t0, a3, 31
                  srl          ra, s11, sp
                  auipc        a4, 673039
                  srli         zero, s10, 10
                  sll          s10, s3, a2
                  add          s10, t5, s11
                  sltu         a1, t1, a5
                  add          s9, s7, s11
                  xori         s6, s1, 1931
                  slli         s4, a4, 29
                  la           s7, sub_5
                  sltu         a5, s0, a6
                  addi         s7, s7, -703
                  sra          a2, a5, a4
sub_4_j8:         jalr         s8, s7, 703 #jump sub_4 -> sub_5
                  add          s11, gp, s8
                  xori         a2, s5, 1787
                  add          tp, s1, a1
                  xori         s3, s2, 618
                  addi         s9, s6, 637
                  bltu         t1, a0, 25f
                  sltu         t3, s8, s4
                  add          t0, t5, a5
                  srl          s1, s0, t4
                  bge          ra, sp, 21f
                  add          tp, s9, t3
                  xor          t5, a2, s11
                  andi         t3, s4, -504
                  sra          a2, t3, s7
                  xori         zero, tp, 602
                  xori         a7, t3, 1108
                  xori         s0, a1, 813
                  ori          s7, s4, 972
                  bltu         s1, t0, 36f
                  bne          s0, ra, 24f
                  bltu         a2, s0, 32f
21:               blt          a5, sp, 34f
                  bltu         t3, t3, 39f
                  add          a1, a3, a7
24:               slli         gp, t1, 6
25:               add          a6, tp, a5
                  bgeu         s7, t4, 34f
                  or           a4, a6, a6
                  or           t5, s4, s8
                  slli         t3, t0, 1
                  sll          s5, t2, a1
                  srli         t5, t1, 18
32:               blt          gp, t4, 44f
                  andi         ra, t3, 1973
34:               beq          t2, ra, 40f
                  sra          s10, s1, tp
36:               srli         ra, t2, 21
                  auipc        s1, 1610
                  add          s0, t4, gp
39:               srai         s3, a6, 7
40:               bge          s11, a2, 44f
                  slti         a1, s2, -1655
                  srai         a6, s4, 20
                  or           a1, s2, a3
44:               add          a1, t4, s1
                  srai         t5, s4, 16
                  sltu         s9, t3, a4
                  lw           s8, 4(s2)
                  slti         a3, zero, 1241
                  addi         t6, s2, 1611
                  addi         s2, s2, 48
                  add          tp, a4, a3
70:               addi x10, x24, 0
70:               jalr x10, x10, 0
sub_3:            sra          ra, s8, s6
                  srli         a0, a2, 16
                  sltiu        s0, zero, -1214
                  and          t5, s11, t6
                  addi         s2, s2, -48
                  and          s0, s10, s4
                  sw           s8, 4(s2)
                  slt          t5, s9, a1
                  addi         s5, s11, 1696
                  andi         tp, s0, 9
                  la           a2, sub_5
                  addi         a2, a2, -805
                  sra          s3, s0, a1
                  slt          s4, a3, s10
                  sll          ra, sp, a6
                  or           ra, ra, t1
                  slli         tp, a3, 21
                  bne          a2, t2, sub_3_j7 #branch to jump instr
                  sub          ra, t5, gp
                  sll          s4, t6, a4
                  auipc        a6, 815873
sub_3_j7:         jalr         s8, a2, 805 #jump sub_3 -> sub_5
sub_3_0:          jal          s8, 3f
0:                jal          tp, 2f
1:                jal          ra, 4f
2:                jal          s4, 8f
3:                jal          ra, 6f
4:                jal          t5, 15f
5:                jal          t0, 7f
6:                jal          ra, 12f
7:                jal          ra, 14f
8:                jal          ra, 11f
9:                jal          s10, 16f
10:               jal          tp, 1b
11:               jal          ra, 5b
12:               jal          s9, 10b
13:               jal          gp, 0b
14:               jal          ra, 9b
15:               jal          a6, 13b
16:               sra          s11, s3, t0
sub_3_1:          jal          s8, 3f
0:                jal          ra, 6f
1:                jal          sp, 12f
2:                jal          t5, 10f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          a1, 0b
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          ra, 11f
10:               jal          sp, 9b
11:               jal          ra, 4b
12:               nop
                  addi         sp, s3, -286
                  bgeu         t4, a2, 17f
                  srl          t3, s5, s4
                  slti         t3, s5, 1097
                  bge          s1, a7, 12f
                  sll          tp, a7, tp
                  srli         a2, s0, 31
                  andi         ra, s4, 633
                  blt          a7, s9, 14f
                  xor          s1, s9, s10
                  add          s8, a2, a6
                  bge          a2, s4, 12f
12:               sub          s1, a0, s10
                  slt          s7, t2, a0
14:               slt          s5, s11, a1
                  or           a1, s5, t3
                  bne          gp, s6, 19f
17:               beq          gp, t2, 26f
                  srl          s9, s9, t4
19:               srai         t2, s1, 31
                  and          a6, s2, t5
                  and          t6, s10, ra
                  ori          t2, t4, -1172
                  add          a0, a1, t2
                  auipc        t5, 334504
                  bne          s0, t1, 42f
26:               slt          s0, t4, t5
                  ori          a5, s10, 1502
                  andi         a3, t5, -27
                  and          t2, t4, gp
                  and          s5, a3, t5
                  sltiu        ra, gp, 1574
                  andi         a2, sp, -197
                  add          s7, t6, s11
                  ori          s6, sp, -855
                  lui          a0, 122656
                  bgeu         s4, a0, 53f
                  beq          gp, sp, 55f
                  sltiu        s10, t4, -52
                  srai         s7, t3, 19
                  auipc        s8, 508941
                  nop
42:               xori         a6, s8, 388
                  nop
                  sll          s0, t1, a3
                  xori         s0, a3, 1109
                  slti         s5, a6, -298
                  slti         a4, sp, -710
                  add          s3, a0, t0
                  addi         s10, sp, -1081
                  and          s11, s2, s6
                  bne          t5, sp, 65f
                  bgeu         s6, t5, 60f
53:               sra          t0, a1, s11
                  auipc        zero, 871440
55:               add          s11, a4, s1
                  slli         s10, a4, 26
                  slt          a3, s2, s5
                  slti         s1, s11, -1575
                  xori         s10, a1, -1984
60:               sll          a0, t1, s9
                  bge          s5, s3, 69f
                  xor          s3, t2, s8
                  bltu         tp, s10, 78f
                  xor          tp, tp, t6
65:               beq          a3, s1, 84f
                  bgeu         a4, s3, 82f
                  sltu         s5, s11, a7
                  bne          a6, a0, 70f
69:               addi         s8, s6, -833
70:               slt          t5, s4, t6
                  nop
                  srli         t2, s3, 1
                  sra          s11, t6, t5
                  sra          sp, t5, t4
                  ori          s1, s4, 1127
                  slli         s5, sp, 21
                  bgeu         zero, a0, 94f
78:               beq          ra, zero, 89f
                  slt          s5, s2, ra
                  slli         gp, a1, 7
                  addi         a2, s10, -1130
82:               srl          gp, a5, gp
                  sltiu        sp, s10, 1779
84:               srli         a3, s7, 4
                  srli         s10, ra, 16
                  bltu         s5, s4, 106f
                  andi         t5, s5, -1801
                  andi         t5, s2, -710
89:               srli         a4, s10, 11
                  sltiu        sp, s1, 1305
                  and          s11, s4, a7
                  ori          s5, sp, -1460
                  slli         sp, tp, 17
94:               bgeu         s11, t2, 109f
                  xori         a0, s2, -2026
                  srl          a6, sp, zero
                  xor          s0, t3, gp
                  blt          s1, a7, 104f
                  xori         sp, t3, 1399
                  sll          s7, t4, s6
                  srli         zero, gp, 9
                  add          t0, zero, s4
                  srl          a1, a7, a0
104:              lui          s9, 606158
                  bltu         s10, s0, 109f
106:              add          s0, t3, s2
                  slli         a2, s0, 10
                  addi         t5, s6, -221
109:              or           a7, s10, s0
                  ori          s6, zero, -596
                  xori         a5, a1, 322
                  nop
                  addi         a7, a4, -1267
                  nop
                  sra          a1, a1, t1
                  slt          s1, a6, t4
                  blt          t4, t4, 128f
                  bgeu         gp, s7, 131f
                  or           s7, s6, s9
                  sra          s6, t4, s3
                  beq          ra, s4, 126f
                  andi         gp, s2, 14
                  beq          tp, sp, 125f
                  sub          s10, a6, a1
125:              auipc        a7, 545316
126:              and          sp, s6, ra
                  slt          s8, t3, s10
128:              xori         s8, a3, -1402
                  addi         s8, s7, 53
                  add          t3, a6, a5
131:              auipc        t3, 438090
                  slt          a7, t0, s11
                  bgeu         a7, a6, 142f
                  slli         a1, a3, 26
                  sub          s0, t2, a6
                  srl          a4, t1, t6
                  xor          a1, s3, a4
                  blt          tp, s10, 142f
                  lui          a1, 875375
                  sll          tp, a4, t2
                  nop
142:              andi         t2, t3, -40
                  lw           s8, 4(s2)
                  andi         zero, a5, 1006
                  auipc        t3, 690203
                  add          t5, s7, s1
                  addi         s2, s2, 48
                  ori          a1, t1, 1047
                  ori          a5, t5, -637
                  sltiu        s0, a4, -1433
                  sll          s3, t4, zero
                  sltiu        gp, a3, 1731
207:              addi x19, x24, 1
207:              jalr x19, x19, 0
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_2:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_3:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_4:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_5:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_6:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_7:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_8:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_9:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_10:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_11:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_12:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_13:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_14:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_15:
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
                  add x29, x18, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

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
                  add x29, x18, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x20, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x20, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x1
                  beq x20, x11, instr_fault_handler
                  li x11, 0x5
                  beq x20, x11, load_fault_handler
                  li x11, 0x7
                  beq x20, x11, store_fault_handler
                  li x11, 0xc
                  beq x20, x11, pt_fault_handler
                  li x11, 0xd
                  beq x20, x11, pt_fault_handler
                  li x11, 0xf
                  beq x20, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x18, x29, zero
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
                  add x18, x29, zero
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
                  add x18, x29, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x18, x29, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x18, x29, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x18, x29, zero
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
