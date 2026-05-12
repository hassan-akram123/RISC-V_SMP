.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0x8
                  li x1, 0xeb61477f
                  li x2, 0x7
                  li x3, 0xf26123b8
                  li x4, 0xa95f29d2
                  li x5, 0x0
                  li x6, 0xbe33eda0
                  li x7, 0xab264be7
                  li x8, 0x0
                  li x9, 0xfac5c9a0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x3
                  li x15, 0x1968aba4
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0xf1218ed6
                  li x19, 0x80000000
                  li x21, 0x4
                  li x22, 0x0
                  li x23, 0x93781ec5
                  li x24, 0xf16b7f62
                  li x25, 0x5
                  li x26, 0xf3cc475f
                  li x27, 0x0
                  li x28, 0xb
                  li x29, 0x0
                  li x31, 0xf2c9ed7c
                  la x20, user_stack_end
main:             slli         zero, a3, 18
                  slt          a6, t3, s5
                  sltiu        ra, s5, 428
                  andi         s7, tp, 1538
                  la           a7, sub_1
                  and          zero, t4, s11
                  addi         a7, a7, -5
                  slli         a4, s1, 2
main_j1:          jalr         ra, a7, 5 #jump main -> sub_1
                  ori          zero, t1, 1135
                  la           t6, sub_1
                  andi         a4, a3, -1491
                  addi         t6, t6, -981
                  sltu         a0, a0, s1
                  slt          s7, sp, t0
                  sltiu        tp, a3, 48
                  bltu         a4, a3, main_j2 #branch to jump instr
                  sltu         s1, ra, s4
main_j2:          jalr         ra, t6, 981 #jump main -> sub_1
main_0:           jal          ra, 1f
0:                jal          t6, 18f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          tp, 4f
4:                jal          ra, 8f
5:                jal          t1, 9f
6:                jal          ra, 2b
7:                jal          t1, 20f
8:                jal          a1, 21f
9:                jal          tp, 16f
10:               jal          ra, 14f
11:               jal          ra, 12f
12:               jal          t1, 5b
13:               jal          ra, 15f
14:               jal          sp, 19f
15:               jal          ra, 7b
16:               jal          ra, 3b
17:               jal          s10, 13b
18:               jal          tp, 10b
19:               jal          ra, 17b
20:               jal          t1, 11b
21:               ori          a4, s6, -320
                  xor          t0, a7, a5
                  srai         t0, a4, 5
                  bltu         a3, s10, 9f
                  beq          s2, s7, 9f
                  xori         sp, a4, 470
                  sra          tp, sp, s0
                  add          s7, s0, s11
                  or           a1, a2, t5
                  or           s9, t3, s2
9:                slti         s8, t3, -618
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltu         s7, s1, s1
                  and          a0, s8, s7
                  and          a4, s7, s11
                  blt          t0, s1, sub_2_stack_p
sub_2_stack_p:    addi         s4, s4, -28
                  xori         t4, s4, -622
                  nop
                  sw           ra, 4(s4)
                  sra          t6, s5, s10
                  or           gp, s11, t2
                  la           t3, sub_4
                  xor          s6, s9, t0
                  sra          zero, t1, t1
                  addi         t3, t3, -899
                  nop
                  srl          s10, t5, sp
                  andi         s8, t0, 863
sub_2_j5:         jalr         ra, t3, 899 #jump sub_2 -> sub_4
sub_2_11:         jal          ra, 5f
0:                jal          t0, 2f
1:                jal          t2, 23f
2:                jal          tp, 18f
3:                jal          ra, 1b
4:                jal          t1, 9f
5:                jal          s2, 7f
6:                jal          ra, 21f
7:                jal          ra, 19f
8:                jal          s10, 13f
9:                jal          t1, 24f
10:               jal          s7, 22f
11:               jal          ra, 14f
12:               jal          t1, 17f
13:               jal          ra, 15f
14:               jal          t1, 10b
15:               jal          ra, 20f
16:               jal          ra, 11b
17:               jal          s6, 0b
18:               jal          t1, 8b
19:               jal          ra, 6b
20:               jal          s3, 25f
21:               jal          ra, 4b
22:               jal          ra, 3b
23:               jal          ra, 12b
24:               jal          ra, 16b
25:               sltiu        s6, a7, 1913
sub_2_10:         jal          ra, 12f
0:                jal          ra, 10f
1:                jal          ra, 2f
2:                jal          t1, 9f
3:                jal          t1, 14f
4:                jal          ra, 20f
5:                jal          ra, 18f
6:                jal          t1, 5b
7:                jal          s2, 1b
8:                jal          tp, 16f
9:                jal          ra, 13f
10:               jal          sp, 7b
11:               jal          s7, 17f
12:               jal          ra, 11b
13:               jal          ra, 4b
14:               jal          t1, 15f
15:               jal          ra, 21f
16:               jal          ra, 3b
17:               jal          ra, 6b
18:               jal          ra, 19f
19:               jal          ra, 0b
20:               jal          ra, 8b
21:               lui          sp, 214744
sub_2_13:         jal          ra, 5f
0:                jal          tp, 14f
1:                jal          t1, 9f
2:                jal          ra, 6f
3:                jal          tp, 17f
4:                jal          t1, 12f
5:                jal          t1, 2b
6:                jal          ra, 11f
7:                jal          ra, 16f
8:                jal          t1, 10f
9:                jal          ra, 7b
10:               jal          s5, 0b
11:               jal          t1, 15f
12:               jal          a6, 8b
13:               jal          t0, 19f
14:               jal          t1, 1b
15:               jal          t1, 3b
16:               jal          t0, 13b
17:               jal          ra, 4b
18:               jal          ra, 20f
19:               jal          ra, 18b
20:               sub          gp, zero, s2
sub_2_14:         jal          ra, 7f
0:                jal          t1, 8f
1:                jal          ra, 4f
2:                jal          t1, 0b
3:                jal          t1, 10f
4:                jal          a6, 11f
5:                jal          t0, 6f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               addi         s9, s4, -833
sub_2_2:          jal          ra, 21f
0:                jal          s8, 3f
1:                jal          ra, 10f
2:                jal          s11, 22f
3:                jal          a5, 16f
4:                jal          ra, 9f
5:                jal          t1, 12f
6:                jal          ra, 17f
7:                jal          ra, 19f
8:                jal          gp, 18f
9:                jal          t1, 23f
10:               jal          s10, 2b
11:               jal          ra, 24f
12:               jal          ra, 25f
13:               jal          t1, 11b
14:               jal          ra, 6b
15:               jal          ra, 27f
16:               jal          ra, 20f
17:               jal          a0, 7b
18:               jal          ra, 14b
19:               jal          t1, 26f
20:               jal          ra, 1b
21:               jal          ra, 13b
22:               jal          s5, 4b
23:               jal          ra, 8b
24:               jal          ra, 0b
25:               jal          s11, 15b
26:               jal          t3, 5b
27:               srl          t1, s3, s6
sub_2_18:         jal          ra, 10f
0:                jal          ra, 25f
1:                jal          gp, 3f
2:                jal          ra, 7f
3:                jal          ra, 11f
4:                jal          t0, 9f
5:                jal          ra, 17f
6:                jal          s1, 19f
7:                jal          ra, 21f
8:                jal          ra, 24f
9:                jal          ra, 1b
10:               jal          tp, 2b
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          a6, 12b
14:               jal          ra, 5b
15:               jal          t0, 22f
16:               jal          ra, 26f
17:               jal          t1, 0b
18:               jal          a4, 20f
19:               jal          ra, 16b
20:               jal          ra, 23f
21:               jal          ra, 13b
22:               jal          ra, 18b
23:               jal          ra, 14b
24:               jal          t1, 15b
25:               jal          ra, 6b
26:               srai         s0, t6, 24
sub_2_24:         jal          ra, 7f
0:                jal          t1, 18f
1:                jal          t0, 5f
2:                jal          t1, 13f
3:                jal          t1, 12f
4:                jal          ra, 6f
5:                jal          ra, 14f
6:                jal          t4, 8f
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          ra, 17f
11:               jal          t6, 10b
12:               jal          t1, 11b
13:               jal          ra, 4b
14:               jal          ra, 15f
15:               jal          s0, 2b
16:               jal          s9, 9b
17:               jal          s5, 16b
18:               jal          a5, 19f
19:               sltiu        a0, s2, 433
sub_2_9:          jal          ra, 4f
0:                jal          gp, 6f
1:                jal          s6, 7f
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          t1, 15f
5:                jal          a4, 3b
6:                jal          ra, 14f
7:                jal          t1, 12f
8:                jal          s1, 9f
9:                jal          t1, 17f
10:               jal          sp, 2b
11:               jal          t0, 1b
12:               jal          s2, 0b
13:               jal          tp, 5b
14:               jal          ra, 13b
15:               jal          t1, 11b
16:               jal          ra, 8b
17:               sltiu        ra, a2, 32
sub_2_6:          jal          ra, 5f
0:                jal          t1, 12f
1:                jal          t1, 4f
2:                jal          s1, 17f
3:                jal          t0, 19f
4:                jal          s7, 21f
5:                jal          t1, 1b
6:                jal          s0, 15f
7:                jal          ra, 9f
8:                jal          t1, 13f
9:                jal          ra, 20f
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          t1, 16f
13:               jal          s0, 7b
14:               jal          ra, 0b
15:               jal          ra, 11b
16:               jal          s9, 22f
17:               jal          ra, 18f
18:               jal          tp, 10b
19:               jal          t1, 6b
20:               jal          s9, 14b
21:               jal          s11, 2b
22:               add          t1, zero, s1
sub_2_20:         jal          ra, 15f
0:                jal          ra, 2f
1:                jal          t1, 19f
2:                jal          t1, 17f
3:                jal          t1, 8f
4:                jal          ra, 16f
5:                jal          tp, 22f
6:                jal          ra, 9f
7:                jal          t1, 24f
8:                jal          tp, 0b
9:                jal          ra, 26f
10:               jal          s1, 27f
11:               jal          t0, 25f
12:               jal          s5, 4b
13:               jal          t1, 14f
14:               jal          t1, 11b
15:               jal          ra, 20f
16:               jal          ra, 1b
17:               jal          ra, 5b
18:               jal          ra, 23f
19:               jal          ra, 7b
20:               jal          s2, 13b
21:               jal          t1, 10b
22:               jal          ra, 21b
23:               jal          ra, 6b
24:               jal          ra, 3b
25:               jal          s2, 18b
26:               jal          s9, 12b
27:               sltiu        s0, a6, -1034
sub_2_8:          jal          ra, 6f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          a3, 5f
3:                jal          sp, 13f
4:                jal          sp, 7f
5:                jal          s3, 11f
6:                jal          t4, 1b
7:                jal          ra, 0b
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          t2, 9b
12:               jal          s3, 3b
13:               sub          a3, a0, t5
sub_2_25:         jal          ra, 3f
0:                jal          t1, 27f
1:                jal          ra, 16f
2:                jal          ra, 15f
3:                jal          tp, 2b
4:                jal          t1, 21f
5:                jal          a5, 13f
6:                jal          t1, 19f
7:                jal          s2, 24f
8:                jal          ra, 22f
9:                jal          a1, 8b
10:               jal          ra, 25f
11:               jal          ra, 0b
12:               jal          s9, 1b
13:               jal          a7, 14f
14:               jal          ra, 23f
15:               jal          t1, 5b
16:               jal          ra, 4b
17:               jal          ra, 12b
18:               jal          a1, 20f
19:               jal          a4, 28f
20:               jal          t0, 7b
21:               jal          t1, 9b
22:               jal          a7, 18b
23:               jal          ra, 11b
24:               jal          ra, 6b
25:               jal          s8, 26f
26:               jal          sp, 17b
27:               jal          ra, 10b
28:               auipc        t0, 360437
sub_2_19:         jal          ra, 18f
0:                jal          ra, 30f
1:                jal          s5, 20f
2:                jal          s8, 7f
3:                jal          s1, 29f
4:                jal          ra, 19f
5:                jal          t0, 13f
6:                jal          ra, 14f
7:                jal          t1, 3b
8:                jal          ra, 21f
9:                jal          ra, 23f
10:               jal          ra, 5b
11:               jal          ra, 4b
12:               jal          t1, 15f
13:               jal          tp, 0b
14:               jal          ra, 22f
15:               jal          ra, 10b
16:               jal          ra, 6b
17:               jal          s7, 1b
18:               jal          s3, 16b
19:               jal          t1, 28f
20:               jal          ra, 26f
21:               jal          a0, 17b
22:               jal          t1, 8b
23:               jal          ra, 12b
24:               jal          a5, 27f
25:               jal          ra, 9b
26:               jal          t1, 2b
27:               jal          ra, 11b
28:               jal          ra, 25b
29:               jal          ra, 24b
30:               slli         s10, s10, 27
sub_2_21:         jal          ra, 0f
0:                jal          ra, 11f
1:                jal          s5, 6f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          t1, 12f
5:                jal          t1, 15f
6:                jal          a4, 2b
7:                jal          a5, 8f
8:                jal          ra, 5b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          s0, 13f
12:               jal          ra, 1b
13:               jal          t1, 3b
14:               jal          t1, 9b
15:               sltu         s5, s0, t4
sub_2_4:          jal          ra, 9f
0:                jal          t1, 13f
1:                jal          t3, 17f
2:                jal          t3, 4f
3:                jal          sp, 19f
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          ra, 18f
7:                jal          ra, 20f
8:                jal          a5, 6b
9:                jal          ra, 24f
10:               jal          ra, 11f
11:               jal          ra, 15f
12:               jal          ra, 25f
13:               jal          ra, 2b
14:               jal          tp, 22f
15:               jal          sp, 5b
16:               jal          sp, 28f
17:               jal          t3, 29f
18:               jal          ra, 14b
19:               jal          t1, 21f
20:               jal          s5, 10b
21:               jal          a4, 23f
22:               jal          ra, 27f
23:               jal          t1, 26f
24:               jal          ra, 16b
25:               jal          t1, 8b
26:               jal          ra, 1b
27:               jal          ra, 0b
28:               jal          ra, 7b
29:               auipc        ra, 993944
sub_2_17:         jal          ra, 5f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          tp, 9f
3:                jal          ra, 0b
4:                jal          t0, 8f
5:                jal          s8, 3b
6:                jal          ra, 11f
7:                jal          t1, 4b
8:                jal          t0, 6b
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               addi         t3, t3, -496
sub_2_15:         jal          ra, 12f
0:                jal          ra, 2f
1:                jal          gp, 9f
2:                jal          ra, 5f
3:                jal          a6, 11f
4:                jal          ra, 7f
5:                jal          t1, 10f
6:                jal          gp, 1b
7:                jal          a6, 6b
8:                jal          tp, 13f
9:                jal          t1, 0b
10:               jal          s0, 3b
11:               jal          s3, 8b
12:               jal          t0, 4b
13:               srl          t2, s4, s3
sub_2_5:          jal          ra, 12f
0:                jal          t1, 6f
1:                jal          t1, 4f
2:                jal          sp, 0b
3:                jal          ra, 13f
4:                jal          sp, 7f
5:                jal          ra, 10f
6:                jal          t1, 8f
7:                jal          t1, 2b
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          s3, 1b
11:               jal          ra, 9b
12:               jal          s7, 11b
13:               addi         a5, a3, 273
sub_2_26:         jal          ra, 28f
0:                jal          ra, 26f
1:                jal          t1, 10f
2:                jal          ra, 14f
3:                jal          t1, 15f
4:                jal          ra, 13f
5:                jal          ra, 1b
6:                jal          ra, 7f
7:                jal          t1, 3b
8:                jal          t1, 4b
9:                jal          ra, 19f
10:               jal          ra, 16f
11:               jal          tp, 21f
12:               jal          t4, 23f
13:               jal          tp, 0b
14:               jal          a7, 17f
15:               jal          ra, 18f
16:               jal          ra, 22f
17:               jal          ra, 11b
18:               jal          t1, 25f
19:               jal          s11, 5b
20:               jal          gp, 29f
21:               jal          s10, 20b
22:               jal          ra, 2b
23:               jal          s7, 9b
24:               jal          ra, 12b
25:               jal          ra, 24b
26:               jal          s6, 6b
27:               jal          ra, 8b
28:               jal          ra, 27b
29:               auipc        s0, 281151
sub_2_1:          jal          ra, 9f
0:                jal          tp, 6f
1:                jal          s10, 8f
2:                jal          ra, 7f
3:                jal          a0, 1b
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          ra, 13f
7:                jal          t4, 10f
8:                jal          s3, 5b
9:                jal          ra, 2b
10:               jal          sp, 11f
11:               jal          ra, 12f
12:               jal          ra, 3b
13:               slli         t3, zero, 3
sub_2_16:         jal          ra, 15f
0:                jal          ra, 26f
1:                jal          t1, 5f
2:                jal          t6, 13f
3:                jal          ra, 19f
4:                jal          ra, 23f
5:                jal          t1, 14f
6:                jal          ra, 11f
7:                jal          a6, 20f
8:                jal          ra, 16f
9:                jal          t1, 24f
10:               jal          t1, 9b
11:               jal          s9, 10b
12:               jal          t1, 22f
13:               jal          s6, 7b
14:               jal          s6, 12b
15:               jal          tp, 17f
16:               jal          ra, 3b
17:               jal          ra, 25f
18:               jal          tp, 1b
19:               jal          t1, 6b
20:               jal          ra, 27f
21:               jal          gp, 18b
22:               jal          t1, 8b
23:               jal          ra, 0b
24:               jal          t1, 2b
25:               jal          ra, 4b
26:               jal          ra, 21b
27:               slli         s2, s4, 14
sub_2_12:         jal          ra, 10f
0:                jal          ra, 7f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          ra, 17f
4:                jal          sp, 6f
5:                jal          ra, 23f
6:                jal          ra, 9f
7:                jal          s6, 2b
8:                jal          gp, 22f
9:                jal          tp, 24f
10:               jal          ra, 13f
11:               jal          ra, 19f
12:               jal          ra, 5b
13:               jal          t1, 3b
14:               jal          a0, 29f
15:               jal          ra, 11b
16:               jal          t1, 15b
17:               jal          ra, 25f
18:               jal          a3, 8b
19:               jal          t1, 20f
20:               jal          s1, 21f
21:               jal          s6, 18b
22:               jal          ra, 26f
23:               jal          t0, 1b
24:               jal          s10, 0b
25:               jal          ra, 12b
26:               jal          ra, 27f
27:               jal          ra, 28f
28:               jal          ra, 4b
29:               slti         t0, a0, -1122
sub_2_23:         jal          ra, 18f
0:                jal          t1, 8f
1:                jal          ra, 22f
2:                jal          gp, 23f
3:                jal          ra, 16f
4:                jal          tp, 21f
5:                jal          ra, 10f
6:                jal          ra, 19f
7:                jal          sp, 0b
8:                jal          t1, 3b
9:                jal          ra, 15f
10:               jal          t1, 1b
11:               jal          ra, 9b
12:               jal          ra, 11b
13:               jal          ra, 6b
14:               jal          ra, 13b
15:               jal          s7, 5b
16:               jal          ra, 12b
17:               jal          s7, 20f
18:               jal          ra, 4b
19:               jal          ra, 17b
20:               jal          ra, 2b
21:               jal          t1, 7b
22:               jal          ra, 14b
23:               nop
sub_2_7:          jal          ra, 13f
0:                jal          t1, 3f
1:                jal          ra, 5f
2:                jal          ra, 16f
3:                jal          ra, 1b
4:                jal          ra, 12f
5:                jal          a1, 8f
6:                jal          t1, 4b
7:                jal          ra, 6b
8:                jal          ra, 20f
9:                jal          s6, 0b
10:               jal          ra, 2b
11:               jal          ra, 14f
12:               jal          a7, 11b
13:               jal          sp, 15f
14:               jal          t1, 10b
15:               jal          t1, 17f
16:               jal          t1, 9b
17:               jal          ra, 18f
18:               jal          ra, 19f
19:               jal          s3, 7b
20:               srai         a6, s7, 6
                  bgeu         s5, sp, 11f
                  srai         s3, a2, 21
                  add          a4, s1, t3
                  addi         t0, a3, -2015
                  ori          a4, a3, -541
                  bne          gp, s9, 19f
                  or           s8, a6, a6
                  bltu         a1, t0, 27f
                  blt          s5, a2, 22f
                  bltu         a0, s5, 17f
                  bgeu         t5, s2, 20f
