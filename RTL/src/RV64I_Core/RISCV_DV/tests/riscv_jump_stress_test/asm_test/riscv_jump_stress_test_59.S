.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0xfdfc6aeb
                  li x1, 0x0
                  li x2, 0xf20ec531
                  li x3, 0xd3047245
                  li x4, 0x80000000
                  li x5, 0xfe3c2d6b
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xddd761a7
                  li x9, 0xfed64a84
                  li x10, 0xa
                  li x13, 0x2
                  li x14, 0x0
                  li x15, 0xed3a2c8f
                  li x16, 0x8543d4
                  li x17, 0x0
                  li x18, 0xea645bf1
                  li x19, 0x0
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0xf3bb6767
                  li x24, 0x0
                  li x25, 0xff107773
                  li x26, 0xc
                  li x27, 0x80000000
                  li x28, 0x9927dcb
                  li x29, 0x5
                  li x30, 0x0
                  li x31, 0x6
                  la x12, user_stack_end
main:             jal          t0, 2f
0:                jal          ra, 24f
1:                jal          tp, 23f
2:                jal          gp, 9f
3:                jal          t0, 0b
4:                jal          t1, 29f
5:                jal          ra, 11f
6:                jal          t2, 20f
7:                jal          t1, 26f
8:                jal          t1, 5b
9:                jal          ra, 10f
10:               jal          t1, 1b
11:               jal          ra, 27f
12:               jal          ra, 18f
13:               jal          ra, 8b
14:               jal          t1, 3b
15:               jal          ra, 28f
16:               jal          t1, 25f
17:               jal          ra, 22f
18:               jal          ra, 21f
19:               jal          t2, 16b
20:               jal          s5, 14b
21:               jal          ra, 6b
22:               jal          sp, 12b
23:               jal          ra, 17b
24:               jal          t1, 15b
25:               jal          ra, 13b
26:               jal          t1, 4b
27:               jal          ra, 7b
28:               jal          ra, 19b
29:               nop
                  xori         t4, s5, -955
                  slt          s9, tp, a7
                  andi         s9, s0, -1952
                  sra          tp, sp, s5
                  xor          s2, t3, s0
                  and          t5, s6, a7
                  sll          a6, t3, t5
                  bltu         s5, ra, 18f
                  sltiu        s3, s1, 698
                  sltu         s7, s10, a4
                  sra          s6, s5, t6
                  bne          t6, zero, 25f
                  andi         a6, s0, -642
                  srai         a3, t2, 28
                  sll          gp, s5, a0
                  addi         s7, t0, -1404
                  sltiu        a4, gp, -273
                  sll          t2, a2, s11
18:               slti         s9, s2, 1242
                  sltiu        s4, ra, -1416
                  bltu         t3, gp, 28f
                  bgeu         ra, t0, 41f
                  srai         t1, a0, 6
                  sll          t5, s6, sp
                  andi         gp, s8, 43
25:               slli         s8, gp, 31
                  ori          t2, s10, -1078
                  sll          s2, a0, t0
28:               sltiu        a7, s5, 763
                  xori         sp, s11, -763
                  srli         sp, t4, 7
                  bne          s11, s5, 46f
                  slti         tp, t0, 1888
                  beq          t0, a6, 36f
                  addi         s8, tp, -1420
                  srl          a4, s2, s2
36:               xori         a0, s8, -459
                  srl          a5, a2, a7
                  srli         zero, s5, 25
                  bgeu         t6, s2, 51f
                  slli         zero, a2, 2
41:               bgeu         s6, s4, 55f
                  slti         s4, a7, -1067
                  sub          zero, t2, s3
                  slt          s4, sp, s5
                  andi         t3, t6, 1490
46:               srli         a7, t1, 21
                  srl          a5, s9, t5
                  sub          s9, s3, a0
                  srli         s7, t5, 5
                  bne          s8, t0, 57f
51:               bne          sp, a5, 60f
                  slli         ra, s9, 1
                  srli         s9, s11, 23
                  srli         a0, a4, 12
55:               sll          t2, tp, s4
                  la           tp, sub_1
                  andi         a6, ra, -54
                  add          a0, sp, zero
                  srai         sp, s7, 11
                  add          s10, s1, s3
                  addi         tp, tp, 253
                  addi         a4, s7, 1025
                  xori         s5, sp, 1837
                  sltu         a5, s9, zero
                  ori          a5, t2, -590
main_j1:          jalr         t0, tp, -253 #jump main -> sub_1
                  andi         t2, t3, -919
57:               andi         s11, s8, -34
                  srl          s1, a4, ra
                  slli         s9, a5, 30
60:               sll          s7, t1, a6
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            andi         a0, gp, 771
                  addi         a2, a2, -44
                  slli         s0, a6, 4
                  sw           t0, 4(a2)
                  srl          s8, a5, t1
                  lui          ra, 166155
sub_5_17:         jal          t0, 1f
0:                jal          t5, 5f
1:                jal          t1, 6f
2:                jal          ra, 7f
3:                jal          s7, 10f
4:                jal          ra, 2b
5:                jal          s1, 9f
6:                jal          ra, 12f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          t1, 14f
10:               jal          s8, 4b
11:               jal          t2, 15f
12:               jal          ra, 8b
13:               jal          ra, 11b
14:               jal          ra, 13b
15:               and          s7, a6, s5
sub_5_26:         jal          t0, 12f
0:                jal          s2, 5f
1:                jal          t1, 4f
2:                jal          t1, 15f
3:                jal          gp, 9f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          ra, 0b
7:                jal          t1, 14f
8:                jal          ra, 13f
9:                jal          sp, 10f
10:               jal          t0, 16f
11:               jal          t4, 2b
12:               jal          tp, 6b
13:               jal          ra, 1b
14:               jal          s5, 11b
15:               jal          ra, 3b
16:               xori         gp, a7, -391
sub_5_45:         jal          t0, 6f
0:                jal          ra, 9f
1:                jal          s10, 18f
2:                jal          ra, 14f
3:                jal          t1, 1b
4:                jal          ra, 3b
5:                jal          ra, 19f
6:                jal          t1, 13f
7:                jal          t1, 15f
8:                jal          s7, 16f
9:                jal          t1, 10f
10:               jal          t2, 8b
11:               jal          a3, 12f
12:               jal          t1, 2b
13:               jal          ra, 7b
14:               jal          t1, 4b
15:               jal          ra, 0b
16:               jal          sp, 17f
17:               jal          s0, 11b
18:               jal          t0, 5b
19:               slt          t1, a3, s2
sub_5_4:          jal          t0, 5f
0:                jal          ra, 17f
1:                jal          ra, 6f
2:                jal          t1, 14f
3:                jal          a0, 9f
4:                jal          t1, 19f
5:                jal          a4, 12f
6:                jal          t1, 16f
7:                jal          t1, 1b
8:                jal          t1, 13f
9:                jal          ra, 7b
10:               jal          ra, 8b
11:               jal          ra, 18f
12:               jal          ra, 0b
13:               jal          a7, 15f
14:               jal          ra, 10b
15:               jal          s5, 4b
16:               jal          s1, 11b
17:               jal          ra, 3b
18:               jal          ra, 2b
19:               andi         s6, t2, 1792
sub_5_33:         jal          t0, 2f
0:                jal          ra, 16f
1:                jal          t0, 3f
2:                jal          t1, 12f
3:                jal          gp, 18f
4:                jal          ra, 14f
5:                jal          ra, 9f
6:                jal          t1, 8f
7:                jal          ra, 20f
8:                jal          t0, 1b
9:                jal          tp, 19f
10:               jal          ra, 24f
11:               jal          ra, 25f
12:               jal          t1, 5b
13:               jal          ra, 4b
14:               jal          t1, 11b
15:               jal          ra, 23f
16:               jal          gp, 27f
17:               jal          s7, 0b
18:               jal          ra, 17b
19:               jal          sp, 10b
20:               jal          ra, 6b
21:               jal          tp, 26f
22:               jal          ra, 7b
23:               jal          ra, 13b
24:               jal          t2, 15b
25:               jal          ra, 21b
26:               jal          s4, 22b
27:               srli         s6, a4, 29
sub_5_11:         jal          t0, 13f
0:                jal          ra, 9f
1:                jal          ra, 21f
2:                jal          ra, 26f
3:                jal          t0, 25f
4:                jal          s6, 19f
5:                jal          ra, 12f
6:                jal          s3, 23f
7:                jal          ra, 20f
8:                jal          ra, 16f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               jal          t1, 8b
12:               jal          ra, 7b
13:               jal          tp, 10b
14:               jal          a7, 6b
15:               jal          ra, 1b
16:               jal          ra, 22f
17:               jal          a3, 18f
18:               jal          t1, 3b
19:               jal          ra, 2b
20:               jal          gp, 11b
21:               jal          ra, 17b
22:               jal          t1, 24f
23:               jal          t1, 0b
24:               jal          ra, 15b
25:               jal          t1, 14b
26:               and          s7, s1, s11
sub_5_39:         jal          t0, 6f
0:                jal          ra, 15f
1:                jal          t4, 12f
2:                jal          ra, 11f
3:                jal          s6, 0b
4:                jal          t1, 1b
5:                jal          s5, 2b
6:                jal          a4, 14f
7:                jal          s8, 8f
8:                jal          ra, 10f
9:                jal          tp, 4b
10:               jal          t1, 3b
11:               jal          ra, 9b
12:               jal          a0, 13f
13:               jal          t1, 7b
14:               jal          a4, 5b
15:               ori          a5, a4, -1180
sub_5_16:         jal          t0, 16f
0:                jal          tp, 5f
1:                jal          s2, 7f
2:                jal          ra, 4f
3:                jal          ra, 20f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          t1, 19f
7:                jal          t1, 2b
8:                jal          t1, 10f
9:                jal          ra, 6b
10:               jal          ra, 21f
11:               jal          ra, 12f
12:               jal          ra, 18f
13:               jal          ra, 8b
14:               jal          s8, 17f
15:               jal          ra, 13b
16:               jal          s4, 3b
17:               jal          ra, 15b
18:               jal          s5, 14b
19:               jal          s3, 0b
20:               jal          ra, 9b
21:               addi         gp, t0, 25
sub_5_1:          jal          t0, 10f
0:                jal          a3, 13f
1:                jal          s5, 7f
2:                jal          ra, 3f
3:                jal          s9, 17f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          t1, 15f
7:                jal          s5, 16f
8:                jal          gp, 2b
9:                jal          t1, 6b
10:               jal          s1, 9b
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          s3, 18f
14:               jal          s10, 12b
15:               jal          ra, 14b
16:               jal          ra, 0b
17:               jal          ra, 5b
18:               sra          s9, t3, s10
sub_5_0:          jal          t0, 6f
0:                jal          t0, 1f
1:                jal          ra, 14f
2:                jal          s11, 5f
3:                jal          sp, 8f
4:                jal          t1, 0b
5:                jal          ra, 18f
6:                jal          s10, 12f
7:                jal          ra, 17f
8:                jal          s7, 7b
9:                jal          t1, 11f
10:               jal          a0, 3b
11:               jal          ra, 15f
12:               jal          s6, 16f
13:               jal          ra, 4b
14:               jal          a0, 2b
15:               jal          ra, 10b
16:               jal          gp, 9b
17:               jal          t1, 13b
18:               xor          t0, s7, a7
sub_5_44:         jal          t0, 7f
0:                jal          t1, 4f
1:                jal          ra, 9f
2:                jal          s0, 0b
3:                jal          t3, 15f
4:                jal          ra, 14f
5:                jal          s6, 3b
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          ra, 12f
9:                jal          gp, 2b
10:               jal          t2, 8b
11:               jal          ra, 5b
12:               jal          t1, 13f
13:               jal          ra, 1b
14:               jal          t1, 11b
15:               slli         a0, t6, 7
sub_5_34:         jal          t0, 12f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          t1, 1b
3:                jal          t1, 7f
4:                jal          ra, 0b
5:                jal          t1, 10f
6:                jal          sp, 3b
7:                jal          ra, 13f
8:                jal          t1, 11f
9:                jal          ra, 4b
10:               jal          a4, 6b
11:               jal          ra, 9b
12:               jal          ra, 2b
13:               sra          gp, a7, tp
sub_5_21:         jal          t0, 14f
0:                jal          ra, 16f
1:                jal          ra, 27f
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          ra, 15f
6:                jal          ra, 3b
7:                jal          t1, 25f
8:                jal          ra, 0b
9:                jal          ra, 18f
10:               jal          t1, 1b
11:               jal          t1, 22f
12:               jal          gp, 21f
13:               jal          t1, 19f
14:               jal          ra, 8b
15:               jal          t1, 10b
16:               jal          ra, 13b
17:               jal          a0, 24f
18:               jal          gp, 5b
19:               jal          ra, 26f
20:               jal          gp, 4b
21:               jal          ra, 20b
22:               jal          ra, 17b
23:               jal          t1, 12b
24:               jal          s9, 6b
25:               jal          t1, 11b
26:               jal          s6, 23b
27:               auipc        s6, 562797
sub_5_12:         jal          t0, 8f
0:                jal          t1, 10f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          ra, 25f
5:                jal          t1, 27f
6:                jal          ra, 14f
7:                jal          t1, 2b
8:                jal          ra, 9f
9:                jal          a6, 18f
10:               jal          t1, 26f
11:               jal          ra, 15f
12:               jal          s8, 13f
13:               jal          ra, 24f
14:               jal          ra, 1b
15:               jal          ra, 0b
16:               jal          t1, 23f
17:               jal          t1, 19f
18:               jal          ra, 7b
19:               jal          s0, 28f
20:               jal          t0, 16b
21:               jal          ra, 22f
22:               jal          ra, 5b
23:               jal          s11, 12b
24:               jal          t5, 17b
25:               jal          ra, 21b
26:               jal          a3, 3b
27:               jal          s7, 20b
28:               sll          a7, tp, s1
sub_5_24:         jal          t0, 15f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          t0, 18f
3:                jal          sp, 24f
4:                jal          ra, 2b
5:                jal          ra, 8f
6:                jal          s1, 16f
7:                jal          ra, 27f
8:                jal          t1, 12f
9:                jal          t1, 20f
10:               jal          ra, 3b
11:               jal          ra, 25f
12:               jal          ra, 22f
13:               jal          ra, 23f
14:               jal          s1, 1b
15:               jal          ra, 14b
16:               jal          sp, 26f
17:               jal          ra, 10b
18:               jal          s10, 0b
19:               jal          t1, 21f
20:               jal          t4, 13b
21:               jal          ra, 9b
22:               jal          sp, 11b
23:               jal          s4, 5b
24:               jal          t1, 19b
25:               jal          ra, 4b
26:               jal          a5, 17b
27:               slti         s6, a7, -791
sub_5_2:          jal          t0, 7f
0:                jal          t1, 1f
1:                jal          tp, 6f
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          ra, 10f
5:                jal          t1, 9f
6:                jal          ra, 2b
7:                jal          a5, 0b
8:                jal          ra, 4b
9:                jal          s1, 3b
10:               jal          s6, 5b
11:               ori          s0, s11, -1980
sub_5_15:         jal          t0, 8f
0:                jal          ra, 18f
1:                jal          ra, 19f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          t5, 16f
5:                jal          t1, 14f
6:                jal          ra, 17f
7:                jal          s2, 4b
8:                jal          sp, 9f
9:                jal          a4, 15f
10:               jal          s1, 2b
11:               jal          sp, 7b
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          ra, 12b
15:               jal          s0, 10b
16:               jal          ra, 3b
17:               jal          t1, 0b
18:               jal          ra, 11b
19:               sltu         sp, s8, s5
sub_5_19:         jal          t0, 2f
0:                jal          ra, 13f
1:                jal          a3, 16f
2:                jal          ra, 15f
3:                jal          ra, 14f
4:                jal          s4, 7f
5:                jal          ra, 18f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          tp, 4b
9:                jal          ra, 5b
10:               jal          t0, 11f
11:               jal          t1, 8b
12:               jal          sp, 10b
13:               jal          ra, 9b
14:               jal          a0, 19f
15:               jal          ra, 0b
16:               jal          sp, 3b
17:               jal          ra, 6b
18:               jal          ra, 17b
19:               xori         s8, s10, 880
sub_5_18:         jal          t0, 10f
0:                jal          t1, 17f
1:                jal          s9, 16f
2:                jal          a0, 1b
3:                jal          a3, 8f
4:                jal          a4, 20f
5:                jal          t1, 9f
6:                jal          s3, 14f
7:                jal          t1, 5b
8:                jal          ra, 12f
9:                jal          ra, 19f
10:               jal          ra, 11f
11:               jal          t1, 2b
12:               jal          t1, 4b
13:               jal          ra, 0b
14:               jal          ra, 13b
15:               jal          ra, 7b
16:               jal          t1, 15b
17:               jal          t1, 3b
18:               jal          ra, 6b
19:               jal          ra, 18b
20:               xori         s6, t0, -154
sub_5_13:         jal          t0, 17f
0:                jal          ra, 18f
1:                jal          a6, 11f
2:                jal          ra, 13f
3:                jal          s8, 12f
4:                jal          t1, 2b
5:                jal          ra, 16f
6:                jal          t1, 10f
7:                jal          ra, 15f
8:                jal          t1, 19f
9:                jal          t1, 3b
10:               jal          tp, 5b
11:               jal          ra, 0b
12:               jal          t0, 7b
13:               jal          ra, 14f
14:               jal          ra, 8b
15:               jal          s11, 4b
16:               jal          a7, 1b
17:               jal          sp, 6b
18:               jal          t1, 9b
19:               sltu         a7, a0, t3
sub_5_20:         jal          t0, 13f
0:                jal          ra, 17f
1:                jal          s0, 11f
2:                jal          t5, 15f
3:                jal          ra, 20f
4:                jal          s7, 10f
5:                jal          ra, 25f
6:                jal          t1, 8f
7:                jal          ra, 18f
8:                jal          s4, 26f
9:                jal          tp, 6b
10:               jal          t1, 23f
11:               jal          s8, 3b
12:               jal          ra, 9b
13:               jal          ra, 0b
14:               jal          ra, 21f
15:               jal          t1, 1b
16:               jal          ra, 2b
17:               jal          gp, 4b
18:               jal          t1, 12b
19:               jal          sp, 14b
20:               jal          gp, 5b
21:               jal          tp, 22f
22:               jal          ra, 7b
23:               jal          s4, 24f
24:               jal          ra, 16b
25:               jal          t1, 19b
26:               slli         s0, t1, 22
sub_5_22:         jal          t0, 16f
0:                jal          t1, 8f
1:                jal          t1, 18f
2:                jal          ra, 17f
3:                jal          t0, 19f
4:                jal          t1, 6f
5:                jal          t1, 11f
6:                jal          ra, 14f
7:                jal          ra, 5b
8:                jal          t1, 3b
9:                jal          t1, 10f
10:               jal          ra, 4b
11:               jal          a4, 0b
12:               jal          ra, 1b
13:               jal          t1, 9b
14:               jal          ra, 15f
15:               jal          gp, 7b
16:               jal          ra, 12b
17:               jal          ra, 20f
18:               jal          ra, 13b
19:               jal          ra, 2b
20:               sltu         a7, s11, s4
sub_5_9:          jal          t0, 5f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          t1, 12f
3:                jal          ra, 9f
4:                jal          t1, 6f
5:                jal          t0, 8f
6:                jal          t1, 11f
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          t1, 10f
10:               jal          ra, 7b
11:               jal          ra, 1b
12:               jal          a4, 13f
13:               slti         s8, s5, -519
sub_5_40:         jal          t0, 16f
0:                jal          ra, 21f
1:                jal          s2, 3f
2:                jal          ra, 20f
3:                jal          t1, 12f
4:                jal          ra, 14f
5:                jal          ra, 17f
6:                jal          a5, 19f
7:                jal          t1, 11f
8:                jal          ra, 0b
9:                jal          t1, 7b
10:               jal          s7, 4b
11:               jal          ra, 15f
12:               jal          ra, 10b
13:               jal          ra, 22f
14:               jal          ra, 8b
15:               jal          t1, 18f
16:               jal          ra, 1b
17:               jal          ra, 6b
18:               jal          ra, 25f
19:               jal          t5, 2b
20:               jal          s10, 23f
21:               jal          ra, 13b
22:               jal          ra, 24f
23:               jal          ra, 9b
24:               jal          ra, 5b
25:               addi         t0, s1, 476
sub_5_8:          jal          t0, 3f
0:                jal          sp, 8f
1:                jal          t1, 12f
2:                jal          sp, 5f
3:                jal          s9, 0b
4:                jal          a0, 13f
5:                jal          ra, 4b
6:                jal          s11, 1b
7:                jal          ra, 10f
8:                jal          s11, 9f
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               sub          s0, t5, sp
sub_5_27:         jal          t0, 19f
0:                jal          t3, 10f
1:                jal          ra, 11f
2:                jal          ra, 1b
3:                jal          t0, 5f
4:                jal          ra, 7f
5:                jal          ra, 0b
6:                jal          t1, 15f
7:                jal          ra, 3b
8:                jal          sp, 20f
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          ra, 13f
12:               jal          ra, 18f
13:               jal          t1, 22f
14:               jal          ra, 23f
15:               jal          s7, 8b
16:               jal          t4, 14b
17:               jal          ra, 9b
18:               jal          ra, 16b
19:               jal          t1, 21f
20:               jal          ra, 2b
21:               jal          s11, 17b
22:               jal          ra, 4b
23:               srai         t3, a7, 17
sub_5_14:         jal          t0, 0f
0:                jal          ra, 1f
1:                jal          t1, 17f
2:                jal          a6, 6f
3:                jal          ra, 15f
4:                jal          s7, 13f
5:                jal          t1, 16f
6:                jal          ra, 9f
7:                jal          ra, 12f
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          t1, 3b
11:               jal          ra, 2b
12:               jal          ra, 18f
13:               jal          t1, 11b
14:               jal          s4, 7b
15:               jal          t1, 14b
16:               jal          t1, 4b
17:               jal          ra, 5b
18:               addi         a0, tp, 1008
sub_5_28:         jal          t0, 20f
0:                jal          s3, 3f
1:                jal          s7, 4f
2:                jal          ra, 23f
3:                jal          ra, 19f
4:                jal          t1, 8f
5:                jal          t1, 1b
6:                jal          t2, 9f
7:                jal          s5, 22f
8:                jal          t1, 21f
9:                jal          tp, 18f
10:               jal          ra, 0b
11:               jal          ra, 13f
12:               jal          ra, 15f
13:               jal          ra, 12b
14:               jal          t1, 24f
15:               jal          s11, 14b
16:               jal          t1, 6b
17:               jal          ra, 10b
18:               jal          ra, 11b
19:               jal          ra, 2b
20:               jal          t0, 5b
21:               jal          t0, 16b
22:               jal          t5, 25f
23:               jal          t1, 7b
24:               jal          ra, 17b
25:               slli         t5, t6, 15
sub_5_10:         jal          t0, 16f
0:                jal          ra, 22f
1:                jal          s11, 14f
2:                jal          t1, 6f
3:                jal          sp, 11f
4:                jal          ra, 12f
5:                jal          ra, 21f
6:                jal          ra, 18f
7:                jal          a6, 4b
8:                jal          ra, 1b
9:                jal          s8, 23f
10:               jal          ra, 5b
11:               jal          t1, 10b
12:               jal          t1, 9b
13:               jal          ra, 19f
14:               jal          t1, 24f
15:               jal          t2, 13b
16:               jal          s9, 2b
17:               jal          ra, 20f
18:               jal          ra, 0b
19:               jal          t1, 7b
20:               jal          ra, 15b
21:               jal          a5, 17b
22:               jal          t1, 3b
23:               jal          ra, 8b
24:               xori         s11, a7, 878
sub_5_29:         jal          t0, 8f
0:                jal          sp, 9f
1:                jal          t1, 10f
2:                jal          t0, 11f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          s9, 2b
7:                jal          t2, 4b
8:                jal          ra, 3b
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               sll          a6, zero, gp
sub_5_37:         jal          t0, 12f
0:                jal          t1, 19f
1:                jal          ra, 4f
2:                jal          ra, 6f
3:                jal          t1, 27f
4:                jal          gp, 21f
5:                jal          s11, 24f
6:                jal          ra, 7f
7:                jal          s11, 28f
8:                jal          ra, 14f
9:                jal          s7, 5b
10:               jal          s10, 22f
11:               jal          tp, 23f
12:               jal          s6, 18f
13:               jal          t1, 3b
14:               jal          ra, 20f
15:               jal          t1, 16f
16:               jal          t5, 26f
17:               jal          t1, 0b
18:               jal          ra, 10b
19:               jal          ra, 11b
20:               jal          ra, 25f
21:               jal          ra, 9b
22:               jal          ra, 17b
23:               jal          ra, 13b
24:               jal          ra, 8b
25:               jal          ra, 2b
26:               jal          ra, 1b
27:               jal          ra, 15b
28:               sub          a5, a2, a1
sub_5_47:         jal          t0, 15f
0:                jal          ra, 7f
1:                jal          s3, 5f
2:                jal          t1, 18f
3:                jal          t1, 9f
4:                jal          gp, 2b
5:                jal          ra, 21f
6:                jal          s5, 0b
7:                jal          ra, 22f
8:                jal          ra, 17f
9:                jal          t1, 14f
10:               jal          ra, 3b
11:               jal          sp, 16f
12:               jal          t4, 6b
13:               jal          t0, 1b
14:               jal          t1, 11b
15:               jal          ra, 8b
16:               jal          ra, 4b
17:               jal          t1, 19f
18:               jal          ra, 13b
19:               jal          ra, 10b
20:               jal          a7, 12b
21:               jal          t1, 20b
22:               xor          s1, s10, a1
sub_5_43:         jal          t0, 3f
0:                jal          ra, 1f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          ra, 2b
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          ra, 12f
9:                jal          t1, 11f
10:               jal          s7, 0b
11:               jal          t4, 7b
12:               sll          s5, s7, tp
sub_5_3:          jal          t0, 5f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          ra, 14f
3:                jal          s6, 24f
4:                jal          ra, 7f
5:                jal          t4, 17f
6:                jal          ra, 16f
7:                jal          s8, 20f
8:                jal          ra, 2b
9:                jal          ra, 0b
10:               jal          ra, 15f
11:               jal          t1, 19f
12:               jal          t1, 10b
13:               jal          ra, 1b
14:               jal          t1, 9b
15:               jal          sp, 6b
16:               jal          t1, 23f
17:               jal          t1, 18f
18:               jal          t1, 12b
19:               jal          t1, 4b
20:               jal          ra, 21f
21:               jal          t1, 22f
22:               jal          ra, 8b
23:               jal          ra, 11b
24:               sra          t3, a0, t4
sub_5_5:          jal          t0, 9f
0:                jal          t1, 3f
1:                jal          ra, 12f
2:                jal          t1, 13f
3:                jal          ra, 1b
4:                jal          ra, 17f
5:                jal          ra, 0b
6:                jal          t2, 7f
7:                jal          t1, 14f
8:                jal          t1, 10f
9:                jal          s9, 16f
10:               jal          gp, 11f
11:               jal          t1, 5b
12:               jal          ra, 18f
13:               jal          ra, 15f
14:               jal          t1, 2b
15:               jal          ra, 19f
16:               jal          ra, 4b
17:               jal          ra, 8b
18:               jal          gp, 6b
19:               jal          ra, 20f
20:               jal          ra, 21f
21:               add          t2, s2, t3
sub_5_25:         jal          t0, 7f
0:                jal          s6, 16f
1:                jal          t0, 13f
2:                jal          s4, 6f
3:                jal          ra, 9f
4:                jal          t1, 12f
5:                jal          ra, 0b
6:                jal          ra, 11f
7:                jal          t1, 5b
8:                jal          ra, 15f
9:                jal          gp, 8b
10:               jal          ra, 4b
11:               jal          t1, 10b
12:               jal          ra, 1b
13:               jal          t1, 17f
14:               jal          s3, 2b
15:               jal          ra, 14b
16:               jal          ra, 3b
17:               and          t2, s11, t1
sub_5_32:         jal          t0, 8f
0:                jal          ra, 11f
1:                jal          t1, 17f
2:                jal          t1, 12f
3:                jal          a0, 6f
4:                jal          t1, 7f
5:                jal          ra, 16f
6:                jal          ra, 14f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 15f
10:               jal          t3, 0b
11:               jal          t1, 5b
12:               jal          s8, 18f
13:               jal          t1, 1b
14:               jal          t0, 4b
15:               jal          ra, 2b
16:               jal          a3, 13b
17:               jal          ra, 3b
18:               lui          s8, 266309
sub_5_38:         jal          t0, 7f
0:                jal          sp, 21f
1:                jal          ra, 16f
2:                jal          t1, 17f
3:                jal          s9, 19f
4:                jal          ra, 12f
5:                jal          ra, 14f
6:                jal          ra, 18f
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          s6, 3b
10:               jal          ra, 13f
11:               jal          ra, 10b
12:               jal          ra, 20f
13:               jal          t1, 8b
14:               jal          ra, 11b
15:               jal          t1, 1b
16:               jal          s4, 5b
17:               jal          ra, 0b
18:               jal          t0, 4b
19:               jal          ra, 15b
20:               jal          ra, 9b
21:               nop
sub_5_6:          jal          t0, 9f
0:                jal          ra, 20f
1:                jal          ra, 2f
2:                jal          ra, 17f
3:                jal          s9, 7f
4:                jal          ra, 23f
5:                jal          ra, 16f
6:                jal          ra, 14f
7:                jal          t0, 21f
8:                jal          ra, 19f
9:                jal          ra, 0b
10:               jal          s5, 5b
11:               jal          t1, 1b
12:               jal          t1, 8b
13:               jal          ra, 22f
14:               jal          t2, 10b
15:               jal          ra, 4b
16:               jal          t2, 13b
17:               jal          t1, 3b
18:               jal          ra, 15b
19:               jal          t1, 6b
20:               jal          ra, 12b
21:               jal          t1, 18b
22:               jal          ra, 11b
23:               andi         a3, t2, 335
                  addi         a0, s2, 1257
                  addi         s0, a1, 887
                  bne          s9, ra, 7f
                  ori          s7, gp, -1164
                  sltu         s9, s8, s6
                  and          s11, a3, s2
                  bgeu         s3, s0, 15f
