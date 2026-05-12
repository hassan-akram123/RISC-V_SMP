.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf3f19ce3
                  li x3, 0xc6bd678a
                  li x4, 0x80000000
                  li x5, 0xfedee8ee
                  li x6, 0x80000000
                  li x7, 0x0
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0xf8ccd7dd
                  li x13, 0xf45029bb
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xfc0980cb
                  li x17, 0x0
                  li x18, 0x7
                  li x19, 0xf5d74f71
                  li x20, 0x80000000
                  li x21, 0x1e6fcf98
                  li x22, 0x0
                  li x23, 0xf54d78f4
                  li x24, 0xf33f56a0
                  li x25, 0x1
                  li x26, 0xd4994858
                  li x27, 0xbae12e7b
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             jal          s10, 21f
0:                jal          ra, 4f
1:                jal          ra, 14f
2:                jal          t1, 17f
3:                jal          s1, 18f
4:                jal          ra, 16f
5:                jal          t0, 8f
6:                jal          ra, 1b
7:                jal          t3, 20f
8:                jal          t1, 13f
9:                jal          t1, 10f
10:               jal          ra, 15f
11:               jal          ra, 12f
12:               jal          t2, 19f
13:               jal          t1, 6b
14:               jal          ra, 0b
15:               jal          s3, 3b
16:               jal          tp, 11b
17:               jal          s3, 5b
18:               jal          s7, 22f
19:               jal          t1, 9b
20:               jal          ra, 2b
21:               jal          ra, 7b
22:               lui          a4, 931596
                  sltu         s7, s5, t0
                  and          t2, gp, s6
                  sub          t1, a7, s6
                  nop
                  sll          s7, s2, a5
                  sltu         t4, zero, sp
                  add          a0, a0, s8
                  sltiu        s4, t1, -642
                  la           t2, sub_1
                  add          a5, a4, s3
                  addi         t2, t2, -580
                  add          zero, s0, a2
                  addi         s3, s7, 1604
                  sra          a1, s10, s10
                  srai         s6, t2, 25
main_j1:          jalr         s10, t2, 581 #jump main -> sub_1
                  slt          t4, s4, s7
                  slt          t5, s5, s10
                  sll          tp, t6, s5
                  addi         ra, s8, -1152
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            beq          a7, t5, sub_3_stack_p
                  xori         a3, a5, 913
                  slt          a7, s9, s10
                  auipc        a3, 713154
                  srli         a2, t1, 3
sub_3_stack_p:    addi         s0, s0, -32
                  sub          a6, sp, s3
                  sw           s10, 4(s0)
                  lui          t2, 802349
                  andi         a4, a1, 342
                  and          tp, a3, s4
                  srai         a5, s0, 30
                  sltiu        zero, a3, 1525
                  xori         t2, tp, 627
                  or           t5, s1, sp
                  nop
                  sltu         a0, zero, a6
                  sltiu        s8, a2, 584
                  addi         t0, zero, -1300
                  sltu         t2, s10, a2
                  sll          s2, gp, t5
                  auipc        s7, 601208
                  slt          a4, t3, a5
                  add          zero, a1, a2
                  lw           s10, 4(s0)
                  sra          s8, gp, s6
                  addi         s0, s0, 32
                  add          zero, t0, a5
28:               addi x3, x26, 1
28:               jalr x3, x3, 0
sub_5:            ori          a5, t1, -924
                  sra          tp, t0, a5
                  addi         s0, s0, -60
                  sw           s10, 4(s0)
                  sll          s8, tp, s2
                  nop
                  or           t4, gp, s9
                  slt          a4, s2, sp
sub_5_15:         jal          s10, 12f
0:                jal          ra, 14f
1:                jal          t1, 13f
2:                jal          t0, 4f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          s9, 5b
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          t5, 2b
10:               jal          s6, 0b
11:               jal          ra, 9b
12:               jal          ra, 8b
13:               jal          ra, 10b
14:               srl          s1, s10, s8
sub_5_12:         jal          s10, 7f
0:                jal          ra, 14f
1:                jal          t1, 20f
2:                jal          a1, 4f
3:                jal          ra, 2b
4:                jal          ra, 18f
5:                jal          t1, 8f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          s6, 19f
9:                jal          tp, 10f
10:               jal          ra, 13f
11:               jal          ra, 0b
12:               jal          a1, 9b
13:               jal          ra, 21f
14:               jal          gp, 16f
15:               jal          gp, 3b
16:               jal          t5, 15b
17:               jal          t1, 11b
18:               jal          ra, 5b
19:               jal          ra, 12b
20:               jal          ra, 17b
21:               auipc        a6, 585407
sub_5_6:          jal          s10, 13f
0:                jal          t1, 2f
1:                jal          s3, 19f
2:                jal          ra, 18f
3:                jal          t0, 26f
4:                jal          t1, 11f
5:                jal          t1, 4b
6:                jal          t1, 10f
7:                jal          ra, 22f
8:                jal          t1, 30f
9:                jal          ra, 8b
10:               jal          t1, 29f
11:               jal          ra, 21f
12:               jal          t1, 9b
13:               jal          ra, 14f
14:               jal          ra, 28f
15:               jal          t1, 12b
16:               jal          ra, 6b
17:               jal          ra, 0b
18:               jal          ra, 5b
19:               jal          s4, 20f
20:               jal          t1, 16b
21:               jal          ra, 27f
22:               jal          ra, 23f
23:               jal          a5, 17b
24:               jal          a0, 7b
25:               jal          ra, 24b
26:               jal          s9, 25b
27:               jal          t1, 1b
28:               jal          a2, 3b
29:               jal          ra, 15b
30:               andi         s10, s0, -1287
sub_5_5:          jal          s10, 27f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 4f
3:                jal          ra, 18f
4:                jal          ra, 19f
5:                jal          t3, 1b
6:                jal          ra, 8f
7:                jal          ra, 17f
8:                jal          t1, 29f
9:                jal          ra, 24f
10:               jal          s4, 12f
11:               jal          ra, 28f
12:               jal          a3, 14f
13:               jal          t1, 5b
14:               jal          t1, 21f
15:               jal          ra, 26f
16:               jal          ra, 10b
17:               jal          ra, 11b
18:               jal          ra, 2b
19:               jal          t5, 15b
20:               jal          t1, 3b
21:               jal          ra, 9b
22:               jal          tp, 0b
23:               jal          ra, 25f
24:               jal          ra, 13b
25:               jal          ra, 16b
26:               jal          ra, 22b
27:               jal          t1, 20b
28:               jal          t1, 23b
29:               nop
sub_5_14:         jal          s10, 0f
0:                jal          a5, 5f
1:                jal          s10, 6f
2:                jal          t0, 9f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          gp, 8f
8:                jal          ra, 2b
9:                jal          a4, 10f
10:               srl          t4, t4, t1
sub_5_10:         jal          s10, 5f
0:                jal          t1, 8f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          t1, 1b
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          ra, 3b
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               or           a6, t5, s1
sub_5_1:          jal          s10, 2f
0:                jal          gp, 6f
1:                jal          a5, 3f
2:                jal          ra, 10f
3:                jal          s2, 7f
4:                jal          a4, 11f
5:                jal          ra, 1b
6:                jal          ra, 12f
7:                jal          ra, 4b
8:                jal          t3, 9f
9:                jal          a3, 5b
10:               jal          ra, 8b
11:               jal          s4, 0b
12:               slli         a5, a3, 16
sub_5_3:          jal          s10, 4f
0:                jal          ra, 20f
1:                jal          gp, 7f
2:                jal          ra, 14f
3:                jal          t1, 8f
4:                jal          t1, 25f
5:                jal          tp, 13f
6:                jal          ra, 23f
7:                jal          gp, 26f
8:                jal          ra, 17f
9:                jal          tp, 24f
10:               jal          ra, 5b
11:               jal          ra, 16f
12:               jal          ra, 27f
13:               jal          ra, 2b
14:               jal          ra, 28f
15:               jal          t1, 18f
16:               jal          tp, 1b
17:               jal          tp, 11b
18:               jal          ra, 10b
19:               jal          s10, 22f
20:               jal          s7, 9b
21:               jal          ra, 12b
22:               jal          tp, 6b
23:               jal          t1, 3b
24:               jal          t1, 15b
25:               jal          ra, 19b
26:               jal          s3, 21b
27:               jal          ra, 0b
28:               srli         a5, sp, 4
sub_5_16:         jal          s10, 1f
0:                jal          ra, 4f
1:                jal          ra, 5f
2:                jal          s8, 18f
3:                jal          ra, 7f
4:                jal          ra, 13f
5:                jal          t1, 16f
6:                jal          t1, 10f
7:                jal          ra, 12f
8:                jal          tp, 15f
9:                jal          ra, 23f
10:               jal          ra, 19f
11:               jal          ra, 22f
12:               jal          ra, 14f
13:               jal          t1, 6b
14:               jal          ra, 11b
15:               jal          t1, 2b
16:               jal          ra, 21f
17:               jal          ra, 24f
18:               jal          t0, 3b
19:               jal          ra, 8b
20:               jal          ra, 9b
21:               jal          ra, 20b
22:               jal          t0, 17b
23:               jal          ra, 0b
24:               andi         t4, s3, -528
sub_5_22:         jal          s10, 2f
0:                jal          t1, 17f
1:                jal          t0, 9f
2:                jal          ra, 4f
3:                jal          s4, 10f
4:                jal          s2, 1b
5:                jal          t3, 6f
6:                jal          t3, 15f
7:                jal          t1, 13f
8:                jal          t1, 16f
9:                jal          s4, 11f
10:               jal          ra, 0b
11:               jal          t1, 5b
12:               jal          t0, 3b
13:               jal          t1, 14f
14:               jal          s1, 8b
15:               jal          ra, 7b
16:               jal          ra, 12b
17:               srai         s8, t4, 28
sub_5_21:         jal          s10, 15f
0:                jal          t1, 16f
1:                jal          a0, 4f
2:                jal          ra, 13f
3:                jal          ra, 9f
4:                jal          s7, 2b
5:                jal          t1, 0b
6:                jal          t0, 5b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          ra, 17f
10:               jal          ra, 3b
11:               jal          t1, 14f
12:               jal          ra, 7b
13:               jal          ra, 8b
14:               jal          ra, 6b
15:               jal          ra, 12b
16:               jal          ra, 1b
17:               or           zero, s6, t3
sub_5_19:         jal          s10, 2f
0:                jal          ra, 4f
1:                jal          ra, 11f
2:                jal          ra, 1b
3:                jal          ra, 18f
4:                jal          gp, 12f
5:                jal          a6, 17f
6:                jal          tp, 19f
7:                jal          t0, 0b
8:                jal          s8, 6b
9:                jal          t1, 7b
10:               jal          s8, 15f
11:               jal          t1, 13f
12:               jal          ra, 8b
13:               jal          a6, 5b
14:               jal          ra, 20f
15:               jal          t6, 16f
16:               jal          ra, 3b
17:               jal          s7, 9b
18:               jal          ra, 14b
19:               jal          tp, 10b
20:               slti         s3, t4, 361
sub_5_0:          jal          s10, 10f
0:                jal          t1, 13f
1:                jal          a5, 12f
2:                jal          s2, 3f
3:                jal          s10, 4f
4:                jal          s1, 9f
5:                jal          ra, 1b
6:                jal          s7, 2b
7:                jal          t1, 6b
8:                jal          ra, 5b
9:                jal          s1, 11f
10:               jal          tp, 8b
11:               jal          ra, 0b
12:               jal          ra, 7b
13:               sltiu        s10, s4, -667
sub_5_2:          jal          s10, 5f
0:                jal          ra, 7f
1:                jal          a5, 23f
2:                jal          ra, 24f
3:                jal          ra, 22f
4:                jal          ra, 6f
5:                jal          ra, 20f
6:                jal          ra, 15f
7:                jal          ra, 16f
8:                jal          ra, 21f
9:                jal          t1, 13f
10:               jal          ra, 26f
11:               jal          ra, 10b
12:               jal          t0, 17f
13:               jal          ra, 8b
14:               jal          ra, 9b
15:               jal          ra, 2b
16:               jal          t1, 3b
17:               jal          s3, 0b
18:               jal          t1, 4b
19:               jal          t1, 11b
20:               jal          ra, 18b
21:               jal          t0, 27f
22:               jal          ra, 14b
23:               jal          ra, 19b
24:               jal          ra, 1b
25:               jal          ra, 12b
26:               jal          ra, 25b
27:               slti         s4, zero, 453
sub_5_17:         jal          s10, 15f
0:                jal          ra, 14f
1:                jal          t1, 6f
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          t6, 19f
5:                jal          t2, 2b
6:                jal          a7, 17f
7:                jal          ra, 18f
8:                jal          s11, 3b
9:                jal          a5, 7b
10:               jal          t1, 11f
11:               jal          t1, 9b
12:               jal          gp, 8b
13:               jal          ra, 16f
14:               jal          s1, 20f
15:               jal          ra, 12b
16:               jal          t1, 0b
17:               jal          a7, 5b
18:               jal          a3, 13b
19:               jal          t1, 1b
20:               xori         t1, t3, 439
sub_5_9:          jal          s10, 6f
0:                jal          s2, 1f
1:                jal          a5, 18f
2:                jal          ra, 24f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          s10, 7f
6:                jal          ra, 19f
7:                jal          ra, 8f
8:                jal          s8, 2b
9:                jal          ra, 10f
10:               jal          t1, 22f
11:               jal          ra, 15f
12:               jal          ra, 16f
13:               jal          ra, 5b
14:               jal          t1, 20f
15:               jal          ra, 14b
16:               jal          ra, 21f
17:               jal          ra, 3b
18:               jal          a4, 23f
19:               jal          ra, 9b
20:               jal          ra, 25f
21:               jal          t1, 11b
22:               jal          ra, 4b
23:               jal          ra, 13b
24:               jal          ra, 17b
25:               xor          t4, t2, a0
sub_5_11:         jal          s10, 1f
0:                jal          s4, 16f
1:                jal          ra, 2f
2:                jal          t1, 14f
3:                jal          ra, 20f
4:                jal          ra, 10f
5:                jal          t1, 17f
6:                jal          ra, 27f
7:                jal          ra, 8f
8:                jal          a1, 9f
9:                jal          ra, 24f
10:               jal          t1, 25f
11:               jal          gp, 15f
12:               jal          ra, 26f
13:               jal          t1, 28f
14:               jal          t1, 11b
15:               jal          ra, 21f
16:               jal          ra, 19f
17:               jal          t4, 7b
18:               jal          t1, 22f
19:               jal          a3, 13b
20:               jal          t1, 29f
21:               jal          t1, 12b
22:               jal          ra, 4b
23:               jal          ra, 3b
24:               jal          t1, 0b
25:               jal          ra, 5b
26:               jal          ra, 6b
27:               jal          a1, 18b
28:               jal          a6, 23b
29:               auipc        ra, 865571
sub_5_20:         jal          s10, 9f
0:                jal          t1, 18f
1:                jal          t3, 16f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          t3, 17f
5:                jal          s8, 15f
6:                jal          t1, 8f
7:                jal          t1, 6b
8:                jal          s10, 11f
9:                jal          ra, 5b
10:               jal          t3, 14f
11:               jal          t4, 12f
12:               jal          ra, 1b
13:               jal          ra, 3b
14:               jal          ra, 2b
15:               jal          ra, 13b
16:               jal          ra, 10b
17:               jal          t1, 7b
18:               auipc        s4, 78210
sub_5_8:          jal          s10, 7f
0:                jal          s2, 3f
1:                jal          ra, 5f
2:                jal          t1, 0b
3:                jal          t1, 1b
4:                jal          ra, 10f
5:                jal          ra, 4b
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          t1, 6b
9:                jal          ra, 11f
10:               jal          t1, 8b
11:               xor          a4, gp, t1
                  and          t2, s6, ra
                  addi         s7, a4, 19
                  slli         s11, t2, 5
                  bltu         a7, s0, 9f
                  sra          t6, s8, s7
                  blt          s11, s7, 7f
                  addi         s6, s10, -1199
7:                sll          tp, t3, s0
                  sltiu        s1, sp, 653
9:                slt          a7, s2, ra
                  slli         t0, s7, 29
                  srli         a0, a6, 10
                  srai         t3, a4, 16
                  sltiu        s11, a1, 1756
                  lui          a1, 490710
                  blt          s2, t2, 24f
                  bge          sp, a2, 31f
                  ori          t0, zero, -279
                  sub          s2, t4, tp
                  sub          zero, a6, a3
                  add          a6, a6, a7
                  add          t3, ra, a7
                  add          a4, t5, sp
                  sra          a4, s7, t0
24:               bltu         gp, tp, 42f
                  xori         s3, t1, -433
                  andi         ra, s6, 1534
                  nop
                  sltiu        a7, t3, -1445
                  beq          t6, a3, 42f
                  srli         a7, a2, 30
31:               bgeu         s0, s11, 40f
                  sltu         t4, t2, s7
                  lui          s8, 1015616
                  slt          tp, a5, a7
                  andi         a6, zero, -1444
                  sltu         t6, a2, a2
                  sra          t0, s10, t6
                  srli         ra, s0, 10
                  beq          s9, s7, 56f
40:               xor          tp, s4, s5
                  nop
42:               bne          a7, s0, 46f
                  sll          t6, s4, t0
                  srli         a4, a1, 1
                  sltu         t1, s3, a3
46:               slti         s1, gp, 1739
                  bge          tp, s1, 56f
                  xori         t6, a3, -913
                  add          s8, t4, zero
                  slt          ra, a7, sp
                  and          t5, s1, t1
                  xor          s8, a4, t2
                  andi         t3, s9, -1585
                  srl          zero, sp, a4
                  bge          gp, a5, 64f
56:               sub          t4, s6, s9
                  nop
                  sltiu        t4, s2, 592
                  beq          a1, a1, 68f
                  slti         a4, a5, -272
                  nop
                  beq          s3, t4, 82f
                  or           ra, a6, s3
64:               sub          s3, t2, a1
                  auipc        t1, 917539
                  slli         a2, a4, 6
                  sltu         s4, s8, s8
68:               sltiu        s10, s0, -1166
                  sra          t6, t3, t1
                  addi         t1, s5, 95
                  srl          a0, a6, sp
                  xor          s7, t1, s0
                  sub          a0, a0, t4
                  slti         a4, a6, -1686
                  sll          t3, s5, s3
                  nop
                  sra          a3, gp, t4
                  nop
                  auipc        s8, 414597
                  sra          s4, a4, t0
                  sltu         t1, t2, t5
82:               sub          a7, a0, a0
                  srli         a3, t6, 9
                  bltu         s0, t4, 90f
                  beq          tp, t1, 94f
                  sub          s8, t1, a3
                  and          a7, s5, a7
                  slli         a4, t1, 18
                  lui          t2, 338696
90:               sub          s2, s8, a7
                  and          a6, t5, a0
                  srai         s11, a0, 26
                  sra          t0, a0, a6
94:               auipc        ra, 928977
                  slli         a0, t3, 22
                  sltiu        a6, s4, 482
                  bge          a6, s11, 115f
                  auipc        a2, 864057
                  bgeu         a4, s9, 100f
100:              bge          a0, t6, 117f
                  add          a4, a3, tp
                  srl          s6, a6, a6
                  bge          t4, a5, 113f
                  srai         s7, s1, 8
                  bge          a1, s4, 108f
                  lui          ra, 201233
                  xori         a4, a2, -460
108:              sltiu        s4, t6, -776
                  andi         s4, sp, -1793
                  bge          t3, s7, 112f
                  slli         t6, gp, 22
112:              bne          sp, s8, 130f
113:              bne          a7, a2, 121f
                  srl          t0, sp, a2
115:              xori         ra, s2, -1443
                  add          s11, a7, a7
117:              slli         s9, t5, 22
                  slti         s2, s7, -1322
                  sltiu        t1, t0, 1035
                  blt          zero, s11, 123f
121:              andi         s6, t5, -986
                  lui          t6, 426
123:              bltu         s11, ra, 137f
                  blt          ra, t3, 134f
                  srl          t3, s11, s5
                  sll          a2, tp, s5
                  ori          t6, t0, 599
                  srl          t1, tp, a4
                  slli         a1, s2, 16
130:              or           t4, s7, s9
                  andi         a1, s2, -806
                  srai         t3, s9, 20
                  srl          s8, s3, gp
134:              sra          s2, s9, s8
                  or           s10, s10, s2
                  srl          s8, tp, t6
137:              sltiu        zero, s11, -704
                  sltu         s3, t1, s4
                  addi         a4, ra, 1795
                  srli         s9, s9, 14
                  addi         s9, t6, -1201
                  ori          s2, s4, 1421
                  slli         a2, sp, 8
                  bltu         a3, a4, 145f
145:              or           t4, gp, s8
                  srl          s6, a3, a6
                  auipc        tp, 161168
                  andi         s10, a3, 533
                  xori         t4, t0, 824
                  bge          a4, s7, 159f
                  bgeu         s7, t4, 156f
                  sltiu        a1, zero, 1182
                  auipc        s2, 752232
                  xori         t6, a2, -15
                  beq          s6, a7, 163f
156:              srli         a7, t2, 26
                  beq          s2, tp, 175f
                  auipc        s2, 524757
159:              ori          s4, s8, 1622
                  slti         s7, t5, 1925
                  xori         s6, t6, 733
                  bltu         s2, s8, 163f