11:               sub          t4, a3, s5
                  beq          a7, t6, 29f
                  or           t0, t6, a1
                  srli         a4, t6, 15
                  bgeu         t0, t4, 16f
16:               slti         sp, s2, 1578
17:               sltiu        t6, t4, 1538
                  add          t1, s11, a7
19:               bgeu         s11, a6, 21f
20:               auipc        s10, 986570
21:               nop
22:               add          t2, t5, s8
                  auipc        a1, 971494
                  addi         t0, s9, -1456
                  bltu         a4, t0, 44f
                  and          t0, t2, s3
27:               blt          t5, t2, 31f
                  xor          a6, a3, s9
29:               bne          t6, t1, 47f
                  srli         s2, t1, 20
31:               xori         s6, a2, 2032
                  add          t4, ra, s5
                  lui          a5, 788554
                  xori         s0, s10, 362
                  blt          a5, s11, 37f
                  bltu         s2, zero, 39f
37:               bgeu         t6, s3, 40f
                  bltu         s0, s9, 54f
39:               xor          t2, tp, t2
40:               bltu         a0, a7, 44f
                  sll          sp, t2, t1
                  bne          s4, t4, 43f
43:               sll          t6, s0, gp
44:               addi         s1, t4, 941
                  bne          s5, zero, 52f
                  xor          s11, t3, s10
47:               srli         s8, sp, 10
                  bge          a6, s11, 53f
                  addi         s7, s5, 146
                  lui          s5, 64935
                  bge          s11, a3, 52f
52:               bge          a1, s11, 66f
53:               xor          a7, s9, s10
54:               blt          t4, s2, 69f
                  srai         s0, zero, 30
                  slli         sp, s4, 28
                  auipc        sp, 743018
                  xor          s3, a7, t3
                  bge          s7, a0, 71f
                  srai         t6, t6, 20
                  or           s8, a3, t1
                  xori         s9, sp, -1518
                  bne          a5, s4, 75f
                  auipc        t4, 406187
                  or           ra, a2, tp
66:               add          a4, t1, t6
                  sll          ra, s3, a0
                  srl          t6, s1, a2
69:               sub          s11, a5, t6
                  sub          gp, a2, s8
71:               xori         a6, t1, 878
                  slt          t2, a0, a2
                  and          a7, s2, s10
                  and          t1, sp, t2
75:               bltu         s4, t3, 81f
                  lui          gp, 663900
                  sra          s11, a2, ra
                  add          s10, s11, a3
                  bge          s1, tp, 86f
                  or           a6, s4, a6
81:               bge          s6, a2, 96f
                  xor          tp, s10, t2
                  and          s8, s1, a3
                  sltiu        a0, s4, 2010
                  slti         t1, a3, 1987
86:               bne          s0, a5, 88f
                  sltiu        s9, a7, 1171
88:               and          s1, s7, s2
                  slli         a0, a7, 0
                  slti         s3, s11, 263
                  srai         tp, s1, 12
                  bgeu         t4, sp, 105f
                  slti         s9, s6, 1535
                  and          t0, zero, t4
                  lui          s9, 128168
96:               bgeu         t2, t1, 111f
                  addi         t3, t4, 1168
                  add          s7, s3, s11
                  add          s7, sp, a2
                  add          a3, s6, zero
                  bgeu         s0, t1, 107f
                  xor          a3, t4, t5
                  srai         t4, ra, 26
                  slti         t4, a3, 984
105:              srl          a5, t4, s0
                  bge          s6, s10, 108f
107:              bne          s11, tp, 119f
108:              sll          a1, a1, ra
                  xor          tp, t3, a7
                  bge          t5, sp, 118f
111:              sub          a3, t1, t0
                  srli         t6, s1, 11
                  auipc        t1, 729505
                  bgeu         zero, s2, 133f
                  slt          t3, s3, t6
                  xori         s3, s3, 642
                  srl          s8, t4, s5
118:              sll          s1, a3, a0
119:              sltu         a0, a3, s2
                  nop
                  sltiu        s3, a7, -464
                  andi         a3, s0, -562
                  sltiu        s1, t3, -1406
                  xor          a3, t5, t4
                  sra          s10, s0, a2
                  andi         a5, s4, -920
                  andi         a6, s3, 622
                  xori         a1, a1, 1103
                  slt          s11, a4, a1
                  add          s10, s9, a3
                  blt          t5, s4, 146f
                  beq          a6, t2, 135f
133:              sltiu        sp, tp, -11
                  bltu         s5, a5, 135f
135:              add          a1, t2, t2
                  sub          a5, s0, s8
                  bne          s6, s11, 150f
                  slti         t4, t6, -1244
                  or           s6, s11, s6
                  bgeu         s4, s2, 147f
                  sub          a6, s6, tp
                  bgeu         s6, a5, 144f
                  slt          s6, tp, t2
144:              srli         s9, s8, 9
                  srai         gp, ra, 30
146:              sll          tp, ra, t5
147:              slli         zero, t5, 30
                  bne          t2, s4, 159f
                  bge          a5, t0, 153f
150:              beq          ra, s3, 164f
                  add          s0, s11, s1
                  sra          a4, t4, s9
153:              slt          s5, t6, t3
                  ori          a5, s7, 1197
                  nop
                  andi         s8, a3, -1756
                  beq          s7, sp, 160f
                  sub          s7, sp, t0
159:              ori          t0, s10, -1152
160:              add          s7, s6, s2
                  bge          s8, a0, 166f
                  sra          a7, t4, s11
                  slli         t2, t1, 22
164:              bge          t0, ra, 180f
                  sltiu        s10, sp, -1416
166:              auipc        a3, 927791
                  xori         t2, s5, -280
                  and          a5, a5, s5
                  beq          s11, gp, 186f
                  sub          s6, t2, t5
                  srli         a1, s0, 22
                  auipc        sp, 50615
                  slti         s10, a6, -628
                  slti         a4, s1, -561
                  andi         s9, s11, 350
                  addi         sp, zero, -1554
                  blt          s3, s7, 189f
                  slli         sp, t6, 17
                  sra          s9, a3, a7
180:              beq          gp, s3, 187f
                  or           t2, a5, t5
                  beq          a0, a3, 186f
                  sltiu        s3, t0, -1596
                  sra          a4, s0, s0
                  slt          a7, a7, sp
186:              slli         s3, t3, 2
187:              bltu         a3, s10, 201f
                  bne          s0, a3, 206f
189:              lui          a5, 853301
                  xori         t4, a3, -127
                  and          a6, a6, t2
                  sltu         sp, a4, zero
                  xori         a0, a4, -283
                  lui          s7, 338659
                  addi         t4, zero, 1486
                  lui          t6, 208621
                  bge          s3, s5, 217f
                  beq          t2, s3, 199f
199:              sltu         s11, gp, s4
                  srl          s7, a3, tp
201:              xor          a4, s5, sp
                  auipc        ra, 57610
                  or           t3, s7, s7
                  nop
                  srai         a6, a2, 19
206:              sltu         s8, s1, gp
                  andi         a3, s9, 1242
                  sll          a0, a4, s8
                  nop
                  sra          tp, a3, a6
                  xori         t3, s10, -196
                  or           a4, t0, gp
                  sltu         t2, gp, s3
                  srli         zero, s7, 29
                  sltu         s10, a0, s9
                  nop
217:              xori         s7, t0, 1710
                  sra          s9, s10, s3
                  lui          ra, 37103
                  slli         s7, s2, 23
                  ori          gp, sp, -379
                  addi         a0, a2, -1632
                  bgeu         t3, tp, 224f
224:              or           tp, t0, a5
                  blt          s7, zero, 235f
                  sra          tp, s7, s9
                  and          tp, t6, ra
                  sra          s10, a1, t1
                  sub          t1, t4, a3
                  ori          ra, a4, 1307
                  srai         zero, s5, 0
                  bne          s6, s1, 234f
                  srai         a6, zero, 16
234:              bne          s2, s11, 248f
235:              srli         a1, s11, 0
                  sra          ra, t4, zero
                  srai         ra, a0, 17
                  bge          a0, s0, 244f
                  sra          a3, a2, t6
                  sltiu        s0, s8, 1116
                  xori         s3, t5, -1012
                  blt          t4, s10, 243f
243:              srli         a6, s4, 16
244:              slt          sp, s7, a6
                  sra          t3, s0, a0
                  or           tp, s9, t0
                  lui          s0, 324539
248:              ori          t4, a5, -409
                  bge          t6, t0, 267f
                  sub          s5, t0, t0
                  srli         zero, a5, 23
                  sll          a3, ra, a6
                  and          s11, a3, s1
                  slli         sp, s5, 6
                  sub          a0, s8, s2
                  slt          s10, s5, a0
                  srl          t4, s4, a3
                  and          s1, t1, t6
                  sltiu        ra, gp, -1884
                  sltu         a0, s3, gp
                  srl          ra, a4, s2
                  lui          s5, 93389
                  sltu         t6, tp, t6
                  lui          s5, 667597
                  andi         s7, s3, -1723
                  bge          t5, a6, 271f
267:              xor          s0, zero, sp
                  sltu         s2, s4, s7
                  ori          a5, s6, -978
                  sub          s2, t1, t4
271:              ori          s0, s4, 1548
                  lui          s3, 528517
                  beq          ra, s6, 288f
                  bge          a6, s4, 276f
                  sltiu        ra, s9, 1308
276:              ori          a0, s2, -594
                  ori          t1, a6, 1734
                  xor          s3, a7, t1
                  srli         t6, a0, 4
                  ori          s11, s2, 195
                  or           a6, gp, s3
                  nop
                  ori          s10, s5, 1062
                  beq          a3, a5, 298f
                  and          t3, a1, t3
                  srl          gp, t2, zero
                  sub          s11, s7, a6
288:              and          s6, s0, a3
                  lui          s11, 444428
                  add          s6, t2, t5
                  bne          tp, tp, 295f
                  sltu         s6, t0, s6
                  add          ra, a7, zero
                  blt          a7, ra, 301f
295:              bgeu         s2, a5, 309f
                  addi         a4, t0, -1749
                  or           gp, a4, s3
298:              srli         s5, s7, 26
                  xori         t3, t1, 332
                  sub          ra, s6, a0
                  sra          ra, s10, tp
                  slli         s6, a0, 24
                  add          s1, s2, s3
                  or           a4, a2, gp
                  sll          s6, s9, gp
                  ori          s7, s4, -321
                  sltiu        s8, s5, 694
sub_2_j6:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  sub          s1, t1, a0
                  andi         s0, a0, -546
301:              beq          s0, t4, 312f
                  sltiu        s7, s5, 51
                  and          s1, a7, t4
                  sra          ra, s5, s0
                  bne          a1, s8, 319f
                  or           zero, a7, s0
                  sub          tp, s2, tp
                  or           t4, s3, s9
309:              sub          s1, gp, t5
                  lui          a6, 592552
                  sub          t2, t3, ra
312:              sra          t4, ra, t2
                  sltiu        t4, s7, 1847
                  sub          s7, t4, t2
                  srli         t4, t5, 28
                  nop
                  slt          t3, t4, s11
                  slt          s0, s11, s6
319:              sll          a0, a5, t3
                  blt          tp, s1, 337f
                  sll          t0, t2, ra
                  beq          s5, tp, 341f
                  beq          a3, s0, 327f
                  srl          s0, gp, t0
                  lui          gp, 468479
                  slti         s11, a3, -563
327:              sra          a5, gp, s10
                  slti         s5, a6, -623
                  or           s8, zero, s1
                  bne          zero, t1, 332f
                  sltiu        a5, a0, -119
332:              srai         ra, a3, 26
                  and          t6, a1, t0
                  sra          s3, s9, t4
                  addi         a5, s2, 1177
                  beq          s7, a0, 348f
337:              beq          t0, t6, 338f
338:              or           t4, s0, s4
                  beq          ra, s3, 342f
                  xor          t3, sp, t3
341:              add          t1, a6, s9
342:              lui          tp, 586094
                  slli         s11, s11, 8
                  bltu         t3, s5, 345f
345:              srli         t1, a6, 13
                  srli         a1, a6, 8
                  xori         s8, s5, 1118
348:              blt          tp, s6, 356f
                  bgeu         s6, a5, 351f
                  addi         gp, tp, 498
351:              nop
                  add          a6, t5, t5
                  sub          a5, s10, s7
                  srli         sp, s5, 16
                  slt          s5, s4, t3
356:              sltu         s1, s8, s3
                  auipc        a5, 272654
                  or           s5, s11, s6
                  addi         gp, t1, -1543
                  bgeu         t2, a0, 367f
                  sub          s1, ra, s0
                  andi         sp, t0, 746
                  sll          s5, s11, s6
                  addi         sp, t1, -559
                  xori         zero, s3, -745
                  lui          t0, 67433
367:              bltu         t0, a5, 380f
                  or           t0, s9, t0
                  auipc        a7, 331792
                  sra          s3, t6, t6
                  bge          sp, s7, 386f
                  blt          a7, a5, 388f
                  slti         a1, s3, -1413
                  bge          a2, s11, 384f
                  bltu         s9, ra, 378f
                  slt          sp, s9, a0
                  auipc        ra, 57653
378:              xori         t0, t0, 566
                  xori         a4, s8, -1155
380:              or           a0, s4, s11
                  srai         tp, s0, 27
                  add          s3, a2, s10
                  slti         s1, sp, -462
384:              srl          s10, a2, a5
                  xori         t1, a6, 2047
386:              xor          gp, s2, a7
                  bge          s6, s4, 399f
388:              or           a7, a4, gp
                  add          s11, ra, s7
                  sra          s6, s3, a6
                  or           a7, a3, t6
                  lui          s11, 651321
                  blt          tp, s11, 413f
                  srl          s1, a0, a7
                  bge          a6, zero, 407f
                  bgeu         a7, a1, 399f
                  srl          tp, s3, s3
                  bge          t3, s0, 416f
399:              or           a3, t4, s0
                  xori         s6, a6, -996
                  slt          s11, s8, ra
                  add          a3, sp, s6
                  and          a1, s8, a1
                  sltu         s1, s2, a6
                  andi         t2, t3, 1265
                  or           a3, a5, a5
407:              xori         a1, sp, -1883
                  beq          a0, gp, 422f
                  bgeu         s4, s11, 422f
                  andi         s5, a1, 1418
                  bgeu         t4, sp, sub_2_j7 #branch to jump instr
                  slt          t4, t3, t3
                  ori          sp, t3, 20
                  nop
                  ori          zero, a2, -160
                  xor          s2, s9, a1
sub_2_j7:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  beq          s3, t5, 424f
                  sub          s7, s10, tp
                  and          a3, s10, t4
413:              nop
                  nop
                  blt          t3, s0, 422f
416:              srai         t6, s5, 31
                  bge          s5, a1, 425f
                  srai         t6, a4, 12
                  sll          a1, a5, a7
                  andi         s3, gp, 1018
                  bgeu         zero, zero, 440f
422:              bgeu         a5, t5, 438f
                  beq          t3, t1, 443f
424:              bltu         a5, s11, 439f
425:              auipc        s7, 938581
                  slti         s5, a4, -1528
                  bne          gp, tp, 429f
                  sra          zero, s3, t2
429:              xor          sp, gp, zero
                  beq          sp, s4, 431f
431:              lui          tp, 365586
                  sltu         s7, s1, s9
                  ori          s11, a2, 1104
                  bltu         s2, s10, 437f
                  srai         s10, s3, 10
                  sltiu        t6, a1, 1953
437:              slli         ra, gp, 16
438:              sltiu        s11, s3, 785
439:              bgeu         s8, s0, 446f
440:              bltu         s4, a7, 457f
                  sll          s11, gp, t4
                  slt          a3, s4, s6
443:              bltu         s8, zero, 458f
                  auipc        gp, 301393
                  slti         s0, sp, 1607
446:              beq          s4, t6, 448f
                  andi         t0, s6, 428
448:              xori         t4, s9, -940
                  nop
                  sub          ra, s3, s2
                  beq          s10, t0, 463f
                  addi         t0, a5, -1489
                  sra          t1, s1, t1
                  xor          a4, s5, gp
                  nop
                  slti         gp, a6, -1578
457:              bne          t1, zero, 461f
458:              andi         s0, s11, 1692
                  xori         s1, ra, -1526
                  slti         a1, s8, -686
461:              xori         a0, s7, 775
                  sll          s0, t5, a5
463:              slli         a3, t3, 22
                  sub          t2, t4, sp
                  xor          s1, s2, a2
                  beq          t1, a6, 476f
                  xor          a4, s10, s7
                  bge          t0, a7, 469f
469:              sra          a4, t5, a6
                  or           a6, t4, s4
                  addi         s5, t5, -804
                  sltiu        s7, t4, 1510
                  bgeu         s7, s6, 478f
                  bltu         s1, gp, 476f
                  sltiu        a5, s11, -1682