7:                sltu         a3, a4, s7
                  ori          s9, s5, 786
                  bgeu         s7, s6, 16f
                  bgeu         s3, a1, 19f
                  slli         t2, s3, 0
                  lui          s2, 1035310
                  sltu         s5, s8, a7
                  blt          s5, s8, 30f
15:               or           s7, t1, t6
16:               sltiu        t0, t2, -817
                  slli         tp, s8, 30
                  bne          a7, a0, 21f
19:               sra          tp, t4, s2
                  slli         s11, a7, 12
21:               srai         s0, t6, 15
                  ori          s7, s11, 964
                  slt          t2, t4, t6
                  ori          sp, s9, -1555
                  beq          s11, s8, 40f
                  sra          s1, s8, s5
                  sltu         a0, t1, s0
                  blt          sp, a6, 43f
                  sll          t1, s7, t0
30:               slli         a5, t0, 11
                  sltu         ra, s9, s5
                  beq          ra, t3, 33f
33:               and          t0, s10, t4
                  slt          zero, a2, s7
                  beq          tp, s10, 54f
                  srli         s0, a0, 23
                  add          sp, a7, s9
                  bgeu         s9, t1, 46f
                  lui          ra, 98667
40:               srl          a7, t5, a3
                  sltu         t2, s3, t3
                  srl          gp, tp, zero
43:               beq          tp, t1, 59f
                  ori          a3, a2, -1801
                  auipc        s6, 54611
46:               sra          a7, s3, s11
                  xor          t5, s6, s9
                  slti         s9, a1, 600
                  addi         s1, t5, -943
                  add          t0, s2, a0
                  bltu         a5, s2, 70f
                  sltu         a3, s4, s3
                  bltu         s5, s8, 73f
54:               bge          t0, a3, 73f
                  auipc        a3, 482405
                  sltiu        a7, s10, 873
                  sra          t2, t1, s1
                  sltiu        a3, s9, 186
59:               srai         s10, a6, 2
                  sra          a3, a7, t0
                  lui          a3, 38567
                  add          t3, s1, a2
                  sltiu        ra, t5, 312
                  and          t2, a5, gp
                  sltu         a3, s0, t6
                  addi         t4, gp, 644
                  sltiu        s2, s4, 662
                  blt          s2, a0, 76f
                  andi         ra, s9, -1360
sub_5_41:         jal          t0, 21f
0:                jal          ra, 11f
1:                jal          gp, 15f
2:                jal          ra, 0b
3:                jal          ra, 1b
4:                jal          t1, 8f
5:                jal          ra, 7f
6:                jal          a4, 5b
7:                jal          ra, 14f
8:                jal          ra, 3b
9:                jal          t1, 19f
10:               jal          t1, 18f
11:               jal          tp, 22f
12:               jal          s10, 17f
13:               jal          ra, 24f
14:               jal          t1, 26f
15:               jal          ra, 10b
16:               jal          a4, 6b
17:               jal          a3, 20f
18:               jal          ra, 12b
19:               jal          t1, 23f
20:               jal          gp, 25f
21:               jal          s6, 9b
22:               jal          tp, 13b
23:               jal          gp, 4b
24:               jal          ra, 16b
25:               jal          ra, 2b
26:               ori          a5, s7, 1182
70:               nop
                  nop
                  srai         s2, s4, 24
73:               lui          t0, 948407
                  sub          sp, s5, s3
                  sll          ra, a0, a7
76:               or           a0, s2, s10
                  srai         t3, t1, 18
                  lui          s11, 106764
                  nop
                  ori          a3, a5, 1369
                  beq          t5, s0, 83f
                  auipc        a0, 661809
83:               slti         t3, gp, -787
                  bne          t0, s5, 103f
                  sltiu        t2, s7, 1548
                  sub          a5, a7, tp
                  auipc        a6, 560863
                  nop
                  and          a4, zero, t6
                  sub          t3, gp, t0
                  andi         zero, a6, 1904
                  or           a3, s0, t6
                  beq          t2, s6, 98f
                  ori          t1, s9, -910
                  sub          gp, s0, sp
                  slli         zero, t4, 2
                  blt          t6, t1, 99f
98:               andi         s0, a2, 1166
99:               andi         a3, a7, 1807
                  or           ra, s5, s9
                  slt          s1, s1, t3
                  slli         t3, t1, 30
103:              sltu         tp, t6, t3
                  xori         s2, gp, 1556
                  sub          s8, a3, s1
                  sltiu        t2, sp, 1671
                  srai         a5, gp, 10
                  sub          s11, s3, s2
                  srl          tp, s10, s3
                  xor          t2, s9, s1
                  or           tp, s0, a6
                  slt          a4, a5, a0
                  addi         t5, s2, -1357
                  andi         s4, sp, -179
                  blt          tp, s5, 120f
                  add          a0, a7, s4
                  addi         s2, a7, 920
                  srl          ra, s9, sp
                  beq          a1, a0, 126f
120:              auipc        a4, 363022
                  or           s7, a0, s10
                  add          a0, t6, a4
                  nop
                  addi         s10, t2, -1535
                  lui          t1, 613892
126:              srai         s0, t0, 15
                  ori          s0, a0, 1817
                  beq          s7, s2, 135f
                  bge          t0, a4, 134f
                  beq          a7, sp, 140f
                  srai         s1, sp, 10
                  lui          s7, 72407
                  slli         a4, tp, 14
134:              bge          a4, s0, 139f
135:              bne          s7, t0, 139f
                  bgeu         ra, s9, 137f
137:              sltu         s11, zero, gp
                  add          s0, s2, s11
139:              sub          s3, s0, a6
140:              xor          t0, s8, a7
                  xor          s4, t3, s1
                  lui          s3, 855871
                  or           s8, s8, s9
                  sltiu        s2, s2, 1658
                  slti         t5, a5, 748
                  andi         a3, s8, 1364
                  srai         s7, tp, 28
                  addi         ra, t0, -1894
                  or           a5, sp, sp
                  sub          s3, t4, ra
                  xori         s11, a6, -334
                  sltiu        s0, s11, 2047
                  andi         s0, s7, 874
                  bne          s6, s10, 165f
                  addi         a5, a1, -1859
                  sltu         s3, s1, t1
                  srl          s2, t3, s10
                  beq          s6, s10, 165f
                  bltu         t6, s9, 166f
                  ori          s2, s9, 26
                  sltu         gp, zero, t4
                  slti         t2, tp, 1285
                  bge          s6, s0, 171f
                  slti         s8, t2, 767
165:              lui          tp, 598237
166:              slti         a0, zero, 1362
                  sll          ra, t2, a5
                  xori         s2, s5, -325
                  nop
                  slti         t2, gp, 1273
171:              sltu         t2, s4, ra
                  sll          t4, t5, t6
                  and          s8, t3, a5
                  auipc        a7, 89412
                  blt          s0, a7, 182f
                  sra          t3, a3, s4
                  ori          s6, a4, -1519
                  bge          a7, s9, 183f
                  and          sp, s5, a0
                  and          t4, a1, a7
                  xor          s0, t0, s7
182:              slli         sp, a0, 9
183:              slti         s5, s5, 1091
                  or           s11, a0, a6
                  srai         t3, s5, 9
                  beq          a5, s11, 201f
                  bltu         a1, a4, 206f
                  addi         s1, a2, -145
                  and          s6, s10, gp
                  nop
