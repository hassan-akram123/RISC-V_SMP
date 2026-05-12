.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xf9f5ce24
                  li x4, 0xa
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xd
                  li x8, 0x8d4b0b7b
                  li x9, 0x0
                  li x10, 0x1cf0e7ef
                  li x11, 0x0
                  li x13, 0x8
                  li x14, 0x59c04a00
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x20, 0x96431f73
                  li x21, 0x7
                  li x22, 0xf
                  li x23, 0x0
                  li x24, 0xf
                  li x25, 0x94085a55
                  li x26, 0x0
                  li x27, 0xec4ec6ce
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x7ab12e6a
                  li x31, 0x9
                  la x12, user_stack_end
main:             srai         s6, a1, 25
                  auipc        t5, 393336
                  sltiu        s11, tp, -465
                  la           ra, sub_1
                  srli         s11, a3, 5
                  addi         ra, ra, -725
                  slti         t0, a7, -534
                  bne          a4, s7, main_j2 #branch to jump instr
                  slt          s9, s7, a5
main_j2:          jalr         tp, ra, 725 #jump main -> sub_1
main_20:          jal          tp, 27f
0:                jal          ra, 17f
1:                jal          ra, 0b
2:                jal          ra, 18f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          ra, 20f
6:                jal          ra, 23f
7:                jal          sp, 29f
8:                jal          ra, 28f
9:                jal          t1, 22f
10:               jal          s1, 12f
11:               jal          ra, 14f
12:               jal          t1, 9b
13:               jal          s9, 7b
14:               jal          ra, 21f
15:               jal          ra, 2b
16:               jal          ra, 4b
17:               jal          t1, 15b
18:               jal          t1, 6b
19:               jal          ra, 25f
20:               jal          t1, 26f
21:               jal          t1, 8b
22:               jal          s10, 13b
23:               jal          ra, 5b
24:               jal          a3, 16b
25:               jal          ra, 24b
26:               jal          ra, 11b
27:               jal          ra, 19b
28:               jal          ra, 10b
29:               slti         s4, s3, -1234
main_8:           jal          tp, 5f
0:                jal          s10, 8f
1:                jal          ra, 0b
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          ra, 4b
7:                jal          s6, 14f
8:                jal          gp, 7b
9:                jal          t1, 13f
10:               jal          a7, 18f
11:               jal          s9, 16f
12:               jal          t1, 6b
13:               jal          t1, 15f
14:               jal          ra, 17f
15:               jal          s2, 11b
16:               jal          t3, 10b
17:               jal          ra, 9b
18:               slli         s8, t2, 4
main_17:          jal          tp, 5f
0:                jal          ra, 11f
1:                jal          ra, 7f
2:                jal          t1, 9f
3:                jal          ra, 13f
4:                jal          a3, 2b
5:                jal          ra, 4b
6:                jal          s1, 10f
7:                jal          s10, 3b
8:                jal          ra, 17f
9:                jal          ra, 16f
10:               jal          s0, 15f
11:               jal          t1, 6b
12:               jal          ra, 14f
13:               jal          ra, 18f
14:               jal          t1, 1b
15:               jal          ra, 8b
16:               jal          ra, 0b
17:               jal          t6, 12b
18:               or           s9, a2, s5
main_5:           jal          tp, 18f
0:                jal          t0, 9f
1:                jal          s5, 0b
2:                jal          tp, 5f
3:                jal          t1, 2b
4:                jal          t6, 8f
5:                jal          t1, 10f
6:                jal          ra, 13f
7:                jal          t1, 17f
8:                jal          ra, 19f
9:                jal          t1, 3b
10:               jal          ra, 15f
11:               jal          t1, 16f
12:               jal          t1, 20f
13:               jal          ra, 14f
14:               jal          t1, 4b
15:               jal          t4, 6b
16:               jal          s4, 7b
17:               jal          ra, 1b
18:               jal          s5, 11b
19:               jal          ra, 12b
20:               srli         a1, t2, 28
main_0:           jal          tp, 17f
0:                jal          t1, 6f
1:                jal          t1, 18f
2:                jal          a4, 7f
3:                jal          ra, 0b
4:                jal          a3, 8f
5:                jal          ra, 4b
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          ra, 11f
9:                jal          s11, 5b
10:               jal          ra, 19f
11:               jal          ra, 13f
12:               jal          sp, 20f
13:               jal          t1, 2b
14:               jal          t0, 15f
15:               jal          ra, 9b
16:               jal          ra, 10b
17:               jal          t4, 16b
18:               jal          t1, 14b
19:               jal          s6, 1b
20:               slli         gp, zero, 14
main_37:          jal          tp, 6f
0:                jal          ra, 2f
1:                jal          a1, 13f
2:                jal          ra, 4f
3:                jal          s1, 0b
4:                jal          s1, 11f
5:                jal          ra, 12f
6:                jal          s9, 3b
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          a5, 8b
11:               jal          tp, 10b
12:               jal          tp, 9b
13:               sub          s10, t4, t6
main_34:          jal          tp, 6f
0:                jal          ra, 15f
1:                jal          ra, 2f
2:                jal          t1, 3f
3:                jal          ra, 16f
4:                jal          ra, 12f
5:                jal          t1, 1b
6:                jal          ra, 14f
7:                jal          s9, 10f
8:                jal          t1, 0b
9:                jal          s4, 5b
10:               jal          t4, 17f
11:               jal          ra, 8b
12:               jal          t1, 7b
13:               jal          t2, 11b
14:               jal          t0, 9b
15:               jal          ra, 4b
16:               jal          s8, 13b
17:               nop
main_3:           jal          tp, 2f
0:                jal          s2, 7f
1:                jal          a1, 6f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          t0, 5f
5:                jal          a3, 11f
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          s4, 1b
9:                jal          gp, 3b
10:               jal          t4, 13f
11:               jal          t6, 8b
12:               jal          ra, 0b
13:               sltiu        a5, t0, -118
main_11:          jal          tp, 1f
0:                jal          a5, 11f
1:                jal          t1, 5f
2:                jal          ra, 4f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          ra, 10f
6:                jal          s5, 0b
7:                jal          s8, 9f
8:                jal          sp, 2b
9:                jal          t1, 3b
10:               jal          ra, 8b
11:               jal          ra, 7b
12:               slti         s1, s7, -331
main_26:          jal          tp, 1f
0:                jal          s1, 26f
1:                jal          t1, 19f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          ra, 13f
5:                jal          ra, 8f
6:                jal          t1, 14f
7:                jal          ra, 29f
8:                jal          ra, 12f
9:                jal          ra, 11f
10:               jal          ra, 28f
11:               jal          ra, 20f
12:               jal          ra, 22f
13:               jal          ra, 21f
14:               jal          ra, 15f
15:               jal          ra, 4b
16:               jal          ra, 9b
17:               jal          ra, 16b
18:               jal          t1, 3b
19:               jal          ra, 0b
20:               jal          ra, 23f
21:               jal          ra, 30f
22:               jal          t1, 24f
23:               jal          t1, 18b
24:               jal          t0, 10b
25:               jal          ra, 5b
26:               jal          ra, 27f
27:               jal          ra, 17b
28:               jal          t4, 2b
29:               jal          s0, 25b
30:               sltu         a7, ra, a4
main_10:          jal          tp, 11f
0:                jal          ra, 22f
1:                jal          ra, 6f
2:                jal          ra, 8f
3:                jal          a4, 23f
4:                jal          t1, 13f
5:                jal          ra, 4b
6:                jal          ra, 19f
7:                jal          sp, 0b
8:                jal          ra, 5b
9:                jal          ra, 24f
10:               jal          s7, 3b
11:               jal          ra, 14f
12:               jal          t1, 17f
13:               jal          t1, 18f
14:               jal          t1, 20f
15:               jal          t1, 10b
16:               jal          ra, 7b
17:               jal          s4, 9b
18:               jal          ra, 16b
19:               jal          s9, 15b
20:               jal          t1, 2b
21:               jal          t0, 12b
22:               jal          ra, 1b
23:               jal          ra, 21b
24:               sra          a1, a0, t3
main_32:          jal          tp, 18f
0:                jal          s8, 15f
1:                jal          tp, 16f
2:                jal          a4, 10f
3:                jal          s9, 7f
4:                jal          s2, 11f
5:                jal          ra, 1b
6:                jal          s4, 20f
7:                jal          ra, 14f
8:                jal          t1, 2b
9:                jal          t1, 0b
10:               jal          gp, 12f
11:               jal          ra, 6b
12:               jal          ra, 5b
13:               jal          a7, 9b
14:               jal          t1, 13b
15:               jal          ra, 19f
16:               jal          ra, 3b
17:               jal          t1, 4b
18:               jal          ra, 8b
19:               jal          t0, 17b
20:               add          s10, s6, ra
main_4:           jal          tp, 18f
0:                jal          tp, 7f
1:                jal          t0, 16f
2:                jal          t1, 15f
3:                jal          s2, 1b
4:                jal          t1, 10f
5:                jal          ra, 0b
6:                jal          ra, 13f
7:                jal          ra, 6b
8:                jal          ra, 14f
9:                jal          t1, 19f
10:               jal          t1, 2b
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          ra, 9b
14:               jal          t3, 3b
15:               jal          ra, 11b
16:               jal          t4, 4b
17:               jal          ra, 8b
18:               jal          t1, 17b
19:               andi         s11, s6, 1497
main_38:          jal          tp, 4f
0:                jal          t1, 7f
1:                jal          ra, 8f
2:                jal          s6, 11f
3:                jal          s10, 5f
4:                jal          ra, 3b
5:                jal          t1, 0b
6:                jal          ra, 9f
7:                jal          a6, 10f
8:                jal          t1, 14f
9:                jal          t1, 2b
10:               jal          s10, 1b
11:               jal          tp, 12f
12:               jal          ra, 13f
13:               jal          ra, 15f
14:               jal          sp, 6b
15:               slti         s9, a1, -1654
main_44:          jal          tp, 14f
0:                jal          ra, 13f
1:                jal          t3, 9f
2:                jal          ra, 18f
3:                jal          ra, 11f
4:                jal          ra, 8f
5:                jal          ra, 21f
6:                jal          ra, 4b
7:                jal          ra, 24f
8:                jal          ra, 23f
9:                jal          s9, 12f
10:               jal          ra, 19f
11:               jal          t1, 0b
12:               jal          ra, 7b
13:               jal          ra, 15f
14:               jal          ra, 6b
15:               jal          ra, 1b
16:               jal          ra, 20f
17:               jal          sp, 10b
18:               jal          ra, 16b
19:               jal          ra, 22f
20:               jal          ra, 5b
21:               jal          ra, 3b
22:               jal          t1, 2b
23:               jal          ra, 17b
24:               addi         tp, s10, 128
main_12:          jal          tp, 9f
0:                jal          t1, 5f
1:                jal          t5, 4f
2:                jal          s8, 3f
3:                jal          ra, 8f
4:                jal          s7, 10f
5:                jal          ra, 7f
6:                jal          t1, 2b
7:                jal          ra, 1b
8:                jal          t0, 0b
9:                jal          ra, 6b
10:               sll          t2, a5, a1
main_18:          jal          tp, 3f
0:                jal          ra, 12f
1:                jal          ra, 6f
2:                jal          sp, 5f
3:                jal          t0, 19f
4:                jal          t1, 0b
5:                jal          ra, 20f
6:                jal          ra, 14f
7:                jal          ra, 13f
8:                jal          s7, 22f
9:                jal          a3, 11f
10:               jal          a3, 8b
11:               jal          ra, 18f
12:               jal          ra, 16f
13:               jal          ra, 17f
14:               jal          ra, 21f
15:               jal          t2, 4b
16:               jal          ra, 10b
17:               jal          t1, 9b
18:               jal          a7, 1b
19:               jal          ra, 7b
20:               jal          t1, 15b
21:               jal          ra, 2b
22:               nop
main_14:          jal          tp, 20f
0:                jal          ra, 24f
1:                jal          s0, 0b
2:                jal          ra, 18f
3:                jal          ra, 19f
4:                jal          ra, 5f
5:                jal          ra, 13f
6:                jal          ra, 26f
7:                jal          s9, 4b
8:                jal          ra, 7b
9:                jal          a6, 14f
10:               jal          t1, 21f
11:               jal          ra, 3b
12:               jal          ra, 6b
13:               jal          ra, 2b
14:               jal          ra, 11b
15:               jal          t1, 1b
16:               jal          t1, 23f
17:               jal          ra, 25f
18:               jal          t1, 12b
19:               jal          t0, 8b
20:               jal          ra, 10b
21:               jal          ra, 16b
22:               jal          ra, 9b
23:               jal          a1, 17b
24:               jal          ra, 22b
25:               jal          sp, 15b
26:               nop
main_9:           jal          tp, 12f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          t1, 10f
3:                jal          ra, 13f
4:                jal          ra, 9f
5:                jal          ra, 8f
6:                jal          gp, 15f
7:                jal          ra, 3b
8:                jal          s10, 1b
9:                jal          ra, 7b
10:               jal          ra, 11f
11:               jal          ra, 6b
12:               jal          ra, 16f
13:               jal          tp, 14f
14:               jal          s10, 17f
15:               jal          s10, 0b
16:               jal          ra, 5b
17:               jal          t1, 18f
18:               andi         s9, s6, -1999
main_1:           jal          tp, 10f
0:                jal          ra, 8f
1:                jal          s0, 5f
2:                jal          t1, 11f
3:                jal          t2, 9f
4:                jal          t1, 2b
5:                jal          t1, 12f
6:                jal          s10, 4b
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          sp, 0b
10:               jal          t1, 3b
11:               jal          t1, 1b
12:               sra          s11, a7, a3
main_35:          jal          tp, 12f
0:                jal          t6, 16f
1:                jal          ra, 0b
2:                jal          ra, 5f
3:                jal          t0, 24f
4:                jal          t0, 25f
5:                jal          t1, 1b
6:                jal          ra, 21f
7:                jal          s6, 17f
8:                jal          ra, 23f
9:                jal          ra, 13f
10:               jal          ra, 19f
11:               jal          a1, 10b
12:               jal          t1, 2b
13:               jal          tp, 15f
14:               jal          ra, 3b
15:               jal          ra, 7b
16:               jal          ra, 8b
17:               jal          s4, 22f
18:               jal          ra, 6b
19:               jal          gp, 9b
20:               jal          ra, 11b
21:               jal          a5, 14b
22:               jal          a6, 18b
23:               jal          ra, 20b
24:               jal          ra, 4b
25:               xori         ra, t6, -80
main_23:          jal          tp, 8f
0:                jal          t1, 12f
1:                jal          ra, 2f
2:                jal          t1, 19f
3:                jal          t0, 6f
4:                jal          t1, 20f
5:                jal          ra, 16f
6:                jal          ra, 13f
7:                jal          t6, 5b
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          a3, 11f
11:               jal          s4, 18f
12:               jal          ra, 7b
13:               jal          gp, 1b
14:               jal          ra, 9b
15:               jal          ra, 10b
16:               jal          ra, 14b
17:               jal          t4, 21f
18:               jal          t4, 3b
19:               jal          ra, 0b
20:               jal          t6, 17b
21:               sll          s2, t6, s3
main_29:          jal          tp, 1f
0:                jal          t1, 3f
1:                jal          ra, 5f
2:                jal          ra, 16f
3:                jal          ra, 17f
4:                jal          s0, 25f
5:                jal          ra, 18f
6:                jal          a7, 15f
7:                jal          ra, 24f
8:                jal          ra, 9f
9:                jal          ra, 10f
10:               jal          t1, 26f
11:               jal          ra, 14f
12:               jal          tp, 7b
13:               jal          t1, 11b
14:               jal          t1, 20f
15:               jal          t1, 23f
16:               jal          t1, 13b
17:               jal          ra, 22f
18:               jal          ra, 2b
19:               jal          ra, 0b
20:               jal          ra, 19b
21:               jal          ra, 8b
22:               jal          tp, 21b
23:               jal          s1, 27f
24:               jal          t4, 4b
25:               jal          ra, 6b
26:               jal          a4, 12b
27:               slti         s0, t3, 2005
main_7:           jal          tp, 4f
0:                jal          ra, 17f
1:                jal          ra, 12f
2:                jal          t1, 21f
3:                jal          t1, 13f
4:                jal          ra, 18f
5:                jal          sp, 7f
6:                jal          ra, 20f
7:                jal          s9, 2b
8:                jal          sp, 10f
9:                jal          ra, 11f
10:               jal          ra, 16f
11:               jal          sp, 22f
12:               jal          s4, 8b
13:               jal          ra, 6b
14:               jal          ra, 23f
15:               jal          s1, 9b
16:               jal          s2, 24f
17:               jal          t0, 3b
18:               jal          a7, 0b
19:               jal          ra, 15b
20:               jal          t1, 5b
21:               jal          t1, 19b
22:               jal          t1, 14b
23:               jal          ra, 1b
24:               addi         s10, s2, 1584
main_13:          jal          tp, 3f
0:                jal          t1, 12f
1:                jal          t1, 4f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          ra, 17f
5:                jal          ra, 9f
6:                jal          ra, 15f
7:                jal          s2, 5b
8:                jal          t1, 1b
9:                jal          ra, 18f
10:               jal          ra, 16f
11:               jal          ra, 6b
12:               jal          ra, 11b
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          a6, 14b
16:               jal          s11, 13b
17:               jal          s0, 0b
18:               slli         a6, t1, 13
main_36:          jal          tp, 13f
0:                jal          t1, 10f
1:                jal          ra, 12f
2:                jal          ra, 19f
3:                jal          ra, 16f
4:                jal          t0, 17f
5:                jal          ra, 4b
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          s6, 7b
9:                jal          ra, 1b
10:               jal          tp, 20f
11:               jal          t1, 22f
12:               jal          s9, 21f
13:               jal          sp, 8b
14:               jal          s2, 18f
15:               jal          ra, 9b
16:               jal          ra, 6b
17:               jal          ra, 3b
18:               jal          s6, 5b
19:               jal          t0, 0b
20:               jal          s11, 14b
21:               jal          t1, 11b
22:               sra          sp, t5, t6
main_2:           jal          tp, 15f
0:                jal          ra, 7f
1:                jal          a5, 18f
2:                jal          ra, 6f
3:                jal          ra, 17f
4:                jal          t1, 0b
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          ra, 19f
9:                jal          ra, 1b
10:               jal          ra, 12f
11:               jal          t5, 4b
12:               jal          ra, 14f
13:               jal          t1, 5b
14:               jal          ra, 20f
15:               jal          s7, 13b
16:               jal          ra, 3b
17:               jal          a5, 11b
18:               jal          s10, 2b
19:               jal          s0, 16b
20:               sll          s1, t1, t2
main_40:          jal          tp, 11f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          t1, 18f
3:                jal          t6, 15f
4:                jal          t4, 16f
5:                jal          ra, 22f
6:                jal          sp, 12f
7:                jal          ra, 17f
8:                jal          t1, 23f
9:                jal          ra, 8b
10:               jal          ra, 19f
11:               jal          ra, 7b
12:               jal          s11, 0b
13:               jal          ra, 2b
14:               jal          s11, 1b
15:               jal          t1, 6b
16:               jal          t1, 20f
17:               jal          ra, 13b
18:               jal          ra, 5b
19:               jal          ra, 21f
20:               jal          ra, 14b
21:               jal          ra, 9b
22:               jal          ra, 4b
23:               nop
main_21:          jal          tp, 8f
0:                jal          t1, 12f
1:                jal          t1, 6f
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          t1, 7f
5:                jal          t1, 0b
6:                jal          a1, 4b
7:                jal          t1, 3b
8:                jal          ra, 1b
9:                jal          t1, 11f
10:               jal          a1, 9b
11:               jal          t1, 2b
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               auipc        a1, 489243
main_41:          jal          tp, 9f
0:                jal          t1, 29f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          t1, 1b
4:                jal          ra, 8f
5:                jal          ra, 3b
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          ra, 27f
9:                jal          ra, 15f
10:               jal          a5, 18f
11:               jal          ra, 21f
12:               jal          t1, 20f
13:               jal          s6, 7b
14:               jal          ra, 12b
15:               jal          ra, 4b
16:               jal          t0, 6b
17:               jal          t1, 19f
18:               jal          t1, 24f
19:               jal          ra, 0b
20:               jal          ra, 25f
21:               jal          t1, 28f
22:               jal          a1, 26f
23:               jal          ra, 11b
24:               jal          ra, 23b
25:               jal          a5, 17b
26:               jal          ra, 13b
27:               jal          ra, 10b
28:               jal          sp, 22b
29:               auipc        t2, 903071
                  sltu         a5, t1, ra
                  sltiu        s7, t2, 642
                  and          s11, t2, s11
                  addi         t3, t5, 103
                  sltu         t4, t4, s0
                  bge          s4, s1, 19f
                  bge          s10, s10, 18f
                  nop
                  auipc        a1, 1014448
                  or           s2, a0, zero
                  slli         t0, s9, 27
                  bltu         t4, gp, 27f
                  nop
                  ori          t0, s6, -1429
                  bltu         t1, s4, 30f
                  slti         s0, t6, -1205
                  sll          s11, zero, s3
                  blt          s10, a7, 22f