476:              nop
                  slti         t0, a2, 116
478:              lui          a0, 54089
                  sltu         zero, t6, a0
                  srli         a5, t1, 3
                  ori          s1, s0, 167
                  bne          s3, a4, 496f
                  xori         a3, s10, -857
                  add          s5, ra, sp
                  slli         t6, gp, 27
                  sltiu        s1, tp, 1751
                  xori         tp, s1, 886
                  addi         t2, s6, 1130
                  slt          s2, ra, s10
                  slti         gp, a7, 84
                  slli         s6, s8, 7
                  sltu         tp, a4, s3
                  xori         t0, s4, -1250
                  bne          s1, a3, 500f
                  slti         s9, s0, 1414
496:              ori          a1, ra, -857
                  srai         s3, tp, 2
                  slti         gp, t3, -1017
                  srli         s7, s0, 29
500:              srl          a3, a4, s11
                  sltu         s0, s1, s6
                  or           s8, a2, gp
                  srai         s5, t2, 15
                  ori          s7, s7, -215
                  auipc        s5, 566283
                  slli         t6, ra, 20
                  andi         a5, s8, 986
                  beq          tp, s9, 509f
509:              bne          a2, s2, 513f
                  add          s11, sp, s4
                  sub          s5, a6, a2
                  and          a4, a5, a5
513:              sra          t0, s4, t1
                  bltu         t5, t2, 525f
                  srl          s10, gp, t4
                  auipc        s6, 967079
                  blt          a5, t0, 532f
                  bne          s6, a6, 519f
519:              sra          s1, a6, s5
                  srl          s10, t6, s9
                  add          s2, s4, t2
                  nop
                  srai         s5, t0, 16
                  sll          gp, s6, t1
525:              blt          s2, t5, 536f
                  andi         sp, zero, -318
                  sll          a7, s11, t0
                  bne          s10, s9, 534f
                  lui          zero, 288510
                  xor          s2, s4, sp
                  nop
532:              lui          a5, 350837
                  sltiu        a1, t5, 1900
534:              bne          a5, a7, 548f
                  bge          s9, s6, 547f
536:              ori          a3, s1, 247
                  ori          s3, gp, -1002
                  xor          gp, ra, zero
                  auipc        t2, 472602
                  sltu         sp, s10, gp
                  slli         s5, s11, 14
                  beq          s4, s6, 543f
543:              sll          t6, tp, s5
                  srli         a1, a0, 3
                  lui          s5, 310826
                  or           a6, a3, tp
547:              srli         a6, a2, 27
548:              andi         ra, t4, -1928
                  beq          a3, s1, 551f
                  auipc        s6, 382287
551:              sll          a3, s8, ra
                  sra          a7, s4, a4
                  beq          s5, s8, 563f
                  bgeu         tp, a0, 561f
                  bltu         s2, t0, 559f
                  sltu         s0, a2, s3
                  sltu         s7, t2, t3
                  bltu         t1, a5, 576f
559:              slli         s11, t1, 21
                  sub          s3, s4, a7
561:              beq          s6, ra, 578f
                  addi         s11, s7, 4
563:              bge          tp, s10, 579f
                  sra          a4, t4, s2
                  auipc        s6, 567544
                  auipc        s2, 522935
                  sltiu        t3, t0, 2023
                  srl          a1, tp, t2
                  slli         a1, s7, 3
                  slli         tp, a2, 0
                  bge          s0, t1, 573f
                  sra          s0, a5, sp
573:              slt          sp, gp, s7
                  bgeu         t0, s6, 581f
                  srl          s6, t5, tp
576:              and          gp, a0, t3
                  and          t1, s10, s7
578:              bge          gp, t0, 591f
579:              bgeu         s8, t4, 583f
                  slt          s9, tp, a4
581:              xor          s9, s3, s3
                  bne          s8, s6, 585f
583:              add          s6, s2, sp
                  srai         s6, a2, 7
585:              xor          s9, t0, t4
                  sll          t3, s3, t1
                  srai         s1, a7, 13
                  bne          a5, s6, 593f
                  sltiu        a3, s5, 1105
                  blt          s11, s10, 610f
591:              bge          sp, ra, 594f
                  srl          t4, a4, s11
593:              lui          s2, 166125
594:              slti         a4, a5, -289
                  add          s10, t0, s2
                  bgeu         sp, t1, 610f
                  sltiu        s10, s10, -1328
                  bne          s5, a1, 617f
                  addi         a1, s1, 1231
                  ori          zero, ra, 873
                  sltu         tp, t2, a6
                  bge          t0, s10, 603f
603:              sltiu        s3, t6, -1533
                  sra          t4, a4, t3
                  xori         s1, zero, -1240
                  blt          s5, s8, 618f
                  sub          s0, s7, t4
                  bgeu         a5, a1, 623f
                  slli         zero, s4, 1
610:              bne          s1, sp, 612f
                  srl          tp, zero, s0
612:              slt          a6, s8, sp
                  auipc        t6, 429366
                  andi         t6, s9, 993
                  nop
                  srai         s7, t4, 16
617:              bne          t1, s0, 625f
618:              sra          tp, a5, s4
                  srai         zero, t2, 5
                  sll          s11, t1, t4
                  srl          a4, s1, a7
                  bne          s8, a3, 636f
623:              blt          a7, s0, 638f
                  slti         ra, a2, -203
625:              beq          s10, s10, 641f
                  slt          s1, t3, s10
                  bge          t1, t1, 635f
                  nop
                  srai         sp, s0, 27
                  sub          ra, s0, t3
                  sra          gp, a4, zero
                  blt          t6, s5, 646f
                  sub          tp, s7, s10
                  auipc        gp, 727601
635:              bge          s4, t4, 639f
636:              lui          s0, 348206
                  sll          t1, gp, s1
638:              bge          s10, s10, 640f
639:              beq          s10, gp, 659f
640:              slli         a1, s6, 27
641:              bltu         s9, a1, 643f
                  and          t2, s5, a4
643:              or           a7, t3, s5
                  beq          a6, s9, 651f
                  sll          ra, s6, a1
sub_2_22:         jal          ra, 29f
0:                jal          ra, 28f
1:                jal          a1, 17f
2:                jal          ra, 21f
3:                jal          ra, 22f
4:                jal          s0, 10f
5:                jal          ra, 26f
6:                jal          ra, 20f
7:                jal          ra, 5b
8:                jal          a4, 15f
9:                jal          t1, 14f
10:               jal          ra, 16f
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          t1, 30f
14:               jal          t1, 8b
15:               jal          ra, 3b
16:               jal          ra, 19f
17:               jal          t0, 18f
18:               jal          ra, 13b
19:               jal          ra, 27f
20:               jal          ra, 9b
21:               jal          ra, 24f
22:               jal          ra, 25f
23:               jal          t1, 6b
24:               jal          ra, 0b
25:               jal          t3, 4b
26:               jal          t1, 11b
27:               jal          t1, 12b
28:               jal          ra, 1b
29:               jal          s1, 23b
30:               or           ra, t6, t3
646:              slti         tp, s7, -163
                  and          s3, s6, t3
                  xor          a1, t1, s0
                  or           a1, a2, a4
                  sll          ra, a6, s11
651:              andi         t3, a3, 818
                  and          a3, t0, s10
                  srai         s10, s9, 25
                  sltiu        t0, s6, 1969
                  xori         t2, t1, -67
                  beq          t1, s9, 659f
                  auipc        t2, 241664
                  blt          a5, s8, 670f
659:              srl          s6, s5, s3
                  xor          t0, a7, tp
                  and          zero, a4, a4
                  bgeu         t6, a1, 673f
                  bltu         s9, zero, 677f
                  sltiu        a1, s10, -1729
                  srl          tp, tp, a7
                  blt          a5, t3, 679f
                  bltu         s6, t4, 686f
                  and          s7, s5, a2
                  bltu         s10, a3, 670f
670:              xori         s6, zero, 42
                  sra          a1, ra, tp
                  slt          a0, t5, tp
673:              beq          s4, s2, 679f
                  auipc        tp, 941601
                  bgeu         a1, sp, sub_2_j4 #branch to jump instr
                  sltu         s11, a3, s1
                  sltu         a0, t6, s7
                  andi         zero, s9, 39
                  srl          zero, s3, a0
                  nop
sub_2_j4:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  bge          s11, s3, 682f
                  bgeu         t4, tp, 681f
677:              blt          t6, gp, 695f
                  sltiu        s1, a3, -679
679:              bgeu         s4, t2, 681f
                  bge          s10, a7, 683f
681:              and          a5, t5, a7
682:              xor          s2, t5, zero
683:              srl          s2, s2, ra
                  bge          s7, s6, 694f
                  andi         t3, a4, 1704
686:              sltu         s3, s0, a0
                  ori          a6, a2, 2012
                  bne          s0, s6, 689f
689:              srl          t1, s9, s7
                  nop
                  srl          s10, a2, t2
                  srl          s3, ra, s5
                  blt          t6, ra, 710f
694:              sltu         s11, t2, t1
695:              andi         s10, a0, 788
                  nop
                  or           s7, a7, t1
                  slt          tp, t1, a2
                  slt          a3, s11, s1
                  or           a4, a2, t6
                  and          t4, sp, s4
                  bltu         gp, a2, 703f
703:              bgeu         a7, sp, 715f
                  srl          a4, a1, a6
                  slti         t0, t3, -968
                  blt          a2, s11, 721f
                  bltu         s2, s0, 721f
                  slti         s3, sp, 58
                  sltu         t1, sp, a0
710:              ori          s10, s0, 765
                  or           a4, a0, ra
                  sltiu        a4, s7, 702
                  srl          t0, s6, a2
                  sltu         s11, zero, s11
715:              addi         s2, t4, -2020
                  nop
                  addi         a5, gp, 1462
                  xor          t3, t5, sp
                  sub          ra, a7, s8
                  bge          a4, a2, 724f
721:              bge          a0, t0, 725f
                  xori         a4, s0, 1134
                  lui          s8, 178439
724:              srli         t2, s9, 27
725:              ori          sp, sp, 28
                  lui          t2, 620938
                  srai         a3, a5, 19
                  add          t3, zero, t5
                  sltiu        t3, t3, -664
                  and          s11, a0, s3
                  sll          s8, s1, t3
                  sltu         t6, a0, a5
                  xor          s0, gp, gp
                  add          tp, zero, s5
                  slli         s0, t1, 6
                  slli         s7, s6, 2
                  nop
                  slli         s9, t5, 1
                  ori          sp, zero, 545
                  sra          s1, t3, s0
                  bne          s8, s2, 742f
742:              beq          a0, ra, 749f
                  andi         t1, s2, 875
                  or           a5, gp, a5
                  slli         s3, a7, 14
                  and          tp, t3, s11
                  lui          t3, 763058
                  srli         t1, t2, 22
749:              beq          a2, s2, 768f
                  slli         s1, s8, 8
                  srai         gp, a3, 21
                  bge          a6, s10, 754f
                  ori          a3, gp, -332
754:              andi         s8, a7, -1473
                  nop
                  ori          a0, s11, -1344
                  beq          s11, a4, 771f
                  bne          s9, s3, 772f
                  sltiu        s3, a2, -1175
                  srli         a0, a0, 24
                  or           s9, s4, t1
                  sub          s0, tp, s6
                  xor          tp, s6, s0
sub_2_3:          jal          ra, 20f
0:                jal          ra, 7f
1:                jal          a7, 3f
2:                jal          ra, 19f
3:                jal          ra, 11f
4:                jal          ra, 23f
5:                jal          t1, 21f
6:                jal          ra, 5b
7:                jal          t1, 6b
8:                jal          t0, 24f
9:                jal          t1, 14f
10:               jal          gp, 12f
11:               jal          t1, 18f
12:               jal          t1, 8b
13:               jal          ra, 9b
14:               jal          s9, 0b
15:               jal          ra, 16f
16:               jal          t1, 17f
17:               jal          ra, 25f
18:               jal          ra, 26f
19:               jal          sp, 22f
20:               jal          t1, 2b
21:               jal          ra, 1b
22:               jal          s1, 4b
23:               jal          t1, 13b
24:               jal          s3, 27f
25:               jal          ra, 10b
26:               jal          ra, 15b
27:               addi         a7, t3, 348
                  auipc        a1, 784898
                  sltiu        a6, s8, -1092
                  xor          a0, t5, a2
                  blt          t2, t6, 769f
768:              andi         t4, a1, 752
769:              blt          sp, t5, 780f
                  bltu         a3, s0, 780f
771:              sltiu        s8, s6, 806
772:              srai         s11, s11, 1
                  bgeu         a0, t5, 788f
                  andi         s5, s3, -472
                  and          s9, a6, s7
                  xor          s9, gp, s1
                  xor          s10, s9, a2
                  auipc        s6, 845258
                  sltu         ra, t0, s2
780:              andi         t6, s5, -1972
                  auipc        s0, 834073
                  bge          s6, s1, 795f
                  nop
                  bne          a2, s4, 796f
                  sltu         t4, a3, a1
                  xori         a3, s3, 1751
                  addi         t1, s7, 1915
788:              xori         t1, ra, 292
                  sra          s9, tp, s5
                  blt          s4, s5, 805f
                  or           sp, a1, sp
                  ori          a0, s8, -184
                  bne          gp, zero, 799f
                  bne          s3, s6, 810f
795:              sll          a0, s10, s7
796:              add          a3, gp, t6
                  auipc        s5, 614546
                  slt          t4, a5, s9
799:              sll          t0, s8, sp
                  slt          s2, s5, a7
                  srai         sp, ra, 23
                  slti         t1, s2, -1563
                  slti         a0, t1, 622
                  slt          tp, s8, a4
805:              lui          s5, 970836
                  slli         a7, s3, 6
                  sll          t3, a4, gp
                  bltu         s0, a7, 828f
                  sll          t1, t1, s5
810:              bgeu         a7, t0, 815f
                  srl          s11, t1, a4
                  sltiu        a1, t6, 286
                  sll          ra, a5, tp
                  beq          a3, t2, 826f
815:              sub          t2, sp, a3
                  add          s2, t0, a2
                  xor          s3, zero, s6
                  nop
                  bge          s11, a1, 822f
                  sub          sp, zero, t0
                  auipc        t0, 347459
822:              xor          t2, a4, s9
                  andi         t0, a7, 1414
                  andi         s1, t1, 1220
                  auipc        a1, 31366
826:              andi         t6, s3, 1276
                  srai         a3, s0, 20
828:              nop
                  addi         t4, s11, -668
                  lui          s11, 291042
                  bge          a6, t2, 848f
                  sltu         a3, s3, s0
                  addi         a1, t2, -1049
                  sub          s2, t1, a6
                  sub          a3, gp, s7
                  bge          s9, t6, 854f
                  sub          t1, a4, s11
                  nop
                  srl          s3, a6, a1
                  sltu         gp, s8, a7
                  sll          tp, t6, s1
                  slt          s11, sp, s10
                  auipc        a3, 123256
                  and          s5, a4, t0
                  blt          a7, gp, 847f
                  addi         s2, s11, -1900
847:              beq          s6, a5, 848f
848:              addi         ra, s3, -1507
                  sub          t1, s8, gp
                  srli         t4, ra, 28
                  srli         a5, s11, 14
                  bgeu         tp, a0, 859f
                  srl          s7, s10, sp
854:              ori          t2, s0, -315
                  or           s10, a7, t1
                  slti         s5, s2, -1103
                  srl          a7, s2, t1
                  xor          s7, a0, s5
859:              sll          gp, s8, s10
                  srai         t2, s11, 16
                  bltu         t3, t4, 862f
862:              andi         s9, s4, 908
                  bge          t2, s7, 866f
                  bgeu         s2, a6, 868f
                  ori          t3, a6, -1607
866:              slli         ra, t2, 26
                  lui          s8, 907328
868:              lui          t1, 922936
                  auipc        a4, 537851
                  srli         a5, s2, 23
                  nop
                  slti         s6, a4, -1476
                  nop
                  srai         ra, a2, 6
                  blt          s1, t1, 883f
                  bltu         a0, s10, 890f
                  or           t1, s8, a7
                  bgeu         a2, a5, 885f
                  bne          zero, s10, 895f
                  auipc        s3, 640912
                  slt          t0, s2, a6
                  bne          s5, a2, 902f
883:              sub          t2, t1, t5
                  add          s0, a0, a6
885:              xor          t6, s6, a6
                  nop
                  or           s1, t2, s7
                  bgeu         s8, a4, 890f
                  beq          t6, s0, 892f
890:              bltu         s2, a4, 898f
                  sra          a0, s8, t6
892:              sltu         s7, s11, t0
                  blt          s3, s1, 908f
                  xori         s9, a0, 1931
895:              slt          s0, s11, s9
                  srl          a4, s3, gp
                  addi         tp, a7, -1234
898:              sub          s7, t0, a1
                  sll          gp, t0, s3
                  bgeu         tp, a7, 904f
                  sra          s2, t5, ra
902:              ori          s11, t4, -1084
                  lui          a6, 567038
904:              sub          s1, s8, a1
                  sltu         a4, t0, a7
                  blt          t1, sp, 921f
                  addi         a4, s9, 1206
908:              bgeu         s1, tp, 919f
                  srli         s0, a7, 11
                  bge          a5, s10, 924f
                  lui          a4, 271130
                  srl          gp, s2, zero
                  add          s1, a5, t0
                  bne          t2, s11, 928f
                  andi         s9, t2, 1013
                  auipc        s8, 880507
                  xori         s2, t6, 1760
                  xori         zero, s4, 803
919:              sltu         a7, s10, t5
                  xori         s0, zero, -873
921:              xor          s1, a7, a0
                  or           s9, s9, a7
                  slti         s6, t0, 1438
924:              ori          t3, s3, 291
                  bne          s6, s7, 928f
                  andi         s1, s9, 1244
                  sltiu        a0, zero, 1107
928:              sra          t3, s10, s1
                  bgeu         s7, a3, 941f
                  bltu         ra, s5, 936f
                  xori         t1, ra, -1976
                  slli         a0, t4, 15
                  srl          a5, s9, a0
                  slli         s2, tp, 21
                  addi         a5, a7, 523
936:              ori          s5, ra, -1283
                  beq          s7, a5, 947f
                  srl          s9, t2, a0
                  beq          a7, a1, 944f
                  srl          s1, s1, s7
941:              sub          s10, t4, gp
                  slt          s0, t0, s2
                  andi         s10, s7, 1374
944:              bltu         a2, t3, 962f
                  bltu         s3, s11, 946f