163:              beq          s6, t3, 172f
                  xori         s8, a2, 1557
                  bgeu         sp, gp, 174f
                  bge          t6, s5, 175f
                  xori         s8, ra, -58
                  addi         s7, s3, -1299
                  bge          s8, t1, 178f
                  addi         a2, s1, 5
                  add          s8, t2, t0
172:              bltu         a3, gp, 178f
                  srli         s11, s3, 11
174:              bne          zero, a1, 182f
175:              srai         t6, a2, 17
                  srli         a5, a4, 2
                  sltiu        t0, s10, 1291
178:              bgeu         t6, gp, 188f
                  bgeu         a6, a4, 194f
                  and          a0, ra, a1
                  bltu         a1, t4, 190f
182:              sltiu        t0, a6, -143
                  bgeu         a6, a2, 191f
                  xor          a6, a5, a5
                  sll          t2, s4, tp
                  bge          sp, tp, 196f
                  bgeu         s2, s1, 190f
188:              sub          t6, s9, s1
                  nop
190:              slli         s9, t0, 4
191:              xor          a7, s1, s0
                  bltu         zero, a1, 205f
                  bltu         s2, t5, 213f
194:              addi         a1, a0, 1837
                  sltu         a7, a1, a4
196:              add          t1, s8, s2
                  sra          zero, a6, a3
                  blt          t6, a4, 216f
                  slli         s6, s3, 19
                  ori          t6, t6, 321
                  sra          a7, t0, a0
                  bge          t0, ra, 211f
                  sub          t2, sp, a1
                  add          s2, t2, s8
205:              slli         s9, s2, 11
                  sra          s11, a2, s8
                  sltu         t2, ra, t6
                  bgeu         sp, a0, 225f
                  sub          t5, t2, s9
                  addi         s8, s8, -1421
211:              auipc        s6, 1030752
                  auipc        a1, 730529
213:              sltu         a5, t3, sp
                  add          a1, t4, a1
                  bgeu         ra, a7, 219f
216:              andi         a6, a4, -360
                  add          s10, s6, s5
                  blt          ra, s7, 219f
219:              sub          t2, a0, ra
                  lui          ra, 484317
                  add          zero, sp, s5
                  sll          s3, t0, t4
                  bge          a0, t0, 241f
                  xori         gp, s11, 1573
225:              addi         a1, t2, -1067
                  slti         s6, sp, 300
                  sltiu        t4, a2, -290
                  blt          a6, a1, 242f
                  slli         tp, t0, 30
                  blt          gp, t2, 232f
                  blt          a6, s11, 248f
232:              sltu         s4, s7, tp
                  add          s3, ra, t1
                  addi         s1, t0, 229
                  sll          a2, s10, s8
                  sltu         s4, s6, s11
                  bltu         zero, zero, 242f
                  and          gp, ra, t6
                  sltiu        t3, s7, -628
                  bltu         t2, s4, 249f
241:              nop
242:              sltiu        gp, gp, 1238
                  bgeu         s7, s2, 246f
                  beq          t5, t0, 246f
                  nop
246:              and          a1, s9, t5
                  srai         a0, s5, 21
248:              sra          a7, s11, sp
249:              andi         s10, zero, -1540
                  xor          t5, t3, s5
                  or           t4, ra, s4
                  sltu         s1, t4, tp
                  bge          s8, tp, 259f
                  addi         zero, s8, 60
                  xori         gp, s11, 1767
                  slli         ra, zero, 10
                  bne          s2, s1, 275f
                  blt          s0, s10, 263f
259:              nop
                  xori         s1, a5, 1761
                  bgeu         s11, ra, 262f
262:              sltu         a5, t2, t6
263:              xor          a6, s6, s4
                  add          gp, s7, s7
                  bne          t2, t6, 274f
                  andi         a3, a4, -1138
                  andi         t3, s8, 1261
                  slti         t4, t6, -615
                  sra          a4, s2, a1
                  sltiu        gp, s9, -453
                  srai         a3, s6, 0
                  beq          tp, s2, 282f
                  andi         s10, a5, -1324
274:              srl          a4, a0, t4
275:              srli         a0, a5, 28
                  sra          t3, a5, t0
                  ori          s9, a0, 1449
                  sltiu        s6, gp, 1631
                  or           t6, t3, a3
                  ori          t0, t6, 782
                  sra          t6, a3, t0
282:              sltu         a6, a6, s5
                  sltu         s7, t1, a7
                  and          t6, t3, s2
                  blt          s10, a1, 295f
                  srai         a3, t2, 26
                  sltu         t2, t0, t0
                  srli         t2, s5, 8
                  nop
                  and          gp, a7, t0
                  addi         gp, s9, 1047
                  sra          t4, s9, t6
                  auipc        t1, 609954
                  sub          s10, zero, s5
295:              xori         s9, a3, -1038
                  nop
                  blt          a3, a5, 306f
                  bge          ra, a3, 307f
                  nop
                  sltu         t6, a3, s10
                  xori         a7, ra, 1786
                  andi         tp, s6, -1318
                  srai         s9, s2, 14
                  auipc        a2, 480600
sub_5_18:         jal          s10, 2f
0:                jal          t1, 15f
1:                jal          t1, 8f
2:                jal          t1, 14f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          a4, 13f
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          s6, 12f
11:               jal          ra, 16f
12:               jal          ra, 1b
13:               jal          t3, 10b
14:               jal          ra, 6b
15:               jal          s7, 4b
16:               and          t5, s2, a0
                  and          t6, s11, a0
306:              auipc        ra, 1002846
307:              add          a6, t0, a0
                  slti         t0, t5, -1896
                  srli         s1, a0, 25
                  sra          s8, s11, a6
                  sra          t1, t5, a2
                  sll          gp, a3, t0
                  add          s10, s4, s4
                  slti         a7, t0, -1013
sub_5_13:         jal          s10, 7f
0:                jal          s6, 5f
1:                jal          t0, 3f
2:                jal          gp, 18f
3:                jal          ra, 10f
4:                jal          s4, 6f
5:                jal          ra, 1b
6:                jal          ra, 14f
7:                jal          gp, 11f
8:                jal          a5, 17f
9:                jal          ra, 2b
10:               jal          t0, 13f
11:               jal          t1, 20f
12:               jal          ra, 4b
13:               jal          s6, 19f
14:               jal          ra, 9b
15:               jal          ra, 16f
16:               jal          ra, 12b
17:               jal          t1, 15b
18:               jal          ra, 0b
19:               jal          ra, 21f
20:               jal          ra, 8b
21:               sltu         t2, s6, a5
                  srl          t6, t4, a0
                  ori          a7, zero, 765
                  slti         ra, t6, -1657
                  sra          a4, s6, t3
                  bltu         s10, t0, 322f
                  auipc        s11, 17954
                  bgeu         s5, s6, 339f
322:              srai         ra, a3, 30
                  lui          a1, 779387
                  and          gp, a7, t0
                  slli         a7, zero, 28
                  bltu         t0, a3, 346f
                  andi         s3, a5, -1163
                  beq          t0, a3, 343f
                  xori         s1, t4, 2005
sub_5_7:          jal          s10, 17f
0:                jal          ra, 6f
1:                jal          t2, 8f
2:                jal          s9, 4f
3:                jal          ra, 16f
4:                jal          ra, 5f
5:                jal          t1, 18f
6:                jal          tp, 15f
7:                jal          ra, 20f
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          ra, 1b
11:               jal          ra, 3b
12:               jal          s1, 19f
13:               jal          t1, 23f
14:               jal          ra, 21f
15:               jal          ra, 14b
16:               jal          ra, 13b
17:               jal          t1, 7b
18:               jal          ra, 22f
19:               jal          ra, 24f
20:               jal          t4, 10b
21:               jal          ra, 2b
22:               jal          s4, 9b
23:               jal          ra, 12b
24:               srli         a6, s3, 30
                  addi         s9, s2, -1177
                  lui          s3, 342252
                  srli         s9, t1, 11
                  ori          s4, a5, 324
                  slt          s8, s4, s7
                  sltiu        t1, s6, -1689
                  and          s4, s0, t5
                  add          a5, s2, s9
                  srli         s2, a6, 12
339:              slli         gp, s10, 27
                  addi         s11, sp, -1379
                  nop
                  blt          t1, s10, 350f
343:              lui          s6, 395210
                  blt          s9, s6, 346f
                  srl          s2, s8, s6
346:              or           t4, a0, s10
                  ori          s10, t5, 900
                  bgeu         t6, t3, 352f
                  bge          zero, s0, 351f
350:              addi         s9, a1, 217
351:              slli         s9, ra, 6
352:              blt          t4, s8, 369f
                  bne          t2, s6, 367f
                  or           ra, t3, a0
                  lui          a3, 194024
                  xor          s11, zero, s2
                  sub          tp, s2, s8
                  add          s8, s10, s6
                  beq          a1, a6, 365f
                  sltu         t0, a5, s11
                  auipc        s8, 1029220
                  sltiu        a0, s10, 550
                  sra          s8, zero, s6
                  sub          ra, s8, s5
365:              slt          a7, s1, s9
                  andi         s2, s3, 2033
367:              sltu         s2, t5, s9
                  or           s8, a3, s2
369:              srl          t6, a0, a6
                  bgeu         a5, a3, 388f
                  bne          a2, s8, 380f
                  ori          s7, a3, 162
                  xori         zero, s6, -940
                  bltu         s0, s0, 375f
375:              bge          t3, s6, 378f
                  sltu         t6, s7, s7
                  srl          a1, s4, a7
378:              auipc        a2, 791105
                  or           a1, s11, t3
380:              slt          s2, zero, a1
                  xori         t1, s4, 11
                  nop
                  addi         a2, gp, 819
                  nop
                  srai         s6, a6, 8
                  sra          a1, t3, a2
                  slt          a0, t2, a2
388:              bge          a6, t5, 405f
                  beq          t6, s1, 398f
                  sll          s7, t1, t2
                  auipc        t5, 911991
                  sll          t2, s3, t2
                  bltu         gp, s9, 406f
                  slt          s8, t2, s9
                  andi         a3, s6, 509
                  and          a6, s4, s1
                  srl          s6, a3, ra
398:              slti         s10, a3, 46
                  srai         a0, s5, 21
                  nop
                  sra          s7, tp, t1
                  srai         tp, zero, 1
                  sltiu        s8, t4, -1715
                  xori         s1, a2, -1276
405:              beq          s7, t0, 413f
406:              srl          ra, s6, a7
                  slli         s11, s0, 0
                  sra          zero, a1, a6
                  blt          a1, t3, 418f
                  xor          a6, gp, a3
                  srai         s2, s11, 2
                  ori          t0, zero, 1041
413:              beq          t2, t1, 422f
                  sub          s3, a7, t1
                  or           t5, a6, s7
                  andi         s6, a5, -332
                  lui          ra, 304752
418:              xori         s7, gp, -22
                  beq          a4, sp, 425f
                  ori          s7, zero, 227
                  sltu         t0, a3, s5
422:              nop
                  slli         a3, s1, 7
                  slti         t1, gp, 1328
425:              xor          t0, t2, a1
                  slt          tp, a3, tp
                  andi         a2, t5, -625
                  bltu         a5, s7, 429f
429:              sra          s2, a6, s7
                  slti         a4, a4, 733
                  srai         s4, t1, 7
                  sub          s1, s7, tp
                  sltiu        t6, a3, 1963
                  slt          s8, a6, s6
                  srli         t1, a1, 1
                  nop
                  sll          a2, s10, zero
                  sub          a4, s10, t2
                  sub          t0, s8, a7
                  bltu         t4, a3, 455f
                  srai         zero, s4, 21
                  bne          s8, a0, 460f
                  bgeu         s10, s2, 463f
                  lui          a3, 106540
                  addi         s4, s10, -571
                  auipc        s2, 509871
                  srli         ra, ra, 27
                  add          a4, s1, a3
                  beq          s0, a2, 455f
                  add          t4, s8, s11
                  slli         s9, a5, 12
                  addi         t4, s9, 2026
                  bltu         ra, t5, 462f
                  xor          zero, s4, a5
455:              srli         s7, t6, 15
                  srli         s4, a5, 28
                  addi         a1, sp, -894
                  add          t5, s0, s0
                  sll          t4, a0, a5
460:              blt          s8, a1, 473f
                  bltu         s0, sp, 464f
462:              sltiu        gp, s3, 1430
463:              nop
464:              xori         a4, s5, 202
                  addi         s7, t6, 1497
                  xori         a5, t4, -1528
                  slt          tp, gp, sp
                  andi         s3, s11, -2026
                  nop
                  slti         s6, t6, -1835
                  bge          tp, a3, 480f
                  lui          s11, 59602
473:              lui          a5, 830987
                  bne          t5, t3, 492f
                  xor          a1, s5, s3
                  bne          a0, s6, 485f
                  ori          t3, s3, -1638
                  addi         t3, s1, -16
                  slti         a6, a2, 1934
480:              or           a2, tp, t5
                  srl          a6, tp, t3
                  nop
                  sltiu        a0, a3, -1339
                  auipc        t4, 178448
485:              addi         a5, s4, 500
                  srl          s7, a1, s0
                  slli         a5, t5, 31
                  sltu         s1, a2, a7
                  srl          s7, gp, t0
                  bne          s5, a2, 492f
                  xori         a6, t4, 1827
492:              srl          s4, s11, ra
                  andi         s1, t6, -398
                  xori         tp, s6, -36
                  bne          s4, s2, 505f
                  blt          a1, a2, 504f
                  sub          t1, s4, tp
                  srl          a1, s7, t2
                  bltu         t1, s10, 513f
                  slti         ra, s3, -1371
                  or           s9, sp, s1
                  xori         s4, a3, 1402
                  sll          s4, s9, s6
504:              bgeu         s7, s7, 513f
505:              srai         t2, a3, 1
                  xor          t6, sp, s9
                  srli         s3, a0, 10
                  and          s4, a6, a2
                  bgeu         a5, t5, 518f
                  auipc        a7, 596247
                  srai         t6, a2, 17
                  andi         t0, t0, 863
513:              slt          ra, s8, t3
                  or           t6, s10, a6
                  or           a4, s8, s6
                  nop
                  srl          a7, t2, s8
518:              xori         a2, a7, 500
                  beq          t4, t1, 527f
                  addi         a5, a3, 1515
                  blt          t1, a6, 526f
                  or           s3, s1, a7
                  xor          s2, t5, a3
                  sltu         a6, s2, s5
                  sra          a5, a7, s0
526:              add          a1, s9, t2
527:              or           tp, a6, t0
                  lui          a5, 713535
                  bltu         a4, s5, 531f
                  srai         s3, s1, 13
531:              sub          t0, a1, a1
                  bne          s5, s7, 542f
                  bge          s3, s5, 550f
                  sra          zero, s9, sp
                  sub          s2, a1, t1
                  slt          zero, tp, t5
                  sltiu        s4, sp, 115
                  addi         s1, s7, -1029
                  slt          zero, a2, a5
                  bne          a5, s2, 557f
                  slti         s3, s0, 1620
542:              srli         a6, a2, 1
                  srai         s7, s10, 24
                  bltu         s4, s1, 562f
                  xori         t4, a4, 238
                  beq          gp, a5, 549f
                  blt          s9, t0, 553f
                  srl          gp, t4, a2
549:              auipc        s6, 168865
550:              srai         a3, a1, 13
                  nop
                  andi         a3, t1, -1011
553:              srli         t0, tp, 15
                  sub          s6, a4, tp
                  sltu         a4, s6, t5
                  sltu         zero, zero, t2
557:              bgeu         s6, a7, 566f
                  beq          t5, t0, 562f
                  bne          t5, s10, 568f
                  or           t0, s9, t3
                  xor          t2, t3, s10
562:              add          a5, a4, t3
                  sll          a2, s6, sp
                  auipc        t4, 970077
                  slti         ra, zero, 1338
566:              slt          s7, a1, t0
                  bgeu         ra, s6, 568f
568:              ori          t0, s2, -1455
                  bgeu         s8, a5, 574f
                  slli         a4, tp, 27
                  or           t2, a3, s10
                  auipc        s9, 379667
                  sll          s1, a1, t4
574:              sll          a2, a1, a6
                  sltu         t6, t3, a7
                  and          t2, s4, t0
                  sra          t2, a0, t3
                  ori          a4, s4, -1726
                  add          s8, s2, s10
                  srai         s11, a5, 19
                  addi         s8, gp, -184
                  xor          s11, a2, s4
                  bne          sp, sp, 592f
                  addi         a6, ra, -1172
                  auipc        a1, 869732
                  sll          s4, s1, s2
                  beq          t6, s8, 595f
                  slli         s2, a6, 23
                  sll          t4, a4, s0
                  srli         a6, a5, 23
                  bge          t4, s3, 608f
592:              slt          t2, s2, s1
                  srai         a2, t5, 10
                  xor          a6, a6, a7
595:              nop
                  slt          s2, gp, s3
                  srli         a2, ra, 8
                  slti         a6, s7, -822
                  sll          a4, a5, s1
                  sub          s1, s5, sp
                  srl          s2, s0, s10
                  add          s9, a5, a1
                  addi         s4, a1, -275
                  bgeu         a0, s7, 614f
                  addi         s11, a4, 580
                  bgeu         a5, s4, 615f
                  blt          a0, s11, 615f
608:              slt          gp, ra, t0
                  ori          s1, s6, 926
                  sra          s11, gp, t4
                  srli         s11, t6, 11
                  slti         a4, sp, 1688
                  srli         s2, a2, 11
614:              nop
615:              andi         zero, a4, 469
                  lui          a7, 111798
                  bge          s4, s2, 619f
                  slti         t4, a6, 869
619:              sltu         s7, t0, t6
                  slt          t4, t2, t4
                  bgeu         t1, s0, 627f
                  bltu         s10, t4, 640f
                  sub          gp, a7, t6
                  beq          ra, t4, 627f
                  bgeu         t5, a7, 626f
626:              srl          s4, t3, s0
627:              slti         t6, s1, 243
                  sub          t1, t0, s3
                  bgeu         t5, a3, 638f
                  or           a3, t1, t6
                  bge          a5, s4, 645f
                  sub          a6, t5, tp
                  sltu         s1, tp, s8
                  bgeu         t1, s9, 643f
                  srl          s6, s8, t5
                  bge          zero, t6, 653f
                  bge          s9, s2, 641f
638:              srl          s2, a5, t6
                  sll          s7, t5, tp
640:              sltiu        s9, s5, 1270
641:              and          a2, t1, s10
                  bge          t5, a7, 652f
643:              bne          s0, s1, 646f
                  sra          s2, s10, s0
645:              ori          s11, s9, 943
646:              bge          ra, a3, 659f
                  auipc        a7, 35165
                  nop
                  bgeu         zero, ra, 658f
                  add          a1, s0, a6
                  andi         a7, s8, -322
652:              slti         s10, s11, 297
653:              sltu         t3, t6, zero
                  addi         s11, t0, -604
                  blt          a2, s3, 675f
                  bgeu         gp, zero, 662f
                  blt          a5, t4, 666f
658:              ori          a6, t2, -539
659:              slli         s9, tp, 31
                  bgeu         s5, s10, 675f
                  ori          s7, a4, 836
662:              sltu         s9, zero, a0
                  srl          t5, a6, a7
                  slli         t5, t1, 8
                  or           a7, t2, s0
666:              nop
                  auipc        a4, 338506
                  xori         a5, s11, -158
                  auipc        tp, 789149
                  srai         a4, sp, 3
                  lui          zero, 716145
                  srai         a6, s9, 24
                  auipc        a7, 588860
                  sltu         s9, t6, t2
675:              sltu         a6, t2, t3
                  beq          t4, t5, 694f
                  add          s8, s4, a4
                  slt          s4, t2, s6
                  add          a1, gp, s7
                  xori         s9, t3, -376
                  slti         a1, a1, 205
                  nop
                  lui          a0, 965729
                  and          s9, s1, a6
                  sra          a3, a1, tp
                  addi         gp, s4, -1422
                  sltiu        a2, t1, -1946
                  sub          a6, s5, ra
                  nop
                  and          a5, s0, ra
                  bgeu         gp, s8, 692f
692:              nop
                  blt          a5, a0, 711f
694:              bgeu         t1, t6, 696f
                  bgeu         s7, sp, 704f
696:              nop
                  bge          a6, s0, 698f
698:              and          zero, s8, s8
                  bgeu         a4, gp, 705f
                  add          a0, s8, s8
                  slti         s2, s5, -11
                  addi         a7, s2, -607
                  slti         ra, gp, -893
704:              xori         t5, a6, -419
705:              xori         t3, tp, 1728
                  ori          s2, s6, -1844
                  nop
                  sltu         a3, a4, a7
                  xor          a6, zero, sp
                  srli         s1, t0, 25
711:              sltiu        t3, s5, 1080
                  andi         s1, s5, -2045
                  srai         s8, a2, 18
                  nop
                  lui          a7, 298027
                  bltu         a7, t4, 718f
                  sltu         t3, t5, t0
718:              slti         t3, s0, 942
                  bgeu         gp, s9, 728f
                  lui          t4, 363923
                  bgeu         s5, s4, 741f
                  blt          a7, s9, 725f
                  sra          t1, a1, s6
                  ori          t4, t3, -2027