18:               addi         s6, tp, -745
19:               beq          s1, a1, 25f
                  bge          gp, t1, 27f
                  nop
22:               sltiu        a7, t6, 878
                  andi         s5, a2, -1402
                  addi         s0, s3, -2031
25:               xor          s10, t5, a0
                  sra          a6, sp, t5
27:               blt          ra, t2, 28f
28:               bne          t2, s10, 45f
                  bne          ra, t1, 46f
30:               slti         a6, t0, -1798
                  slt          a4, t0, s3
                  blt          s1, a5, 39f
                  andi         tp, t2, -192
                  bne          a2, a4, 38f
                  or           a1, a4, t3
                  andi         a5, s5, 1623
                  srl          s8, s3, s6
38:               srai         a7, s5, 23
39:               srli         a1, s2, 7
                  nop
                  bltu         a2, a4, 60f
                  bgeu         zero, t5, 62f
                  xor          s11, ra, s4
                  sra          s0, s4, t3
45:               or           s7, s6, a4
46:               addi         t1, ra, 140
                  andi         zero, s2, -1571
                  sll          a1, s1, s9
                  auipc        s1, 1032661
                  or           t5, zero, sp
                  sub          s1, a2, t1
                  xor          a3, sp, s1
                  or           s7, ra, a3
                  lui          a4, 529313
                  sub          t5, gp, t4
                  slt          s4, t1, s2
                  sltu         a1, a1, a6
                  beq          s5, t6, 65f
                  andi         t4, t4, 302
60:               or           t6, tp, s8
                  sra          s2, s8, s0
62:               bge          a1, t1, 65f
                  slli         s6, s7, 13
                  auipc        t2, 1031896
65:               slt          s1, s3, s6
                  sra          t0, t1, t6
                  beq          t0, t1, 74f
                  slli         t5, t4, 5
                  srl          a7, s1, zero
                  ori          s10, s0, -2027
                  srai         gp, ra, 3
                  bgeu         a2, t2, 77f
                  slti         s10, t0, -1450
74:               auipc        s1, 469232
                  sltiu        s11, a6, -1311
                  srai         t5, a0, 4
77:               or           s0, t5, s8
                  sub          t1, s8, s3
                  sub          t6, a4, a4
                  slt          s6, s9, t5
                  sub          s7, a7, zero
                  sltu         a7, t2, t6
                  srli         tp, s10, 21
                  andi         a6, t3, -1676
                  bltu         ra, s1, 90f
                  slli         s1, ra, 2
                  sll          s6, sp, t6
                  srai         a1, s11, 23
                  srl          a5, s4, a7
90:               xori         t3, a0, 33
                  srl          s2, a7, s10
                  srai         zero, tp, 23
                  srl          a4, t3, s7
                  sll          s6, t1, s7
                  bge          s3, sp, 107f
                  sub          s1, a7, sp
                  bge          s1, t6, 108f
                  auipc        s5, 595999
                  add          t5, s6, a4
                  sub          a1, a2, s10
                  and          a1, t4, s11
                  bltu         s11, s11, 113f
                  bgeu         a7, s10, 119f
                  sll          ra, t2, t4
                  andi         s8, s6, -769
                  nop
107:              lui          t3, 909248
108:              slti         s0, t5, 1149
                  or           t4, s10, ra
                  and          ra, s4, a0
                  bne          s7, s8, 122f
                  sub          a5, t6, t1
113:              add          a1, t2, t4
                  lui          a5, 878524
                  bge          s10, a0, 121f
                  srl          s7, s7, s8
                  sll          t2, t6, s2
                  auipc        ra, 407401
119:              ori          s4, a7, -1592
                  lui          ra, 363111
121:              add          s11, s1, s2
122:              auipc        s0, 966958
                  ori          t4, s4, -1495
                  slti         a7, t6, 728
                  srl          sp, a0, gp
                  bne          a3, a7, 128f
                  nop
128:              slli         s8, a0, 16
                  nop
                  nop
                  bge          a7, s8, 141f
                  addi         s0, a3, 595
                  slti         s4, s2, -1077
                  add          a7, t4, s2
                  andi         sp, t1, 582
                  lui          s1, 503927
                  sub          s2, t5, s3
                  addi         t4, a5, -1041
                  nop
                  sltu         t6, t1, t1
141:              blt          zero, a6, 158f
                  nop
                  srai         s0, a4, 31
                  xor          zero, t6, a0
                  add          ra, t4, s2
                  addi         t2, t2, -1291
                  srai         s1, s8, 20
                  bge          t0, a7, 152f
                  sltiu        sp, a0, -1945
                  sltu         s7, s5, t2
                  sll          s6, t5, s2
152:              nop
                  addi         a6, s10, -2023
                  bne          s5, s6, 171f
                  srli         s11, s7, 13
                  add          s0, t0, t0
                  auipc        a5, 514015
158:              ori          s10, a7, 519
                  addi         a1, s4, -1445
                  addi         t5, a0, -1470
                  ori          s6, tp, 710
                  beq          a3, s7, 174f
                  or           s1, s7, zero
                  ori          s7, gp, -178
                  sltu         s2, s4, sp
                  bltu         tp, s3, 172f
                  xor          zero, t0, a7
                  nop
                  sll          t0, s2, a7
                  sltiu        s11, gp, -475
171:              sra          t0, s0, a0
172:              slti         gp, t4, -946
                  and          s10, t6, sp
174:              slli         a5, s3, 23
                  sub          s1, t0, s5
                  blt          t2, s9, 183f
                  sub          s9, t5, s3
                  and          a1, s2, gp
                  slli         a1, s0, 31
                  slli         t3, a1, 14
                  nop
                  bne          s7, s10, 199f
183:              xori         t6, gp, 1352
                  nop
                  bgeu         t0, a3, 188f
                  sltiu        t5, s10, -7
                  ori          zero, a0, -1387
188:              add          t6, gp, t0
                  bge          a0, s5, 194f
                  blt          zero, s4, 192f
                  slli         ra, t6, 26
192:              xori         zero, a2, 1306
                  slti         s6, t4, -867
194:              xor          t4, tp, s1
                  auipc        a3, 433770
                  and          s10, s5, t1
                  addi         t0, sp, 230
                  nop
199:              blt          s10, gp, 206f
                  nop
                  srai         a4, s3, 7
                  xori         a7, s7, 324
                  srai         s1, t2, 2
                  sltu         t3, a4, sp
                  nop
206:              xori         a4, t4, -1186
                  sll          t6, gp, sp
                  xori         s1, s0, 1458
                  auipc        sp, 494533
                  blt          t0, a6, 214f
                  xor          t5, a5, a3
                  srli         a1, a2, 16
                  sltiu        t3, t4, 376
214:              slti         s11, ra, 324
                  sub          s11, s9, t4
                  sub          a6, s9, s0
                  auipc        a1, 221061
                  srai         s6, a4, 20
                  lui          a1, 379650
                  bne          a4, sp, 231f
                  sltiu        s2, t6, -51
                  addi         zero, gp, -94
                  and          t5, a0, t4
                  srl          s4, t3, gp
                  bltu         s4, sp, 245f
                  bne          t2, t4, 243f
                  xor          a6, sp, s5
                  lui          a6, 806006
                  andi         a3, s10, 552
                  auipc        t3, 60191
231:              sll          s2, ra, t3
main_24:          jal          tp, 6f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          sp, 8f
3:                jal          gp, 12f
4:                jal          ra, 11f
5:                jal          t1, 7f
6:                jal          s1, 5b
7:                jal          tp, 0b
8:                jal          ra, 4b
9:                jal          t1, 1b
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               jal          ra, 13f
13:               nop
                  sll          t1, t4, s0
                  xori         t4, s10, -1509
                  sltiu        a3, a7, -241
                  slli         s8, s3, 17
                  sll          gp, t3, ra
                  sltiu        s0, s10, 1770
                  blt          a5, a3, 243f
                  slti         s2, a6, 1286
                  add          zero, a2, s0
                  xori         s9, a6, -38
                  srai         t0, t0, 3
243:              sltu         s8, a2, ra
                  sll          a4, t4, s2
245:              and          t4, s7, a4
                  slti         a3, a6, -1732
                  and          s1, s11, t0
                  or           s10, s8, tp
                  lui          sp, 1025617
                  blt          gp, a3, 254f
                  sltiu        s1, a5, 495
                  srai         t0, a2, 17
                  addi         a4, t5, 114
254:              slli         ra, s1, 19
                  xor          s6, s8, t6
                  bne          a5, a0, 273f
                  sll          s4, s5, a0
                  xor          t4, s3, s10
                  sra          gp, s10, s10
                  srl          t3, a0, t2
                  bne          s6, tp, 267f
                  blt          a2, s3, 272f
                  sra          s8, s10, t0
                  or           s10, zero, s1
                  srli         t3, s10, 21
                  andi         a5, t4, -204
267:              blt          gp, s11, 272f
                  sltu         s1, s11, s8
                  xor          zero, gp, s8
                  andi         t6, t2, 1519
                  sltiu        tp, s8, -1642
272:              or           a1, zero, s9
273:              lui          a6, 972419
                  bne          t1, t6, 291f
                  srai         s1, s2, 20
                  sub          t4, s11, s4
                  addi         tp, s0, 864
                  srai         s6, t1, 17
                  sll          a5, s4, s5
                  slt          s5, t3, tp
                  srl          a3, s8, s1
                  slli         s6, s11, 30
                  andi         s11, s9, 1671
main_19:          jal          tp, 21f
0:                jal          ra, 5f
1:                jal          ra, 16f
2:                jal          s2, 17f
3:                jal          a6, 23f
4:                jal          t1, 3b
5:                jal          ra, 6f
6:                jal          a1, 9f
7:                jal          sp, 2b
8:                jal          ra, 0b
9:                jal          t1, 7b
10:               jal          ra, 4b
11:               jal          a1, 14f
12:               jal          ra, 10b
13:               jal          t2, 19f
14:               jal          ra, 1b
15:               jal          ra, 20f
16:               jal          t6, 15b
17:               jal          ra, 11b
18:               jal          t1, 22f
19:               jal          a4, 8b
20:               jal          ra, 18b
21:               jal          ra, 13b
22:               jal          ra, 12b
23:               slti         s7, t3, 1074
                  blt          s3, t1, 296f
                  or           zero, s1, s10
                  auipc        s11, 543423
                  bge          s7, s11, 294f
                  sra          zero, s0, s1
                  blt          t0, s0, 305f
                  add          s2, ra, a4
291:              sra          s9, a5, s11
                  and          a3, tp, t0
                  srli         s1, a2, 0
294:              bltu         t2, t5, 313f
                  sll          a6, s11, sp
296:              bltu         tp, s5, 312f
                  sub          t2, t3, a6
                  ori          t0, s11, -598
                  xori         s2, ra, -366
                  xor          s6, a2, s0
                  srli         s7, s9, 13
                  or           s9, s2, t2
                  nop
                  or           s1, s7, s5
305:              xori         s9, a4, -1203
                  srli         t3, s7, 25
                  blt          a2, sp, 314f
                  bge          zero, a6, 319f
                  blt          ra, t0, 323f
                  andi         s0, t6, 800
                  blt          a3, s3, 327f
312:              or           zero, s0, t4
313:              bne          a6, a0, 314f
314:              slt          t6, t6, a0
                  slti         s10, a1, 336
                  xori         s7, t6, 1351
                  srli         s2, a2, 25
                  slti         s9, a1, 950
319:              slti         t3, s8, 322
                  addi         s9, a7, 12
                  srl          t0, ra, a7
                  bgeu         a7, a7, 333f
323:              xori         a3, s3, 1626
                  srli         a6, a1, 19
                  addi         t0, s2, -433
                  sltu         t0, s2, a7
327:              and          t0, a7, t5
                  slt          a5, s4, s1
                  slli         a5, t0, 23
                  xor          s7, a7, a5
                  xori         t6, a1, -806
                  and          t2, tp, ra
333:              bge          s6, s0, 352f
                  sra          a5, s11, ra
                  srli         s7, a5, 14
                  slti         s6, s1, 586
                  andi         s6, s7, 1690
                  bgeu         t3, a3, 344f
                  addi         a4, a2, -708
                  addi         gp, s2, -1920
                  and          s0, tp, t5
                  sub          s0, s0, s3
                  srai         a6, a2, 28
344:              blt          s3, t4, 356f
                  sll          t3, tp, s0
                  ori          s6, s9, -845
                  and          t5, a1, a0
                  sub          a3, s1, a2
                  sltu         zero, s10, s7
                  xori         a3, t6, -1153
                  blt          t5, a7, 367f
352:              nop
                  slti         t1, a7, -609
                  ori          s11, s4, -982
                  lui          a1, 201027
356:              nop
                  nop
                  sltu         t6, s10, t0
                  sll          s1, sp, s3
                  slti         t5, zero, -235
                  slt          s8, a4, s0
                  and          s11, t3, zero
                  beq          tp, sp, 370f
                  srli         t3, t0, 29
                  nop
                  add          s1, s10, t5
367:              blt          a7, a0, 371f
                  beq          a2, a4, 385f
                  blt          ra, s6, 372f
370:              srl          sp, t1, a6
371:              auipc        s9, 261408
372:              bltu         t1, s0, 389f
                  srli         t4, t3, 30
                  andi         s4, s7, -1235
                  ori          ra, s11, -1566
                  sll          s4, t3, s9
                  add          t3, s9, s0
                  srai         a5, s6, 28
                  and          a6, s1, zero
                  or           a3, t6, a5
                  sub          s7, s10, a1
                  srli         a1, a0, 27
                  sra          gp, s2, s9
                  lui          a7, 865107
385:              blt          sp, a5, 401f
                  sub          s0, sp, gp
                  and          s4, s3, t2
                  sltu         s6, a5, s8
389:              bne          s7, t2, 400f
                  add          gp, s4, s0
                  slt          ra, s6, t0
                  add          s2, s3, t1
                  bgeu         a6, s4, 404f
                  andi         zero, a7, 1330
                  bge          a5, a6, 400f
                  slli         s2, a3, 2
                  slli         s10, s11, 6
                  nop
                  slti         ra, t4, -529
400:              bge          s10, t1, 417f
401:              slti         t5, a1, -1014
                  auipc        a6, 179655
                  sltiu        a4, s8, 1952
404:              beq          t3, t4, 416f
main_42:          jal          tp, 2f
0:                jal          tp, 10f
1:                jal          s0, 8f
2:                jal          t2, 4f
3:                jal          ra, 16f
4:                jal          t1, 12f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          s6, 15f
8:                jal          ra, 11f
9:                jal          a3, 13f
10:               jal          t1, 3b
11:               jal          ra, 0b
12:               jal          t0, 14f
13:               jal          t1, 7b
14:               jal          t1, 6b
15:               jal          ra, 1b
16:               xor          a1, t2, s10
                  sra          tp, t6, sp
                  or           t4, gp, s4
                  bge          s7, t4, 423f
                  srli         a5, gp, 15
                  nop
                  xor          s4, a5, a2
                  ori          zero, zero, -1525
                  auipc        t6, 269772
                  blt          a1, a1, 420f
                  sra          t3, a0, a3
                  slli         s8, a6, 25
416:              blt          t5, tp, 430f
417:              srai         s5, s7, 8
                  sltu         t1, s0, s2
                  or           tp, s2, s8
420:              bge          a3, a3, 431f
                  sub          sp, a0, t0
                  ori          a7, a2, -1387
423:              sltiu        t5, s3, -1364
                  bge          a4, s3, 430f
                  slt          gp, t4, a0
                  sll          a6, s2, gp
                  auipc        t5, 492776
                  bltu         t6, s2, 435f
                  bge          gp, t2, 439f
430:              auipc        t6, 283668
431:              and          t6, s10, a4
                  slli         s5, t3, 28
                  blt          a4, sp, 438f
                  addi         t4, s6, -908
435:              add          s4, s3, a7
                  andi         t3, gp, -776
                  auipc        s6, 864170