946:              sltu         t4, gp, s8
947:              nop
                  auipc        t3, 618871
                  or           s5, s11, a1
                  sltiu        t4, a0, 43
                  lui          a3, 781144
                  xor          t4, s3, s6
                  sltiu        s8, tp, 896
                  slli         s9, s2, 4
                  sltiu        s9, t6, -100
                  bgeu         s8, gp, 975f
                  or           t6, s2, t3
                  or           tp, s1, s5
                  addi         s2, s7, -491
                  ori          a1, s5, -421
                  bge          t5, ra, 974f
962:              addi         zero, t3, -33
                  sra          a4, s10, a3
                  nop
                  sub          s10, s1, t0
                  xori         zero, s3, -305
                  sub          s2, t5, s10
                  bne          s9, s9, 980f
                  srl          s1, a3, a0
                  andi         s0, s9, -781
                  xor          tp, a0, s0
                  auipc        sp, 669076
                  add          gp, t3, s9
974:              lui          a3, 316881
975:              bne          s0, s4, 979f
                  blt          t1, s5, 978f
                  sra          a6, sp, t3
978:              beq          t3, ra, 985f
979:              srai         a4, t4, 9
980:              bge          gp, ra, 981f
981:              srl          s2, s2, a4
                  sra          gp, a7, s0
                  srl          sp, tp, sp
                  lui          a3, 370947
985:              sub          s0, s9, a2
                  ori          t6, a3, -447
                  and          s10, s4, a3
                  bne          a0, t3, 989f
989:              slli         s8, t2, 6
                  and          s10, s9, s6
                  nop
                  slti         s9, sp, 60
                  sub          t4, sp, s4
                  sub          a1, t5, s10
                  andi         tp, gp, -337
                  bge          gp, a1, 1013f
                  bgeu         s4, s1, 999f
                  slli         sp, s10, 8
999:              slt          s5, s5, a2
                  srl          s8, a5, a1
                  blt          a3, s9, 1015f
                  srai         t6, a5, 16
                  sub          a6, s0, sp
                  bge          s1, ra, 1012f
                  ori          s2, s1, -851
                  sltiu        a5, t2, 700
                  or           s6, s11, t2
                  xor          s2, t3, tp
                  add          s8, t5, t3
                  bltu         s6, s1, 1013f
                  srai         s2, a0, 0
1012:             srl          s6, t3, a0
1013:             lui          s0, 269653
                  add          s7, gp, s5
1015:             srl          s9, s10, s9
                  or           s1, a3, s11
                  bne          s3, t6, 1028f
                  andi         a4, t0, -263
                  srai         s5, s0, 1
                  bgeu         s5, s10, 1030f
                  or           a4, s6, s8
                  blt          t2, a3, 1026f
                  ori          a4, gp, 13
                  srai         a0, s4, 10
                  auipc        s7, 778197
1026:             srli         s3, gp, 30
                  sra          s0, s3, sp
1028:             srli         s11, zero, 0
                  bge          s7, a3, 1044f
1030:             add          a6, zero, a5
                  sltu         s8, gp, a6
                  slt          a3, s3, a2
                  add          zero, s3, a3
                  ori          gp, a5, 713
                  bne          gp, s1, 1051f
                  srai         t4, s3, 28
                  sll          s8, ra, a0
                  slti         s8, t2, 834
                  andi         t0, s10, 1089
                  sub          s8, gp, t2
                  andi         a6, s5, 1171
                  xor          t2, s6, t4
                  addi         s9, s6, -821
1044:             ori          sp, zero, -1069
                  ori          gp, a4, 1109
                  and          a7, s6, s2
                  blt          ra, zero, 1064f
                  bltu         s2, a0, 1053f
                  add          gp, ra, t1
                  add          s10, t4, s0
1051:             xor          s3, t5, zero
                  srli         s0, s7, 16
1053:             srl          s10, a6, s1
                  beq          a0, s11, 1069f
                  add          s9, a3, s1
                  ori          t3, t3, 1841
                  add          s2, a3, t2
                  bne          zero, t4, 1064f
                  bne          s0, s9, 1060f
1060:             lui          t0, 1016510
                  sltiu        t1, t6, -82
                  xor          s10, s9, s7
                  bge          gp, s6, 1065f
1064:             xori         t3, t4, 126
1065:             sltu         a0, ra, s4
                  bgeu         s4, ra, 1079f
                  sltiu        s7, s1, -1828
                  beq          s4, t3, 1082f
1069:             xori         t4, a7, 1724
                  addi         sp, t3, 1875
                  or           s2, t3, s6
                  and          a4, zero, a4
                  slti         s7, s1, 480
                  blt          a1, s7, 1081f
                  srl          t6, s5, s7
                  addi         ra, tp, 2026
sub_2_0:          jal          ra, 5f
0:                jal          gp, 14f
1:                jal          a0, 9f
2:                jal          sp, 17f
3:                jal          t4, 0b
4:                jal          t1, 12f
5:                jal          ra, 15f
6:                jal          ra, 13f
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          t0, 16f
10:               jal          t1, 2b
11:               jal          a3, 10b
12:               jal          ra, 18f
13:               jal          sp, 3b
14:               jal          a5, 11b
15:               jal          ra, 7b
16:               jal          ra, 6b
17:               jal          t1, 8b
18:               xori         t0, s2, -1280
                  sll          s8, t5, a4
                  bgeu         s9, a2, 1081f
1079:             sra          t2, s0, a2
                  bge          s9, gp, 1100f
1081:             bne          t2, s8, 1083f
1082:             xori         s3, a6, 848
1083:             xor          a0, s11, s5
                  srai         sp, zero, 13
                  blt          a3, s6, 1086f
1086:             slli         gp, a3, 20
                  ori          zero, ra, 152
                  xori         zero, a1, -410
                  bltu         s1, t6, 1101f
                  sra          a5, s11, t3
                  xori         s11, a6, 1049
                  or           s1, s4, a5
                  sltu         s7, s6, a5
                  xor          a6, s2, s7
                  slti         s2, t4, -672
                  sltiu        a1, s7, -1511
                  nop
                  xor          s9, s10, a0
                  slti         t2, t0, 121
1100:             xor          a0, t4, a1
1101:             slt          t0, ra, t0
                  bgeu         a2, a0, 1109f
                  srai         a6, s1, 31
                  slt          s11, s3, t3
                  slli         s10, a0, 3
                  ori          t2, s9, 596
                  sra          t4, t6, s6
                  srli         s2, a0, 7
1109:             xori         s7, a2, -282
                  and          a1, a3, a5
                  sub          t3, s0, a2
                  slt          s0, a4, t2
                  bltu         t5, s2, 1131f
                  slt          s6, a4, t1
                  srai         s8, a1, 13
                  srl          t6, s5, a1
                  or           t4, a0, s8
                  bne          s4, tp, 1119f
1119:             add          t2, a4, tp
                  blt          s3, t1, 1132f
                  or           ra, s8, s10
                  slli         gp, sp, 21
                  slti         s1, a5, -192
                  addi         s1, a7, 999
                  addi         sp, t2, 905
                  sub          s0, s4, a4
                  slti         s5, s10, 1335
                  add          t4, t5, s11
                  auipc        a4, 496609
                  andi         a1, tp, 6
1131:             sltiu        t2, s7, -1823
1132:             bgeu         ra, a4, 1134f
                  slti         a4, s3, 1007
1134:             sub          s9, s8, s3
                  auipc        t6, 569294
                  addi         gp, a7, -614
                  srli         a3, a6, 11
                  slt          s11, s8, a7
                  srli         s3, t2, 0
                  slti         s7, t4, 1605
                  sltiu        s3, zero, 2007
                  slt          gp, t3, a1
                  add          t3, t6, t1
                  sub          tp, s4, ra
                  sub          s10, a7, t1
                  sll          s10, a6, zero
                  bltu         s5, s0, 1166f
                  sltu         s8, s4, a6
                  bge          t1, s9, 1163f
                  sltiu        tp, t4, 1379
                  sub          t2, ra, s0
                  sltu         a1, s9, s0
                  slti         a7, sp, 742
                  sltu         sp, s11, sp
                  sll          zero, a3, gp
                  xor          gp, s9, s0
                  add          t4, s2, a7
                  bge          s11, s5, 1172f
                  slli         s6, s10, 30
                  srai         s11, s3, 5
                  sltu         s7, s10, t6
                  sll          t3, s2, t3
1163:             sub          ra, t6, a7
                  add          a1, s11, s9
                  addi         a4, s9, 594
1166:             sra          tp, s9, s1
                  bgeu         a7, a0, 1171f
                  bgeu         s10, s10, 1171f
                  ori          s6, s2, 1071
                  sltiu        s1, a2, 2007
1171:             srli         a7, s1, 19
1172:             or           s3, s8, t1
                  nop
                  xor          s0, s9, tp
                  nop
                  srl          s2, a4, t3
                  nop
                  bge          t6, s8, 1196f
                  nop
                  bgeu         t6, s7, 1182f
                  slli         a3, a4, 13
1182:             xori         s0, s3, -540
                  addi         t0, s7, 627
                  bne          t3, s3, 1197f
                  slli         s5, a5, 16
                  xori         s2, zero, -1810
                  slt          t3, t5, s1
                  bgeu         a0, sp, 1208f
                  slt          tp, t2, s7
                  blt          s2, a3, 1197f
                  srli         s0, a5, 4
                  sra          s9, s11, s1
                  beq          s5, t3, 1208f
                  bltu         a2, a1, 1196f
                  sub          a0, t4, a7
1196:             bge          s6, s10, 1206f
1197:             sltu         t0, t0, t5
                  and          t2, zero, a5
                  blt          s8, tp, 1201f
                  bne          t5, s3, 1201f
1201:             ori          s3, s1, 926
                  add          a1, a6, gp
                  slti         a0, t4, 290
                  blt          tp, s8, 1221f
                  and          s0, a7, a0
1206:             sra          t6, ra, t3
                  sra          a4, t3, tp
1208:             or           s0, s10, a7
                  bne          s4, t2, 1223f
                  bge          t4, a5, 1218f
                  sltu         t2, t4, a7
                  bge          s8, tp, 1231f
                  slti         s8, a4, -1832
                  andi         s1, t3, 1471
                  sra          t0, t3, gp
                  lui          s0, 43732
                  srai         s3, gp, 22
1218:             add          t0, t6, gp
                  bltu         a6, s9, 1226f
                  blt          s6, s6, 1232f
1221:             sll          s9, s5, s6
                  sll          a4, a6, t6
1223:             and          sp, s11, gp
                  sll          a7, gp, s0
                  xor          s2, sp, s10
1226:             auipc        s11, 913121
                  xori         t3, s1, 855
                  lui          t6, 482821
                  sub          t2, s2, t4
                  srli         t1, t1, 27
1231:             xor          s11, s10, s2
1232:             lui          a0, 644466
                  and          t1, a6, t6
                  sub          a3, zero, s10
                  auipc        s7, 635419
                  addi         a1, t4, 394
                  add          a3, s8, ra
                  srl          a3, s2, a6
                  andi         a3, s1, 1461
                  sltiu        s9, s11, 651
                  and          s2, a2, s0
                  bltu         gp, s11, 1247f
                  beq          s0, t5, 1254f
                  add          s2, t1, s7
                  bne          s6, s11, 1259f
                  srl          s11, t2, t4
1247:             lui          tp, 640432
                  bgeu         s10, t3, 1264f
                  bge          s10, a0, 1250f
1250:             auipc        s6, 939376
                  sra          s10, t2, t2
                  lui          ra, 260174
                  beq          s0, ra, 1257f
1254:             sra          s2, t4, a5
                  slti         s10, t2, 41
                  add          t1, s8, a3
1257:             sltu         s0, s9, a5
                  ori          s2, tp, -584
1259:             xor          t1, a5, s6
                  andi         a3, s10, 1905
                  sltiu        s6, a0, -421
                  srai         t0, s4, 22
                  lui          s5, 758817
1264:             add          s11, a5, a2
                  slli         t2, t3, 7
                  bne          s6, a0, 1280f
                  lui          t2, 843082
                  sub          s8, t6, a2
                  addi         t0, a6, 1062
                  or           t6, a5, a4
                  sltiu        a5, a5, 256
                  xor          s8, s1, s3
                  bgeu         s5, s3, 1288f
                  srai         s7, s6, 15
                  srl          a3, s8, t3
                  srli         a0, s6, 11
                  bge          zero, a5, 1283f
                  slli         t1, t4, 16
                  andi         sp, t2, 1402
1280:             xori         s11, gp, -1724
                  add          s11, s9, t4
                  beq          s8, s1, 1283f
1283:             sltu         a5, t5, s7
                  slti         s9, s9, 843
                  slli         a1, a4, 25
                  xori         s3, t3, 1286
                  bne          sp, s0, 1291f
1288:             beq          s7, s5, 1291f
                  slli         a7, s7, 10
                  or           a4, s6, a6
1291:             or           s5, t1, t0
                  srai         ra, a5, 6
                  ori          t4, t6, -1766
                  sub          a4, t4, s3
                  andi         sp, s1, -743
                  srai         s10, s4, 9
                  xor          s0, s9, a0
                  sra          s2, s1, a5
                  and          tp, s0, a7
                  sltiu        s11, a3, -2035
                  bne          t3, a5, 1313f
                  sltu         a3, a1, s1
                  sll          s6, a2, s6
                  slli         s10, t4, 1
                  xori         gp, s11, 311
                  xor          t3, t2, s7
                  slli         t6, t5, 11
                  sub          t3, t1, t1
                  ori          tp, s0, 627
                  srl          t6, zero, s8
                  srli         a1, t3, 29
                  xor          s2, a1, a7
1313:             beq          t5, s7, 1325f
                  xor          s1, ra, s5
                  addi         t0, a7, 1768
                  sll          a1, s7, a1
                  add          zero, a3, s7
                  nop
                  nop
                  ori          s1, t4, 127
                  srl          t0, s10, a0
                  nop
                  ori          t0, s5, 189
                  bne          s6, sp, 1340f
1325:             bltu         t6, s11, 1339f
                  bltu         t6, zero, 1333f
                  add          t6, gp, gp
                  srai         s9, s7, 31
                  slli         ra, sp, 22
                  sltu         t2, t5, s1
                  beq          a0, a7, 1335f
                  beq          s5, s7, 1350f
1333:             add          t6, s7, s8
                  slti         s9, gp, -1821
1335:             beq          s7, s5, 1338f
                  ori          tp, s10, 690
                  srai         s6, a3, 1
1338:             addi         s5, s1, -1677
1339:             blt          s9, a3, 1356f
1340:             nop
                  xori         s10, t5, -1914
                  auipc        s8, 896615
                  sltu         tp, s6, a2
                  sltiu        s9, t6, -19
                  bgeu         s7, s0, 1346f
1346:             slti         t2, t5, 1361
                  sltu         t4, a7, a2
                  xor          s8, t4, t1
                  sub          a0, t6, sp
1350:             bne          s1, sp, 1352f
                  sll          s7, t2, s8
1352:             add          s10, s7, t4
                  bge          t2, s7, 1355f
                  ori          s7, s0, 1048
1355:             slt          a7, a7, a6
1356:             slli         a6, t1, 12
                  ori          s7, zero, 874
                  bgeu         a5, s10, 1366f
                  bne          a0, t2, 1379f
                  ori          zero, a5, 293
                  nop
                  auipc        t6, 468900
                  auipc        a1, 347737
                  bne          t0, a2, 1371f
                  or           s5, a7, tp
1366:             auipc        a5, 58661
                  lui          t0, 175597
                  and          t3, s6, a5
                  auipc        a5, 135231
                  sltu         s7, tp, tp
1371:             sltu         a3, t0, a1
                  sltiu        a1, s5, -158
                  sll          zero, a6, s4
                  sra          sp, s5, tp
                  lui          s6, 613570
                  xor          a7, s4, s8
                  sub          t3, t1, s5
                  bne          s3, zero, 1380f
1379:             slli         gp, a1, 27
1380:             xor          t3, s2, s2
                  or           s5, s10, s11
                  srl          a7, s1, tp
                  add          t3, t3, sp
                  bge          s11, a6, 1389f
                  bgeu         s3, s0, 1386f
1386:             andi         s10, s0, -1269
                  sll          a4, s4, ra
                  slt          ra, s7, a0
1389:             bge          s8, a7, 1397f
                  nop
                  bge          t2, a7, 1397f
                  add          a5, t2, a5
                  bltu         t6, a3, 1397f
                  sltu         gp, gp, a3
                  srl          zero, s0, sp
                  andi         zero, t1, -596
1397:             srl          s1, s5, t4
                  slti         zero, s8, -472
                  xori         t3, s5, -1789
                  xor          t1, s10, t0
                  xor          sp, zero, tp
                  slt          s5, t1, ra
                  lw           ra, 4(s4)
                  addi         s4, s4, 28
                  nop
2086:             addi x28, x1, 0
2086:             jalr x28, x28, 0
sub_4:            slt          tp, a2, s9
                  add          tp, t3, s10
                  addi         s4, s4, -48
                  auipc        t4, 256447
                  sw           ra, 4(s4)
                  srl          t3, s2, s9
                  sltiu        s9, a3, -557
                  srai         s0, s5, 17
                  addi         t2, t0, -728
                  blt          t5, sp, 19f
                  slli         s0, s0, 27
                  bgeu         s4, s1, 14f
                  bge          t4, s8, 22f
                  bge          gp, a5, 16f
                  sra          gp, t0, s4
                  lui          s11, 375339
                  auipc        ra, 783163
                  sub          s5, s6, t1
                  ori          t0, s5, 1914
                  bltu         t5, a1, 24f
14:               nop
                  bltu         s6, t0, 22f
16:               beq          zero, s3, 28f
                  slti         sp, s6, -561
                  sltu         s0, tp, s4
19:               xor          a5, s11, s7
                  andi         t6, a6, 1349
                  andi         s2, a4, -129
22:               sltiu        s9, zero, -374
                  bne          s1, s10, 28f
24:               nop
                  sltu         s2, gp, a4
                  srli         s2, s4, 24
                  sltiu        a3, a3, -580
28:               xor          s3, s0, a2
                  sltiu        s7, t4, -210
                  lw           ra, 4(s4)
                  andi         s9, sp, 534
                  lui          a6, 480704
                  addi         s4, s4, 48
                  sltiu        t6, t6, 18
                  ori          a3, s5, -620
42:               addi x4, x1, 0
42:               jalr x4, x4, 0
sub_1:            xor          s9, t3, a2
                  lui          gp, 431914
                  lui          s6, 933711
                  slli         s0, t6, 9
                  lui          s0, 413803
                  or           a4, t6, s1
                  bne          t1, a4, sub_1_stack_p
                  sra          s2, s1, s10