725:              srai         ra, s3, 10
                  srli         s1, a6, 8
                  slti         ra, s0, -37
728:              srai         tp, t1, 16
                  slli         t1, a2, 23
                  andi         t6, t6, -607
                  sra          a3, a6, s8
                  or           s6, a7, a7
                  srai         a3, t0, 4
                  slti         s7, s8, 2012
                  sltu         s10, s11, s0
                  nop
                  ori          a5, t3, -584
                  or           a0, a7, gp
                  auipc        t4, 110046
                  sra          a1, s0, s0
741:              slti         zero, a1, -291
                  slt          a4, ra, gp
                  srli         t6, s9, 1
                  or           a7, s1, t2
                  and          a2, a4, a5
                  blt          a6, a1, 756f
                  slt          a5, a6, t4
                  sll          gp, s0, a4
                  addi         a2, s0, -898
                  bne          t3, tp, 758f
                  andi         zero, s9, -2019
                  beq          s4, t1, 769f
                  xori         a7, s3, 1346
                  srai         s2, s6, 9
sub_5_4:          jal          s10, 0f
0:                jal          ra, 5f
1:                jal          a1, 8f
2:                jal          ra, 9f
3:                jal          t4, 4f
4:                jal          ra, 2b
5:                jal          a4, 10f
6:                jal          tp, 7f
7:                jal          t1, 3b
8:                jal          ra, 11f
9:                jal          t3, 1b
10:               jal          ra, 6b
11:               sll          a6, s6, s10
                  sll          s8, t1, a0
756:              sll          ra, t6, a6
                  slti         t0, a3, -477
758:              srli         t3, s8, 6
                  sll          s10, sp, s6
                  andi         gp, gp, -888
                  xor          a4, a5, s10
                  sltiu        s11, s4, 749
                  ori          t2, tp, 776
                  bltu         a2, s10, 768f
                  xor          s2, a1, sp
                  blt          a5, s3, 775f
                  slti         tp, a7, 54
768:              sltu         a4, s1, t4
769:              xor          s3, s9, t3
                  sltiu        s10, t4, 338
                  beq          t6, t6, 789f
                  srai         s8, a5, 12
                  addi         a0, t0, -1464
                  ori          gp, a4, -1115
775:              bltu         t0, a7, 784f
                  sll          a1, a2, s3
                  srai         s3, s4, 7
                  slti         a4, a5, 1398
                  lui          s9, 813758
                  sltiu        s2, sp, 1785
                  xori         t2, a5, 1546
                  add          t2, s11, t2
                  nop
784:              lui          s11, 468620
                  lui          s9, 413872
                  xor          a3, t0, ra
                  lui          a5, 949506
                  ori          t6, s2, 828
789:              slli         a2, a4, 4
                  srai         s3, s6, 29
                  and          a0, t6, s10
                  bltu         a0, t5, 809f
                  sltu         a4, a3, a2
                  sll          a1, s6, t6
                  andi         t1, s0, 554
                  sub          t4, s11, tp
                  xori         t5, t3, -1027
                  nop
                  ori          s7, a0, 531
                  slt          t2, a1, gp
                  or           t1, t0, t4
                  sub          a0, s7, a2
                  slti         a2, s5, -242
                  slti         s6, sp, 2014
                  and          t1, tp, gp
                  slli         t4, t4, 2
                  add          s9, s5, a4
                  xor          a2, s10, a2
809:              auipc        t3, 936716
                  slli         t5, s10, 20
                  bne          t0, s7, 829f
                  srl          t2, s0, ra
                  ori          t3, a4, 1115
                  xori         t0, s2, -529
                  sltiu        t3, a2, -2040
                  srai         t2, s10, 31
                  andi         a0, t0, 1950
                  slt          s10, s1, s3
                  sub          a2, s10, s9
                  addi         t5, s10, 1890
                  srai         s1, a3, 21
                  beq          tp, a1, 831f
                  auipc        ra, 514786
                  andi         a1, t0, -986
                  xori         t0, s1, 1277
                  nop
                  sub          t4, s5, t6
                  slt          t2, s7, t4
829:              and          t1, s3, s8
                  and          a3, s10, t5
831:              slt          zero, s5, s5
                  bne          a4, sp, 841f
                  sub          t4, t5, t0
                  auipc        s3, 245440
                  sra          a1, a2, sp
                  addi         zero, s4, 489
                  xor          s2, t2, t1
                  srli         a1, s8, 24
                  bne          gp, s0, 845f
                  nop
841:              addi         a3, s10, 1025
                  slli         a6, s9, 29
                  bltu         s4, s0, 856f
                  srl          s6, s11, sp
845:              nop
                  bge          s3, tp, 855f
                  ori          t0, zero, 1244
                  slli         ra, s7, 29
                  blt          ra, t2, 863f
                  nop
                  add          s1, a2, s7
                  slli         zero, t2, 6
                  beq          t3, s7, 862f
                  xor          t1, t1, t4
855:              sub          gp, a1, a7
856:              lui          t3, 705907
                  srl          t2, ra, t5
                  srli         gp, a5, 6
                  bne          s0, t0, 867f
                  xor          gp, s3, a5
                  bltu         ra, t6, 862f
862:              auipc        ra, 317797
863:              andi         a1, a2, -1111
                  auipc        t0, 864687
                  srai         s8, s7, 18
                  bgeu         s3, zero, 876f
867:              slt          s2, s2, s5
                  xori         tp, s9, -1524
                  blt          t3, zero, 887f
                  xori         s10, s9, 1956
                  or           t3, s6, a3
                  sltiu        s11, t3, 9
                  sra          s1, s4, t6
                  sltu         s8, t6, s3
                  sll          s7, s0, s5
876:              sltiu        s7, t3, 177
                  add          ra, tp, s0
                  beq          s8, s0, 883f
                  sra          zero, gp, s0
                  srai         t2, t5, 18
                  or           s11, t1, t5
                  xori         a2, s7, -710
883:              sltu         s10, a0, s11
                  sltu         t0, s2, t6
                  sltu         a4, t5, a2
                  lui          s11, 461268
887:              slli         a4, a0, 13
                  lui          a4, 233554
                  add          t6, a2, t0
                  and          t3, s6, ra
                  lui          a4, 507847
                  sra          a7, a2, s9
                  add          tp, a2, s9
                  lui          a1, 570947
                  slli         a5, a4, 5
                  auipc        a4, 845922
                  blt          s5, s10, 899f
                  andi         s1, a7, 1638
899:              and          a4, a4, s10
                  ori          a1, s8, -735
                  srli         t6, a7, 9
                  addi         t1, s7, -1096
                  srai         s7, a5, 18
                  and          s8, sp, s3
                  auipc        t4, 532391
                  slti         ra, a5, 1495
                  addi         s4, tp, -116
                  or           gp, tp, s2
                  bne          s10, s4, 912f
                  srai         s1, a2, 2
                  srli         zero, a7, 29
912:              sub          a3, a2, t0
                  sub          a7, s4, s8
                  addi         t2, a7, -1716
                  bltu         sp, t0, 930f
                  srli         s3, s8, 22
                  slti         a5, sp, -478
                  andi         s8, a0, -254
                  addi         t3, s4, -667
                  add          a6, s5, s2
                  srai         s2, a2, 1
                  add          t0, ra, a4
                  nop
                  auipc        t5, 862763
                  blt          t6, a7, 928f
                  blt          s10, a2, 935f
                  bgeu         a2, s7, 945f
928:              bltu         t3, t0, 936f
                  srl          t2, t1, s2
930:              and          a4, ra, t6
                  sra          t5, a6, t6
                  ori          a6, t0, -355
                  sll          a0, t2, gp
                  and          s11, s4, a7
935:              bne          s11, s3, 955f
936:              bgeu         gp, a1, 938f
                  srl          a1, t2, t6
938:              blt          s4, s2, 956f
                  slti         s6, a1, -1576
                  lui          s1, 317301
                  add          s6, s0, s3
                  bltu         s8, s0, 948f
                  beq          t1, s5, 957f
                  lui          s1, 346894
945:              beq          s9, t0, 950f
                  sra          s9, a5, t1
                  or           a1, sp, s10
948:              sltiu        a7, a5, -1713
                  add          s10, s11, a0
950:              and          t5, t1, zero
                  auipc        t2, 621817
                  slt          s9, a5, a1
                  lui          t5, 382665
                  srai         t3, t1, 29
955:              ori          s4, a1, 187
956:              sub          s11, s6, t2
957:              addi         a3, a0, -176
                  and          s10, a5, t4
                  ori          gp, t4, -1688
                  sll          ra, t5, a2
                  sra          a5, a0, s3
                  bne          a5, s5, 971f
                  sub          t3, a2, s7
                  bltu         a3, t3, 966f
                  sub          gp, a5, t4
966:              auipc        s3, 679544
                  sub          s8, a6, zero
sub_5_23:         jal          s10, 4f
0:                jal          t1, 2f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          ra, 7f
4:                jal          tp, 8f
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          t1, 6b
8:                jal          a0, 5b
9:                jal          ra, 1b
10:               jal          t1, 9b
11:               srli         s11, a1, 2
                  beq          s7, sp, 978f
                  sll          gp, s9, a2
                  sltu         s7, gp, t4
971:              lui          t0, 206752
                  bge          s7, t2, 985f
                  auipc        s8, 769684
                  sub          s7, s3, t2
                  srli         t6, zero, 22
                  or           gp, gp, t6
                  andi         a0, a0, 1782
978:              srai         s4, s3, 16
                  slli         s6, a6, 31
                  slti         s8, a5, 592
                  blt          s4, t0, 984f
                  ori          s9, a5, -1871
                  slli         s3, gp, 7
984:              ori          a6, t2, 1580
985:              sltiu        s9, t0, 169
                  sub          t4, a5, sp
                  sltiu        a4, a2, -1085
                  auipc        s8, 1007093
                  and          s10, gp, a3
                  xori         tp, s1, -918
                  nop
                  and          s10, tp, s6
                  nop
                  slli         s6, s5, 24
                  bgeu         a1, s0, 1005f
                  bge          a0, s10, 1005f
                  slti         a4, t4, -480
                  bltu         t0, a7, 1004f
                  slt          a5, a3, s0
                  srli         zero, t2, 20
                  andi         t6, s11, 1268
                  sra          a6, t0, s1
                  and          t6, s7, s10
1004:             slt          t2, s8, t5
1005:             sub          a3, a2, t4
                  sra          gp, a2, a5
                  ori          a1, a3, -1982
                  sltiu        a0, s2, 904
                  sll          t3, t0, a3
                  slli         t0, s3, 28
                  slti         a7, t2, -318
                  slti         gp, sp, 284
                  and          s7, s4, t3
                  auipc        zero, 48108
                  srli         s1, sp, 11
                  beq          t2, s10, 1024f
                  sll          a3, s11, a7
                  srli         s7, s8, 14
                  bge          zero, t5, 1020f
1020:             bgeu         a3, s11, 1029f
                  srli         s7, t6, 30
                  srli         a2, a6, 20
                  andi         s2, s1, -598
1024:             nop
                  bne          s7, s7, 1040f
                  or           s8, s1, sp
                  bge          s2, t4, 1044f
                  and          a3, a5, sp
1029:             xori         t2, tp, -1681
                  andi         t5, s8, 1558
                  andi         t3, gp, -1242
                  sll          t1, ra, s5
                  bltu         s8, a1, 1051f
                  sra          s2, ra, a2
                  srli         s10, s4, 26
                  beq          sp, s11, 1045f
                  addi         a5, tp, -1652
                  auipc        s4, 435285
                  beq          a6, a2, 1048f
1040:             slti         s7, t6, -1806
                  bltu         t1, a7, 1050f
                  slti         s3, s5, -1114
                  sll          s2, a7, a3
1044:             slt          t0, t4, a5
1045:             slti         tp, s9, 1385
                  sltu         a6, a3, t6
                  or           s8, t4, sp
1048:             add          s3, s1, t0
                  or           t3, s0, ra
1050:             nop
1051:             bltu         zero, t3, 1055f
                  bgeu         s0, tp, 1069f
                  bltu         t2, sp, 1054f
1054:             nop
1055:             blt          ra, s10, 1070f
                  xori         s10, t1, 2035
                  bge          a1, s8, 1066f
                  slti         a6, t4, -879
                  andi         t6, s5, -1432
                  lui          a3, 1007383
                  sra          s10, s4, a4
                  srl          a7, s8, s10
                  sll          gp, s9, a6
                  xori         a7, s7, -1012
                  bltu         s5, tp, 1071f
1066:             srl          t2, a0, t5
                  srai         s3, t5, 19
                  srl          s8, t2, a7
1069:             xor          s2, s11, a3
1070:             bge          s0, a6, 1078f
1071:             or           zero, s5, s11
                  srl          s2, a7, s4
                  bgeu         t3, a3, 1082f
                  nop
                  bge          t6, a7, 1081f
                  lui          a7, 806073
                  srai         a0, a3, 11
1078:             srli         s9, s3, 16
                  lui          gp, 1038205
                  ori          t5, s9, -1213
1081:             beq          ra, s3, 1085f
1082:             srli         a7, t5, 5
                  xori         a6, t5, 1895
                  beq          a4, t3, 1101f
1085:             sra          s10, a7, s10
                  srli         gp, a6, 25
                  sub          s8, t6, t2
                  blt          s0, a1, 1091f
                  bgeu         t5, t6, 1098f
                  addi         t1, s10, -1504
1091:             sub          s7, a0, a3
                  sll          tp, zero, t2
                  srli         a0, sp, 9
                  nop
                  addi         a0, ra, 770
                  slt          t0, s8, s0
                  and          s8, t1, s1
1098:             sltiu        s2, t4, -1990
                  sll          a6, a1, s4
                  bge          a5, a5, 1109f
1101:             sra          ra, s6, sp
                  auipc        a0, 814377
                  sltiu        t3, s11, -62
                  bgeu         ra, a7, 1121f
                  slt          a2, a6, s10
                  blt          s7, t2, 1115f
                  beq          t6, t0, 1109f
                  slt          s7, ra, ra
1109:             sltiu        tp, s2, 784
                  add          a0, s8, t1
                  srl          a2, s9, zero
                  lui          t6, 986277
                  xor          a1, t4, a4
                  bltu         s0, t0, 1132f
1115:             sra          t3, s2, t5
                  bge          t2, sp, 1129f
                  andi         tp, ra, -548
                  sub          tp, ra, s4
                  sra          s1, a1, t3
                  sub          a6, s11, s4
1121:             xor          t4, s5, s8
                  slt          t6, t5, s8
                  srl          s7, s7, s7
                  ori          s9, s10, -169
                  blt          s1, s6, 1135f
                  slti         s8, s0, -1522
                  addi         s10, s0, -356
                  lui          s6, 271503
1129:             slti         s7, t2, 1880
                  slli         t0, gp, 18
                  bne          s11, t0, 1141f
1132:             srli         t2, t6, 22
                  sltiu        a5, t3, -1717
                  sltu         t0, s8, t5
1135:             and          t6, s9, s0
                  bltu         s4, a1, 1138f
                  bge          t5, s2, 1142f
1138:             nop
                  beq          tp, t3, 1142f
                  xor          a6, t5, a5
1141:             bltu         t5, a1, 1161f
1142:             auipc        s3, 463269
                  srl          gp, s8, s11
                  ori          t3, s9, 1848
                  srl          gp, s0, s11
                  bltu         sp, a7, 1160f
                  slt          s7, s9, s1
                  nop
                  srl          s4, t1, a5
                  auipc        t5, 123246
                  xori         s11, sp, 1639
                  sub          s9, s11, a4
                  andi         s6, s8, -150
                  slti         t6, a1, 717
                  sltiu        a1, gp, 352
                  bge          sp, s8, 1174f
                  ori          a6, s2, -1877
                  bge          s4, a6, 1176f
                  sub          tp, s11, s3
1160:             blt          t1, s8, 1161f
1161:             blt          t6, s11, 1162f
1162:             xori         a5, s8, 635
                  slt          s2, sp, s11
                  nop
                  bltu         tp, a1, 1173f
                  and          s9, a4, t1
                  slt          a3, t6, s7
                  add          s1, a5, s3
                  sltiu        s10, s1, 1080
                  add          t0, t3, s0
                  xor          a2, a2, t2
                  bltu         s9, s2, 1181f
1173:             xor          ra, gp, gp
1174:             sra          s1, s0, s0
                  add          a1, s0, a1
1176:             beq          a3, a6, 1185f
                  beq          t1, t5, 1185f
                  nop
                  and          t4, t6, s9
                  sltiu        a1, t4, 444
1181:             sltu         t0, zero, sp
                  beq          t2, s10, 1185f
                  slti         t2, a7, -1009
                  srai         t1, s4, 23
1185:             xor          t5, t0, s0
                  blt          s3, s3, 1195f
                  andi         t2, gp, -291
                  srl          a3, a6, t3
                  slti         t5, a5, -1600
                  slti         s10, t5, 444
                  or           s3, s6, zero
                  bgeu         sp, a6, 1198f
                  bge          s9, s6, 1202f
                  addi         s3, a7, -195
1195:             xor          a4, a7, t6
                  lui          gp, 1007965
                  srl          a3, a6, t2
1198:             sra          t0, zero, a6
                  bge          t5, tp, 1216f
                  addi         a4, sp, 1682
                  beq          a2, a1, 1209f
1202:             ori          tp, a0, -180
                  auipc        a3, 893069
                  bgeu         s7, t5, 1222f
                  sub          s9, zero, s5
                  sra          s10, s9, a4
                  lui          a2, 247281
                  bne          zero, t1, 1217f
1209:             or           s6, s2, a6
                  nop
                  sra          s6, t3, a4
                  sltiu        s1, t6, 1237
                  bge          a4, s1, 1229f
                  beq          a6, t2, 1227f
                  ori          s1, t4, -382
1216:             bltu         s5, a1, 1229f
1217:             bgeu         s6, s8, 1222f
                  blt          s9, a3, 1229f
                  sra          t3, s6, s5
                  or           s1, a3, s11
                  slti         t0, a6, 598
1222:             nop
                  sub          a2, s5, t3
                  sltiu        a4, s8, 1200
                  or           s6, s8, t3
                  andi         a0, s1, 607
1227:             and          s9, t2, a4
                  blt          t1, a0, 1229f
1229:             ori          a6, s9, 1164
                  srli         a0, t2, 5
                  auipc        a7, 742061
                  add          t5, s6, s7
                  lw           s10, 4(s0)
                  sltu         s7, a3, t1
                  addi         s0, s0, 60
                  sltu         t6, s3, s2
                  auipc        a1, 331991
1752:             addi x31, x26, 0
1752:             jalr x31, x31, 0
sub_1:            ori          t6, s4, 1802
                  addi         s0, s0, -40
                  sll          a5, t0, s11
                  sw           s10, 4(s0)
                  sub          s11, ra, t6
                  auipc        s4, 435164
                  bge          s9, t2, sub_1_j3 #branch to jump instr
                  srli         s1, t6, 3
                  sltiu        s7, a3, -872
                  and          a2, t0, t1
                  sll          t5, a4, s6
                  sra          s7, s6, a1