438:              bge          s6, s10, 439f
439:              slli         a6, t1, 7
                  sltiu        s0, a0, -73
                  slli         a6, s8, 25
                  srai         s0, ra, 12
                  xori         a5, sp, -451
                  bltu         a5, t1, 451f
                  lui          s7, 551426
                  bltu         s6, a0, 450f
                  ori          t6, s11, 1768
                  or           s4, s8, zero
                  xori         sp, a5, -591
450:              ori          t0, s0, 990
451:              bltu         s2, a4, 468f
                  nop
                  lui          t0, 938951
                  blt          sp, ra, 474f
                  sra          t0, s0, s10
                  bltu         s3, tp, 461f
                  ori          a6, t3, 122
                  sltu         s0, s3, s4
                  sra          a6, a2, t0
                  bne          s1, s9, 462f
461:              or           a5, t2, s1
462:              srl          tp, s6, s0
                  xori         a3, t4, -466
                  addi         s7, s5, 1764
                  sltu         a1, tp, tp
                  xori         a4, t0, -499
                  sub          s5, t2, t2
468:              bgeu         s4, s8, 479f
                  or           tp, t2, s4
                  sub          s11, t1, t5
                  bgeu         s9, s2, 478f
                  ori          zero, ra, 1650
                  bgeu         a3, ra, 480f
474:              sra          a7, t3, a3
                  slli         t4, s11, 17
                  sll          s6, tp, s9
                  auipc        zero, 320054
478:              srai         a3, t6, 3
479:              and          s7, s11, zero
480:              srli         s5, t4, 19
                  and          a3, t3, s9
                  addi         t3, s9, 29
                  bltu         t6, s8, 485f
                  sltu         t4, s4, a3
485:              andi         ra, t0, -1344
                  slt          s4, s10, s8
                  bne          a2, t0, 491f
                  bgeu         t5, t3, 491f
                  xor          t2, a1, t4
                  and          s4, t1, a0
491:              sra          s4, a6, s9
                  sltu         s10, t4, a7
                  sra          s7, ra, a4
                  andi         a1, tp, 1786
                  bltu         s6, t2, 509f
                  slli         t3, t2, 4
                  beq          a2, s2, 507f
                  bltu         ra, tp, 514f
                  bge          t0, a3, 504f
                  slt          s7, s8, gp
                  sltu         s11, ra, sp
                  add          s1, s10, t5
                  srai         s9, s6, 4
504:              ori          t5, a2, -1516
                  nop
                  sltu         tp, t3, gp
507:              ori          s10, s1, 88
                  lui          t6, 354297
509:              sltu         t2, ra, s8
                  bne          s8, a3, 526f
                  xor          a4, a1, s1
                  bge          s9, a0, 524f
                  slti         tp, t2, 482
514:              sltu         t5, t0, t6
                  bgeu         s4, a7, 519f
                  srai         s1, sp, 3
                  srl          s0, t5, ra
                  sll          a3, a7, s0
519:              sltiu        s10, s7, -305
                  srli         t6, gp, 24
                  srli         s8, s9, 23
                  andi         s1, a0, -199
                  bge          s1, s1, 530f
524:              bltu         s4, s0, 544f
                  nop
526:              xor          s0, t1, sp
                  or           gp, a2, t6
main_16:          jal          tp, 11f
0:                jal          ra, 3f
1:                jal          ra, 14f
2:                jal          ra, 8f
3:                jal          ra, 13f
4:                jal          s5, 2b
5:                jal          a7, 4b
6:                jal          t1, 1b
7:                jal          t1, 12f
8:                jal          t1, 7b
9:                jal          ra, 10f
10:               jal          ra, 5b
11:               jal          t1, 9b
12:               jal          ra, 0b
13:               jal          ra, 6b
14:               xori         ra, s10, 1814
                  xor          s0, s5, a2
                  or           t3, tp, t4
530:              or           t1, s0, s0
                  lui          t6, 582649
                  bltu         s8, ra, 538f
                  or           t6, s1, s9
                  beq          s9, t0, 550f
                  xor          s1, t3, s3
                  srl          a1, t1, s6
                  add          t6, a7, t1
538:              nop
                  xor          s1, s2, a4
                  andi         gp, a6, -1849
                  sra          s4, gp, s6
                  nop
                  srl          t2, a7, a0
544:              xori         a4, gp, 1520
                  slt          s8, t0, gp
                  bgeu         s9, t1, 557f
                  slt          t1, tp, s2
                  beq          s5, a1, 555f
                  beq          s5, t3, 554f
550:              bne          a7, s10, 569f
                  srl          t5, a6, zero
                  bge          t4, s6, 558f
                  sll          a5, a2, a3
554:              bge          s1, s0, 555f
555:              addi         sp, gp, -1387
                  and          t3, s5, t4
557:              addi         a7, a6, 1579
558:              slti         s9, s0, -1307
                  bgeu         a0, s3, 564f
                  andi         a4, a4, 1239
                  ori          sp, t5, 1182
                  slti         zero, t3, 724
                  bltu         tp, t0, 580f
564:              and          t0, tp, s8
                  sub          sp, s6, a3
                  ori          a6, t3, -735
                  sll          s2, s7, a4
                  add          t4, a0, t6
569:              slt          s1, zero, s2
                  blt          s4, s8, 581f
                  sltu         a4, s1, s0
                  srai         a7, tp, 18
                  ori          t3, t4, -1085
                  or           s0, s10, s6
                  slli         s2, a1, 29
                  slli         s11, a5, 0
                  auipc        a3, 382227
                  xor          s1, ra, t4
                  bgeu         t0, s5, 596f
580:              bne          a7, zero, 592f
581:              andi         s2, s6, 1659
                  xori         a6, s5, 866
                  sra          s0, a0, t5
                  sltu         s6, s9, zero
                  sltu         s10, a7, s2
                  srl          zero, sp, a3
                  beq          s6, s9, 604f
                  bltu         s9, zero, 605f
                  sra          s11, a0, s4
                  add          t1, a0, s0
                  slt          a5, tp, a5
592:              sltiu        gp, s3, -1622
                  lui          s10, 513332
                  srai         s10, tp, 15
                  nop
596:              lui          a1, 78146
                  or           s8, s7, a2
                  blt          gp, tp, 609f
                  xori         t0, s11, 441
                  sltu         t1, s9, a3
                  sub          s4, s9, a2
                  xori         t1, s4, 106
                  slti         s1, a0, -124
604:              bltu         s0, s5, 621f
605:              add          sp, s4, t2
                  ori          a7, s8, -674
                  slli         s9, t3, 28
                  xori         s6, s6, 1
609:              add          a6, a6, s9
                  srli         a4, a3, 23
                  sltu         s2, t3, s11
main_28:          jal          tp, 1f
0:                jal          ra, 11f
1:                jal          ra, 17f
2:                jal          ra, 13f
3:                jal          s8, 5f
4:                jal          a6, 12f
5:                jal          sp, 14f
6:                jal          ra, 3b
7:                jal          t1, 2b
8:                jal          t1, 0b
9:                jal          ra, 19f
10:               jal          ra, 6b
11:               jal          a1, 9b
12:               jal          ra, 24f
13:               jal          s2, 10b
14:               jal          ra, 15f
15:               jal          ra, 8b
16:               jal          s11, 21f
17:               jal          ra, 23f
18:               jal          ra, 22f
19:               jal          ra, 20f
20:               jal          ra, 16b
21:               jal          ra, 18b
22:               jal          ra, 4b
23:               jal          ra, 7b
24:               slti         a7, s5, 1453
                  ori          t0, s11, -1696
                  add          s10, a5, t3
                  bge          a2, t4, 617f
                  sll          gp, t3, s2
                  lui          t6, 667533
617:              bgeu         a7, a6, 624f
                  add          s8, s1, s4
                  sltiu        a3, a5, -358
                  auipc        t6, 659322
621:              beq          s4, t0, 638f
                  bge          a3, s2, 633f
                  bltu         a7, zero, 635f
624:              sll          tp, a5, gp
                  slti         ra, zero, 894
                  bge          s0, a1, 643f
                  bgeu         s4, a0, 633f
                  or           t5, a1, a5
                  slt          s7, tp, s1
                  bgeu         a2, a4, 644f
                  auipc        t6, 793484
                  add          a6, s1, s1
633:              ori          s7, tp, 1380
                  srl          gp, gp, tp
635:              addi         t3, a5, 1801
                  slt          t6, s11, t1
                  sltiu        t0, t0, 1721
638:              srai         tp, t6, 3
                  add          s7, a5, s1
                  blt          a5, s5, 647f
                  srai         sp, ra, 25
                  srl          s11, s10, t6
643:              srai         s6, t0, 4
644:              sub          s5, sp, s3
                  slli         t1, a0, 22
                  lui          s7, 49285
647:              sra          t6, s1, t4
                  beq          t2, a0, 664f
                  lui          ra, 463350
                  srl          t2, a3, sp
                  andi         t2, a6, 2018
                  auipc        sp, 474640
                  auipc        t4, 1582
                  blt          sp, a6, 673f
                  srl          t2, a6, zero
                  add          ra, s0, ra
                  xor          zero, t4, s5
                  slli         t1, a2, 7
                  bgeu         a1, s1, 671f
                  sll          s0, a5, t0
                  add          s6, s6, a3
                  bne          t0, t1, 679f
                  addi         s4, t4, -1114
664:              slti         sp, t3, -1944
                  slli         s4, ra, 6
                  auipc        s4, 888387
                  slli         a1, t5, 27
                  lui          s1, 524289
                  auipc        s4, 365379
                  addi         s4, s11, -1602
671:              sltiu        t6, s5, 1675
                  bne          t4, zero, 692f
673:              bne          a1, s3, 674f
674:              bgeu         t1, a6, 679f
                  nop
                  bgeu         gp, t2, 683f
                  lui          t1, 561104
                  slti         a7, s0, -427
679:              slti         a1, zero, 1815
                  add          s4, s3, t2
                  bge          t0, t2, 685f
                  sra          s4, a3, a2
683:              xor          zero, zero, t2
                  beq          t5, t3, 691f
685:              bltu         sp, a4, 701f
                  sltiu        s5, t0, 1605
                  andi         zero, a7, -994
                  slt          a5, a7, s8
                  srai         s11, a0, 13
                  slt          s0, a4, s8
691:              andi         t0, ra, 171
692:              blt          t3, tp, 708f
                  sll          a4, t1, t1
                  slli         t2, s10, 20
                  add          a5, s8, zero
                  slt          s5, a0, a4
                  addi         ra, s10, 1798
                  addi         sp, s7, -917
                  sra          s5, s9, s6
                  srai         a7, a5, 5
701:              bgeu         sp, ra, 706f
                  sltiu        t6, zero, 1589
                  andi         s5, a7, -172
                  xor          s9, tp, t6
                  bge          s5, t4, 711f
706:              sltu         s4, t1, t2
                  andi         t0, s5, 20
708:              slt          s9, t4, a6
                  srai         ra, s1, 20
                  slli         s0, sp, 10
711:              bge          s0, t6, 713f
                  slt          a4, a0, a0
713:              bltu         s4, s10, 724f
                  sltu         t0, t0, t5
                  lui          zero, 91824
                  sltu         s7, s1, s7
                  andi         gp, t6, -1880
                  lui          s10, 634887
                  slli         s1, a0, 5
                  sll          tp, a7, s8
                  srai         a1, tp, 12
                  srl          a3, s10, s7
                  bgeu         t1, t2, 727f
724:              srli         s0, s6, 0
                  slli         t1, tp, 11
                  lui          zero, 154427
727:              bgeu         gp, t1, 732f
                  auipc        s2, 71563
                  sub          t6, t3, t0
                  lui          gp, 743312
                  add          zero, s0, a2
732:              sll          s0, a4, t4
                  nop
                  and          t6, a1, tp
                  slti         t6, s2, -1130
                  xor          s7, s11, s11
                  and          s11, s3, sp
                  sltiu        tp, s1, -1026
                  slli         s8, s0, 4
                  slli         s2, t3, 24
                  or           s5, t4, s9
                  blt          a3, a6, 752f
                  slli         t0, a6, 26
                  xori         t1, t0, 310
                  sub          s2, s6, t2
                  sra          s4, s7, s8
                  srai         a3, s1, 22
                  srl          s6, t1, t1
                  srli         t4, t3, 12
                  beq          tp, ra, 753f
                  nop
752:              xor          t1, t4, t3
753:              slti         a1, s4, -1910
                  addi         a5, s0, -151
                  slti         t4, s10, -1249
                  sub          s10, s7, a5
                  lui          t2, 989722
                  beq          s0, t5, 774f
                  and          s7, s11, a7
                  bne          a7, s6, 776f
                  lui          a6, 556929
                  xor          a7, t4, s2
                  srai         t2, s1, 21
                  and          zero, s8, s5
                  sltiu        s6, a6, 1278
                  bne          s8, a4, 773f
                  auipc        a4, 438661
                  or           ra, s9, t2
                  addi         t0, ra, 1980
                  andi         t3, s2, 921
                  xori         t0, a1, -1013
                  slt          s7, t2, a4
773:              slli         s0, zero, 16
774:              lui          a5, 102374
                  xori         a5, a7, -209
776:              slli         s10, s1, 21
                  auipc        ra, 353937
                  andi         s8, s6, 1445
                  sll          s7, t4, a1
                  sltiu        gp, t6, -993
                  xori         a5, a6, 68
                  bne          t4, s11, 787f
                  xor          s10, zero, s2
                  addi         t3, a0, 755
                  nop
                  bltu         t5, sp, 798f
787:              xor          tp, s0, s3
                  slli         ra, s8, 2
                  slt          a7, t0, gp
                  beq          ra, s11, 807f
                  andi         t1, s4, 114
                  sltiu        t3, s4, -1255
                  slti         sp, t0, 516
                  sltu         s9, t3, tp
                  sra          s2, t2, t1
                  sltiu        a6, s5, -506
                  xori         s5, gp, 1527
798:              sltiu        a7, s2, -386
                  sll          s7, s2, s9
                  slt          s11, zero, a0
                  sltiu        a7, tp, 1972
                  blt          sp, a4, 809f
                  bgeu         a1, a2, 823f
                  bge          s11, t4, 820f
                  sll          a4, s3, s5
                  addi         a6, t4, -105
807:              xori         s6, s5, -44
                  beq          s8, a6, 819f
809:              srl          s1, a7, s11
                  andi         sp, s5, -1205
                  srli         sp, a1, 17
                  sub          a1, a7, s11
                  addi         t0, s1, 28
                  ori          s7, t0, 1700
                  andi         s11, t3, -641
                  or           t6, t0, a7
                  xori         a5, s0, 513
                  add          s11, t3, s1
819:              srli         t1, t0, 28
820:              xor          s6, t6, a5
                  bltu         a5, a4, 823f
                  xor          t1, t5, a4
823:              nop
                  andi         ra, s4, -982
                  or           a1, zero, s1
                  sltu         s11, t6, ra
                  blt          s11, a1, 838f
                  sltu         sp, s7, ra
                  lui          a1, 3801
                  xor          t2, s3, a6
                  slti         s0, s5, 702
                  sra          s1, a2, t1
                  sltiu        a4, s7, -196
                  sltu         s11, a6, t6
                  xori         s6, zero, -293
                  sltu         t0, gp, a1
                  sub          s1, zero, s7
838:              ori          t3, t4, 1573
                  andi         a1, s1, 1057
                  bge          s2, a5, 859f
                  sltu         s1, s6, t3
                  xori         t5, a3, -1997
                  bne          s4, s6, 847f
                  xor          t0, a5, s4
                  xor          s1, t4, tp
                  sltiu        s4, s8, -1073
847:              blt          zero, t6, 864f
                  and          a5, a2, t1
                  slli         t3, t6, 25
                  add          s7, s10, zero
                  bge          s10, a5, 855f
                  sra          s8, s10, t1
                  nop
                  beq          s0, s2, 859f
855:              addi         a3, s1, -42
                  sra          s1, sp, a7
                  auipc        s7, 636338
                  bge          s4, t6, 870f
main_30:          jal          tp, 17f
0:                jal          ra, 16f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          s5, 6f
4:                jal          t1, 14f
5:                jal          ra, 3b
6:                jal          gp, 9f
7:                jal          t1, 2b
8:                jal          t2, 7b
9:                jal          ra, 15f
10:               jal          ra, 0b
11:               jal          ra, 5b
12:               jal          a7, 8b
13:               jal          ra, 18f
14:               jal          ra, 13b
15:               jal          ra, 4b
16:               jal          ra, 1b
17:               jal          ra, 12b
18:               xori         ra, sp, 787
859:              xori         a1, a6, 2024
                  bne          t5, s3, 865f
                  bne          t3, a7, 867f
                  and          s8, a4, s0
                  add          s5, tp, s11
864:              sltu         tp, s11, s11
865:              sub          s4, sp, tp
                  sub          s10, t2, s10
867:              add          a7, s8, t2
                  sltu         a7, t0, t6
                  beq          s2, a2, 876f
870:              sltu         a1, t3, s0
                  andi         s4, zero, -732
                  bltu         s11, tp, 879f
                  slt          s10, tp, s5
                  andi         t4, a3, 1261
                  sll          a3, t5, t6
876:              beq          s7, t3, 893f
                  sltiu        t5, s1, 303
                  and          a3, s7, a5
879:              sub          t4, s8, t0
                  or           t4, t5, a7
                  add          ra, s2, a4
                  lui          s0, 633263
                  sub          s4, a4, t3
                  auipc        s7, 35975
                  blt          s11, s6, 899f
                  bltu         s6, s10, 887f
887:              srli         t2, a3, 6
                  srai         a1, sp, 9
                  sra          s9, s2, t1
                  ori          s11, tp, 1997
                  lui          a6, 673313
                  slti         s7, t4, 1591
893:              srli         s9, t2, 15
                  xori         a3, a3, -1776
                  sll          s6, a1, t0
                  ori          t5, a3, -1652
                  sltiu        tp, s9, -1446
                  lui          t2, 881363
899:              add          t1, a4, ra
                  sltiu        ra, a0, 1340
                  ori          s6, s8, -1387
                  sub          s2, t1, s11
                  bgeu         t5, sp, 913f
                  andi         a1, ra, 140
                  slli         s2, sp, 4
                  slti         t1, t3, 1033
                  xor          t1, s2, s11
                  xori         s8, s10, 951
                  bgeu         t5, a4, 920f
                  addi         t2, s3, -1647
                  lui          s1, 235934
                  bge          t0, a2, 929f
913:              srai         t3, t4, 16
                  auipc        s11, 688923
                  srai         s2, t1, 11
                  blt          s6, t2, 922f
                  sll          a1, tp, s5
                  blt          t6, t6, 923f
                  slli         s6, t2, 25