sub_5_42:         jal          t0, 2f
0:                jal          t0, 7f
1:                jal          s6, 6f
2:                jal          s11, 4f
3:                jal          ra, 0b
4:                jal          ra, 8f
5:                jal          a5, 9f
6:                jal          ra, 3b
7:                jal          gp, 10f
8:                jal          t0, 5b
9:                jal          ra, 1b
10:               lui          s4, 798695
                  slti         t4, a3, 216
                  blt          t2, a1, 211f
                  addi         s2, zero, 691
                  sltu         t5, s7, a2
                  addi         s9, s4, -353
                  or           s8, s0, s1
                  xori         s7, a6, -115
                  sub          s10, a4, t4
                  srl          a4, s4, a0
                  add          s1, tp, s3
201:              sll          s7, s9, t3
                  addi         a3, t0, -318
                  or           sp, a2, s7
                  andi         s7, s11, 1909
                  sltu         ra, a7, s7
206:              addi         t3, s11, 411
                  bne          s2, t4, 212f
                  srl          tp, a6, s8
                  bge          ra, s5, 218f
                  xor          tp, a2, tp
211:              bne          s1, s1, 213f
212:              nop
213:              sra          s10, a1, a7
                  slt          sp, sp, s6
                  auipc        a4, 684034
                  beq          t6, a1, 226f
                  bgeu         t3, ra, 221f
218:              bgeu         t2, s0, 237f
                  xori         t1, a0, 44
                  bne          t2, t4, 231f
221:              and          s7, t5, s5
                  auipc        t3, 514711
                  sub          s1, s4, a3
                  srai         a5, t5, 3
                  bne          t0, s4, 226f
226:              slti         a7, a5, 1476
                  or           t3, t3, s7
                  or           a3, t1, s4
                  xori         s1, a4, 1211
                  bge          s6, s3, 233f
231:              slt          s0, t2, s0
                  sub          s0, s10, a7
233:              bltu         gp, s0, 248f
                  sra          a5, gp, t3
                  blt          t4, a0, 240f
                  slt          gp, s11, s4
237:              slt          s5, s4, a2
                  bge          s3, t6, 247f
                  slti         a0, s8, -806
240:              and          s6, a2, t1
                  sltu         s5, t0, a1
                  bgeu         t4, a1, 249f
                  sltiu        a5, a6, -1436
                  beq          ra, s9, 264f
                  or           s9, s1, a6
                  sltiu        a4, s0, 90
247:              blt          s7, t6, 255f
248:              xor          t2, s6, a3
249:              addi         s6, sp, 1840
                  srl          a7, s0, s3
                  beq          a2, a6, 267f
                  xori         s8, zero, 1115
                  srl          t4, s5, a2
                  bltu         s3, t5, 255f
255:              sub          a3, t6, s2
                  andi         t5, a0, 662
                  auipc        s0, 332500
                  andi         t5, t1, -491
                  ori          t1, sp, -1985
                  slt          t1, a0, a3
                  slt          s11, s10, a1
                  or           t1, s1, s11
                  sub          t1, s0, s7
264:              sltu         t2, t3, s5
                  bne          a6, a7, 284f
                  blt          t2, s11, 271f
267:              bge          s4, s2, 274f
                  beq          ra, sp, 284f
                  slt          sp, t1, a1
                  blt          t1, s0, 272f
271:              andi         a3, a1, -921
272:              sra          a7, t5, s2
                  bltu         t0, s8, 278f
274:              srai         gp, t4, 11
                  andi         s9, a6, 416
                  sll          t3, s10, a1
                  xor          tp, t0, s7
278:              slti         tp, gp, -191
                  xori         zero, zero, 1036
                  slti         a6, a5, -1642
                  auipc        a5, 150651
                  bne          gp, s11, 302f
                  sra          t4, s2, s8
284:              xor          a4, sp, s6
                  and          s11, t1, a4
                  addi         gp, a2, 424
                  sub          t0, s10, s7
                  bgeu         t6, a1, 298f
                  srai         s11, a6, 28
                  xor          s1, s6, s5
                  sll          ra, t1, t4
                  addi         s0, t0, 1760
                  srl          gp, t3, a7
                  or           a4, s2, t1
                  auipc        s3, 519164
                  sltiu        s9, s5, -1177
                  sub          a6, s1, ra
298:              bltu         sp, s7, 302f
                  sub          s3, a0, s10
                  slli         s8, s11, 6
                  or           tp, t2, t2
302:              nop
                  sra          s3, t1, t1
                  sra          t5, a1, s6
                  lui          a7, 311037
                  bne          s1, s2, 325f
                  nop
                  nop
                  slti         s8, a6, 367
                  nop
                  add          t2, a1, s3
                  sra          sp, s3, s9
                  bge          s4, s4, 320f
                  xori         t1, s7, 1120
                  lui          a7, 231600
                  or           t4, gp, sp
                  slti         s6, s5, 401
                  bgeu         s7, s8, 334f
                  addi         a5, a3, 1769
320:              sll          zero, s9, s11
                  srai         a5, t5, 17
                  auipc        t2, 835613
                  xor          s5, t6, s7
                  bge          a5, t4, 340f
325:              ori          ra, s11, 1594
                  xor          t2, s8, s9
                  srai         s5, sp, 18
                  srl          zero, sp, t6
                  sltiu        s9, sp, -1501
                  andi         s8, s6, -1809
                  bltu         s0, t1, 336f
                  sub          t2, s8, s0
                  sub          s10, t5, s4
334:              sub          s10, t5, sp
                  or           a0, gp, s3
336:              slt          tp, a5, a3
                  auipc        s3, 935788
                  and          zero, s4, s1
                  xori         a0, a4, 340
340:              sltiu        t2, s0, -1368
                  lui          a6, 535885
                  xori         ra, a0, 897
                  srli         t2, t5, 11
                  nop
                  sra          s3, t4, gp
                  slti         t5, a6, -1030
                  slli         zero, t6, 30
                  and          t2, a7, zero
                  blt          s1, t5, 358f
                  slt          t0, s4, a6
                  sll          a3, a4, s7
                  andi         a4, a7, 277
                  auipc        a6, 468392
                  blt          tp, s10, 373f
                  add          a3, a0, s7
                  ori          sp, a4, 921
                  or           ra, sp, t0
358:              bge          s3, a7, 363f
                  auipc        t1, 1028689
                  sltiu        s6, t3, 959
                  srai         t3, t3, 23
                  and          s2, gp, s6
363:              slli         t3, a7, 22
                  bne          a3, s3, 379f
                  add          a0, s10, s8
                  xor          zero, tp, t2
                  bgeu         s11, t0, 368f
368:              nop
                  bge          s3, s10, 384f
                  slt          s3, gp, s0
                  sltu         a6, t0, s11
                  ori          s8, s2, 713
373:              sltiu        s8, sp, 1368
                  slti         s3, zero, -1649
                  sll          a3, sp, a1
                  srl          t3, s10, tp
                  sll          a6, a5, s8
                  xor          t1, a0, s0
379:              ori          t1, a3, 2008
                  add          t5, zero, t1
                  nop
                  blt          a2, t0, 389f
                  lui          tp, 367554
384:              sltu         gp, s2, t0
                  sltu         s11, t3, s7
                  sltu         s1, a0, s10
                  srai         s2, a6, 31
                  slt          s11, t6, s3
389:              add          zero, s4, t5
                  blt          a1, t6, 395f
                  bltu         a1, t2, 396f
                  nop
                  sltu         t4, s6, sp
                  auipc        t0, 226049
395:              beq          s0, t0, 403f
396:              sub          s6, a1, a0
                  slt          tp, zero, t4
                  auipc        ra, 123489
                  ori          t2, s1, -1719
                  nop
                  sub          s6, t0, s2
                  srai         s1, t1, 13
403:              auipc        s7, 244561
                  addi         a3, a5, 1556
                  sra          s11, ra, a4
                  sra          t4, s9, a4
                  blt          s11, s5, 414f
                  slt          s10, s10, s0
                  or           s2, gp, t2
                  sltiu        s6, a1, -501
                  lui          tp, 333546
                  andi         tp, t6, 1701
                  sra          zero, a2, t3
414:              add          s2, s1, s9
                  slti         zero, s11, 1432
                  add          a5, a0, s7
                  lui          a7, 23421
                  srli         s8, s7, 8
                  auipc        s9, 574295
                  nop
                  blt          a2, a1, 423f
                  slt          s7, s7, s6
423:              blt          s8, t2, 428f
                  srl          a5, s11, s0
                  slti         zero, a7, -1312
                  xor          t3, zero, s6
                  or           t0, t4, s1
428:              slti         s3, a7, -611
                  blt          a5, s6, 430f
430:              nop
                  auipc        s2, 568033
                  ori          t3, t0, 1732
                  srai         s2, t5, 23
                  addi         s1, s11, 1898
                  bge          s6, a4, 442f
                  srai         a4, s6, 26
                  beq          gp, t3, 445f
                  lui          zero, 837023
                  slli         s10, a2, 5
                  sll          t0, s6, zero
                  srai         s1, s8, 1
442:              srl          s7, s8, t1
                  nop
                  ori          s0, s8, -438
445:              add          s6, t2, tp
                  add          sp, s7, a3
                  xor          a0, a2, t0
                  srli         ra, t5, 12
                  auipc        zero, 612816
                  bgeu         t1, s2, 461f
                  ori          t0, t5, -1787
                  sll          a7, t0, a4
                  auipc        s9, 257593
                  blt          a5, s8, 457f
                  slt          s4, zero, t3
                  add          gp, s10, s9
457:              auipc        ra, 135732
                  beq          sp, a0, 477f
                  add          a3, zero, tp
                  andi         s1, a6, 363
461:              addi         sp, t6, 1162
                  srl          s7, t4, s0
                  and          a5, t4, t5
                  slli         s2, t1, 17
                  bgeu         a0, s2, 467f
                  srai         gp, s5, 23
467:              lui          a7, 403704
                  sll          s1, sp, zero
                  addi         s5, s7, 1220
                  addi         tp, s6, -312
                  xori         s8, s6, -557
                  sll          t0, tp, s9
                  srai         s1, t2, 15
                  slt          a0, s6, sp
                  slli         t5, s8, 24
                  and          s11, t6, t5
477:              bge          s9, s1, 486f
                  or           gp, s11, tp
                  andi         s1, t5, -1317
                  and          tp, t3, a0
                  sra          t5, a6, zero
                  bge          a3, s2, 501f
                  or           s4, zero, s8
                  srl          a4, s5, t4
                  sltiu        t0, a0, -9
486:              bge          s2, s10, 489f
                  ori          s9, s10, 1315
                  lui          s4, 859834
489:              beq          s2, zero, 494f
                  xori         s0, tp, -856
                  srli         s9, sp, 22
                  srai         s11, a4, 21
                  nop
494:              srl          s1, a1, ra
                  sll          s0, t5, t3
                  or           s4, t3, t4
                  add          t3, s8, a3
                  sra          s8, t2, s1
                  bge          t3, s6, 500f
500:              sltu         t2, s0, a3
501:              blt          t1, s9, 503f
                  slti         t2, t0, 441
503:              xori         s7, a3, 346
                  sltu         a6, a7, t3
                  xori         ra, t3, -1165
                  add          a6, s2, a5
                  slti         a0, a4, 1933
                  lui          zero, 936058
                  addi         t2, s10, -1317
                  lui          a7, 867450
                  andi         tp, t5, 734
                  ori          s6, s7, 1019
                  andi         s0, tp, 1183
                  beq          a5, t0, 519f
                  slli         a5, t4, 16
                  sltiu        a6, a1, 860
                  lui          s4, 475909
                  lui          t5, 739247
519:              sltu         s7, t5, t2
                  nop
                  sltu         t0, sp, s7
                  and          s7, a7, a3
                  xori         a5, s6, 1779
                  blt          zero, s10, 531f
                  auipc        s1, 248632
                  bne          gp, t4, 535f
                  ori          s3, zero, -1824
                  bne          a7, s2, 543f
                  sltiu        sp, t2, 343
                  lui          t1, 110337
531:              slt          s2, t5, a7
                  srai         a6, t6, 12
                  lui          t4, 963720
                  srai         a4, s1, 31
535:              blt          a2, t4, 542f
                  bge          s3, a4, 555f
                  nop
                  srli         a0, s0, 11
                  blt          t1, s2, 543f
                  srli         a7, t1, 12
                  slt          s0, a6, t5
542:              xori         t1, a1, -487
543:              slti         t1, tp, 1252
                  srli         ra, s0, 22
                  lui          s7, 688262
                  sll          s2, t3, a6
                  bltu         t3, t6, 566f
                  slli         t3, s1, 27
                  srl          a5, t4, a1
                  bltu         s5, t3, 566f
                  slt          s11, s6, t6
                  blt          s11, t1, 559f
                  sltiu        s6, a4, 1693
                  ori          t0, a0, 1045
555:              slt          a4, s11, s11
                  xor          s1, tp, a3
                  xori         s3, s6, -1215
                  xori         s3, zero, 153
559:              addi         s2, s5, 1930
                  andi         t1, s3, 1757
                  add          zero, t1, s7
                  lui          s0, 730923
                  sll          ra, a6, a2
                  slti         t3, a2, 1046
                  xor          a4, t4, a7
566:              bltu         s8, a5, 585f
                  srai         ra, zero, 27
                  srli         s4, tp, 22
                  slt          t5, t2, s1
                  bltu         s10, gp, 578f
                  srai         s8, t2, 8
                  srli         s7, ra, 28
                  andi         tp, s10, 998
                  andi         sp, t3, 38
                  slli         s3, ra, 22
                  bge          t2, s6, 585f
                  ori          s4, t0, 995
578:              auipc        a6, 339391
                  add          a6, s8, s10
                  bltu         tp, t2, 582f
                  auipc        a0, 1014559
582:              and          s2, s7, tp
                  or           a6, sp, s8
                  lui          sp, 925100
585:              sra          a6, a6, ra
                  or           t5, t4, s2
                  slli         s5, t3, 21
                  bne          a5, s3, 595f
                  slt          s5, ra, s10
                  nop
                  sll          s4, s6, s11
                  slt          s8, s0, a5
                  srl          s8, s4, t5
                  andi         sp, a5, -1144
595:              add          gp, s0, s9
                  sub          a3, s5, a0
                  srai         a5, zero, 8
                  beq          s0, zero, 606f
                  sub          s1, s3, t3
                  andi         zero, a4, -733
                  sltiu        t2, a4, 1701
                  bgeu         s9, t0, 603f
603:              srli         a5, s3, 8
                  xor          zero, s0, a3
                  srl          t4, s4, s0
606:              sll          zero, t1, sp
                  nop
                  add          s7, s6, a2
                  and          s10, t5, a7
                  or           s0, a4, t1
                  add          a4, a2, t0
                  bgeu         gp, t0, 622f
                  andi         t1, a2, -1837
                  sra          a5, s2, s8
                  lui          tp, 401069
                  srai         s2, s3, 27
                  nop
                  srl          s9, s8, t4
                  bge          a6, s4, 635f
                  and          s4, s10, a5
                  bne          ra, zero, 626f
622:              ori          a4, t2, -286
                  auipc        ra, 190684
                  bne          t4, s3, 629f
                  srai         s7, t3, 18
626:              xori         a7, s6, 716
                  srai         t0, t5, 25
                  xori         s2, s0, -1698
629:              srai         t2, s8, 12
                  srli         s4, s10, 12
                  xori         tp, zero, 1189
                  slt          t5, t4, t4
                  bgeu         s10, tp, 638f
                  bgeu         a6, s4, 645f
635:              lui          ra, 717579
                  sltu         a7, t1, s7
                  and          sp, t3, s1
638:              sub          sp, s5, s7
                  slli         s10, a1, 0
                  bge          s10, t6, 659f
                  bne          s11, s3, 656f
                  blt          a0, a6, 662f
                  blt          a3, s0, 648f
                  auipc        a5, 475985
645:              bne          ra, a3, 653f
                  sub          t3, t1, a0
                  and          s10, a2, s5
648:              nop
                  slti         s9, t1, -17
                  xor          t0, a3, s7
                  slti         tp, t2, -1412
                  or           sp, zero, t1
653:              nop
                  lui          s3, 434172
                  and          s10, a3, ra
656:              bgeu         s4, s8, 675f
                  sll          s6, a4, a3
                  andi         t0, a1, -175
659:              xor          sp, ra, s5
                  or           t3, a5, t3
                  bne          s4, s4, 670f
662:              xori         a7, zero, -1323
                  ori          ra, a5, 903
                  ori          s0, s10, 1360
                  bgeu         s2, t0, 670f
                  nop
                  srai         s6, ra, 20
                  srai         s2, a4, 10
                  sra          a5, a1, s2
670:              sub          s4, zero, a2
                  sltiu        a7, a7, -1447
                  sltu         t5, a0, gp
                  bgeu         sp, s5, 683f
                  srl          s11, s5, zero
675:              slli         t0, zero, 25
                  srl          t5, a2, s5
                  srli         s5, t6, 28
                  bge          a2, a7, 685f
                  slt          t2, s0, s8
                  slli         sp, t5, 6
                  slti         a4, s5, 351
                  srli         s9, sp, 19
683:              sub          gp, ra, t5
                  bne          s11, t2, 700f
685:              srli         a4, s9, 30
                  sra          a0, t6, t3
                  beq          a4, s7, 706f
                  ori          a7, s6, -471
                  nop
                  srl          t2, t0, a1
                  sll          t5, t0, t6
                  auipc        tp, 819103
                  sra          s11, tp, s7
                  bne          a7, a6, 702f
                  bge          zero, zero, 700f
                  sltiu        s7, a0, -866
                  bgeu         a0, a1, 699f
                  addi         s1, tp, 1361
699:              add          a7, t1, tp
700:              beq          s1, s2, 716f
                  or           zero, s5, a2
702:              sll          s9, s11, t1
                  andi         gp, a2, -379
                  srai         s8, t1, 15
                  bge          s7, zero, 706f
706:              add          ra, s3, a5
                  blt          s0, t5, 714f
                  nop
                  ori          s1, a5, -1243
                  bgeu         a4, t4, 711f
711:              slt          s2, s3, ra
                  or           a4, s10, a2
                  bltu         s9, s5, 728f
714:              sll          tp, a2, t2
                  lui          zero, 685931
716:              bne          s2, t6, 723f
                  or           s9, sp, t6
                  sub          a0, a0, t6
                  xor          a4, a4, a1
                  and          a5, s10, s8
                  blt          t4, a5, 732f
                  addi         t0, ra, 1902
723:              bge          t3, tp, 730f
                  or           zero, t0, ra
                  andi         t2, s5, -1557
                  srl          a4, a6, t3
                  nop
728:              slt          zero, t3, t4
                  bgeu         a4, s5, 732f
730:              beq          t1, s8, 734f
                  bgeu         t5, a4, 750f
732:              beq          s9, a4, 752f
                  blt          a6, s11, 752f
734:              addi         tp, t2, 1424
                  srai         s5, t3, 31
                  bltu         a7, s6, 741f
                  addi         a4, s7, -11
                  andi         s7, gp, -501
                  bne          a5, a5, 754f
                  andi         a4, a1, -1914