sub_1_j3:         jal          s10, sub_3 #jump sub_1 -> sub_3
sub_1_11:         jal          s10, 18f
0:                jal          t1, 23f
1:                jal          tp, 2f
2:                jal          s3, 8f
3:                jal          ra, 19f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          ra, 15f
7:                jal          s3, 5b
8:                jal          ra, 4b
9:                jal          ra, 17f
10:               jal          t1, 11f
11:               jal          s11, 12f
12:               jal          s7, 22f
13:               jal          gp, 7b
14:               jal          t1, 10b
15:               jal          t6, 21f
16:               jal          ra, 20f
17:               jal          gp, 16b
18:               jal          ra, 14b
19:               jal          ra, 9b
20:               jal          ra, 13b
21:               jal          t0, 1b
22:               jal          ra, 3b
23:               addi         s3, tp, -579
sub_1_16:         jal          s10, 0f
0:                jal          ra, 1f
1:                jal          s3, 2f
2:                jal          a3, 4f
3:                jal          t0, 7f
4:                jal          t1, 5f
5:                jal          t1, 10f
6:                jal          ra, 9f
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 11f
10:               jal          s11, 3b
11:               or           s7, s1, a5
sub_1_17:         jal          s10, 1f
0:                jal          t2, 6f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          t1, 11f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          a0, 10f
9:                jal          ra, 3b
10:               jal          ra, 12f
11:               jal          t5, 7b
12:               jal          t1, 4b
13:               slt          a0, s7, a4
sub_1_8:          jal          s10, 5f
0:                jal          ra, 1f
1:                jal          t1, 19f
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          ra, 15f
5:                jal          ra, 12f
6:                jal          tp, 22f
7:                jal          ra, 23f
8:                jal          ra, 2b
9:                jal          t1, 11f
10:               jal          gp, 3b
11:               jal          t1, 21f
12:               jal          a7, 9b
13:               jal          ra, 14f
14:               jal          ra, 6b
15:               jal          ra, 24f
16:               jal          ra, 8b
17:               jal          ra, 13b
18:               jal          ra, 0b
19:               jal          ra, 7b
20:               jal          ra, 25f
21:               jal          ra, 18b
22:               jal          tp, 20b
23:               jal          t1, 16b
24:               jal          t1, 17b
25:               sltiu        s2, a5, -176
sub_1_4:          jal          s10, 11f
0:                jal          s4, 5f
1:                jal          t1, 3f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          s9, 10f
5:                jal          ra, 9f
6:                jal          ra, 1b
7:                jal          ra, 2b
8:                jal          t3, 13f
9:                jal          ra, 12f
10:               jal          ra, 8b
11:               jal          t1, 6b
12:               jal          ra, 7b
13:               lui          s2, 935334
sub_1_14:         jal          s10, 17f
0:                jal          t1, 3f
1:                jal          ra, 4f
2:                jal          a5, 14f
3:                jal          s6, 1b
4:                jal          ra, 19f
5:                jal          t1, 9f
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          ra, 16f
9:                jal          ra, 20f
10:               jal          ra, 18f
11:               jal          ra, 6b
12:               jal          a0, 0b
13:               jal          t3, 7b
14:               jal          t1, 8b
15:               jal          s4, 13b
16:               jal          t4, 5b
17:               jal          ra, 11b
18:               jal          ra, 2b
19:               jal          ra, 10b
20:               slti         t4, t0, -442
sub_1_10:         jal          s10, 17f
0:                jal          tp, 3f
1:                jal          ra, 11f
2:                jal          ra, 18f
3:                jal          t2, 26f
4:                jal          t1, 20f
5:                jal          t1, 8f
6:                jal          ra, 19f
7:                jal          t1, 4b
8:                jal          t1, 2b
9:                jal          t1, 24f
10:               jal          a1, 22f
11:               jal          t1, 23f
12:               jal          t4, 1b
13:               jal          tp, 9b
14:               jal          t1, 15f
15:               jal          t0, 0b
16:               jal          gp, 21f
17:               jal          a1, 10b
18:               jal          t1, 7b
19:               jal          ra, 25f
20:               jal          ra, 16b
21:               jal          t1, 6b
22:               jal          ra, 12b
23:               jal          t0, 13b
24:               jal          ra, 5b
25:               jal          ra, 14b
26:               xori         a2, s11, -1304
sub_1_5:          jal          s10, 5f
0:                jal          ra, 4f
1:                jal          ra, 10f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          ra, 8f
6:                jal          ra, 1b
7:                jal          ra, 9f
8:                jal          ra, 2b
9:                jal          t1, 6b
10:               jal          ra, 0b
11:               addi         a3, a4, 1880
sub_1_0:          jal          s10, 1f
0:                jal          ra, 4f
1:                jal          t1, 12f
2:                jal          ra, 10f
3:                jal          ra, 7f
4:                jal          t1, 13f
5:                jal          tp, 6f
6:                jal          ra, 3b
7:                jal          t1, 8f
8:                jal          s10, 0b
9:                jal          t6, 5b
10:               jal          ra, 9b
11:               jal          s3, 2b
12:               jal          a2, 11b
13:               jal          ra, 14f
14:               xori         s8, s2, 1816
sub_1_18:         jal          s10, 11f
0:                jal          ra, 20f
1:                jal          ra, 19f
2:                jal          t1, 6f
3:                jal          s2, 12f
4:                jal          t1, 14f
5:                jal          t1, 1b
6:                jal          t1, 9f
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          ra, 3b
11:               jal          ra, 7b
12:               jal          t5, 4b
13:               jal          s1, 17f
14:               jal          ra, 2b
15:               jal          ra, 8b
16:               jal          ra, 15b
17:               jal          ra, 5b
18:               jal          t0, 16b
19:               jal          ra, 18b
20:               or           s7, zero, s0
sub_1_12:         jal          s10, 4f
0:                jal          ra, 10f
1:                jal          t1, 0b
2:                jal          ra, 6f
3:                jal          a1, 5f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          s4, 7f
7:                jal          t1, 8f
8:                jal          t1, 1b
9:                jal          gp, 3b
10:               srl          a7, s7, s0
sub_1_9:          jal          s10, 3f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          t0, 5f
3:                jal          ra, 0b
4:                jal          ra, 11f
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          ra, 9f
8:                jal          a4, 10f
9:                jal          ra, 1b
10:               jal          ra, 2b
11:               srli         a1, zero, 17
sub_1_3:          jal          s10, 21f
0:                jal          ra, 4f
1:                jal          t1, 22f
2:                jal          ra, 15f
3:                jal          t1, 12f
4:                jal          ra, 19f
5:                jal          ra, 25f
6:                jal          t0, 13f
7:                jal          gp, 16f
8:                jal          s10, 6b
9:                jal          ra, 1b
10:               jal          ra, 20f
11:               jal          t6, 24f
12:               jal          t1, 5b
13:               jal          t5, 2b
14:               jal          ra, 7b
15:               jal          ra, 10b
16:               jal          ra, 3b
17:               jal          t1, 9b
18:               jal          gp, 26f
19:               jal          t1, 11b
20:               jal          ra, 17b
21:               jal          t6, 23f
22:               jal          t1, 18b
23:               jal          ra, 0b
24:               jal          t1, 14b
25:               jal          a3, 8b
26:               slt          a0, a3, s9
sub_1_6:          jal          s10, 7f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          a1, 14f
3:                jal          ra, 18f
4:                jal          t1, 6f
5:                jal          ra, 2b
6:                jal          ra, 15f
7:                jal          ra, 17f
8:                jal          t1, 16f
9:                jal          ra, 13f
10:               jal          t1, 4b
11:               jal          ra, 9b
12:               jal          ra, 11b
13:               jal          a6, 10b
14:               jal          ra, 19f
15:               jal          tp, 5b
16:               jal          ra, 0b
17:               jal          ra, 3b
18:               jal          ra, 8b
19:               xori         s11, s7, -823
sub_1_15:         jal          s10, 9f
0:                jal          t0, 3f
1:                jal          ra, 2f
2:                jal          s2, 12f
3:                jal          t1, 10f
4:                jal          ra, 6f
5:                jal          t1, 8f
6:                jal          ra, 7f
7:                jal          ra, 1b
8:                jal          t1, 11f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          a0, 4b
12:               sll          a1, a7, s4
                  and          s11, s3, t4
                  beq          t5, s8, 19f
                  add          a4, s1, s5
                  bne          s8, t1, 15f
                  sltiu        gp, a5, -149
                  slti         t6, s4, -796
                  slt          t4, s6, t6
                  ori          a0, a7, 1319
                  bgeu         t3, t6, 26f
                  auipc        t6, 179896
                  bltu         t4, s8, 22f
                  ori          a7, s7, -1760
                  sub          ra, a1, s5
                  slt          s6, tp, s4
                  xor          s1, a2, sp
15:               sra          s9, s8, s9
                  addi         s2, tp, 413
                  xor          t1, a1, s9
                  sltu         s11, tp, a1
19:               xor          t6, a7, t1
                  slli         s10, s1, 22
                  srai         a6, a7, 4
22:               beq          t4, t2, 29f
                  srai         zero, sp, 15
                  srli         t6, a4, 0
                  xori         s7, t4, -1818
26:               addi         s3, tp, -51
                  ori          s7, s4, 1452
                  slli         t5, s11, 11
29:               bne          s11, a0, 34f
                  bgeu         t0, s10, 50f
                  xor          t6, s1, s10
                  bltu         a5, s9, 49f
                  slli         s3, s10, 23
34:               slli         a0, s7, 31
                  sltu         s11, a2, a5
                  srl          a7, t1, s7
                  add          tp, a7, t1
                  slli         a3, s5, 15
                  sll          a3, s2, a4
                  add          s2, zero, a5
                  srli         gp, a7, 25
                  slti         gp, a3, -1782
                  andi         s7, s7, 1344
                  beq          tp, t4, 48f
                  slti         a5, tp, 718
                  slli         gp, a7, 0
                  bge          s2, a3, 60f
48:               sltiu        s4, s5, 1517
sub_1_7:          jal          s10, 1f
0:                jal          a6, 8f
1:                jal          ra, 10f
2:                jal          ra, 6f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          t0, 18f
6:                jal          t0, 20f
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          gp, 12f
10:               jal          tp, 4b
11:               jal          t1, 0b
12:               jal          gp, 17f
13:               jal          tp, 2b
14:               jal          tp, 7b
15:               jal          ra, 19f
16:               jal          t1, 3b
17:               jal          t1, 14b
18:               jal          ra, 15b
19:               jal          gp, 16b
20:               slt          tp, tp, a4
49:               blt          zero, s3, 65f
50:               auipc        s4, 330363
                  srl          t4, a0, tp
                  ori          a7, s4, -549
                  bne          t1, t2, 56f
                  lui          a7, 751618
                  srli         t1, t4, 12
56:               sub          zero, a2, s6
                  or           s8, tp, a6
                  bltu         s3, s9, 62f
                  or           zero, a7, zero
60:               nop
                  bge          t2, t0, 80f
62:               bne          s3, s1, 80f
                  srl          s3, t4, a1
                  slt          ra, a6, s6
65:               slli         s6, t4, 26
                  bne          zero, a0, 76f
                  bge          s6, s10, 73f
                  xori         a7, s9, -1071
                  bge          a5, sp, 81f
                  add          t1, s2, t6
                  bltu         t6, zero, 72f
72:               lui          gp, 119329
73:               srli         a1, a7, 30
                  slli         t5, t6, 3
                  beq          s2, a4, 92f
76:               srai         t3, s9, 1
                  nop
                  bgeu         t0, a1, 96f
                  srli         t3, a3, 28
80:               sra          gp, ra, t0
81:               or           s2, t0, a6
sub_1_13:         jal          s10, 6f
0:                jal          s4, 9f
1:                jal          ra, 16f
2:                jal          t1, 4f
3:                jal          t1, 8f
4:                jal          t1, 3b
5:                jal          t1, 17f
6:                jal          ra, 15f
7:                jal          ra, 13f
8:                jal          t1, 20f
9:                jal          ra, 19f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          s3, 11b
13:               jal          ra, 1b
14:               jal          ra, 5b
15:               jal          ra, 18f
16:               jal          ra, 12b
17:               jal          t1, 10b
18:               jal          tp, 14b
19:               jal          ra, 2b
20:               xor          t1, s3, tp
                  or           s3, s2, t2
                  slli         gp, t0, 16
                  sll          a3, t5, s0
                  srai         a0, t4, 30
                  addi         zero, a5, -1876
                  ori          t5, t3, 1794
                  srai         ra, s8, 26
                  sltiu        a4, t3, -155
                  slli         ra, t0, 16
                  srl          a0, sp, a1
92:               xori         s7, s9, 1723
                  slt          s3, a3, t5
                  sltu         s9, s8, s9
                  slti         s7, a4, 1950
96:               sll          a2, s4, a7
                  sltu         s3, s11, a2
                  andi         s11, a7, 595
                  and          s3, s2, s0
                  bge          t3, a1, 118f
                  bge          a7, a6, 108f
                  xori         s4, a0, -2037
                  beq          sp, s7, 112f
                  xori         t1, t3, 1310
                  bgeu         a7, ra, 116f
                  bne          a1, s2, 119f
                  bne          s9, a2, 114f
108:              blt          gp, sp, 122f
                  srli         s9, a2, 20
                  or           s1, t4, t0
                  blt          ra, s0, 121f
112:              bltu         a0, a2, 120f
                  xor          t6, s5, a7
114:              srl          s8, a7, s0
                  bne          t2, s7, 132f
116:              xor          t0, gp, zero
                  blt          gp, a4, 124f
118:              sll          a2, a2, s3
119:              sltiu        gp, t1, 344
120:              add          s10, a1, s6
121:              srai         t0, s11, 23
122:              sub          s1, t0, t3
                  sra          gp, a6, s3
124:              xor          s10, a4, ra
                  sll          s10, s2, s0
                  and          s6, zero, a0
                  blt          s11, a7, 136f
                  sltu         a6, t6, s2
                  bge          a3, s3, 147f
                  xor          t5, a3, a4
                  bne          s4, zero, 141f
132:              or           t6, s8, a1
                  srli         t6, t5, 2
                  xori         a0, a0, -1997
                  andi         a2, t1, 732
136:              slt          a2, a4, ra
                  beq          a0, a6, 149f
                  slli         a7, a1, 10
                  sra          s1, t5, s5
                  add          s4, s3, s3
141:              bge          s2, t3, 155f
                  ori          a7, ra, -1671
                  bge          t3, zero, 161f
                  bgeu         a7, t0, 149f
                  sub          t4, s6, t0
                  ori          t6, s3, -844
147:              nop
                  beq          s10, s8, 164f
149:              bltu         t6, a1, 167f
                  or           s4, a3, s0
                  sltiu        s2, s11, 1441
                  and          a2, s11, s10
                  lui          s9, 654929
                  andi         s3, t1, 185
155:              sll          tp, s10, a1
                  addi         a4, a1, -1421
                  beq          zero, gp, 170f
                  bgeu         t6, ra, 175f
                  nop
                  andi         a7, a3, 1212
161:              sra          gp, zero, t4
                  andi         t3, t0, 1526
                  andi         tp, s7, 171
164:              andi         t4, gp, -32
                  sltiu        s2, t4, -629
                  add          s2, s3, a6
167:              bgeu         s5, a7, 185f
                  xor          t6, t6, a7
                  srai         a5, s0, 15
170:              sll          s3, s9, s7
                  and          a2, a7, sp
                  auipc        t3, 742852
                  srli         s3, a6, 21
                  or           gp, a1, ra
175:              addi         s1, s1, -1083
                  srai         t5, s10, 20
                  add          ra, a4, tp
                  or           s4, gp, s10
                  xori         t0, s0, 1478
                  srai         a1, t0, 22
                  add          t3, s5, tp
                  and          s4, a3, t0
                  srai         a4, a0, 18
                  srli         s1, s3, 4
185:              bltu         a2, a4, 189f
                  sll          a6, a2, a0
                  sra          tp, s8, a3
                  srli         a4, s11, 20
189:              blt          s0, s3, 193f
                  xor          a1, a0, s0
                  add          s8, s5, t4
                  addi         t1, sp, 455
193:              auipc        a0, 688982
                  bge          a1, t3, 200f
                  bne          s2, t5, 202f
                  add          ra, t4, s7
                  slt          s9, t3, a2
                  add          t3, a2, s6
                  bltu         a0, s1, 211f
200:              sltu         tp, s11, s0
                  addi         s10, a3, -1426
202:              andi         t4, s9, 1793
                  slt          s11, a7, a4
                  xor          s10, a0, s2
                  srli         s9, t4, 24
                  slti         s6, s6, 1928
                  sll          a5, ra, t1
                  xori         t2, s2, -172
                  sll          s11, a7, a0
                  blt          s6, t0, 228f
211:              srli         ra, a4, 7
                  ori          s7, s10, -39
                  andi         a1, a4, 799
                  sltiu        a2, a4, -845
                  slt          t6, s7, s5
                  and          t3, s3, a4
                  xori         t2, t5, -1714
                  add          a7, s3, ra
                  ori          a0, s9, -1190
                  or           s4, a5, a4
                  bge          s6, s4, 229f
                  blt          t2, s0, 229f
                  sub          s1, t5, sp
                  bgeu         s5, zero, 225f
225:              add          s9, t6, s2
                  xori         t1, s2, 865
                  slli         t4, s4, 29
228:              srai         a6, sp, 15
229:              nop
                  beq          a0, s4, 240f
                  xor          t5, s11, a3
                  sra          s9, s4, a2
                  addi         s1, s11, 1646
                  sll          t1, s9, a4
                  sltiu        t4, t6, -261
                  xori         t6, ra, -1631
                  xor          s9, s4, s4
                  sub          a1, zero, a5
                  sub          zero, s8, a4
240:              add          a6, s7, ra
                  addi         a0, zero, 1398
                  andi         s10, a4, -1657
                  ori          a5, a6, -1745
                  andi         zero, a0, -1116
                  sltu         s2, a4, t2
                  srli         s6, s9, 2
                  lui          a0, 662642
                  bge          s4, s9, 259f
                  sltiu        t4, s11, 353
                  srli         t4, s2, 21
                  slti         s7, s2, -1026
                  srl          t0, zero, sp
                  sub          s9, s11, a5
                  sltiu        t2, a5, 818
                  sra          t5, s8, s0
                  bgeu         t4, t0, 269f
                  bge          s9, t0, 260f
                  beq          s4, t0, 277f
259:              srai         a7, t6, 10
260:              nop
                  blt          t2, s0, 273f
                  sra          s1, a2, a5
                  srl          a3, t2, s5
                  sra          s11, s4, gp
                  sll          t4, a7, s0
                  slli         s11, t2, 12
                  srl          tp, t2, a3
                  and          a1, a7, ra
269:              slt          t1, a2, ra
                  beq          t3, a3, 290f
                  xor          s2, a5, a3
                  blt          t5, s7, 291f
273:              blt          a1, a6, 280f
                  auipc        t5, 598755
                  nop
                  blt          t4, t1, 284f
277:              bge          s6, gp, 294f
                  sra          gp, s0, t4
                  slt          t1, s3, t1
280:              lui          tp, 859748
                  slti         s8, t6, -571
                  sll          s4, s8, a7
                  sra          gp, sp, a6
284:              andi         a4, t6, -1978
                  sltu         a0, a0, a7
                  beq          t2, s5, 293f
                  bgeu         a6, s1, 298f
                  slti         s9, zero, -319
                  slt          a2, a6, s2
290:              andi         a4, tp, -87
291:              bge          s4, s6, 292f
292:              sll          t1, s7, s5
293:              slli         tp, s4, 26
294:              srai         zero, s3, 24
                  slt          t6, t4, gp
                  sra          a7, a5, s10
                  xor          t5, t5, t2
                  slti         s7, a1, 1164
                  xori         t6, t3, -646
                  xori         s8, s3, -657
                  srl          zero, t6, s3
sub_1_j6:         jal          s10, sub_2 #jump sub_1 -> sub_2
                  bgeu         t3, s1, 315f
298:              sra          s6, s4, a6
                  andi         t5, s0, 1861
                  blt          sp, s8, 313f
                  and          s4, ra, s3
                  sltiu        a5, gp, 1772
                  srli         s9, zero, 28
                  auipc        gp, 491195
                  auipc        s9, 549410
                  xori         t1, s10, 1329
                  nop
                  ori          a2, t1, -1424
                  and          t4, zero, a2
                  ori          ra, zero, 363
                  srli         s9, sp, 16
                  addi         s8, s10, 399
313:              ori          t1, a0, 1352
                  bltu         sp, a1, 323f
315:              sltu         t5, t2, a4
                  addi         s11, a2, -1338
                  beq          a2, a2, 337f
                  bltu         s1, s4, 335f
                  xori         a6, sp, 1668
                  srl          ra, s9, tp
                  srli         a4, s10, 6
                  add          s2, t3, t3
323:              sltiu        gp, t4, -383
                  beq          a5, s10, 337f
                  addi         a6, zero, 265
                  slli         a4, s8, 13
                  srai         t2, a1, 23
                  andi         s9, s10, -1161
                  sub          a5, gp, gp
                  slt          s6, s7, a7
                  sltu         s8, a0, s6
                  sltiu        a4, sp, -97
                  sltu         s7, s5, a7
                  slli         zero, ra, 14
335:              slli         t5, t5, 19
                  srl          s2, s9, s5
337:              andi         s1, t2, -1078
                  bne          a0, a3, 341f
                  slt          a4, a6, a0
                  auipc        a2, 572807
341:              bgeu         t3, s9, 351f
                  or           zero, a4, a2
                  sll          ra, s8, gp
                  and          s9, s5, ra
                  bne          s2, s3, 361f
                  xor          a3, s5, a6
                  srli         t3, s11, 30
                  bne          s1, t0, 360f
                  ori          gp, s9, 777
                  srai         s9, a5, 14
351:              sub          t4, s9, a5
                  sltu         t2, ra, tp
                  slt          zero, tp, t0
                  sra          s9, t3, a3
                  srl          s3, tp, s7
                  sltiu        ra, ra, 66
                  bltu         a0, s8, 364f
                  sltiu        zero, s8, 775
                  xori         a1, a7, 970
360:              xor          t0, a5, t2
361:              sra          s11, ra, t1
                  bltu         t0, tp, 366f
                  blt          a5, a2, 367f
364:              add          t1, s6, s4
                  bltu         s11, zero, 383f
366:              slt          tp, s2, zero
367:              slti         s3, a1, 1252
                  bne          zero, t5, 374f
                  addi         t4, a0, 1282
                  beq          a6, sp, 388f
                  slli         a0, t6, 4
                  and          s10, a2, t2
                  bne          t6, a5, 383f
374:              srai         s10, a4, 24
                  sub          t2, a0, zero
                  andi         t4, t6, -1373
                  bltu         t1, a0, 382f
                  beq          tp, s3, 390f
                  sltiu        zero, a2, -759
                  bgeu         s11, s1, 394f
                  bne          t5, sp, 399f
382:              sltiu        s2, s9, 838
383:              ori          t1, s9, 430
                  ori          a2, s2, 910
                  sll          s11, s8, t0
                  sra          tp, ra, gp
                  add          ra, s7, s0
388:              sltiu        s2, s2, -2048
                  bge          a4, t5, 401f
390:              add          s4, s10, a5
                  slt          a6, s2, t6
                  blt          s8, a4, 410f
                  beq          zero, a3, 405f