920:              sltu         zero, a2, tp
                  xor          tp, a6, a5
922:              lui          t3, 109843
923:              addi         a5, a2, -686
                  slt          a4, t3, a2
                  sltiu        s11, a6, -310
                  or           s4, a2, s3
                  blt          ra, s7, 938f
                  nop
929:              bltu         s7, s5, 933f
                  nop
                  slt          s9, s6, t4
                  slt          s1, t1, s4
933:              srai         t4, t1, 11
                  sltu         t0, s11, a5
                  andi         a5, t6, -1609
                  sltu         t2, s0, s2
                  nop
938:              srl          t2, a0, a4
                  addi         a1, s8, 584
                  add          s4, t3, s7
                  slli         t0, s0, 22
                  auipc        ra, 827046
                  slt          s11, s0, sp
                  slli         sp, a0, 24
                  nop
                  bne          t6, s10, 951f
                  nop
                  auipc        s1, 459377
                  sub          s7, a5, s1
                  nop
951:              sll          zero, t4, t5
                  and          a5, s3, s5
                  bge          t5, t3, 963f
                  slti         s2, ra, -89
                  sltu         a6, s3, s5
                  andi         s10, a3, -1182
                  srl          t4, s8, t0
                  bge          s3, s11, 970f
                  slti         s2, s7, 1993
                  bne          a3, s0, 972f
                  bge          t6, a4, 968f
                  sll          t6, a6, s8
963:              xori         s9, a1, 1770
                  bge          t2, t0, 981f
                  ori          s0, s1, -1126
                  xor          t2, s4, s4
                  beq          s4, a6, 978f
968:              sra          t2, gp, a6
                  and          t6, s6, t5
970:              srli         s1, s7, 4
                  blt          s7, zero, 988f
972:              bgeu         s9, s7, 989f
                  xor          a1, tp, a6
                  andi         gp, t5, 780
                  slti         s8, a0, -1339
                  xor          s1, t6, a2
                  sltu         s6, t4, sp
978:              sltu         s8, ra, tp
                  bge          s8, t4, 995f
                  add          tp, t4, t6
981:              blt          a7, ra, 988f
                  and          s1, a4, tp
                  sub          a4, t3, s3
                  srl          sp, zero, s9
                  beq          ra, s6, 1001f
                  bgeu         sp, a4, 993f
                  srl          a6, t4, s1
988:              or           s7, t1, a4
989:              sra          s5, a7, s10
                  andi         t4, a2, -559
                  xor          a6, s4, s10
                  srli         gp, sp, 4
993:              and          gp, s3, t5
                  blt          s7, s0, 1001f
995:              andi         t5, s7, 1934
                  bge          s0, sp, 998f
                  srai         t2, a0, 1
998:              srai         s11, a1, 15
                  lui          a1, 907051
                  blt          a0, s8, 1014f
1001:             slti         s11, s6, -757
                  blt          s11, s0, 1022f
                  add          gp, s7, a4
                  srai         t2, s7, 1
                  bge          s4, t6, 1022f
                  auipc        t1, 976136
                  andi         t4, s10, 1380
                  bgeu         s9, s3, 1019f
                  beq          t0, a7, 1013f
                  slti         t2, a5, 700
                  sltiu        a4, zero, 1796
                  bne          s11, tp, 1013f
1013:             lui          t4, 598850
1014:             slti         s2, gp, 1127
                  srai         a4, s8, 0
                  sll          t6, t5, tp
                  sltu         a3, a6, s0
                  srli         a3, zero, 24
1019:             andi         tp, t6, -1750
                  sltiu        s9, s0, -776
                  addi         s6, a3, -880
1022:             slli         t6, a3, 24
                  andi         t5, a6, 504
                  and          s7, s3, s8
main_31:          jal          tp, 10f
0:                jal          t1, 6f
1:                jal          ra, 0b
2:                jal          t1, 4f
3:                jal          a5, 11f
4:                jal          a1, 14f
5:                jal          ra, 1b
6:                jal          a6, 7f
7:                jal          a6, 13f
8:                jal          ra, 9f
9:                jal          s4, 3b
10:               jal          ra, 5b
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               jal          ra, 15f
14:               jal          t1, 16f
15:               jal          a1, 12b
16:               auipc        a3, 988979
                  or           a4, s1, a6
                  bne          s3, zero, 1031f
                  nop
                  slt          sp, t2, a3
                  beq          a4, t6, 1048f
                  auipc        s7, 586871
1031:             beq          s10, t4, 1037f
                  lui          t0, 998984
                  lui          s1, 367238
                  bltu         t2, t4, 1037f
                  bne          t6, t0, 1041f
                  bge          s1, s1, 1052f
1037:             nop
                  andi         s9, a0, 457
                  sltiu        s1, a6, -1374
                  or           a7, t1, gp
1041:             and          t2, s1, tp
                  sltu         s10, t6, a1
                  sltiu        s4, gp, 649
                  sltiu        a3, a1, 1565
                  sll          a5, a3, s4
                  srl          tp, a2, t1
                  sll          gp, a0, s5
1048:             nop
                  blt          t6, a3, 1054f
                  slti         tp, t2, 155
                  addi         t0, tp, 1397
1052:             slli         a6, s10, 14
                  bltu         ra, s7, 1070f
1054:             bge          s4, s2, 1065f
                  srl          t0, a5, s5
                  ori          gp, a6, 768
                  beq          a5, s0, 1058f
1058:             slti         s7, t3, -2045
                  lui          a4, 890581
                  sltiu        s7, s2, -683
                  slt          sp, a5, gp
                  sltu         s11, t0, s8
                  ori          a3, s8, -621
                  bne          t2, a1, 1084f
1065:             auipc        s1, 230640
                  xori         sp, sp, 1651
                  xor          a1, a6, s8
                  bne          sp, t2, 1074f
                  auipc        t5, 170029
1070:             srl          a1, a6, s6
                  andi         a5, a7, -1210
                  nop
                  slt          a6, gp, s4
1074:             sll          a5, a3, sp
                  bge          a1, t3, 1080f
                  slti         a3, t6, -215
                  and          a5, a5, sp
                  nop
                  sltu         zero, tp, t6
1080:             addi         s5, a4, -1813
                  srai         t3, a1, 2
                  beq          sp, s2, 1093f
                  xori         a1, zero, -495
1084:             add          s0, sp, s2
                  ori          s1, ra, -1808
                  sub          a4, s7, s2
                  sll          zero, zero, s8
                  sltu         s6, s0, a1
                  blt          ra, ra, 1105f
                  add          s8, t6, s8
                  bge          t3, a7, 1094f
                  srli         s11, s9, 7
1093:             slli         s10, a3, 11
1094:             slt          ra, t6, s7
                  add          t0, a6, a1
                  andi         a3, s5, -488
                  sub          s0, s5, a7
                  sub          sp, s0, s7
                  nop
                  beq          t6, a7, 1117f
                  srli         s4, s11, 27
                  bge          s11, t3, 1114f
                  sltiu        t6, s8, 3
                  sra          a5, a2, ra
1105:             add          t5, s2, a1
                  bne          tp, s7, 1113f
                  and          sp, a4, t5
                  bne          s6, t4, 1110f
                  slli         tp, s5, 25
1110:             ori          s6, s0, -784
                  ori          s11, s11, -933
                  nop
main_25:          jal          tp, 19f
0:                jal          a6, 18f
1:                jal          ra, 3f
2:                jal          ra, 21f
3:                jal          s1, 2b
4:                jal          ra, 11f
5:                jal          t1, 26f
6:                jal          t1, 22f
7:                jal          ra, 14f
8:                jal          ra, 24f
9:                jal          t1, 6b
10:               jal          a3, 5b
11:               jal          ra, 13f
12:               jal          ra, 27f
13:               jal          t1, 0b
14:               jal          gp, 23f
15:               jal          ra, 16f
16:               jal          ra, 10b
17:               jal          ra, 7b
18:               jal          ra, 15b
19:               jal          ra, 20f
20:               jal          tp, 9b
21:               jal          t1, 25f
22:               jal          ra, 8b
23:               jal          ra, 1b
24:               jal          ra, 4b
25:               jal          gp, 28f
26:               jal          s2, 12b
27:               jal          ra, 17b
28:               sltiu        t6, a3, 154
1113:             sub          sp, t5, s2
1114:             slti         s7, tp, -1426
                  xori         a5, s6, -394
                  sll          t2, a4, s2
1117:             andi         s6, zero, -430
                  or           s7, s10, tp
                  andi         t3, gp, -58
                  blt          zero, t3, 1127f
                  slt          t1, s10, t1
                  slti         s4, a2, 1880
                  srl          s0, ra, a4
                  srli         a1, a7, 29
                  or           t1, s0, tp
                  slt          zero, t2, a2
1127:             sll          s1, s10, s7
                  sra          tp, a2, a4
                  xor          t1, s6, t2
                  auipc        t0, 814102
                  slt          t6, t0, t6
                  slli         s9, s7, 16
                  sltiu        s10, t6, 862
                  xori         t0, s7, -363
                  blt          s7, a5, 1139f
                  andi         a6, s7, 369
                  or           a3, t0, t0
                  sltiu        s6, sp, 967
1139:             addi         a7, t2, -1579
                  sll          a4, a7, s0
                  sltu         sp, s10, t1
                  sll          s5, s10, s10
                  srai         tp, s1, 5
                  beq          a7, s7, 1155f
                  add          tp, a6, sp
                  slti         zero, s1, -1964
                  lui          t6, 920608
                  bltu         s3, s6, 1162f
                  auipc        s9, 688860
                  andi         s1, sp, -1917
                  sltiu        t3, a7, 1327
                  srl          a5, t1, s3
                  sra          s6, a1, t6
                  or           s10, t2, s3
1155:             sltu         tp, ra, s0
                  slti         t5, ra, -1752
                  and          s11, s10, a4
                  bgeu         gp, s5, 1170f
                  bltu         s11, s0, 1165f
                  nop
                  sll          a4, t1, a1
1162:             and          t2, s8, s9
                  andi         gp, t0, -737
                  sltiu        t0, s2, 1690
1165:             bge          t2, t5, 1184f
                  bltu         a3, zero, 1171f
                  sra          ra, s6, tp
                  sltu         sp, s5, t3
                  xori         t4, s3, -1913
1170:             xor          s9, s7, s7
1171:             bltu         a6, a3, 1187f
                  beq          s2, t6, 1189f
                  blt          a5, s9, 1180f
                  bgeu         s1, t2, 1191f
                  slt          zero, s8, tp
                  sll          t0, s10, t0
                  ori          s1, s8, -635
                  add          a3, s0, t6
                  or           gp, a1, a4
1180:             bgeu         s6, a6, 1187f
                  srli         s11, s10, 21
                  xori         t5, s10, -1595
                  blt          t5, ra, 1193f
1184:             or           s0, t3, a7
                  andi         tp, a3, -590
                  addi         s11, zero, 526
1187:             auipc        a6, 300714
                  sra          s0, a3, a7
1189:             bltu         s5, sp, 1193f
                  bgeu         zero, tp, 1206f
1191:             sltiu        a6, s9, -1249
                  sub          zero, t3, s0
1193:             bltu         s2, s3, 1199f
                  sra          t2, s4, s8
                  slt          t2, a4, s10
                  add          a1, s5, a3
                  bge          gp, s2, 1209f
                  blt          s10, s8, 1202f
1199:             srl          s5, a3, s8
                  beq          a0, s6, 1206f
                  srli         ra, t4, 19
1202:             sll          ra, t1, a5
                  srai         a1, s9, 24
                  sltu         t3, s4, t1
                  slt          t5, t4, a0
1206:             bgeu         a6, a0, 1217f
                  srai         s9, s10, 19
                  bge          a6, t5, 1225f
1209:             and          s8, s9, s5
                  and          s8, s1, s6
                  srl          s2, t5, t4
                  bne          t1, tp, 1228f
                  add          s7, a5, t0
                  slli         zero, t4, 26
                  lui          a3, 339082
                  bge          ra, a6, 1233f
1217:             andi         a6, s4, -1071
                  beq          s4, tp, 1234f
                  sub          s8, t0, gp
                  andi         a4, t6, -1030
                  ori          s10, s5, 270
                  sltiu        s2, a5, -1554
                  bge          zero, s0, 1237f
                  auipc        t4, 451785
1225:             sll          s5, ra, sp
                  beq          s6, t6, 1229f
                  xori         s2, ra, -1391
1228:             beq          a1, a7, 1245f
1229:             lui          s10, 484034
                  and          t2, a6, s4
                  bgeu         ra, a2, 1243f
                  sltiu        s7, a4, -299
1233:             srli         s0, a2, 19
1234:             blt          s9, t2, 1244f
                  beq          t6, tp, 1242f
                  bgeu         s7, sp, 1237f
1237:             sll          t2, t1, s10
main_22:          jal          tp, 9f
0:                jal          t1, 5f
1:                jal          t1, 12f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          s11, 14f
5:                jal          ra, 2b
6:                jal          ra, 13f
7:                jal          t1, 4b
8:                jal          s7, 3b
9:                jal          ra, 10f
10:               jal          ra, 0b
11:               jal          ra, 8b
12:               jal          a7, 11b
13:               jal          t1, 1b
14:               ori          s7, s8, -1287
                  slt          s6, t5, s4
                  bge          s2, s1, 1246f
                  sltiu        s4, t3, 494
                  slli         zero, s4, 25
1242:             xori         a1, s3, 1953
1243:             blt          s1, sp, 1260f
1244:             slt          a5, a3, a5
1245:             bne          a0, gp, 1250f
1246:             srli         a3, a0, 21
                  sll          s0, t0, t3
                  xor          s4, tp, s0
                  addi         s0, t3, -892
1250:             andi         s5, s8, 1907
                  bltu         t6, s8, 1262f
                  xor          s5, zero, a7
                  bne          a3, a4, 1255f
                  srli         s9, ra, 25
1255:             sltu         s2, a3, s10
                  beq          a6, t2, 1275f
                  or           a3, a4, a6
                  sra          s10, a3, a3
                  andi         t2, a4, 1464
main_43:          jal          tp, 1f
0:                jal          t6, 25f
1:                jal          s7, 26f
2:                jal          s2, 9f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          ra, 17f
6:                jal          ra, 5b
7:                jal          s6, 16f
8:                jal          ra, 22f
9:                jal          ra, 6b
10:               jal          t1, 23f
11:               jal          gp, 21f
12:               jal          gp, 2b
13:               jal          ra, 8b
14:               jal          s2, 15f
15:               jal          t1, 11b
16:               jal          ra, 0b
17:               jal          ra, 19f
18:               jal          ra, 12b
19:               jal          s2, 24f
20:               jal          ra, 4b
21:               jal          t3, 18b
22:               jal          t1, 10b
23:               jal          ra, 20b
24:               jal          s5, 7b
25:               jal          gp, 27f
26:               jal          t1, 3b
27:               srai         t2, t4, 0
1260:             or           s7, s9, s3
                  lui          tp, 485323
1262:             nop
                  and          a1, a7, t4
                  nop
                  sltu         s5, a3, zero
                  andi         s5, a5, -618
                  nop
                  bne          s10, a0, 1284f
                  bge          s3, a1, 1274f
                  auipc        t3, 545571
                  ori          s6, s6, 821
                  blt          a4, sp, 1277f
                  blt          a2, s8, 1293f
1274:             blt          sp, t0, 1281f
1275:             sub          s9, s0, s2
                  and          a5, a0, a1
1277:             srai         t0, s0, 8
                  add          t6, zero, a4
                  slli         sp, s1, 16
                  sltu         s11, zero, a0
1281:             add          t6, sp, s2
                  auipc        t4, 111605
                  srl          t4, s6, s0
1284:             lui          ra, 945473
                  andi         s9, t3, -1453
                  ori          s8, s11, 927
                  slt          tp, gp, s4
                  srai         s1, sp, 2
                  addi         s7, s10, -1494
                  srli         s5, zero, 19
                  blt          s6, t2, 1295f
                  slli         gp, a7, 17
1293:             beq          s10, a4, 1300f
                  sra          a4, s8, s2
1295:             slli         t4, tp, 27
                  slti         a7, s5, 1612
                  sltu         gp, t0, a1
                  sltiu        t0, a2, -1130
                  lui          ra, 299135
1300:             bgeu         s11, s8, 1311f
                  add          a1, t4, s7
                  sltu         t3, s9, s8
                  slt          t1, a3, s7
                  slt          a7, a0, a3
                  xori         t6, zero, 312
                  beq          t0, s4, 1317f
                  xori         a6, a1, -714
                  xori         t1, a5, 956
                  srl          sp, a3, t4
                  bltu         s0, a4, 1312f
1311:             slti         s0, s0, 744
1312:             auipc        a6, 222810
                  srli         t2, s9, 18
                  or           a4, s4, t2
                  slt          a3, gp, a7
                  beq          s6, zero, 1327f
1317:             sub          t1, t3, ra
                  sltiu        s8, a5, -1163
                  add          s11, s7, a7
                  add          t1, s1, s3
                  sll          s9, gp, s4
                  slli         s11, sp, 13
                  add          s1, s9, s5
                  srai         t3, t1, 11
                  auipc        t0, 609274
                  bltu         t1, s5, 1333f
1327:             beq          s7, t5, 1338f
                  srli         s11, s9, 27
                  xor          t1, t6, a1
                  sra          s8, a6, s10
                  bge          s2, s5, 1347f
                  ori          t4, a3, 1936
1333:             add          tp, a7, a7
                  bge          t1, t4, 1341f
                  nop
                  auipc        a4, 579168
                  beq          a0, s2, 1356f
1338:             bne          a3, t4, 1344f
                  andi         s4, t1, 309
                  bge          tp, s5, 1344f
1341:             ori          t4, s11, 860
                  auipc        gp, 112879
                  bne          s10, s5, 1347f
1344:             sll          s0, a6, s10
                  slt          s1, s9, s7
                  blt          s1, s0, 1353f
1347:             lui          t0, 390936
                  sra          t4, s2, t5
                  bltu         gp, s5, 1366f
                  and          s11, s2, zero
                  addi         s5, a1, 129
                  ori          s5, a4, 817
1353:             slli         t3, t4, 25
                  or           s6, s8, zero
                  slti         a6, s7, 132
1356:             srli         s7, t5, 18
                  bgeu         a0, t4, 1371f
                  xor          s7, a4, sp
                  andi         s10, s0, 429
                  beq          s4, a6, 1376f
                  nop
                  addi         t5, gp, -498
                  srl          s11, t2, s1
                  andi         t0, s8, -1553
                  sub          s0, a3, t5