sub_1_stack_p:    addi         s4, s4, -12
                  sw           ra, 4(s4)
                  and          a6, s8, t0
                  sra          s8, t0, s3
                  slti         s1, sp, 766
                  slli         s7, a6, 17
                  and          a7, t4, s6
                  srli         t2, s5, 4
                  nop
                  xor          t1, s4, t2
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
sub_1_7:          jal          ra, 25f
0:                jal          ra, 28f
1:                jal          ra, 8f
2:                jal          ra, 18f
3:                jal          t1, 27f
4:                jal          ra, 24f
5:                jal          t1, 3b
6:                jal          t1, 20f
7:                jal          ra, 29f
8:                jal          t2, 23f
9:                jal          ra, 14f
10:               jal          ra, 7b
11:               jal          ra, 19f
12:               jal          ra, 4b
13:               jal          ra, 30f
14:               jal          t1, 2b
15:               jal          t1, 22f
16:               jal          a1, 12b
17:               jal          ra, 9b
18:               jal          ra, 16b
19:               jal          t1, 10b
20:               jal          t1, 5b
21:               jal          s2, 0b
22:               jal          ra, 13b
23:               jal          ra, 6b
24:               jal          ra, 15b
25:               jal          ra, 11b
26:               jal          s9, 17b
27:               jal          t1, 26b
28:               jal          ra, 1b
29:               jal          t1, 21b
30:               auipc        ra, 658722
sub_1_6:          jal          ra, 4f
0:                jal          ra, 6f
1:                jal          s7, 7f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          t1, 5f
5:                jal          s1, 1b
6:                jal          sp, 11f
7:                jal          ra, 10f
8:                jal          t1, 2b
9:                jal          ra, 0b
10:               jal          s5, 9b
11:               jal          s10, 8b
12:               sltu         a0, s2, s9
sub_1_4:          jal          ra, 13f
0:                jal          ra, 3f
1:                jal          t1, 10f
2:                jal          ra, 9f
3:                jal          t1, 2b
4:                jal          t1, 14f
5:                jal          ra, 6f
6:                jal          ra, 17f
7:                jal          ra, 11f
8:                jal          ra, 7b
9:                jal          ra, 16f
10:               jal          s7, 4b
11:               jal          t1, 12f
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               jal          tp, 0b
15:               jal          ra, 5b
16:               jal          ra, 15b
17:               jal          ra, 18f
18:               srai         a0, s8, 7
sub_1_2:          jal          ra, 20f
0:                jal          ra, 9f
1:                jal          ra, 0b
2:                jal          ra, 22f
3:                jal          ra, 12f
4:                jal          ra, 17f
5:                jal          ra, 4b
6:                jal          t1, 15f
7:                jal          ra, 6b
8:                jal          s3, 11f
9:                jal          ra, 5b
10:               jal          s7, 14f
11:               jal          ra, 19f
12:               jal          ra, 18f
13:               jal          t1, 21f
14:               jal          a4, 13b
15:               jal          t1, 16f
16:               jal          ra, 3b
17:               jal          a6, 10b
18:               jal          t0, 1b
19:               jal          ra, 2b
20:               jal          a4, 7b
21:               jal          ra, 8b
22:               xor          s11, zero, sp
sub_1_5:          jal          ra, 7f
0:                jal          ra, 15f
1:                jal          ra, 22f
2:                jal          a3, 0b
3:                jal          t1, 19f
4:                jal          t1, 6f
5:                jal          ra, 9f
6:                jal          gp, 5b
7:                jal          ra, 12f
8:                jal          a4, 23f
9:                jal          ra, 3b
10:               jal          ra, 13f
11:               jal          ra, 20f
12:               jal          ra, 1b
13:               jal          ra, 18f
14:               jal          ra, 17f
15:               jal          t1, 11b
16:               jal          a4, 14b
17:               jal          ra, 10b
18:               jal          gp, 4b
19:               jal          s6, 8b
20:               jal          ra, 16b
21:               jal          ra, 2b
22:               jal          t1, 21b
23:               ori          a0, s0, 157
sub_1_9:          jal          ra, 11f
0:                jal          t1, 8f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          a3, 6f
5:                jal          t0, 7f
6:                jal          s6, 1b
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          t1, 14f
13:               jal          ra, 4b
14:               slti         a7, gp, 1740
sub_1_0:          jal          ra, 4f
0:                jal          s0, 12f
1:                jal          t1, 15f
2:                jal          t2, 21f
3:                jal          tp, 10f
4:                jal          ra, 19f
5:                jal          t1, 7f
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          ra, 17f
9:                jal          t1, 6b
10:               jal          t1, 2b
11:               jal          ra, 14f
12:               jal          ra, 16f
13:               jal          s1, 11b
14:               jal          ra, 20f
15:               jal          a3, 0b
16:               jal          sp, 5b
17:               jal          t1, 13b
18:               jal          t1, 1b
19:               jal          ra, 9b
20:               jal          ra, 18b
21:               xori         t4, t2, 867
sub_1_3:          jal          ra, 0f
0:                jal          t1, 20f
1:                jal          t1, 9f
2:                jal          s1, 25f
3:                jal          ra, 6f
4:                jal          a7, 21f
5:                jal          ra, 12f
6:                jal          ra, 14f
7:                jal          ra, 15f
8:                jal          ra, 24f
9:                jal          t1, 5b
10:               jal          s11, 18f
11:               jal          t1, 22f
12:               jal          ra, 7b
13:               jal          ra, 10b
14:               jal          t1, 17f
15:               jal          t1, 19f
16:               jal          ra, 4b
17:               jal          t2, 13b
18:               jal          ra, 16b
19:               jal          ra, 23f
20:               jal          t0, 1b
21:               jal          t1, 8b
22:               jal          gp, 3b
23:               jal          ra, 11b
24:               jal          s6, 2b
25:               or           a4, t6, a3
sub_1_1:          jal          ra, 20f
0:                jal          ra, 25f
1:                jal          ra, 5f
2:                jal          ra, 15f
3:                jal          ra, 13f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          ra, 11f
7:                jal          s0, 22f
8:                jal          a3, 19f
9:                jal          t6, 2b
10:               jal          ra, 24f
11:               jal          a6, 12f
12:               jal          t1, 10b
13:               jal          t1, 7b
14:               jal          ra, 4b
15:               jal          ra, 0b
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          ra, 21f
19:               jal          ra, 1b
20:               jal          ra, 23f
21:               jal          t6, 3b
22:               jal          t1, 14b
23:               jal          ra, 17b
24:               jal          ra, 16b
25:               slt          s2, s11, s5
                  sltu         s11, s11, ra
                  and          a6, a1, s4
                  slli         a6, t6, 30
                  bne          a5, a7, 17f
                  lui          a7, 158959
                  xori         a1, gp, -2018
                  srl          s1, s8, t4
                  xor          a6, a1, s11
                  auipc        s10, 413817
                  auipc        t1, 207345
                  sltiu        t3, t6, -7
                  sub          tp, t0, t1
                  bltu         tp, t4, 25f
                  and          gp, s1, s9
                  srai         a0, s7, 0
                  srl          s3, a2, s3
                  nop
17:               bltu         s11, t2, 26f
                  slli         a7, s8, 26
                  bgeu         tp, s3, 27f
                  bltu         a4, a6, 38f
                  bge          s6, s0, 31f
                  sltu         s11, s8, a2
                  or           gp, zero, s3
                  xor          t2, s6, zero
25:               srli         a4, s4, 26
26:               andi         s9, s5, 702
27:               add          a6, t6, a7
                  beq          t4, s3, 30f
                  lui          s1, 162303
30:               bge          a7, t3, 36f
31:               blt          a5, t2, 42f
                  bltu         t3, s8, 38f
                  bge          t1, s3, 40f
                  add          a7, a2, s8
                  sltiu        s0, t3, 1392
36:               and          a4, ra, tp
                  slt          s2, s4, gp
38:               sra          gp, a5, s3
                  srai         a7, gp, 1
40:               bne          s7, a7, 47f
                  slli         t1, t3, 20
42:               xor          s0, s0, s11
                  slt          s3, a2, zero
                  sub          tp, s11, s8
                  sltiu        tp, a7, -136
                  or           t1, a3, s5
47:               or           t1, s4, a3
                  sll          sp, t6, a1
                  bltu         s2, t3, 56f
                  beq          zero, tp, 60f
                  bne          t4, a4, 67f
                  or           a3, a6, zero
                  srl          s5, a4, s0
                  bge          s9, s6, 59f
                  bgeu         t4, s5, 72f
56:               and          s5, s4, t1
                  slli         a3, tp, 6
                  slt          t0, t6, a1
59:               xori         t6, s5, 1391
60:               bne          t0, sp, 75f
                  beq          a7, s10, 62f
62:               sra          s2, t1, s11
                  sll          s0, t5, s7
                  xori         a7, s3, 1954
                  nop
                  sra          s1, a1, s8
67:               slti         zero, t0, -1112
                  sll          a1, s11, s2
                  beq          sp, t3, 70f
70:               sll          s0, a7, s3
                  srli         sp, a0, 19
72:               srli         tp, s6, 8
                  srli         a4, a0, 7
                  auipc        ra, 755355
75:               sra          s6, t3, s7
                  bge          ra, a0, 95f
                  add          t1, a1, s9
                  sltiu        t4, t1, -556
                  srai         ra, zero, 11
                  bge          a6, s7, 93f
                  xor          t0, a6, t4
                  slli         t4, zero, 27
                  bne          a0, a1, 99f
                  slt          t2, t5, t6
                  andi         s2, s10, -329
                  or           a5, a0, s1
                  sltu         ra, s0, t1
                  slti         t6, s4, 577
                  slt          s7, a7, a2
                  bne          t6, s7, 103f
                  xori         t4, s0, -1955
                  xor          gp, a1, s3
93:               addi         s1, a4, 1237
                  srai         s1, t6, 2
95:               auipc        s6, 305624
                  beq          s2, gp, 98f
                  sltiu        s1, s7, -635
98:               sll          t0, ra, t2
99:               xori         s5, a7, -940
                  add          ra, t2, sp
                  sll          t4, a7, a5
                  andi         s3, t1, -620
103:              lui          s6, 377887
                  slt          t4, s9, s8
                  sltu         gp, s1, s6
                  nop
                  beq          s2, s1, 108f
108:              sll          s5, s0, zero
                  sub          tp, s0, s11
                  blt          a4, t1, 114f
                  lui          s6, 757900
                  nop
                  lui          t6, 650573
114:              xori         s8, s11, -993
                  and          s0, s6, t3
                  srai         gp, a6, 7
                  bne          s0, t3, 128f
                  srai         tp, t1, 29
                  auipc        s1, 275178
                  blt          s7, t4, 124f
                  srai         t2, a5, 28
                  or           sp, s2, t5
                  bgeu         t3, a5, 143f
124:              addi         a6, sp, 1265
                  andi         gp, s1, 1947
                  sltiu        zero, s5, 352
                  bltu         a2, t5, 129f
128:              bgeu         s3, a0, 139f
129:              beq          gp, t1, 131f
                  lui          s11, 135589
131:              sra          t0, s3, s1
                  nop
                  bne          t4, t4, 134f
134:              srli         s8, s11, 26
                  ori          a7, s8, 1553
                  nop
                  bgeu         a2, a2, 145f
                  bgeu         t6, sp, 142f
139:              nop
                  nop
                  bltu         t3, s4, 142f
142:              sub          s2, a0, tp
143:              nop
                  sub          s6, t5, a6
145:              srl          s1, t6, s10
                  bne          s10, sp, 162f
                  bgeu         s2, s6, 157f
                  nop
                  and          s8, s2, s0
                  ori          t0, t5, -61
                  bne          s1, zero, 157f
                  sltiu        tp, a5, -731
                  srl          s8, s0, t5
                  xor          a0, a2, s9
                  blt          s0, s4, 169f
                  or           a4, t3, tp
157:              sll          s1, a1, s6
                  sra          a7, s5, s4
                  auipc        s7, 628453
                  auipc        t0, 763714
                  nop
162:              bltu         t1, tp, 178f
                  slli         ra, a5, 2
                  bltu         s1, t4, 183f
                  andi         t3, zero, 697
                  ori          s8, t4, 1795
                  sltu         t1, t3, s5
                  ori          a0, a2, 1229
169:              and          a6, s5, a2
                  xori         a6, s11, 356
                  andi         zero, ra, 1255
                  sub          a7, s11, s2
                  beq          ra, t2, 186f
                  and          gp, a4, s7
                  beq          a3, s9, 179f
                  bltu         s7, s0, 183f
                  srl          t4, t6, s2
178:              andi         a4, a0, -563
179:              nop
                  slt          tp, ra, t3
                  add          a4, s4, t5
                  slli         a1, s9, 11
183:              sra          gp, a3, a1
                  xori         a4, s10, 2039
                  xor          a1, t3, s2
186:              xor          s9, s6, a1
                  and          s2, a7, t5
                  auipc        s5, 576290
                  addi         s0, s11, 338
                  slti         s11, s9, 1699
                  slti         s2, s11, 1761
                  add          a7, s0, t1
                  auipc        t6, 505115
                  nop
                  bgeu         gp, a0, 204f
                  slli         zero, t4, 12
                  slt          zero, s10, s9
                  and          sp, t2, a1
                  beq          a2, s10, 204f
                  srli         sp, a5, 4
                  bltu         t3, zero, 218f
                  sra          gp, t5, t0
                  sra          s0, a0, a4
204:              and          a1, s10, a5
                  add          t6, t2, t6
                  and          s10, s6, a6
                  srl          s0, t4, t2
                  beq          s10, a7, 218f
                  sltiu        s1, a2, -491
                  addi         s5, a2, 309
                  slti         t1, s11, 1409
                  sub          a0, s2, t2
                  bge          gp, s5, 226f
                  slt          zero, s1, s3
                  bne          s7, s1, 226f
sub_1_8:          jal          ra, 2f
0:                jal          t1, 9f
1:                jal          t1, 5f
2:                jal          ra, 0b
3:                jal          a4, 7f
4:                jal          t1, 11f
5:                jal          ra, 6f
6:                jal          t1, 10f
7:                jal          a7, 8f
8:                jal          gp, 1b
9:                jal          gp, 3b
10:               jal          t1, 4b
11:               srli         t0, s3, 5
                  slti         t1, s3, 1184
                  sra          t2, a5, sp
218:              lui          s6, 255579
                  and          a7, s11, gp
                  sub          gp, t1, a4
                  blt          s11, a5, 227f
                  beq          s11, s6, 242f
                  addi         s1, t6, 1267
                  srai         s1, a1, 26
                  bltu         s3, a5, 238f
226:              srl          a6, s1, s9
227:              bltu         a2, zero, 245f
                  slli         tp, s2, 16
                  bgeu         s6, s9, 236f
                  or           s11, a1, t3
                  xor          ra, s7, s8
                  nop
                  bne          gp, t6, 234f
234:              sltu         s5, s0, s2
                  sltu         a3, s0, a6
236:              slti         t3, a2, -1124
                  ori          s7, ra, 1195
238:              lui          s8, 331915
                  sra          a5, s11, a2
                  slli         s1, tp, 14
                  bltu         sp, t0, 248f
242:              slt          t2, a3, s0
                  bge          s0, s5, 258f
                  xor          s8, s2, zero
245:              beq          t5, a7, 259f
                  srl          ra, sp, a3
                  blt          sp, t0, 260f
248:              bgeu         a2, zero, 254f
                  or           t1, s6, s11
                  add          s11, s4, a1
                  slli         t2, s0, 5
                  bgeu         s6, s7, 267f
                  sltiu        s2, ra, 1074
254:              sltu         ra, s10, a6
                  xor          s7, s0, s3
                  sub          s7, t4, zero
                  bge          s8, a6, 258f
258:              bge          t6, s1, 268f
259:              slli         a4, t1, 26
260:              sra          ra, a4, t4
                  auipc        a0, 311743
                  slli         a3, a5, 30
                  xor          t3, a5, s11
                  bne          zero, s10, 266f
                  and          t4, gp, t5
266:              sltu         a0, s0, t2
267:              slt          ra, a0, t4
268:              and          s9, tp, s11
                  auipc        s2, 559401
                  bne          s4, a6, 274f
                  sltiu        s6, t0, -547
                  blt          s0, s4, 285f
                  and          s1, zero, s6
274:              add          s0, s8, s4
                  xor          ra, a7, s10
                  sra          s1, ra, t6
                  andi         tp, s4, -541
                  nop
                  slti         sp, s5, 2000
                  bltu         s2, s0, 300f
                  ori          a3, s2, 1182
                  lui          t0, 916881
                  srai         a7, s9, 0
                  srai         a7, t6, 28
285:              srl          sp, s6, a7
                  sub          s11, t2, tp
                  ori          t6, a5, 1137
                  nop
                  and          tp, s5, s8
                  ori          a4, a7, -895
                  bltu         t3, t3, 296f
                  lui          s6, 829826
                  slli         a3, s4, 10
                  slti         t1, a2, 443
                  slt          t2, s11, s2
296:              bgeu         sp, t1, 313f
                  or           gp, a5, s3
                  bge          ra, ra, 314f
                  srli         sp, s4, 1
300:              bge          a3, s10, 316f
                  srl          t6, a6, t4
                  andi         ra, s7, -31
                  sll          t0, ra, gp
                  bltu         t1, a6, 311f
                  sltiu        tp, s2, -1508
                  blt          s3, a7, 308f
                  xor          a0, s6, a4
308:              slli         s0, s1, 13
                  sltiu        t2, s7, -378
                  or           a5, s3, a5
311:              or           ra, a7, a5
                  and          s6, a5, zero
313:              bgeu         t2, s3, 321f
314:              add          t2, s5, zero
                  srai         sp, a5, 19
316:              nop
                  or           t3, gp, s6
                  sra          s9, t5, a5
                  sub          a3, a4, s11
                  add          s0, tp, a3
321:              slti         s0, s6, -1736
                  xori         a4, a3, -156
                  addi         tp, t3, 338
                  sltiu        ra, s0, 386
                  addi         t0, s5, -1883
                  sra          s6, s11, sp
                  slli         sp, ra, 19
                  slt          a7, s4, s11
                  slti         s8, t2, -1613
                  nop
                  auipc        ra, 854372
                  sll          a1, s7, s3
                  nop
                  srli         s8, gp, 11
                  slli         s1, ra, 8
                  nop
                  nop
                  bne          a3, s11, 349f
                  slli         a4, t5, 0
                  bne          tp, s0, 346f
                  or           s9, t5, a2
                  bne          t5, s11, 361f
                  sll          tp, s5, s10
                  lui          a4, 1039854
                  xor          ra, t0, a5
346:              nop
                  lui          t4, 629214
                  xori         a5, t1, 1210