394:              slti         a5, s8, -1153
                  bge          t6, a5, 401f
                  and          a7, a1, t4
                  sltiu        a5, t5, -324
                  and          tp, a0, s11
399:              andi         a5, a4, 31
                  srl          t3, s9, s4
401:              bge          t2, ra, 414f
                  and          s11, a6, ra
                  srl          t3, tp, tp
                  sub          a7, a3, s9
405:              lui          zero, 683320
                  andi         s2, s0, -987
                  ori          s8, a3, 61
                  srl          t3, a2, gp
                  srai         t5, tp, 1
410:              and          s4, s1, s8
                  nop
                  srai         a3, t4, 17
                  nop
414:              srl          t0, s1, a1
                  sll          s9, zero, s0
                  srai         s2, zero, 31
                  or           t6, ra, gp
                  lui          zero, 393158
                  bltu         a2, a2, 437f
                  auipc        t3, 1038026
                  xor          t2, t1, t4
                  andi         t2, t2, -347
                  xori         zero, s8, 819
                  srl          gp, zero, a7
                  sll          a5, t6, s0
                  sra          s7, s5, s2
                  xor          t1, t3, sp
                  sltiu        t0, t2, 1218
                  auipc        a4, 807307
                  add          a1, s9, ra
                  srl          zero, tp, a2
                  bge          a6, s0, 442f
                  slt          s11, a1, t2
                  sub          ra, s5, t5
                  srli         a5, zero, 10
                  andi         ra, s5, 807
437:              sltu         a4, s6, s0
                  slti         t5, ra, -321
                  sll          a0, a4, a1
                  auipc        s7, 128355
                  bge          a7, t1, 444f
442:              sltiu        zero, tp, 1770
                  srai         a0, s6, 3
444:              sll          t2, s3, t6
                  xor          t0, t4, t1
                  nop
                  addi         t5, t4, -760
                  sub          t5, a7, t5
                  ori          s10, gp, 1587
                  sll          t2, a3, t0
                  andi         s11, s6, -1425
                  slti         s4, a2, 1691
                  blt          s0, t5, 460f
                  srl          t2, s3, s1
                  sltu         s1, zero, t4
                  srl          a6, zero, t4
                  ori          s2, t4, 409
                  sra          a2, s5, zero
                  srl          a2, s11, s3
460:              sra          a2, a3, t1
                  bgeu         a7, t6, 477f
                  nop
                  srai         t0, gp, 1
                  beq          t4, s2, 482f
                  slti         s4, a0, -1237
                  srli         s8, sp, 9
                  addi         s8, s2, 1650
                  slt          a0, s0, s10
                  srai         s7, a6, 6
                  sub          t0, a0, s10
                  addi         t6, a4, -615
                  and          a5, zero, s2
                  nop
                  and          a0, s1, t6
                  or           t6, t6, a7
                  sub          t6, t6, t6
477:              ori          ra, s5, -479
                  srl          a5, s4, s2
                  sra          gp, tp, t3
                  blt          t3, t5, 497f
                  addi         s9, s1, -1235
482:              andi         t1, a7, -1393
                  srai         s4, s10, 24
                  sll          tp, s5, s4
                  sll          s3, s5, a1
                  bge          s1, gp, 493f
                  auipc        t0, 686635
                  or           s11, s3, a1
                  srl          t3, a7, a3
                  blt          zero, s3, 508f
                  slti         s11, s7, -819
                  sub          s11, zero, t2
493:              lui          s8, 110880
                  addi         s1, t6, -1990
                  sltu         gp, t0, s6
                  bgeu         a3, s2, 516f
497:              slli         s11, s7, 19
                  auipc        ra, 624026
                  add          a0, s11, a3
                  xor          t0, t5, s10
                  and          s1, s6, s5
                  bne          gp, s8, 506f
                  addi         s2, s11, 2031
                  add          s8, tp, s3
                  and          a6, t2, s3
506:              bge          s11, s10, 524f
                  slti         zero, a2, 1546
508:              xori         tp, s7, 1042
                  lui          zero, 1021942
                  sltiu        s2, s9, 1431
                  srai         t4, t1, 14
                  nop
                  sltiu        s10, a2, 942
                  sltu         gp, t0, s2
                  beq          a1, t0, 534f
516:              xori         zero, tp, 875
                  and          gp, t2, s7
                  srli         s10, a1, 9
                  sra          s9, sp, a7
                  bgeu         zero, a0, 524f
                  sltu         t1, s3, sp
                  srai         t6, s2, 10
                  srli         ra, s10, 5
524:              or           t3, a7, a3
                  sltiu        a6, t5, 298
                  sll          t6, a4, s5
                  add          t1, s6, a6
                  slti         s1, gp, 1074
                  beq          t5, s0, 540f
                  nop
                  nop
                  bltu         gp, t5, 544f
                  sll          s2, s11, s2
534:              xor          a7, s9, tp
                  srl          t4, sp, a5
                  sll          a1, a5, s2
                  add          gp, sp, t1
                  sltiu        s11, a4, -1278
                  sltu         a5, s0, a0
540:              sll          t1, s3, t0
                  bge          a1, s6, 549f
                  srai         s2, t1, 15
                  slti         s2, s2, -1768
544:              beq          s11, a7, 554f
                  sra          a1, sp, a5
                  slti         s10, t1, 1446
                  srai         a4, t1, 21
                  sub          a5, s8, s7
549:              sltiu        a4, a6, -1434
                  bltu         t1, s1, 551f
551:              xori         a3, s8, -759
                  lui          s7, 550607
                  add          a1, s0, sp
554:              add          s1, t6, a4
                  blt          t0, t6, 573f
                  srli         s3, a1, 8
                  auipc        s7, 460981
                  addi         a2, s7, 935
                  bltu         t0, a4, 566f
                  srli         s9, ra, 11
                  or           s7, t4, t2
                  srl          zero, a5, sp
                  slti         s3, ra, 1253
                  slt          tp, s10, s5
                  and          t5, t5, t1
566:              xor          t5, ra, a5
                  xor          a4, s6, s8
                  or           a3, a3, t2
                  auipc        a4, 857482
                  sltiu        a3, s3, -1630
                  sub          s7, t5, s2
                  blt          a5, a6, 589f
573:              sll          ra, gp, t5
                  sltu         t0, a4, a6
                  xori         s9, t0, 799
                  lui          a7, 541433
                  bgeu         gp, s6, 590f
                  or           gp, a4, s0
                  sltu         s3, a0, s10
                  ori          s11, ra, -856
                  sub          a4, s3, zero
                  srai         zero, a6, 4
                  bne          zero, gp, 595f
                  blt          s9, s1, 598f
                  andi         t5, s3, -940
                  beq          zero, t4, 591f
                  beq          t4, a0, 596f
                  beq          s8, a5, 600f
589:              slt          s6, t2, gp
590:              nop
591:              slli         t4, tp, 16
                  or           a5, s10, a1
                  slli         s9, t4, 18
                  srl          t3, t2, t6
595:              auipc        s10, 1011606
596:              auipc        s8, 606654
                  sltiu        a3, t2, -1888
598:              slt          tp, a2, s0
                  sll          s10, s10, t0
600:              slli         zero, a3, 21
                  bge          a0, s6, 608f
                  sra          a1, gp, t5
                  sra          t1, t1, a3
                  beq          s3, t1, 617f
                  or           zero, s7, a1
                  slli         s4, a5, 30
                  bne          a1, t5, 611f
608:              srl          s9, s7, a7
                  nop
                  sub          t3, a4, t5
611:              or           t4, gp, s11
                  sra          t6, s5, s1
                  xori         a3, s1, 1263
                  add          tp, s4, t2
                  add          t0, s0, t6
                  and          a2, ra, s8
617:              or           s6, t4, s5
                  add          s4, a7, a7
                  srai         s7, s6, 15
                  srli         gp, a1, 7
                  bne          t1, a6, 627f
                  sub          s9, s8, t1
                  srai         s9, t1, 5
                  blt          a4, s7, 643f
                  addi         s3, a3, -872
                  and          ra, t1, s5
627:              ori          tp, t4, 870
                  srli         t2, t4, 21
                  sub          t2, s7, a5
                  slli         t4, s0, 18
                  srai         t4, s5, 8
                  xor          s9, ra, s9
                  slt          ra, gp, s1
                  srli         s9, s9, 17
                  nop
                  srli         zero, t6, 13
                  slti         t6, ra, 471
                  slt          tp, s1, s9
                  lui          ra, 88811
                  lui          a4, 139361
                  sub          a6, tp, t5
                  slli         s10, ra, 16
643:              andi         s4, s11, -1016
                  auipc        a6, 272611
                  blt          ra, a2, 655f
                  slti         s4, s3, 1255
                  sltiu        zero, s3, 1332
                  beq          s4, t6, 658f
                  sra          s1, s0, a7
                  sltiu        s10, s6, -1197
                  nop
                  srli         s6, a5, 31
                  srl          s9, s5, a4
                  auipc        a2, 240560
655:              sltiu        a2, t6, 1502
                  srai         s11, a2, 16
                  nop
658:              bge          a0, s4, 661f
                  and          s2, a7, s4
                  srli         a2, a7, 4
661:              beq          a4, s9, 679f
                  xor          gp, a0, s10
                  addi         s9, s3, -1477
                  slti         a4, s11, 1494
                  xori         s2, s3, -1592
                  ori          t2, s7, -1042
                  xor          t5, a2, s8
                  slt          s6, t1, s3
                  auipc        a3, 166923
                  bne          s8, s10, 677f
                  sll          s3, s8, t2
                  sub          a3, t2, s6
                  ori          s7, a4, -140
                  bgeu         s2, tp, 691f
                  srl          s7, zero, s10
                  or           t6, a5, tp
677:              andi         t5, s7, -824
                  slli         a1, a6, 14
679:              bltu         t3, s7, 697f
                  lui          s3, 455818
                  xor          a4, s3, gp
                  addi         s3, a2, -1243
                  sra          a7, s4, a6
                  andi         s1, t0, 354
                  srli         a4, a1, 0
                  la           a6, sub_5
                  addi         a6, a6, -581
                  add          t1, a7, s5
sub_1_j5:         jalr         s10, a6, 581 #jump sub_1 -> sub_5
                  ori          a2, s8, 1510
                  ori          t1, t5, -358
                  sltu         s8, a5, ra
                  or           s8, t6, a6
                  beq          t1, s7, 695f
                  slti         s2, t3, -496
                  sll          ra, a6, s11
                  sltu         t1, t0, s9
                  bgeu         ra, s4, 692f
                  sub          s3, ra, t5
                  lui          ra, 317265
691:              srai         a1, a1, 12
692:              or           a6, s7, sp
                  sltiu        a5, a5, -107
                  bge          a7, a3, 712f
695:              or           t4, s3, a6
                  bgeu         a5, a3, 714f
697:              bltu         s6, t2, 702f
                  ori          a0, s9, 819
                  add          s4, t3, a6
                  bne          s11, s5, 709f
                  and          t6, s4, tp
702:              and          s4, s9, t0
                  add          s8, s7, zero
                  and          t1, a2, s7
                  and          s2, t2, a2
                  lui          s9, 762493
                  sltiu        s6, a5, -869
                  addi         t3, sp, 2042
709:              auipc        s2, 137562
                  add          zero, s0, a1
                  sra          t1, t5, a4
712:              or           s2, s9, s4
                  bge          sp, s5, 721f
714:              bltu         a1, s2, 734f
                  bltu         t0, t5, 716f
716:              auipc        gp, 814204
                  add          s3, s7, s2
                  sub          t0, s6, s9
                  sltu         s3, s7, t6
                  xori         s9, s2, -1927
721:              sll          a6, t0, t5
                  sra          s11, t0, sp
                  sltu         t2, s0, a0
                  and          t4, ra, s5
                  bltu         s10, sp, 738f
                  srai         a2, zero, 13
                  ori          t5, a0, 173
                  blt          s9, a7, 740f
                  blt          a4, s4, 743f
                  beq          a7, a4, 742f
                  blt          a4, s0, 738f
                  sra          t1, t4, s3
                  nop
734:              srli         s1, a1, 19
                  bne          zero, s8, 752f
                  bltu         s1, a2, 754f
                  xori         a5, a4, -1117
738:              sltiu        s9, t6, -1364
                  srl          tp, a5, s1
740:              andi         a1, t2, 1364
                  sub          t4, s2, s11
742:              ori          gp, s5, -296
743:              andi         a5, t6, 815
                  auipc        a2, 237025
                  sub          a4, s2, s8
                  and          a7, t6, a5
                  andi         t1, s9, -223
                  or           s9, a2, a3
                  bne          a6, a5, 765f
                  sub          s6, t2, s3
                  sltu         s1, s11, a6
752:              lui          ra, 447116
                  sltiu        ra, a3, 1720
754:              sra          a3, s11, t5
                  bgeu         s1, s6, 768f
                  sltiu        t4, t0, 948
                  addi         s1, s5, -681
                  bge          tp, s2, 770f
                  bgeu         a3, s11, 778f
                  slti         t6, a6, -728
sub_1_1:          jal          s10, 0f
0:                jal          t1, 2f
1:                jal          t1, 10f
2:                jal          t1, 13f
3:                jal          s10, 14f
4:                jal          ra, 16f
5:                jal          ra, 9f
6:                jal          t1, 12f
7:                jal          ra, 11f
8:                jal          s7, 1b
9:                jal          t1, 4b
10:               jal          t2, 3b
11:               jal          ra, 8b
12:               jal          ra, 19f
13:               jal          ra, 7b
14:               jal          t1, 15f
15:               jal          ra, 5b
16:               jal          ra, 18f
17:               jal          t0, 6b
18:               jal          ra, 17b
19:               jal          ra, 20f
20:               slti         a2, s10, -1772
                  add          s2, s6, t1
                  nop
                  srl          s11, a5, a1
                  xori         tp, s0, 276
765:              add          a2, gp, s9
                  sltu         s3, a5, t2
                  sll          s6, s11, t0
768:              slti         s8, s9, 1297
                  ori          t1, a5, -1671
770:              sltiu        gp, t1, 1638
                  beq          s8, zero, 788f
                  srai         a5, t2, 22
                  bge          sp, t0, 774f
774:              andi         s6, s4, 988
                  lui          t2, 259506
                  bltu         t5, s4, 793f
                  add          t3, a1, s9
778:              ori          t6, s8, -100
                  bgeu         s9, s8, 787f
                  slti         zero, t3, -430
                  auipc        t2, 1002333
                  addi         a5, s8, 1668
                  sub          a2, s7, t5
                  slti         t4, a2, 1030
                  sll          s9, t2, t6
                  sll          a4, t0, s1
787:              andi         t4, a4, -1146
788:              xori         s8, t3, -1607
                  auipc        s3, 112849
                  bgeu         t0, s8, 806f
                  slt          zero, s4, a2
                  beq          a0, t5, 812f
793:              slti         ra, s9, 1383
                  addi         s11, t0, -241
                  xor          tp, s5, sp
                  add          t5, a4, s5
                  srl          a2, s1, a1
                  xori         s4, a5, -1418
                  add          a7, a7, s10
                  xor          a6, a7, gp
                  sub          t6, t3, sp
                  and          zero, a0, s11
                  bltu         s4, a5, 815f
                  srai         s1, s6, 28
                  addi         t2, s4, 425
806:              sll          s7, a3, t0
                  andi         zero, a3, -1758
                  bgeu         ra, t0, 812f
                  or           s4, a6, t5
                  srai         a2, s7, 29
                  srai         t2, s11, 3
812:              slti         t6, s3, -1280
                  srli         t3, a5, 23
                  blt          tp, s5, 827f
815:              sltiu        a5, s10, -277
                  slt          t4, sp, sp
                  xori         ra, t3, 1140
                  and          t6, gp, sp
                  nop
                  beq          s10, t3, 827f
                  blt          a1, a4, 828f
                  sub          s11, s6, a0
                  slti         a3, tp, -1428
                  sra          ra, t5, tp
                  and          s7, s3, zero
                  sub          a3, s1, zero
827:              slti         s9, tp, -698
828:              sltu         a0, a4, s5
                  sll          s6, t0, gp
                  sltu         zero, t1, a2
                  sltiu        t4, a0, 1555
                  slli         ra, sp, 18
                  slt          a4, s1, sp
                  andi         a4, s9, -1433
                  add          a2, t6, t1
                  srli         s2, t0, 23
                  bge          s3, gp, sub_1_j4 #branch to jump instr
                  or           s2, s8, s11
                  sub          s11, s0, t1
                  addi         gp, a6, -1069
                  addi         a6, s8, 1602
                  addi         a3, a4, -479
                  slt          t4, s5, t0
                  ori          a0, zero, -1712
                  or           s8, gp, a4
sub_1_j4:         jal          s10, sub_4 #jump sub_1 -> sub_4
                  slt          t2, zero, a3
                  srl          tp, s1, t6
                  ori          s7, a1, 605
                  sub          a3, s2, s3
                  bltu         t0, t4, 854f
                  ori          gp, s2, 1355
                  xor          a4, a7, t3
                  lui          a2, 786291
                  srl          ra, t0, t0
                  add          s9, s4, a4
                  srai         a2, a2, 21
                  blt          tp, t5, 865f
                  xori         s1, s6, 1785
                  srl          s2, s7, s3
                  bge          a7, t0, 854f
                  slli         s6, a0, 20
                  bltu         s8, a1, 861f
                  sra          a6, s6, a0
854:              nop
                  sra          tp, a2, s10
                  slti         s3, s6, -1264
                  sll          zero, s11, s0
                  la           s7, sub_5
                  slti         s3, s1, 796
                  xor          a2, tp, zero
                  addi         s7, s7, 319
                  blt          s8, s0, sub_1_j2 #branch to jump instr
                  lui          t5, 1012104
                  andi         s4, s4, -1892
                  and          t1, a4, t0
                  or           a4, s2, zero
                  sll          gp, t3, s7
sub_1_j2:         jalr         s10, s7, -318 #jump sub_1 -> sub_5
                  bge          t5, s0, 875f
                  slt          zero, tp, a1
                  auipc        t3, 492750
                  srl          s7, tp, t6
861:              sub          s4, gp, gp
                  srai         s9, ra, 4
                  ori          s9, s5, 489
                  srl          s11, s7, s11
865:              ori          a6, a6, -88
                  add          t1, t6, s2
                  and          t3, t5, s1
                  slti         a2, s3, -96
                  addi         t4, t6, -1470
                  bge          a5, s7, 881f
                  addi         t2, t1, 119
                  sra          zero, s6, t4
                  bge          a5, a4, 879f
                  sll          a7, zero, s10
875:              blt          s7, a2, 878f
sub_1_2:          jal          s10, 8f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          ra, 5f
3:                jal          t1, 9f
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          ra, 1b
7:                jal          a4, 10f
8:                jal          t1, 2b
9:                jal          ra, 0b
10:               jal          ra, 11f
11:               srli         s7, s3, 14
                  srl          s11, s4, gp
                  sll          s2, s2, s4
878:              xori         s2, a7, 1363
879:              bgeu         s10, t1, 884f
                  slti         a7, a1, 1540
881:              bge          ra, a3, 888f
                  addi         t6, sp, -307
                  nop
884:              addi         a3, s0, 1881
                  or           s3, s3, ra
                  slli         s10, s6, 19
                  addi         tp, s4, 699
888:              lui          t4, 606601
                  blt          zero, a5, 907f
                  xori         s4, s1, -1860
                  and          t1, t6, s8
                  srai         s2, a7, 22
                  srai         s2, zero, 17
                  bgeu         zero, s6, 906f
                  slli         a4, s2, 25
                  auipc        a1, 898851
                  bgeu         s6, a6, 907f
                  and          s10, a3, t1
                  blt          s7, s2, 917f
                  bgeu         t5, zero, 918f
                  xori         s11, t0, 1458
                  lui          a4, 715651
                  bltu         s7, s0, 913f
                  sltiu        t6, s9, -320
                  lui          s6, 486051
906:              bge          a5, sp, 923f
907:              xor          ra, s6, a3
                  sltu         s1, t1, a7
                  sub          a4, a6, zero
                  sltu         s1, s8, a0
                  lui          s7, 151118
                  xor          s1, a6, a3
913:              add          ra, s2, s11
                  nop
                  srli         gp, t3, 20
                  xori         t6, s0, 512
917:              sra          a3, s7, tp
918:              sra          s1, t6, t3
                  srli         gp, sp, 25
                  sll          a4, s7, s5
                  srl          s3, a7, a0
                  sra          a3, a5, a1
923:              blt          zero, a3, 935f
                  sra          a3, s3, s4
                  srai         t1, s1, 10
                  bgeu         t1, sp, 929f
                  blt          s2, s11, 931f
                  slli         t4, ra, 26
929:              sll          t6, s3, a0
                  or           ra, a2, t4
931:              bgeu         zero, t0, 948f
                  sltiu        a6, a4, -1219
                  lui          a2, 850464
                  nop
935:              slti         zero, a5, -416
                  nop
                  add          a1, s2, a2
                  srli         a1, s1, 9
                  addi         a3, s0, 398
                  ori          ra, s6, 1277
                  xori         s11, t2, -109
                  slli         t4, t6, 22
                  sltiu        t0, t6, 165
                  slt          s2, s7, a6
                  srai         t1, t4, 21
                  nop
                  beq          ra, s0, 953f