1366:             bne          s7, t2, 1382f
                  srai         t2, s10, 16
                  sll          a5, tp, s0
                  or           a5, s2, sp
                  blt          sp, tp, 1382f
1371:             beq          s10, t1, 1388f
                  slt          a4, ra, sp
                  bne          t4, s9, 1383f
                  xori         a6, s9, -1701
                  slt          s1, s7, ra
1376:             xori         a5, gp, 1009
                  sra          s0, s6, a1
                  sltiu        t1, a4, 1295
                  add          s11, s11, t6
                  slt          t5, s4, t2
                  andi         t3, t3, -486
1382:             ori          t6, s9, -733
1383:             srli         a6, t6, 17
                  nop
                  ori          t0, a4, -81
                  sltiu        a6, s2, 1052
                  bge          zero, gp, 1392f
main_27:          jal          tp, 5f
0:                jal          ra, 14f
1:                jal          t1, 16f
2:                jal          t1, 4f
3:                jal          ra, 6f
4:                jal          ra, 19f
5:                jal          ra, 8f
6:                jal          ra, 11f
7:                jal          ra, 0b
8:                jal          t1, 1b
9:                jal          ra, 3b
10:               jal          ra, 17f
11:               jal          t1, 20f
12:               jal          s10, 13f
13:               jal          a4, 10b
14:               jal          ra, 23f
15:               jal          sp, 12b
16:               jal          t1, 15b
17:               jal          t5, 9b
18:               jal          s8, 22f
19:               jal          t1, 21f
20:               jal          s4, 18b
21:               jal          s7, 7b
22:               jal          ra, 2b
23:               srli         ra, s0, 29
1388:             xor          a3, t3, s0
                  bge          a7, t5, 1406f
                  sltu         s10, s3, a7
                  srai         t4, s2, 1
1392:             bgeu         gp, t3, 1409f
                  or           s1, s9, t2
                  addi         s8, t3, 961
                  sra          s2, a5, ra
                  sltiu        t2, s9, -515
                  auipc        zero, 339983
                  slt          a3, tp, a1
                  bgeu         a0, t0, 1404f
                  bne          a1, t3, 1401f
1401:             xor          t3, sp, s3
                  srl          t2, s7, s9
                  nop
1404:             xor          tp, s11, t4
                  srl          s10, s6, gp
1406:             xor          t6, t4, t0
                  srl          t4, a5, a5
                  srai         a7, t5, 9
1409:             bge          t5, s8, 1421f
                  andi         s1, t1, 1378
                  xor          s2, t3, s5
                  beq          s9, a6, 1417f
                  auipc        gp, 598269
                  srl          zero, a5, t6
                  sltu         t0, s2, s11
                  sub          tp, tp, t6
1417:             srai         t6, s2, 21
                  nop
                  blt          s0, a7, 1426f
                  bgeu         a6, s9, 1423f
1421:             bgeu         a6, s10, 1427f
                  ori          gp, s9, -1788
1423:             beq          s1, s11, 1443f
                  sll          a4, ra, t1
                  srai         s5, t3, 23
1426:             sltiu        t6, ra, -646
1427:             xori         t2, s9, 1863
                  lui          a7, 387644
                  nop
                  slli         a1, a1, 16
                  lui          s10, 988291
                  beq          t3, t0, 1436f
                  slt          s2, s9, a4
                  bltu         a2, sp, 1453f
                  sltiu        a3, t0, 1860
1436:             slt          a7, s5, t4
                  beq          s10, s10, 1444f
                  addi         s11, ra, 1854
                  srl          s0, a4, a4
                  xor          a6, t6, s10
                  bge          t2, s1, 1457f
                  sub          zero, s1, t4
1443:             addi         a3, ra, -1721
1444:             addi         a7, t4, -1730
                  srli         a5, tp, 16
                  slli         zero, t2, 12
                  slt          s0, s3, s11
                  bne          s8, zero, 1451f
                  andi         t4, t4, -289
                  ori          a3, gp, -859
1451:             bgeu         a7, s5, 1457f
                  bne          t4, ra, 1464f
1453:             addi         zero, s8, -1646
                  or           t3, t3, s9
                  lui          t6, 620370
                  slt          t2, t0, a4
1457:             nop
                  slt          t0, a6, a4
                  add          a1, s2, a3
                  srli         a1, s2, 13
                  and          a5, t1, s5
                  srl          s6, s10, s5
                  and          s0, t0, s9
1464:             addi         s5, t1, 1923
                  xor          zero, a7, s3
                  srl          s2, ra, t3
                  bge          s8, zero, 1478f
                  bltu         t6, a4, 1473f
                  sub          s4, s0, t1
                  blt          s1, s9, 1484f
                  bne          s3, s8, 1476f
                  sub          s5, tp, t3
1473:             ori          t3, t6, 391
                  xor          s5, s9, a5
                  sra          t3, a3, a3
1476:             bne          a3, s1, 1483f
                  add          a3, t4, s9
1478:             xor          t6, t1, s5
                  srai         t4, gp, 23
main_39:          jal          tp, 2f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          sp, 10f
3:                jal          t1, 11f
4:                jal          s4, 6f
5:                jal          ra, 1b
6:                jal          tp, 7f
7:                jal          ra, 3b
8:                jal          t1, 9f
9:                jal          tp, 0b
10:               jal          ra, 5b
11:               xori         s2, a0, 442
                  slti         t0, a6, -1264
                  ori          t4, a2, -856
                  sra          t1, a4, tp
1483:             sll          s10, a7, s10
1484:             auipc        s2, 375898
                  slti         t2, t0, -1235
                  sltu         t3, sp, s10
                  beq          s1, a0, 1493f
                  slti         gp, a1, 559
                  lui          a5, 389939
                  sltu         a3, s1, t5
                  lui          sp, 516126
                  srl          a7, t4, s0
1493:             and          t4, a0, a5
                  andi         a1, s6, 80
                  sub          t3, s10, t5
                  andi         s7, t3, -1422
                  slli         s7, a3, 6
                  bgeu         a5, ra, 1500f
                  blt          s10, s4, 1516f
1500:             ori          t1, t0, 1189
                  addi         a3, a6, 2040
                  sub          a6, s4, a5
                  auipc        t3, 968268
                  srai         s5, t3, 23
                  lui          s7, 957878
                  and          t4, s2, zero
                  nop
                  ori          s10, s1, 1623
                  ori          t6, sp, -1412
                  sltiu        t6, s9, 422
                  lui          ra, 307499
                  ori          s9, s1, 367
                  andi         t5, a3, 932
                  sll          zero, s5, a7
                  slti         tp, s1, 855
1516:             slli         s0, s6, 19
                  nop
                  and          s0, t1, a5
                  ori          t2, ra, -199
                  srai         zero, s9, 9
                  bne          a4, s9, 1532f
                  addi         t4, a4, 843
                  sltiu        s8, sp, -1032
                  srai         zero, s1, 1
                  sltu         tp, t3, s4
                  sltu         s4, a0, s4
                  bgeu         t2, t2, 1544f
                  andi         tp, s5, 844
                  xori         s9, s10, 1093
                  bne          a6, t3, 1531f
1531:             auipc        ra, 364957
1532:             nop
                  sltiu        s11, t3, -1178
                  sll          zero, t1, t2
                  bge          s0, s5, 1552f
                  addi         s0, s10, -1469
                  sltiu        s4, s10, -1835
                  auipc        s9, 665748
                  srai         s8, s10, 18
                  beq          a7, gp, 1550f
                  srai         t5, a2, 10
                  add          s2, t5, a3
                  slli         a3, s3, 14
1544:             blt          a1, s11, 1548f
                  slt          s5, s5, s10
                  bgeu         t5, a1, 1558f
                  xor          a4, t2, s9
1548:             sub          gp, s9, s6
                  sll          a5, zero, a3
1550:             srli         s11, a0, 5
                  bgeu         ra, a1, 1567f
1552:             sltiu        s8, s5, -1355
                  slti         t0, s8, -1596
                  slt          a5, s11, t2
                  nop
                  andi         s6, s8, 1407
                  xori         a3, s6, 1736
1558:             andi         zero, s1, 1250
                  sll          ra, t5, t2
                  bltu         tp, t1, 1580f
                  srl          a6, t6, t5
                  auipc        s10, 208300
                  sra          a5, s1, t1
                  srl          s7, s11, t3
                  bgeu         t1, t2, 1570f
                  bltu         s7, s0, 1573f
1567:             slt          s10, s9, a1
                  bltu         t0, a0, 1585f
                  slli         t5, t4, 31
1570:             andi         zero, t4, 1432
                  srl          t0, s6, t1
                  lui          a4, 594832
1573:             sra          s1, zero, s5
                  add          s1, a2, tp
                  slli         s5, t5, 10
                  sra          a5, s4, s4
                  and          s5, s4, s2
                  xor          t5, gp, s2
main_33:          jal          tp, 15f
0:                jal          ra, 22f
1:                jal          ra, 18f
2:                jal          ra, 27f
3:                jal          t1, 11f
4:                jal          ra, 10f
5:                jal          s8, 6f
6:                jal          ra, 26f
7:                jal          ra, 20f
8:                jal          t0, 7b
9:                jal          ra, 30f
10:               jal          ra, 28f
11:               jal          gp, 19f
12:               jal          ra, 4b
13:               jal          t1, 5b
14:               jal          ra, 9b
15:               jal          t0, 0b
16:               jal          t0, 2b
17:               jal          t1, 3b
18:               jal          t1, 13b
19:               jal          tp, 16b
20:               jal          a3, 17b
21:               jal          ra, 23f
22:               jal          s8, 25f
23:               jal          ra, 1b
24:               jal          ra, 14b
25:               jal          ra, 21b
26:               jal          ra, 29f
27:               jal          ra, 12b
28:               jal          ra, 24b
29:               jal          t1, 8b
30:               sll          t3, a5, a2
                  add          t6, t3, a4
1580:             sub          t5, s4, t3
                  auipc        t2, 897676
                  bgeu         gp, a3, 1593f
                  auipc        gp, 1000948
                  bge          s1, a2, 1600f
1585:             lui          a5, 842007
                  xori         t5, s2, 827
                  bgeu         a5, s3, 1594f
                  or           s5, s5, t4
                  and          ra, s11, s3
                  andi         t3, s2, 913
                  sltu         t1, s10, t0
                  xori         s2, a0, 909
1593:             sub          t1, s6, s10
1594:             slt          s0, s11, t3
                  beq          a1, a0, 1600f
                  bgeu         a1, a5, 1598f
                  ori          s0, a3, -1972
1598:             srli         s6, s9, 29
                  sll          t1, sp, t0
1600:             srai         a3, t6, 10
                  slli         tp, a7, 7
                  andi         a7, a5, -866
                  srli         a6, a7, 25
                  bgeu         t1, t3, 1615f
                  sltu         t0, s6, tp
                  sra          a5, s9, a4
                  sra          t3, s1, a2
                  slt          a1, sp, zero
                  sra          s7, s7, s10
                  srli         s7, ra, 29
                  slti         t5, a4, -382
                  sltiu        a3, a1, -269
                  srli         s0, sp, 30
                  bltu         s1, tp, 1630f
1615:             auipc        t1, 682786
                  bgeu         s0, s10, 1632f
                  slt          t6, a1, s3
                  addi         a1, s10, 63
                  sra          s6, a1, gp
                  bgeu         a1, gp, 1634f
                  bne          gp, sp, 1625f
                  slti         a6, a5, 1752
                  srli         s1, t0, 28
                  bne          a0, s8, 1636f
1625:             sll          s9, s8, s10
                  add          a3, t5, ra
                  srl          s5, a0, a3
                  sll          s6, sp, s3
                  or           ra, t1, t0
1630:             bge          ra, gp, 1650f
                  sra          t5, s7, t2
1632:             sll          s8, t6, a6
                  ori          s4, s5, -1659
1634:             sll          a7, t5, a2
                  bltu         a7, s6, 1646f
1636:             sll          a6, t0, a4
                  ori          s10, sp, -1689
                  xor          t3, sp, a6
                  bltu         gp, s0, 1650f
                  ori          t0, s5, 1367
                  srai         s6, sp, 16
                  xor          t0, zero, s8
                  slti         t6, t5, 476
                  bne          s5, s10, 1661f
                  srl          ra, t5, a6
1646:             add          s7, a3, s8
                  slli         t5, a3, 17
                  sra          a3, sp, s5
                  srl          s1, a5, t2
1650:             slli         t0, t6, 4
                  srai         s4, t2, 8
                  sra          t3, a0, s6
                  addi         s11, a7, -1006
                  bge          s4, s7, 1660f
                  blt          t2, gp, 1667f
                  bgeu         ra, s6, 1663f
                  slt          s4, a0, t5
                  slti         s10, s8, -564
                  addi         s10, s10, 1745
1660:             ori          s8, s8, -1529
1661:             auipc        a1, 93404
                  sra          s6, zero, t5
1663:             bltu         zero, a0, 1664f
1664:             sltu         a7, s2, s8
                  xor          ra, t4, s1
                  sltu         s2, a5, ra
1667:             sll          s11, a7, s8
                  bgeu         a7, s3, 1675f
                  sll          t2, zero, t5
                  blt          t1, s3, 1687f
                  and          a5, s11, s9
                  bgeu         s4, t1, 1676f
                  bltu         s11, s10, 1678f
                  xori         s9, a5, -1802
1675:             lui          s9, 970148
1676:             andi         a6, zero, -500
                  sra          s1, t6, a2
1678:             srli         t0, a2, 3
                  blt          s11, a1, 1698f
                  slt          s8, s11, a2
                  srai         t1, s10, 21
                  slt          t6, t6, a1
                  bgeu         s10, t6, 1699f
                  xor          s4, s11, s6
                  xori         t3, tp, -220
                  xor          t2, t6, gp
1687:             sll          t3, gp, t1
                  beq          s0, s10, 1695f
                  xori         t3, s7, 1245
                  sra          s8, s8, t1
                  slli         t6, t1, 11
                  bne          tp, a2, 1695f
                  or           s11, a0, s7
                  bne          a5, s1, 1700f
1695:             slt          t0, t2, t5
                  sltiu        s2, s2, -1047
                  nop
1698:             srl          t1, s4, s9
1699:             srli         t3, s2, 14
1700:             slt          sp, s2, s6
                  xori         s11, s6, -1976
                  nop
                  slli         t5, s0, 30
                  xor          ra, a5, a2
                  bgeu         s9, zero, 1710f
                  lui          s4, 549495
                  beq          a0, t6, 1724f
                  xori         a1, s2, 1595
                  lui          s10, 492173
1710:             add          s2, zero, t6
                  sltiu        gp, a3, 1766
                  and          s8, t0, sp
                  sltiu        zero, s9, 1947
                  andi         s0, s0, 1016
                  sltu         s10, s11, zero
                  sltu         t5, a6, sp
                  bgeu         s7, s5, 1727f
                  srai         t2, s6, 31
                  slt          t0, ra, s11
                  bltu         s11, s9, 1737f
                  beq          s8, t2, 1728f
                  xor          t3, t1, t4
                  bgeu         t2, t6, 1727f
1724:             nop
                  srli         gp, s5, 14
                  nop
1727:             xori         t1, t3, 1370
1728:             bne          t4, tp, 1733f
                  blt          s0, t5, 1746f
                  bne          tp, t5, 1735f
                  add          t0, t3, s3
                  srli         s1, t6, 28
1733:             nop
                  sll          a7, s9, t5
1735:             slt          s2, a4, s5
                  sltu         s6, a4, t6
1737:             andi         s5, a7, -174
                  sltu         a6, t2, t3
                  lui          s4, 354999
                  sub          a7, t1, s0
                  andi         sp, s11, 286
                  bgeu         a5, s7, 1753f
                  nop
                  slt          t5, s8, s7
                  auipc        ra, 112200
1746:             srli         s4, s2, 6
                  sra          s7, s5, s3
                  xor          a4, t2, a7
                  slti         a5, s9, 260
                  xori         gp, t2, -665
                  add          gp, t4, t3
                  bne          a2, a6, 1768f
1753:             bgeu         tp, a2, 1769f
                  xor          s8, zero, a7
                  bgeu         s1, zero, 1769f
                  sltiu        a7, s2, -613
                  slt          s7, t4, a0
                  bgeu         s0, ra, 1763f
                  bge          s3, gp, 1778f
                  nop
                  srai         s9, t4, 10
                  auipc        sp, 845741
1763:             srl          s8, a7, s9
                  beq          a3, t6, 1770f
                  bne          s11, t6, 1777f
                  ori          zero, t1, 172
                  bge          a1, t0, 1774f
1768:             xor          s7, a0, a6
1769:             or           t1, a3, zero
1770:             srl          s9, sp, s5
                  sub          a7, sp, s5
                  srli         s5, sp, 19
                  bgeu         a4, s10, 1780f
1774:             sub          t4, t0, a5
                  xor          a7, a5, s10
                  bne          a4, a6, 1782f
1777:             blt          sp, t3, 1778f
1778:             slli         tp, tp, 20
                  ori          zero, s10, 663
1780:             sll          s2, a4, t4
                  bgeu         s6, s5, 1792f
1782:             sltiu        s7, gp, -1659
                  sltiu        a4, s8, -333
                  slti         s10, t3, -894
                  bne          a7, t1, 1789f
                  sltiu        sp, s4, -192
                  lui          a1, 713057
                  xor          sp, zero, s5
1789:             xori         a4, s10, -965
                  sll          t2, a4, zero
                  andi         t6, gp, 266
1792:             sltu         s4, s4, t4
                  sltu         t6, t1, t0
                  auipc        s2, 412210
                  addi         t1, t1, 230
                  andi         a3, ra, 760
                  bne          s6, s1, 1804f
                  sltu         a7, a5, a1
                  nop
                  slli         s6, gp, 29
                  or           s6, s1, t6
                  add          t1, ra, s6
                  xori         a1, s7, -314
1804:             slli         t1, t1, 29
                  or           a1, a3, t1
                  bltu         zero, a6, 1823f
                  and          s6, a4, s6
                  slti         s5, a6, -1760
                  srli         s1, s1, 12
                  blt          t5, s5, 1820f
                  slli         s7, t2, 24
                  srl          t6, a0, a4
                  bltu         a5, t5, 1830f
                  lui          s1, 287345
                  xor          s8, a0, s4
                  sra          t2, a6, a4
                  srli         t5, s3, 10
                  sll          s7, s10, s10
                  srli         tp, a1, 28