349:              slli         t4, t6, 18
                  addi         s2, s1, 613
                  andi         s7, a5, -1864
                  bltu         s9, s11, 363f
                  slli         t1, a6, 21
                  addi         t6, a0, -455
                  xor          a5, a6, t5
                  andi         a4, t4, 2045
                  ori          t4, a4, -364
                  srl          s3, sp, a4
                  slt          s3, s3, s10
                  lui          s1, 304093
361:              slli         s7, t0, 19
                  xori         ra, a5, -224
363:              add          t3, a2, t0
                  add          s8, s10, ra
                  or           a0, t0, t5
                  sra          s5, s7, a4
                  sltiu        a5, t1, -1916
                  bge          s7, s6, 377f
                  nop
                  srli         zero, gp, 3
                  sltiu        s9, a5, -667
                  sra          t2, s0, s6
                  sltu         a0, s3, gp
                  sub          s7, s4, a5
                  xor          t1, s8, s8
                  sub          a5, a4, a7
377:              bne          a3, a2, 384f
                  sltiu        t0, s8, -1904
                  beq          a7, s9, 389f
                  bltu         s6, t0, 384f
                  add          s0, gp, s0
                  bne          s3, s4, 395f
                  addi         s8, zero, -358
384:              addi         s8, s8, -1917
                  xori         a1, a6, 1556
                  xor          ra, s3, a3
                  ori          s1, a3, -1673
                  blt          s11, s6, 389f
389:              or           tp, t2, a6
                  nop
                  xor          s11, a6, t5
                  and          s3, t2, s4
                  sltu         a7, s9, t5
                  slli         t0, a4, 24
395:              and          s7, s8, a1
                  and          a3, s10, s0
                  bgeu         sp, s8, 415f
                  bge          s0, s5, 405f
                  beq          tp, s0, 400f
400:              xor          sp, s2, s10
                  srl          a3, t4, s8
                  bgeu         t3, t6, 421f
                  ori          zero, a5, -714
                  bne          t5, tp, 411f
405:              sub          a1, tp, sp
                  bge          s9, sp, 416f
                  sltu         a6, s10, a7
                  auipc        a3, 138853
                  beq          s1, zero, 411f
                  sra          a5, a0, a4
411:              slt          a7, t0, t6
                  nop
                  sub          s5, ra, a3
                  sltu         t1, a4, s1
415:              blt          a3, s3, 425f
416:              blt          a4, sp, 431f
                  sll          zero, s8, s10
                  srl          tp, a7, a2
                  srl          gp, a2, s4
                  sltu         t3, s1, t0
421:              or           ra, sp, t3
                  slti         s7, s8, 1256
                  sub          ra, a7, t2
                  add          s11, a5, a7
425:              srl          s5, s8, t0
                  or           ra, t4, s8
                  and          t3, a4, s5
                  beq          gp, tp, 436f
                  bltu         s9, s2, 447f
                  xor          a1, s4, s9
431:              andi         s5, t2, -1212
                  srli         ra, a5, 18
                  slt          a4, s6, a7
                  slti         t1, s3, 1405
                  srl          a4, s11, s10
436:              bltu         a5, s9, 452f
                  slt          t1, zero, t2
                  xori         t0, sp, -983
                  slti         tp, s9, -683
                  slti         s5, a1, 400
                  addi         s6, t5, 2018
                  srli         s3, s2, 25
                  srli         zero, s2, 12
                  auipc        gp, 676046
                  and          s7, tp, tp
                  sll          a5, ra, s2
447:              srl          s9, t1, s11
                  sll          t3, s10, t0
                  bltu         a5, t3, 455f
                  addi         a5, t5, 210
                  addi         a4, s1, -447
452:              beq          a5, s9, 465f
                  sltu         t0, zero, tp
                  srai         s5, s2, 10
455:              auipc        a5, 658036
                  slli         t6, a4, 27
                  sltiu        s7, s7, 110
                  bge          s6, s5, 465f
                  lui          ra, 111005
                  andi         sp, s6, 1630
                  auipc        a4, 244786
                  blt          s8, s5, 463f
463:              slti         t6, ra, -333
                  srai         ra, s2, 30
465:              xor          s7, a6, tp
                  sltiu        a7, s1, 336
                  addi         a0, s7, -1967
                  nop
                  and          t0, s8, a1
                  and          s11, s4, a3
                  xor          t1, s2, a4
                  addi         s11, a6, 239
                  srl          a7, a7, s11
                  or           s1, t6, gp
                  add          t4, a0, t1
                  ori          t2, a2, -1903
                  or           zero, a4, s4
                  sub          a6, a3, tp
                  bgeu         s4, t1, 492f
                  sra          t2, t6, t1
                  xori         s9, t6, -535
                  srl          s1, s0, a0
                  srl          s1, a1, s3
                  addi         zero, t0, -931
                  bne          s5, s6, 491f
                  andi         s8, t4, 65
                  and          a6, s10, s4
                  srl          ra, s7, s7
                  sll          s3, tp, a5
                  xori         t2, a0, 777
491:              srli         s5, a3, 29
492:              addi         a6, s6, -600
                  sra          s1, s6, s0
                  lui          zero, 143571
                  bge          t0, a3, 496f
496:              slti         t4, t3, -1297
                  slti         s1, a5, 1973
                  sra          s2, a4, a2
                  addi         gp, t5, -1053
                  add          s11, t6, s10
                  bge          tp, tp, 517f
                  srl          t2, a0, s7
                  xori         s2, s3, -1871
                  sll          s5, gp, zero
                  sll          t3, a7, ra
                  xori         tp, a5, 592
                  xor          sp, s9, a4
                  blt          t6, t3, 519f
                  or           t0, s6, t4
                  sltiu        a1, a1, 184
                  blt          s9, t4, 520f
                  and          s2, s5, t0
                  andi         a7, a1, -1629
                  blt          t2, tp, 521f
                  srai         a3, tp, 28
                  ori          gp, s1, -1594
517:              srl          a6, a1, t5
                  blt          sp, a7, 527f
519:              sll          a1, gp, tp
520:              sltiu        zero, a1, -915
521:              sltu         s10, a4, a0
                  bge          zero, t6, 527f
                  addi         s5, t5, -1728
                  xor          a1, a5, a2
                  andi         s3, t3, -535
                  bgeu         a3, s10, 527f
527:              slti         s7, t5, -1017
                  andi         t6, s11, 653
                  add          a3, s5, a5
                  lw           ra, 4(s4)
                  or           a6, t5, t3
                  slli         a3, s10, 11
                  srli         t2, a1, 30
                  srl          t6, sp, s8
                  xor          s9, s2, s8
                  addi         s4, s4, 12
                  srl          s2, t6, s5
778:              addi x6, x1, 1
778:              jalr x6, x6, 0
sub_5:            addi         s4, s4, -48
                  or           t3, t0, a7
                  sltu         s9, a5, s9
                  addi         a7, s2, -598
                  and          s7, s5, s3
                  sw           ra, 4(s4)
                  sub          t0, t5, s1
sub_5_1:          jal          ra, 10f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          ra, 13f
3:                jal          ra, 18f
4:                jal          sp, 12f
5:                jal          ra, 4b
6:                jal          ra, 2b
7:                jal          a6, 17f
8:                jal          t4, 6b
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          ra, 16f
12:               jal          ra, 15f
13:               jal          ra, 21f
14:               jal          ra, 3b
15:               jal          a4, 19f
16:               jal          t1, 1b
17:               jal          ra, 8b
18:               jal          sp, 7b
19:               jal          ra, 20f
20:               jal          ra, 11b
21:               and          tp, a6, s11
sub_5_2:          jal          ra, 20f
0:                jal          ra, 11f
1:                jal          t1, 4f
2:                jal          sp, 7f
3:                jal          t6, 19f
4:                jal          ra, 18f
5:                jal          s11, 6f
6:                jal          ra, 8f
7:                jal          t1, 22f
8:                jal          ra, 0b
9:                jal          t1, 21f
10:               jal          ra, 2b
11:               jal          t6, 16f
12:               jal          t1, 10b
13:               jal          t1, 3b
14:               jal          t1, 12b
15:               jal          ra, 5b
16:               jal          ra, 1b
17:               jal          ra, 15b
18:               jal          ra, 9b
19:               jal          ra, 17b
20:               jal          t1, 13b
21:               jal          ra, 14b
22:               xori         sp, a3, -1818
sub_5_0:          jal          ra, 3f
0:                jal          sp, 6f
1:                jal          t1, 16f
2:                jal          ra, 12f
3:                jal          ra, 1b
4:                jal          ra, 13f
5:                jal          ra, 14f
6:                jal          ra, 9f
7:                jal          ra, 11f
8:                jal          t4, 15f
9:                jal          t1, 17f
10:               jal          ra, 4b
11:               jal          ra, 10b
12:               jal          ra, 0b
13:               jal          gp, 2b
14:               jal          ra, 18f
15:               jal          t1, 5b
16:               jal          a6, 7b
17:               jal          t1, 8b
18:               srli         s2, a0, 12
sub_5_3:          jal          ra, 4f
0:                jal          sp, 10f
1:                jal          ra, 5f
2:                jal          s11, 7f
3:                jal          t1, 23f
4:                jal          ra, 1b
5:                jal          s0, 11f
6:                jal          s11, 20f
7:                jal          t1, 19f
8:                jal          ra, 3b
9:                jal          a7, 12f
10:               jal          ra, 24f
11:               jal          ra, 17f
12:               jal          ra, 13f
13:               jal          s9, 15f
14:               jal          t1, 18f
15:               jal          ra, 8b
16:               jal          ra, 14b
17:               jal          ra, 2b
18:               jal          ra, 9b
19:               jal          t0, 6b
20:               jal          t4, 22f
21:               jal          t1, 16b
22:               jal          ra, 21b
23:               jal          t3, 0b
24:               xor          a5, ra, s0
                  add          sp, a0, a0
                  addi         s2, t0, -4
                  xor          s5, a0, t0
                  beq          t0, s5, 10f
                  bgeu         tp, a1, 23f
                  auipc        s8, 414162
                  lui          a6, 165981
                  slli         s11, a2, 16
                  addi         ra, a5, 687
                  sltu         s1, a7, ra
10:               srl          s3, t2, s11
                  auipc        s3, 590550
                  add          t6, s8, s11
                  sub          t4, a2, t5
                  bge          zero, s9, 24f
                  sltu         gp, a7, s8
                  sub          zero, s1, s11
                  bgeu         a2, s0, 26f
                  bltu         s2, s0, 38f
                  addi         s8, a3, 471
                  add          s8, gp, t2
                  bgeu         t2, t2, 28f
                  auipc        s2, 763926
23:               slli         s2, ra, 28
24:               or           s11, t3, s3
                  sltiu        a0, ra, -629
26:               and          s10, a3, a3
                  andi         s6, s9, -602
28:               and          s10, zero, t3
                  addi         s3, zero, -1669
                  blt          a5, s0, 44f
                  ori          tp, a7, 1260
                  lui          s0, 923922
                  sltu         s0, s3, a7
                  sltu         a3, s7, t6
                  slli         zero, a3, 6
                  bgeu         sp, s6, 38f
                  ori          s0, s10, 674
38:               bltu         s5, t6, 40f
                  slti         s10, t4, -448
40:               or           s11, s5, s5
                  andi         s7, s2, -245
                  blt          s1, a4, 54f
                  sub          zero, a6, s11
44:               slli         s2, s0, 24
                  bne          t6, s7, 59f
                  andi         s5, a5, 1247
                  srai         s3, t1, 22
                  bge          s4, t1, 55f
                  slt          s8, a6, s4
                  bge          a6, s7, 51f
51:               xori         s8, a7, -1547
                  sltu         t2, s3, zero
                  lui          s11, 893723
54:               slli         a0, t6, 11
55:               bge          s2, a6, 56f
56:               bge          s6, a1, 57f
57:               blt          t0, s1, 59f
                  bgeu         a2, s7, 63f
59:               sll          s8, s1, a2
                  andi         s10, a7, -1586
                  addi         s9, t4, 1982
                  sll          a7, s0, sp
63:               addi         a4, zero, 1350
                  xori         a7, a0, 637
                  add          t1, s7, s5
                  or           t6, s4, a2
                  bltu         gp, s1, 73f
                  srai         a1, s9, 8
                  xori         s10, s4, 109
                  bne          a5, t3, 88f
                  sltu         a1, t0, a4
                  xori         a1, tp, -1966
73:               add          a6, t2, a4
                  bge          s9, t3, 87f
                  ori          s3, a6, -1578
                  sltu         a0, sp, t4
                  bgeu         a5, t0, 78f
78:               xor          tp, t6, t1
                  andi         s0, zero, -1238
                  beq          ra, s3, 87f
                  bne          s3, a1, 82f
82:               bgeu         t5, a2, 87f
                  sll          zero, a4, a2
                  nop
                  bne          s6, s10, 90f
                  srai         s1, t3, 21
87:               beq          s4, a4, 99f
88:               sub          s5, t5, t3
                  slli         s0, s2, 19
90:               ori          s8, a5, 1070
                  or           s10, gp, t4
                  addi         t4, t2, -1976
                  bne          s4, t1, 109f
                  auipc        sp, 564245
                  slli         s0, t3, 12
                  slti         t3, s6, -58
                  andi         gp, s9, 314
                  srli         t0, s6, 17
99:               sra          s5, a1, t4
                  add          s3, s5, t4
                  bgeu         t6, a6, 102f
102:              addi         s5, a3, -183
                  sltu         a1, s5, t0
                  sltiu        a3, a4, 266
                  sltu         s2, t4, a0
                  beq          t3, s5, 112f
                  nop
                  beq          s8, s2, 112f
109:              xori         s0, s3, -809
                  addi         sp, a2, -630
                  xori         s0, t4, 80
112:              ori          t3, t3, 143
                  or           s1, t2, s0
                  beq          s5, t3, 132f
                  sra          s11, t0, s10
                  sltiu        t3, a5, 1062
                  sra          gp, t0, s2
                  nop
                  blt          ra, ra, 121f
                  and          s7, ra, t0
121:              nop
                  addi         a4, s1, 573
                  lui          s8, 77223
                  slli         s7, tp, 31
                  or           s8, zero, a6
                  and          ra, t4, s1
                  slti         s5, a6, 1388
                  blt          s1, s0, 130f
                  slli         s5, a1, 16
130:              beq          s9, s10, 146f
                  blt          s9, a0, 133f
132:              xori         s7, s10, 973
133:              xor          a3, a3, a2
                  andi         a0, gp, -953
                  xor          a0, s1, s3
                  sltu         s9, s4, t2
                  or           t6, t3, a5
                  auipc        s6, 1015596
                  blt          a5, t4, 140f
140:              bgeu         t4, s11, 141f
141:              andi         s6, a2, 103
                  nop
                  addi         a6, s1, 10
                  bgeu         a2, t0, 145f
145:              bne          s2, s4, 154f
146:              sra          a6, s0, ra
                  blt          a7, s6, 167f
                  srli         ra, s3, 28
                  addi         s9, tp, -161
                  sra          tp, s8, t6
                  nop
                  srai         zero, a0, 23
                  xor          gp, t6, a5
154:              srl          s3, s5, s4
                  and          gp, t1, a3
                  sub          s0, a6, s4
                  sub          gp, t2, tp
                  xor          s5, ra, t0
                  and          t6, tp, s6
                  slti         a4, s10, 1699
                  bne          a6, s2, 162f
162:              auipc        s3, 871061
                  xori         a4, t6, 1882
                  xor          s11, s4, a3
                  and          t1, a1, s0
                  srli         a5, s2, 19
167:              auipc        t1, 616857
                  lui          a5, 944700
                  or           s11, a4, tp
                  add          a1, a2, t4
                  lui          a4, 558131
                  nop
                  andi         t6, a0, 1886
                  ori          t4, tp, 587
                  addi         a4, a5, 880
                  addi         ra, a1, -862
                  sltu         a4, t5, s4
                  add          t1, s1, t5
                  bge          s5, s0, 192f
                  addi         a6, s5, -728
                  sll          s1, a4, t1
                  andi         s10, s1, 2029
                  slt          s10, s9, ra
                  blt          s4, a2, 191f
                  sra          s9, zero, gp
                  nop
                  lui          s2, 425248
                  slt          a6, s6, t4
                  sra          sp, a1, a7
                  srai         zero, a1, 23
191:              xori         a7, s5, -36
192:              lui          a7, 67078
                  sub          t0, t3, t6
                  ori          zero, t4, -1121
                  blt          a2, t1, 200f
                  slli         t0, a2, 20
                  blt          s3, a3, 211f
                  or           s6, s9, sp
                  bltu         a7, s4, 209f
200:              ori          ra, s3, 518
                  add          tp, s1, a4
                  xor          a1, a2, s1
                  and          s0, a5, s6
                  srli         a0, a2, 20
                  auipc        s11, 561882
                  addi         gp, s11, -2016
                  srl          s9, a1, a4
                  bge          t4, t1, 213f
209:              bltu         a5, s2, 210f
210:              sll          a1, a7, tp
211:              xori         a1, t2, -920
                  sra          zero, zero, a2
213:              beq          t6, s6, 223f
                  slli         t6, s8, 23
                  sub          t6, a3, t2
                  sltu         a0, ra, s0
                  sltu         ra, a5, t3
                  beq          s0, sp, 223f
                  sub          s10, zero, s3
                  ori          a7, a6, 627
                  bltu         a4, s3, 223f
                  beq          t0, a2, 223f
223:              and          s11, t2, tp
                  andi         sp, a2, -1010
                  add          a7, s3, t5
                  ori          t1, s9, -1190
                  lw           ra, 4(s4)
                  slt          s0, t5, t6
                  auipc        sp, 420524
                  addi         s4, s4, 48
                  and          a0, s8, s2
                  srli         s2, s11, 8
333:              addi x27, x1, 0
333:              jalr x27, x27, 0
sub_3:            bge          sp, a2, sub_3_stack_p
                  srli         s5, s11, 2
                  xor          s6, s6, s7
                  xori         zero, s7, 353
sub_3_stack_p:    addi         s4, s4, -40
                  slt          s8, t4, ra
                  sw           ra, 4(s4)
                  sub          gp, a0, sp
                  sub          s10, s1, gp
                  or           a7, s3, s10