948:              sltiu        s1, a0, 112
                  andi         t4, s8, -1821
                  xori         a0, t1, 387
                  srli         s7, a3, 13
                  add          s10, s3, t3
953:              lui          t3, 99008
                  bltu         tp, a6, 964f
                  sltu         s1, a1, a5
                  slli         s3, a7, 16
                  lui          s11, 472959
                  sltiu        t2, t0, 551
                  slt          zero, a6, s2
                  bgeu         s10, s7, 969f
                  bltu         t3, s8, 979f
                  srl          s3, a2, a1
                  xor          a1, s7, t5
964:              sub          a0, s1, a0
                  or           a7, t1, a3
                  auipc        a2, 720655
                  beq          t0, t2, 981f
                  bltu         ra, s2, 979f
969:              blt          t2, t5, 976f
                  add          s1, t0, t4
                  bltu         s9, s0, 975f
                  bge          tp, t4, 981f
                  sll          s1, gp, s6
                  or           s3, t1, gp
975:              blt          t0, a7, 981f
976:              sra          s4, s8, a4
                  srai         a3, t4, 2
                  beq          zero, s7, 981f
979:              slti         t6, s3, -2009
                  sltiu        s1, t4, 1836
981:              sll          s7, t0, s4
                  lw           s10, 4(s0)
                  sltiu        s3, s3, -1957
                  slti         tp, a6, -1409
                  addi         s0, s0, 40
                  or           a1, a1, t3
                  slt          a0, s3, s5
                  sltu         tp, a1, s2
                  nop
1405:             addi x29, x26, 0
1405:             jalr x29, x29, 0
sub_4:            sra          s11, s10, t6
                  bne          a5, a1, sub_4_stack_p
sub_4_stack_p:    addi         s0, s0, -8
                  xor          tp, s9, t4
                  sll          tp, zero, t1
                  or           t0, t6, s6
                  sw           s10, 4(s0)
                  addi         t1, s8, 655
sub_4_6:          jal          s10, 5f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          ra, 10f
3:                jal          t1, 12f
4:                jal          ra, 8f
5:                jal          t1, 0b
6:                jal          a0, 11f
7:                jal          t1, 9f
8:                jal          ra, 3b
9:                jal          a2, 4b
10:               jal          ra, 1b
11:               jal          s11, 14f
12:               jal          a2, 2b
13:               jal          t1, 6b
14:               sra          s9, a1, tp
sub_4_2:          jal          s10, 5f
0:                jal          ra, 22f
1:                jal          ra, 7f
2:                jal          gp, 4f
3:                jal          s6, 9f
4:                jal          t6, 11f
5:                jal          a0, 0b
6:                jal          t1, 13f
7:                jal          s3, 23f
8:                jal          a0, 15f
9:                jal          t1, 14f
10:               jal          s6, 21f
11:               jal          gp, 1b
12:               jal          ra, 3b
13:               jal          ra, 17f
14:               jal          ra, 2b
15:               jal          ra, 16f
16:               jal          t1, 6b
17:               jal          ra, 18f
18:               jal          t1, 19f
19:               jal          ra, 20f
20:               jal          ra, 12b
21:               jal          ra, 8b
22:               jal          s1, 10b
23:               srli         s7, a7, 12
sub_4_7:          jal          s10, 13f
0:                jal          t1, 15f
1:                jal          tp, 11f
2:                jal          ra, 25f
3:                jal          ra, 2b
4:                jal          s11, 0b
5:                jal          t1, 10f
6:                jal          ra, 3b
7:                jal          t0, 27f
8:                jal          gp, 5b
9:                jal          ra, 20f
10:               jal          ra, 24f
11:               jal          ra, 19f
12:               jal          ra, 22f
13:               jal          ra, 21f
14:               jal          ra, 17f
15:               jal          ra, 12b
16:               jal          s3, 18f
17:               jal          ra, 26f
18:               jal          t1, 4b
19:               jal          gp, 16b
20:               jal          ra, 8b
21:               jal          a1, 6b
22:               jal          ra, 7b
23:               jal          ra, 9b
24:               jal          ra, 1b
25:               jal          ra, 14b
26:               jal          ra, 23b
27:               andi         a5, s3, 1007
sub_4_4:          jal          s10, 7f
0:                jal          ra, 15f
1:                jal          s8, 16f
2:                jal          gp, 3f
3:                jal          ra, 5f
4:                jal          t0, 13f
5:                jal          t1, 12f
6:                jal          t5, 2b
7:                jal          ra, 17f
8:                jal          t1, 9f
9:                jal          ra, 11f
10:               jal          ra, 14f
11:               jal          ra, 1b
12:               jal          ra, 10b
13:               jal          ra, 0b
14:               jal          ra, 8b
15:               jal          ra, 18f
16:               jal          t1, 4b
17:               jal          ra, 6b
18:               srai         s3, s4, 10
sub_4_8:          jal          s10, 8f
0:                jal          ra, 23f
1:                jal          ra, 10f
2:                jal          t1, 3f
3:                jal          t1, 19f
4:                jal          ra, 11f
5:                jal          a6, 9f
6:                jal          ra, 7f
7:                jal          t0, 0b
8:                jal          ra, 24f
9:                jal          ra, 22f
10:               jal          ra, 14f
11:               jal          t1, 16f
12:               jal          a6, 25f
13:               jal          ra, 17f
14:               jal          ra, 15f
15:               jal          ra, 6b
16:               jal          ra, 20f
17:               jal          t1, 21f
18:               jal          s9, 12b
19:               jal          t1, 13b
20:               jal          t1, 1b
21:               jal          t1, 5b
22:               jal          t4, 18b
23:               jal          ra, 2b
24:               jal          t1, 4b
25:               andi         s6, s10, -63
sub_4_0:          jal          s10, 1f
0:                jal          ra, 22f
1:                jal          t1, 3f
2:                jal          t1, 12f
3:                jal          t1, 21f
4:                jal          a1, 15f
5:                jal          gp, 16f
6:                jal          a7, 0b
7:                jal          t1, 17f
8:                jal          ra, 5b
9:                jal          ra, 19f
10:               jal          a3, 2b
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          ra, 18f
14:               jal          ra, 13b
15:               jal          t3, 20f
16:               jal          s1, 9b
17:               jal          t0, 4b
18:               jal          ra, 7b
19:               jal          t1, 11b
20:               jal          ra, 10b
21:               jal          ra, 14b
22:               xor          t1, t6, s7
                  bne          s9, s11, 14f
                  slt          t4, s3, a3
                  xori         s11, s5, -1408
                  add          t2, s7, a7
                  sll          s3, t0, s0
                  ori          t6, s4, -78
                  bgeu         gp, a2, 16f
                  ori          t3, s11, 107
                  sra          a5, s1, zero
                  beq          s5, a3, 17f
                  or           t6, s5, s8
                  bltu         a2, a0, 30f
                  srli         t0, s6, 11
                  sra          s2, a7, a1
14:               sub          a0, s1, a2
                  xori         t6, s0, 110
16:               srl          t1, t2, tp
17:               sltu         a6, t4, gp
                  ori          s2, s6, 1196
                  bge          a6, a3, 39f
                  xor          s9, s2, a4
                  ori          t2, t2, -1877
                  add          ra, s5, t1
                  sltiu        t6, s0, 539
                  or           s7, s0, s3
                  addi         s6, s8, 286
                  xori         tp, s7, 1473
                  sra          s11, zero, s2
                  srli         s3, zero, 0
                  srai         a3, s1, 22
30:               slli         a1, s9, 21
                  bge          t5, a3, 48f
                  nop
                  xor          t1, a5, a3
                  srl          s10, s0, sp
                  nop
                  sltiu        a0, a6, 263
                  sltu         t0, zero, a2
                  beq          s1, t0, 39f
39:               beq          a0, a5, 55f
                  srli         ra, zero, 1
                  sltiu        a5, gp, 1947
                  nop
                  andi         a2, s5, 874
                  sll          t2, s8, a4
                  lui          a2, 403998
                  bgeu         gp, t0, 50f
                  addi         s1, s10, -1167
48:               blt          s1, s2, 66f
                  auipc        s9, 345407
50:               sra          zero, s4, tp
                  slti         a5, s0, -1616
                  and          t5, t5, s1
                  sltu         t1, zero, s2
                  andi         s8, sp, 1720
55:               srai         s11, a4, 8
                  auipc        ra, 106012
                  sll          s8, s7, a5
                  srli         t2, tp, 8
                  lui          t6, 161287
                  and          s2, a0, t0
                  srl          s1, s2, a6
                  or           ra, zero, s2
                  beq          s8, s0, 66f
                  lui          a7, 999083
                  sll          a6, tp, t3
66:               and          s1, s6, a7
                  blt          gp, s4, 70f
                  slti         s2, tp, -1772
                  auipc        t4, 843759
70:               or           s7, a0, a1
                  srli         ra, a4, 8
                  bge          s4, a7, 83f
                  andi         t2, a3, 690
                  sub          a3, s3, t4
                  bgeu         ra, t4, 93f
                  add          t2, s5, a4
                  addi         zero, t4, -588
                  slti         t5, t1, 190
                  bne          a3, a3, 81f
                  sltiu        zero, zero, -1858
81:               bne          a1, t4, 91f
                  xor          t1, a7, s4
83:               lui          zero, 616361
                  sltu         s7, a6, t5
                  sltu         t1, a5, s8
                  xor          zero, s5, t4
                  lui          gp, 708283
                  add          s9, s2, a2
                  beq          s9, a3, 99f
                  blt          tp, t3, 91f
91:               beq          a5, a3, 102f
                  beq          sp, ra, 110f
93:               bgeu         s5, a6, 94f
94:               addi         s2, t3, 1662
                  bgeu         s5, t5, 107f
                  and          a2, s1, zero
                  beq          s5, t0, 104f
                  add          s11, t4, t6
99:               sltu         t5, a0, a7
                  sra          a1, zero, t0
                  or           s9, a2, gp
102:              slli         a6, t5, 5
                  sltu         s3, t4, tp
104:              nop
                  ori          a2, s10, 1272
                  blt          t0, s0, 108f
107:              lui          s2, 246412
108:              slt          a7, s5, s0
                  bge          a4, sp, 115f
110:              and          a1, s6, s1
                  sltu         a2, t2, sp
                  slli         s7, t4, 23
                  sltiu        s4, a6, 811
                  sra          tp, t3, a3
115:              andi         a2, a0, 682
                  bne          s4, s5, 131f
                  add          t1, a7, t3
                  xor          s9, tp, t1
                  bne          a6, a6, 126f
                  slli         t1, t2, 18
                  srli         a4, s0, 2
                  bgeu         sp, sp, 138f
                  or           s4, t2, t1
                  srai         s9, s3, 17
                  sltu         a3, s9, t3
126:              sub          t0, a6, sp
                  addi         s9, a1, -1339
                  auipc        zero, 739124
                  beq          a1, t6, 142f
                  srai         t0, zero, 12
131:              sltu         t0, s2, a6
                  addi         s11, s8, 1632
                  slli         a4, t0, 13
                  add          s3, s3, s9
                  xor          s2, ra, s1
                  sltiu        t3, s0, 35
                  lui          t5, 335256
138:              slti         s2, a1, -1157
                  srai         s1, gp, 5
                  srl          s2, s0, t3
                  bltu         t3, s7, 144f
142:              andi         s7, s5, 918
                  sub          t0, s2, ra
144:              sll          s8, a0, s8
                  sub          s1, s10, s4
                  sub          gp, t1, s1
                  srl          s2, s4, a1
                  nop
                  srl          s1, a5, t3
                  ori          s6, a7, 984
                  and          t2, t2, s6
                  srl          a4, s0, t4
                  slt          s3, ra, s3
                  srl          s8, a2, a5
                  xori         s7, gp, -303
                  bgeu         a6, s1, 167f
                  xor          a7, t1, s2
                  addi         a4, a0, -891
                  slti         tp, s2, -527
                  ori          a0, t4, 1098
                  xor          s11, zero, a2
                  bne          gp, s8, 163f
163:              bltu         a3, s0, 180f
                  slti         tp, s5, 945
                  sll          a0, s1, a0
                  sll          s1, a4, t4
167:              srl          a0, s6, sp
sub_4_1:          jal          s10, 18f
0:                jal          ra, 5f
1:                jal          a6, 0b
2:                jal          s4, 22f
3:                jal          t1, 2b
4:                jal          t1, 21f
5:                jal          t1, 8f
6:                jal          ra, 23f
7:                jal          s1, 4b
8:                jal          ra, 6b
9:                jal          t1, 16f
10:               jal          a5, 20f
11:               jal          t1, 19f
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          t6, 13b
15:               jal          t1, 11b
16:               jal          ra, 10b
17:               jal          ra, 9b
18:               jal          ra, 15b
19:               jal          t0, 3b
20:               jal          ra, 7b
21:               jal          ra, 12b
22:               jal          ra, 14b
23:               sltiu        s10, s1, -1859
                  sub          t5, t0, a4
                  add          t1, s6, s0
                  srli         t2, s0, 11
                  or           s8, t3, gp
                  bltu         t5, s2, 188f
                  addi         s8, zero, 704
                  bltu         s10, a6, 184f
                  ori          a2, s7, 924
                  slli         a0, t5, 31
                  bgeu         t5, t4, 190f
                  bltu         s4, s1, 182f
                  beq          s5, sp, 186f
180:              lui          t0, 597490
                  sub          s4, t5, gp
182:              sltiu        s8, a7, 1635
                  nop
184:              sltiu        t0, t0, 1354
                  slt          t3, a4, s6
186:              slt          s6, a4, t3
                  and          ra, s6, a5
188:              slt          s7, t5, t1
                  sub          s4, t4, a4
190:              xori         s11, a2, -495
                  sra          a4, a2, s5
                  xori         zero, s4, -1842
                  srli         s9, sp, 21
                  bge          s1, s8, 197f
                  ori          a5, ra, -108
                  bltu         sp, s3, 216f
197:              lui          a5, 956587
                  xor          ra, s4, a3
                  slti         t6, s7, 1618
                  xor          s11, sp, s11
                  sltu         tp, t1, s11
                  ori          s10, s8, 659
                  xori         s2, zero, -634
                  or           s9, a3, ra
                  srli         s10, ra, 6
                  slt          t6, s9, t6
                  sra          t3, a4, t2
                  auipc        a6, 885613
                  xor          t4, t6, t2
                  auipc        s11, 489571
                  xori         t2, a0, -115
                  srai         gp, zero, 3
                  xori         t5, a0, -1648
                  slli         s4, s6, 2
                  xori         t1, s3, -1909
216:              srl          s3, t0, t5
                  sltu         a4, t4, a1
                  srai         t1, s1, 16
                  andi         s1, a0, -1862
                  lui          s11, 1040559
                  xori         a4, zero, 1887
                  sltu         s1, a3, t6
                  sub          gp, a7, gp
                  and          a7, a5, s8
                  ori          t2, t4, -841
                  sltiu        zero, s0, -604
                  slt          s4, t6, s6
                  sltu         t6, a5, t2
                  nop
                  sltu         s9, a6, a5
                  andi         t1, a7, -1100
                  or           s3, s8, s3
                  ori          zero, a1, 33
                  slt          a1, s11, sp
                  bne          a3, a2, 237f
                  lui          a1, 659512
237:              auipc        s11, 885431
                  slli         a7, t4, 1
sub_4_5:          jal          s10, 27f
0:                jal          ra, 18f
1:                jal          ra, 23f
2:                jal          a4, 10f
3:                jal          ra, 8f
4:                jal          gp, 13f
5:                jal          t1, 17f
6:                jal          t1, 20f
7:                jal          ra, 25f
8:                jal          ra, 16f
9:                jal          t1, 11f
10:               jal          ra, 24f
11:               jal          ra, 4b
12:               jal          ra, 0b
13:               jal          t1, 15f
14:               jal          s2, 28f
15:               jal          ra, 19f
16:               jal          ra, 5b
17:               jal          a2, 22f
18:               jal          s1, 21f
19:               jal          ra, 6b
20:               jal          t0, 12b
21:               jal          ra, 3b
22:               jal          gp, 29f
23:               jal          ra, 14b
24:               jal          t0, 1b
25:               jal          ra, 2b
26:               jal          s9, 7b
27:               jal          t4, 26b
28:               jal          t5, 9b
29:               xor          gp, a7, t3
                  srai         a1, a3, 21
                  xori         s1, a0, -1444
                  bltu         sp, t5, 244f
                  blt          s1, s5, 256f
                  lui          s4, 208772
244:              beq          t2, t0, 254f
                  sltiu        s7, t0, 264
                  beq          t2, zero, 249f
                  sltu         gp, gp, s6
                  blt          s11, s11, 267f
249:              and          a6, s7, t4
                  addi         ra, s1, -63
                  bge          a1, t0, 257f
                  srli         s7, a1, 11
                  and          t4, s1, t6
254:              slli         s1, a0, 23
                  nop
256:              and          s6, a4, gp
257:              auipc        a0, 439950
                  sub          s2, tp, a5
                  sra          s1, ra, a4
                  sll          s11, t4, s6
                  add          zero, t1, s2
                  auipc        s6, 449703
                  lui          a4, 643555
                  lui          a7, 700920
                  or           ra, s5, gp
                  auipc        t6, 492068
267:              srli         t6, t1, 6
                  addi         zero, a7, -1881
                  srli         t3, s2, 15
                  slt          tp, a4, t0
                  bge          t1, a4, 278f
                  srl          t0, a7, s10
                  srli         t6, a4, 21
                  andi         tp, t5, -606
                  slt          t6, t1, t1
                  sra          a3, s3, a2
                  sra          ra, s5, ra
278:              add          t5, a2, a0
                  lui          s9, 700865
                  nop
                  lui          ra, 200685
                  addi         a5, ra, -803
                  srli         s3, a6, 17
                  sll          a1, s9, t5
                  andi         a4, a4, -1759
                  nop
                  bge          s0, s6, 289f
                  sub          t4, s1, t4
289:              bge          a3, s1, 307f
                  blt          t0, s1, 305f
                  andi         t0, a3, -148
                  bltu         s7, s4, 293f
293:              srai         t4, a2, 7
                  xori         t2, a7, 955
                  addi         zero, t6, -883
                  or           t0, s5, s9
                  bge          a7, a7, 308f
                  bge          tp, t1, 310f
                  add          s3, a1, s0
                  bltu         s4, ra, 310f
                  blt          s8, s10, 319f
                  srai         s3, ra, 5
                  srai         s9, a4, 17
                  srli         gp, s10, 24
305:              lui          t6, 896338
                  addi         t4, gp, 636
307:              blt          s1, ra, 325f
308:              xor          a1, ra, s6
                  sltiu        s8, zero, 1801
310:              andi         a3, ra, -1211
                  slli         s4, s3, 18
                  srli         s2, s7, 27
                  addi         s1, gp, 79
                  nop
                  bne          s11, gp, 331f
                  blt          t3, s0, 324f
                  slt          a1, tp, s5
                  lui          t2, 426474
319:              add          s1, s10, s8
                  bge          s11, t4, 321f
321:              blt          t2, t5, 324f
                  blt          s1, s10, 333f
                  sra          a7, t3, s7
324:              srl          t3, t3, s1
325:              srai         s11, s5, 20
                  sll          s4, a1, tp
                  xor          a5, s4, t1
                  bltu         s8, a7, 347f
                  sub          a0, s3, a4
                  slt          a5, s10, s6
331:              addi         t2, a6, 468
                  bge          s1, tp, 333f
333:              sub          a5, s7, a2
                  nop
                  bge          a4, a4, 351f
                  ori          tp, a2, -1374
                  sll          s3, s0, t1
                  srli         a3, ra, 5
                  srli         t5, s2, 23
                  bge          a4, s8, 357f
                  sltu         t4, s1, t4
                  xor          zero, a6, s7
                  lui          t3, 25598
                  lui          s3, 1016434
                  xori         s8, s4, 1443
                  srli         a0, s2, 14
347:              xori         s9, a3, -1015
                  ori          a5, tp, -2042
                  srl          a6, s8, s1
                  xor          a5, s4, s5
351:              bge          tp, s7, 363f
                  xor          t0, s3, s11
                  bge          a2, gp, 360f
                  bltu         a7, s1, 355f
355:              srli         t2, s11, 25
                  bgeu         zero, a0, 359f
357:              slli         t1, sp, 6
                  and          t5, s8, t0
359:              and          s4, a0, s2
360:              slti         t6, zero, -657
                  auipc        t4, 941188
                  or           s6, a4, sp
363:              blt          s8, s0, 366f
                  xori         t3, ra, 1325
                  and          s3, s5, s1
366:              nop
                  sub          s3, a6, t6
                  sll          t3, ra, s10
                  sub          t3, a1, a2
                  lui          s6, 562666
                  bltu         s2, t1, 386f
                  and          a5, a2, s3
                  or           tp, s1, t3
                  sra          t1, s1, s7
                  andi         t5, tp, 1327
                  srai         s11, s8, 20
                  beq          ra, s8, 379f
                  or           s3, a1, sp
379:              andi         s10, t6, 135
                  bge          a2, sp, 398f
                  sltiu        s3, a4, 773
                  sub          t2, s1, t1
                  or           s8, gp, a2
                  sltiu        a0, a5, 762
                  bltu         s11, t5, 389f
386:              andi         t3, a0, 1786
                  andi         t5, a4, 1278
                  ori          s9, s2, 1116