741:              bne          a4, a0, 746f
                  sltiu        a4, gp, -1219
                  ori          a6, s9, 727
                  blt          s10, tp, 746f
                  srli         a0, a3, 0
746:              slt          s2, a6, t5
                  add          tp, s0, a5
                  xori         s11, s1, 252
                  lui          s0, 799037
750:              sltu         a4, a4, a3
                  and          zero, s2, tp
752:              sltu         s9, s7, t1
                  beq          s2, ra, 762f
754:              xor          a3, a6, a4
                  blt          a5, a5, 759f
                  xori         a7, s11, -1353
                  or           s3, t6, s9
                  srli         a0, t1, 27
759:              blt          a6, s5, 768f
                  slt          t4, t4, s5
                  lui          s4, 330165
762:              nop
                  sub          s7, t5, t5
                  nop
                  sub          a6, t0, a3
                  sub          a0, s5, gp
                  bltu         s2, zero, 774f
768:              and          sp, gp, s11
                  sltiu        t5, s8, -2012
                  slt          s7, s10, sp
                  slli         s11, a6, 9
                  addi         s3, a5, 20
                  slti         sp, a5, 1443
774:              xor          s4, a4, a4
                  bgeu         t0, s8, 782f
                  addi         t4, a2, 378
                  xori         s2, t4, 2024
                  sltiu        a3, a7, -1943
                  slti         s3, a7, -276
                  srl          a6, a2, a0
                  slli         s7, s4, 20
782:              and          tp, a2, s3
                  beq          a3, a1, 803f
                  slt          t3, zero, a3
                  sltu         zero, s2, t2
                  srai         zero, s2, 21
                  andi         s8, a7, 1152
                  slti         t5, gp, 664
                  xori         t0, a6, 1754
                  and          s10, t3, t1
                  bge          zero, tp, 794f
                  slti         sp, a0, 1759
                  sll          s3, a0, s8
794:              addi         s11, s1, 1364
                  sltiu        t4, s10, -234
                  or           t5, a2, t2
                  bltu         s7, t4, 802f
                  andi         t1, s4, -1687
                  andi         sp, tp, -1406
                  srli         s5, t4, 3
                  bne          t1, s8, 808f
802:              blt          s0, t6, 818f
803:              sra          t2, gp, sp
                  xori         t1, t5, 613
                  sltiu        s10, t5, -276
                  bgeu         t3, a7, 825f
                  srl          s9, t1, s8
808:              srli         t4, ra, 9
                  xori         zero, s10, 253
                  slli         s11, a1, 9
                  beq          t5, s3, 816f
                  beq          s10, a1, 820f
                  lui          sp, 842528
                  sltu         s9, s3, a2
                  sltiu        t4, s4, -569
816:              srai         s0, s6, 7
                  bne          s9, t1, 818f
818:              nop
                  blt          a3, s0, 838f
820:              bgeu         t0, s0, 835f
                  or           s1, a2, ra
                  xori         a7, a2, -517
                  auipc        t1, 599326
                  xor          a3, s0, s3
825:              xor          t0, t6, s2
                  ori          a3, s6, -1152
                  bgeu         t5, a3, 846f
                  bge          a5, a3, 830f
                  nop
830:              sra          t4, s6, a0
                  bge          t2, t0, 836f
                  nop
                  blt          s8, t6, 843f
                  xor          gp, zero, a4
835:              beq          t5, s11, 846f
836:              slli         a6, s11, 25
                  lui          gp, 66700
838:              xori         ra, t1, -1798
                  addi         t3, a6, -853
                  xor          a3, a4, tp
                  sll          t1, s9, tp
                  slli         a4, s11, 15
843:              addi         s3, tp, -251
                  or           a0, s3, tp
                  srai         s2, ra, 25
846:              xor          s4, s3, a2
                  beq          s3, t6, 866f
                  slt          gp, t5, t5
                  nop
                  addi         s7, s2, 191
                  auipc        s6, 112481
                  bgeu         s2, t4, 854f
                  or           t2, s4, t1
854:              auipc        gp, 400289
                  auipc        sp, 101466
                  sub          t1, a4, s11
                  beq          tp, a6, 866f
                  or           ra, a1, t6
                  slt          a4, s3, a6
                  and          sp, ra, t1
                  nop
                  slti         gp, a0, 1234
                  xor          t2, t2, a5
                  addi         s2, sp, 832
                  ori          t2, s5, 270
866:              nop
                  ori          s4, s1, -1137
                  sll          ra, zero, s10
                  slli         s2, t5, 5
                  bge          a1, s8, 875f
                  srai         s2, a2, 0
                  andi         s10, t4, -1489
                  andi         t5, s11, 305
                  bne          t6, a7, 879f
875:              blt          s3, s5, 890f
                  slti         s2, a1, 1771
                  andi         s2, s4, -1593
                  sub          s8, t5, s4
879:              slti         t1, s10, 1946
                  bge          t4, s5, 887f
                  sltiu        zero, s1, 1468
                  addi         t1, a4, 561
                  blt          t5, s6, 899f
                  addi         zero, s10, -1724
                  sra          s8, a2, s4
                  add          t4, s6, s8
887:              srli         t4, a0, 12
                  or           s8, s4, s3
                  addi         s4, a3, -1308
890:              srai         a3, s6, 26
                  nop
                  or           s4, a6, s9
                  bge          s9, s1, 901f
                  nop
                  beq          a0, s2, 896f
896:              srli         s10, s2, 2
                  srl          a6, s4, a3
                  or           a0, a4, s2
899:              xori         sp, a7, -2007
                  sub          zero, s9, s3
901:              lui          tp, 802963
                  bne          t2, s10, 907f
                  auipc        ra, 584519
                  sra          s2, ra, ra
                  slt          t4, a0, s3
                  lui          tp, 673197
907:              blt          s11, a0, 917f
                  lui          ra, 106156
                  bgeu         t5, a3, 914f
                  beq          zero, s5, 915f
                  blt          a0, s1, 918f
                  auipc        a4, 935928
                  nop
914:              sltiu        s9, s3, 810
915:              srl          s2, s4, s11
                  ori          a7, s10, -203
917:              sll          gp, a1, a7
918:              blt          s1, s5, 938f
                  or           a5, s3, s3
                  sub          a6, a0, s8
                  auipc        zero, 112534
                  bltu         a1, tp, 930f
                  lui          t0, 274335
                  sll          t3, gp, s10
                  slli         s1, t4, 0
                  add          s1, t0, t1
                  xor          s7, a6, s9
                  slt          s0, zero, sp
                  ori          a5, s11, 1865
930:              xori         a6, s3, 1969
                  ori          s0, s0, 1665
                  lui          t3, 63157
                  srli         a6, s1, 16
                  and          s4, t4, a2
                  and          t4, s6, t0
                  sll          a0, s4, gp
                  addi         t3, tp, 1473
938:              bgeu         t2, s5, 957f
                  bltu         s3, ra, 946f
                  add          s1, s9, t0
                  slt          s3, a4, a3
                  sltiu        a7, a5, 51
                  slli         s4, s3, 28
                  ori          s4, a0, -1157
                  slli         s5, s4, 0
946:              sltu         a6, s1, s3
                  bgeu         t4, s6, 962f
                  sll          a7, a3, s6
                  lui          s10, 730722
                  slti         s5, a1, -1287
                  bge          t3, tp, 958f
                  bge          ra, t6, 961f
                  bge          zero, a5, 955f
                  srl          s4, s10, a6
955:              slli         s6, a2, 5
                  sltiu        a0, t5, -800
957:              slti         s5, gp, 1482
958:              slli         t0, tp, 25
                  sll          s9, a0, s6
                  xor          s11, a5, s3
961:              ori          s5, s3, 676
962:              andi         a3, t2, 362
                  auipc        t3, 258047
                  bge          s2, s6, 969f
                  nop
                  and          a5, a0, tp
                  andi         s2, t6, 1075
                  andi         t3, a7, 620
969:              xori         s9, s1, -519
                  srai         a4, s1, 4
                  srai         t0, a4, 27
                  srl          zero, zero, a6
                  auipc        t2, 419555
                  bgeu         t0, s7, 990f
                  xori         ra, tp, -1848
                  bltu         t2, a2, 984f
                  xor          s2, a3, s10
                  srl          ra, tp, gp
                  or           s4, gp, a0
                  bge          a1, a2, 981f
981:              sll          t0, a3, s9
                  andi         a3, a6, 1982
                  bge          sp, s2, 1002f
984:              bltu         t3, gp, 1000f
                  addi         s9, s1, -928
                  and          a0, tp, a6
                  sra          s0, gp, a1
                  and          zero, s1, zero
                  srai         ra, t5, 3
990:              srl          s8, s8, t2
                  sltiu        s3, s3, -376
                  lui          s6, 140836
                  sub          a0, s6, t5
                  auipc        zero, 936885
                  sra          t1, s3, s2
                  auipc        s1, 181595
                  srli         a0, gp, 27
                  xor          s10, s0, a4
                  xor          t2, s6, s1
1000:             blt          a7, a4, 1002f
                  auipc        t4, 166591
1002:             srl          s4, s10, s1
                  bgeu         a2, gp, 1022f
                  srai         s2, a4, 14
                  and          s0, s9, t1
                  xor          a7, a1, a5
                  add          s6, sp, ra
                  slti         s7, s2, 848
                  sltu         s9, a4, t0
                  addi         a5, a1, 62
                  sltiu        a0, zero, -776
                  srl          gp, s8, s2
                  add          t4, s9, sp
                  sltu         ra, s8, a7
                  slli         a5, s6, 30
                  nop
                  slt          a4, s1, zero
                  addi         t0, s9, 1003
                  slt          a4, s10, a5
                  srl          a5, s4, t6
                  slli         zero, t2, 21
1022:             slti         s10, s5, -132
                  auipc        sp, 251668
                  slti         ra, t5, -860
                  addi         t5, s11, -247
                  slti         a5, a4, -1495
                  xori         gp, s8, 633
                  srl          a4, s5, s2
                  beq          s3, t3, 1032f
                  sltiu        t4, a0, -1460
                  bne          tp, t1, 1036f
1032:             xori         a0, a2, -834
                  andi         s6, s7, 531
                  xori         s9, s4, 2003
                  or           s8, s2, s0
1036:             or           t1, s0, a4
                  sltiu        a5, s0, 1265
                  and          s2, s6, s0
                  nop
                  nop
                  beq          a1, t1, 1056f
                  auipc        t1, 440917
                  addi         a3, s9, 418
                  srl          gp, ra, tp
                  and          a7, t4, zero
                  sll          ra, s2, a1
                  lui          a6, 724829
                  sltu         zero, s3, s9
                  srai         s0, t0, 25
                  sra          a4, s9, s4
                  srli         t3, t1, 29
                  add          s4, s4, ra
                  bge          s0, a1, 1062f
                  sltu         s3, s8, a4
                  sltu         s5, sp, a5
1056:             andi         a3, t2, 473
                  srli         s2, s8, 6
                  beq          s5, s0, 1062f
                  nop
                  andi         a7, s5, -1295
                  srai         s7, s2, 16
1062:             xor          s5, tp, a5
                  blt          a0, a7, 1070f
                  or           s7, a6, a4
                  and          t1, t0, t6
                  sll          s6, t2, s8
                  xor          a5, s10, s2
                  ori          s0, a4, 1044
                  bgeu         a3, s8, 1070f
1070:             bne          s5, t5, 1089f
                  ori          a0, a4, 452
                  bne          t5, s7, 1083f
                  xori         a4, t1, 1093
                  xori         s3, a6, -1676
                  or           s9, s9, tp
                  or           s11, t1, t6
                  lui          s2, 599364
                  bge          a4, s0, 1083f
                  bgeu         a2, a3, 1098f
                  nop
                  ori          s9, t6, -603
                  slli         a6, t0, 23
1083:             slti         zero, zero, 546
                  or           s9, s9, t6
                  bge          s3, t3, 1101f
                  sltiu        s9, t3, 1752
                  bne          s0, s7, 1092f
                  nop
1089:             slli         sp, a2, 5
                  blt          a1, zero, 1091f
1091:             bltu         t4, s9, 1099f
1092:             srai         t0, s5, 13
                  bltu         s2, s2, 1100f
                  auipc        t1, 916331
                  add          s0, s0, t2
                  sltiu        sp, s1, 982
                  bne          a0, s7, 1112f
1098:             xori         t2, a0, -444
1099:             xori         a6, a1, -273
1100:             or           a7, a3, s5
1101:             slti         s10, s0, -593
                  slli         a3, a3, 31
                  sll          s8, a1, a5
                  srai         s5, a2, 30
                  xori         s5, a2, -2005
                  addi         a7, t4, -657
                  bltu         s1, ra, 1126f
                  addi         a5, a5, -1610
                  add          a7, t2, s11
                  sra          a7, a7, a0
                  xori         s11, s6, 126
1112:             sltu         t0, a3, a2
                  srai         zero, s7, 6
                  bltu         s6, s0, 1118f
                  slti         a7, t2, 846
                  blt          s0, a1, 1135f
                  and          t2, s0, a2
1118:             bgeu         s2, a1, 1125f
                  lui          s1, 178630
                  xori         s9, t3, -260
                  sra          a7, tp, s11
                  bne          t3, a4, 1127f
                  slt          sp, s10, s7
                  bgeu         t5, zero, 1126f
1125:             bne          t2, s0, 1127f
1126:             bne          zero, a6, 1133f
1127:             srli         s2, s3, 3
                  xor          s7, a7, t6
                  sra          s4, t3, s8
                  bge          ra, gp, 1135f
                  or           t2, t0, s7
                  or           s0, a4, sp
1133:             bgeu         s2, a3, 1143f
                  sltu         s3, a7, a7
1135:             ori          a3, s11, 376
                  srai         a3, s9, 29
                  sub          tp, ra, t3
                  srli         t1, ra, 24
                  sltiu        a6, t1, -1692
                  bne          a1, t5, 1141f
1141:             sltu         t4, s9, t3
                  or           a0, s6, zero
1143:             slti         t4, a4, 106
                  sub          s0, ra, s1
                  and          zero, t5, a5
                  xor          a7, s0, t4
                  add          t4, a3, s11
                  auipc        s8, 406093
                  slti         a5, s5, -37
                  nop
                  xori         tp, ra, -819
                  lui          s0, 972668
                  addi         s8, s3, 722
                  srai         s7, a2, 13
                  lui          t4, 517905
                  srai         a0, t6, 13
                  srl          s4, a5, a0
                  srl          zero, t1, t1
                  slli         t2, s6, 0
                  add          s0, s9, s3
                  blt          s9, s8, 1176f
                  and          tp, s8, t6
                  beq          zero, a5, 1171f
                  sltu         s7, a4, s6
                  slt          s4, a3, s6
                  nop
                  or           a4, a4, s1
                  auipc        s11, 82183
                  sra          tp, a7, a1
                  and          s11, a1, sp
1171:             sra          s1, t5, s1
                  and          a0, t3, t2
sub_5_36:         jal          t0, 1f
0:                jal          t1, 2f
1:                jal          a7, 14f
2:                jal          t1, 9f
3:                jal          ra, 7f
4:                jal          s5, 12f
5:                jal          t1, 0b
6:                jal          a4, 4b
7:                jal          ra, 13f
8:                jal          tp, 3b
9:                jal          ra, 11f
10:               jal          ra, 8b
11:               jal          s2, 6b
12:               jal          t1, 10b
13:               jal          ra, 15f
14:               jal          ra, 5b
15:               lui          s11, 374456
                  srl          t1, s9, a6
                  beq          t3, s11, 1181f
                  srai         s2, a5, 4
1176:             beq          tp, s1, 1185f
                  bge          a3, s1, 1188f
                  and          s10, s5, s9
                  add          t5, t3, s8
                  bltu         sp, a4, 1185f
1181:             lui          a5, 1005682
                  and          s6, t3, a7
                  sub          sp, a0, sp
                  sll          s0, s2, s9
1185:             bltu         s3, a0, 1188f
                  lui          s5, 948053
                  beq          sp, s0, 1206f
1188:             add          s0, tp, a1
                  ori          t3, s0, 524
                  and          s3, a3, a6
                  xori         tp, a2, -625
                  slti         s0, s11, -492
                  slt          t5, t2, zero
                  bge          s10, s11, 1214f
                  slti         t5, s10, -1307
                  srai         s4, s0, 18
                  add          s9, s2, a3
                  addi         s8, s8, -1546
                  srli         a6, zero, 2
                  sltu         tp, s4, s10
                  andi         s8, s11, -136
                  xori         s10, s2, 680
                  xori         a5, tp, -1887
                  auipc        s3, 99527
                  srl          s9, t6, t5
1206:             xor          sp, zero, s4
                  slti         a3, s3, -1953
                  blt          t0, tp, 1224f
                  srl          a5, a1, gp
                  sltiu        t2, t2, 1902
                  sltu         a5, sp, s11
                  and          a0, a2, s6
                  slt          a0, t5, gp
1214:             lui          tp, 723761
                  slti         sp, t1, -1984
                  ori          s0, a7, -699
                  addi         gp, s6, 1869
                  bne          sp, s5, 1227f
                  srl          t3, t6, gp
                  bltu         s7, a7, 1225f
                  nop
                  srl          s9, zero, t4
                  srli         zero, t5, 0
1224:             and          ra, s5, a5
1225:             beq          a7, s10, 1226f
1226:             slli         s3, s4, 7
1227:             xor          t5, a6, s5
                  ori          s9, zero, 1370
                  ori          t5, s5, 386
                  or           s0, s0, s11
                  bne          a3, s4, 1251f
                  slli         gp, a5, 23
                  slt          a6, s4, s9
                  auipc        t5, 576539
                  slti         sp, t2, -1351
                  auipc        a7, 23510
                  xori         s10, s0, 572
                  and          t0, s4, s11
                  xor          s4, s10, s9
                  blt          sp, s2, 1249f
                  sub          s3, s1, t2
                  beq          s10, a5, 1261f
                  slti         s5, s6, 866
                  or           a6, s8, a7
                  slli         t0, s1, 17
                  srai         s2, t0, 27
                  sltu         sp, s7, t3
                  slti         s2, sp, 2013
1249:             slt          tp, s8, a1
                  sltiu        t5, t3, 621
1251:             sltiu        a5, sp, -183
                  addi         a6, t2, 915
                  xor          s6, s2, a3
                  sltu         t0, s8, s0
                  and          t4, ra, t4
                  sra          s3, s9, gp
                  ori          s9, a1, -919
                  slti         gp, a1, -2013
                  or           zero, s1, t4
                  add          s4, t2, s2