sub_3_5:          jal          ra, 2f
0:                jal          ra, 16f
1:                jal          ra, 14f
2:                jal          ra, 8f
3:                jal          s7, 6f
4:                jal          t1, 5f
5:                jal          a5, 1b
6:                jal          s1, 10f
7:                jal          tp, 20f
8:                jal          ra, 15f
9:                jal          ra, 0b
10:               jal          ra, 19f
11:               jal          ra, 17f
12:               jal          ra, 9b
13:               jal          ra, 18f
14:               jal          t1, 3b
15:               jal          gp, 12b
16:               jal          a6, 13b
17:               jal          t3, 4b
18:               jal          ra, 11b
19:               jal          ra, 7b
20:               slt          t0, t5, s2
sub_3_7:          jal          ra, 0f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          tp, 10f
3:                jal          t1, 4f
4:                jal          ra, 14f
5:                jal          a3, 11f
6:                jal          t1, 7f
7:                jal          ra, 5b
8:                jal          t1, 3b
9:                jal          ra, 6b
10:               jal          ra, 13f
11:               jal          a6, 12f
12:               jal          ra, 2b
13:               jal          a0, 1b
14:               srl          tp, a1, s9
sub_3_13:         jal          ra, 7f
0:                jal          t1, 25f
1:                jal          s8, 2f
2:                jal          s0, 24f
3:                jal          t1, 19f
4:                jal          ra, 26f
5:                jal          ra, 4b
6:                jal          ra, 10f
7:                jal          a7, 6b
8:                jal          ra, 9f
9:                jal          t3, 3b
10:               jal          s7, 21f
11:               jal          ra, 16f
12:               jal          ra, 18f
13:               jal          ra, 15f
14:               jal          ra, 5b
15:               jal          ra, 12b
16:               jal          s1, 14b
17:               jal          ra, 8b
18:               jal          gp, 1b
19:               jal          sp, 13b
20:               jal          ra, 11b
21:               jal          s0, 0b
22:               jal          t1, 23f
23:               jal          ra, 17b
24:               jal          tp, 20b
25:               jal          t1, 22b
26:               xori         a3, a6, -1418
sub_3_3:          jal          ra, 2f
0:                jal          gp, 1f
1:                jal          ra, 10f
2:                jal          tp, 3f
3:                jal          s11, 11f
4:                jal          ra, 13f
5:                jal          tp, 18f
6:                jal          t1, 5b
7:                jal          ra, 9f
8:                jal          a7, 14f
9:                jal          ra, 8b
10:               jal          a5, 15f
11:               jal          ra, 4b
12:               jal          t4, 6b
13:               jal          a1, 17f
14:               jal          ra, 12b
15:               jal          t0, 7b
16:               jal          s5, 0b
17:               jal          ra, 16b
18:               and          s9, tp, s2
sub_3_11:         jal          ra, 14f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          s6, 11f
3:                jal          gp, 2b
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          t1, 9f
7:                jal          s7, 13f
8:                jal          ra, 6b
9:                jal          t1, 16f
10:               jal          ra, 5b
11:               jal          t1, 12f
12:               jal          ra, 8b
13:               jal          t0, 4b
14:               jal          t6, 15f
15:               jal          t2, 1b
16:               xori         a3, a4, 472
sub_3_10:         jal          ra, 10f
0:                jal          gp, 12f
1:                jal          ra, 6f
2:                jal          s9, 3f
3:                jal          a4, 7f
4:                jal          s1, 8f
5:                jal          ra, 11f
6:                jal          s6, 4b
7:                jal          ra, 0b
8:                jal          s1, 5b
9:                jal          t0, 1b
10:               jal          s6, 9b
11:               jal          ra, 2b
12:               sltu         t1, t1, a0
sub_3_1:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          s0, 13f
2:                jal          t0, 8f
3:                jal          t2, 6f
4:                jal          ra, 16f
5:                jal          ra, 4b
6:                jal          t1, 2b
7:                jal          ra, 14f
8:                jal          ra, 15f
9:                jal          gp, 11f
10:               jal          ra, 7b
11:               jal          ra, 1b
12:               jal          t1, 0b
13:               jal          a5, 5b
14:               jal          t2, 12b
15:               jal          ra, 9b
16:               srli         a0, s3, 15
sub_3_15:         jal          ra, 4f
0:                jal          ra, 2f
1:                jal          ra, 5f
2:                jal          ra, 6f
3:                jal          ra, 8f
4:                jal          t1, 3b
5:                jal          t1, 0b
6:                jal          ra, 11f
7:                jal          t1, 9f
8:                jal          ra, 10f
9:                jal          s3, 1b
10:               jal          t1, 7b
11:               slt          s1, s2, t2
sub_3_4:          jal          ra, 16f
0:                jal          tp, 6f
1:                jal          ra, 9f
2:                jal          gp, 12f
3:                jal          t0, 1b
4:                jal          ra, 13f
5:                jal          ra, 23f
6:                jal          t1, 3b
7:                jal          a0, 18f
8:                jal          t1, 4b
9:                jal          ra, 11f
10:               jal          t4, 21f
11:               jal          a3, 17f
12:               jal          ra, 8b
13:               jal          ra, 10b
14:               jal          ra, 19f
15:               jal          a4, 2b
16:               jal          ra, 7b
17:               jal          t1, 5b
18:               jal          t1, 20f
19:               jal          ra, 22f
20:               jal          s0, 15b
21:               jal          s1, 14b
22:               jal          ra, 0b
23:               andi         gp, s2, -463
sub_3_6:          jal          ra, 6f
0:                jal          t1, 9f
1:                jal          t0, 0b
2:                jal          t1, 8f
3:                jal          s7, 1b
4:                jal          ra, 11f
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          a3, 3b
8:                jal          a6, 5b
9:                jal          t1, 12f
10:               jal          ra, 2b
11:               jal          s7, 13f
12:               jal          s10, 4b
13:               or           s10, s6, s8
sub_3_8:          jal          ra, 10f
0:                jal          t1, 7f
1:                jal          t0, 2f
2:                jal          ra, 3f
3:                jal          t1, 15f
4:                jal          t1, 24f
5:                jal          a6, 4b
6:                jal          ra, 12f
7:                jal          sp, 14f
8:                jal          t1, 0b
9:                jal          ra, 13f
10:               jal          a0, 20f
11:               jal          ra, 9b
12:               jal          ra, 18f
13:               jal          s7, 6b
14:               jal          s2, 17f
15:               jal          ra, 11b
16:               jal          ra, 5b
17:               jal          a1, 22f
18:               jal          ra, 16b
19:               jal          ra, 1b
20:               jal          ra, 23f
21:               jal          t1, 8b
22:               jal          ra, 25f
23:               jal          s0, 19b
24:               jal          t1, 21b
25:               and          s6, a7, a4
sub_3_12:         jal          ra, 3f
0:                jal          a3, 6f
1:                jal          ra, 7f
2:                jal          s3, 9f
3:                jal          tp, 4f
4:                jal          ra, 5f
5:                jal          ra, 0b
6:                jal          tp, 1b
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               sltu         t1, a7, s11
sub_3_0:          jal          ra, 6f
0:                jal          sp, 13f
1:                jal          t1, 0b
2:                jal          gp, 11f
3:                jal          s5, 7f
4:                jal          t1, 8f
5:                jal          t1, 15f
6:                jal          ra, 1b
7:                jal          ra, 14f
8:                jal          ra, 10f
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          s6, 9b
12:               jal          t1, 3b
13:               jal          ra, 2b
14:               jal          t1, 4b
15:               sub          s1, s5, a1
                  srli         tp, s1, 28
                  ori          s3, s0, 1868
                  auipc        a4, 337973
                  auipc        a1, 797793
                  srai         t6, t3, 25
                  beq          s4, t2, 22f
                  srl          s1, a3, s8
                  beq          a5, s4, 26f
                  sub          a7, s0, t2
                  bltu         s2, ra, 11f
                  sll          s2, a4, s7
11:               sltiu        sp, ra, 1135
                  bltu         t1, t2, 22f
                  sub          t1, s10, s0
                  lui          t4, 488505
                  addi         s3, s10, 1207
                  bltu         t2, s7, 25f
                  lui          s0, 806148
                  or           s7, s11, gp
                  beq          s5, a7, 25f
                  sltiu        s11, s1, -587
                  srli         a1, a1, 17
22:               slti         s9, s7, 95
                  beq          t4, gp, 32f
                  sltu         s1, gp, s9
25:               blt          a2, a4, 45f
26:               slt          s1, a3, a3
                  beq          s7, s8, 38f
                  bge          zero, a5, 38f
                  addi         s8, a1, -126
                  xor          a0, a0, a4
                  slli         a1, a6, 16
32:               sltu         t1, t5, s6
                  lui          s1, 23701
                  srl          s0, s5, a6
                  bge          s11, s9, 42f
                  srli         gp, tp, 15
                  bgeu         s0, a6, 43f
38:               andi         ra, tp, -291
                  sub          s9, t5, s5
                  addi         a0, t0, 1077
                  bge          sp, ra, 55f
42:               add          s9, s8, a6
43:               lui          a7, 1703
                  lui          t2, 1034035
45:               sll          ra, a3, s4
                  ori          t3, ra, 278
                  or           t3, ra, s6
                  slli         s10, a1, 6
                  xori         s6, s7, -993
                  andi         s9, s7, -1390
                  slt          sp, s4, s4
                  sll          a6, s8, ra
                  bltu         s1, a7, 68f
                  sub          s8, a4, a4
55:               srl          s7, s0, s5
                  bne          a0, t1, 70f
                  lui          s7, 993933
                  srl          t3, s6, tp
                  or           t6, t5, a3
                  slli         s7, a2, 30
                  lui          s7, 58961
                  lui          s9, 102924
                  lui          s8, 777265
                  srli         s2, s5, 15
                  addi         s2, s5, -1991
                  sltiu        s8, a4, -792
                  blt          t2, a6, 69f
68:               bne          s3, s11, 81f
69:               or           tp, s7, s5
70:               or           s7, zero, s2
                  or           zero, t3, a1
                  srl          s2, t5, s7
                  slti         a5, s4, -1856
                  sltiu        s8, a5, 640
                  nop
                  slli         s0, s10, 3
                  bne          t2, ra, 96f
                  bgeu         a7, sp, 81f
                  bge          ra, s8, 83f
                  srl          t2, s2, t3
81:               nop
                  beq          a5, s11, 89f
83:               srl          s2, a0, t1
                  sub          t3, s9, s3
                  auipc        a7, 8128
                  slti         s8, tp, 1174
                  or           sp, a4, t5
                  sll          a4, s7, s9
89:               add          t0, s1, s1
                  auipc        s1, 563666
                  or           a7, s10, s1
                  ori          s5, a4, 1009
                  bne          t5, s3, 95f
                  sll          t1, s8, s4
95:               bne          s4, a7, 99f
96:               nop
                  and          sp, s11, a3
                  nop
99:               or           a6, t4, s6
                  ori          ra, a3, -1174
                  sll          s5, s8, s3
                  andi         a5, a1, 339
                  xori         ra, tp, 1427
                  bge          s7, sp, 114f
                  bne          s1, a0, 124f
                  srl          t1, a7, a3
                  bltu         s6, a3, 113f
                  bgeu         a2, s9, 118f
                  slti         s2, t4, 1825
                  sll          sp, t4, a2
                  lui          s9, 219669
                  sltiu        a1, a5, 1060
113:              srl          a6, a1, tp
114:              slt          t0, gp, s6
                  bge          t4, a0, 126f
                  or           a5, a7, ra
                  sub          t1, a2, s0
118:              blt          a1, t4, 132f
                  ori          a4, s1, 74
                  blt          gp, t1, 124f
                  bne          s10, s3, 138f
                  bne          a2, t5, 132f
                  beq          a0, a1, 125f
124:              blt          t5, t6, 130f
125:              sltiu        t6, s5, -1197
126:              sltu         sp, s8, s2
                  sltu         s2, s4, s9
                  beq          s4, a0, 148f
                  add          t4, t5, s0
130:              slli         t3, s7, 1
                  srli         s0, s7, 16
132:              bltu         s8, s9, 145f
                  andi         tp, t4, 344
                  bgeu         s2, s10, 145f
                  bge          t5, s2, 139f
                  slti         a0, s2, 1320
                  srli         s2, t2, 10
138:              lui          a3, 601173
139:              lui          s0, 22872
                  nop
                  sll          sp, t5, zero
                  sra          sp, s10, s11
                  ori          sp, s8, 1371
                  xori         t4, s9, -196
145:              lui          t2, 1045879
                  sub          a0, t0, s7
                  xor          a5, s9, ra
148:              ori          t6, a6, -1476
                  slti         s10, s8, -496
                  and          a0, s10, a5
                  bltu         a7, s9, 162f
                  andi         s8, t3, -905
                  sra          s11, s4, t4
                  sub          s11, a5, zero
                  bne          t2, a7, 157f
                  and          s0, s2, s5
157:              blt          s8, s3, 159f
                  sltiu        s11, t3, -1089
159:              beq          t0, s0, 169f
                  add          s3, t1, a2
                  sltiu        a7, s11, 1405
162:              sub          s10, s10, s8
                  ori          a1, t3, 331
                  sltu         gp, s10, a1
                  slt          t4, tp, s11
sub_3_14:         jal          ra, 19f
0:                jal          s7, 18f
1:                jal          sp, 9f
2:                jal          ra, 3f
3:                jal          ra, 22f
4:                jal          ra, 24f
5:                jal          ra, 20f
6:                jal          ra, 7f
7:                jal          ra, 21f
8:                jal          ra, 13f
9:                jal          ra, 17f
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               jal          t3, 4b
13:               jal          ra, 5b
14:               jal          t1, 1b
15:               jal          ra, 10b
16:               jal          t1, 8b
17:               jal          t1, 6b
18:               jal          t1, 15b
19:               jal          s9, 16b
20:               jal          tp, 14b
21:               jal          ra, 11b
22:               jal          ra, 23f
23:               jal          s5, 12b
24:               ori          s9, s1, -1757
                  srl          a6, zero, t4
                  nop
                  bgeu         s4, s11, 187f
169:              slli         a3, t4, 0
                  xor          t2, s6, s3
                  or           s7, s9, s6
                  slt          s1, s5, t0
                  blt          s9, s1, 192f
                  or           a3, s11, s11
                  xori         s10, s9, 2029
                  addi         a1, t2, -765
                  lui          s2, 422790
                  bge          s7, a1, 188f
                  ori          s6, t2, 2017
                  beq          a4, s11, 189f
                  srai         a7, t2, 26
                  slt          t1, a0, zero
                  bltu         s8, a6, 187f
                  xor          a0, s5, t6
                  sra          zero, ra, s7
                  add          s10, t1, s0
sub_3_9:          jal          ra, 3f
0:                jal          ra, 4f
1:                jal          ra, 14f
2:                jal          ra, 1b
3:                jal          ra, 15f
4:                jal          ra, 10f
5:                jal          s10, 17f
6:                jal          t1, 9f
7:                jal          t6, 0b
8:                jal          ra, 13f
9:                jal          ra, 16f
10:               jal          ra, 8b
11:               jal          ra, 12f
12:               jal          t6, 2b
13:               jal          ra, 11b
14:               jal          t1, 5b
15:               jal          ra, 7b
16:               jal          ra, 18f
17:               jal          s7, 6b
18:               jal          s5, 19f
19:               sltiu        a4, t1, -615
187:              slti         t3, s10, 1772
188:              xori         t2, s11, 1218
189:              and          t2, s9, s2
                  addi         a3, s2, -282
                  slti         t6, tp, 232
192:              and          a0, t1, s8
                  and          a1, ra, a0
                  srl          s8, ra, s2
                  nop
                  sltu         t4, s8, s0
                  blt          s3, t0, 211f
                  srl          s11, t5, s1
                  andi         s11, t6, 205
                  ori          tp, t2, 738
                  bltu         s11, t6, 215f
                  sra          s2, ra, s8
                  and          a3, gp, s1
                  xor          s10, t1, sp
                  addi         tp, a4, 565
                  bge          tp, zero, 225f
                  sub          s6, t0, s2
                  lui          s6, 125737
                  srl          s9, s7, s4
                  bne          gp, s8, 217f
211:              bgeu         a5, a6, 217f
                  nop
                  lui          gp, 19258
                  srai         a7, a2, 28
215:              srai         t6, s2, 17
                  bgeu         s2, a3, 226f
217:              srl          gp, a1, a4
                  sra          gp, s1, a4
                  ori          a4, gp, 1956
                  lui          s0, 450227
                  bgeu         s1, s1, 235f
                  sub          s9, a7, s1
                  beq          t0, t6, 226f
                  add          a1, s10, s3
225:              nop
226:              slli         zero, s5, 13
                  sra          tp, s1, t6
                  xor          s5, a4, zero
                  blt          s7, t5, 236f
                  andi         t1, a5, -1492
                  or           s8, s3, s8
                  add          ra, t2, ra
                  auipc        zero, 375061
                  beq          tp, ra, 249f
235:              slti         a3, s11, 1545
236:              srli         s3, gp, 4
                  xori         s6, s1, -1063
                  bgeu         t6, t1, 247f
                  or           a4, s8, s6
                  ori          t1, s1, 1389
                  slli         t6, t3, 8
                  xor          s7, sp, a2
                  slt          s6, tp, a4
                  ori          s2, a4, 1345
                  bgeu         s7, t3, 251f
                  and          s1, t6, s0
247:              slti         s3, t6, -1834
                  ori          a6, a5, -725
249:              blt          s8, t2, 253f
                  srai         s6, s5, 12
251:              sltu         t3, s7, s8
                  nop
253:              or           t2, ra, t3
                  slt          s7, a0, a4
                  xor          a1, ra, s3
                  lui          a0, 771645
                  slt          t6, gp, ra
                  and          s7, s1, a7
                  srai         s8, t5, 11
                  bgeu         a0, tp, 267f
                  slti         t2, s2, -1818
                  bge          gp, s0, 276f
                  slli         s7, s2, 23
                  srli         a7, s0, 20
                  sltu         a0, t0, a1
                  andi         t2, a3, -81
267:              blt          sp, a3, 277f
                  srai         t4, s11, 19
                  ori          a1, s0, -1083
                  nop
                  slli         s5, t5, 20
                  bgeu         t2, s0, 282f
                  sltu         tp, s1, t0
                  slt          a6, s0, a4
                  sra          s6, s10, gp
276:              sltu         s7, s4, s4
277:              and          s9, s2, t0
                  slt          a1, s0, a5
                  andi         t6, s8, 155
                  srai         a6, a6, 5
                  sra          t4, s11, zero
282:              sra          a7, s11, a5
                  slti         s11, tp, 600
                  addi         a1, zero, -727
                  lui          a7, 670344
                  or           sp, a1, s7
                  bne          s2, t0, 301f
                  bne          a7, s2, 290f
                  srai         t1, t3, 18
290:              ori          a3, sp, -396
                  bge          t6, t5, 295f
                  beq          s5, a5, 303f
                  xori         s3, s2, 265
                  lui          a1, 18325