1820:             ori          s7, s1, 965
                  srli         tp, sp, 10
                  beq          s9, s7, 1829f
1823:             sra          s7, sp, t5
                  sltu         gp, gp, sp
                  beq          s2, t3, 1842f
                  bltu         s5, s8, 1838f
                  sltiu        sp, t0, -779
                  slli         t3, s6, 7
1829:             srai         a6, ra, 21
1830:             bltu         s3, s9, 1833f
                  blt          t3, s11, 1847f
                  srl          s4, sp, s4
1833:             slt          s7, sp, s0
                  auipc        t1, 237054
                  sltu         s11, t1, s2
                  srli         a7, a4, 21
                  beq          t3, s6, 1848f
1838:             sub          a4, a2, s0
                  andi         a1, a4, -729
                  sltu         a7, s2, s9
                  sra          t1, s8, t1
1842:             beq          t2, a2, 1844f
                  bgeu         s2, s7, 1863f
1844:             sltu         sp, t0, a1
                  sltiu        s9, sp, -1404
                  and          t4, a3, t2
1847:             addi         a3, s3, -1932
1848:             sltiu        s5, a4, 422
                  sub          t1, s9, s5
                  slli         t6, ra, 13
                  and          t2, tp, s0
                  slli         t3, a4, 31
                  slti         t0, t2, 1976
                  srl          a7, sp, a1
                  ori          t4, s5, -1603
                  slli         s4, a1, 16
                  lui          gp, 405543
                  sra          t0, s8, gp
                  bge          gp, a1, 1875f
                  or           t3, s1, s1
                  sra          t1, a1, zero
                  lui          t3, 97052
1863:             bltu         a2, a2, 1883f
                  sltiu        ra, a7, -678
                  srl          s5, s0, t5
                  sltu         gp, s1, a4
                  xori         sp, t3, -1429
                  srai         s1, a6, 16
                  bge          a2, s4, 1874f
                  sltu         tp, t0, t3
                  xori         s9, t3, 15
                  srl          s10, s3, s8
                  nop
1874:             bgeu         tp, a7, 1875f
1875:             bge          a3, sp, 1881f
                  sll          t4, s9, t4
                  bne          s7, a1, 1883f
                  sll          ra, t2, t3
                  xor          s5, t1, s6
                  slli         t0, s7, 24
1881:             sra          t5, a4, s11
                  sltu         t6, ra, tp
1883:             slti         s9, s6, 98
                  blt          s0, a6, 1903f
                  bgeu         t3, s5, 1897f
                  slli         t5, s4, 21
                  blt          s6, a1, 1899f
                  xori         t1, t5, 1556
                  bltu         s1, t1, 1892f
                  sra          s2, a3, s11
                  bgeu         gp, s6, 1907f
1892:             bltu         s7, s7, 1909f
                  slli         sp, t5, 11
                  bgeu         s2, zero, 1904f
                  slti         s6, s6, 1817
                  and          a1, s7, t0
1897:             sltu         sp, a1, t2
                  slt          t1, a3, a7
1899:             addi         t5, t5, 482
                  sltu         zero, t4, a4
                  blt          t1, t2, 1905f
                  srai         t1, s0, 12
1903:             sra          a5, s5, t4
1904:             xor          zero, s7, ra
1905:             nop
                  auipc        s11, 387785
1907:             sub          s4, s3, a6
                  slti         a4, a1, 1635
1909:             bne          s1, t4, 1914f
                  lui          s2, 302301
                  xori         s9, t3, 1484
                  sltiu        a3, a7, -1827
                  srli         t0, a7, 18
1914:             or           t6, t2, a2
                  sltiu        s7, s4, -1763
                  bge          s0, s8, 1923f
                  auipc        a7, 444753
                  srai         t0, t2, 1
                  slt          t6, t0, s9
                  andi         a5, a0, -789
                  slli         s8, a3, 31
                  sltu         a3, a4, t2
1923:             auipc        a5, 437745
                  srli         s8, ra, 5
                  sltiu        s10, s7, 896
                  bgeu         s9, s9, 1930f
                  slt          a4, a2, a2
                  nop
                  xor          s8, t6, s6
1930:             lui          t6, 804530
                  lui          t3, 888163
                  sltiu        t0, s3, -1136
                  bne          a0, s9, 1940f
                  sub          s7, ra, t6
                  bgeu         ra, ra, 1946f
                  xori         t0, a3, 155
                  bne          a5, s2, 1948f
                  ori          t4, t2, 1208
                  blt          gp, sp, 1955f
1940:             sltu         ra, s5, a7
main_6:           jal          tp, 19f
0:                jal          a5, 8f
1:                jal          ra, 17f
2:                jal          ra, 25f
3:                jal          t1, 2b
4:                jal          ra, 16f
5:                jal          ra, 12f
6:                jal          ra, 18f
7:                jal          t1, 13f
8:                jal          t0, 11f
9:                jal          ra, 7b
10:               jal          t2, 14f
11:               jal          ra, 21f
12:               jal          sp, 1b
13:               jal          sp, 10b
14:               jal          t1, 26f
15:               jal          ra, 0b
16:               jal          a6, 24f
17:               jal          ra, 4b
18:               jal          ra, 22f
19:               jal          ra, 15b
20:               jal          ra, 9b
21:               jal          ra, 6b
22:               jal          ra, 5b
23:               jal          t1, 3b
24:               jal          ra, 23b
25:               jal          tp, 20b
26:               sra          s2, t4, a0
                  lui          s1, 688925
                  beq          t6, t3, 1947f
                  srl          a4, t5, zero
                  bgeu         zero, s5, 1958f
                  addi         a7, s11, -1037
1946:             srl          s0, t1, s9
1947:             or           ra, a4, t6
1948:             sltu         zero, s8, a0
                  and          s10, s11, t5
                  bgeu         s6, t2, 1957f
                  addi         t2, s6, 1168
                  bgeu         s11, sp, 1959f
                  bgeu         s0, t5, 1970f
                  sltiu        t1, t1, 1577
1955:             bge          t0, gp, 1957f
                  beq          zero, s2, 1967f
1957:             srli         a5, s8, 27
1958:             bge          t6, a6, 1975f
1959:             add          s5, t1, s8
                  sltiu        s5, t2, -769
                  sll          s0, a7, s10
                  bge          tp, a3, 1979f
                  sll          s6, s5, s0
                  xor          s10, t4, s8
                  srai         sp, s10, 7
                  add          tp, s5, a5
1967:             bge          sp, t2, 1981f
                  sltiu        s9, s7, 182
                  srli         s5, a6, 24
1970:             ori          t2, s5, 797
                  bltu         a4, s6, 1987f
                  bne          a7, s0, 1978f
                  xor          s1, t5, s1
                  slli         a3, ra, 28
1975:             slt          s4, a4, t6
                  bne          gp, t2, 1979f
                  andi         s0, t3, 136
1978:             sub          s10, s0, a6
1979:             beq          s6, ra, 1986f
                  bge          s7, s9, 1997f
1981:             xori         t3, t6, 1465
                  lui          t4, 866657
                  sub          t3, ra, t2
                  lui          t4, 185360
                  bge          s7, s2, 1989f
1986:             sra          t5, a3, a1
1987:             sra          s9, zero, a3
                  slli         t4, t5, 22
1989:             sll          tp, t6, t5
                  slti         t5, s8, -100
                  blt          zero, gp, 1993f
                  slti         s6, t3, 1269
1993:             or           s4, s2, s9
                  andi         t5, s11, -1838
                  srl          a1, a4, s6
                  ori          t1, t0, -946
1997:             or           ra, s10, s9
                  or           a6, t6, a6
                  slli         s10, t5, 31
                  sra          t5, t2, s2
                  auipc        t1, 430050
                  srai         s10, t0, 3
                  ori          s1, s2, 425
                  sltu         s6, a0, t2
                  auipc        s7, 706189
                  slti         t4, s1, 224
                  add          a1, gp, tp
                  lui          s8, 806205
                  slti         t1, t6, 954
                  nop
                  bltu         t2, a7, 2016f
                  and          a4, s7, s9
                  bne          a7, s0, 2032f
                  slli         t2, s11, 22
                  xori         s1, s11, -1246
2016:             bge          s8, s1, 2032f
                  sltiu        a6, a2, -1485
                  and          t6, zero, s6
                  sub          s6, a1, s5
                  and          t3, a3, gp
                  and          a3, s7, a3
                  sltu         s2, t2, s3
                  bltu         s10, s1, 2040f
                  lui          a1, 88694
                  bne          a5, s2, 2030f
                  xor          t0, t1, a1
                  srl          s10, s8, t1
                  srli         s4, s5, 7
                  bge          a2, s0, 2034f
2030:             srl          a3, t1, s7
                  bne          t3, s3, 2048f
2032:             sub          t1, ra, s4
                  sub          a3, a3, gp
2034:             bltu         s3, s6, 2045f
                  blt          a2, sp, 2046f
                  blt          s4, a4, 2037f
2037:             add          a1, t2, zero
                  and          t2, a5, ra
                  slt          s0, s1, a5
2040:             srai         s10, t4, 9
                  sltiu        s6, s10, -2048
                  beq          s5, a0, 2053f
                  xori         s4, a1, 349
                  slli         s10, t2, 15
2045:             bltu         a3, t3, 2055f
2046:             bgeu         a6, s10, 2053f
                  andi         a4, t5, 2047
2048:             srl          a5, s1, a5
                  add          s6, s4, s5
                  blt          tp, ra, 2054f
                  add          a6, s4, a1
                  srl          t2, ra, s0
2053:             addi         s5, gp, 112
2054:             sltiu        s1, s1, -958
2055:             blt          a5, s6, 2062f
                  srl          s11, s1, a1
                  bltu         s9, s5, 2074f
                  bne          s5, gp, 2070f
                  bgeu         gp, t4, 2075f
                  srl          s2, t1, s6
                  and          s9, sp, s6
2062:             srl          gp, a4, a0
                  srli         t2, a1, 17
                  bne          t5, s8, 2070f
                  slt          a7, a4, t4
                  lui          s11, 470458
                  add          ra, a0, s5
                  sub          a3, t1, a2
                  auipc        s8, 226441
2070:             blt          s0, a7, 2090f
                  xor          a3, s4, tp
                  blt          a0, t3, 2079f
                  ori          s8, a5, -1229
2074:             slt          ra, s9, t5
2075:             sub          s7, a1, t1
                  srai         t6, t5, 15
                  bge          zero, s11, 2089f
                  bne          a1, a7, 2085f
2079:             srl          a3, s4, s7
                  and          s10, ra, gp
                  srli         t1, s4, 4
                  xor          t5, a2, s9
                  sltu         t5, s2, t2
                  xor          t3, s6, t2
2085:             sltiu        t1, a6, -1590
                  bne          a7, s2, 2091f
                  xori         t2, t2, -481
                  ori          a6, t2, 1969
2089:             sll          a1, a4, a1
2090:             nop
2091:             beq          t0, t1, 2108f
                  sltu         a6, t3, gp
                  ori          s5, zero, -1727
                  slt          t0, tp, s11
                  or           s1, s4, t0
                  ori          s2, s10, -1776
                  srl          sp, s4, s0
                  slli         gp, s10, 0
                  bltu         s0, s1, 2110f
                  slli         a1, s4, 17
                  andi         s0, a3, 688
                  bge          t6, s7, 2103f
2103:             auipc        t2, 685145
                  srli         s2, s1, 3
                  and          t1, s11, a3
                  addi         a4, s8, -1917
                  sltu         s9, t0, a7
2108:             slli         s4, s9, 19
                  blt          t5, s5, 2119f
2110:             sra          s9, s1, tp
                  ori          s1, a4, 825
                  xori         tp, s3, -1895
                  srli         zero, ra, 28
                  addi         s9, t0, 1606
                  or           s9, a6, s2
                  or           t1, s5, sp
                  andi         s7, a4, -747
                  andi         t1, sp, 755
2119:             bgeu         s3, zero, 2126f
                  bgeu         t0, a5, 2137f
                  sra          t2, a4, s5
                  bge          t4, a3, 2139f
                  sltiu        s1, t6, 50
                  bge          s1, t1, 2131f
                  sra          tp, s11, ra
                  la           s11, sub_2
                  andi         s10, s5, -1023
                  xori         s1, a5, 1859
                  addi         s11, s11, 349
                  xori         sp, s9, 1882
                  sra          s1, sp, tp
                  bltu         s5, zero, main_j1 #branch to jump instr
                  sltiu        s9, a3, -1751
main_j1:          jalr         tp, s11, -348 #jump main -> sub_2
2126:             blt          gp, s8, 2138f
                  ori          t5, s2, -1857
                  xori         t3, s1, 1495
                  srai         a3, a1, 10
                  sll          t5, tp, s7
2131:             xori         a7, s1, 1058
                  add          s1, ra, s3
                  andi         t5, a0, -1203
                  bltu         zero, t3, 2148f
                  lui          tp, 464935
                  blt          a4, s5, 2138f
2137:             srai         s0, t4, 14
2138:             beq          t2, t3, 2154f
2139:             addi         a6, t2, -1897
                  add          t0, a7, t4
                  srai         zero, s0, 9
                  srl          s7, sp, s3
                  bne          a6, zero, 2150f
                  andi         s11, s3, 97
                  beq          a1, s6, 2151f
                  sra          ra, a0, a7
                  sub          s8, t5, tp
2148:             ori          t6, s3, 1934
                  slli         a3, gp, 25
2150:             xori         s1, t6, 1747
2151:             bgeu         a2, a4, 2163f
                  slti         a6, a1, -7
                  ori          a3, t5, 524
2154:             sub          s2, t4, t6
                  xori         s5, a3, 1102
                  slli         t6, a7, 7
                  and          a5, s4, s9
                  beq          s8, t5, 2174f
                  xor          s4, ra, a5
                  srl          gp, ra, a6
                  xor          a6, t0, s4
                  sub          t5, a4, t4
2163:             or           t2, s4, a3
                  bne          a2, a5, 2175f
                  ori          t6, s11, 1157
                  bgeu         t1, s0, 2170f
                  blt          s5, t0, 2171f
                  blt          a0, a7, 2171f
                  srli         s10, sp, 20
2170:             sra          s10, t1, s1
2171:             srai         a6, s3, 28
                  or           s2, a4, s8
                  xor          t2, a2, s2
2174:             slli         a7, s5, 29
2175:             nop
                  lui          a6, 179926
                  add          t6, s8, s7
                  ori          a5, s5, -450
                  lui          a3, 9241
                  xor          tp, t6, s10
                  bne          a2, a2, 2201f
                  slti         t5, sp, 327
                  addi         s7, tp, 868
                  slli         s9, s9, 2
                  bge          s1, zero, 2190f
                  bltu         t1, a7, 2191f
                  slti         s0, sp, 993
                  srl          a6, s0, s2
                  sll          a4, s2, t4
2190:             beq          s9, sp, 2201f
2191:             andi         s7, a1, 554
                  nop
                  addi         zero, a3, -645
                  blt          a4, s10, 2213f
                  bltu         s2, a7, 2201f
                  srl          sp, t0, s3
                  bne          a5, s4, 2213f
                  sltiu        t4, a7, 1957
                  sll          s6, t4, t1
                  or           t3, a7, s10
2201:             bge          s9, s9, 2218f
                  sll          s11, s0, s7
                  blt          ra, ra, 2210f
                  and          zero, s10, a4
                  and          ra, s2, t4
                  slti         s7, a2, 1781
                  sra          a7, s4, s0
                  xor          s6, a0, t0
                  slli         gp, t2, 3
2210:             ori          t6, zero, -282
                  auipc        s6, 900622
                  xor          s9, t3, s1
2213:             bge          a6, t0, 2219f
                  srli         sp, a0, 19
main_15:          jal          tp, 13f
0:                jal          t1, 10f
1:                jal          a3, 14f
2:                jal          a4, 8f
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          s8, 3b
6:                jal          ra, 1b
7:                jal          s11, 15f
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          t1, 6b
11:               jal          s2, 12f
12:               jal          s10, 5b
13:               jal          t1, 2b
14:               jal          ra, 4b
15:               sltu         a4, zero, s5
                  slli         t5, a1, 29
                  add          s7, s5, zero
                  srli         ra, gp, 15
2218:             bge          t4, a7, 2229f
2219:             slt          a6, s4, t0
                  sub          t2, a5, t6
                  addi         zero, s11, -133
                  bltu         a4, a3, 2238f
                  slli         s11, s2, 9
                  blt          s11, t0, 2236f
                  bge          zero, a5, 2242f
                  slti         s6, t3, 734
                  blt          a2, s9, 2233f
                  xor          s9, s0, sp
2229:             bltu         t1, a7, 2234f
                  nop
                  bge          a6, a4, 2236f
                  auipc        a5, 459751
2233:             bge          s0, t0, 2240f
2234:             and          a4, s1, t6
                  bgeu         s11, tp, 2239f
2236:             lui          s11, 93075
                  ori          t5, t0, 523
2238:             bne          ra, s1, 2250f
2239:             ori          t4, ra, 559
2240:             beq          s4, t0, 2241f
2241:             bgeu         a7, a4, 2258f
2242:             sub          t1, t5, a5
                  sra          s9, a1, s5
                  sltu         s7, s5, s9
                  sltiu        s11, t6, -855
                  and          gp, ra, s8
                  slti         s1, a7, -1834
                  sltu         t6, s1, s0
                  slti         t1, s11, 1366
2250:             bltu         s5, a7, 2252f
                  sltiu        s10, ra, -407
2252:             sltiu        s6, s10, 1066
                  slt          t1, t6, t5
                  slti         a3, s0, -1073
                  addi         t0, s11, -489
                  andi         s11, t5, 1719
                  addi         zero, s5, 1579
2258:             ori          s8, s10, -1859
                  bge          s10, t6, 2276f
                  srl          s11, a2, t4
                  sltiu        t0, a2, -1510
                  bne          s0, a3, 2279f
                  ori          a4, s8, 1790
                  and          zero, s0, s4
                  srai         s2, t3, 20
                  beq          t0, s8, 2282f
                  xori         ra, s3, -1814
                  beq          s7, s10, 2279f
                  lui          a5, 516487
                  xori         s7, t6, -383
                  bgeu         s2, sp, 2285f
                  srai         s11, s6, 18
                  xori         ra, sp, 1517
                  sll          s11, a6, a4
                  and          t5, t4, s6
2276:             bge          a7, a7, 2283f
                  slt          a1, a5, zero
                  srai         t0, s3, 25
2279:             bne          s9, s2, 2298f
                  sub          t5, t4, a4
                  slt          s5, zero, s1