1261:             slli         sp, a3, 22
                  xor          s7, t3, s0
                  slti         s6, t2, 1781
                  sub          zero, s6, s11
                  bne          t2, t2, 1280f
                  srai         t0, s4, 6
                  auipc        a5, 780990
                  blt          t1, s0, 1275f
                  auipc        ra, 990948
                  srli         s7, s6, 30
                  nop
                  bne          a6, t3, 1277f
                  bltu         s9, a5, 1292f
                  srli         s7, t3, 25
1275:             nop
                  sra          s3, a6, a6
1277:             sll          t5, sp, gp
                  bltu         s3, a2, 1289f
                  slli         s1, a1, 22
1280:             or           s4, s9, ra
                  srl          s2, s1, s6
                  nop
                  lui          ra, 165698
                  andi         s10, s3, -1200
                  bgeu         t1, s2, 1287f
                  blt          s0, t5, 1290f
1287:             addi         s3, t4, 1800
                  sltu         a3, a1, a3
1289:             bge          tp, s10, 1298f
1290:             sll          t4, a4, t5
                  addi         s6, t4, 26
1292:             slti         s8, tp, -775
                  and          zero, a2, t1
                  nop
                  bne          sp, s3, 1311f
                  slti         t1, t6, -1821
                  bltu         s0, t6, 1300f
1298:             addi         s9, t5, 1478
                  bltu         a4, tp, 1300f
1300:             xori         s9, s1, -1994
                  xori         t0, s8, -496
                  or           s2, s0, s6
                  srl          s0, t4, s9
                  xori         t5, s0, -64
                  bge          s7, sp, 1312f
                  sltu         tp, t6, tp
                  addi         a6, t4, -333
                  or           t5, t2, t1
                  xor          t5, t6, t3
                  and          a5, s0, s2
1311:             add          s7, a0, t0
1312:             beq          s0, s9, 1320f
                  xor          s6, a1, t1
                  ori          s7, s10, 1012
                  srai         a4, gp, 2
                  xori         s1, a6, 1257
                  slti         a6, s2, 1949
                  sub          a0, sp, s1
                  bne          s8, s8, 1324f
1320:             or           tp, t3, a4
                  bge          a2, s5, 1329f
                  ori          s3, a1, 758
                  bgeu         a7, t5, 1342f
1324:             lui          a3, 692643
                  bgeu         s2, s9, 1327f
                  xori         a7, a4, -1572
1327:             xor          t3, s8, a7
                  nop
1329:             lui          s4, 339746
                  add          s10, s6, s10
                  srli         a0, s4, 6
                  and          tp, s8, s6
                  sub          s2, a7, s8
                  sra          s6, a2, gp
                  auipc        zero, 923487
                  sra          s6, gp, a6
                  slti         s11, s9, 522
                  nop
                  addi         sp, tp, 208
                  sltiu        a6, a1, 1930
                  srai         zero, a6, 10
1342:             srai         t2, a0, 8
                  add          s3, gp, s7
                  blt          a4, a1, 1349f
                  add          gp, a4, a6
                  sltu         gp, s9, s3
                  sltu         s9, t0, s4
                  sub          s0, t4, s10
1349:             srli         sp, s5, 13
                  srl          s10, sp, s8
                  bne          s9, s7, 1358f
                  sltiu        s10, t1, 1194
                  xor          s2, s9, a2
                  blt          s2, t0, 1364f
                  beq          s5, tp, 1370f
                  blt          a2, a5, 1363f
                  nop
1358:             add          s6, s7, a7
                  blt          a1, zero, 1375f
                  nop
sub_5_7:          jal          t0, 6f
0:                jal          ra, 24f
1:                jal          t0, 2f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          s5, 7f
5:                jal          t1, 29f
6:                jal          t1, 16f
7:                jal          ra, 15f
8:                jal          ra, 5b
9:                jal          t1, 11f
10:               jal          ra, 3b
11:               jal          ra, 19f
12:               jal          t1, 14f
13:               jal          ra, 22f
14:               jal          ra, 26f
15:               jal          ra, 8b
16:               jal          t1, 20f
17:               jal          a7, 0b
18:               jal          t0, 23f
19:               jal          ra, 13b
20:               jal          ra, 12b
21:               jal          ra, 10b
22:               jal          ra, 28f
23:               jal          s5, 27f
24:               jal          t1, 21b
25:               jal          ra, 30f
26:               jal          ra, 18b
27:               jal          ra, 1b
28:               jal          ra, 17b
29:               jal          ra, 25b
30:               add          a4, s6, s5
                  add          a0, a6, a7
                  blt          s9, s0, 1367f
1363:             xor          s2, s1, t2
1364:             andi         s10, t4, 364
                  andi         s6, a0, -1826
                  nop
1367:             slti         s11, a5, -442
                  bne          s1, s9, 1387f
                  srai         s4, gp, 0
1370:             nop
                  srli         s10, s8, 0
                  slli         t3, a2, 30
                  and          t0, zero, a1
                  srl          s2, gp, sp
1375:             sltiu        s6, s11, 1451
                  beq          t0, gp, 1395f
                  sltu         sp, a3, t2
                  ori          t0, s7, -1265
                  sltu         t2, s3, t3
                  auipc        a5, 172785
                  nop
                  sltiu        a5, s8, -643
                  sltiu        a3, t3, 614
                  auipc        a7, 728258
                  sltiu        s1, zero, 444
                  srai         gp, s11, 25
1387:             andi         s3, tp, 402
                  add          a3, s4, s10
                  bltu         sp, sp, 1408f
                  xori         a0, s0, -437
                  sub          s7, s10, sp
                  bgeu         s3, s2, 1397f
                  and          s8, a4, s3
                  srl          t4, t4, gp
1395:             srai         a3, t6, 15
                  and          a3, sp, zero
1397:             slli         s3, zero, 9
                  slti         t2, t1, 1946
                  sltiu        s8, s4, -1750
                  add          a7, s1, s11
                  andi         ra, s11, 1920
                  bltu         s7, t4, 1413f
                  sra          t4, a0, s11
                  addi         s8, s7, -1724
                  xor          t3, s0, t5
                  ori          s0, s9, 1694
                  add          a5, ra, t0
1408:             bgeu         gp, s6, 1428f
                  xori         t5, s0, 274
                  bge          t5, s10, 1426f
                  xor          s2, ra, s5
                  sll          s9, s10, ra
1413:             xor          s9, a0, zero
                  sra          s5, a7, s0
                  ori          s0, t4, -636
                  auipc        a4, 741481
                  andi         s9, s9, 1252
                  beq          gp, t0, 1437f
                  andi         s8, a5, 1477
                  or           sp, t1, a5
                  auipc        s9, 977786
                  or           gp, gp, a6
                  add          gp, a2, s1
                  slli         s0, s1, 25
                  sra          a4, s2, a7
sub_5_46:         jal          t0, 3f
0:                jal          t1, 7f
1:                jal          t1, 4f
2:                jal          ra, 0b
3:                jal          ra, 8f
4:                jal          t1, 9f
5:                jal          gp, 11f
6:                jal          ra, 1b
7:                jal          t4, 6b
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          t2, 5b
11:               add          zero, a4, t3
1426:             lui          t4, 936404
                  or           ra, sp, t5
1428:             sltu         s10, a5, t5
                  addi         t2, t2, 622
                  addi         s1, t4, 241
                  add          sp, s9, t3
                  xori         s6, s6, -1322
                  blt          t1, zero, 1436f
                  bgeu         gp, tp, 1442f
                  srl          a6, s2, a4
1436:             sll          s7, t0, t3
1437:             auipc        s8, 206557
                  bltu         t0, zero, 1443f
                  xor          s3, t2, t5
                  srai         t0, t0, 13
                  beq          s3, t6, 1448f
1442:             bgeu         a7, a0, 1461f
1443:             bgeu         t0, s9, 1450f
                  beq          s8, s8, 1459f
                  sltu         s0, s0, s2
                  bne          a4, s4, 1461f
                  sll          sp, ra, s0
1448:             sll          a6, t2, a4
                  slti         a6, zero, -1399
1450:             nop
                  sll          a0, t3, t4
                  ori          a7, t5, -1968
                  andi         sp, s2, 2003
                  xori         a0, s1, 723
sub_5_31:         jal          t0, 2f
0:                jal          ra, 14f
1:                jal          t1, 8f
2:                jal          ra, 20f
3:                jal          t1, 4f
4:                jal          s11, 5f
5:                jal          t1, 1b
6:                jal          s4, 17f
7:                jal          a3, 9f
8:                jal          a3, 11f
9:                jal          ra, 18f
10:               jal          ra, 15f
11:               jal          ra, 0b
12:               jal          ra, 22f
13:               jal          t1, 19f
14:               jal          gp, 12b
15:               jal          t1, 23f
16:               jal          t1, 3b
17:               jal          t1, 16b
18:               jal          t1, 10b
19:               jal          ra, 7b
20:               jal          a5, 6b
21:               jal          s4, 13b
22:               jal          ra, 21b
23:               lui          s4, 695466
                  bne          t0, t5, 1456f
1456:             xor          t0, s9, s4
                  add          t5, t4, gp
                  slti         a7, a1, 551
1459:             srli         t2, a0, 20
                  xor          a5, t1, sp
1461:             xori         s2, s10, -967
                  bge          t5, a6, 1467f
                  xor          zero, t4, a3
                  add          t1, a4, s9
                  lui          t4, 681368
                  slti         gp, ra, -1085
1467:             blt          s8, a4, 1477f
                  xor          gp, s10, gp
                  sll          t2, s10, t0
                  xor          s1, zero, t6
                  auipc        tp, 687889
                  slli         a5, s1, 9
                  lui          sp, 116721
                  add          a5, s3, a2
                  nop
                  sub          s3, a0, t1
1477:             srai         t1, s2, 9
                  slli         t2, a5, 25
                  andi         gp, ra, 1368
                  add          s9, t0, ra
                  slli         s7, s4, 13
                  bgeu         a3, t1, 1487f
                  add          s8, t5, t0
                  xor          tp, s11, s6
                  sll          a3, a6, t6
                  blt          s0, zero, 1502f
1487:             sra          t0, a0, tp
                  addi         t2, s9, -1485
                  bge          s4, t2, 1491f
                  xor          s10, a6, tp
1491:             beq          s8, s4, 1495f
                  slt          s10, ra, a6
                  addi         s0, a7, 590
                  bltu         a3, s11, 1503f
1495:             srl          ra, a7, t1
                  sub          sp, tp, t1
                  beq          t6, a5, 1502f
                  sltiu        a6, a7, -911
                  srli         s11, tp, 22
                  slti         a5, t6, -1252
                  sltiu        a4, t5, -1910
1502:             sltu         s1, zero, s0
1503:             addi         s0, s2, -172
                  andi         t5, a0, -1184
                  srai         a3, t3, 6
                  ori          sp, a4, 1146
                  and          sp, s2, a7
                  add          sp, ra, s11
                  beq          s8, s11, 1517f
                  bne          t3, s0, 1517f
                  srl          a6, a3, s10
                  srai         tp, ra, 12
                  slli         a6, s7, 19
                  sltu         gp, s1, a5
                  andi         a4, a5, 933
                  auipc        s10, 546844
1517:             nop
                  addi         t5, t5, 5
                  bltu         t0, s11, 1521f
                  bgeu         t0, s7, 1521f
1521:             srl          s8, tp, ra
                  addi         s5, s2, -319
                  slti         tp, s7, 881
                  lui          a6, 431656
                  addi         s8, t1, 1201
                  auipc        s2, 863311
                  sra          s6, t4, ra
                  slli         a7, ra, 3
                  sra          t4, t2, t5
                  sll          s10, zero, s7
                  ori          s3, t1, 523
                  slti         s10, sp, -557
                  srai         s7, t0, 2
                  addi         a6, s4, 1887
                  xori         s0, zero, 217
                  sltu         s1, ra, gp
                  sub          a0, t6, s11
                  sltu         a4, a0, a5
                  or           t4, t0, a5
                  andi         s7, s3, 1055
                  addi         a5, s9, 2012
                  srli         ra, a0, 29
                  slli         s4, a4, 26
                  bltu         s7, gp, 1551f
                  sltiu        s5, s6, 1274
                  add          s0, a5, tp
                  sltu         a0, a7, t1
                  sub          t3, sp, t5
                  srai         s8, tp, 24
                  bgeu         s4, sp, 1559f
1551:             srli         t3, s9, 3
                  blt          s4, t6, 1571f
                  nop
                  slti         a7, s5, -537
                  bltu         s0, gp, 1564f
                  auipc        s6, 402796
                  and          a6, gp, zero
                  auipc        s7, 740675
1559:             slli         a3, s2, 11
                  srl          s5, t2, s6
                  sltiu        s3, s3, 1294
                  add          a6, s6, s0
                  ori          s8, t5, 478
1564:             bne          s9, ra, 1569f
                  xori         a6, s4, -278
                  sltu         zero, a7, t2
                  or           a6, t5, a0
                  add          sp, a7, sp
1569:             srli         a5, s6, 15
                  sltiu        s11, s10, 1069
1571:             bltu         t2, t1, 1587f
                  xor          s8, a5, s9
                  bge          s9, s2, 1581f
                  bge          s3, s7, 1578f
                  sltiu        s9, t4, 344
                  ori          t0, sp, 1544
                  slli         s2, s5, 7
1578:             nop
                  blt          s3, s4, 1598f
                  slti         a7, s11, 929
1581:             slli         s0, a2, 31
                  auipc        s0, 521779
                  ori          a3, s6, -319
                  addi         a5, a6, -291
                  bltu         s2, t6, 1588f
                  andi         a4, s1, -57
1587:             slli         a3, gp, 23
1588:             slti         s1, a5, -1570
                  slli         ra, s9, 18
                  slli         a7, s4, 13
                  xor          a6, s3, s7
                  xori         s11, sp, -1450
                  andi         s10, t0, -1928
                  srli         t5, a4, 31
                  auipc        s5, 872618
                  sra          s10, s5, ra
                  sltiu        a4, sp, 1117
1598:             blt          s8, a6, 1603f
                  sub          ra, tp, s2
                  slt          a0, s8, a2
                  xori         s0, a7, 1839
                  xor          t5, s7, s4
1603:             slli         gp, s11, 12
                  beq          s0, t2, 1614f
                  add          t0, s1, t5
                  blt          tp, s4, 1607f
1607:             lui          s9, 432004
                  auipc        s6, 905044
                  add          ra, s7, s1
                  beq          s2, s0, 1617f
                  xor          ra, s11, s4
                  srai         t0, a7, 2
                  andi         s4, t5, 285
1614:             auipc        s0, 413879
                  srl          s2, a4, a3
                  lui          s2, 928748
1617:             nop
                  srai         s5, a7, 23
                  nop
                  srai         sp, s11, 0
                  ori          s3, s5, -841
                  bne          t5, s5, 1638f
                  andi         a3, s8, 927
                  addi         t1, a1, -293
                  nop
                  nop
                  bne          s3, s6, 1628f
1628:             beq          s6, s6, 1643f
                  addi         s5, a0, -1561
                  beq          a0, s6, 1639f
                  sra          s11, s4, s8
                  bgeu         s11, t4, 1637f
                  srl          t3, s2, s1
                  sltu         s8, t1, zero
                  slt          s9, a4, s10
                  srai         ra, t3, 18
1637:             sll          a0, t0, t2
1638:             bne          zero, s2, 1645f
1639:             sll          t4, a3, a1
                  srl          s10, a0, t4
                  sll          s6, s10, a6
                  xori         a7, a5, 587
1643:             srai         t4, s2, 3
                  auipc        s2, 579303
1645:             bgeu         s11, a5, 1653f
                  sll          s9, s6, a2
                  or           s4, tp, sp
                  bge          gp, a3, 1667f
                  andi         tp, s4, 28
                  srl          s10, a2, s6
                  lui          s7, 156582
                  or           ra, s5, s0
1653:             auipc        t1, 1034524
                  sll          s8, t1, s2
                  slt          s1, s4, a4
                  slti         s5, s9, -693
                  bne          gp, a0, 1668f
                  srai         s11, s9, 11
                  sll          s8, a5, s5
                  sll          a4, t2, s0
                  xori         s3, ra, -942
                  bltu         s10, s9, 1669f
                  or           ra, a0, s6
                  xori         s2, t6, 978
                  bge          t4, s1, 1670f
                  blt          t1, s4, 1668f
1667:             ori          s8, tp, -1036
1668:             xori         s9, s1, -1361
1669:             add          s3, s0, t4
1670:             xori         s2, s8, -1308
                  beq          s6, a3, 1691f
                  or           s10, t6, t0
                  blt          s0, a0, 1692f
                  sub          a0, s6, tp
                  add          gp, a2, a6
                  sltu         sp, sp, s10
                  sltiu        s0, s7, 1877
                  slti         s5, s4, 999
                  srl          s10, s6, a6
                  sra          t1, ra, s10
                  sltiu        tp, t0, 1121
                  addi         t1, t1, -227
                  sub          a5, s0, s5
                  slt          a4, tp, tp
                  sll          tp, s8, a3
                  slli         s8, a5, 4
                  sll          t5, a2, ra
                  bgeu         t4, s9, 1695f
                  lui          s10, 374745
                  sltu         s1, tp, s8
1691:             srai         ra, a6, 13
1692:             lui          s6, 135298
                  and          t1, tp, ra
                  bgeu         t4, gp, 1709f
1695:             beq          a5, s3, 1700f
                  bge          t4, s11, 1698f
                  ori          gp, tp, -1593
1698:             srai         t5, a2, 6
                  srai         s10, t0, 20
1700:             xori         s0, t4, 1501
                  beq          a4, s5, 1720f
                  andi         s11, a7, -981
                  srai         s7, s6, 11
                  xori         tp, a4, 794
                  nop
                  bgeu         a0, t1, 1725f
                  blt          s4, s6, 1712f
                  bgeu         t0, t0, 1709f
1709:             slti         t1, s7, -915
                  sub          s10, s6, a2
                  slli         a0, s0, 22
1712:             slti         s1, a6, -1270
                  xor          t5, a3, s5
                  auipc        a0, 649547
                  lui          a4, 431314
                  add          t1, s9, a5
                  slt          t4, t3, s8
                  slli         t4, s4, 13
                  ori          a0, a4, 1933
1720:             sra          a3, t6, s11
                  or           s5, t6, a4
                  sra          a0, gp, s10
                  srai         t5, s6, 30
                  sltu         s1, s7, s4
1725:             bltu         t1, s2, 1727f
                  sltu         s2, a3, s8
1727:             addi         a3, s6, 899
                  bltu         s6, tp, 1747f
                  bgeu         t0, t4, 1749f
                  or           s3, a5, t1
                  ori          gp, t3, 1275
                  addi         a4, a5, 850
                  slti         s11, a5, 1416
                  sltiu        t2, a0, -651
                  sltu         a3, s11, a2
                  sra          s11, s6, t1
                  sra          s11, s10, s4
                  slt          s6, s4, a1
                  sra          a0, tp, s1
                  andi         t0, tp, -241
                  sra          s2, sp, t1
                  nop
                  sub          s8, a2, t5
                  ori          sp, a0, -1890
                  blt          s10, s9, 1753f
                  slli         tp, zero, 20