295:              bltu         t1, sp, 306f
                  srli         s3, s7, 7
                  sltu         s1, a3, a7
                  add          t2, s9, a2
                  sltiu        s8, t6, -1851
                  auipc        sp, 944001
301:              srai         a0, s10, 0
                  srli         t2, sp, 6
303:              bge          t5, a7, 316f
                  slti         zero, t4, 1846
                  slli         a3, s8, 1
306:              blt          s0, s2, 320f
                  ori          s10, a2, -1442
                  slt          t4, gp, t2
                  slti         t2, t4, -2024
                  andi         s9, a2, -1060
                  bgeu         a1, s11, 331f
                  andi         s1, s9, 1966
                  slli         s8, a2, 23
                  bge          s3, zero, 321f
                  sll          s10, t3, s7
316:              ori          s3, a2, 2009
                  bltu         s6, t3, 326f
                  srl          s1, t6, t2
                  slti         s1, s10, 195
320:              srli         s1, tp, 22
321:              srli         t6, ra, 7
                  bgeu         s4, t3, 331f
                  nop
                  srai         s5, a5, 12
                  bne          a4, t1, 335f
326:              nop
                  add          tp, a0, s3
                  sub          t6, s8, t4
                  xori         a3, ra, 1350
                  blt          tp, t2, 336f
331:              srli         tp, s5, 25
                  andi         t0, s7, 994
                  sll          ra, s11, s1
                  or           s10, a2, t6
335:              beq          a4, s6, 339f
336:              and          s5, tp, ra
                  bgeu         sp, t4, 356f
                  bltu         s6, t3, 344f
339:              beq          t1, a0, 356f
                  slt          s1, s0, s8
                  addi         s3, gp, 1975
                  sra          s8, s2, s0
                  slti         s10, s5, -1620
344:              srai         t3, s8, 10
                  slt          a0, a5, gp
                  srl          s6, t4, sp
                  xor          t4, a7, s9
                  xor          s0, s6, a1
                  nop
                  nop
                  srl          ra, s4, t4
                  auipc        s5, 992590
                  slti         t3, a5, -753
                  auipc        sp, 539964
                  andi         t6, a1, 1459
356:              nop
                  slli         a3, zero, 21
                  xor          a6, s7, s1
                  srli         s2, s7, 6
                  sub          s10, a5, a3
                  srli         gp, a6, 15
                  sub          a6, a0, gp
                  xor          s3, s2, zero
                  blt          a3, sp, 367f
                  and          a1, a2, a2
                  andi         s10, t4, 1200
367:              bgeu         s0, s8, 377f
                  auipc        t6, 262739
                  sra          tp, t2, a5
                  sll          s7, s7, t4
                  ori          sp, zero, -1416
                  sub          s1, t1, t0
                  xori         s5, a7, -842
                  bltu         s9, t6, 376f
                  add          s1, gp, s5
376:              slt          tp, a4, t4
377:              or           s6, s5, tp
                  addi         s2, s8, -1596
                  and          s10, a4, ra
                  andi         a0, s2, 1958
                  bgeu         t5, a1, 396f
                  add          s8, s11, t0
                  xor          a1, s6, s10
                  slt          t6, sp, t3
                  and          t0, s7, s10
                  xori         a5, a4, -1661
                  or           tp, t6, a3
                  sltu         a6, a7, a7
                  nop
                  slli         sp, t1, 0
                  sltu         s2, t2, a0
                  and          s7, a1, s3
                  bgeu         a0, ra, 397f
                  or           zero, s8, a5
                  andi         s8, ra, 770
396:              beq          s7, ra, 415f
397:              srl          s0, s0, t3
                  ori          gp, a7, 267
                  slti         a5, t3, 1643
                  and          sp, t4, t0
                  nop
                  srl          s10, t6, s0
                  slli         a7, a1, 0
                  bne          sp, s4, 406f
                  ori          a1, t0, -1831
406:              srl          s6, s5, a4
                  bgeu         zero, t2, 426f
                  lui          a0, 19135
                  or           a3, s6, s4
                  and          tp, t6, t3
                  xor          zero, a0, s9
                  sll          s3, s10, t5
                  lui          t0, 962848
                  and          zero, t1, s6
415:              bltu         sp, t1, 421f
                  bge          t5, t6, 435f
                  andi         s0, t0, 1845
                  bltu         gp, t4, 428f
                  srli         s8, a5, 20
                  and          a6, zero, s11
421:              sltiu        t2, s3, -821
                  add          s8, ra, a7
                  slt          s0, s5, s4
                  add          s9, s1, a2
                  and          t4, s10, a7
426:              auipc        s7, 416851
                  sra          s1, a7, s4
428:              slli         s11, gp, 1
                  sltiu        gp, s6, -1759
                  srai         s0, s11, 27
                  ori          tp, t4, 1792
                  and          s11, s8, t0
                  xori         a4, s6, 833
                  bge          a5, a5, 447f
435:              sltu         t2, a6, a7
                  slli         s9, s9, 22
                  sltiu        zero, t4, -1606
                  sltiu        a0, s11, -550
                  srl          s3, gp, s8
                  srli         s9, a4, 8
                  srl          s7, t3, a4
                  bge          a5, a5, 448f
                  blt          s2, t2, 457f
                  nop
                  slli         a7, s5, 9
                  srli         a5, a2, 13
447:              sra          s6, s2, t2
448:              blt          ra, sp, 458f
                  addi         a3, a3, 404
                  bne          tp, tp, 464f
                  slli         a7, a1, 0
                  xor          a5, tp, gp
                  blt          s6, sp, 468f
                  beq          s3, sp, 465f
                  srli         a6, s10, 7
                  nop
457:              addi         s1, t3, -338
458:              xor          s10, a6, s0
                  bge          s3, a5, 463f
                  bltu         t0, t4, 466f
                  slli         a0, s8, 2
                  ori          t3, s2, 748
463:              sltu         t6, a6, a2
464:              add          s7, s11, a0
465:              xor          ra, ra, t6
466:              bge          t3, s7, 468f
                  lui          a5, 434774
468:              srli         t2, s7, 29
                  sra          gp, a3, s3
                  srl          t1, t5, s8
                  xori         t2, s0, 1453
                  srli         t0, s8, 8
                  beq          ra, a3, 493f
                  xori         s9, s2, 137
                  nop
                  sltu         s11, a3, t2
                  slli         a5, s2, 9
                  srai         s10, t3, 22
                  bne          s5, t3, 486f
                  xori         a0, ra, -453
                  or           a0, s0, s10
                  bne          s0, a6, 492f
                  srl          s0, sp, zero
                  bltu         s8, gp, 493f
                  bltu         s6, t3, 488f
486:              add          a7, gp, s3
                  beq          gp, a5, 501f
488:              srai         s11, t4, 0
                  nop
                  sltu         tp, a4, tp
                  sra          zero, a4, t6
492:              xor          s10, s2, a2
493:              sra          ra, tp, t3
                  bgeu         a0, s5, 505f
                  slli         s6, s6, 2
                  srai         t1, s5, 5
                  srl          s10, sp, s5
                  slti         t4, s8, -1036
                  auipc        s6, 1002377
                  srl          t4, s4, t3
501:              beq          s4, s1, 503f
                  sltiu        s6, zero, -1164
503:              sltu         ra, s11, a5
                  add          a4, s9, s3
505:              bne          t4, s2, 507f
                  or           s11, a7, sp
507:              srl          s6, a7, zero
                  beq          zero, gp, 527f
                  slli         a3, a3, 1
                  bne          a3, ra, 516f
                  bge          a2, s9, 528f
                  srai         t1, s11, 5
                  addi         t1, t4, 122
                  nop
                  sltiu        ra, t5, -251
516:              bge          tp, t1, 525f
                  ori          a1, s0, -1175
                  srai         s2, s9, 1
                  srl          s8, s4, a2
                  sltu         a3, s6, s1
                  sll          a4, s10, zero
                  xor          t0, a5, a1
                  nop
                  slti         s5, a1, 1962
525:              beq          s4, a7, 529f
                  xori         a5, s0, -341
527:              and          t0, t3, a0
528:              or           a0, gp, t1
529:              xori         s5, t0, -426
                  or           s8, t1, s0
                  bne          s11, s0, 541f
                  srli         s0, s11, 26
                  nop
                  sub          zero, s4, a5
                  ori          t1, t6, 1575
                  srli         a5, a2, 20
                  blt          t5, s4, 541f
                  slli         s1, t6, 18
                  sll          s7, a4, s6
                  srli         a3, t0, 23
541:              slli         sp, s5, 13
                  andi         s10, s2, -536
                  slli         s5, a5, 25
                  sra          a4, s5, a7
                  bge          s9, s10, 564f
                  slti         s9, a5, -1098
                  addi         t6, a0, -1467
                  auipc        sp, 262670
                  slli         t6, a0, 4
                  blt          s11, t2, 557f
                  beq          s8, t3, 571f
                  slti         s8, zero, 898
                  slti         s9, s8, 1564
                  auipc        s7, 625200
                  srai         a1, gp, 12
                  xor          ra, a1, t3
557:              and          s0, s4, a5
                  sll          tp, ra, tp
                  sub          a6, s7, t0
                  andi         t2, a1, -1764
                  add          s7, s3, t0
                  xori         t1, a2, -924
                  bltu         s9, t0, 574f
564:              blt          gp, t4, 567f
                  xor          s1, s2, t5
                  sub          s3, sp, t6
567:              sltiu        a4, t2, 1244
                  andi         s9, t4, -1651
                  nop
                  xor          s11, s10, a0
571:              add          s2, s9, tp
                  sll          s0, s7, t4
                  sltu         a6, s2, s6
574:              lui          t0, 613498
                  blt          a4, t4, 581f
                  bne          t4, a1, 582f
                  bne          s1, s4, 587f
                  xori         s8, s5, 1479
                  slt          t2, s4, s1
                  bltu         a3, t2, 597f
581:              blt          s5, zero, 590f
582:              slli         t2, a3, 7
                  xor          s0, t5, s0
                  srli         a5, s2, 24
                  bgeu         ra, s11, 591f
                  sra          a6, t4, a7
587:              blt          t0, sp, 589f
                  bgeu         a5, s9, 592f
589:              xori         a6, tp, -725
590:              srli         t2, a6, 28
591:              sltu         t1, s11, s11
592:              xori         s5, tp, -1870
                  bne          gp, a2, 608f
                  sltiu        s9, a0, -329
                  addi         s5, t1, 1344
                  srai         a3, s7, 26
597:              sltu         s6, a4, sp
                  sra          a1, t4, zero
                  and          s7, a0, t2
                  sltiu        a1, s11, 1536
                  add          t1, gp, t3
                  slt          a0, s0, t6
                  add          a7, t5, a6
                  beq          s11, s3, 606f
                  add          t6, s5, t5
606:              slti         a0, s3, 226
                  sra          s1, t1, a4
608:              slli         s9, a0, 4
                  slti         a6, s2, 1707
                  srli         a0, s0, 31
                  slli         a6, s5, 6
                  sra          a4, t6, t2
                  bltu         t4, t2, 624f
                  ori          t2, t2, 1995
                  srai         s7, s1, 10
                  lui          t3, 167729
                  slti         s11, a3, -1580
                  add          s7, s5, tp
                  sub          tp, a3, sp
                  bne          t0, a3, 624f
                  auipc        s2, 725222
                  add          s6, t4, s5
                  addi         a4, t4, 560
624:              slt          s0, s1, s1
                  srai         a0, s8, 4
                  blt          s5, t2, 628f
                  xori         a3, s11, -1341
628:              xori         s1, t0, 1103
                  ori          s7, s2, 1280
                  auipc        t0, 597389
                  nop
                  or           s5, a0, s9
                  ori          t3, a1, -80
                  bgeu         ra, s2, 644f
                  andi         gp, tp, -211
                  sll          s1, s3, s9
sub_3_2:          jal          ra, 8f
0:                jal          ra, 10f
1:                jal          t3, 5f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          s6, 11f
5:                jal          ra, 14f
6:                jal          ra, 2b
7:                jal          t1, 15f
8:                jal          s11, 1b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          t4, 16f
12:               jal          ra, 9b
13:               jal          ra, 12b
14:               jal          ra, 13b
15:               jal          ra, 6b
16:               srai         a6, s10, 12
                  add          a4, t2, s0
                  auipc        sp, 363323
                  blt          a4, a1, 648f
                  bge          s7, t5, 659f
                  bge          t0, t6, 655f
                  sra          t6, t4, t3
                  sub          s0, ra, a1
644:              bge          a3, zero, 651f
                  auipc        sp, 261029
                  srl          zero, a1, tp
                  srl          zero, s4, t2
648:              blt          s5, a1, 652f
                  slt          t1, s2, a5
                  slti         s5, t6, 1347
651:              bge          t6, s0, 658f
652:              nop
                  bge          t2, s1, 672f
                  add          gp, s10, s2
655:              sltu         s6, s7, s8
                  ori          sp, s9, -903
                  sltiu        s0, t1, -217
658:              xor          s1, s2, zero
659:              sltu         a3, s3, s0
                  sltu         a3, s3, zero
                  and          s7, t3, sp
                  add          s8, gp, sp
                  nop
                  sll          t6, s0, s3
                  sra          s7, a6, t0
                  sll          sp, a2, s5
                  srai         s11, s4, 24
                  bgeu         s0, s9, 687f
                  slli         a1, t2, 24
                  bne          a0, tp, 684f
                  andi         zero, s5, 1822
672:              auipc        sp, 98468
                  srli         a1, s10, 26
                  and          gp, t4, s3
                  slli         s8, s0, 23
                  beq          s11, t1, 686f
                  or           t0, t5, a5
                  sra          s7, sp, s6
                  sra          s6, a0, t0
                  srai         t2, a4, 25
                  srl          t3, t0, s4
                  blt          t5, zero, 695f
                  addi         s6, t4, 1672
684:              sltu         a5, t0, t3
                  or           a7, a1, a1
686:              andi         t0, a7, -654
687:              srl          s1, s9, a2
                  sra          t2, s3, sp
                  bltu         s5, a6, 703f
                  blt          t4, a4, 700f
                  bge          t3, t1, 695f
                  bne          a1, a4, 709f
                  bltu         s6, a4, 707f
                  blt          a7, s4, 709f
695:              add          ra, ra, tp
                  nop
                  slli         a0, ra, 13
                  bge          s3, s2, 717f
                  slt          a7, s9, s10
700:              sll          s11, s9, t1
                  blt          a5, s0, 711f
                  bge          s4, tp, 716f
703:              addi         t4, s4, -1567
                  sra          a4, s2, a6
                  lui          t2, 775705
                  bne          tp, t2, 713f
707:              and          s6, zero, a5
                  xori         a7, s3, 1343
709:              add          s1, s3, s9
                  slli         t3, s5, 28
711:              sltu         s2, t3, t2
                  bge          a6, s1, 721f
713:              addi         s7, gp, 2016
                  xor          s7, t3, a7
                  slt          s0, a6, t4
716:              sltiu        a3, s1, 446
717:              srl          a6, s10, s3
                  sub          s1, a2, s9
                  srli         gp, t5, 16
                  nop
721:              sll          s7, zero, a2
                  srl          tp, t6, a0
                  or           s3, a0, t2
                  and          a1, s1, s6
                  bltu         gp, a7, 735f
                  add          a5, gp, gp
                  bltu         a1, s5, 730f
                  bge          ra, ra, 734f
                  slli         zero, sp, 12
730:              srli         a0, a6, 8
                  xor          t6, a2, tp
                  auipc        tp, 493286
                  andi         s5, a0, 1785
734:              slt          t2, a3, a3
735:              sll          a5, s8, t5
                  bgeu         s0, s3, 743f
                  srai         zero, a1, 28
                  andi         a0, s11, -1297
                  sra          s9, a2, ra
                  andi         s5, s0, 1400
                  bge          sp, s9, 743f
                  sub          t6, a1, a1
743:              beq          a4, s2, 749f
                  srai         zero, s10, 17
                  add          zero, s7, s5
                  andi         s7, sp, 440
                  beq          s5, t0, 758f
                  sll          a1, a0, s1
749:              beq          gp, s5, 753f
                  srl          a0, tp, s4
                  srl          s11, a6, s9
                  sltu         zero, s10, t1
753:              or           s2, s7, t2
                  and          s10, a7, s4
                  bltu         t5, s2, 765f
                  blt          s3, a2, 765f
                  beq          s3, t2, 776f
758:              sll          s1, s0, a1
                  auipc        s9, 264415
                  auipc        t2, 707075
                  xori         t4, s1, -1475
                  srai         t6, tp, 20
                  andi         a3, ra, 153
                  andi         s9, a0, -872
765:              bgeu         t2, t0, 775f
                  bgeu         zero, t3, 777f
                  addi         a5, s0, 1873
                  auipc        s1, 306442
                  ori          tp, s1, -758
                  lui          s1, 305958
                  bltu         s3, s6, 790f
                  slli         a5, s8, 12
                  xor          s1, a3, t0
                  auipc        s11, 591500
775:              sub          zero, zero, s4
776:              srli         s7, ra, 0
777:              andi         sp, s10, -1674
                  and          s5, a3, s8
                  bge          t5, a2, 783f
                  slli         a1, sp, 23
                  nop
                  sltiu        zero, a2, 426
783:              auipc        t3, 400297
                  andi         s8, gp, 679
                  ori          sp, ra, 260
                  lui          a0, 34939
                  bne          t2, zero, 789f
                  srl          a4, a2, a5
789:              bge          t0, s11, 808f
790:              bgeu         s10, s7, 792f
                  sll          tp, sp, a4
792:              slli         t3, tp, 14
                  bgeu         t6, s3, 799f
                  beq          t3, s10, 808f
                  xor          t4, s8, t5
                  bltu         t0, zero, 808f
                  andi         s7, s10, 1124
                  blt          t3, sp, 808f
799:              srli         t6, t5, 25
                  srl          t2, s6, s1
                  srli         t2, a4, 21
                  sltiu        s6, s11, -1450
                  sltu         t2, a1, t3
                  and          s2, t0, s3
                  slti         tp, s11, -718
                  sra          a0, a6, t0
                  srai         s11, s5, 0
808:              srai         a4, a3, 24
                  slt          sp, sp, s4
                  lw           ra, 4(s4)
                  addi         s4, s4, 40
                  sub          s5, s2, a2
                  srli         t4, s11, 13
1134:             addi x23, x1, 0
1134:             jalr x23, x23, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x30, x20, zero
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
                  1: la x12, test_done
                  jalr x1, x12, 0

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
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x20, x30, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