2282:             sub          a6, t5, ra
2283:             auipc        sp, 977778
                  sll          s10, s1, t3
2285:             sll          s9, s4, a3
                  srai         t2, s0, 28
                  srai         t5, a6, 18
                  andi         s2, tp, 1950
                  sub          s11, t0, s6
                  beq          a2, a1, 2297f
                  slli         s7, a2, 4
                  sltu         t0, sp, s0
                  sll          s7, s4, a2
                  slti         s6, zero, 1322
                  slt          s11, t5, ra
                  srli         s8, zero, 31
2297:             bne          a5, zero, 2307f
2298:             bne          ra, s0, 2303f
                  sub          s6, s2, s3
                  add          tp, s1, tp
                  andi         tp, a1, 1334
                  slti         gp, zero, -259
2303:             blt          a3, s10, 2307f
                  lui          ra, 898993
                  sub          s8, sp, s11
                  srl          s2, zero, a1
2307:             slt          s1, t6, a3
                  ori          t1, tp, 1795
                  add          s4, a7, s3
                  add          s6, s2, s0
                  lui          t4, 475851
                  slli         t0, tp, 26
                  auipc        t4, 9510
                  srai         a1, s5, 6
                  slt          t5, gp, zero
main_45:          jal          tp, 19f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          a6, 17f
3:                jal          ra, 4f
4:                jal          ra, 10f
5:                jal          t1, 2b
6:                jal          ra, 3b
7:                jal          sp, 12f
8:                jal          s10, 7b
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          t1, 0b
12:               jal          ra, 21f
13:               jal          ra, 20f
14:               jal          ra, 1b
15:               jal          a3, 9b
16:               jal          tp, 24f
17:               jal          t1, 18f
18:               jal          tp, 16b
19:               jal          ra, 13b
20:               jal          ra, 14b
21:               jal          gp, 22f
22:               jal          t1, 23f
23:               jal          ra, 15b
24:               sltu         a5, gp, gp
                  sltiu        s2, s0, -1318
                  slli         t5, a2, 1
                  slti         a1, ra, 1834
                  bgeu         zero, a7, 2333f
                  sll          gp, t3, gp
                  sra          s7, a2, t1
                  addi         t4, s9, -598
                  sltiu        a6, a0, 782
                  bne          a3, s4, 2327f
                  auipc        s8, 772710
                  or           ra, t5, t2
2327:             bne          t1, a5, 2333f
                  add          s1, s5, s8
                  add          s4, a3, t0
                  add          s4, s10, s8
                  sub          a7, s10, sp
                  add          ra, t4, t3
2333:             add          tp, a4, t2
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            xor          a1, s1, t3
                  auipc        gp, 158689
                  bltu         a1, t4, sub_4_stack_p
                  slli         s4, t3, 12
sub_4_stack_p:    addi         a2, a2, -44
                  add          s5, a0, s1
                  sw           tp, 4(a2)
                  xori         gp, t6, -1485
                  sub          s6, sp, t6
sub_4_0:          jal          tp, 2f
0:                jal          ra, 4f
1:                jal          a5, 15f
2:                jal          tp, 9f
3:                jal          s2, 12f
4:                jal          t1, 8f
5:                jal          t1, 14f
6:                jal          ra, 0b
7:                jal          a7, 16f
8:                jal          a6, 3b
9:                jal          ra, 6b
10:               jal          ra, 17f
11:               jal          t1, 7b
12:               jal          ra, 5b
13:               jal          ra, 1b
14:               jal          ra, 13b
15:               jal          t1, 11b
16:               jal          t1, 10b
17:               sra          s10, s6, s8
sub_4_1:          jal          tp, 8f
0:                jal          t1, 7f
1:                jal          s5, 2f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          t1, 11f
5:                jal          ra, 0b
6:                jal          gp, 12f
7:                jal          ra, 9f
8:                jal          gp, 5b
9:                jal          s4, 3b
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               and          s5, zero, a7
sub_4_4:          jal          tp, 7f
0:                jal          t1, 6f
1:                jal          a7, 23f
2:                jal          ra, 3f
3:                jal          ra, 17f
4:                jal          ra, 13f
5:                jal          t1, 26f
6:                jal          ra, 1b
7:                jal          t0, 18f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          ra, 19f
11:               jal          ra, 14f
12:               jal          ra, 5b
13:               jal          s10, 25f
14:               jal          gp, 8b
15:               jal          ra, 28f
16:               jal          t2, 2b
17:               jal          ra, 27f
18:               jal          t0, 11b
19:               jal          ra, 22f
20:               jal          tp, 21f
21:               jal          t1, 16b
22:               jal          a3, 20b
23:               jal          ra, 24f
24:               jal          t1, 9b
25:               jal          ra, 12b
26:               jal          s6, 15b
27:               jal          t1, 0b
28:               sll          s1, s2, a6
sub_4_6:          jal          tp, 7f
0:                jal          ra, 1f
1:                jal          t0, 9f
2:                jal          ra, 18f
3:                jal          ra, 24f
4:                jal          t1, 11f
5:                jal          ra, 13f
6:                jal          ra, 20f
7:                jal          a7, 8f
8:                jal          ra, 14f
9:                jal          ra, 19f
10:               jal          t6, 0b
11:               jal          t1, 12f
12:               jal          ra, 3b
13:               jal          a6, 22f
14:               jal          gp, 16f
15:               jal          t1, 10b
16:               jal          s6, 17f
17:               jal          t1, 21f
18:               jal          ra, 23f
19:               jal          s4, 5b
20:               jal          s1, 2b
21:               jal          s7, 15b
22:               jal          s4, 6b
23:               jal          t1, 4b
24:               sra          s1, ra, s2
sub_4_2:          jal          tp, 10f
0:                jal          ra, 5f
1:                jal          tp, 7f
2:                jal          ra, 8f
3:                jal          t4, 15f
4:                jal          t3, 9f
5:                jal          ra, 3b
6:                jal          t1, 16f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          tp, 13f
11:               jal          s7, 14f
12:               jal          ra, 11b
13:               jal          ra, 1b
14:               jal          tp, 0b
15:               jal          tp, 4b
16:               auipc        a1, 547555
sub_4_5:          jal          tp, 16f
0:                jal          ra, 2f
1:                jal          t0, 13f
2:                jal          ra, 18f
3:                jal          t1, 6f
4:                jal          t1, 3b
5:                jal          ra, 1b
6:                jal          ra, 8f
7:                jal          a7, 15f
8:                jal          t1, 7b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          t1, 19f
12:               jal          ra, 14f
13:               jal          t4, 17f
14:               jal          t0, 0b
15:               jal          sp, 21f
16:               jal          ra, 11b
17:               jal          ra, 20f
18:               jal          ra, 9b
19:               jal          tp, 5b
20:               jal          ra, 12b
21:               addi         a1, a4, 527
                  slli         s9, s11, 3
                  bltu         a0, a5, 19f
                  slt          s10, s6, s5
                  lui          tp, 945360
                  xori         s5, a0, -1999
                  add          a3, t2, s11
                  andi         s0, t3, 1298
                  sltiu        t4, t4, -125
                  bltu         t1, s6, 17f
                  nop
                  sll          t2, t4, ra
                  bltu         a4, s3, 30f
                  bne          s3, a7, 15f
                  or           a1, gp, t4
                  slli         t4, t5, 10
15:               ori          t5, t1, 1818
                  sll          s9, a7, t2
17:               or           t5, a6, a4
                  or           t0, t4, s10
19:               lui          a7, 529218
                  andi         s11, sp, -1913
                  sub          zero, t4, t2
                  addi         s6, sp, -1755
                  ori          t6, s1, -734
                  slt          t3, a3, tp
                  lui          a3, 428644
                  slli         s8, s6, 12
                  slt          t4, s3, s11
                  auipc        t6, 925496
                  sltiu        a1, s1, 2032
30:               bltu         a5, t6, 32f
                  lui          s4, 286630
32:               srli         t6, ra, 26
                  srli         sp, s9, 21
                  add          s4, t6, gp
                  slli         s2, t4, 10
                  sltiu        s1, s4, -1092
                  sll          s4, s11, s5
                  sub          t4, s11, s5
                  and          t2, s7, a4
                  sra          s5, t1, s2
                  ori          t3, s4, -1253
                  add          t6, s8, t5
                  bltu         s6, t2, 44f
44:               lui          s8, 903719
                  slti         s0, s10, -761
                  srai         a7, a3, 1
                  srli         s2, zero, 5
                  beq          s1, s6, 54f
                  sra          t0, a3, a1
                  srli         s9, t6, 6
                  xori         s7, tp, 702
                  sltiu        a1, s5, 1604
                  addi         a4, tp, -1426
54:               sltiu        s4, s11, 930
                  sll          t3, a6, s1
                  sra          ra, gp, a0
                  ori          s0, s9, 869
                  bltu         a1, s11, 63f
                  xori         t5, s4, 796
                  bne          s2, s6, 68f
                  srli         t3, s2, 9
                  srai         zero, s1, 10
63:               xor          s7, gp, t3
                  slt          a6, s4, s11
                  sra          s11, t4, t5
                  sra          a7, s7, s7
                  slti         a3, t4, 174
68:               srli         t6, s10, 0
                  or           t1, t5, a1
                  andi         s10, t3, -1233
                  and          tp, zero, tp
                  bge          s9, s2, 91f
                  xori         s11, ra, -964
                  nop
                  xor          s4, s2, s6
                  srli         t2, s8, 11
                  auipc        s10, 612025
                  and          s5, t6, s2
                  srl          s1, t6, a3
                  xori         t2, s11, -387
                  srai         t4, t2, 26
                  andi         ra, sp, -1119
                  slt          t0, s6, ra
                  xori         s2, a3, 553
                  xori         gp, a2, 556
                  bge          s0, s5, 98f
                  slt          a4, s9, a2
                  slt          s4, t6, t4
                  srli         a6, s0, 20
                  slti         gp, a0, 352
91:               sub          s10, ra, t5
                  xor          sp, s2, s10
                  and          s9, a4, t4
                  andi         t3, a5, 1036
                  srli         zero, s2, 0
                  srli         tp, t2, 10
                  xori         s0, zero, -1301
98:               slli         s10, s0, 6
                  blt          a7, gp, 107f
                  beq          sp, sp, 118f
                  slt          tp, a0, s0
                  and          s2, t6, s4
                  or           s2, gp, t3
                  bge          tp, t0, 107f
                  slt          t2, s6, a2
                  xor          t6, s4, s1
107:              xori         t1, zero, -1381
                  bge          s6, t2, 126f
                  srl          zero, a5, t6
                  sub          a7, ra, t3
                  sltiu        t6, s0, -1102
                  or           s7, t6, s1
                  sub          t5, a1, t0
                  slti         t6, a7, 1363
                  nop
                  ori          a7, t6, -450
                  slli         sp, zero, 27
118:              nop
                  sll          t6, a7, a4
                  bgeu         s2, s1, 139f
                  beq          a6, a1, 139f
                  sub          s6, s10, a1
                  bltu         a6, gp, 132f
                  srl          a3, t6, s7
                  bne          sp, t4, 140f
126:              auipc        s8, 901075
                  xori         s9, sp, -1083
                  bltu         s5, s2, 131f
                  srli         s5, ra, 28
                  slli         sp, gp, 21
131:              blt          a0, tp, 150f
132:              and          t4, s2, s6
                  xori         t1, s0, 517
                  sra          sp, s9, s9
                  blt          a1, s4, 154f
                  addi         zero, s4, -888
                  xor          s0, a2, s4
                  bne          a7, tp, 158f
139:              add          t5, ra, t0
140:              add          s7, t1, sp
                  srl          t5, a2, t5
                  or           a1, s1, s3
                  ori          zero, a3, -1393
                  srli         s2, t6, 18
                  sub          s2, zero, s5
                  srli         s0, s11, 16
                  or           t5, s11, sp
                  ori          s1, s4, -1260
                  nop
150:              ori          s10, a6, 1639
                  sltiu        t5, s5, -323
                  slt          t4, s10, t2
                  blt          t1, sp, 171f
154:              bne          t6, s8, 163f
                  xor          sp, tp, s9
                  andi         t5, a0, -888
                  lui          gp, 389626
158:              andi         a5, a4, 338
                  add          s1, t0, zero
                  xori         t0, s0, -2000
                  sll          s0, a1, s3
                  sll          a6, zero, s7
163:              auipc        s10, 178220
sub_4_3:          jal          tp, 9f
0:                jal          t5, 18f
1:                jal          gp, 4f
2:                jal          ra, 6f
3:                jal          ra, 13f
4:                jal          ra, 21f
5:                jal          ra, 7f
6:                jal          ra, 15f
7:                jal          ra, 2b
8:                jal          ra, 22f
9:                jal          a5, 14f
10:               jal          gp, 20f
11:               jal          t0, 12f
12:               jal          ra, 3b
13:               jal          ra, 0b
14:               jal          a1, 19f
15:               jal          s4, 10b
16:               jal          ra, 17f
17:               jal          ra, 5b
18:               jal          a3, 8b
19:               jal          a6, 16b
20:               jal          ra, 1b
21:               jal          ra, 11b
22:               sll          s7, s3, t4
                  or           s4, a5, s3
                  slli         t3, a7, 15
                  slt          s9, zero, gp
                  add          s11, a4, s3
                  srl          s10, s8, a6
                  sltiu        t1, sp, 1523
                  add          s10, a1, t2
171:              or           s2, s3, t6
                  and          t2, s2, t4
                  ori          s11, a3, -1802
                  blt          s4, s9, 186f
                  andi         s9, s8, -634
                  srli         sp, s2, 14
                  slt          s8, a5, gp
                  bge          t5, a6, 191f
                  sltiu        a4, s8, 1316
                  beq          s11, s4, 190f
                  add          t6, s1, s11
                  addi         s10, a5, 1406
                  nop
                  slt          s8, a7, s2
                  srai         t2, a1, 4
186:              addi         t6, a5, 438
                  slli         a5, s6, 5
                  or           a6, t3, a7
                  or           gp, a6, s9
190:              bge          a7, a0, 196f
191:              xor          s9, ra, s3
                  sra          a7, ra, sp
                  sub          gp, ra, a3
                  auipc        s4, 983712
                  or           t2, gp, a3
196:              sll          t1, s2, s6
                  sltu         a3, t1, t3
                  add          a1, s0, s11
                  bne          s0, a5, 211f
                  or           s1, s1, s3
                  auipc        a5, 829912
                  and          t0, a6, s9
                  bltu         s5, s10, 212f
                  slli         t2, a1, 26
                  beq          t3, tp, 208f
                  or           s1, a4, s6
                  srli         s10, tp, 6
208:              sra          s1, a3, s0
                  auipc        tp, 519904
                  nop
211:              sra          s10, t6, s4
212:              slt          s11, s11, s1
                  addi         t6, s0, -842
                  bltu         s5, t1, 233f
                  bgeu         s10, s3, 218f
                  add          t2, s0, a1
                  beq          s7, a1, 235f
218:              sltu         t2, a6, a6
                  bltu         t1, sp, 239f
                  bge          a6, gp, 238f
                  slt          s5, s5, s1
                  sra          s0, t1, a1
                  nop
                  xor          a3, a5, a5
                  bgeu         s11, s9, 243f
                  add          gp, gp, s6
                  lui          t5, 973894
                  sltiu        t0, a7, 1789
                  nop
                  sub          s8, s5, s11
                  bgeu         t0, tp, 249f
                  blt          a4, s2, 238f
233:              nop
                  slti         s0, t5, 202
235:              slli         s7, t1, 23
                  sltu         t0, s11, t3
                  bgeu         s10, s3, 256f
238:              bltu         sp, t1, 250f
239:              sltiu        sp, t6, 413
                  ori          ra, s7, 1097
                  bne          a5, s0, 251f
                  or           s8, s5, a2
243:              sltu         ra, a5, zero
                  blt          zero, tp, 259f
                  srli         a6, s10, 8
                  bne          t4, t6, 249f
                  sub          a7, s3, t6
                  slti         a3, t1, 1782
249:              add          s0, s11, s2
250:              bge          s0, s1, 268f
251:              sltu         s0, s5, a5
                  or           ra, s8, t4
                  bge          s2, s0, 272f
                  or           s4, zero, zero
                  xori         t4, a2, -386
256:              sra          t2, s10, a4
                  xori         a7, s4, -1746
                  sll          s8, a1, t2
259:              sltu         zero, a6, s4
                  slli         sp, s6, 2
                  and          s8, t0, s2
                  bgeu         t1, gp, 271f
                  sltu         a6, s3, a6
                  bge          ra, s3, 272f
                  lui          t2, 956882
                  nop
                  ori          s9, s8, -1582
268:              nop
                  nop
                  srli         t6, t1, 5
271:              bge          a3, a4, 272f
272:              srli         t4, a1, 2
                  xori         a1, a1, 385
                  slti         gp, s3, -1910
                  sub          a4, a3, a2
                  bgeu         tp, a0, 281f
                  srl          s7, t0, s3
                  or           s0, a0, s5
                  sub          t1, s2, a2
                  beq          a1, t3, 299f
281:              andi         a7, s2, -2032
                  auipc        s5, 18399
                  srl          t4, gp, s3
                  beq          s7, a5, 296f
                  or           t5, a3, a0
                  bne          gp, s0, 288f
                  sltiu        t2, tp, 181
288:              blt          s7, t0, 307f
                  and          tp, sp, s8
                  bge          t5, s9, 298f
                  or           tp, s8, sp
                  slt          s2, sp, t1
                  sra          s1, t0, s10
                  bne          s8, ra, 307f
                  slli         s2, s11, 29
296:              slti         s11, a2, -67
                  auipc        gp, 156163
298:              andi         a7, a6, -436
299:              slt          t1, s7, a1
                  and          ra, a0, s3
                  nop
                  beq          s7, a5, 314f
                  sltiu        s1, a6, 928
                  andi         a6, s5, 7
                  addi         a3, zero, -1410
                  srli         t5, a6, 3
307:              beq          a1, s5, 316f
                  srli         t6, ra, 7
                  beq          s5, t1, 315f
                  beq          t2, a3, 319f
                  nop
                  addi         s6, s8, -1366
                  auipc        t1, 268141
314:              ori          a6, s0, -1177
315:              sub          gp, s3, gp
316:              add          tp, a4, s3
                  slli         s7, a4, 26
                  bgeu         t1, t0, 337f
319:              sltiu        s6, s1, -1168
                  srl          s2, t3, s6
                  andi         s2, zero, 1882
                  nop
                  slti         a4, s0, -1441
                  sltu         s10, t3, s9
                  sltu         s9, t5, t5
                  slt          s2, s9, a7
                  and          a6, s9, s10
                  beq          s4, a2, 329f