1747:             ori          s0, t5, -275
                  slli         t2, s8, 29
1749:             xor          s10, ra, s6
                  sll          t3, a5, t5
                  addi         s1, a6, -1384
                  bgeu         s1, a4, 1767f
1753:             srl          t0, t3, s5
                  andi         t3, t0, 236
                  srai         t0, t2, 6
                  srai         t4, t2, 12
                  beq          t4, t1, 1760f
                  and          sp, tp, sp
                  auipc        a5, 110708
1760:             bltu         ra, a1, 1776f
                  bge          gp, s5, 1777f
                  slli         zero, a7, 17
                  addi         s0, a3, 899
                  beq          t5, t3, 1773f
                  slli         tp, s7, 7
                  bltu         s10, t6, 1773f
1767:             xori         a5, s1, 1296
                  blt          a2, zero, 1787f
                  addi         s10, t0, -971
                  bge          s0, s0, 1785f
                  lui          s2, 464046
                  sll          s9, s7, a2
1773:             bge          s1, tp, 1781f
                  slt          t2, gp, a0
                  xori         sp, s6, 998
1776:             add          s5, t1, t2
1777:             slti         s6, a5, -390
                  srai         t1, a3, 7
                  srai         a5, a7, 31
                  add          t0, a4, t0
1781:             nop
                  sltiu        s1, s6, 921
                  bge          a4, a6, 1788f
                  ori          s7, s5, -1313
1785:             srl          t0, t6, t1
                  sltu         s2, s6, a1
1787:             sltu         t1, a6, s2
1788:             auipc        a6, 389933
                  sra          a7, s11, t0
                  blt          s0, t5, 1791f
1791:             srai         t5, s5, 23
                  ori          s4, s10, -1042
                  and          a6, s11, t0
                  lui          gp, 988380
                  bne          t3, gp, 1800f
                  slt          a5, s11, a5
                  slti         s1, s7, 964
                  bltu         s5, s8, 1803f
                  sltu         s11, a3, tp
1800:             slt          s11, s6, s0
                  or           a6, a5, s9
                  or           ra, a0, s11
1803:             ori          a4, t0, -47
                  sll          tp, a4, a1
                  add          s2, sp, a4
                  auipc        zero, 576434
                  slti         a0, a5, -1606
                  xori         a3, t0, 1976
                  bne          t5, s0, 1816f
                  blt          a4, a1, 1814f
                  beq          a3, s8, 1818f
                  slti         s8, s3, 185
                  and          tp, s10, s8
1814:             auipc        s5, 381522
                  sub          zero, a0, t4
1816:             srai         s8, s4, 0
                  or           t3, a7, zero
1818:             bne          a6, a7, 1820f
                  nop
1820:             slt          tp, zero, t0
                  sra          s9, a0, s7
                  sltu         t5, tp, a6
                  add          a5, tp, a4
                  bne          t0, a1, 1831f
                  slli         a7, sp, 27
                  slt          tp, s11, zero
                  blt          gp, s7, 1838f
                  auipc        gp, 212869
sub_5_23:         jal          t0, 19f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          t1, 5f
3:                jal          t1, 14f
4:                jal          ra, 3b
5:                jal          a3, 8f
6:                jal          ra, 2b
7:                jal          t1, 18f
8:                jal          ra, 4b
9:                jal          ra, 12f
10:               jal          t1, 0b
11:               jal          ra, 6b
12:               jal          ra, 21f
13:               jal          t0, 17f
14:               jal          t3, 7b
15:               jal          ra, 9b
16:               jal          s9, 15b
17:               jal          t1, 20f
18:               jal          gp, 13b
19:               jal          ra, 10b
20:               jal          ra, 1b
21:               and          s11, s10, tp
                  blt          a7, s2, 1839f
                  slti         a7, t6, -209
1831:             sltu         t3, s7, t0
                  auipc        s2, 622235
                  slt          ra, s9, zero
                  srai         a7, a3, 29
                  srl          a5, t6, s9
                  bge          a3, s2, 1845f
                  addi         s5, a5, -1988
1838:             srl          t5, zero, s11
1839:             bne          t2, s1, 1844f
                  bgeu         s2, s11, 1844f
                  bgeu         s6, a4, 1843f
                  sra          t5, s8, s5
1843:             auipc        t5, 154331
1844:             lui          t1, 189851
1845:             srli         s2, s2, 29
                  beq          t3, a2, 1854f
                  or           gp, s7, a7
                  sltiu        s9, s8, -1293
                  xor          t2, a4, tp
                  slti         s0, t5, -1017
                  bgeu         t0, s10, 1856f
                  sra          a0, s2, s8
                  auipc        a0, 833613
1854:             and          s11, a3, s2
                  slli         a4, t2, 9
1856:             bne          s8, t1, 1876f
                  bgeu         s11, t0, 1860f
                  add          s6, t2, a3
                  sll          s2, ra, s2
1860:             addi         t0, a6, 571
                  bne          s7, s11, 1870f
                  lui          t2, 197520
                  bne          tp, a0, 1879f
                  sll          t1, gp, a2
                  ori          a0, ra, 1254
                  sltu         s10, tp, a2
                  or           s4, t6, a3
                  srli         a0, a3, 31
                  xori         t1, tp, 1951
1870:             bgeu         s9, s10, 1889f
                  srli         t1, t4, 1
                  xori         a3, zero, -453
                  srl          a3, t3, gp
                  beq          a3, t1, 1893f
                  sub          ra, gp, s10
1876:             xor          gp, a1, a1
                  bne          t2, tp, 1882f
                  lui          s0, 1033051
1879:             slt          a4, s9, t2
                  sub          zero, gp, t3
                  ori          s10, a3, -636
1882:             ori          a3, t6, 1271
                  sra          s10, s11, s1
                  sll          a0, a1, s0
                  sll          a3, ra, s11
                  sltu         s9, a5, s4
                  bge          t6, a7, 1895f
                  bne          a0, s4, 1893f
1889:             and          s1, sp, t4
                  auipc        tp, 62183
                  sltu         s7, a3, a0
                  xori         a6, s6, -193
1893:             srai         ra, s0, 1
                  ori          a4, s7, 2046
1895:             xori         ra, s3, 864
                  bgeu         a0, t3, 1907f
                  addi         s1, a0, -1384
                  nop
                  slli         s6, t5, 8
                  srli         t1, tp, 27
                  bne          s6, s9, 1917f
                  xor          s8, t0, s10
                  lui          t1, 587261
                  xori         a7, t5, 1666
                  sub          a0, s6, a3
                  srl          s0, t5, s0
1907:             sll          tp, ra, t5
                  sra          sp, t2, t2
                  bltu         s10, a1, 1916f
                  or           a4, a3, s8
                  sra          s0, s9, t1
                  xori         tp, s11, -58
                  nop
                  slli         s1, sp, 24
                  slti         a5, s10, -1670
1916:             sra          t0, s1, a6
1917:             bne          s9, a7, 1924f
                  ori          sp, a6, -84
                  auipc        a4, 668611
                  bltu         gp, gp, 1925f
                  nop
                  beq          ra, s6, 1929f
                  slli         a7, s4, 27
1924:             sltu         zero, s9, s8
1925:             sll          gp, a5, t5
                  bge          s3, a1, 1927f
1927:             srli         t4, s6, 27
                  bltu         a4, a5, 1935f
1929:             slt          s1, s9, s10
                  sra          a5, a5, t6
                  srli         a6, s0, 9
                  slt          s0, s3, a1
                  blt          s9, s7, 1948f
                  bltu         a3, a7, 1935f
1935:             sltu         s6, sp, t6
                  addi         t1, s1, 1750
                  and          sp, a2, t6
                  sra          t5, s8, s5
                  and          s7, a7, s7
                  sll          a3, a0, gp
                  sltu         s5, gp, ra
                  bge          sp, s9, 1961f
                  auipc        s1, 464088
                  xori         t3, s1, 589
                  sltu         a0, t3, s1
                  beq          s11, s5, 1948f
                  srai         s8, t4, 10
1948:             sll          t3, a7, s2
                  lui          s3, 655712
                  srai         s4, t5, 27
                  srl          t2, s6, a3
                  xori         s0, a0, 403
                  addi         s6, zero, 59
                  xori         s9, sp, -1721
                  bge          s9, s11, 1964f
                  ori          s4, t0, -76
                  sra          s9, a5, s5
                  ori          s7, t6, 1745
                  and          a7, s11, t3
                  auipc        a0, 876607
1961:             sll          s3, t3, s5
                  bne          t1, a1, 1967f
                  andi         s9, a5, -1375
1964:             sra          s0, a5, a5
                  bgeu         s3, s2, 1975f
                  slt          a5, t1, s5
1967:             beq          a0, s4, 1982f
                  beq          a0, a4, 1987f
                  slli         t1, s5, 16
                  beq          t4, t5, 1975f
                  andi         gp, a0, -1602
                  slt          s3, tp, a1
                  lui          a3, 728534
                  srli         a0, sp, 27
1975:             ori          s3, s10, -210
                  xori         t4, s1, -919
                  lui          t4, 343186
                  srli         a0, t3, 1
                  beq          a0, tp, 1986f
                  slti         s10, a4, -792
                  and          ra, a5, s11
1982:             xor          s9, a4, a1
                  auipc        a7, 186914
                  sll          s2, s2, a6
                  sra          gp, s10, a1
1986:             srai         s11, t0, 6
1987:             slt          gp, t4, t3
                  slt          a6, s9, zero
                  add          a6, a7, s7
                  add          t5, s5, t1
                  addi         s1, s2, 521
                  srli         t3, a5, 20
                  blt          s0, s2, 1998f
                  bgeu         t3, a2, 1996f
                  andi         t1, a4, -1617
1996:             bge          s5, sp, 2015f
                  addi         gp, t3, 730
1998:             srai         s7, s8, 19
                  sltu         s8, s2, s4
                  bgeu         s7, sp, 2005f
                  lui          t4, 359216
                  srai         s10, s8, 28
                  ori          a3, s10, -368
                  sltiu        t2, a1, 1959
2005:             and          s10, a7, s9
                  bgeu         s5, s11, 2021f
                  beq          t2, s10, 2014f
                  bltu         t6, ra, 2009f
2009:             and          t2, a7, gp
                  slti         s7, t2, 481
                  addi         s8, t5, 543
                  andi         t4, a1, 1235
                  srai         a3, t6, 25
2014:             andi         s6, t0, 493
2015:             slti         s4, a7, -1585
                  sll          t5, ra, s8
                  add          sp, a2, t0
                  or           s8, a0, s7
                  sltiu        t2, a1, 352
                  slti         s4, t0, -1765
2021:             auipc        a3, 702418
                  srli         t3, zero, 6
                  xor          t4, a4, s11
                  add          sp, s5, a7
                  bne          a1, zero, 2032f
                  ori          t4, s4, -1118
                  xor          s3, tp, s3
                  addi         s1, s2, -1458
                  slt          a4, s9, s4
                  xor          tp, a7, a0
                  sll          a4, s5, t5
2032:             bge          a5, ra, 2036f
                  sll          s10, s8, t5
                  sll          s7, t6, gp
                  bltu         a1, t4, 2044f
2036:             sub          s10, s1, s1
                  and          s6, t1, t3
                  auipc        t4, 528260
                  auipc        zero, 555902
                  sltu         sp, s3, t0
                  sra          s6, a5, a4
                  lui          t5, 763467
                  sltu         tp, s8, s6
2044:             nop
                  slt          t2, a0, gp
                  sltiu        zero, s8, 1570
                  bgeu         t6, sp, 2049f
                  slti         s0, a5, -810
2049:             srl          a6, t3, a7
                  srai         a5, a7, 18
                  sra          tp, a3, s2
                  bgeu         a0, s8, 2059f
                  xori         ra, s0, -1539
                  sra          a0, gp, ra
                  sub          s6, tp, t5
                  beq          s9, t2, 2072f
                  ori          s0, a1, -1369
                  slli         a4, sp, 0
2059:             addi         a5, s8, -109
                  nop
                  srli         sp, a2, 18
                  slt          a3, t6, a2
                  nop
                  xor          t5, s5, s1
                  nop
                  slt          s9, s8, s3
                  sll          a0, s0, t2
                  lui          ra, 499858
                  auipc        s1, 916215
                  and          s6, s8, t6
                  srl          t0, s6, s10
2072:             nop
                  nop
                  bltu         a7, s1, 2079f
                  srai         gp, s11, 3
                  and          t3, s7, s0
                  slti         t2, a4, -1310
                  slti         t2, zero, -986
2079:             xor          s6, t4, s2
                  bne          s2, s3, 2099f
                  sub          s3, t5, s0
                  sltiu        gp, t2, 776
                  bltu         a0, t2, 2094f
                  addi         s9, a6, -183
                  sll          a0, a4, t4
                  bge          s5, s7, 2102f
                  bltu         a0, gp, 2088f
2088:             beq          s6, tp, 2097f
                  andi         gp, a4, 1447
                  sltu         t4, t5, s1
                  xor          s1, s7, s7
                  bltu         s2, a0, 2100f
                  andi         s0, t6, -845
2094:             sltiu        t5, a4, -555
                  sltiu        a6, t6, 1104
                  sub          s2, s9, s8
2097:             sra          sp, a3, a2
                  srai         sp, a4, 14
2099:             slt          a4, t6, t0
2100:             add          gp, tp, a7
                  add          s3, t6, s10
2102:             andi         a5, s5, -1231
                  and          s4, t5, s6
                  slti         tp, t4, 108
                  beq          a2, s6, 2124f
                  andi         zero, s5, 343
                  slt          t0, t1, s7
                  add          s7, s6, s0
                  auipc        s10, 591517
                  addi         a7, a5, -1312
                  and          s7, zero, s9
                  sll          s3, a3, a6
                  and          t2, t2, s3
                  srai         a3, s6, 25
                  slti         t2, s8, -531
                  srai         s5, sp, 7
                  srai         a7, a2, 12
                  add          s7, s7, s6
                  xor          s4, a5, zero
                  sltu         s0, s9, s3
                  beq          s7, t6, 2140f
                  lui          s2, 108786
                  auipc        a3, 655145
2124:             sltiu        gp, a3, -1140
                  nop
                  slti         tp, s5, 116
                  bge          t0, zero, 2147f
                  slli         tp, s11, 3
                  blt          s4, s4, 2144f
                  nop
                  nop
                  addi         s8, s0, 759
                  sub          s2, a2, s4
                  add          t4, a0, s2
                  auipc        a3, 834025
                  srai         s2, s11, 0
                  sra          s7, a6, sp
                  bne          zero, a2, 2148f
                  sra          s11, a0, t2
2140:             sra          s9, s1, t4
                  sltiu        s7, tp, 1546
                  and          t5, t1, t3
                  blt          t4, t0, 2151f
2144:             lui          t5, 630830
                  beq          s3, sp, 2148f
                  xor          s3, sp, a5
2147:             sltiu        s2, t2, -466
2148:             sll          sp, s4, t3
                  ori          s8, a3, -1984
                  beq          a0, t3, 2155f
2151:             addi         a0, a2, -696
                  add          a4, a3, s10
                  andi         a3, sp, -1800
                  and          tp, s3, a7
2155:             auipc        s8, 788251
                  sltiu        a6, t0, 1147
                  bne          ra, s10, 2162f
                  auipc        s6, 608422
                  andi         t4, ra, 1067
                  xor          s8, s11, s8
                  and          t0, a2, s1
2162:             sltu         s5, s6, s3
                  sll          ra, s1, a5
                  xori         s4, s11, -468
                  auipc        a5, 757799
                  bge          t4, s6, 2173f
                  bge          a0, a1, 2174f
                  xor          t1, a4, s5
                  ori          a5, a3, 502
                  slli         s0, s4, 19
                  srai         sp, t5, 21
                  and          s4, t2, sp
2173:             add          s2, s10, t3
2174:             slt          s4, sp, tp
                  blt          s4, t1, 2194f
                  slt          t1, s6, s11
                  auipc        t5, 850700
                  and          s10, s7, s5
                  srai         gp, t0, 22
                  or           s3, s11, t2
                  bltu         t2, a7, 2186f
                  bne          s6, ra, 2201f
                  slt          s9, ra, s3
                  bgeu         t1, a7, 2193f
                  nop
2186:             srai         s1, t1, 2
                  bge          a0, ra, 2190f
                  xori         a6, s7, 1564
                  bgeu         a0, a2, 2205f
2190:             bgeu         t5, s3, 2198f
                  bltu         t3, gp, 2196f
                  beq          a3, a3, 2212f
2193:             lui          s4, 344197
2194:             srli         s5, ra, 4
                  sll          t0, gp, s6
2196:             bgeu         a2, t2, 2212f
                  sub          tp, s10, s1
2198:             xori         a5, a2, -770
                  srl          a6, s8, s7
                  slli         a5, tp, 22
2201:             add          t1, t0, s8
                  sub          a3, sp, t6
                  addi         t0, s6, 118
                  bge          s5, a1, 2219f
2205:             beq          a2, a6, 2215f
                  srl          a0, a0, gp
                  and          s10, zero, s4
                  bltu         t6, s5, 2215f
                  slti         a7, sp, -1060
                  srai         a3, a3, 20
                  bgeu         a2, ra, 2216f
2212:             sltu         a7, s8, t4
                  sub          s1, s3, s0
                  and          s3, a2, a1
2215:             srli         ra, s1, 2
2216:             ori          s1, t4, 612
                  add          gp, a0, s0
                  add          s11, a6, t1
2219:             sll          s10, gp, a7
                  andi         a7, s11, -1182
                  bge          a0, s10, 2236f
                  lui          s5, 601481
                  srai         s8, s11, 17
                  xori         t0, a5, -2022
                  xor          s8, s8, tp
                  bgeu         t6, s9, 2227f
2227:             srl          t5, s8, gp
                  bne          zero, s2, 2247f
                  slli         s1, gp, 9
                  slti         s2, t2, -1900
sub_5_30:         jal          t0, 1f
0:                jal          t1, 24f
1:                jal          a3, 7f
2:                jal          ra, 3f
3:                jal          ra, 19f
4:                jal          ra, 12f
5:                jal          t1, 4b
6:                jal          a0, 22f
7:                jal          ra, 18f
8:                jal          a0, 11f
9:                jal          ra, 8b
10:               jal          ra, 25f
11:               jal          a6, 17f
12:               jal          s9, 21f
13:               jal          ra, 9b
14:               jal          t4, 2b
15:               jal          ra, 6b
16:               jal          ra, 0b
17:               jal          sp, 20f
18:               jal          a6, 23f
19:               jal          ra, 5b
20:               jal          ra, 14b
21:               jal          ra, 10b
22:               jal          ra, 13b
23:               jal          ra, 16b
24:               jal          ra, 15b
25:               sra          gp, s9, s5
                  andi         s4, s3, 744
                  addi         s11, ra, -469
                  xori         t3, t4, -1285
                  bltu         t3, s3, 2242f
                  addi         s1, t2, 339