389:              beq          t6, s2, 407f
                  sra          s7, ra, t6
sub_4_3:          jal          s10, 5f
0:                jal          ra, 7f
1:                jal          t1, 0b
2:                jal          t0, 6f
3:                jal          ra, 4f
4:                jal          tp, 11f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          ra, 13f
8:                jal          gp, 12f
9:                jal          ra, 10f
10:               jal          t1, 14f
11:               jal          ra, 9b
12:               jal          s10, 15f
13:               jal          ra, 3b
14:               jal          t1, 8b
15:               lui          tp, 525356
                  bgeu         s3, zero, 411f
                  slti         zero, s0, 630
                  sltu         a7, a2, a0
                  srl          ra, t1, t5
                  lui          s10, 807208
                  add          a0, sp, a2
                  bge          s8, a3, 407f
398:              bne          a4, t4, 408f
                  slt          a1, zero, t1
                  srai         t3, s3, 20
                  auipc        t1, 143469
                  sltu         s8, a3, t4
                  blt          ra, zero, 421f
                  sra          s3, t4, t0
                  sub          s7, t0, s1
                  srl          t5, a5, s7
407:              srai         s8, s2, 31
408:              xori         t4, zero, 995
                  srli         t2, ra, 5
                  srli         s7, s5, 23
411:              nop
                  sra          s4, a5, sp
                  sltu         s9, a6, s2
                  bgeu         gp, s2, 427f
                  bltu         s11, t5, 429f
                  sltu         t3, a4, s7
                  srli         s9, s8, 15
                  slti         t4, zero, 155
                  addi         zero, s11, 1687
                  xor          gp, a4, t0
421:              slli         a1, a4, 22
                  or           s1, a5, t2
                  slti         t4, gp, 1446
                  lui          s9, 494792
                  srai         s4, s5, 4
                  bgeu         sp, s9, 437f
427:              slli         t6, a3, 20
                  andi         a7, t4, 654
429:              slli         a2, t4, 9
                  sltiu        zero, s6, -266
                  bge          gp, t0, 432f
432:              sltiu        gp, s5, -1684
                  sltu         t5, tp, t5
                  ori          s6, s7, 924
                  lui          ra, 41356
                  sltiu        a5, s9, 998
437:              auipc        s2, 3132
                  srli         t4, a6, 18
                  bltu         t6, ra, 447f
                  bge          sp, s0, 447f
                  sltu         s6, a3, s8
                  auipc        t5, 154314
                  sltu         t2, s8, a4
                  xor          a6, s1, t1
                  bltu         ra, a7, 461f
                  slli         a4, s8, 8
447:              srl          a1, zero, s11
                  srl          a1, a6, s7
                  sltiu        tp, t4, -96
                  slt          a7, a2, s3
                  bgeu         t5, s6, 457f
                  bltu         s5, s2, 454f
                  addi         a1, t6, 891
454:              bltu         gp, ra, 464f
                  add          a7, s5, t3
                  srai         s2, tp, 9
457:              bne          s2, a4, 465f
                  sltiu        tp, ra, 973
                  sub          s1, a2, tp
                  srli         t4, s4, 28
461:              nop
                  srl          a5, s11, a5
                  beq          t0, a3, 474f
464:              sra          a6, s7, s8
465:              nop
                  slt          t5, a0, ra
                  bne          sp, a7, 474f
                  andi         s7, a1, -600
                  bltu         t3, s0, 474f
                  or           s4, t6, s4
                  slti         s4, s7, 739
                  srai         t6, t4, 9
                  nop
474:              srai         a6, s10, 16
                  lw           s10, 4(s0)
                  sub          a6, s5, a5
                  slti         tp, t1, -504
                  addi         s0, s0, 8
                  slli         t4, t6, 13
                  srai         a6, s5, 18
703:              addi x23, x26, 0
703:              jalr x23, x23, 0
sub_2:            bge          ra, s8, sub_2_stack_p
                  sltu         t5, s8, s6
sub_2_stack_p:    addi         s0, s0, -36
                  sw           s10, 4(s0)
                  auipc        t6, 523401
                  sra          zero, zero, s8
                  addi         t6, ra, 754
sub_2_0:          jal          s10, 1f
0:                jal          t1, 4f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          s6, 2b
5:                jal          s3, 14f
6:                jal          ra, 10f
7:                jal          a7, 6b
8:                jal          ra, 9f
9:                jal          ra, 0b
10:               jal          a1, 13f
11:               jal          ra, 5b
12:               jal          ra, 11b
13:               jal          ra, 8b
14:               andi         a7, a3, 1585
sub_2_2:          jal          s10, 24f
0:                jal          ra, 2f
1:                jal          tp, 25f
2:                jal          t1, 1b
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          ra, 22f
6:                jal          ra, 0b
7:                jal          t1, 17f
8:                jal          ra, 20f
9:                jal          s1, 23f
10:               jal          ra, 19f
11:               jal          ra, 5b
12:               jal          a2, 11b
13:               jal          s10, 16f
14:               jal          ra, 26f
15:               jal          t2, 21f
16:               jal          ra, 7b
17:               jal          a0, 27f
18:               jal          ra, 3b
19:               jal          ra, 6b
20:               jal          t4, 10b
21:               jal          t6, 13b
22:               jal          ra, 18b
23:               jal          s2, 12b
24:               jal          t1, 4b
25:               jal          t1, 14b
26:               jal          t1, 28f
27:               jal          ra, 8b
28:               xor          ra, t5, s6
sub_2_1:          jal          s10, 4f
0:                jal          gp, 7f
1:                jal          t1, 15f
2:                jal          a4, 3f
3:                jal          t1, 8f
4:                jal          ra, 11f
5:                jal          ra, 23f
6:                jal          ra, 14f
7:                jal          ra, 13f
8:                jal          gp, 9f
9:                jal          a3, 16f
10:               jal          gp, 18f
11:               jal          ra, 17f
12:               jal          t1, 26f
13:               jal          s11, 1b
14:               jal          ra, 22f
15:               jal          t5, 25f
16:               jal          a6, 20f
17:               jal          ra, 6b
18:               jal          t1, 5b
19:               jal          a6, 24f
20:               jal          gp, 21f
21:               jal          ra, 0b
22:               jal          a1, 2b
23:               jal          ra, 12b
24:               jal          ra, 10b
25:               jal          t1, 19b
26:               srl          t2, a2, zero
sub_2_3:          jal          s10, 3f
0:                jal          ra, 14f
1:                jal          t6, 13f
2:                jal          t2, 0b
3:                jal          s11, 4f
4:                jal          t1, 6f
5:                jal          ra, 12f
6:                jal          t1, 10f
7:                jal          t1, 18f
8:                jal          a3, 5b
9:                jal          a1, 17f
10:               jal          ra, 8b
11:               jal          t1, 1b
12:               jal          s7, 15f
13:               jal          s6, 16f
14:               jal          gp, 9b
15:               jal          ra, 11b
16:               jal          ra, 2b
17:               jal          ra, 7b
18:               slli         s9, gp, 22
                  sub          a6, a3, s8
                  beq          s0, s11, 12f
                  bne          s1, a3, 11f
                  addi         t2, s4, -1849
                  add          t6, s0, s6
                  auipc        t0, 39465
                  andi         s4, a7, -1878
                  srli         t5, t0, 15
                  sra          gp, a0, s7
                  and          s9, s5, s0
                  nop
11:               ori          a0, s9, -746
12:               lui          gp, 168016
                  auipc        s3, 556670
                  addi         t1, t0, 229
                  blt          a5, sp, 16f
16:               lui          tp, 342038
                  andi         t1, s11, 999
                  srli         s2, s11, 23
                  slt          a1, a6, a1
                  addi         s2, t2, 2018
                  lui          tp, 361444
                  srl          s9, a1, t4
                  sub          s11, t5, s9
                  xori         s6, t4, 1550
                  srli         a5, s2, 3
                  slli         t1, t2, 30
                  srai         zero, sp, 15
                  xori         s2, s5, 1105
                  slti         t2, t2, -770
                  slti         a0, s6, 1795
                  auipc        a4, 869991
                  bge          a3, s0, 52f
                  slti         t3, tp, 1215
                  bge          ra, s11, 52f
                  sltu         t4, s1, t5
                  xori         s1, t0, 575
                  sll          t5, s4, s11
                  slti         a3, s6, 676
                  or           a2, t6, a6
                  andi         tp, s1, 214
                  xor          zero, s6, s7
                  bge          t0, s6, 61f
                  add          a7, s0, t2
                  nop
                  bltu         s6, t0, 64f
                  srli         t4, t2, 11
                  bgeu         s5, t3, 48f
48:               srli         a0, t2, 25
                  add          a6, a7, t2
                  slt          s9, t6, s9
                  beq          gp, t0, 59f
52:               srai         s4, a5, 4
                  xor          t3, s8, s9
                  or           s6, s10, s2
                  ori          a0, a5, 708
                  blt          s10, s2, 60f
                  xor          t1, s7, t5
                  sra          a7, t3, s6
59:               andi         tp, t3, -783
60:               auipc        t1, 1032055
61:               add          s8, t6, s2
                  srli         t4, t5, 23
                  sra          s11, a4, s1
64:               bgeu         t1, t4, 72f
                  slli         s3, t1, 24
                  sll          a1, a6, s10
                  sltu         s2, s10, s9
                  bgeu         gp, s1, 77f
                  beq          s3, s0, 88f
                  andi         ra, s3, 1790
                  nop
72:               bne          gp, ra, 90f
                  bltu         a7, tp, 75f
                  bne          s6, s4, 77f
75:               add          zero, a3, s7
                  sra          a6, a0, tp
77:               sltiu        s3, a2, -2032
                  sltu         gp, sp, a5
                  nop
                  srl          a4, s4, s2
                  bgeu         a6, s6, 89f
                  sub          s1, ra, s11
                  lui          s10, 116678
                  sll          a3, t1, s10
                  bgeu         a5, a5, 104f
                  lui          s11, 1018764
                  slt          t1, t3, a3
88:               sll          s11, s2, a4
89:               bltu         s9, t2, 101f
90:               xor          ra, s0, t0
                  and          s1, t4, sp
                  sub          a3, s3, a6
                  bne          s9, t2, 102f
                  addi         s9, s11, -859
                  bgeu         t3, t1, 104f
                  auipc        a2, 870379
                  bltu         a5, t3, 114f
                  add          a5, t6, a3
                  srai         s8, t0, 6
                  slt          t4, a2, gp
101:              or           s7, a6, s10
102:              bne          a4, s9, 117f
                  andi         a5, s11, -296
104:              auipc        zero, 697821
                  slli         t4, t4, 8
                  srai         t3, a5, 7
                  ori          s1, tp, 1203
                  sltiu        s3, s7, 1030
                  srli         a7, s10, 25
                  srai         t1, s11, 28
                  srl          a5, s7, a3
                  bne          s7, a5, 125f
                  ori          t6, s10, 1753
114:              srli         s9, s4, 25
                  nop
                  bltu         s8, s6, 124f
117:              sra          a7, a1, a5
                  lui          s2, 294711
                  sltiu        t0, zero, -1284
                  addi         t5, t0, 58
                  nop
                  blt          t2, s3, 142f
                  beq          sp, a2, 139f
124:              sra          gp, ra, a3
125:              ori          s9, t1, 487
                  sub          a7, t4, a0
                  bltu         s6, s10, 131f
                  sltu         t1, a0, a6
                  bne          s1, a3, 149f
                  blt          a6, s7, 131f
131:              srai         s11, s8, 12
                  bne          zero, s5, 143f
                  srai         a3, a5, 30
                  sub          zero, s3, a0
                  sll          s7, s5, a2
                  slti         t5, a4, -1062
                  sub          tp, a7, a3
                  addi         a0, t2, 914
139:              xori         s2, s7, -1570
                  sub          zero, sp, a3
                  bgeu         a4, t3, 159f
142:              sra          s6, t0, s0
143:              xor          t3, s2, s0
                  sltu         s10, a4, s8
                  xor          a4, s11, a3
                  lui          a1, 983025
                  auipc        tp, 475838
                  nop
149:              sra          s3, s3, a3
                  sra          s8, s6, t2
                  or           s4, s8, a2
                  slli         a4, s4, 23
                  srl          s9, a5, s7
                  beq          a6, t6, 156f
                  srli         s3, s5, 0
156:              xor          s1, s6, t6
                  sll          gp, sp, a1
                  sltu         a0, t1, t4
159:              nop
                  xori         a5, a6, -1275
                  srl          t3, a2, t1
                  xor          zero, a6, a7
                  ori          s7, s5, 372
                  or           t3, t5, s5
                  xor          a4, s3, a6
                  bgeu         t5, a4, 167f
167:              srli         s11, t5, 22
                  beq          t1, s4, 183f
                  sll          zero, a2, s9
                  srl          t4, gp, gp
                  or           a4, s9, t2
                  srli         s3, a1, 15
                  blt          a1, gp, 193f
                  and          s7, s9, a2
                  nop
                  sra          t6, s5, t0
                  auipc        a5, 1043607
                  sll          s4, t5, t3
                  or           a7, s5, ra
                  lui          zero, 1020382
                  srai         s9, s1, 2
                  sub          t0, ra, s2
183:              sub          gp, ra, a2
                  andi         a5, zero, 500
                  andi         s8, a6, 1843
                  lui          a5, 801843
                  addi         t5, a0, -229
                  bltu         ra, a6, 197f
                  ori          s8, s11, -158
                  sltu         a1, a6, s4
                  beq          a3, s5, 199f
                  bne          s9, ra, 193f
193:              xor          tp, gp, tp
                  xor          s3, a5, ra
                  lui          s11, 164053
                  or           t4, a3, s10
197:              ori          t3, s10, 363
                  xor          s4, a2, s7
199:              sub          s6, s9, a7
                  slti         s6, tp, 1369
                  lui          a1, 920959
                  sra          a1, tp, a1
                  and          tp, a0, zero
                  auipc        t5, 26047
                  bltu         s11, t6, 214f
                  addi         ra, a5, 369
                  xor          ra, a7, s0
                  slli         tp, t6, 21
                  sltu         t1, s5, ra
                  sub          t4, s4, s7
                  ori          zero, t0, 59
                  slti         a7, t6, 1956
                  srli         zero, tp, 12
214:              beq          s1, t6, 217f
                  srai         s10, t1, 20
                  bne          a0, zero, 236f
217:              add          s2, a7, s9
                  sra          t4, t2, s4
                  xor          s3, t4, t4
                  sra          s2, t1, s2
                  auipc        a0, 767341
                  addi         t3, t2, 330
                  ori          s6, t4, 912
                  sra          s8, gp, s9
                  xori         s2, s8, -1220
                  add          s4, a1, t2
                  xori         a4, a3, 1553
                  and          t1, s9, s9
                  nop
                  nop
                  andi         s10, s11, 1058
                  add          a0, t0, t6
                  sltiu        s9, t6, -866
                  or           s7, s1, s8
                  sltu         a6, s8, a1
236:              bgeu         t6, t5, 248f
                  slli         s2, sp, 23
                  or           t4, t6, s1
sub_2_4:          jal          s10, 4f
0:                jal          ra, 13f
1:                jal          ra, 16f
2:                jal          t1, 12f
3:                jal          ra, 0b
4:                jal          gp, 19f
5:                jal          a6, 24f
6:                jal          ra, 7f
7:                jal          t1, 18f
8:                jal          ra, 17f
9:                jal          ra, 2b
10:               jal          t2, 5b
11:               jal          ra, 22f
12:               jal          ra, 25f
13:               jal          ra, 26f
14:               jal          t1, 10b
15:               jal          s2, 28f
16:               jal          ra, 11b
17:               jal          s6, 15b
18:               jal          s11, 21f
19:               jal          ra, 14b
20:               jal          t3, 23f
21:               jal          ra, 3b
22:               jal          s8, 27f
23:               jal          ra, 8b
24:               jal          t1, 1b
25:               jal          gp, 6b
26:               jal          s8, 20b
27:               jal          ra, 9b
28:               sltiu        a3, t0, 1996
                  nop
                  sll          s2, a0, s3
                  sll          zero, a5, s0
                  addi         t6, s5, 657
                  bne          t6, s7, 259f
                  sub          a6, a7, a5
                  bltu         s8, a0, 263f
                  addi         s1, t4, -745
                  or           s2, a7, s7
248:              add          a4, t2, s10
                  beq          a6, a4, 268f
                  nop
                  sra          s9, s6, a6
                  srl          a5, a5, t6
                  beq          a7, s5, 272f
                  auipc        s10, 195518
                  bge          s3, a6, 256f
256:              bne          s6, s9, 264f
                  addi         s4, a2, -986
                  or           a5, s6, t1
259:              sll          a3, s11, s10
                  andi         a0, a6, -1636
                  sub          s8, t6, s8
                  nop
263:              addi         s9, a6, -1205
264:              auipc        t1, 970011
                  bgeu         t0, a3, 285f
                  addi         s3, t6, 1175
                  srai         ra, s6, 21
268:              auipc        t2, 508830
                  nop
                  xor          t3, s11, t5
                  xori         t0, t6, 524
272:              bltu         t3, s2, 280f
                  blt          gp, zero, 282f
                  slli         ra, s3, 22
                  bge          t3, tp, 288f
                  auipc        zero, 165295
                  nop
                  or           zero, zero, s5
                  lui          s2, 324740
280:              xor          t1, s0, s4
                  slli         a1, ra, 11
282:              bgeu         gp, s1, 286f
                  add          t0, s11, a7
                  srai         zero, a7, 12
285:              beq          t4, s5, 291f
286:              add          s2, a3, a0
                  sll          a2, t0, s0
288:              or           t5, s5, a0
                  bne          s4, a0, 291f
                  bne          s2, t3, 291f
291:              auipc        a4, 772980
                  addi         s9, s2, 2009
                  lw           s10, 4(s0)
                  sltiu        a1, s6, -1988
                  sltu         t5, s2, a4
                  addi         s0, s0, 36
                  auipc        s7, 228513
                  sub          a0, zero, a7
                  sll          t1, s8, a6
                  sltu         a5, s9, t5
                  sltu         a4, s9, a7