329:              bge          s7, tp, 342f
                  add          s4, s4, a7
                  beq          t2, a0, 334f
                  sra          s2, t6, t0
                  sltu         ra, s1, a4
334:              or           t1, t5, a1
                  blt          s1, a1, 354f
                  lui          a7, 332212
337:              ori          s9, a2, -1150
                  bne          t0, t5, 348f
                  xor          s4, s8, a4
                  xori         s11, a5, -94
                  blt          s4, gp, 349f
342:              slti         s7, a5, -1986
                  nop
                  bltu         s9, a7, 362f
                  blt          s10, t3, 363f
                  sra          ra, gp, s4
                  and          s6, t2, t4
348:              beq          s6, s4, 351f
349:              xori         t4, a0, 605
                  beq          s5, a5, 369f
351:              slt          sp, s0, t4
                  srl          a3, t4, s11
                  sltu         s7, tp, t3
354:              slti         a1, sp, 473
                  add          s5, s2, s4
                  add          gp, s2, s8
                  slt          t0, a2, a4
                  blt          ra, a6, 370f
                  bgeu         a0, s5, 362f
                  ori          s1, a6, -616
                  slt          s4, s1, s7
362:              slti         ra, s4, 1463
363:              bge          a5, s9, 369f
                  bltu         s10, a4, 370f
                  srl          s0, t5, s0
                  add          a5, s8, t0
                  sra          zero, t5, s0
                  srai         a1, t1, 7
369:              sltiu        zero, t3, 714
370:              slti         a1, s1, -635
                  slti         t1, tp, -1633
                  sltu         gp, t3, a7
                  or           s0, tp, s0
                  lw           tp, 4(a2)
                  sltu         ra, a2, a6
                  xor          s11, s10, sp
                  ori          t3, t3, 1951
                  addi         a2, a2, 44
                  xori         s9, a3, -1818
543:              addi x7, x4, 1
543:              jalr x7, x7, 0
sub_1:            lui          t4, 488791
                  sra          s7, t2, s4
                  addi         a2, a2, -8
                  sltu         s0, s5, s10
                  sltiu        a6, a5, -453
                  slli         sp, s10, 19
                  auipc        s6, 448699
                  sw           tp, 4(a2)
                  sra          t5, a0, a7
                  addi         s2, a0, 1231
                  and          t0, gp, t2
                  ori          s11, s9, -1103
sub_1_0:          jal          tp, 12f
0:                jal          t1, 4f
1:                jal          t1, 0b
2:                jal          ra, 1b
3:                jal          sp, 2b
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          s6, 10f
8:                jal          ra, 5b
9:                jal          ra, 13f
10:               jal          s4, 11f
11:               jal          t0, 14f
12:               jal          ra, 6b
13:               jal          t1, 8b
14:               slli         ra, s8, 3
sub_1_3:          jal          tp, 5f
0:                jal          t2, 6f
1:                jal          t3, 8f
2:                jal          ra, 7f
3:                jal          s0, 11f
4:                jal          ra, 15f
5:                jal          t1, 18f
6:                jal          ra, 12f
7:                jal          t1, 4b
8:                jal          t1, 17f
9:                jal          ra, 2b
10:               jal          ra, 20f
11:               jal          t1, 21f
12:               jal          t1, 13f
13:               jal          t1, 3b
14:               jal          ra, 1b
15:               jal          ra, 19f
16:               jal          t1, 10b
17:               jal          a5, 16b
18:               jal          ra, 9b
19:               jal          s5, 14b
20:               jal          ra, 0b
21:               sltu         a7, t3, t4
sub_1_1:          jal          tp, 18f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          s4, 17f
3:                jal          t1, 11f
4:                jal          t1, 7f
5:                jal          ra, 10f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 19f
9:                jal          ra, 20f
10:               jal          t1, 15f
11:               jal          s4, 14f
12:               jal          ra, 16f
13:               jal          ra, 12b
14:               jal          ra, 4b
15:               jal          ra, 3b
16:               jal          ra, 1b
17:               jal          ra, 0b
18:               jal          t1, 13b
19:               jal          ra, 2b
20:               ori          s4, s10, 1327
                  bne          t4, s10, 18f
                  bltu         a3, s7, 2f
2:                lui          s8, 655834
                  lui          t5, 810343
                  slli         t6, ra, 0
                  lui          a4, 774614
                  xori         s9, s0, 426
                  xori         t2, s3, -82
                  srai         s9, t4, 25
                  srl          tp, t2, t1
                  or           s4, s9, s5
                  bgeu         a7, a5, 12f
12:               srai         a5, s1, 21
                  and          a6, s7, sp
                  bne          t5, a1, 19f
                  srai         t0, a6, 19
                  srai         sp, s1, 25
                  bltu         t6, t6, 29f
18:               blt          s3, tp, 28f
19:               nop
                  ori          t6, t0, 940
                  or           t4, a1, a5
                  sltu         ra, sp, sp
                  bne          s8, s10, 28f
                  sltiu        t3, zero, 822
                  bltu         s7, t2, 42f
                  bgeu         t6, a4, 37f
                  bgeu         ra, s4, 32f
28:               xori         s0, s5, 1338
29:               and          ra, gp, s11
                  add          s1, sp, a6
                  ori          s5, s7, 134
32:               or           a4, t6, a4
                  and          zero, gp, t0
                  slt          a7, s10, a6
                  add          s6, a4, s11
                  sll          s4, s5, s9
37:               beq          t6, s8, 41f
                  sra          s1, s10, s2
                  add          s6, ra, t2
                  sra          t5, s8, s5
41:               sub          s6, a0, t1
42:               bgeu         t3, t3, 48f
                  addi         a6, s7, -1032
                  auipc        a7, 119382
                  and          a1, sp, s0
                  srli         zero, zero, 19
                  srli         t5, ra, 1
48:               xori         ra, s4, 391
                  bgeu         s5, s3, 65f
                  srl          t3, s9, gp
                  sub          t5, s7, t4
                  or           a4, t1, s6
                  srai         t0, s5, 30
                  xori         s4, s1, 781
                  slli         t0, t0, 13
                  xor          a6, s5, t2
                  sub          a3, gp, t2
                  ori          s4, t1, 279
                  bltu         tp, t1, 72f
                  sltiu        a1, s10, -1191
                  sll          t0, s5, a3
                  sltu         gp, a7, zero
                  ori          gp, s6, -1450
                  addi         t1, a6, -1557
65:               srai         s6, t1, 17
                  srl          t3, s6, s5
                  bgeu         a2, t1, 84f
                  sra          s1, t5, s0
                  andi         gp, zero, 1453
                  and          s5, t4, tp
                  bne          a1, s6, 81f
72:               lui          a1, 655826
                  beq          a6, t2, 75f
                  sltu         a6, s5, a0
75:               and          ra, a1, zero
                  nop
                  xori         s5, gp, 462
                  xor          zero, s2, a3
                  or           a3, t0, tp
                  sub          t3, s1, s10
81:               xori         s11, s11, -1340
                  ori          t0, s11, 479
                  bge          a0, s10, 87f
84:               nop
                  bne          a5, s11, 91f
                  xor          t6, s10, a2
87:               sll          t6, s4, t0
                  xori         gp, a6, -1445
                  srai         t5, s6, 18
                  ori          s10, s1, 396
91:               sll          s10, s11, s5
                  bne          a2, ra, 105f
                  beq          s3, gp, 94f
94:               sltiu        a6, t0, -2001
                  slti         a4, a3, 1031
                  srai         a7, gp, 12
                  add          a7, s6, a7
                  srli         s8, t0, 23
                  and          s8, a1, a3
                  xor          t2, a5, a4
                  slt          s9, t1, s0
                  or           s11, a5, s2
                  sub          t2, t2, a6
                  xori         s10, t2, -673
105:              bne          sp, a5, 123f
                  sltu         gp, t4, tp
                  add          a6, s2, s1
                  nop
                  and          a6, s8, s7
                  bgeu         s6, s9, 123f
                  beq          a3, s8, 131f
                  bne          a6, tp, 126f
                  srl          a1, t4, ra
                  or           s11, s7, t6
                  ori          zero, t6, -761
                  sub          s2, a5, t1
                  nop
                  sll          t6, t5, s0
                  bltu         t5, t4, 120f
120:              sll          s2, s11, t3
                  sltu         t4, a6, zero
                  lui          ra, 1040635
123:              srli         s11, t0, 24
                  andi         t2, a1, -1153
                  and          s4, s10, t1
126:              beq          a0, s4, 135f
                  bltu         t0, t3, 139f
                  addi         s0, s0, 458
                  ori          s0, a7, 487
                  beq          s1, s11, 136f
131:              srli         a5, t3, 17
                  slti         a7, s3, -1067
                  sltu         s7, a5, s0
                  nop
135:              addi         s5, t5, -28
136:              and          a1, t2, s1
                  slli         a5, t2, 11
                  add          a5, sp, s4
139:              slli         ra, s11, 23
                  add          a6, s4, a1
                  auipc        a4, 345297
                  bne          s5, s3, 145f
                  sub          t3, a4, t5
                  sra          s1, t5, s9
145:              andi         s11, s10, 949
                  sub          t3, s2, zero
                  andi         s1, a4, -1288
                  lui          t6, 827498
                  or           s11, a4, t4
                  beq          sp, a5, 160f
                  or           tp, s3, sp
                  xori         s7, ra, -1051
                  srl          tp, s11, t1
                  addi         a7, zero, 1040
                  andi         s2, a1, -571
                  xori         a1, a2, 1733
                  and          s4, s6, a6
                  beq          a2, a1, 167f
                  and          sp, s0, s4
160:              sltu         s4, t6, t0
                  slti         t4, t2, 1849
                  beq          s3, s5, 163f
163:              bge          s1, a0, 176f
                  srl          s7, s9, s4
                  sltu         s0, a0, s0
                  srli         a1, a6, 20
167:              srli         a5, s11, 27
                  slli         s5, s1, 13
                  bgeu         s2, tp, 189f
                  slli         a3, t4, 6
                  xor          a4, t3, a0
                  bge          a3, t6, 182f
                  beq          s6, a6, 185f
                  addi         a6, a4, -13
                  or           t5, a6, t4
176:              and          zero, t3, a3
                  xor          a5, a0, ra
                  andi         s1, ra, 1081
sub_1_2:          jal          tp, 15f
0:                jal          ra, 11f
1:                jal          t1, 18f
2:                jal          ra, 8f
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          s5, 2b
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          t1, 13f
11:               jal          ra, 3b
12:               jal          ra, 5b
13:               jal          ra, 14f
14:               jal          t1, 17f
15:               jal          ra, 16f
16:               jal          tp, 12b
17:               jal          ra, 7b
18:               slti         tp, tp, -802
                  slt          a7, s11, s11
                  bge          a5, s4, 193f
                  sub          t0, t5, t2
182:              bgeu         a2, a0, 187f
                  xori         sp, s4, -625
                  beq          s7, t2, 190f
185:              srl          a3, s10, t4
                  auipc        a4, 882208
187:              beq          t2, s1, 191f
                  srl          gp, a6, s10
189:              bltu         s10, s9, 190f
190:              srai         tp, a2, 4
191:              and          t0, ra, s7
                  auipc        zero, 69824
193:              sra          tp, t3, t6
                  bgeu         a3, t5, 212f
                  xori         s5, s7, 525
                  sub          a1, s6, a3
                  sub          s4, a3, a1
                  slt          s2, zero, a6
                  sub          s1, t3, s3
                  auipc        zero, 218969
                  srl          a3, gp, ra
                  bne          s9, a4, 214f
                  add          s10, a0, sp
                  sub          s7, s10, s7
                  beq          s5, s3, 208f
                  and          a3, t1, tp
                  addi         s11, zero, 914
208:              sub          a3, s6, s10
                  or           s6, t4, a1
                  bne          t2, a3, 212f
                  blt          s6, s2, 212f
212:              srl          s4, s3, t1
                  slt          t1, s7, ra
214:              srl          s4, t2, zero
                  slt          a4, t4, s3
                  srli         a3, s1, 2
                  add          s11, s1, sp
                  slli         s6, s6, 2
                  sra          t6, s0, t3
                  xori         gp, t2, 778
                  srai         s11, s7, 2
                  nop
                  bltu         s11, a3, 228f
                  slt          s6, s3, t5
                  xori         s9, s7, -791
                  xori         t4, t6, -1072
                  auipc        zero, 155533
228:              sub          s2, t3, t4
                  nop
                  or           s1, t2, s10
                  auipc        tp, 746885
                  sltiu        zero, zero, -1017
                  sltu         s5, s3, s9
                  or           s1, s2, s0
                  srl          ra, s4, a5
                  ori          s5, a3, -1900
sub_1_j3:         jal          tp, sub_3 #jump sub_1 -> sub_3
                  nop
                  xor          a6, s4, s1
                  srai         t3, t5, 14
                  nop
                  auipc        s2, 94483
                  srl          t3, a0, s0
                  slt          a4, s8, s1
                  add          s7, a2, a6
                  lw           tp, 4(a2)
                  addi         a2, a2, 8
                  auipc        a7, 239306
                  nop
                  nop
                  srai         a7, s10, 16
                  xor          sp, t4, s11
                  and          a4, a7, s6
347:              addi x5, x4, 0
347:              jalr x5, x5, 0
sub_2:            nop
                  addi         a2, a2, -44
                  sra          s4, a0, t1
                  sltiu        a1, tp, 612
                  add          s9, a0, tp
                  ori          t3, a5, 152
                  sw           tp, 4(a2)
                  xori         a6, a4, -597
                  or           a7, s1, s7
                  sub          t3, s0, t5
                  add          s6, t2, a5
                  auipc        s2, 231355
                  slli         s0, s10, 6
                  srli         a1, a0, 26
                  and          s4, a5, sp
                  sub          t5, s1, a6
                  or           s2, s6, s2
                  sltu         a6, s0, a7
sub_2_j4:         jal          tp, sub_4 #jump sub_2 -> sub_4
                  xori         t5, a4, 1467
                  srli         zero, t5, 28
                  slti         s6, s0, -480
                  sltiu        s0, s1, -674
                  slt          t2, s11, zero
                  sltu         tp, a1, s6
                  ori          a1, a0, -655
                  xor          s0, a7, a7
                  srli         s4, s8, 25
                  ori          s1, tp, 846
                  sll          a3, s5, a2
                  lw           tp, 4(a2)
                  slt          zero, t3, t0
                  nop
                  sra          t5, t2, gp
                  addi         a2, a2, 44
                  xori         ra, a2, -771
                  srl          s2, s0, a4
                  andi         s11, s8, -5
                  srl          a6, s5, s6
                  sltu         t0, s8, a7
                  sub          t6, s1, s2
                  sub          ra, a1, a1
42:               addi x16, x4, 1
42:               jalr x16, x16, 0
sub_5:            slti         s0, s1, 430
                  xor          s5, s6, s11
                  beq          t1, a3, sub_5_stack_p
                  andi         s6, t5, 115
                  slti         t5, t1, 399
                  xor          s7, a5, s2
sub_5_stack_p:    addi         a2, a2, -28
                  xor          ra, s0, gp
                  sw           tp, 4(a2)
                  andi         s6, s10, -250
                  and          a3, s2, s10
                  xori         t1, s2, 1535
                  auipc        s6, 689991
                  ori          t5, t2, -40
                  nop
                  auipc        t0, 766435
                  nop
                  bgeu         ra, s4, 12f
                  auipc        s7, 707865
                  andi         tp, a1, 1158
                  add          a4, t3, t2
                  slli         s8, s6, 10
12:               srl          s5, s7, t4
                  lw           tp, 4(a2)
                  addi         a2, a2, 28
                  sll          s6, a1, s9
                  auipc        a3, 570243
                  auipc        a7, 166887
                  srai         a6, a0, 28
                  xor          s6, s6, t1
                  xor          ra, a6, a4
                  xor          sp, t2, s8
32:               addi x6, x4, 1
32:               jalr x6, x6, 0
sub_3:            ori          sp, s5, 938
                  addi         a2, a2, -16
                  or           s7, gp, t2
                  sltiu        a5, s2, -1577
                  xori         s5, a1, -1348
                  sub          s2, a4, s11
                  slt          t1, zero, a7
                  addi         t5, a0, 1827
                  addi         t2, tp, -778
                  slti         a5, s4, 1280
                  sw           tp, 4(a2)
                  sll          a5, ra, t1
                  la           s5, sub_5
                  and          a3, tp, t6
                  lui          s2, 794800
                  addi         a6, s2, 530
                  addi         s5, s5, -341
                  srl          t4, a7, gp
                  sltiu        a6, t3, 1151
sub_3_j5:         jalr         tp, s5, 342 #jump sub_3 -> sub_5
                  bltu         s9, t6, 19f
                  lui          s5, 85893
                  sltiu        a3, s1, 4
                  or           a7, a1, t4
                  bne          s6, ra, 22f
                  nop
                  bne          zero, zero, 23f
                  xor          a3, s5, t0
                  srli         ra, tp, 3
                  or           tp, a2, tp
                  srai         t6, a1, 27
                  and          a1, a0, s5
                  andi         t2, s2, -3
                  slli         s4, s5, 12
                  add          a3, s0, t4
                  auipc        t1, 362345
                  and          t3, a1, sp
                  lui          t4, 715021
                  xori         s0, s6, -1969
19:               xor          a5, gp, t6
                  bne          a2, s11, 23f
                  beq          s10, a5, 31f
22:               and          s11, s6, a5
23:               blt          a0, gp, 24f
24:               slt          s10, t1, a2
                  srl          s8, a5, s11
                  sub          a5, a3, ra
                  bgeu         t6, s9, 31f
                  or           a7, t4, s10
                  add          s11, gp, t5
                  add          s8, s4, s9
31:               sll          t4, ra, a6
                  lw           tp, 4(a2)
                  nop
                  addi         s7, a2, 309
                  addi         a2, a2, 16
                  xori         s5, a2, 118
                  srl          s0, s8, tp
58:               addi x28, x4, 1
58:               jalr x28, x28, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x9, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x9, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x9, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x9, x2, ecall_handler
                  li x2, 0x1
                  beq x9, x2, instr_fault_handler
                  li x2, 0x5
                  beq x9, x2, load_fault_handler
                  li x2, 0x7
                  beq x9, x2, store_fault_handler
                  li x2, 0xc
                  beq x9, x2, pt_fault_handler
                  li x2, 0xd
                  beq x9, x2, pt_fault_handler
                  li x2, 0xf
                  beq x9, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