2236:             bltu         s6, s10, 2240f
                  xor          s6, a3, a4
                  bltu         a6, a7, 2249f
                  sra          a0, gp, a5
2240:             slti         s2, s3, -357
                  auipc        a4, 1018954
2242:             and          a6, t3, s11
                  sub          a7, a1, s8
                  sltiu        a3, a2, 1467
                  srli         t1, zero, 31
                  blt          s7, s3, 2247f
2247:             bltu         s9, s0, 2249f
                  blt          tp, a1, 2253f
2249:             or           a3, s3, s10
                  sltu         ra, a6, a5
                  andi         s4, t2, -139
                  beq          s1, s3, 2271f
2253:             sra          a3, a7, s11
                  xori         a7, t2, -24
                  sltiu        ra, s9, -207
                  addi         s8, s5, 435
                  slt          zero, zero, zero
                  beq          s6, s9, 2260f
                  slti         tp, sp, 1857
2260:             nop
                  add          sp, s5, s0
                  bge          a2, a6, 2269f
                  srai         a7, s4, 4
                  auipc        t4, 1013449
                  slt          sp, t5, t5
                  beq          s6, s7, 2275f
                  or           s1, a0, t4
                  bge          ra, s4, 2287f
2269:             xor          s6, gp, t0
                  andi         s6, a5, 1746
2271:             bne          a3, s3, 2291f
                  sltu         t4, t1, a4
                  bne          a0, a0, 2288f
                  sub          a3, s10, s10
2275:             lui          a4, 318742
                  ori          t1, s10, -596
                  bne          ra, tp, 2284f
                  xor          a0, ra, a3
                  or           a3, s5, t6
                  lui          t0, 931327
                  addi         a7, sp, -1240
                  xor          s9, t2, t1
                  add          s8, a6, s5
2284:             xor          s4, s2, zero
                  add          gp, s4, s6
                  sltiu        a0, s0, -335
2287:             sub          s10, s3, t4
2288:             sltiu        t1, a0, -1682
                  or           s6, t4, t6
                  or           a6, s3, t6
2291:             sltu         zero, gp, a2
                  xor          tp, t3, tp
                  xor          ra, a0, t2
                  and          s6, a4, t4
                  sll          t5, a3, t3
                  sll          t5, t6, tp
                  bne          t0, s1, 2316f
                  ori          s1, s5, 1169
                  addi         sp, s8, -1155
                  xor          a7, a3, t1
                  srai         tp, tp, 19
                  bne          a4, s4, 2309f
                  srl          s3, s11, s1
                  sltiu        a5, s9, 1193
                  beq          s9, s6, 2310f
                  ori          zero, s10, 74
                  bltu         t4, s6, 2311f
                  sltu         s2, zero, s5
2309:             slli         s1, s5, 15
2310:             sltu         gp, a4, zero
2311:             or           s11, sp, s9
                  sll          zero, t6, t4
                  xori         s3, a2, 651
                  sub          s4, s1, s1
                  auipc        t0, 122026
2316:             slli         s0, t6, 10
                  bge          s6, t5, 2322f
                  srai         a4, t3, 25
                  add          t0, s6, t0
                  sub          ra, a6, t4
                  bgeu         s8, t3, 2329f
2322:             blt          sp, a3, 2337f
                  srai         a5, a4, 28
                  ori          a7, s7, -1515
                  xor          a7, s8, t1
                  lui          a7, 470648
                  sltiu        a6, s6, 1245
                  addi         s3, s5, -124
2329:             sltiu        t1, t0, -1742
                  or           s1, s0, s10
                  bltu         s2, s9, 2340f
                  bne          s0, s1, 2340f
                  andi         a3, s0, -1827
                  sra          t1, s5, a6
                  srli         t3, s6, 29
                  addi         s8, a0, -255
2337:             sll          tp, s0, t5
                  sltu         t0, s3, zero
                  add          s9, a5, ra
2340:             slt          s9, t0, t0
                  xori         ra, s10, -723
                  and          s0, a4, a7
                  slti         s11, t4, 1253
                  srl          a0, t0, a3
                  slt          zero, s7, s11
                  xor          s7, s7, tp
                  lui          s0, 845314
                  xor          a4, s0, a7
                  auipc        s8, 408753
                  bgeu         t4, s0, 2351f
2351:             sra          t5, s2, s7
                  srl          sp, s1, s1
                  addi         tp, s10, 1128
                  bgeu         a1, s9, 2355f
2355:             and          sp, s3, s7
                  auipc        s4, 890088
                  sltiu        s7, s3, 563
                  beq          t6, s4, 2377f
                  bgeu         s0, t0, 2378f
                  nop
                  sll          s4, t1, a4
                  slt          s1, a6, t4
                  and          s0, t0, gp
                  and          s7, s1, s8
                  srai         s5, t6, 2
                  srli         t1, t1, 20
                  srli         a0, t2, 17
                  beq          s0, a2, 2378f
                  add          s7, a4, t0
                  lui          s9, 152866
                  addi         s5, s0, 1876
                  slt          a7, s11, t5
                  bge          a7, s11, 2380f
                  bgeu         a2, a7, 2381f
                  bltu         a1, s4, 2380f
                  sltu         sp, s9, s9
2377:             srl          s8, sp, t1
2378:             slli         a3, a3, 15
                  beq          t2, s9, 2381f
2380:             add          tp, a4, a3
2381:             auipc        s0, 510873
                  xor          s8, s2, s9
                  slti         t4, s6, -1899
                  bltu         tp, s6, 2389f
                  sra          t1, t6, s9
                  slli         tp, a0, 26
                  beq          a3, a1, 2403f
                  auipc        t2, 602329
2389:             blt          s1, t2, 2394f
                  ori          s4, a4, -550
                  bltu         s2, t6, 2402f
                  sra          sp, zero, s1
                  add          s11, s10, s5
2394:             lui          s0, 889052
                  sltiu        s8, sp, 1956
                  blt          sp, s9, 2398f
                  add          s0, s7, a4
2398:             blt          t1, s11, 2414f
                  auipc        a4, 800192
                  sra          s5, s9, s1
sub_5_35:         jal          t0, 9f
0:                jal          t1, 25f
1:                jal          s4, 17f
2:                jal          ra, 14f
3:                jal          t1, 18f
4:                jal          t2, 16f
5:                jal          ra, 20f
6:                jal          ra, 13f
7:                jal          gp, 1b
8:                jal          gp, 15f
9:                jal          ra, 11f
10:               jal          t1, 4b
11:               jal          s4, 22f
12:               jal          t1, 8b
13:               jal          s7, 24f
14:               jal          sp, 3b
15:               jal          t1, 10b
16:               jal          t1, 2b
17:               jal          ra, 21f
18:               jal          ra, 23f
19:               jal          ra, 7b
20:               jal          s10, 12b
21:               jal          ra, 6b
22:               jal          s9, 5b
23:               jal          t1, 19b
24:               jal          ra, 0b
25:               ori          a3, s9, 1315
                  slt          t5, s9, s3
2402:             sltiu        s5, a2, 478
2403:             sltiu        ra, s5, 1128
                  bltu         s7, s3, 2407f
                  sub          s4, s0, a3
                  sltiu        a5, s5, 1639
2407:             bge          a3, s5, 2416f
                  slti         s10, s5, 1300
                  srai         s8, t5, 13
                  or           t1, sp, s7
                  sll          s4, a2, zero
                  addi         s8, s5, -628
                  sra          t3, a0, a3
2414:             slli         s10, a3, 17
                  srl          a7, t6, gp
2416:             xor          s10, s6, t6
                  slti         t1, t5, 616
                  auipc        s6, 173564
                  nop
                  sltu         s5, s5, t1
                  slli         t3, a5, 20
                  slt          s8, s10, s2
                  and          tp, s6, zero
                  srai         a6, a3, 30
                  slt          sp, a4, zero
                  ori          sp, a7, -863
                  srai         a5, t0, 18
                  slti         a6, sp, 401
                  bge          s11, s6, 2433f
                  bgeu         s4, t4, 2441f
                  nop
                  nop
2433:             xor          t2, zero, s8
                  ori          a5, t3, 1754
                  bgeu         s3, t1, 2441f
                  sll          s6, s4, s7
                  xor          gp, a7, s5
                  ori          s9, a3, -1009
                  lui          a3, 595567
                  andi         sp, s1, 282
2441:             ori          t4, t5, -1687
                  addi         s4, a3, -974
                  lw           t0, 4(a2)
                  sub          s6, s8, s4
                  xor          t5, t2, s4
                  addi         a2, a2, 44
                  add          s1, t1, a7
3512:             addi x3, x5, 0
3512:             jalr x3, x3, 0
sub_4:            lui          s8, 796084
                  addi         a2, a2, -64
                  and          a0, t6, s7
                  xori         t2, gp, 1667
                  sub          sp, s0, s3
                  slti         s0, t2, -960
                  sw           t0, 4(a2)
                  ori          s5, s7, -544
                  xor          s6, ra, a2
                  slti         s5, s8, -1768
                  srli         s8, tp, 4
                  and          s2, s11, tp
                  or           tp, t3, s4
                  sra          s10, s5, a0
                  srai         s6, t3, 0
                  or           t5, t2, s8
                  srli         a7, s0, 20
                  xor          a4, s10, a7
                  bltu         zero, a6, sub_4_j6 #branch to jump instr
                  ori          s3, tp, -1250
sub_4_j6:         jal          t0, sub_5 #jump sub_4 -> sub_5
                  sltiu        s5, s8, -808
                  srli         s5, t6, 9
                  andi         a4, s3, -1612
                  slli         zero, t3, 2
                  beq          s3, s11, sub_4_j7 #branch to jump instr
                  slt          zero, tp, t0
                  slti         a6, s11, -568
sub_4_j7:         jal          t0, sub_5 #jump sub_4 -> sub_5
                  add          gp, s4, a1
                  bne          t2, s4, 19f
                  bge          s2, a1, 7f
                  beq          a4, a1, 12f
                  ori          gp, zero, -803
                  lui          s4, 278256
                  lui          gp, 25432
7:                slt          a4, s6, t6
                  bge          gp, s11, 26f
                  auipc        s1, 260804
                  auipc        s0, 330699
                  auipc        t2, 680666
12:               srl          s9, s7, a0
                  bgeu         sp, a4, 30f
                  bltu         a7, t2, 31f
                  and          a5, s0, ra
                  sltu         a3, s10, s7
                  xori         gp, a7, -957
                  slli         t4, t2, 4
19:               beq          t2, t3, 39f
                  add          gp, s0, s2
                  andi         a6, a0, -511
                  lui          a6, 70425
                  ori          zero, s1, 568
                  srli         s2, t3, 2
                  and          a7, s10, sp
26:               bltu         t2, t3, 30f
                  slt          a3, sp, a0
                  bge          s11, a3, 36f
                  beq          zero, zero, 31f
30:               auipc        a4, 58473
31:               add          s9, s8, s9
                  and          t0, sp, t0
                  srl          sp, ra, zero
                  sra          tp, ra, a3
                  or           s2, a6, t6
36:               bge          s4, a4, 40f
                  andi         t4, a0, 1672
                  bgeu         s7, t2, 40f
39:               slti         t4, s11, -450
40:               sltu         t2, gp, a1
                  slti         tp, s3, 1803
                  lw           t0, 4(a2)
                  nop
                  addi         a2, a2, 64
                  slti         t1, t3, -862
75:               addi x22, x5, 1
75:               jalr x22, x22, 0
sub_2:            bltu         t5, t2, sub_2_stack_p
                  and          a3, s6, t3
sub_2_stack_p:    addi         a2, a2, -28
                  xori         s2, s6, -1387
                  sw           t0, 4(a2)
                  ori          gp, s7, 731
                  srli         tp, a0, 5
                  add          s5, a4, sp
                  la           s3, sub_4
                  nop
                  addi         s3, s3, -568
                  sll          s9, s9, s10
                  bltu         s11, s3, sub_2_j4 #branch to jump instr
                  andi         t1, sp, -1543
                  sra          s8, a2, a7
                  and          t2, s8, s10
                  addi         a3, a4, 1728
                  srli         t1, s5, 10
sub_2_j4:         jalr         t0, s3, 568 #jump sub_2 -> sub_4
                  or           t1, s0, s0
                  xor          a4, a6, t3
                  srl          s11, t5, a3
                  slti         t4, t1, 1835
                  auipc        s3, 951294
                  sra          a7, s3, ra
                  sra          t1, t3, a3
                  and          t4, s11, a1
                  sltiu        gp, s2, 1575
                  sll          ra, a3, a7
sub_2_j5:         jal          t0, sub_3 #jump sub_2 -> sub_3
sub_2_2:          jal          t0, 4f
0:                jal          ra, 11f
1:                jal          t1, 2f
2:                jal          t2, 5f
3:                jal          ra, 17f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          t1, 14f
7:                jal          tp, 12f
8:                jal          ra, 21f
9:                jal          gp, 3b
10:               jal          ra, 19f
11:               jal          ra, 18f
12:               jal          gp, 20f
13:               jal          t1, 16f
14:               jal          ra, 13b
15:               jal          t1, 10b
16:               jal          ra, 9b
17:               jal          t1, 0b
18:               jal          s1, 1b
19:               jal          t1, 8b
20:               jal          s8, 15b
21:               srli         s1, a4, 22
sub_2_0:          jal          t0, 26f
0:                jal          t0, 4f
1:                jal          t1, 27f
2:                jal          ra, 12f
3:                jal          t1, 13f
4:                jal          t0, 6f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          ra, 15f
8:                jal          tp, 5b
9:                jal          a4, 0b
10:               jal          a7, 3b
11:               jal          t1, 23f
12:               jal          t1, 17f
13:               jal          s11, 16f
14:               jal          t1, 7b
15:               jal          ra, 21f
16:               jal          s0, 18f
17:               jal          ra, 25f
18:               jal          a6, 11b
19:               jal          ra, 24f
20:               jal          ra, 8b
21:               jal          ra, 2b
22:               jal          ra, 20b
23:               jal          ra, 14b
24:               jal          ra, 22b
25:               jal          t4, 19b
26:               jal          ra, 9b
27:               slt          t5, a3, t1
sub_2_1:          jal          t0, 1f
0:                jal          s9, 2f
1:                jal          tp, 24f
2:                jal          gp, 25f
3:                jal          t1, 29f
4:                jal          ra, 13f
5:                jal          t1, 21f
6:                jal          ra, 27f
7:                jal          t1, 28f
8:                jal          s8, 18f
9:                jal          ra, 10f
10:               jal          a5, 26f
11:               jal          ra, 9b
12:               jal          t3, 6b
13:               jal          ra, 8b
14:               jal          ra, 22f
15:               jal          t1, 12b
16:               jal          t1, 17f
17:               jal          t0, 0b
18:               jal          t1, 15b
19:               jal          t1, 16b
20:               jal          ra, 5b
21:               jal          ra, 7b
22:               jal          ra, 23f
23:               jal          a7, 11b
24:               jal          t1, 19b
25:               jal          t5, 3b
26:               jal          a7, 4b
27:               jal          t1, 20b
28:               jal          ra, 30f
29:               jal          ra, 14b
30:               or           a0, s5, a0
                  andi         sp, a3, -1328
                  auipc        t2, 928925
                  bne          a7, s0, 21f
                  ori          zero, t0, 1406
                  lui          a7, 661053
                  sra          a6, s11, ra
                  sra          gp, t1, t3
                  srl          s10, s3, a7
                  andi         a6, s3, -1211
                  andi         a3, sp, 1475
                  andi         s4, t2, 102
                  ori          s2, ra, 287
                  add          a4, s9, ra
                  xori         s8, a5, -1454
                  xor          a6, a0, s8
                  addi         s10, t1, 317
                  sub          s1, ra, tp
                  sll          t5, s5, t3
                  bne          s1, a1, 25f
                  bge          s7, t5, 34f
                  add          s4, zero, ra
21:               add          s10, s4, t1
                  xori         a0, s0, 1679
                  lui          sp, 1017374
                  auipc        s2, 6470
25:               sll          s5, s5, s6
                  srl          a5, s4, s11
                  bge          s9, s11, 28f
28:               bgeu         gp, a1, 30f
                  or           sp, s11, s8
30:               xori         s5, s0, -1527
                  lui          ra, 114409
                  sra          a6, s9, t6
                  sra          t0, s10, t1
34:               nop
                  auipc        s1, 812331
                  sra          s4, zero, t1
                  and          s11, s9, sp
                  sltu         zero, a6, tp
                  auipc        gp, 613760
                  beq          s0, a7, 55f
                  sra          s0, a7, tp
                  addi         a3, sp, -1090
                  srl          s3, tp, gp
                  sra          s9, a5, a0
                  sub          s11, s4, s8
                  lui          t1, 861269
                  xor          s11, s1, t4
                  ori          zero, s0, -529
                  srai         a0, t4, 30
                  bne          s9, a0, 66f
                  nop
                  sltu         t0, s5, s9
                  bge          a7, zero, 62f
                  lui          a4, 101453
55:               nop
                  addi         s4, t5, 1954
                  ori          t1, s2, 390
                  addi         t5, s10, -72
                  xor          tp, t4, a0
                  xori         sp, s5, -155
                  bne          s3, t1, 80f
62:               lui          t2, 1031053
                  sll          t2, ra, s9
                  addi         a0, s10, -1569
                  bge          t4, t4, 77f
66:               blt          a4, a5, 84f
                  auipc        s4, 235507
                  sltu         sp, s9, sp
                  slt          a4, t4, s1
                  nop
                  bgeu         s9, s7, 74f
                  srl          s9, gp, s7
                  bge          t3, t3, 91f
74:               auipc        s7, 214972
                  bge          s4, t4, 77f
                  sll          ra, a3, a7
77:               srl          s6, s3, s0
                  bge          a1, zero, 80f
                  sltu         a0, s8, s0
80:               and          s1, s1, a0
                  srl          gp, t5, s4
                  sub          a7, a5, a5
                  addi         t4, t1, -1481
84:               slli         s4, t6, 25
                  or           t3, a3, a6
                  and          sp, s11, s5
                  beq          sp, s6, 100f
                  bge          t3, a3, 107f
                  add          gp, a6, tp
                  srli         zero, s3, 31
91:               slti         t4, t3, 1951
                  ori          t0, s4, 1318
                  srli         s0, t2, 5
                  bgeu         t2, s11, 106f
                  auipc        gp, 610499
                  sra          t0, a2, s7
                  slti         s1, s6, 902
                  ori          ra, gp, 1372
                  bltu         s10, s3, 113f
100:              bge          s6, ra, 102f
                  bge          t6, t6, 113f
102:              addi         a4, tp, -1482
                  srli         s4, a4, 29
                  and          a0, s0, s11
                  and          t4, sp, tp