433:              addi x6, x26, 1
433:              jalr x6, x6, 0
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
.word 0xb582e95c, 0x5efeb353, 0x0996bad1, 0xfc968dfa, 0xb2141ea9, 0xfc2f9ee3, 0x924877c2, 0x158f556a
.word 0x822fc69c, 0xb239f013, 0x940b1ba3, 0x62f553fb, 0x5c777976, 0xf2b4e4f1, 0xb3b09d5c, 0xd6b9288d
.word 0xe0539224, 0x23e527df, 0xe554a1b9, 0x93ca0817, 0xe1f2452a, 0x0c06bb01, 0xba293ddf, 0x998a99f6
.word 0xe587501e, 0xc19d95ff, 0x74898725, 0x3eb93490, 0xda919c1e, 0x120d4977, 0x5b951a4c, 0x17e098d5
.word 0x7d97d63e, 0x8779b16b, 0x461efa26, 0xecc58124, 0x0c4a485b, 0xd710fee6, 0x2ba26430, 0x58e8cd4d
.word 0x4182e467, 0xe00d525b, 0xc51118e6, 0xd252fdd2, 0xd8e4ab1f, 0xcd45dfc1, 0x9deaa7aa, 0x347f3e2b
.word 0x12fb17c7, 0x08335ea0, 0xd36ce379, 0xcd2f3565, 0x30acb164, 0x67fd0444, 0x4764376e, 0xa337a147
.word 0x66b29947, 0xe8f618ea, 0x2caef903, 0x426ec276, 0x2d13adf9, 0x364d76a5, 0xfd7631bf, 0xe15d3529
.word 0xa2464557, 0xad619d6b, 0x836eaf1f, 0x485886d6, 0x60b4c7fe, 0x6e8eed87, 0x8966bdec, 0x84ff1081
.word 0x4eaa26cd, 0xff4dff9e, 0x75e52846, 0xe16dba16, 0xe441b268, 0xb95a92c1, 0xc37a2d45, 0xdc3728b3
.word 0x3b1fd2ce, 0x3912aa42, 0xc933b2b1, 0x1c273c74, 0x3ee8995f, 0xb99db68c, 0xd1919128, 0x06383f5f
.word 0x75be5091, 0x6cabdec4, 0x211454d6, 0x6519e843, 0x72036902, 0x1a422111, 0xe43f73a8, 0x79725bdf
.word 0x62c83f3e, 0xeddd45af, 0xe5f4b6f5, 0x3fbcfc39, 0x15a27371, 0xb8e7422f, 0x1cb08ff8, 0x9360ac83
.word 0x263826ef, 0xab51e105, 0x48606248, 0x872c2eaf, 0xa7e58ea9, 0xa5a54e09, 0x4949c05f, 0x351ee062
.word 0xdc7932d3, 0x903b9a73, 0x9dd341f8, 0x18ffb951, 0xe517dda8, 0xd5ee9e2c, 0x52c3e95c, 0x43ca6930
.word 0xcf636109, 0xfdecbb82, 0x6a57f9a1, 0xe08eb655, 0x643af3eb, 0x82e8e0c8, 0x5c94f61c, 0xe4b11d4d
.word 0x49c9dd29, 0x9a5ba85e, 0x1d4a304e, 0x07ef73a6, 0xe76c99b8, 0xea28037b, 0xac6c9928, 0xb545ba16
.word 0x9c301b64, 0x0dcb4aef, 0xade6546c, 0xba18eab9, 0x1d2fb8dd, 0x3c4fad15, 0x36c04320, 0x00c644a2
.word 0x20e32c29, 0x5cfd8894, 0x94576f52, 0x2bd029df, 0x02c9a7af, 0x066112f1, 0x66b16c01, 0xbde37836
.word 0x11855700, 0x7ab5e031, 0xc7f5b813, 0xeaa4161c, 0x498622e9, 0x7ab2c540, 0x5c59f1fd, 0xfc5be44d
.word 0x47b422b8, 0xad14aca3, 0x7d4c26ce, 0x209791a3, 0x9e57de58, 0x29d005c0, 0x1e2500b9, 0xbc2917dc
.word 0x4cc81cdd, 0x969001a2, 0x88fc7ce2, 0x4bf27d18, 0x3e89663c, 0xec50eafd, 0xda94d965, 0x17f2c5e6
.word 0x3be64d4c, 0x7d908e59, 0xf7b27cf0, 0xcb1891ea, 0x22bae9ef, 0xbb0af629, 0x7b0680a7, 0xc0c28130
.word 0x9cea660d, 0x0a1aa3a0, 0xeeec3897, 0xad1e1f33, 0x2d143cc6, 0xc0b598ab, 0xd9806e49, 0x3515d6f9
.word 0x6201ff4b, 0x0838f33f, 0x3e05d759, 0x70771857, 0x088c970d, 0xabf7e881, 0x7173f6bb, 0x95843bd8
.word 0x1eea82f8, 0x016c0aa8, 0xeb128336, 0xf04302f9, 0x9e01e34c, 0xf164b732, 0x996b5909, 0x6f80fe0b
.word 0xa7d410a6, 0xdb6f4227, 0xf6196003, 0xc06ea539, 0x1128fe9b, 0x417069d4, 0xa50d1e74, 0xe564ddb2
.word 0x863daaff, 0xd0cb1315, 0x9e7e7514, 0x19958a35, 0x5e88fd51, 0xffdc4333, 0x71781fc6, 0x256490d9
.word 0xfab0057e, 0x94c660d8, 0x507f2c1a, 0xb29c3f6e, 0xe7974819, 0xab23a751, 0x07407d6f, 0x466e5421
.word 0xd7c65fc9, 0x5d37384b, 0xe0dddd62, 0x496a22a7, 0x25b59ccd, 0x0c9c2b1a, 0xb5e422d8, 0xacedd203
.word 0x998f0257, 0xe4990b17, 0x50d5913a, 0x41dafc61, 0x219401f6, 0x3e8cd8c2, 0xd6a046e1, 0xdbec1e78
.word 0x5b918a8e, 0x89efc6f3, 0xd218f93c, 0xf6c9ee8f, 0x2ead7673, 0x30155679, 0x84b6e07b, 0xa8ea9d0c
.word 0x98193871, 0xec911cd7, 0xbcf0077a, 0x5926eaa2, 0xf8e5d6b8, 0x9dbe2a7c, 0xb28a19f3, 0x64b6a485
.word 0xba9ec7f9, 0x791f17e2, 0x5d58a76e, 0xc5582f65, 0x0af6d24b, 0x3e0bef71, 0x2d56f798, 0xbe43cf12
.word 0xea2d8a95, 0xb1d5cccf, 0x06e85e0c, 0xa1313453, 0x5e88ab5d, 0x1e2ec97c, 0xaf2ed658, 0x8f51b31a
.word 0xa2529eb6, 0x659122b0, 0x868bf193, 0x16bc7ab4, 0x8d0f9d25, 0xc42309c2, 0xd070d10f, 0xf5edc8fa
.word 0xfe561d60, 0x83a5a405, 0x3cd1f83e, 0x276b1aa3, 0xe39d603d, 0x1ee7b1a9, 0x492aafd0, 0x97700845
.word 0x93089c77, 0x001c242f, 0xddf1972d, 0x4b365376, 0x3ce7f13e, 0x929e25b8, 0x896ea020, 0xec72ff47
.word 0xfeba7551, 0x05fa4093, 0x13647967, 0xf6ae4b6e, 0x21b63270, 0x32224f64, 0x7ffb5694, 0x680c97ce
.word 0x2da25055, 0x32d91331, 0x72a9058f, 0x5499e1be, 0x42fa0c40, 0x7f71cf56, 0x854c48ed, 0xf0de1c31
.word 0xdbc553af, 0xefdcd4c0, 0xd5a0ed21, 0xca082391, 0x4d9ce199, 0x343aba0a, 0x5ba4206c, 0x6384e9cc
.word 0xc6b7ad02, 0xa0a4d55e, 0xc75899e9, 0xe4d5fd1e, 0x4db4f618, 0x90626995, 0x1f12a3b5, 0xc10d1418
.word 0x25ef8703, 0x595d70b1, 0x9c4a3567, 0x5d4f1186, 0xb39dc475, 0x2c6085bd, 0x0932493b, 0x9ee14fba
.word 0xc73424eb, 0x1b0b72e3, 0x73456fff, 0x5f09fe9e, 0xfc96a3c8, 0x6c9db183, 0x87d6cebc, 0x0a6a5166
.word 0x373726d8, 0xfa29e9cc, 0x6ecadf16, 0x3867f905, 0x516da4be, 0x6ec59e06, 0x5603b74e, 0x36f565bb
.word 0xc96a76fa, 0x7b2a8c83, 0x313b293e, 0xbdfbea47, 0x66c135b1, 0xca8c3e4c, 0x76766b8c, 0x46fe0c22
.word 0x21a7f0f7, 0xf9a88e7b, 0xd772fdc7, 0x5dc0bca1, 0x9fac2f75, 0x1729088e, 0x13b6cf07, 0xbaf8e753
.word 0x832e01bb, 0xead527e2, 0x6b6186f5, 0x39016742, 0xf5a6eaef, 0x8c5c0450, 0xb6f5498b, 0x21462d0b
.word 0xe51ef479, 0x299ef910, 0xc5ed5175, 0xafabfbc6, 0x272b4467, 0x3fa7f10f, 0xb0294550, 0x70492835
.word 0xf7d7a424, 0xda02049b, 0x839abf6a, 0x63a7b213, 0xa0247be7, 0x6a56e8e4, 0xdc36abc9, 0xf9feddc2
.word 0x8179fc64, 0xd6cc463e, 0x07ad44ab, 0x001266d5, 0xc326cd58, 0x04e9be90, 0x65a7f0c5, 0x390d2ca8
.word 0x4bd680fd, 0xe61c5ceb, 0x5af7ab9b, 0xffbac638, 0xfecd6e16, 0x5b62c60b, 0x968137d6, 0xd0b8fede
.word 0xdbbfe8f4, 0xd93910f9, 0x9d6dd8bc, 0x009d4db3, 0x66ba8200, 0x5989e92f, 0x913cf8c5, 0xd2188222
.word 0x3c72e552, 0x7788f77d, 0xdf755b5e, 0x39e01f9d, 0xf1b60f73, 0x8ff11dde, 0xe98c435b, 0x10af3725
.word 0x25fda24c, 0xfb56b4b8, 0xeb736cf9, 0x1da73e52, 0xeb2c5edb, 0x69071bf3, 0x16b4ee97, 0x69be60a7
.word 0x935bdeea, 0xa31e5004, 0x8ddbcc7c, 0xd1f97323, 0x8e4ed1ca, 0xf9c4755d, 0xc92aed8c, 0xfcd2dc61
.word 0x4949858a, 0xc31cf647, 0x6e619974, 0x67a4e086, 0xdd3d3b22, 0x62abb07f, 0xe035049b, 0x47ed82f5
.word 0xb6029cc6, 0x85bc0ee0, 0x504420f3, 0x9ef86acd, 0xcef5e520, 0xf7484d5e, 0x23c02274, 0x2c074d7e
.word 0x74eeb020, 0xc32603b6, 0x4d7d92b9, 0x150911a0, 0x1a8c3393, 0xf93ca535, 0x4381df30, 0x71865a4c
.word 0x4f66a7e2, 0x6f145005, 0xc9493d6c, 0x96a4d0ba, 0x4ea14dc0, 0xef6473f9, 0x6b2ffa26, 0x17d099f4
.word 0x98e04a18, 0x47f865bb, 0x2ef54463, 0x017f9c13, 0x4cc69733, 0x0c153bba, 0x0b76ed43, 0x40344989
.word 0x44495c97, 0x0186a639, 0x0188e4f6, 0x450b139a, 0xf0f4a774, 0x1445976b, 0x4ca7d67e, 0x730aea2d
.word 0x8bff3829, 0x93c8db55, 0x12cf0f0f, 0x8b7d436b
.section .region_1,"aw",@progbits;
region_1:
.word 0xd4cf8f63, 0xea68275a, 0x5193443c, 0x6942a03e, 0xeeaf0638, 0xdf1f3e60, 0xe67887a8, 0x2bab5a75
.word 0x423bd02d, 0xd0b99c7d, 0x45c23c08, 0x08f4c2e8, 0x4da0c339, 0x6c372cbe, 0xda14e299, 0x5fa3a1b0
.word 0xd49209ea, 0xaddf338e, 0x81ef2036, 0x1bb8c340, 0x115098cb, 0xe9f1126c, 0xa9485db4, 0x3ddf62cc
.word 0xf9cf07e1, 0x9af3bd45, 0x1ddb3f2f, 0x5b217a10, 0xac1cc579, 0xe5f3972e, 0x431222ae, 0x30822266
.word 0xae652053, 0x4c5a8866, 0x633ade23, 0xcf2fc087, 0xa01b6e8b, 0x667d9f76, 0x18001d59, 0x441167a0
.word 0xadaeb084, 0xed2183ef, 0x54299570, 0x48e03c38, 0xa1c060c9, 0x311c25b6, 0x0259ab3d, 0x3e9ca9a4
.word 0xd087dc98, 0x3fe143bd, 0x2f2004fa, 0x5e59b018, 0x09e9eb93, 0x44eeb670, 0xd1aed10e, 0x19efd84e
.word 0x1ca7d903, 0xef9fa582, 0xb29f45ba, 0x3da2833f, 0xe5194365, 0x19c077bb, 0xfa7ebe71, 0xdeec7ade
.word 0xe4862e7f, 0x4f995a27, 0x0b36bbd4, 0xa43dbb61, 0xdb6c96e8, 0xcf624324, 0xbe11082f, 0x6e40884f
.word 0xac869a13, 0x9c7f4ba3, 0x4f5e4c93, 0xdfc9e7e4, 0xf6a7ef2e, 0xe5a7e631, 0x7e01db17, 0xc2fa89f6
.word 0xf1878cf5, 0xb31508df, 0x63687b65, 0xa91b0556, 0xeb779021, 0xa2ca2f15, 0x2c4d76d7, 0xef5c238a
.word 0x9e646af4, 0xcea5c4c5, 0x3fe13ed4, 0x98455c04, 0x3f74a248, 0x1772e61a, 0xb91eac64, 0x5cb7c0b7
.word 0x421d1a78, 0xf03c0eb9, 0x2e7cb5bb, 0x829bef8b, 0xa97a139f, 0x9c23cc8f, 0x6d3beb20, 0x655b3176
.word 0x516b0f21, 0x50c77e4f, 0x3efe49a0, 0x8143413d, 0x1365bfd6, 0x9152c327, 0x3a932e37, 0xd775b982
.word 0x4bace2d2, 0x0ae02c37, 0x70b180ed, 0xddaa1e95, 0x128dcd0a, 0xb53733bf, 0xafe7dfd1, 0x01e491fe
.word 0x28e46371, 0x9eeda7b2, 0xa73d2d3e, 0x3c4812c1, 0x7e0e72b8, 0x3b96ae41, 0xd5f0aced, 0x500999ac
.word 0xb9e57c60, 0x50032a6e, 0xc3a552a1, 0xd417d3d6, 0xd317c3c4, 0x64965b16, 0xe457c9d4, 0xb0ce04bb
.word 0xce7af7c5, 0x2f99938d, 0xb825458e, 0x09194406, 0x2da5f93c, 0xd8c88670, 0xce637159, 0x2b2dc1aa
.word 0x583b424d, 0x8748bf1c, 0xc6619b8e, 0x137bc9f8, 0x9ed2501e, 0x60b3dff8, 0xc2fb1842, 0x81edf925
.word 0xd4f38e08, 0xacb5835f, 0xdd92c765, 0x067bea58, 0x708f0f11, 0x41cfc949, 0x1705eae7, 0xf5163329
.word 0x5f719aad, 0x6cd43d10, 0xe895a8f7, 0xc7e2d298, 0xa63ddc83, 0xdd9ae8ac, 0x5aa5a7cc, 0x89f20687
.word 0x41b58bd6, 0xd40c5830, 0x5c45ab26, 0x8beb6081, 0x0bfa0f9e, 0x62004a8d, 0xa2cdd650, 0xd844a325
.word 0x4a4aa0c5, 0x5836cbbc, 0xa63b9d05, 0xb5a73229, 0x438529b8, 0xcc63ecb6, 0x364e0027, 0xb5f3ffd8
.word 0x8bcf965e, 0xb7e74604, 0x3125f73c, 0x8350a6f0, 0x640e47bc, 0x227b48ea, 0x1fa0fb4b, 0xcd22a36f
.word 0x81cf892b, 0x35c099a5, 0x99545ca8, 0xd0b117fa, 0x472004b9, 0x52424601, 0x873d77fb, 0x6f566c86
.word 0x67e00f01, 0xa8afa4a5, 0xf57fdda5, 0x1e18767e, 0xc8fd43b1, 0x809f101e, 0xdb2ccc8e, 0x86bd518e
.word 0xd64a99e4, 0x296ba74b, 0xe937d683, 0x045c7533, 0x5ff74435, 0xefedc922, 0xa59f731f, 0xb61924d3
.word 0xac54e1b7, 0x0f1d3d95, 0x8f0cf3d0, 0x45aeb6b0, 0x97e26961, 0xa9ba5875, 0xf4463d12, 0x0c6212ea
.word 0x47f351d9, 0x176e5cd2, 0x6d4d9d63, 0x6b099492, 0x8d989098, 0x3b1065a0, 0xfc062fa8, 0xf8c0516f
.word 0xfd49f173, 0xd456ef06, 0xe5d3d527, 0x73c32078, 0xade71cf5, 0xd7e09700, 0x465a62f6, 0x0e02b502
.word 0xb8d93b1e, 0xe1ff03f2, 0xd1e2bee3, 0x05565a95, 0x860fe135, 0x99fc34f9, 0xce399b46, 0x806e7d9a
.word 0xb1e5d7f5, 0xbc018e3f, 0x728fb919, 0xfca78120, 0x2d209f31, 0x5eb20eef, 0xff25504e, 0xbf24dab2
.word 0x5cffaded, 0x42a58c32, 0xec70f93a, 0x5bfd2faa, 0xc8a39fed, 0x373712cd, 0x7f58711c, 0xdbd6ebda
.word 0xb234b84a, 0xb67fa7cd, 0x6bd0183b, 0xc5527860, 0x46144efe, 0x817e4310, 0xe0ff7ff6, 0x2d230732
.word 0x23f5d191, 0x9d43982b, 0x2cc4cc00, 0xc99a10fc, 0x8e7ebd23, 0x91836a83, 0x7f5d7bbb, 0xa47b513c
.word 0xf4209179, 0x020f58ef, 0x516e663d, 0x635601e7, 0xd78c5517, 0x9bae9eb2, 0xfef5533e, 0x66a8b562
.word 0x1f42ea20, 0xecfb8f0b, 0xc0cbfdd6, 0xef574632, 0x91f49e60, 0xe1b0bdea, 0xdeaf8e47, 0x8268cc06
.word 0xa1811b2b, 0x72cbb43f, 0x7a472f0a, 0x005ae75c, 0x2283fafd, 0xac5f01c9, 0x274a3fd1, 0x473217f3
.word 0x255cb86b, 0xdcd6d0bd, 0xc916f62e, 0x2b126e7e, 0x48aaa8bc, 0x2195ddde, 0xfbca0924, 0x18a3031d
.word 0x09866b5e, 0xd3254d1c, 0xd8f6ad58, 0x9d51c420, 0x4816b1e8, 0xce69f2c8, 0x528dd261, 0xf0c1226d
.word 0xd2a8353c, 0x0b7df329, 0x67d9a5ca, 0xa7119fbb, 0xfe0f973c, 0x827f5980, 0x4439a38a, 0x6facd390
.word 0x698a3b3f, 0x194131b5, 0xbbfdff23, 0x4d5b2d80, 0x7c3ef4c6, 0x598bbd22, 0x3fe9e0e6, 0x0b9facb4
.word 0x7309c8f7, 0xc62aa4bd, 0xbc79fd0a, 0x58adcb91, 0x6c60c956, 0xf2315fcf, 0x6d5098b5, 0x6867b9d8
.word 0xa26b695b, 0xad10b3ac, 0xf6f0e5e4, 0x79a3d328, 0xe2138df1, 0x928e883e, 0xe3b59008, 0xaf4d963f
.word 0x8f37ad51, 0x90d3695d, 0xb25800f5, 0x40615753, 0xeba4d6b0, 0x4059b8d0, 0xf9379d0c, 0xfb1e36b7
.word 0x1c1b5bd5, 0x1a55dabf, 0x431011b7, 0x933f74f2, 0x4937f73a, 0x513e5cec, 0x3ff9b21a, 0xbaa2e286
.word 0x034203b9, 0x5864aa90, 0x8cd3eb4d, 0x0d565e9d, 0xdd56f41f, 0x8bfde24d, 0x45d0acf9, 0x1615a2d0
.word 0xb490155e, 0xd51a6c9a, 0x11c43f15, 0x8e4426c7, 0x54cca0fb, 0x0dbf3bd2, 0xf30e5005, 0xa738d6d2
.word 0xba6b70b9, 0x497cd976, 0x63c407d2, 0xc454423b, 0x484c4956, 0xae766f1b, 0x351a1006, 0xaaec39ee
.word 0x12b6346a, 0x185b49d1, 0x56cb7fd9, 0x68dc9ee6, 0xf715ff94, 0xfa13036c, 0x5d49e0ba, 0x53c97903
.word 0x47b0d034, 0x17afdbea, 0x36ededd7, 0x92e36866, 0x90d652d4, 0x11d48ac3, 0xfa0be56f, 0x42837fee
.word 0x868d0bce, 0x12508b5b, 0xa36bd196, 0xa3b96e48, 0x2f244156, 0xf9705a6a, 0x665e8494, 0x02da547c
.word 0x6b60436e, 0xfb97fc1a, 0xf40e22c7, 0xc8db372b, 0x7fe1de47, 0xeddda803, 0x7b4e42ac, 0x5c51e0e1
.word 0xa5ad85eb, 0x3a4fdb6b, 0x6404814e, 0x19450708, 0xae7f6981, 0xb0b684ac, 0xb34497e3, 0x5ccfff17
.word 0x360da20c, 0x30b2d745, 0x6c6ff6df, 0x45c73c92, 0xf335236b, 0x7b5ea49c, 0x87a0b8e0, 0x5e1c1ad2
.word 0x048e19ee, 0x9922c16f, 0x11cb81d4, 0x04e1ca60, 0xf7b51a04, 0xfdb33517, 0x1908f701, 0xfd538a1f
.word 0xec499769, 0x76b11add, 0x6d93f50f, 0x95f99e62, 0x7629cc29, 0x878a4666, 0x83ffa0a9, 0x555800f1
.word 0x293b9c15, 0x5edc0a9e, 0xc0a836c2, 0x8af7b314, 0xf0870c96, 0x6b1bdccc, 0x7aea84ab, 0x43364e1c
.word 0xb2b2d0db, 0x975ca8c2, 0x04281cd2, 0x405cc72d, 0xfea6f50e, 0x88d6d2e9, 0xaed9e313, 0xa7a97671
.word 0x12f22b42, 0x9a8e6540, 0x7eeb56c4, 0x5de3919a, 0xcd70aafb, 0x1f4d45f3, 0x3f8514f8, 0x505f48cd
.word 0x64e3be9c, 0xd51b78be, 0x1ce45ae6, 0xee9254ad, 0x5f5cb6ae, 0x099e8844, 0xdfceab88, 0x097ef69d
.word 0xf4f56068, 0x4d701756, 0x061f07e0, 0x3324acb2, 0xee3c5a6f, 0x142d0889, 0xdd1711c7, 0x4ba16b93
.word 0x6ae6e9f2, 0x7f17dde8, 0xa8057135, 0x95a7fb48
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
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
                  add x2, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x8, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x5, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x5, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x5, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x5, x24, ecall_handler
                  li x24, 0x1
                  beq x5, x24, instr_fault_handler
                  li x24, 0x5
                  beq x5, x24, load_fault_handler
                  li x24, 0x7
                  beq x5, x24, store_fault_handler
                  li x24, 0xc
                  beq x5, x24, pt_fault_handler
                  li x24, 0xd
                  beq x5, x24, pt_fault_handler
                  li x24, 0xf
                  beq x5, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x8, x2, zero
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
                  add x8, x2, zero
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
                  add x8, x2, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x8, x2, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x8, x2, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x8, x2, zero
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