106:              sub          t1, tp, t3
107:              blt          s5, s9, 124f
                  srai         s11, a4, 29
                  sltu         s8, t6, t0
                  bltu         a4, t4, 114f
                  auipc        a7, 491888
                  add          s6, t4, s3
113:              srl          tp, s9, a5
114:              bne          s6, t2, 126f
                  bgeu         s0, sp, 130f
                  andi         s3, s3, -226
                  slli         s8, a3, 0
                  and          s11, a2, t2
                  bgeu         s1, tp, 131f
                  bgeu         t4, t2, 122f
                  bltu         s1, s8, 131f
122:              and          s3, a3, ra
                  sra          s2, a0, s10
124:              blt          s6, s2, 129f
                  sll          a5, s10, s0
126:              srai         ra, a6, 21
                  sll          t0, t2, s6
                  sltiu        a4, s2, -479
129:              xori         t4, s11, 1061
130:              bltu         s6, t5, 137f
131:              sll          a3, a1, a0
                  andi         s11, a7, -771
                  srli         t2, a7, 30
                  blt          s6, s9, 149f
                  xor          a6, a3, t3
                  and          t2, t2, a4
137:              and          s5, a5, t4
                  ori          s10, a6, 480
                  sltu         t3, t4, a1
                  slt          s3, sp, t0
                  lui          zero, 455714
                  slt          a7, a3, a3
                  bltu         t1, t3, 155f
                  srli         s9, gp, 13
                  slt          s6, t6, s3
                  slli         a5, a6, 22
                  nop
                  bge          a3, gp, 159f
149:              srli         a7, s4, 18
                  auipc        ra, 791901
                  slli         t3, a3, 1
                  sll          a3, s4, t4
                  slli         zero, s7, 27
                  srai         sp, a4, 3
155:              xori         s4, a5, 1442
                  blt          t4, s8, 159f
                  sltiu        s7, t4, -6
                  slti         zero, zero, 269
159:              xor          t4, gp, a7
                  auipc        t4, 517697
                  slti         s1, s8, -1040
                  andi         a4, s3, -589
                  sltu         t5, s11, ra
                  srli         s7, s5, 0
                  lw           t0, 4(a2)
                  ori          t5, s9, -522
                  addi         a2, a2, 28
                  lui          s6, 659780
283:              addi x20, x5, 0
283:              jalr x20, x20, 0
sub_3:            nop
                  sltu         a6, s0, a1
                  xori         a5, t5, -393
                  bge          s3, s5, sub_3_stack_p
                  addi         a6, s1, -1822
sub_3_stack_p:    addi         a2, a2, -48
                  nop
                  addi         s11, a1, 1241
                  lui          a7, 260579
                  andi         s5, s3, 1306
                  sw           t0, 4(a2)
                  lui          s5, 450391
sub_3_1:          jal          t0, 16f
0:                jal          t1, 14f
1:                jal          ra, 13f
2:                jal          t1, 26f
3:                jal          t1, 12f
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          ra, 23f
7:                jal          ra, 28f
8:                jal          ra, 3b
9:                jal          ra, 24f
10:               jal          s4, 27f
11:               jal          ra, 20f
12:               jal          ra, 18f
13:               jal          ra, 25f
14:               jal          gp, 6b
15:               jal          ra, 1b
16:               jal          ra, 8b
17:               jal          ra, 22f
18:               jal          t0, 15b
19:               jal          t4, 17b
20:               jal          a6, 19b
21:               jal          ra, 2b
22:               jal          ra, 0b
23:               jal          t1, 21b
24:               jal          s9, 7b
25:               jal          t1, 10b
26:               jal          ra, 4b
27:               jal          tp, 5b
28:               xori         t2, tp, -1612
                  beq          s6, a0, 1f
1:                blt          a0, s0, 14f
                  nop
                  slti         t2, s2, 1014
                  sltiu        t0, a4, -15
                  add          a4, s2, t6
                  bge          t4, t3, 17f
                  blt          a6, zero, 11f
                  bge          a3, a0, 17f
                  blt          sp, a2, 25f
                  andi         s11, t2, -1644
11:               slli         s2, tp, 18
                  xor          t3, zero, sp
                  slt          s8, a2, s3
14:               bltu         t5, s7, 33f
                  sra          t4, a6, t1
                  lui          s7, 906983
17:               srl          a3, s4, s3
                  beq          a2, t2, 20f
                  auipc        t5, 150814
20:               lui          s0, 157239
                  auipc        s5, 622145
                  add          a3, a6, s8
                  bge          a1, sp, 43f
                  and          s9, t4, a3
25:               xor          a7, t5, a5
                  sra          s5, s0, s2
                  srai         s2, t5, 0
                  slli         s0, ra, 0
                  bgeu         a7, s8, 41f
                  beq          s6, ra, 35f
                  sll          a3, zero, t4
                  addi         s7, gp, -1087
33:               bne          tp, zero, 49f
                  sub          a0, gp, t6
35:               bgeu         a2, gp, 49f
                  srl          t5, t2, a1
                  and          a5, t1, t4
                  beq          t2, a2, 55f
                  slli         s8, s8, 30
                  ori          sp, s4, -677
41:               sltu         s7, t3, s10
                  xor          zero, a0, a3
43:               ori          s6, s0, -1854
                  add          s10, a7, s10
                  bne          t1, zero, 46f
46:               nop
                  lui          s9, 343696
                  bge          t6, s3, 64f
49:               sltiu        a7, s6, 1017
                  ori          s1, s2, -562
                  xori         s5, tp, 973
sub_3_0:          jal          t0, 22f
0:                jal          t1, 12f
1:                jal          ra, 7f
2:                jal          ra, 20f
3:                jal          ra, 14f
4:                jal          ra, 18f
5:                jal          ra, 26f
6:                jal          ra, 16f
7:                jal          ra, 24f
8:                jal          s11, 25f
9:                jal          s9, 19f
10:               jal          ra, 15f
11:               jal          t1, 1b
12:               jal          ra, 13f
13:               jal          t4, 5b
14:               jal          tp, 0b
15:               jal          ra, 23f
16:               jal          ra, 4b
17:               jal          t0, 9b
18:               jal          ra, 10b
19:               jal          sp, 11b
20:               jal          tp, 8b
21:               jal          s4, 6b
22:               jal          s7, 2b
23:               jal          t1, 17b
24:               jal          gp, 3b
25:               jal          ra, 21b
26:               or           s9, a1, a0
                  auipc        s3, 348628
                  blt          s8, s0, 71f
                  bne          zero, ra, 60f
55:               sll          s5, a5, s8
                  slli         s2, s2, 20
                  slt          s2, s2, t2
                  slt          t0, a4, s4
                  beq          s4, s0, 73f
60:               xor          a6, s9, a5
                  slt          a5, gp, t4
                  sltiu        s4, tp, -1144
                  nop
64:               bgeu         t3, t3, 73f
                  andi         sp, s10, -790
                  addi         t2, t5, 910
                  ori          s0, t4, 1917
                  srai         a0, t5, 14
                  slti         a6, t4, 789
                  sltu         s1, a0, a2
71:               bne          t5, s8, 76f
                  or           s2, t0, s3
73:               xori         s8, t6, 1962
                  sra          s6, s0, s5
                  bltu         sp, a3, 91f
76:               andi         s0, s9, 508
                  slt          t1, a6, gp
                  sub          s5, ra, a3
                  and          s11, a7, a7
                  andi         t4, a6, -195
                  sll          a6, s2, s1
                  srl          zero, a3, t6
                  xori         sp, s11, -166
                  sub          ra, t6, t4
                  slt          a3, a2, t1
                  add          t0, a1, a5
                  srl          s11, a4, s5
                  blt          s1, s3, 104f
                  beq          s4, t2, 104f
                  bge          zero, a3, 104f
91:               or           s4, t4, t2
                  bge          a7, a0, 99f
                  sltu         a5, s4, s1
                  sub          s1, t5, s2
                  bge          s11, t3, 104f
                  ori          t2, zero, -1723
                  sltiu        t1, a3, 1499
                  slli         a5, s1, 15
99:               sltiu        a7, tp, 240
                  sub          s5, s7, s6
                  slti         s2, gp, -224
                  srli         tp, s0, 0
                  bge          a6, gp, 104f
104:              srli         t2, t3, 4
                  addi         a4, a0, 1997
                  ori          s8, t1, -1260
                  lw           t0, 4(a2)
                  addi         a2, a2, 48
                  nop
180:              addi x26, x5, 1
180:              jalr x26, x26, 0
sub_1:            or           s9, a0, a2
                  addi         a3, s6, 1114
                  addi         a2, a2, -44
                  sltiu        s3, tp, 64
                  lui          s9, 584402
                  and          t5, a1, s10
                  sw           t0, 4(a2)
                  slli         a5, ra, 16
                  sub          s10, s0, a4
                  ori          a5, s2, -1017
                  sltiu        s10, t6, -1125
                  la           a7, sub_2
                  and          t5, a0, t5
                  addi         a7, a7, 643
                  lui          ra, 786132
                  add          t2, t2, s5
                  xori         s7, t1, -1731
sub_1_j2:         jalr         t0, a7, -642 #jump sub_1 -> sub_2
                  slt          s0, a4, a1
                  la           t5, sub_2
                  addi         t5, t5, 342
                  or           t3, a5, tp
                  add          s11, zero, a3
                  ori          s6, a7, -40
                  bge          a4, s8, sub_1_j3 #branch to jump instr
                  add          s9, s3, a2
sub_1_j3:         jalr         t0, t5, -341 #jump sub_1 -> sub_2
sub_1_0:          jal          t0, 2f
0:                jal          gp, 9f
1:                jal          t0, 6f
2:                jal          ra, 1b
3:                jal          t1, 10f
4:                jal          s8, 18f
5:                jal          ra, 12f
6:                jal          t1, 14f
7:                jal          ra, 11f
8:                jal          t1, 7b
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          a7, 13f
12:               jal          t1, 4b
13:               jal          t1, 17f
14:               jal          t4, 3b
15:               jal          s6, 0b
16:               jal          t0, 19f
17:               jal          s4, 15b
18:               jal          t1, 16b
19:               auipc        s10, 620134
sub_1_2:          jal          t0, 0f
0:                jal          t1, 1f
1:                jal          ra, 3f
2:                jal          a4, 11f
3:                jal          gp, 12f
4:                jal          ra, 10f
5:                jal          ra, 6f
6:                jal          s8, 2b
7:                jal          t1, 5b
8:                jal          s7, 7b
9:                jal          t1, 13f
10:               jal          t1, 8b
11:               jal          ra, 9b
12:               jal          t0, 4b
13:               jal          ra, 14f
14:               sll          a0, a3, s10
sub_1_1:          jal          t0, 5f
0:                jal          s8, 8f
1:                jal          ra, 7f
2:                jal          s1, 9f
3:                jal          a4, 11f
4:                jal          ra, 19f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          t1, 6b
8:                jal          t4, 13f
9:                jal          ra, 12f
10:               jal          t1, 2b
11:               jal          t0, 17f
12:               jal          t1, 23f
13:               jal          ra, 24f
14:               jal          t0, 10b
15:               jal          ra, 20f
16:               jal          s8, 0b
17:               jal          ra, 18f
18:               jal          t1, 15b
19:               jal          ra, 3b
20:               jal          s11, 21f
21:               jal          ra, 14b
22:               jal          t1, 16b
23:               jal          ra, 22b
24:               sltiu        a5, s11, 400
                  sub          sp, s7, a1
                  or           t5, ra, a1
                  srai         s5, gp, 21
                  and          s8, a4, s8
                  xori         s0, t3, 1041
                  sltiu        s1, a2, 1197
                  sltiu        t4, gp, -1876
                  slt          s9, t6, a0
                  xor          ra, s11, s0
                  bgeu         s1, a4, 26f
                  andi         s8, s0, -929
                  xor          a6, s1, t0
                  bne          s2, a3, 21f
                  ori          t1, t4, -771
                  and          sp, gp, s8
                  and          t3, t3, s2
                  and          t0, a3, tp
                  beq          t2, s1, 35f
                  sltu         t2, t0, t1
                  xor          t3, t6, t6
                  bltu         zero, s10, 24f
21:               slt          tp, s0, t4
                  sll          s1, zero, s9
                  or           s9, a6, a3
24:               sub          ra, t3, sp
                  bgeu         s7, a1, 32f
26:               bltu         s0, a0, 41f
                  blt          t6, t1, 29f
                  bltu         t3, s9, 33f
29:               blt          t1, s3, 43f
                  andi         ra, a4, -1158
                  slt          s7, a5, zero
32:               sltiu        a4, tp, 628
33:               srli         a0, a7, 19
                  addi         t1, s10, -1276
35:               slti         s2, a4, 1073
                  sltu         sp, t5, a6
                  add          s10, a1, s0
                  and          t2, ra, s4
                  beq          s6, tp, 48f
                  srli         s1, s11, 27
41:               bgeu         s3, s0, 50f
                  slt          zero, a6, s11
43:               slt          s10, t3, a4
                  bge          s2, t3, 53f
                  add          a5, s2, a4
                  xor          s4, ra, zero
                  sltu         s1, a7, s7
48:               blt          a5, a6, 66f
                  bltu         a2, t1, 53f
50:               bgeu         t5, s4, 56f
                  nop
                  beq          a5, gp, 55f
53:               srai         s4, s1, 12
                  auipc        a4, 316583
55:               nop
56:               sltiu        sp, a4, -1072
                  ori          t3, a4, -1601
                  or           s4, sp, s1
                  srl          s5, s1, s1
                  bgeu         t0, a2, 80f
                  sll          t4, s8, t3
                  slt          s0, s9, t2
                  srli         t3, s5, 8
                  blt          zero, t4, 66f
                  bge          s1, s8, 67f
66:               sra          a0, s11, a6
67:               slt          s3, t6, s3
                  srl          s5, s6, tp
                  bgeu         s2, a6, 87f
                  sltu         t0, a4, tp
                  sltiu        s7, a2, 79
                  sltu         a6, a5, a4
                  slli         a7, a2, 27
                  or           s6, ra, t6
                  beq          t2, t0, 77f
                  nop
77:               add          a5, s8, s8
                  or           tp, s5, s4
                  slli         s8, a0, 10
80:               xori         t1, t2, -1443
                  auipc        t3, 270601
                  addi         a3, t0, 1233
                  slli         t5, s7, 3
                  srl          t4, s1, sp
                  bltu         s5, a4, 94f
                  sltiu        s3, s11, 162
87:               beq          t6, a1, 91f
                  or           a6, s9, s3
                  bgeu         s8, gp, 100f
                  bge          zero, ra, 97f
91:               ori          t0, a7, -116
                  andi         a0, sp, -925
                  bge          s8, t5, 110f
94:               ori          s10, t1, -1836
                  andi         ra, s1, 1141
                  nop
97:               nop
                  auipc        s4, 506117
                  slt          s8, t3, sp
100:              or           zero, s2, s6
                  addi         sp, gp, 510
                  ori          t2, gp, -1871
                  lui          tp, 727175
                  blt          ra, s4, 117f
                  add          s11, s10, s4
                  ori          gp, s9, 1985
                  sra          ra, zero, s5
                  andi         s5, sp, -1801
                  or           s6, t5, s11
110:              addi         a7, ra, 112
                  slli         s7, a3, 25
                  xori         t4, a3, -260
                  xor          s7, s11, t0
                  slti         s2, s7, 1306
                  sltiu        t3, t3, 539
                  bge          t4, a6, 130f
117:              sltu         s7, t5, a6
                  sub          s7, ra, a0
                  sltu         s3, t4, s5
                  addi         a4, a4, 1074
                  andi         s7, s4, -518
                  bgeu         t6, zero, 135f
                  sltiu        a7, s5, -1930
                  xor          t5, a5, s1
                  bltu         a7, a2, 145f
                  srl          s4, s6, a5
                  bltu         t0, a3, 134f
                  srl          gp, s3, s7
                  xori         t2, sp, 492
130:              srli         ra, t2, 16
                  nop
                  blt          s5, sp, 134f
                  srai         ra, s7, 9
134:              sub          a4, s11, t5
135:              blt          t6, a4, 155f
                  slti         s11, t3, -463
                  add          s8, t6, s6
                  slt          ra, s10, t1
                  srli         a7, s9, 12
                  xori         a7, a1, -1828
                  beq          s0, a7, 150f
                  slti         t0, tp, -1263
                  lui          s6, 326249
                  sub          ra, s4, t5
145:              srai         s2, a3, 16
                  bltu         s2, s5, 155f
                  auipc        s4, 81474
                  nop
                  blt          a2, zero, 163f
150:              blt          s0, a3, 163f
                  bgeu         a7, a1, 153f
                  sltiu        t1, s10, 338
153:              sltu         s11, a7, t2
                  lui          a4, 218700
155:              sra          t1, t4, a7
                  bne          a7, a1, 158f
                  sub          a3, s0, gp
158:              blt          s1, s4, 171f
                  or           s11, t2, s8
                  sltu         zero, a5, s0
                  auipc        ra, 472804
                  slli         s2, s2, 20
163:              xori         s3, t2, 1860
                  lui          s5, 854015
                  slti         s1, s8, 863
                  beq          ra, t1, 184f
                  sltu         sp, a3, s1
                  bne          t0, a4, 172f
                  sll          t1, a4, a2
                  srli         t1, s3, 26
171:              addi         t2, a5, 2034
172:              sll          zero, s11, s4
                  lui          s10, 552549
                  srl          gp, t0, s5
                  or           ra, a1, s8
                  sltu         s5, a1, gp
                  srai         s4, t3, 10
                  addi         s2, t0, 1800
                  add          t5, t0, gp
                  bne          s9, t0, 189f
                  slt          t0, a0, s7
                  slti         s3, a5, -1057
                  srli         a7, t2, 7
184:              nop
                  bge          t4, sp, 189f
                  xori         s7, s0, -687
                  srli         a4, a3, 22
                  lui          s0, 838503
189:              srai         s6, t1, 27
                  lw           t0, 4(a2)
                  or           a4, a4, t0
                  add          a0, t3, a1
                  sub          s9, t3, s8
                  addi         a2, a2, 44
                  slli         ra, a3, 14
                  add          a3, a7, s10
                  xor          s2, s8, s3
288:              addi x26, x5, 1
288:              jalr x26, x26, 0
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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x11, x12, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x7, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x7, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x7, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x7, x21, ecall_handler
                  li x21, 0x1
                  beq x7, x21, instr_fault_handler
                  li x21, 0x5
                  beq x7, x21, load_fault_handler
                  li x21, 0x7
                  beq x7, x21, store_fault_handler
                  li x21, 0xc
                  beq x7, x21, pt_fault_handler
                  li x21, 0xd
                  beq x7, x21, pt_fault_handler
                  li x21, 0xf
                  beq x7, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x12, x11, zero
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
                  add x12, x11, zero
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
                  add x12, x11, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x12, x11, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x12, x11, zero
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
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x12, x11, zero
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
