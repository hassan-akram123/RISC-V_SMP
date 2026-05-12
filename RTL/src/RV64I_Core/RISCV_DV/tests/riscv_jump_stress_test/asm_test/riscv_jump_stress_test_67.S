.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
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
                  li x0, 0x6
                  li x1, 0xff345c89
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xf89fd81e
                  li x5, 0x9b3a23e0
                  li x6, 0x5
                  li x7, 0x80000000
                  li x8, 0x8
                  li x9, 0x8252c8db
                  li x10, 0xf9a97611
                  li x13, 0x2d4a3086
                  li x14, 0x0
                  li x15, 0x1f7bd66c
                  li x16, 0xd
                  li x17, 0xf774f16d
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xfbc9ebee
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xa
                  li x26, 0xf0a70709
                  li x27, 0x80000000
                  li x28, 0x3
                  li x29, 0xfa709f89
                  li x30, 0x88b4826b
                  li x31, 0x88371bd9
                  la x11, user_stack_end
main:             la           s4, sub_1
                  sub          t4, a6, s3
                  addi         s4, s4, -673
                  andi         s0, gp, -879
                  srai         s2, gp, 5
                  addi         s10, s5, 1442
                  add          gp, s0, s4
                  auipc        a0, 1007701
                  slt          gp, s11, s5
                  nop
                  srai         gp, s4, 17
                  xor          a5, ra, t4
main_j2:          jalr         t3, s4, 673 #jump main -> sub_1
main_0:           jal          t3, 1f
0:                jal          s10, 7f
1:                jal          sp, 10f
2:                jal          t2, 20f
3:                jal          t1, 29f
4:                jal          sp, 0b
5:                jal          ra, 2b
6:                jal          a3, 13f
7:                jal          s11, 22f
8:                jal          ra, 16f
9:                jal          ra, 25f
10:               jal          gp, 18f
11:               jal          ra, 12f
12:               jal          t1, 14f
13:               jal          ra, 23f
14:               jal          ra, 3b
15:               jal          t0, 6b
16:               jal          ra, 19f
17:               jal          t1, 5b
18:               jal          t1, 11b
19:               jal          t1, 30f
20:               jal          ra, 24f
21:               jal          t1, 26f
22:               jal          ra, 28f
23:               jal          ra, 4b
24:               jal          s0, 21b
25:               jal          ra, 8b
26:               jal          ra, 27f
27:               jal          sp, 9b
28:               jal          ra, 17b
29:               jal          t1, 15b
30:               addi         a3, s2, 902
                  blt          s10, t1, 13f
                  addi         s2, s9, 766
                  and          zero, s1, s3
                  xor          t5, t1, a0
                  ori          t3, s1, -456
                  sub          a5, a4, s0
                  sltu         t2, a1, a2
                  ori          sp, s5, -1550
                  sub          gp, a1, t0
                  sll          s10, sp, s6
                  sltu         s7, a3, s10
                  slt          s3, a4, sp
                  sra          a3, s7, t4
13:               ori          s10, gp, -273
                  slt          a7, s8, t5
                  bge          s8, gp, 26f
                  sra          s8, a6, t3
                  ori          a5, a6, -1635
                  sra          t4, s6, s0
                  lui          zero, 565377
                  srl          s5, a0, s4
                  srl          ra, s4, t6
                  blt          s6, t6, 40f
                  xori         s10, s6, -1506
                  srli         zero, s0, 15
                  add          a0, s9, sp
26:               bltu         a4, t0, 29f
                  ori          sp, s8, 1097
                  sltiu        s9, a4, -1176
29:               or           sp, a6, s8
                  slli         s6, s10, 14
                  or           s7, a0, sp
                  lui          a4, 917820
                  beq          sp, gp, 48f
                  sltu         a5, s0, t0
                  xor          gp, t0, a0
                  nop
                  srai         a6, tp, 19
                  la           s0, sub_1
                  ori          s7, ra, 1709
                  or           s9, s11, a5
                  addi         s0, s0, -909
                  sra          t1, ra, s1
                  sltu         t4, gp, s5
                  sltiu        s4, t2, 430
                  sltiu        s6, a3, 813
                  slti         t4, s11, -47
                  beq          s8, s8, main_j1 #branch to jump instr
                  sll          s2, a1, tp
main_j1:          jalr         t3, s0, 909 #jump main -> sub_1
                  xor          s9, a4, sp
                  bge          s10, t3, 51f
main_1:           jal          t3, 11f
0:                jal          ra, 12f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          t1, 19f
4:                jal          gp, 9f
5:                jal          ra, 16f
6:                jal          t1, 2b
7:                jal          ra, 6b
8:                jal          s0, 1b
9:                jal          s0, 17f
10:               jal          gp, 0b
11:               jal          ra, 20f
12:               jal          t4, 15f
13:               jal          a6, 8b
14:               jal          t1, 13b
15:               jal          ra, 14b
16:               jal          s4, 7b
17:               jal          ra, 5b
18:               jal          t3, 4b
19:               jal          ra, 21f
20:               jal          t1, 18b
21:               nop
                  lui          s6, 449142
40:               bge          t1, t5, 53f
                  bltu         zero, s10, 45f
                  sll          t6, s10, a2
                  addi         a3, a1, 1105
                  sub          ra, t4, s1
45:               beq          t6, s7, 47f
                  bge          s2, s2, 52f
47:               add          t4, s2, a5
48:               sra          s10, s3, s10
                  beq          a0, t1, 67f
                  addi         t6, t2, -1494
51:               sra          a5, s6, a4
52:               slt          ra, s11, s0
53:               bne          tp, ra, 62f
                  bne          tp, sp, 56f
                  xori         t1, s0, -1064
56:               sub          s9, t5, t5
                  slt          s3, s0, s10
                  sltu         gp, ra, a7
                  bge          s8, sp, 63f
                  bne          s0, s2, 71f
                  add          a0, sp, s0
62:               bltu         a4, t6, 65f
63:               sll          s11, s9, a0
                  andi         sp, s11, 881
65:               nop
                  auipc        a7, 757222
67:               xor          s7, gp, t6
                  sltiu        s6, t2, -609
                  nop
                  srai         s3, s0, 1
71:               andi         a5, ra, -564
                  bne          s8, t6, 91f
                  ori          a7, s10, -53
                  ori          a0, s8, -1491
                  nop
                  add          t2, a5, gp
                  slli         s6, a1, 5
                  sub          s9, s4, s7
                  sll          s6, a1, t5
                  slli         s5, a2, 7
                  slti         a5, s6, -123
                  xori         a6, a1, 837
                  bgeu         s11, gp, 91f
                  slti         gp, zero, 1814
                  slt          a5, t1, t4
                  andi         s10, s0, 2023
                  nop
                  blt          a4, a2, 89f
89:               lui          s3, 577708
                  add          s9, t1, ra
91:               and          s1, t2, a1
                  andi         s0, s7, -924
                  bne          a4, a3, 99f
                  blt          a1, t4, 99f
                  and          s7, a5, t1
                  nop
                  slti         s5, s10, -2002
                  slti         ra, s9, 296
99:               ori          gp, s1, -620
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            beq          t2, t0, sub_5_stack_p
                  addi         s9, zero, -1291
sub_5_stack_p:    addi         a1, a1, -48
                  sw           t3, 4(a1)
                  xor          t2, s0, s6
                  slt          s3, a2, a2
                  xor          s5, s0, s9
                  sub          s1, s9, t5
sub_5_32:         jal          t3, 5f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          a6, 3f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          t1, 8f
6:                jal          ra, 4b
7:                jal          t1, 6b
8:                jal          s2, 9f
9:                jal          ra, 2b
10:               slli         t0, a3, 14
sub_5_17:         jal          t3, 2f
0:                jal          t0, 5f
1:                jal          t1, 12f
2:                jal          ra, 22f
3:                jal          t1, 11f
4:                jal          t1, 0b
5:                jal          ra, 14f
6:                jal          ra, 15f
7:                jal          ra, 21f
8:                jal          ra, 17f
9:                jal          gp, 19f
10:               jal          a0, 16f
11:               jal          ra, 26f
12:               jal          ra, 4b
13:               jal          ra, 6b
14:               jal          ra, 24f
15:               jal          ra, 10b
16:               jal          t1, 23f
17:               jal          t1, 9b
18:               jal          ra, 20f
19:               jal          ra, 25f
20:               jal          ra, 7b
21:               jal          t1, 8b
22:               jal          ra, 18b
23:               jal          ra, 1b
24:               jal          ra, 3b
25:               jal          ra, 13b
26:               sltu         a4, s9, t3
sub_5_8:          jal          t3, 5f
0:                jal          ra, 9f
1:                jal          t1, 18f
2:                jal          ra, 13f
3:                jal          s0, 2b
4:                jal          ra, 3b
5:                jal          ra, 17f
6:                jal          ra, 15f
7:                jal          s8, 10f
8:                jal          ra, 4b
9:                jal          ra, 19f
10:               jal          ra, 8b
11:               jal          t1, 14f
12:               jal          ra, 11b
13:               jal          ra, 0b
14:               jal          ra, 16f
15:               jal          ra, 7b
16:               jal          ra, 6b
17:               jal          t1, 1b
18:               jal          t1, 12b
19:               xor          s10, a4, tp
sub_5_21:         jal          t3, 27f
0:                jal          t0, 7f
1:                jal          a4, 12f
2:                jal          s8, 25f
3:                jal          ra, 15f
4:                jal          ra, 23f
5:                jal          t0, 14f
6:                jal          ra, 1b
7:                jal          t1, 29f
8:                jal          ra, 19f
9:                jal          t1, 0b
10:               jal          ra, 13f
11:               jal          t0, 3b
12:               jal          t1, 16f
13:               jal          ra, 22f
14:               jal          ra, 10b
15:               jal          ra, 4b
16:               jal          ra, 20f
17:               jal          ra, 24f
18:               jal          gp, 11b
19:               jal          t1, 18b
20:               jal          t3, 30f
21:               jal          ra, 26f
22:               jal          t1, 2b
23:               jal          t1, 9b
24:               jal          ra, 5b
25:               jal          a5, 6b
26:               jal          t1, 17b
27:               jal          t1, 8b
28:               jal          ra, 21b
29:               jal          ra, 28b
30:               srl          gp, a0, s9
sub_5_34:         jal          t3, 23f
0:                jal          ra, 5f
1:                jal          gp, 12f
2:                jal          ra, 19f
3:                jal          t1, 2b
4:                jal          s10, 13f
5:                jal          t1, 17f
6:                jal          s4, 8f
7:                jal          ra, 30f
8:                jal          ra, 20f
9:                jal          ra, 11f
10:               jal          ra, 26f
11:               jal          ra, 15f
12:               jal          a4, 25f
13:               jal          ra, 7b
14:               jal          t1, 3b
15:               jal          t1, 22f
16:               jal          t1, 18f
17:               jal          ra, 9b
18:               jal          sp, 0b
19:               jal          t1, 4b
20:               jal          ra, 29f
21:               jal          ra, 28f
22:               jal          s4, 6b
23:               jal          a7, 1b
24:               jal          a7, 21b
25:               jal          ra, 10b
26:               jal          t1, 27f
27:               jal          ra, 16b
28:               jal          s2, 14b
29:               jal          a7, 24b
30:               sltiu        s4, s5, -2035
sub_5_18:         jal          t3, 12f
0:                jal          t1, 20f
1:                jal          t1, 24f
2:                jal          s0, 9f
3:                jal          t1, 22f
4:                jal          ra, 3b
5:                jal          ra, 27f
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          ra, 25f
10:               jal          ra, 16f
11:               jal          t1, 17f
12:               jal          ra, 14f
13:               jal          a5, 8b
14:               jal          ra, 1b
15:               jal          ra, 19f
16:               jal          ra, 6b
17:               jal          t1, 13b
18:               jal          ra, 21f
19:               jal          ra, 11b
20:               jal          ra, 18b
21:               jal          a6, 23f
22:               jal          t2, 15b
23:               jal          t1, 7b
24:               jal          t6, 26f
25:               jal          ra, 0b
26:               jal          t1, 2b
27:               sra          a4, a7, s5
sub_5_26:         jal          t3, 4f
0:                jal          ra, 3f
1:                jal          t1, 11f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          sp, 7f
5:                jal          a3, 0b
6:                jal          ra, 2b
7:                jal          s2, 8f
8:                jal          ra, 9f
9:                jal          ra, 10f
10:               jal          sp, 6b
11:               or           s1, a7, a4
sub_5_14:         jal          t3, 19f
0:                jal          s0, 10f
1:                jal          t6, 24f
2:                jal          s8, 4f
3:                jal          s1, 1b
4:                jal          ra, 14f
5:                jal          t1, 3b
6:                jal          ra, 16f
7:                jal          ra, 8f
8:                jal          t5, 21f
9:                jal          gp, 25f
10:               jal          t1, 6b
11:               jal          ra, 15f
12:               jal          ra, 11b
13:               jal          s10, 22f
14:               jal          ra, 23f
15:               jal          t1, 20f
16:               jal          ra, 9b
17:               jal          t0, 18f
18:               jal          ra, 12b
19:               jal          t1, 17b
20:               jal          gp, 7b
21:               jal          ra, 5b
22:               jal          s3, 2b
23:               jal          ra, 26f
24:               jal          t0, 0b
25:               jal          s6, 13b
26:               slt          s0, s1, a5
sub_5_23:         jal          t3, 3f
0:                jal          t2, 28f
1:                jal          ra, 29f
2:                jal          t1, 10f
3:                jal          ra, 5f
4:                jal          ra, 25f
5:                jal          a7, 19f
6:                jal          ra, 1b
7:                jal          a5, 15f
8:                jal          t0, 24f
9:                jal          ra, 6b
10:               jal          t6, 4b
11:               jal          s5, 12f
12:               jal          t1, 14f
13:               jal          ra, 26f
14:               jal          t1, 16f
15:               jal          t1, 30f
16:               jal          ra, 0b
17:               jal          ra, 8b
18:               jal          a6, 9b
19:               jal          ra, 2b
20:               jal          ra, 13b
21:               jal          s9, 22f
22:               jal          t1, 7b
23:               jal          t1, 11b
24:               jal          t6, 27f
25:               jal          t1, 18b
26:               jal          ra, 17b
27:               jal          s3, 21b
28:               jal          ra, 20b
29:               jal          ra, 23b
30:               add          a3, s4, t6
sub_5_30:         jal          t3, 0f
0:                jal          ra, 8f
1:                jal          t1, 9f
2:                jal          ra, 7f
3:                jal          t3, 14f
4:                jal          t5, 10f
5:                jal          ra, 12f
6:                jal          ra, 11f
7:                jal          ra, 4b
8:                jal          t1, 6b
9:                jal          a6, 13f
10:               jal          t1, 5b
11:               jal          t1, 1b
12:               jal          ra, 3b
13:               jal          ra, 2b
14:               andi         t5, s4, 79
sub_5_3:          jal          t3, 24f
0:                jal          t1, 3f
1:                jal          ra, 19f
2:                jal          gp, 20f
3:                jal          sp, 26f
4:                jal          ra, 22f
5:                jal          ra, 4b
6:                jal          sp, 7f
7:                jal          ra, 2b
8:                jal          sp, 14f
9:                jal          t1, 17f
10:               jal          t1, 12f
11:               jal          ra, 1b
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               jal          a4, 6b
15:               jal          a3, 8b
16:               jal          ra, 5b
17:               jal          s6, 21f
18:               jal          ra, 13b
19:               jal          ra, 0b
20:               jal          ra, 25f
21:               jal          ra, 10b
22:               jal          t1, 27f
23:               jal          t1, 15b
24:               jal          ra, 23b
25:               jal          ra, 18b
26:               jal          ra, 16b
27:               addi         s11, s11, 554
sub_5_7:          jal          t3, 13f
0:                jal          t0, 6f
1:                jal          t1, 24f
2:                jal          ra, 7f
3:                jal          gp, 26f
4:                jal          t1, 22f
5:                jal          ra, 17f
6:                jal          ra, 25f
7:                jal          t1, 14f
8:                jal          ra, 10f
9:                jal          ra, 16f
10:               jal          ra, 11f
11:               jal          s6, 1b
12:               jal          ra, 23f
13:               jal          ra, 2b
14:               jal          t0, 5b
15:               jal          a5, 4b
16:               jal          ra, 21f
17:               jal          gp, 15b
18:               jal          ra, 0b
19:               jal          s10, 12b
20:               jal          t0, 18b
21:               jal          ra, 19b
22:               jal          ra, 20b
23:               jal          ra, 8b
24:               jal          ra, 3b
25:               jal          ra, 9b
26:               sra          a0, t1, s9
sub_5_37:         jal          t3, 3f
0:                jal          s5, 6f
1:                jal          sp, 2f
2:                jal          t1, 20f
3:                jal          ra, 18f
4:                jal          s8, 22f
5:                jal          sp, 16f
6:                jal          t4, 14f
7:                jal          ra, 4b
8:                jal          a6, 11f
9:                jal          ra, 17f
10:               jal          ra, 7b
11:               jal          ra, 5b
12:               jal          ra, 19f
13:               jal          ra, 23f
14:               jal          a5, 9b
15:               jal          ra, 12b
16:               jal          ra, 13b
17:               jal          ra, 10b
18:               jal          t1, 21f
19:               jal          ra, 0b
20:               jal          ra, 15b
21:               jal          t1, 1b
22:               jal          sp, 8b
23:               srl          a0, a4, t2
sub_5_35:         jal          t3, 11f
0:                jal          ra, 4f
1:                jal          t3, 9f
2:                jal          t2, 6f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          ra, 13f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          gp, 1b
9:                jal          ra, 10f
10:               jal          s8, 7b
11:               jal          a3, 12f
12:               jal          t1, 8b
13:               jal          ra, 14f
14:               sltu         s0, a5, a2
sub_5_5:          jal          t3, 13f
0:                jal          t1, 4f
1:                jal          s4, 22f
2:                jal          s8, 0b
3:                jal          t1, 6f
4:                jal          sp, 1b
5:                jal          a0, 9f
6:                jal          ra, 21f
7:                jal          ra, 26f
8:                jal          t1, 15f
9:                jal          ra, 23f
10:               jal          sp, 27f
11:               jal          ra, 10b
12:               jal          a3, 17f
13:               jal          s11, 20f
14:               jal          sp, 16f
15:               jal          ra, 19f
16:               jal          ra, 2b
17:               jal          t1, 11b
18:               jal          gp, 3b
19:               jal          t0, 12b
20:               jal          ra, 5b
21:               jal          gp, 25f
22:               jal          s9, 28f
23:               jal          t1, 7b
24:               jal          s8, 8b
25:               jal          ra, 24b
26:               jal          ra, 18b
27:               jal          ra, 14b
28:               srl          s6, s0, a3
sub_5_22:         jal          t3, 0f
0:                jal          t1, 4f
1:                jal          t5, 7f
2:                jal          ra, 5f
3:                jal          t1, 1b
4:                jal          sp, 9f
5:                jal          t2, 11f
6:                jal          ra, 19f
7:                jal          ra, 6b
8:                jal          ra, 16f
9:                jal          t1, 18f
10:               jal          ra, 13f
11:               jal          gp, 8b
12:               jal          ra, 14f
13:               jal          ra, 15f
14:               jal          t1, 3b
15:               jal          s3, 12b
16:               jal          gp, 17f
17:               jal          s0, 10b
18:               jal          a3, 2b
19:               andi         a4, s2, 1239
sub_5_2:          jal          t3, 15f
0:                jal          ra, 5f
1:                jal          s4, 18f
2:                jal          ra, 17f
3:                jal          t0, 11f
4:                jal          s0, 21f
5:                jal          t0, 7f
6:                jal          t0, 13f
7:                jal          ra, 1b
8:                jal          gp, 10f
9:                jal          ra, 19f
10:               jal          ra, 3b
11:               jal          ra, 6b
12:               jal          a5, 9b
13:               jal          s4, 14f
14:               jal          t1, 0b
15:               jal          ra, 8b
16:               jal          t1, 4b
17:               jal          ra, 16b
18:               jal          ra, 12b
19:               jal          ra, 20f
20:               jal          ra, 2b
21:               slti         t0, sp, -2026
sub_5_15:         jal          t3, 18f
0:                jal          s5, 12f
1:                jal          t1, 16f
2:                jal          ra, 20f
3:                jal          t2, 6f
4:                jal          ra, 19f
5:                jal          ra, 23f
6:                jal          gp, 10f
7:                jal          ra, 0b
8:                jal          sp, 2b
9:                jal          ra, 4b
10:               jal          gp, 11f
11:               jal          ra, 21f
12:               jal          t1, 17f
13:               jal          a0, 5b
14:               jal          ra, 7b
15:               jal          t0, 13b
16:               jal          ra, 8b
17:               jal          t1, 24f
18:               jal          ra, 15b
19:               jal          ra, 1b
20:               jal          a4, 3b
21:               jal          t1, 14b
22:               jal          t0, 9b
23:               jal          t0, 22b
24:               ori          a4, a1, 60
sub_5_19:         jal          t3, 4f
0:                jal          t1, 11f
1:                jal          a0, 2f
2:                jal          ra, 0b
3:                jal          t1, 10f
4:                jal          ra, 8f
5:                jal          ra, 12f
6:                jal          a4, 13f
7:                jal          ra, 1b
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          s0, 6b
11:               jal          s1, 5b
12:               jal          t0, 3b
13:               slli         gp, t0, 26
sub_5_6:          jal          t3, 11f
0:                jal          s9, 26f
1:                jal          t1, 18f
2:                jal          ra, 4f
3:                jal          gp, 1b
4:                jal          t1, 23f
5:                jal          s6, 25f
6:                jal          t5, 24f
7:                jal          ra, 20f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          s0, 22f
11:               jal          ra, 13f
12:               jal          ra, 21f
13:               jal          t1, 6b
14:               jal          gp, 19f
15:               jal          ra, 17f
16:               jal          ra, 14b
17:               jal          ra, 8b
18:               jal          ra, 15b
19:               jal          ra, 10b
20:               jal          t0, 12b
21:               jal          ra, 2b
22:               jal          ra, 9b
23:               jal          ra, 3b
24:               jal          ra, 16b
25:               jal          a3, 7b
26:               xor          s1, a1, sp
sub_5_24:         jal          t3, 4f
0:                jal          ra, 24f
1:                jal          t1, 16f
2:                jal          t1, 0b
3:                jal          t6, 11f
4:                jal          ra, 26f
5:                jal          t6, 13f
6:                jal          ra, 10f
7:                jal          t1, 19f
8:                jal          s11, 29f
9:                jal          ra, 28f
10:               jal          ra, 5b
11:               jal          t1, 12f
12:               jal          ra, 18f
13:               jal          t2, 25f
14:               jal          ra, 3b
15:               jal          ra, 14b
16:               jal          ra, 17f
17:               jal          ra, 8b
18:               jal          t2, 1b
19:               jal          ra, 9b
20:               jal          ra, 7b
21:               jal          a7, 20b
22:               jal          t1, 2b
23:               jal          t0, 27f
24:               jal          ra, 15b
25:               jal          t1, 22b
26:               jal          gp, 23b
27:               jal          ra, 21b
28:               jal          ra, 6b
29:               nop
sub_5_39:         jal          t3, 11f
0:                jal          ra, 25f
1:                jal          t0, 14f
2:                jal          t1, 16f
3:                jal          t1, 23f
4:                jal          ra, 8f
5:                jal          a0, 13f
6:                jal          a7, 20f
7:                jal          t1, 17f
8:                jal          ra, 2b
9:                jal          t0, 0b
10:               jal          t1, 6b
11:               jal          sp, 18f
12:               jal          t1, 4b
13:               jal          ra, 12b
14:               jal          ra, 19f
15:               jal          ra, 22f
16:               jal          t1, 9b
17:               jal          ra, 21f
18:               jal          ra, 7b
19:               jal          ra, 10b
20:               jal          ra, 5b
21:               jal          t1, 24f
22:               jal          ra, 1b
23:               jal          ra, 15b
24:               jal          t1, 3b
25:               lui          t4, 284769
sub_5_31:         jal          t3, 5f
0:                jal          ra, 13f
1:                jal          gp, 17f
2:                jal          a6, 4f
3:                jal          t1, 18f
4:                jal          t1, 15f
5:                jal          ra, 2b
6:                jal          t1, 10f
7:                jal          ra, 16f
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               jal          t1, 8b
12:               jal          sp, 14f
13:               jal          t1, 3b
14:               jal          a4, 6b
15:               jal          t1, 12b
16:               jal          a5, 1b
17:               jal          s3, 0b
18:               auipc        a3, 459553
sub_5_0:          jal          t3, 8f
0:                jal          ra, 9f
1:                jal          a0, 5f
2:                jal          ra, 11f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          a0, 4b
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          ra, 12f
12:               or           t1, s1, t5
sub_5_42:         jal          t3, 6f
0:                jal          t1, 8f
1:                jal          t1, 4f
2:                jal          t1, 7f
3:                jal          sp, 13f
4:                jal          gp, 12f
5:                jal          ra, 2b
6:                jal          t1, 11f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          s0, 1b
10:               jal          s7, 9b
11:               jal          ra, 10b
12:               jal          t1, 0b
13:               or           s9, s10, a2
sub_5_10:         jal          t3, 15f
0:                jal          t1, 8f
1:                jal          ra, 5f
2:                jal          ra, 11f
3:                jal          ra, 16f
4:                jal          ra, 22f
5:                jal          ra, 9f
6:                jal          ra, 0b
7:                jal          sp, 17f
8:                jal          ra, 4b
9:                jal          s6, 19f
10:               jal          ra, 3b
11:               jal          t3, 6b
12:               jal          t0, 1b
13:               jal          ra, 7b
14:               jal          s9, 20f
15:               jal          t0, 23f
16:               jal          ra, 24f
17:               jal          sp, 12b
18:               jal          t1, 21f
19:               jal          ra, 14b
20:               jal          s5, 25f
21:               jal          s4, 2b
22:               jal          ra, 13b
23:               jal          t3, 10b
24:               jal          ra, 18b
25:               and          a4, a6, sp
sub_5_11:         jal          t3, 17f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          ra, 23f
3:                jal          ra, 7f
4:                jal          ra, 25f
5:                jal          ra, 27f
6:                jal          ra, 21f
7:                jal          ra, 1b
8:                jal          s11, 26f
9:                jal          ra, 12f
10:               jal          s4, 2b
11:               jal          gp, 14f
12:               jal          t1, 18f
13:               jal          ra, 19f
14:               jal          ra, 10b
15:               jal          t1, 22f
16:               jal          t6, 13b
17:               jal          t1, 15b
18:               jal          ra, 16b
19:               jal          gp, 4b
20:               jal          s11, 9b
21:               jal          s11, 3b
22:               jal          ra, 24f
23:               jal          t3, 20b
24:               jal          ra, 11b
25:               jal          ra, 6b
26:               jal          t1, 0b
27:               srai         t3, a3, 17
sub_5_1:          jal          t3, 0f
0:                jal          s9, 5f
1:                jal          ra, 9f
2:                jal          t0, 10f
3:                jal          t1, 1b
4:                jal          t0, 8f
5:                jal          t1, 7f
6:                jal          t3, 4b
7:                jal          t3, 6b
8:                jal          ra, 3b
9:                jal          t1, 2b
10:               slt          a3, t1, tp
sub_5_28:         jal          t3, 8f
0:                jal          gp, 18f
1:                jal          ra, 16f
2:                jal          s10, 5f
3:                jal          t1, 10f
4:                jal          s5, 9f
5:                jal          ra, 14f
6:                jal          t1, 11f
7:                jal          t0, 4b
8:                jal          gp, 6b
9:                jal          ra, 12f
10:               jal          ra, 15f
11:               jal          sp, 17f
12:               jal          ra, 2b
13:               jal          ra, 0b
14:               jal          ra, 1b
15:               jal          ra, 7b
16:               jal          t1, 13b
17:               jal          ra, 3b
18:               jal          s11, 19f
19:               sltu         sp, s2, ra
sub_5_9:          jal          t3, 5f
0:                jal          t1, 12f
1:                jal          ra, 23f
2:                jal          ra, 14f
3:                jal          ra, 24f
4:                jal          ra, 2b
5:                jal          ra, 15f
6:                jal          ra, 25f
7:                jal          s5, 19f
8:                jal          gp, 21f
9:                jal          ra, 6b
10:               jal          ra, 3b
11:               jal          ra, 28f
12:               jal          sp, 17f
13:               jal          s9, 26f
14:               jal          s0, 10b
15:               jal          t1, 27f
16:               jal          a0, 22f
17:               jal          t3, 1b
18:               jal          ra, 0b
19:               jal          t0, 11b
20:               jal          ra, 4b
21:               jal          t2, 20b
22:               jal          t1, 9b
23:               jal          ra, 16b
24:               jal          ra, 13b
25:               jal          s0, 8b
26:               jal          t1, 7b
27:               jal          t1, 18b
28:               sra          ra, sp, s10
sub_5_41:         jal          t3, 9f
0:                jal          t0, 3f
1:                jal          ra, 14f
2:                jal          ra, 1b
3:                jal          ra, 8f
4:                jal          gp, 10f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          t6, 12f
11:               jal          ra, 6b
12:               jal          t1, 13f
13:               jal          t1, 5b
14:               jal          s0, 15f
15:               ori          s4, t0, 799
sub_5_16:         jal          t3, 11f
0:                jal          ra, 6f
1:                jal          ra, 18f
2:                jal          t1, 15f
3:                jal          t5, 5f
4:                jal          t1, 10f
5:                jal          ra, 20f
6:                jal          ra, 19f
7:                jal          ra, 12f
8:                jal          s4, 9f
9:                jal          t1, 23f
10:               jal          t1, 8b
11:               jal          t1, 21f
12:               jal          ra, 2b
13:               jal          ra, 16f
14:               jal          ra, 1b
15:               jal          t1, 3b
16:               jal          ra, 14b
17:               jal          ra, 0b
18:               jal          ra, 22f
19:               jal          ra, 4b
20:               jal          t1, 17b
21:               jal          ra, 13b
22:               jal          ra, 7b
23:               xor          a5, t3, s10
sub_5_29:         jal          t3, 6f
0:                jal          ra, 1f
1:                jal          ra, 10f
2:                jal          gp, 9f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          t1, 8f
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               sra          s5, s0, t3
sub_5_38:         jal          t3, 9f
0:                jal          ra, 11f
1:                jal          ra, 15f
2:                jal          a5, 21f
3:                jal          t1, 13f
4:                jal          t2, 22f
5:                jal          t1, 14f
6:                jal          ra, 24f
7:                jal          t1, 0b
8:                jal          sp, 20f
9:                jal          ra, 16f
10:               jal          s8, 4b
11:               jal          a3, 10b
12:               jal          t1, 23f
13:               jal          ra, 12b
14:               jal          ra, 25f
15:               jal          ra, 19f
16:               jal          ra, 17f
17:               jal          ra, 27f
18:               jal          ra, 2b
19:               jal          ra, 8b
20:               jal          ra, 30f
21:               jal          ra, 3b
22:               jal          ra, 26f
23:               jal          ra, 6b
24:               jal          t1, 5b
25:               jal          ra, 29f
26:               jal          ra, 1b
27:               jal          ra, 28f
28:               jal          t2, 18b
29:               jal          ra, 7b
30:               or           t2, s8, s11
                  or           t3, a6, a5
                  beq          t5, gp, 17f
                  bne          s10, a5, 20f
                  or           s9, t3, t2
                  sltu         s6, s11, s2
                  slt          a6, s4, a6
                  bgeu         a5, t6, 12f
                  beq          a0, s10, 27f
                  or           t0, s5, zero
                  slti         a4, s5, 1132
                  lui          ra, 685307
                  beq          a7, a0, 28f
12:               bne          t3, s9, 30f
                  srl          s7, s0, t2
                  andi         s9, s8, 1864
                  blt          gp, a3, 31f
                  sll          t5, t4, t0
17:               bgeu         a0, a1, 35f
                  lui          s3, 817863
                  andi         s9, a0, -1023
20:               or           a7, s11, t3
                  andi         t2, a7, 1536
                  blt          s2, a2, 38f
                  slli         s10, s2, 0
                  andi         t0, tp, 1423
                  slli         s3, a4, 4
                  addi         t3, a4, -250
27:               nop
28:               andi         s2, s2, -1843
                  slli         gp, s1, 22
30:               slli         t2, zero, 21
31:               blt          a1, s0, 46f
                  slti         t1, gp, 1573
                  sra          sp, t1, t4
                  xori         t5, t4, 402
35:               srai         s8, s6, 28
                  andi         a4, t6, 1581
                  and          a7, s0, ra
38:               bgeu         a2, a2, 53f
                  auipc        t4, 376125
                  bne          t3, s9, 42f
                  and          s0, s8, sp
42:               sltu         ra, s10, s2
                  sltiu        t1, a2, 1753
                  xor          t5, s7, s11
                  ori          a6, s11, -841
46:               and          ra, t4, t4
                  blt          s11, t3, 49f
                  ori          s7, t3, -1272
49:               or           a4, s4, s11
                  slti         s5, t5, -1478
                  ori          t6, s8, -1562
                  blt          s0, s11, 53f
53:               lui          zero, 461782
                  addi         a3, sp, -1171
                  bltu         ra, s1, 69f
                  slli         s6, s6, 23
                  bge          a6, tp, 76f
                  sra          t6, t4, a0
                  nop
                  sll          ra, a3, t1
                  srli         t6, a2, 18
                  lui          zero, 352134
                  sub          t2, t6, t3
                  xori         s4, s7, 289
                  bltu         s7, a7, 84f
                  srai         s8, s1, 18
                  xor          s3, a0, gp
                  lui          s8, 447191
69:               sra          a0, gp, s1
                  beq          s2, t5, 87f
                  andi         t1, t2, -993
                  add          a3, t2, t6
                  sub          a7, ra, zero
                  ori          s3, a4, 1962
                  sll          s7, ra, sp
76:               xori         a6, a0, -1888
                  andi         s9, t0, 588
                  blt          s8, sp, 95f
                  ori          s3, a6, 841
                  sltiu        sp, s1, 1197
                  andi         a5, a2, 96
                  sltiu        a4, s9, -563
                  nop
84:               sltu         t0, s9, t5
                  srl          gp, s7, s4
                  srai         a0, a1, 12
87:               ori          ra, s4, -1948
                  and          s0, s1, s6
                  sub          s0, t2, s11
                  bge          zero, gp, 97f
                  lui          t2, 171029
                  slli         s0, s11, 18
                  bltu         s10, a3, 110f
                  xori         a7, t6, 189
95:               add          s6, a2, a4
                  and          s11, t1, ra
97:               add          zero, a1, t1
                  blt          t1, t4, 113f
                  bge          t3, s4, 101f
                  srl          s6, t6, t2
101:              sra          s8, s1, s10
                  and          a5, t6, sp
                  srli         t3, a5, 16
                  sll          s3, s0, t2
                  sra          gp, s7, s5
                  sltiu        t4, s8, 1625
                  sra          a5, t0, gp
                  or           s11, t0, s10
                  bltu         s7, a4, 120f
110:              sub          s4, s11, s7
                  slli         t2, s7, 27
                  slli         t5, s5, 16
113:              bltu         a4, s4, 127f
                  slli         ra, t6, 30
                  blt          zero, s10, 119f
                  xor          a7, a0, t6
                  and          t1, s3, t2
                  bgeu         a6, s8, 135f
119:              lui          s10, 294864
120:              sltu         s10, sp, a5
                  srl          t4, s9, t6
                  add          zero, a4, a5
                  xori         s5, t2, -979
                  bgeu         ra, a6, 142f
                  and          t6, ra, zero
                  or           s3, s6, a4
127:              lui          t6, 3389
                  slti         t5, s8, -1410
                  sub          a3, s9, sp
                  ori          a7, s8, -439
                  blt          a6, s2, 143f
                  add          s8, s6, ra
                  xori         a5, s9, -1098
                  beq          ra, tp, 140f
135:              srai         s2, a7, 31
                  bgeu         t3, s3, 151f
                  bne          a3, t0, 152f
                  sra          s0, t4, a1
                  sll          a3, a2, s10
140:              slt          s7, a4, t5
                  slti         s9, s9, -1100
142:              sltiu        s2, t1, 15
143:              srai         a4, t5, 18
                  slli         s7, t4, 27
                  bge          s8, a7, 156f
                  sub          t2, gp, gp
                  slli         a3, a7, 13
                  ori          s11, a2, 51
                  and          gp, a2, s7
                  add          s6, s2, s4
151:              srai         zero, sp, 9
152:              xori         s4, s4, -673
                  lui          s4, 308495
                  slti         s9, s3, 1733
                  xori         t0, s11, -584
156:              lui          s1, 241702
                  bge          s6, t0, 173f
                  slli         a5, t1, 28
                  sra          s1, tp, t5
                  add          s2, a7, a4
                  sltiu        zero, sp, -1270
                  sltiu        t1, s6, 816
                  srl          s0, t1, s0
                  or           a7, ra, t0
                  blt          tp, t3, 169f
                  nop
                  bgeu         s0, s0, 183f
                  sra          s1, s5, a3
169:              xor          s3, s3, zero
                  andi         t4, s1, 1724
                  add          t6, ra, t2
                  xor          a5, t5, a2
173:              slti         t2, a1, -1820
                  beq          a0, s0, 191f
                  srli         s4, a0, 31
                  sll          t2, a2, t5
                  beq          s6, t2, 193f
                  auipc        s0, 195324
                  nop
                  and          t0, s0, s3
                  sra          s9, t1, ra
                  auipc        s1, 414080
183:              sltiu        t1, a4, 403
                  bge          sp, a6, 201f
                  andi         s5, gp, -425
                  nop
                  bne          a6, s1, 199f
                  sll          s3, a1, zero
                  nop
                  xori         ra, s2, -1591
191:              sll          a4, s6, s5
                  slt          s0, t3, t6
193:              auipc        s8, 728363
                  srli         t5, s0, 20
                  bge          s8, s0, 197f
                  srl          a5, t4, sp
197:              sltu         a0, t5, tp
                  bne          a4, s4, 217f
199:              andi         s7, t6, -1170
                  sltiu        t2, a2, -1758
201:              sltiu        a5, t3, 1916
                  lui          ra, 928432
                  bne          t4, t4, 221f
                  slli         gp, s11, 30
                  and          a7, s10, s11
                  addi         s11, s0, -1959
                  srai         sp, t3, 4
                  lui          t1, 652197
                  add          t2, s3, tp
                  sub          t1, a3, tp
                  sub          t3, gp, t0
                  bge          a1, t2, 229f
                  lui          s4, 982777
                  blt          a6, t6, 228f
                  blt          t5, t5, 222f
                  addi         t4, tp, -420
217:              bge          s3, gp, 223f
                  xor          s7, ra, s6
                  srli         a6, s0, 12
                  or           s6, t6, s3
221:              srl          a7, a6, t1
222:              bge          tp, s2, 241f
223:              bne          s8, a6, 229f
                  slt          gp, a6, s6
                  slt          a0, s9, s2
                  sub          t6, t3, t3
                  xori         t6, t6, -1214
228:              slt          t6, s9, s10
229:              sub          s1, s7, t6
                  slli         s1, t3, 22
                  bge          s5, a4, 232f
232:              srl          sp, a7, a0
                  beq          a3, s1, 235f
                  slt          a5, t4, sp
235:              and          s10, s8, s9
                  sub          s7, a3, a0
                  xori         s2, s3, 1374
                  auipc        s11, 300680
                  sltiu        sp, s0, -1356
                  auipc        a7, 16742
241:              add          t4, zero, a4
                  bgeu         s10, s2, 259f
                  or           t2, t5, s7
                  srli         a0, ra, 27
                  sll          s5, t4, gp
                  slli         s3, t2, 14
                  auipc        t3, 625776
                  slli         s9, s7, 20
                  bgeu         t0, a7, 267f
                  bgeu         s8, a3, 270f
                  sll          t6, a5, t4
                  auipc        s2, 969621
                  slt          t4, s3, t2
                  xori         t3, t4, 277
                  srl          a5, t3, s11
                  xor          t0, sp, a6
                  and          t1, t4, s6
                  sra          s9, gp, s7
259:              slt          gp, a0, a2
                  and          a4, t3, s11
                  slt          s8, s1, s6
                  bne          zero, a2, 279f
                  sltiu        s0, s5, 1566
                  sltu         s11, a6, s10
                  andi         a7, t6, -1736
                  sltiu        s3, s11, 1039
267:              add          t5, t6, s0
                  sltu         s3, a3, gp
                  and          s1, s9, s2
270:              slt          a5, t1, t5
                  addi         ra, a5, 1701
                  xori         ra, s10, 1525
                  blt          s8, t3, 291f
                  bne          s6, s3, 289f
                  beq          a6, ra, 277f
                  sltiu        t5, s9, -1416
277:              or           a7, a7, a5
                  nop
279:              nop
                  bgeu         a6, s3, 294f
                  beq          s9, t2, 299f
                  srai         s9, t1, 24
                  nop
                  and          s2, a1, a5
                  bge          a1, s3, 303f
                  sll          a5, s8, s0
                  or           zero, a7, t5
                  slti         a0, s4, -751
289:              bge          s9, s2, 304f
                  sltiu        gp, tp, -2005
291:              sltu         s11, t6, t0
                  ori          a6, s6, 141
                  slt          a3, sp, s8
294:              xori         sp, s11, -447
                  sll          s8, s5, a1
                  bgeu         t0, s8, 315f
                  srl          s0, a2, a2
                  sub          t2, t0, a1
299:              addi         gp, t5, 1227
                  andi         gp, a4, 1273
                  beq          s11, t1, 318f
                  sra          a0, t3, s3
sub_5_13:         jal          t3, 10f
0:                jal          ra, 14f
1:                jal          t1, 15f
2:                jal          t3, 11f
3:                jal          ra, 4f
4:                jal          a3, 0b
5:                jal          t1, 7f
6:                jal          gp, 3b
7:                jal          s6, 13f
8:                jal          t0, 16f
9:                jal          ra, 5b
10:               jal          ra, 8b
11:               jal          sp, 17f
12:               jal          s0, 2b
13:               jal          s0, 6b
14:               jal          t1, 1b
15:               jal          t1, 12b
16:               jal          ra, 9b
17:               slli         t3, a4, 21
303:              andi         s2, t1, -501
304:              slt          s1, s9, a1
                  and          t2, s3, a7
                  srai         a7, t6, 10
                  ori          s7, a5, 56
                  bgeu         a0, s5, 309f
309:              and          s5, zero, gp
                  sra          zero, a4, s0
                  ori          s4, ra, 985
                  ori          s0, s11, 1663
                  srl          s10, gp, s7
                  srl          s10, zero, s2
315:              beq          s3, s1, 331f
                  blt          zero, a0, 334f
                  bgeu         s2, a5, 319f
318:              ori          s0, a6, -138
319:              add          s10, sp, t2
                  bltu         t2, s8, 335f
                  beq          s11, t4, 328f
                  beq          a2, t0, 333f
                  slt          a6, a3, s3
                  bne          t1, s3, 344f
                  sll          s8, sp, s0
                  bltu         a0, s8, 332f
                  srli         t1, sp, 23
328:              bgeu         t2, t4, 347f
                  and          t6, zero, t1
                  bgeu         a2, s4, 348f
331:              lui          s11, 834493
332:              bgeu         a5, t4, 348f
333:              srli         t1, a1, 26
334:              add          t4, zero, a2
335:              and          s5, s0, zero
                  sub          s10, t0, t0
                  slli         a0, a3, 28
                  nop
                  bgeu         s5, gp, 356f
                  sll          s6, a4, s3
                  nop
                  srai         a4, s9, 16
                  bgeu         t2, a3, 360f
344:              auipc        s3, 500325
                  nop
                  xori         zero, gp, -110
347:              srli         s4, ra, 24
348:              srli         s2, t0, 14
                  auipc        s3, 749573
                  slti         a3, s9, 1976
                  slt          a7, zero, a0
                  sub          zero, ra, a5
                  add          a0, sp, s6
                  lui          s11, 157562
                  nop
356:              bne          s0, s11, 360f
                  ori          t2, t2, -980
                  add          s2, a5, a0
                  sub          t0, t2, t2
360:              slti         s1, a4, -1889
                  and          sp, sp, a1
                  nop
                  ori          s0, s9, -1885
                  blt          s8, s1, 370f
                  lui          s4, 26671
                  add          a3, s2, a2
                  nop
                  or           t1, s9, sp
                  srli         t3, s10, 23
370:              ori          s6, s6, 656
                  auipc        t0, 351646
                  addi         s2, s2, -1486
                  andi         t5, s2, -481
                  slt          s4, s6, tp
                  xori         s4, s1, 182
                  ori          t0, s5, 1159
                  slti         t3, a3, 1584
                  xor          sp, s0, tp
                  sll          s1, a3, zero
                  auipc        t2, 1016894
                  andi         t5, a2, -1175
                  sra          s10, s7, s5
                  srli         s5, sp, 18
                  auipc        s2, 1018163
                  bltu         s5, s6, 400f
                  bltu         a1, s10, 400f
                  auipc        t4, 366896
                  lui          s1, 921132
                  bge          a3, t3, 391f
                  bge          t3, a2, 408f
391:              sltu         t4, s5, a1
                  add          a3, s6, t4
                  srli         ra, s2, 27
                  auipc        s2, 510306
                  and          a3, s3, s3
                  lui          a4, 1024511
                  beq          t6, t3, 399f
                  sltu         a3, a2, t2
399:              bge          t1, a5, 416f
400:              srli         a3, s0, 27
                  bne          a3, a6, 417f
                  add          a3, s1, s9
                  beq          s4, s3, 415f
                  slti         a0, s11, 508
                  sltiu        t1, ra, -824
                  srli         s6, sp, 23
                  bne          tp, s0, 421f
408:              and          s10, s5, s2
                  srl          t6, s4, sp
                  nop
                  auipc        a6, 747843
                  andi         t5, s0, 1080
                  bgeu         t6, s1, 430f
                  srli         a3, t5, 10
415:              beq          s7, t3, 432f
416:              sltu         ra, a4, s3
417:              addi         sp, a3, 1878
                  slt          s2, gp, s8
                  bltu         t5, t0, 435f
                  xor          s0, s4, a2
421:              bne          a1, t1, 437f
                  bge          t0, s2, 439f
                  xori         s7, gp, 1031
                  sltiu        a4, t5, 1587
                  nop
                  sll          s1, s7, a7
                  srli         s8, ra, 8
                  srai         s2, t4, 20
                  ori          t2, t4, 760
430:              bge          ra, s10, 436f
                  srl          ra, a1, s9
432:              andi         s10, s0, -1939
                  xor          a4, ra, s5
                  auipc        sp, 619270
435:              auipc        a7, 757198
436:              lui          s7, 27869
437:              xor          gp, a1, s3
                  andi         gp, s0, -1105
439:              nop
                  addi         t5, s4, -391
sub_5_33:         jal          t3, 5f
0:                jal          ra, 19f
1:                jal          ra, 6f
2:                jal          ra, 3f
3:                jal          ra, 18f
4:                jal          ra, 0b
5:                jal          t1, 17f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          gp, 10f
9:                jal          t1, 14f
10:               jal          ra, 16f
11:               jal          s3, 9b
12:               jal          t1, 2b
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               jal          ra, 12b
16:               jal          t1, 13b
17:               jal          t6, 11b
18:               jal          t1, 1b
19:               lui          t1, 382362
                  andi         sp, s2, 1775
                  beq          a7, t3, 461f
                  nop
                  xor          s2, t1, s7
                  slli         t2, sp, 1
                  xori         s8, s2, -1899
                  sra          a5, t3, tp
                  blt          a0, a3, 462f
                  addi         t2, t0, 678
                  or           t6, sp, s6
                  ori          a6, s8, -457
                  slti         s3, s6, -200
                  slt          s2, s6, sp
                  or           a5, a3, s1
                  sltu         a5, s9, t5
                  blt          a2, s2, 458f
                  slti         s2, t5, -897
458:              sll          a4, a5, s11
                  bgeu         t0, a6, 474f
                  slli         t0, s10, 8
461:              or           a7, ra, s8
462:              bne          sp, s0, 480f
                  slli         t4, s0, 7
                  sll          t1, s3, a6
                  sltiu        t5, t2, -1470
                  srai         a6, a0, 26
                  add          t3, a3, zero
                  addi         s2, s9, 1786
                  xor          t0, a0, t0
                  xori         s4, s0, -1890
                  srli         s3, t2, 1
                  bge          s8, tp, 491f
                  nop
474:              sltu         s2, s0, a4
                  andi         s4, t0, 547
                  bne          a5, a7, 493f
                  or           s10, a4, s1
                  bgeu         a6, s3, 496f
                  srl          ra, a2, ra
480:              sltiu        s10, t4, 1885
                  or           t5, a3, t0
                  ori          s1, a1, 1740
                  bgeu         a2, s11, 497f
                  andi         t1, s11, 1488
                  beq          s9, s0, 502f
                  slt          gp, t3, t6
                  auipc        s4, 139818
                  or           t3, s8, s5
                  srli         sp, s8, 0
sub_5_12:         jal          t3, 13f
0:                jal          ra, 11f
1:                jal          s11, 8f
2:                jal          ra, 21f
3:                jal          ra, 4f
4:                jal          s6, 6f
5:                jal          t1, 9f
6:                jal          s0, 15f
7:                jal          s6, 12f
8:                jal          sp, 14f
9:                jal          ra, 1b
10:               jal          t1, 22f
11:               jal          ra, 3b
12:               jal          t1, 10b
13:               jal          t1, 0b
14:               jal          t1, 16f
15:               jal          ra, 5b
16:               jal          gp, 17f
17:               jal          s4, 19f
18:               jal          t5, 7b
19:               jal          a6, 2b
20:               jal          ra, 18b
21:               jal          ra, 20b
22:               xor          a7, s3, t4
                  xori         s4, a3, -758
491:              srai         a7, a2, 5
                  andi         a6, s10, -886
493:              lui          s0, 144554
                  auipc        s9, 318446
                  sll          t2, a4, s1
496:              andi         s3, t5, -869
497:              srl          a0, s10, a5
                  addi         sp, s7, -842
                  andi         s2, s10, 686
                  andi         t4, a6, 1243
                  bltu         s8, ra, 503f
502:              nop
503:              and          t1, s4, s8
                  srli         s2, a3, 30
                  blt          s0, t5, 523f
                  slli         zero, ra, 10
                  sra          a5, t3, t4
                  lui          s7, 534393
                  xor          a3, a7, a4
                  sub          s11, sp, t4
                  blt          zero, gp, 526f
                  slt          s6, a2, ra
                  srai         zero, s11, 15
                  slt          t2, a3, a5
                  add          a5, zero, gp
                  bne          s9, a5, 532f
sub_5_36:         jal          t3, 2f
0:                jal          ra, 13f
1:                jal          ra, 5f
2:                jal          t0, 8f
3:                jal          t6, 21f
4:                jal          ra, 0b
5:                jal          ra, 22f
6:                jal          ra, 18f
7:                jal          ra, 28f
8:                jal          s3, 1b
9:                jal          t3, 25f
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          s2, 24f
13:               jal          sp, 20f
14:               jal          ra, 16f
15:               jal          ra, 3b
16:               jal          t1, 11b
17:               jal          t1, 26f
18:               jal          t1, 7b
19:               jal          ra, 6b
20:               jal          sp, 15b
21:               jal          ra, 14b
22:               jal          ra, 23f
23:               jal          ra, 17b
24:               jal          ra, 4b
25:               jal          ra, 19b
26:               jal          s10, 27f
27:               jal          ra, 10b
28:               andi         s8, t2, 435
                  sub          s0, t4, s0
                  xor          a0, sp, a1
                  lui          s9, 361773
                  auipc        s7, 171002
                  sra          a5, s9, ra
                  ori          t1, ra, -1687
523:              slti         s4, a1, -120
                  bne          s8, s7, 542f
                  add          t6, a2, t1
526:              andi         s9, ra, -296
                  srl          s9, t5, sp
                  xori         s6, s9, -1394
                  bne          a4, s3, 530f
530:              sltu         t2, sp, a1
                  sltiu        s7, t6, 1627
532:              bgeu         tp, t2, 543f
                  srai         s11, t2, 17
                  xori         a4, t2, 1336
                  sub          t2, s11, a6
                  bgeu         t4, s10, 538f
                  lui          s4, 296161
538:              bne          zero, a6, 558f
                  srli         t0, s4, 27
                  beq          t3, tp, 555f
                  sra          s6, sp, s2
542:              lui          s1, 280853
543:              sltiu        gp, t4, 1784
                  or           a6, t2, s3
                  sll          t5, gp, tp
                  lui          ra, 744873
                  ori          zero, t5, 1626
                  or           t1, a7, t3
                  or           s5, ra, sp
                  ori          ra, tp, -1417
                  andi         gp, a3, -715
                  slti         a5, t0, 883
                  andi         a0, s11, -1763
                  sll          s7, t0, s6
555:              bltu         a5, t0, 567f
                  sub          t1, s7, t2
                  bne          tp, t2, 563f
558:              blt          s2, t6, 565f
                  add          t2, t6, a1
                  ori          a5, s5, 190
                  and          s7, t6, s10
                  beq          t1, t2, 579f
563:              slti         a5, a7, 1972
                  sltiu        s4, ra, 463
565:              add          t2, s4, tp
                  addi         s4, a6, -1284
567:              sra          t2, a6, t2
                  srl          ra, t2, t4
                  ori          s4, t0, 2005
                  sub          zero, s4, gp
                  srai         gp, s8, 22
                  bge          a0, t2, 576f
                  nop
                  bge          t4, tp, 592f
                  sra          s9, s4, s5
576:              blt          gp, t3, 594f
                  srl          t2, s11, a4
                  xori         t4, sp, -935
579:              sub          s6, s3, gp
                  bgeu         t2, s8, 595f
                  ori          gp, t6, 967
                  bge          s2, t6, 589f
                  addi         s0, a1, -476
                  or           s1, a2, s3
                  sll          s9, t2, s1
                  beq          a3, t5, 604f
                  slt          a4, s4, s1
                  addi         s7, a5, 245
589:              blt          tp, s10, 608f
                  slli         s5, s0, 27
                  nop
592:              slt          a3, a5, t1
                  bltu         a0, zero, 607f
594:              slt          t0, s9, s11
595:              slt          a3, t1, s4
                  sub          s7, a2, t3
                  beq          s8, t2, 603f
                  sub          s4, t5, a0
                  blt          s5, a4, 611f
                  lui          zero, 829514
                  bgeu         zero, s3, 603f
                  bge          a4, s10, 616f
603:              sra          s8, a3, t0
604:              andi         t3, a5, 1874
                  sra          t1, s10, t2
                  bltu         tp, t6, 610f
607:              andi         s0, sp, -71
608:              xor          sp, t3, s0
                  sltu         a7, a7, t1
610:              bgeu         s8, s0, 627f
611:              add          a5, gp, a2
                  nop
                  bge          tp, gp, 629f
                  lui          s5, 959282
                  srl          s5, a1, s0
616:              srli         s1, t0, 15
                  bgeu         s10, s11, 634f
                  bge          a7, s7, 638f
                  sltiu        t3, ra, 400
                  sra          t3, s7, t4
                  bne          s4, a4, 640f
                  bgeu         s11, s1, 637f
                  sll          a0, s7, t6
                  nop
                  addi         t2, a2, 1460
                  beq          a4, s8, 643f
627:              lui          a6, 402221
                  sub          s6, t4, s2
629:              andi         sp, s8, 1495
                  lui          a7, 132292
                  bltu         tp, sp, 633f
                  andi         s2, a4, 1670
633:              slti         s2, a5, 496
634:              ori          t6, gp, -250
                  and          t5, a3, s1
                  lui          a3, 348882
637:              srl          s5, t2, t1
638:              andi         s6, s10, 1247
                  xori         a7, sp, 317
640:              srai         s2, a3, 8
                  andi         t5, s5, 1386
                  xori         t2, s3, 684
643:              or           a5, a5, s2
                  slt          sp, s1, gp
                  add          gp, t2, s3
                  beq          zero, s7, 661f
                  srli         s7, zero, 16
                  ori          s1, s9, -1760
                  xori         a6, a5, -1725
                  xor          s1, tp, s7
                  blt          zero, zero, 668f
                  blt          tp, s1, 669f
                  slti         sp, a7, -1982
                  srai         s3, zero, 8
                  addi         s0, t3, -1091
                  ori          s10, t3, 1401
                  and          a6, s10, s0
                  sltiu        s5, s1, 855
                  srl          a5, s6, t1
                  sra          s7, s4, s2
661:              sltu         t6, s2, a1
                  sll          t6, s1, t6
                  bltu         s6, ra, 679f
                  sltiu        s7, t5, 1582
                  sll          a4, a6, s2
                  ori          s6, s5, -666
                  add          s3, s2, s5
668:              lui          t5, 730880
669:              bne          s2, s3, 675f
                  srai         a5, s6, 13
                  sra          a5, s2, a5
                  lui          sp, 70318
                  add          t1, s1, t4
                  and          s0, a3, ra
675:              ori          s11, s11, 1642
                  sra          s3, s7, sp
                  srl          s3, a3, a1
                  srl          s5, s2, s10
679:              bgeu         t0, s11, 681f
                  sltu         a3, a6, zero
681:              nop
                  srl          gp, s1, a6
                  bgeu         s11, s5, 699f
                  beq          a4, s9, 695f
                  blt          sp, gp, 703f
                  sltu         ra, t5, zero
                  sltiu        s9, a4, -1603
                  srli         s5, s5, 13
                  and          t1, ra, ra
                  xor          s10, a2, s2
                  ori          a3, s7, 284
                  ori          a6, a3, 1994
                  slt          s1, a7, a0
                  bltu         s3, a0, 695f
695:              lui          sp, 113256
                  srli         s4, a7, 1
                  blt          t3, s7, 715f
                  sub          t1, ra, t0
699:              slt          t1, t6, a5
                  srai         gp, s0, 26
                  and          t2, s10, a0
                  slli         s9, t6, 30
703:              bne          t4, t5, 715f
                  slli         s4, a0, 31
                  add          gp, a0, a0
                  slt          t1, a7, s5
                  add          s1, t5, gp
                  beq          s9, ra, 725f
                  bge          a2, s8, 729f
                  xori         s1, s0, 1621
                  sltiu        s10, a0, -1132
                  sltiu        s2, s10, -835
                  slti         t6, ra, -1015
                  lui          a0, 196133
715:              bne          t0, a1, 729f
                  nop
                  xor          s5, a7, sp
                  beq          s8, s6, 733f
                  xori         sp, s3, -1016
                  and          s1, zero, gp
                  and          a0, s2, s8
                  addi         t6, a4, -210
                  srai         a0, a2, 15
                  auipc        a6, 798670
725:              srl          gp, s4, s8
                  bgeu         t6, gp, 742f
                  sltu         s3, s8, s6
                  sltu         a4, s3, s5
729:              bltu         s0, a7, 743f
                  slli         s1, zero, 1
sub_5_40:         jal          t3, 20f
0:                jal          ra, 1f
1:                jal          ra, 21f
2:                jal          s6, 24f
3:                jal          a0, 28f
4:                jal          t1, 12f
5:                jal          ra, 27f
6:                jal          ra, 2b
7:                jal          t1, 17f
8:                jal          ra, 15f
9:                jal          s8, 14f
10:               jal          ra, 7b
11:               jal          ra, 23f
12:               jal          ra, 13f
13:               jal          t0, 26f
14:               jal          ra, 4b
15:               jal          t1, 10b
16:               jal          t1, 8b
17:               jal          ra, 6b
18:               jal          ra, 16b
19:               jal          gp, 18b
20:               jal          ra, 9b
21:               jal          ra, 19b
22:               jal          ra, 11b
23:               jal          ra, 3b
24:               jal          t1, 22b
25:               jal          ra, 5b
26:               jal          ra, 25b
27:               jal          ra, 0b
28:               sltiu        t0, a4, -632
                  auipc        a4, 885652
                  slli         t5, s8, 29
733:              bgeu         s9, s6, 748f
                  nop
                  srl          t4, a0, sp
                  sltiu        a6, s7, 1702
                  auipc        s10, 487778
                  lui          a6, 89772
                  blt          ra, t1, 756f
                  and          t0, sp, t5
                  bne          s1, t0, 743f
742:              sll          s4, tp, s0
743:              bgeu         a1, s2, 749f
                  slti         sp, s3, -951
                  sra          s10, s2, s3
                  slti         t2, s1, -884
                  bne          s0, s0, 758f
748:              nop
749:              slti         gp, t4, 1998
                  srli         ra, a5, 30
                  andi         a7, s5, -2025
                  sll          zero, s3, a1
                  slli         s7, s8, 15
                  bltu         sp, ra, 761f
                  auipc        a7, 175704
756:              auipc        a4, 52938
                  auipc        s10, 860758
758:              bne          a5, a6, 775f
                  xor          s7, s6, s7
                  lui          gp, 858310
761:              slli         a4, s9, 16
                  slt          s5, t6, gp
                  srai         gp, s8, 23
                  sltu         a6, s1, a0
                  or           s5, a3, s0
                  xori         s1, t0, 1320
                  beq          a7, s1, 785f
                  srli         t3, sp, 6
                  lui          ra, 733953
                  srli         a6, t3, 19
                  slt          a3, t5, t2
                  beq          s3, a7, 776f
                  bne          t5, s6, 774f
774:              srl          t0, t2, gp
775:              sltiu        a4, t6, -415
776:              bltu         s6, s3, 782f
                  nop
                  xor          a7, s11, s6
                  andi         s11, s11, 307
                  srl          s5, a6, t5
                  and          s1, s3, t6
782:              sltu         s0, s0, s2
                  nop
                  srai         a5, s11, 30
785:              add          s6, s6, s1
                  slt          a3, t0, sp
                  lui          a5, 464870
                  srai         ra, ra, 11
                  srli         zero, s9, 2
                  beq          a2, gp, 792f
                  srli         t0, sp, 1
792:              sub          s11, t3, a2
                  bgeu         zero, sp, 810f
                  xor          a4, s7, s2
                  ori          sp, tp, -363
                  lui          t0, 642508
                  and          a6, a5, gp
                  sub          s11, s11, tp
                  auipc        a3, 46691
                  xor          s9, s5, s1
                  ori          a7, s5, -796
                  beq          s3, a5, 819f
                  sll          zero, a5, s8
                  sub          zero, t6, s11
                  srli         ra, s8, 23
                  sra          zero, s7, a0
                  xor          sp, a4, s9
                  lui          s2, 199020
                  srai         gp, a4, 27
810:              andi         s7, gp, -69
                  nop
                  bne          a1, t1, 830f
                  sll          s0, t2, ra
                  sll          a3, s9, t3
                  blt          t2, s7, 833f
                  slli         s11, ra, 3
                  lui          s3, 217489
                  xor          a5, t3, tp
819:              slt          ra, a6, a1
                  xor          a4, t4, t2
                  and          zero, a2, t0
                  slti         zero, s1, 4
                  slli         s5, tp, 11
                  slli         s5, s9, 8
                  nop
                  slli         a7, s5, 14
                  slli         a3, s2, 19
                  bltu         a4, s9, 844f
                  andi         a4, sp, -415
830:              srl          s3, t1, s1
                  bgeu         t4, t6, 850f
                  sll          s3, a4, s5
833:              sltu         t1, t6, t4
                  andi         t4, s0, -898
                  sra          s0, ra, s0
                  sub          s10, t4, s2
                  blt          t5, t4, 852f
                  bge          a7, s1, 857f
                  andi         t2, zero, 25
                  blt          tp, s11, 842f
                  xori         ra, ra, 826
842:              blt          t5, a1, 858f
                  beq          s2, a0, 861f
844:              sltiu        s3, a0, 1561
                  sll          s4, s3, t3
                  add          s4, a5, t5
                  sltu         s11, ra, s11
                  sra          a6, s8, t4
                  bne          a0, s9, 866f
850:              ori          s4, a6, 395
                  srl          t3, zero, s2
852:              bgeu         t4, a4, 858f
                  bgeu         t5, s5, 867f
                  sra          t5, s5, s8
                  blt          a5, t0, 872f
                  blt          sp, ra, 875f
857:              beq          ra, s6, 873f
858:              slt          s7, s1, t6
                  slli         s10, t6, 17
                  sra          s0, s9, t2
861:              sltu         s2, s0, a5
                  bge          s9, sp, 876f
                  and          s10, s6, a3
                  slli         s6, a1, 16
                  xor          gp, tp, a0
866:              ori          zero, t1, 1310
867:              lui          s0, 563165
                  bltu         a0, s8, 887f
                  bne          a4, s9, 886f
                  beq          a7, a6, 876f
                  sub          s0, a4, s10
872:              add          s5, a3, s10
873:              add          s4, a4, s11
                  sltu         s11, t1, t3
875:              blt          s6, a3, 877f
876:              sltiu        s5, a7, -1848
877:              add          s7, t0, t5
                  and          a5, t4, s3
                  bne          t2, s5, 896f
                  srli         t1, sp, 3
                  blt          s4, a1, 883f
                  and          a5, sp, a4
883:              slti         t2, t5, -404
                  srl          a3, s0, s10
                  or           t0, s0, sp
886:              srl          t5, t4, t6
887:              auipc        a0, 1028133
                  and          t6, gp, t5
                  sll          s3, s6, t5
                  sub          s5, t1, s0
                  auipc        s3, 858257
                  xori         t6, t6, -156
                  beq          zero, t1, 910f
                  sll          t0, t3, s3
                  xori         sp, s5, 1889
896:              srli         t2, s2, 30
                  bne          t2, zero, 912f
                  srl          sp, s6, a5
                  beq          ra, a0, 911f
                  or           a6, s0, s1
                  sra          a0, a1, s3
                  lui          a6, 168362
                  slli         t4, s5, 27
                  xor          a5, sp, a5
                  auipc        s10, 120513
                  xor          s8, a7, t4
                  bge          a5, s2, 914f
                  xori         t6, t2, -706
                  sub          s1, a5, s4
910:              addi         s3, t3, 1795
911:              addi         a3, s9, -273
912:              srai         s9, s0, 17
                  lui          s8, 698861
914:              bgeu         t4, a1, 915f
915:              andi         t3, s9, -1057
                  xori         t5, a1, -1001
                  ori          s8, s0, -200
                  addi         t1, a5, 1728
                  ori          t1, t0, 563
                  blt          s11, t2, 938f
                  auipc        a4, 147585
                  ori          a5, a4, 962
                  ori          t3, sp, 779
                  sub          a7, a4, s0
                  slli         t6, s0, 1
                  sra          s5, ra, t4
                  or           t3, s11, zero
                  addi         s2, a2, -1679
                  srl          zero, a6, t6
                  add          t3, s0, s10
                  srl          t3, tp, t6
                  slt          a4, a4, t6
                  srai         ra, s9, 28
                  andi         s6, a2, 466
                  bne          t1, a4, 951f
                  slt          s5, gp, s7
                  sltiu        s8, zero, 722
938:              srl          t3, ra, t6
                  xor          s10, s6, tp
                  bltu         t1, a0, 960f
                  slti         t4, a3, -1942
                  bltu         a2, t0, 946f
                  slt          s11, s11, s9
                  sltu         a0, zero, t4
                  ori          s8, s6, -1037
946:              sll          s10, t6, s2
                  addi         t0, ra, 307
                  blt          t4, s10, 950f
                  sub          t1, t0, a1
950:              blt          sp, s9, 966f
951:              lui          t6, 771869
                  bne          t3, s3, 963f
                  sltu         a5, t4, gp
                  bge          s0, tp, 969f
                  srli         s11, a3, 11
                  addi         t0, s9, -1879
                  xori         s7, t5, 1821
                  srl          t5, s1, a0
                  or           t2, gp, ra
960:              slli         gp, t0, 21
                  xori         t2, t4, -873
                  srli         a5, s5, 1
963:              sra          s0, sp, s4
                  bge          a0, s2, 979f
                  sub          t6, s2, a2
966:              sub          t1, t1, t4
                  andi         a4, a2, 972
                  sltiu        t2, ra, -424
969:              or           t0, t2, a5
                  sll          s10, a3, s7
                  beq          a5, a3, 989f
                  bgeu         s7, s11, 990f
                  lui          s0, 496021
                  blt          s8, a4, 988f
                  or           zero, ra, a3
                  slt          a6, s11, ra
                  auipc        a6, 364869
                  sltiu        t5, t0, 1724
979:              sll          a4, ra, s11
                  bltu         a6, a6, 997f
                  sltu         s2, s7, t2
                  sltiu        s4, t4, -516
                  addi         t4, s1, -67
                  srl          a5, s7, s0
                  bgeu         zero, a4, 987f
                  or           t4, s1, a6
987:              srai         s11, t6, 26
988:              sra          s9, s1, s6
989:              lui          t4, 147500
990:              slti         t5, gp, 1480
                  bgeu         t4, t2, 1007f
                  sltiu        s9, s5, 43
                  xor          a7, tp, s6
                  ori          a3, s8, -1045
                  and          s2, t2, t2
                  auipc        s11, 439575
997:              lui          s3, 180799
                  beq          a6, a6, 1002f
                  or           t1, a7, sp
                  sltu         sp, t4, a5
                  bne          a5, sp, 1020f
1002:             addi         t4, s7, -1543
                  and          s5, s11, a2
                  sltiu        sp, t3, -1467
                  addi         a7, ra, 805
                  and          s2, s0, s7
1007:             slti         s1, s5, 446
                  or           t0, a0, t5
                  ori          s6, s8, 39
                  ori          s0, s9, 638
                  sll          s0, s6, s9
                  srl          s3, t3, t3
                  xori         t1, s6, -1036
                  sltu         ra, sp, s6
                  bltu         s3, s7, 1030f
                  sltiu        a5, t5, -897
                  ori          s2, a3, -528
                  nop
                  xori         a0, ra, -2000
1020:             sltu         gp, t5, s4
                  ori          a6, s9, -1174
                  bge          s4, zero, 1040f
                  xori         s0, s5, -286
                  auipc        a7, 590552
                  bge          gp, a6, 1040f
                  xori         s6, t5, -1713
                  slti         s0, t2, 284
                  srai         zero, tp, 10
                  srai         t0, a6, 21
1030:             auipc        s5, 526009
                  srl          s0, a4, zero
                  srli         t6, t0, 6
                  slli         s10, s8, 3
                  xori         t2, a1, -1683
                  xori         s9, a7, -850
                  auipc        s9, 24664
                  srai         s1, a6, 15
                  ori          a0, s4, 358
                  slt          s8, a7, s6
1040:             bgeu         a7, zero, 1058f
                  addi         s3, t6, 2038
                  ori          a3, t0, -1774
                  beq          s10, t4, 1054f
                  blt          t1, s3, 1050f
                  addi         s8, a6, -688
                  srai         t3, a0, 3
                  add          a7, ra, s0
                  bgeu         s4, zero, 1065f
                  bne          a3, s7, 1063f
1050:             lui          t1, 558500
                  slti         t4, s4, -386
                  and          s5, t6, t1
                  lui          a0, 364071
1054:             slti         a0, a2, 1562
                  bne          t0, a4, 1074f
                  slt          s8, t2, s8
                  bgeu         t2, a5, 1074f
1058:             bltu         s3, s9, 1075f
                  slti         a0, s8, 1117
                  sra          s5, a2, s8
                  bgeu         tp, zero, 1063f
                  ori          gp, t5, -1103
1063:             bge          s5, s6, 1065f
                  slt          s4, s11, gp
1065:             srai         s1, a3, 31
                  srai         t6, t4, 20
                  bltu         a2, s0, 1074f
                  sltiu        gp, a2, -31
                  sll          t4, a2, a7
                  bge          a2, s2, 1087f
                  addi         a0, a2, 1790
                  bltu         zero, gp, 1090f
                  sltu         s2, a0, t5
1074:             sltiu        t1, s3, 1778
1075:             and          t1, a7, s11
                  and          s3, tp, a1
                  bgeu         ra, a2, 1083f
                  srli         a6, t5, 26
                  slli         a6, t1, 16
                  slt          s9, t3, s11
                  sltu         a0, s1, a6
                  bgeu         a1, sp, 1097f
1083:             bne          s7, a7, 1095f
                  slti         sp, t5, 20
                  and          s2, zero, ra
                  slt          t6, t2, s1
1087:             bgeu         s6, a4, 1088f
1088:             srl          gp, gp, a2
                  sltiu        t4, t4, 1338
1090:             slt          s7, s5, t3
                  xori         s8, s1, -1433
                  srai         a0, t0, 30
                  ori          ra, t6, 1831
                  srl          zero, a2, t1
1095:             addi         t3, s1, -46
                  slti         gp, a6, -731
1097:             bge          a2, s6, 1113f
                  addi         t5, t1, 943
                  slli         s7, s0, 12
                  sll          s11, t5, s3
                  and          a0, a3, t1
                  lui          zero, 418563
                  srli         t3, s2, 16
                  auipc        s11, 600201
                  and          s6, s5, s0
                  xori         a5, s10, -858
                  bne          s3, t1, 1125f
                  or           t2, t3, tp
                  add          t4, a1, gp
                  and          a5, s4, s2
                  bne          s10, t6, 1127f
                  bge          a7, a7, 1132f
1113:             sub          s3, gp, a4
                  srl          t5, s2, s11
                  and          a5, sp, a7
                  sll          a0, s3, a0
                  or           s4, s7, s6
                  sra          t1, t3, s10
                  sra          a3, a3, s2
                  slti         a6, t3, -526
                  slt          ra, s6, a0
                  slti         s5, s5, 1697
                  sra          s11, s9, s0
                  sub          sp, t1, s4
1125:             bgeu         s1, s2, 1144f
                  xor          t3, a4, a0
1127:             sub          t0, s10, s9
                  srl          zero, a0, tp
                  or           t3, a4, t0
                  sub          t0, a1, s11
                  srl          s9, t1, s3
1132:             xori         s7, s7, -461
                  sltu         a6, s3, s1
                  xor          a5, sp, sp
                  sub          s3, a0, s2
                  srli         sp, t3, 16
                  xori         s7, t0, 987
                  auipc        ra, 338070
                  ori          s10, s9, 47
                  srl          a0, s8, t4
                  nop
                  bne          s1, a5, 1144f
                  andi         a4, a6, 1297
1144:             srli         a7, a7, 30
                  sltu         a5, sp, s0
                  ori          t2, t3, 1934
                  sra          t3, sp, s6
                  beq          sp, s7, 1164f
                  sltu         a7, s4, s4
                  sra          sp, s1, t4
                  sub          s5, s2, s8
                  sra          gp, t5, s9
                  sltu         gp, s7, a2
                  xori         a4, s4, 1799
                  slti         s10, t5, -5
                  srl          s10, s3, t2
                  xori         t6, zero, -1766
                  srli         a0, s8, 28
                  sltiu        s1, s2, -1399
                  srai         zero, zero, 15
                  sra          s11, sp, s2
                  bltu         t4, t0, 1174f
                  or           t0, t2, s5
1164:             auipc        t1, 1038998
                  bltu         a4, t6, 1167f
                  srai         a5, s1, 7
1167:             sltu         t2, a4, t5
                  beq          t3, zero, 1185f
                  slt          ra, s8, s4
                  bge          s10, t6, 1181f
                  bge          sp, t2, 1186f
                  sltiu        t2, a0, 619
                  srli         sp, a0, 9
1174:             sll          ra, s11, s5
                  lui          t2, 136660
                  sub          s6, a7, a2
                  nop
                  xori         s4, tp, 1099
                  and          s9, t6, t6
                  blt          a3, gp, 1198f
1181:             bne          t5, s7, 1183f
                  blt          s9, s10, 1186f
1183:             beq          gp, s1, 1189f
                  sra          s10, s7, sp
1185:             auipc        a6, 458211
1186:             lui          zero, 887196
                  ori          s7, s1, -1278
                  sll          sp, ra, s4
1189:             add          s8, s4, s7
                  bgeu         t0, s3, 1196f
                  xori         s2, s0, -1558
                  sll          s5, s5, a3
                  bltu         s6, t1, 1211f
                  slli         s7, a1, 29
                  xori         a6, s8, 397
1196:             auipc        ra, 367008
                  andi         a4, gp, -806
1198:             addi         t3, zero, 330
                  andi         a0, tp, -297
                  slt          s7, s7, s4
                  lui          a4, 476487
                  addi         s9, s10, -1582
                  ori          a0, a6, 1862
                  bge          s9, tp, 1218f
                  or           a6, t0, gp
                  sub          t1, s0, a3
                  xor          t3, a7, s2
                  nop
                  srai         s8, s3, 18
                  lui          a6, 998927
1211:             nop
                  sltu         a6, s2, t5
                  sra          a5, t3, zero
                  srai         s2, ra, 24
                  addi         s5, a4, 1084
                  slt          s3, a4, zero
                  sub          s7, t1, t3
1218:             or           a7, s2, a4
                  andi         a4, a7, -1164
                  blt          t0, t0, 1221f
1221:             nop
                  lui          t1, 946741
                  srai         s8, s5, 20
                  slti         s9, s0, 1165
                  add          t6, s6, s3
                  blt          ra, gp, 1241f
                  slt          t0, t4, s9
                  srai         a0, zero, 7
                  auipc        a4, 929808
                  srl          gp, a2, a0
                  bne          s7, a4, 1250f
                  bne          s4, t5, 1249f
                  add          s7, a0, s0
                  and          t5, s7, t6
                  xori         s9, a5, 343
                  add          a7, s6, s10
                  xor          t6, sp, t2
                  xori         a5, t6, -1508
                  and          t5, s8, s6
                  bge          gp, t0, 1258f
1241:             or           gp, s0, t4
                  add          s5, zero, s10
                  bltu         a5, s11, 1259f
                  slli         s11, a6, 5
                  nop
                  srai         s1, t2, 7
                  add          t4, s3, s2
                  blt          a7, t6, 1265f
1249:             or           t3, a7, sp
1250:             xori         s2, s7, -1902
                  sll          s7, s7, a5
                  bltu         a0, zero, 1268f
                  srl          s2, s11, a6
                  sra          s10, t1, s8
                  srl          s1, s7, s8
                  slti         s8, s1, 424
                  bltu         gp, s6, 1272f
1258:             srli         s11, s1, 21
1259:             or           t6, s2, gp
                  srli         s6, a7, 1
                  sltiu        t3, tp, 441
                  xor          s4, t1, t1
                  and          s10, s7, t2
                  addi         a5, zero, 202
1265:             bltu         s7, t1, 1279f
                  nop
                  auipc        a7, 834147
1268:             or           s3, s2, a1
                  slti         t0, s3, -1690
                  srli         s7, s11, 0
                  sltu         t0, a5, t1
1272:             bge          sp, t1, 1292f
                  addi         s11, a4, 99
                  blt          s11, t4, 1292f
                  lui          gp, 321023
                  auipc        s6, 382754
                  lui          t6, 597655
                  slti         t5, a5, -864
1279:             blt          s2, a0, 1296f
                  srl          s7, s8, s9
                  xor          gp, s7, s8
                  xor          s10, s4, a6
                  sub          zero, t5, t4
                  srai         t5, s2, 6
                  beq          s3, tp, 1302f
                  slti         t2, s0, 950
                  addi         t2, a4, 43
                  slti         t0, t2, -1177
                  sub          t2, s7, a7
                  or           t0, t2, t1
                  sll          s9, a3, s9
1292:             andi         s3, s10, -1057
                  beq          tp, t5, 1300f
                  bgeu         s10, s5, 1311f
                  lui          s8, 1048022
1296:             slt          sp, s6, t3
                  beq          tp, ra, 1313f
                  sltu         s6, s3, t1
                  sltu         t1, ra, a2
1300:             blt          s9, s3, 1301f
1301:             add          s10, s8, t3
1302:             blt          a7, s0, 1304f
                  ori          t6, a0, 2004
1304:             bge          ra, s9, 1318f
                  slli         s11, ra, 18
                  sub          gp, gp, tp
                  slti         t5, t3, -1656
                  or           a3, t5, s4
                  bne          tp, s3, 1327f
                  bgeu         t4, s8, 1322f
1311:             beq          s5, t0, 1328f
                  add          s5, sp, a4
1313:             slt          s3, t1, tp
                  or           t3, s5, s4
                  and          s2, s11, t6
                  srai         s0, a5, 3
                  beq          s1, sp, 1319f
1318:             sra          s6, s4, s1
1319:             bne          s8, s5, 1338f
                  addi         a3, a2, 132
                  slti         s6, s10, -1875
1322:             srl          t3, s1, s9
                  sra          sp, a7, s9
                  srai         s11, s5, 17
                  nop
                  bge          sp, sp, 1340f
1327:             sltu         gp, a1, zero
1328:             srl          t1, sp, t0
                  srl          s6, a3, s9
                  nop
                  and          ra, s2, t4
                  sltiu        t0, s1, -1268
                  ori          s9, t5, -461
                  beq          s2, a5, 1351f
                  sltiu        s10, t4, -1364
                  sub          s7, tp, a4
                  auipc        t5, 292389
1338:             sltu         t1, t0, s1
                  sub          s4, s6, t1
1340:             srai         a0, s5, 6
                  xori         t2, s7, -587
                  sll          t3, a3, a1
                  sra          t5, zero, a0
                  sltu         s10, zero, s5
                  beq          s8, t6, 1361f
                  srl          zero, gp, t6
                  srai         s10, s2, 15
                  andi         s2, s6, -536
                  sra          t2, a6, s11
                  add          s8, t6, t4
1351:             addi         s7, t5, -2029
                  bne          s4, t2, 1358f
                  sub          s3, t6, t2
                  lui          s2, 1022607
                  addi         s7, sp, 1593
                  blt          a3, s8, 1360f
                  sll          zero, s9, s6
1358:             bltu         s3, a1, 1377f
                  srl          t5, t2, a5
1360:             bge          s10, a1, 1366f
1361:             add          s7, t6, s9
                  nop
                  blt          a0, zero, 1380f
                  and          t1, a3, s5
                  nop
1366:             srai         t6, s1, 7
                  srai         sp, tp, 3
                  bne          t5, sp, 1386f
                  srai         a3, t2, 17
                  lui          a7, 968072
                  sltu         t5, s11, t4
                  slli         s6, t0, 26
                  bge          s0, s7, 1393f
                  sub          s10, a7, t5
                  beq          s7, t5, 1393f
                  bgeu         a3, gp, 1391f
1377:             and          a6, s0, s6
                  sll          t6, t3, t0
                  slli         sp, s4, 29
1380:             srli         s10, s10, 6
                  sltu         a3, s9, s4
                  sltu         s5, a0, t3
                  xor          t6, a3, s7
                  beq          s2, zero, 1395f
                  slli         a5, tp, 19
1386:             sltu         s4, a2, s1
                  ori          s4, s11, 1247
                  bge          s8, a4, 1390f
                  slli         gp, zero, 18
1390:             sra          s7, s4, t6
1391:             blt          t6, s8, 1409f
                  sub          s3, s10, s6
1393:             bge          gp, a7, 1409f
                  and          s2, a5, s6
1395:             lui          a5, 394591
                  srai         sp, s8, 3
                  bgeu         ra, ra, 1414f
                  or           a7, sp, s10
                  add          ra, s8, a2
                  or           zero, s6, s6
                  sra          a7, s5, ra
                  sub          gp, a3, ra
                  slli         zero, t4, 26
                  andi         a7, t1, 796
                  slli         s10, gp, 22
                  sltiu        t1, s2, -878
                  srai         s3, a5, 4
                  sll          s4, a5, s5
1409:             bge          t0, s11, 1416f
                  slt          s10, s1, t3
                  and          s3, gp, s0
                  ori          s7, s8, 1900
                  and          s9, a5, a3
1414:             sltu         s3, s3, s2
                  andi         a7, t3, 1192
1416:             bltu         ra, a2, 1431f
                  slti         s8, a3, 2009
                  sra          s2, s5, s9
                  beq          s5, a4, 1434f
                  sltu         s1, t1, a5
                  xori         s11, a1, -401
                  bltu         tp, s7, 1440f
                  beq          a5, t4, 1427f
                  srl          a0, a0, s8
                  auipc        a6, 864702
                  lui          s9, 624036
1427:             slli         s3, ra, 6
                  andi         t6, t3, -57
                  or           s8, s8, sp
                  slti         t1, s3, -137
1431:             sll          a5, s10, a0
                  srl          t5, s9, t0
                  slli         sp, t5, 14
1434:             beq          zero, s9, 1448f
                  sltiu        sp, s4, 830
                  bgeu         s10, a7, 1456f
                  srai         t0, s7, 14
                  lui          s6, 574166
                  bne          t3, s8, 1455f
1440:             slt          t3, s5, s11
                  bltu         a2, a2, 1447f
                  srl          a0, a7, t3
                  lui          s8, 829983
                  nop
                  sll          a5, a2, s8
                  bne          s5, t6, 1447f
1447:             xori         s11, s3, 612
1448:             blt          s0, ra, 1462f
                  slti         s9, t3, 477
                  xori         a6, s11, 1415
                  addi         t2, s5, 470
                  and          t3, zero, s5
                  bltu         t4, t3, 1459f
                  ori          gp, t6, -1796
1455:             bltu         a1, a6, 1471f
1456:             ori          s0, sp, 1729
                  auipc        t5, 1018540
                  bge          a2, a7, 1473f
1459:             srai         s1, s11, 10
                  or           a0, s1, s2
                  beq          a7, t2, 1479f
1462:             srli         gp, s10, 22
                  sub          t2, a6, s7
                  sra          sp, ra, s2
                  addi         s6, sp, 767
                  xor          a5, gp, t1
                  slt          s8, t3, a5
                  or           t0, a6, t3
                  srai         gp, t3, 28
                  srli         t6, gp, 4
1471:             sltiu        s2, a1, 1086
                  xor          s6, zero, t1
1473:             xori         s6, s11, 258
                  ori          t2, s3, 364
                  sll          s0, t3, t3
                  bgeu         s0, s5, 1491f
                  sra          s0, s7, s10
                  slli         s6, a6, 0
1479:             srai         t6, tp, 12
                  addi         s6, t6, -1357
                  auipc        s9, 138433
                  beq          a3, a5, 1484f
                  bgeu         s3, ra, 1501f
1484:             bge          a4, s11, 1499f
                  ori          a0, a1, 1974
                  blt          a7, t6, 1502f
                  slli         gp, t3, 3
                  sub          s5, tp, zero
                  bgeu         ra, t5, 1506f
                  beq          zero, zero, 1507f
1491:             lui          t5, 100309
                  srl          a0, t3, a1
                  sltiu        a7, zero, -737
                  bne          t0, a2, 1511f
                  add          s0, s1, s6
                  sub          sp, sp, s6
                  srai         sp, a3, 6
                  lui          a5, 383587
1499:             auipc        s11, 45971
                  addi         s7, s4, 1295
1501:             bltu         s7, s9, 1520f
1502:             ori          s9, a2, -383
                  sra          a7, s0, s7
                  blt          s4, t2, 1506f
                  xor          gp, t5, gp
sub_5_27:         jal          t3, 7f
0:                jal          t1, 5f
1:                jal          t1, 3f
2:                jal          ra, 0b
3:                jal          s2, 8f
4:                jal          t1, 11f
5:                jal          ra, 10f
6:                jal          s9, 4b
7:                jal          s5, 1b
8:                jal          t1, 9f
9:                jal          ra, 2b
10:               jal          sp, 6b
11:               or           s0, s1, t4
1506:             bge          a0, s7, 1513f
1507:             bltu         a7, s7, 1526f
                  sra          a5, s1, s3
                  slti         t6, zero, -1830
                  blt          s0, a2, 1521f
1511:             sll          t1, t1, a4
                  and          s6, s10, t6
1513:             srai         s0, t1, 3
                  and          a6, t3, t2
                  sra          s9, a2, s4
                  ori          s5, s3, -528
                  or           t5, gp, t0
                  ori          a0, s6, 1579
                  blt          s1, s2, 1536f
1520:             addi         s0, ra, 1953
1521:             slti         s5, tp, -102
                  beq          s6, a6, 1534f
                  srai         s9, ra, 10
                  sra          a4, a6, zero
                  bne          a4, t3, 1543f
1526:             nop
                  sub          ra, s0, t0
                  sltu         s1, s2, s5
                  sra          t4, t1, s11
                  bne          t4, zero, 1532f
                  xor          t0, a7, t2
1532:             beq          s10, s3, 1549f
                  slt          s5, s10, s0
1534:             xori         t3, a5, -563
                  sub          s3, s8, s9
1536:             xor          gp, s0, s7
                  xori         s5, s8, 902
                  bge          s6, tp, 1554f
                  slli         t1, a3, 28
                  or           a0, a5, a4
                  sltiu        t2, s1, -1423
                  blt          s3, t5, 1554f
1543:             srl          sp, s9, tp
                  beq          sp, s2, 1561f
                  ori          t0, s5, -396
                  sll          t0, s3, s4
                  sra          s1, a7, t4
                  sll          s10, zero, a4
1549:             srl          zero, s5, t0
                  bne          s4, a4, 1561f
                  lui          s4, 760269
                  slti         s0, gp, 1838
                  sll          t0, tp, t0
1554:             and          s3, s11, gp
                  slt          s11, t2, tp
                  lui          t1, 18366
                  xori         s2, s4, -935
                  nop
                  addi         s0, zero, 403
                  bge          zero, zero, 1576f
1561:             sltu         s4, zero, s1
                  beq          a0, t2, 1579f
                  add          s1, gp, t3
                  auipc        s7, 110051
                  sltiu        a6, a6, -2008
                  auipc        a0, 152187
                  addi         ra, t5, 1677
                  sub          a5, s11, a5
                  beq          s1, t3, 1584f
                  bge          tp, zero, 1577f
                  slti         a3, s7, -829
                  sub          s10, gp, s11
                  ori          s7, a4, -588
                  addi         a0, zero, 790
                  srl          t1, a3, t4
1576:             bgeu         t3, a6, 1595f
1577:             bgeu         a0, t1, 1583f
                  sll          t1, s1, a1
1579:             nop
                  bgeu         t3, a2, 1599f
                  ori          a7, s1, -1839
                  sltiu        gp, a1, -368
1583:             lui          t2, 861694
1584:             sub          s11, t0, s1
                  and          t1, t5, s0
                  sll          s2, a4, sp
                  bge          s5, ra, 1604f
                  sub          t2, sp, a3
                  srl          t2, t2, ra
                  slli         s10, s9, 5
                  srli         s4, s9, 14
                  bltu         s11, s7, 1607f
                  slli         s7, s4, 5
                  sltu         s8, tp, s5
1595:             blt          a5, s5, 1612f
                  slli         s4, s5, 6
                  sra          t1, s4, s1
                  bne          s10, a2, 1616f
1599:             xor          s1, s2, ra
                  sra          t6, t0, t2
                  auipc        t4, 813807
                  andi         t1, s7, 1700
                  addi         a5, s4, 175
1604:             bltu         s11, zero, 1622f
                  andi         s5, s2, -631
                  srl          t2, s11, zero
1607:             or           a5, tp, s11
                  or           a4, t2, gp
                  nop
                  sub          ra, s11, zero
                  addi         s2, s9, 1359
1612:             bge          s11, t1, 1626f
                  bgeu         t6, s10, 1631f
                  or           t3, s9, s6
                  srli         a5, a3, 11
1616:             lui          gp, 1670
                  bne          gp, s6, 1632f
                  beq          s0, s0, 1622f
                  bgeu         t6, s8, 1636f
                  bltu         t2, a4, 1626f
                  addi         s5, s8, 60
1622:             add          s4, a5, sp
                  srl          s4, s3, sp
                  or           zero, s4, ra
                  sltu         s3, t3, sp
1626:             lui          a7, 299017
                  sll          s10, a4, t4
                  sltiu        s0, s5, 643
                  sll          t5, a7, t2
                  bne          t4, s2, 1632f
1631:             ori          s4, s1, 1714
1632:             ori          ra, s5, 1439
                  sltu         ra, a3, s8
                  nop
                  bgeu         t3, s0, 1636f
1636:             slti         t5, s8, -635
                  sltu         s3, t0, s0
                  bgeu         s11, a0, 1640f
                  ori          s6, s0, 1432
1640:             slt          s10, t6, t3
                  sra          s11, zero, s8
                  nop
                  bgeu         sp, t1, 1663f
                  lui          t2, 325090
                  slti         t0, tp, -1795
                  slli         s3, s4, 8
                  xor          s3, a5, t2
                  slli         s0, s3, 9
                  xori         a4, a3, 1845
                  sll          sp, s9, t6
                  beq          a6, a4, 1653f
                  add          a0, a0, a2
1653:             nop
                  andi         s8, t2, 130
                  nop
                  blt          s11, ra, 1674f
                  xor          a5, tp, t1
                  auipc        s1, 285233
                  xori         t5, s2, -321
                  and          a0, t6, ra
                  sll          t6, t1, t5
                  sra          a3, a0, tp
1663:             or           t6, a0, t0
                  srl          a5, a0, a4
                  srli         sp, t6, 25
                  srl          ra, s2, a4
                  ori          gp, t3, 1416
                  sub          t1, s2, sp
                  andi         s9, a7, -1837
                  sltu         s1, s3, gp
                  nop
                  lui          s6, 11604
                  lui          s10, 55562
1674:             add          s5, t0, s4
                  beq          a4, ra, 1691f
                  andi         sp, t3, 1186
                  bgeu         a3, a5, 1691f
                  bgeu         t1, a3, 1695f
                  slli         a0, s5, 17
                  bge          s7, ra, 1697f
                  bne          zero, s0, 1683f
                  add          s11, t0, s2
1683:             srli         s10, sp, 31
                  add          t1, s9, t1
                  add          gp, a5, a7
                  lui          s6, 11129
                  or           t1, s3, t3
                  sltu         t3, t6, zero
                  sltu         s9, t4, a7
                  beq          t4, t1, 1707f
1691:             blt          t6, a7, 1692f
1692:             sll          a3, s11, s11
                  and          a6, a0, a5
                  slt          zero, a0, s11
1695:             sub          s6, a6, t1
                  bge          a1, s4, 1714f
1697:             blt          t1, s3, 1712f
                  sltiu        t4, t0, 1844
                  slti         s4, s11, 595
                  sub          s4, t6, s4
                  sltiu        t3, a4, 1627
                  or           s6, s3, a4
                  bgeu         t5, a3, 1719f
                  or           t4, a1, a1
                  and          zero, s5, s8
                  sltiu        a3, gp, 2026
1707:             sll          sp, s6, s3
                  bltu         s2, a4, 1726f
                  sltu         s2, t4, a7
                  srl          s7, t5, a1
                  bne          a2, s8, 1713f
1712:             addi         sp, s5, -739
1713:             bne          gp, s1, 1731f
1714:             lui          t4, 17134
                  sll          s8, a1, t5
                  addi         t4, t2, 1375
                  bltu         s9, s4, 1732f
                  sltiu        s4, s3, 1894
1719:             or           s10, s11, sp
                  blt          s2, a5, 1722f
                  sltu         zero, gp, tp
1722:             srai         s1, a1, 31
                  beq          s4, a0, 1729f
                  sub          a0, gp, s2
                  sltu         s10, s0, t6
1726:             and          s4, a1, t2
                  xor          a5, s9, s3
                  sll          zero, t3, t3
1729:             andi         s4, s6, -2007
                  slti         zero, a1, -549
1731:             sub          s3, t3, t1
1732:             srl          t6, a1, s6
                  sra          a6, a5, s0
                  blt          s2, s10, 1751f
                  sltiu        a4, gp, 1345
                  sltu         a4, sp, s3
                  sltu         s2, sp, t2
                  lui          s6, 483315
                  ori          a0, tp, -1228
                  add          s5, s6, zero
                  addi         a4, s8, 1808
                  lui          s6, 683915
                  add          t1, t3, gp
                  sra          a5, t4, t1
                  bne          t5, a7, 1760f
                  xori         sp, ra, 1515
                  lui          s4, 96071
                  bge          s4, a3, 1762f
                  bgeu         t4, t1, 1768f
                  slti         t4, a1, -1550
1751:             bgeu         a1, s10, 1765f
                  xor          t4, s1, s6
                  srai         s1, s1, 27
                  lui          a0, 134671
                  ori          s9, sp, -1950
                  blt          t4, sp, 1760f
                  blt          s7, t0, 1777f
                  slli         s0, a2, 26
                  srai         a3, s6, 25
1760:             bltu         s3, t6, 1767f
                  sltiu        s6, t3, 1654
1762:             sra          t5, s2, t5
                  sub          a3, s10, s5
                  sll          t6, ra, a2
1765:             andi         a5, s7, 1623
                  beq          s7, zero, 1783f
1767:             srli         t0, t3, 30
1768:             andi         s1, a1, 1052
                  sll          s5, ra, s4
                  sll          s9, t1, sp
                  add          s3, tp, sp
                  andi         t4, sp, 1093
                  add          t1, ra, s7
                  bgeu         t4, gp, 1793f
                  srl          s1, s3, t2
                  blt          s2, s10, 1792f
sub_5_20:         jal          t3, 8f
0:                jal          t1, 1f
1:                jal          ra, 11f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          ra, 13f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          t1, 12f
8:                jal          t0, 9f
9:                jal          ra, 6b
10:               jal          gp, 14f
11:               jal          t0, 5b
12:               jal          ra, 3b
13:               jal          ra, 2b
14:               add          s2, tp, s2
1777:             srl          s3, a3, ra
                  slt          a4, s5, s1
                  lui          t6, 147145
                  bgeu         s4, a0, 1791f
                  srli         t4, a2, 3
                  bne          a0, s5, 1788f
1783:             add          s1, a4, s2
                  xori         zero, s9, -1830
                  beq          s11, s6, 1801f
                  auipc        s4, 230040
                  add          s4, a1, s2
1788:             sub          t0, t0, s1
                  bge          s0, a6, 1801f
                  bltu         a4, zero, 1808f
1791:             addi         t1, a4, -881
1792:             bltu         a5, tp, 1808f
1793:             andi         a6, a2, 1463
                  bge          s11, a0, 1813f
                  slli         s1, t3, 27
                  lui          gp, 341716
                  xori         ra, s4, -940
                  and          t2, s0, a4
                  lui          s2, 371443
                  and          t3, s6, a6
1801:             add          s5, gp, s1
                  lui          a4, 512699
                  blt          a1, a2, 1804f
1804:             srli         sp, ra, 28
                  addi         t3, gp, -321
                  bge          ra, s8, 1824f
                  bne          sp, sp, 1809f
1808:             bgeu         tp, s9, 1823f
1809:             blt          t3, s5, 1826f
                  ori          s7, s10, -960
                  and          ra, s4, s3
                  sltiu        t6, t1, 1334
1813:             ori          s1, a2, 1759
                  blt          t3, t3, 1831f
                  ori          t3, a7, -2002
                  sll          t1, a4, a4
                  srli         sp, a2, 3
                  add          s8, ra, a0
                  lui          s4, 812384
                  or           t5, s2, ra
                  bltu         t0, t0, 1827f
                  srl          s4, s5, s1
1823:             andi         t3, tp, 1073
1824:             auipc        s10, 982806
                  ori          s2, t5, 383
1826:             sub          t1, a4, s8
1827:             xori         t1, a2, -1242
                  slti         s7, a2, -776
                  beq          s0, a6, 1845f
                  andi         t0, s8, -1548
1831:             ori          a0, s6, 1625
                  bltu         s9, s6, 1851f
                  addi         t1, t2, 1772
                  bltu         a6, t1, 1848f
                  sra          s11, a6, s8
                  and          sp, s0, s0
                  and          a3, tp, sp
                  lui          s10, 590219
                  addi         t5, s4, -234
                  blt          a1, a1, 1846f
                  sra          a6, s0, tp
                  slli         sp, t0, 19
                  addi         s0, t1, 1300
                  and          gp, t5, s1
1845:             bgeu         s7, t0, 1852f
1846:             sll          gp, a3, t1
                  slli         s5, s10, 0
1848:             sltiu        s9, s11, -440
                  xor          s2, s1, s3
                  slt          t1, s8, s8
1851:             addi         t6, s11, 762
1852:             slti         t0, zero, 1079
                  blt          a0, s4, 1865f
                  bge          a4, a5, 1874f
                  addi         s8, a7, -789
                  nop
                  bne          a1, s0, 1872f
                  bgeu         s1, t6, 1875f
                  sltu         ra, s8, sp
                  sll          s2, s9, s2
                  bne          a7, s5, 1872f
                  sra          s11, tp, s10
                  srli         a4, a6, 28
                  srai         s2, s11, 25
1865:             sub          t5, a6, s2
                  sll          sp, s3, t6
                  andi         a0, sp, -390
                  slti         s7, a2, 796
                  sll          a3, s6, ra
                  sltu         s4, gp, tp
                  ori          a3, zero, -46
1872:             srl          a0, a6, s8
                  xor          s1, zero, s8
1874:             srl          s7, tp, s9
1875:             bgeu         t5, a6, 1889f
                  or           t2, a0, s3
                  ori          t0, a5, -506
                  add          s9, a1, a4
                  sra          s2, a7, s3
                  blt          tp, s7, 1895f
                  srli         a3, t5, 11
                  slti         t5, s6, -1392
                  ori          sp, t5, -1564
                  srai         t4, s2, 18
                  nop
                  and          gp, s0, t6
                  lui          s6, 667241
                  bltu         a3, s0, 1905f
1889:             ori          a0, a7, 1438
                  sltiu        s7, a1, -1470
                  sll          gp, a2, t3
                  srli         s7, t6, 1
                  and          s2, a2, a6
                  and          s0, t6, zero
1895:             blt          s6, a1, 1913f
                  blt          s8, a6, 1913f
                  auipc        t0, 505457
                  addi         a3, t5, -230
                  addi         t6, t4, 1456
                  sltu         s10, tp, s10
                  xor          s0, t3, t0
                  bne          t2, ra, 1904f
                  xori         ra, a6, -2013
1904:             xori         a4, tp, -1655
1905:             nop
                  auipc        s11, 679082
                  srli         s7, s1, 8
                  bge          ra, a3, 1910f
                  lui          t1, 1001042
1910:             srai         s11, a5, 6
                  bne          s4, t4, 1915f
                  srai         s6, sp, 11
1913:             sub          a0, s7, a4
                  add          s7, gp, s8
1915:             xori         s7, a3, -1848
                  slti         t1, a7, 879
                  xor          a3, s3, a6
                  bge          s9, sp, 1936f
                  bne          s9, a0, 1935f
                  blt          s3, a3, 1938f
                  addi         a6, t5, 314
                  lui          zero, 581499
                  slt          a3, t6, tp
                  sltiu        a0, s0, -1420
                  bgeu         s6, s7, 1931f
                  ori          a3, a4, -1865
                  srl          s2, s3, s11
                  bne          s11, t2, 1943f
                  sub          s9, t3, a7
                  bltu         gp, s3, 1947f
1931:             slli         a4, t6, 16
                  sub          s0, tp, s7
                  add          a4, s7, s10
                  xor          t3, s3, t4
1935:             slti         t0, t5, -841
1936:             srl          a5, s0, s7
                  add          s4, s6, a6
1938:             sra          s3, zero, s4
                  bgeu         s10, zero, 1940f
1940:             nop
                  add          t0, gp, s1
                  sltiu        t2, s3, 1635
1943:             bge          s6, s7, 1949f
                  blt          tp, a2, 1964f
                  auipc        t2, 421087
                  slti         ra, t1, -369
1947:             addi         s8, s11, 713
                  blt          a2, s11, 1966f
1949:             bltu         s11, a1, 1966f
                  add          t0, tp, gp
                  slt          t3, a2, s7
                  and          a3, s11, a7
                  or           t6, t2, ra
                  and          s6, a5, t3
                  srl          zero, ra, s2
                  sltiu        t5, a3, -2020
                  sll          gp, a0, tp
                  bltu         tp, t5, 1976f
                  ori          s5, s0, -1666
                  or           a5, s6, a3
                  auipc        s0, 749178
                  srai         a7, s1, 29
                  sll          a6, a5, s9
1964:             andi         s9, s11, 734
                  addi         t3, t6, -1569
1966:             auipc        s4, 698347
                  srl          t5, t3, a5
                  sra          t2, s0, t3
                  and          s1, s10, s1
                  sltu         zero, s6, a6
                  addi         gp, s11, -508
                  sub          s7, s6, t3
                  srai         sp, s5, 15
                  slti         t1, s4, -1243
                  srli         s7, t3, 21
1976:             xori         a7, s9, -1379
                  srli         t3, t1, 11
                  or           a5, a4, a1
                  addi         t5, tp, -275
                  srai         t1, a2, 16
                  slt          a7, t5, a6
                  sltiu        a5, s5, -1159
                  srli         s8, s9, 24
                  andi         s3, a2, 731
                  bgeu         s9, a6, 1996f
                  nop
                  lui          a5, 833742
                  sll          zero, a3, a4
                  srai         s2, s5, 25
                  auipc        s2, 586296
sub_5_4:          jal          t3, 7f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          s3, 3f
3:                jal          ra, 21f
4:                jal          t1, 16f
5:                jal          ra, 22f
6:                jal          ra, 1b
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          gp, 5b
10:               jal          ra, 15f
11:               jal          t1, 2b
12:               jal          t1, 6b
13:               jal          sp, 14f
14:               jal          a4, 19f
15:               jal          ra, 17f
16:               jal          ra, 18f
17:               jal          ra, 0b
18:               jal          ra, 13b
19:               jal          s8, 20f
20:               jal          t1, 9b
21:               jal          t3, 10b
22:               xori         a0, s7, 1332
                  bge          a4, tp, 2010f
                  beq          s10, tp, 2011f
                  ori          s9, t2, -1229
                  xor          t4, s5, tp
                  bgeu         s6, t0, 2010f
1996:             sltiu        t2, a4, 431
                  bgeu         a0, s2, 2004f
                  ori          s4, a2, 1023
                  bgeu         t6, t5, 2015f
                  bgeu         a3, s7, 2017f
                  andi         s10, t3, -876
                  andi         zero, t4, 548
                  sltu         ra, s0, s4
2004:             beq          t4, gp, 2020f
                  sltiu        t2, a3, 1453
                  bne          ra, s9, 2024f
                  sltu         s4, gp, gp
                  ori          s3, t6, 815
                  bge          s3, a6, 2011f
2010:             bge          t3, tp, 2026f
2011:             bgeu         gp, t2, 2025f
                  ori          s5, s10, -720
                  slli         s11, a2, 3
                  andi         s4, a4, -564
2015:             bltu         ra, s2, 2029f
                  slt          a5, a3, t1
2017:             slti         sp, t1, -494
                  addi         sp, a5, -1182
                  xor          t2, s1, s5
2020:             sub          sp, s2, a4
                  or           t5, t2, s6
                  and          gp, t2, s3
                  and          t6, a5, s0
2024:             slli         a0, a4, 22
2025:             andi         s7, sp, -1413
2026:             sra          t1, a7, a5
                  bgeu         t1, t2, 2031f
                  beq          a0, t0, 2040f
2029:             sltiu        t2, s5, 1740
                  bge          a2, a7, 2032f
2031:             bltu         s8, s10, 2046f
2032:             slli         a4, a6, 10
                  addi         s6, s11, -1000
                  bge          s10, s1, 2051f
                  add          s6, zero, s2
                  bltu         gp, t6, 2054f
                  blt          t6, a5, 2039f
                  bgeu         s9, s3, 2055f
2039:             xor          gp, s6, zero
2040:             srai         a3, s1, 2
                  nop
                  beq          gp, t5, 2056f
                  auipc        s0, 409162
                  sltu         t6, t3, a1
                  xor          s7, t0, t6
2046:             sub          s1, a3, s4
                  or           s7, a6, s10
                  slli         a5, t4, 21
                  slt          sp, t2, s6
                  andi         t2, t5, -304
2051:             or           a5, a7, a2
                  addi         a3, t4, -1897
                  bge          a4, t2, 2071f
2054:             bltu         a7, a7, 2056f
2055:             srl          s3, a0, t6
2056:             ori          s8, t1, 179
                  blt          s3, s8, 2074f
                  addi         t6, t2, 189
                  lui          a4, 970513
                  bgeu         a4, a1, 2077f
                  srai         t5, a7, 4
                  sra          ra, t2, sp
                  sltu         s5, tp, s10
                  beq          s8, a1, 2068f
                  and          a6, a4, sp
                  auipc        t2, 72932
                  bge          s0, s8, 2084f
2068:             and          a3, s4, s5
                  andi         sp, s11, -1872
                  lui          gp, 455483
2071:             slli         t3, s9, 17
                  xori         t4, t0, 1334
                  srl          zero, t4, t1
2074:             lui          s9, 355536
                  lui          a4, 135187
                  bne          s3, a2, 2088f
2077:             slti         gp, s11, -1706
                  xori         s2, t1, -1436
                  slli         s0, s1, 11
                  or           t2, s7, a5
                  lui          t0, 863315
                  sltu         s10, zero, gp
                  srl          s1, a7, a6
2084:             slti         s1, s11, 1045
                  bgeu         a6, sp, 2096f
                  addi         s4, s9, 1714
                  sra          a0, zero, s7
2088:             sll          a5, t3, s3
                  slli         a7, s3, 9
                  beq          t6, s4, 2106f
                  srai         s3, a2, 9
                  or           s7, s6, s7
                  xor          a3, a2, tp
                  beq          a1, s6, 2108f
                  bgeu         t2, s10, 2101f
2096:             bgeu         t3, t0, 2097f
2097:             lui          t1, 616188
                  slli         s8, s1, 21
                  addi         a7, zero, -1353
                  srai         s6, s0, 16
2101:             xor          t6, s5, s8
                  sltu         a6, s4, s2
                  bne          a0, s0, 2118f
                  andi         a3, s11, -18
                  blt          s6, s9, 2121f
2106:             bne          a5, s6, 2121f
                  ori          a4, s10, 1105
2108:             slti         s9, a6, -650
                  or           t4, s2, sp
                  and          s9, t1, a5
                  lui          s11, 225086
                  bge          s5, s1, 2128f
                  slt          a5, sp, a5
                  sltu         t5, s5, s3
                  and          zero, t3, s9
                  xor          a4, t6, a3
                  bgeu         s4, t2, 2136f
2118:             ori          s6, a5, -1897
                  lui          s6, 87188
                  nop
2121:             ori          ra, t4, 1809
                  slti         t0, s7, -1177
                  ori          a0, s11, 1183
                  add          s5, s3, t5
                  xor          t1, s8, a5
                  sltiu        s8, t3, 335
                  bltu         a6, t3, 2144f
2128:             sll          a0, t0, a5
                  blt          s1, tp, 2147f
                  andi         a6, ra, 1312
                  sra          s9, ra, a7
sub_5_25:         jal          t3, 16f
0:                jal          gp, 3f
1:                jal          s3, 21f
2:                jal          ra, 19f
3:                jal          t1, 13f
4:                jal          ra, 15f
5:                jal          ra, 22f
6:                jal          ra, 7f
7:                jal          t1, 14f
8:                jal          ra, 9f
9:                jal          t1, 18f
10:               jal          t1, 1b
11:               jal          ra, 20f
12:               jal          t0, 4b
13:               jal          ra, 12b
14:               jal          ra, 10b
15:               jal          a5, 17f
16:               jal          ra, 11b
17:               jal          sp, 5b
18:               jal          gp, 6b
19:               jal          t1, 8b
20:               jal          t6, 2b
21:               jal          a5, 0b
22:               sll          zero, a0, t6
                  sltu         s8, s9, t0
                  srai         a6, a2, 5
                  lui          s0, 267836
                  srl          t4, s2, t5
2136:             bge          s8, s6, 2143f
                  add          s6, t1, a1
                  auipc        s4, 249874
                  slti         a6, s10, 1641
                  blt          gp, a6, 2142f
                  sub          t1, a3, t1
2142:             sltu         t5, a0, t3
2143:             bgeu         a1, s9, 2160f
2144:             blt          s5, s9, 2159f
                  sltu         s3, sp, t2
                  sltiu        s6, sp, -1971
2147:             sltiu        a0, ra, 562
                  sub          s2, ra, s7
                  and          t0, t5, t1
                  nop
                  xori         s4, s3, 1953
                  xor          s10, t3, s7
                  lui          a6, 1043615
                  sltu         a3, s4, a1
                  or           s4, s8, s5
                  sub          t2, zero, t5
                  nop
                  nop
2159:             srai         ra, s11, 15
2160:             srli         s5, a1, 25
                  andi         t4, gp, 645
                  andi         ra, s7, -1027
                  srli         s6, s0, 15
                  or           t3, t4, tp
                  addi         t2, s9, -523
                  slt          t6, s6, t4
                  srli         s3, t1, 19
                  slt          s6, t2, s8
                  lui          a4, 324820
                  srl          a7, a5, a2
                  srli         s10, s6, 31
                  xori         s10, a3, -1483
                  auipc        a7, 446361
                  sra          s9, s5, s10
                  sll          a3, t2, s7
                  srl          gp, a0, s10
                  addi         s1, s6, -1787
                  lw           t3, 4(a1)
                  addi         a1, a1, 48
                  lui          a5, 568968
3186:             addi x15, x28, 0
3186:             jalr x15, x15, 0
sub_1:            and          s3, sp, a7
                  srli         gp, t5, 1
                  and          a0, t4, t6
                  addi         a1, a1, -12
                  ori          t1, t1, -730
                  srli         a3, a7, 25
                  sw           t3, 4(a1)
                  sub          s1, a5, s9
                  slli         a6, a7, 28
                  la           a5, sub_4
                  slti         s8, t1, -346
                  addi         a5, a5, -113
                  auipc        s5, 311565
                  slt          s10, s11, tp
                  bgeu         a5, a6, sub_1_j3 #branch to jump instr
                  xor          a6, gp, s5
                  and          s5, s7, s7
sub_1_j3:         jalr         t3, a5, 114 #jump sub_1 -> sub_4
                  addi         sp, tp, -940
                  xor          s5, a7, a5
                  or           gp, t2, s8
                  xor          t2, s3, s2
                  nop
                  srai         s6, a3, 6
                  ori          t5, a1, 995
                  beq          t1, s10, sub_1_j4 #branch to jump instr
                  add          t1, t2, a2
                  sub          s4, a2, zero
sub_1_j4:         jal          t3, sub_4 #jump sub_1 -> sub_4
                  lui          a6, 247437
                  slti         s10, s9, 706
                  ori          gp, s5, -236
                  sltu         s1, t6, t5
                  add          s11, a1, t2
                  slli         gp, a4, 24
                  srl          s11, s7, s4
sub_1_j5:         jal          t3, sub_3 #jump sub_1 -> sub_3
                  nop
                  slt          t4, t6, t3
                  and          a5, t5, tp
                  bgeu         a7, s10, sub_1_j6 #branch to jump instr
                  andi         s11, t5, 807
                  slti         t5, t6, 1598
                  srl          s4, a0, s11
                  andi         s10, tp, -367
sub_1_j6:         jal          t3, sub_2 #jump sub_1 -> sub_2
sub_1_0:          jal          t3, 10f
0:                jal          t2, 6f
1:                jal          ra, 0b
2:                jal          t1, 5f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          ra, 3b
6:                jal          t1, 11f
7:                jal          ra, 8f
8:                jal          t1, 1b
9:                jal          t1, 4b
10:               jal          ra, 2b
11:               sltu         t6, a0, s6
                  bne          a0, s2, 5f
                  slli         s11, sp, 4
                  auipc        s8, 553401
                  bltu         s4, a5, 21f
                  ori          s3, s1, -514
5:                bne          a6, t1, 18f
                  bne          a2, a6, 26f
                  slli         a4, s3, 8
                  sltu         s9, s3, t0
                  auipc        a0, 481581
                  auipc        a4, 156009
                  bne          s7, s8, 30f
                  nop
                  xor          s4, s9, gp
                  lui          ra, 15003
                  bge          s10, gp, 16f
16:               nop
                  bne          a4, a1, 37f
18:               xori         s4, a6, 1250
                  add          s4, s11, s6
                  auipc        s6, 107427
21:               bne          gp, a6, 33f
                  slti         s4, a5, -1916
                  slt          s2, t0, s6
                  slt          s7, zero, t0
                  sll          t0, a3, s2
26:               slt          s4, tp, s3
                  and          t6, s5, s1
                  sltiu        s3, s6, 2013
                  bltu         s11, s5, 39f
30:               addi         t6, a5, -1367
                  blt          t1, s10, 41f
                  sltu         a6, s1, t1
33:               beq          t3, a0, 42f
                  add          a4, t6, s10
                  andi         s9, t0, 219
                  nop
37:               xor          zero, s5, s4
                  sll          t1, t2, s10
39:               and          ra, t6, s2
                  beq          s6, sp, 50f
41:               srl          t1, s9, t0
42:               add          s7, t2, a4
                  andi         s10, gp, -1974
                  srl          s10, a1, t1
                  nop
                  bltu         s10, s5, 58f
                  sll          s4, s10, s6
                  sltiu        s0, a7, 770
                  xori         s10, zero, 1517
50:               bltu         t4, s0, 53f
                  srl          s9, s3, t1
                  sltu         s10, s5, s9
53:               lui          a7, 718715
                  sltiu        s6, s1, 424
                  bne          a6, s11, 65f
                  slti         s2, t2, -483
                  srl          a3, t3, a3
58:               or           s5, sp, t2
                  sra          t3, s7, t6
                  beq          a2, zero, 66f
                  beq          a2, t5, 79f
                  or           t5, s8, s9
                  andi         a6, a2, 884
                  srli         s0, a2, 18
65:               bne          s7, t1, 77f
66:               slti         t6, sp, 1939
                  sltu         sp, s10, s5
                  xori         t5, a3, 1501
                  sltu         s11, s1, s2
                  srai         s0, s11, 20
                  lui          t0, 315979
                  and          s2, t1, a0
                  addi         a4, s4, -1698
                  or           t4, t1, a7
                  bltu         s10, s0, 84f
                  andi         s2, sp, -513
77:               sub          a5, s5, zero
                  lui          s8, 789375
79:               auipc        t1, 11457
                  sltiu        s4, a4, -818
                  sll          sp, ra, t6
                  slli         s11, t4, 28
                  addi         a0, a7, -932
84:               ori          s3, s6, 1113
                  slti         a6, t1, 1171
                  srli         s6, s4, 21
                  nop
                  bgeu         t6, s2, 89f
89:               sra          zero, s0, a1
                  srli         t0, a6, 18
                  slli         t1, s0, 31
                  lw           t3, 4(a1)
                  sra          a6, t4, s2
                  xori         gp, t1, 1184
                  sra          a0, a2, tp
                  or           t2, a6, t4
                  xor          a5, ra, s10
                  lui          t5, 860349
                  auipc        s8, 608786
                  addi         a1, a1, 12
                  slt          s4, sp, a6
161:              addi x30, x28, 1
161:              jalr x30, x30, 0
sub_4:            bne          t0, t6, sub_4_stack_p
                  sra          s8, s6, a5
                  srli         a6, zero, 8
sub_4_stack_p:    addi         a1, a1, -16
                  addi         s0, a0, -846
                  sw           t3, 4(a1)
                  addi         t0, s9, 1607
                  lui          t2, 544024
                  la           s3, sub_5
                  and          t6, s8, gp
                  addi         s3, s3, -140
                  slti         s1, gp, -613
                  srli         s11, s11, 30
                  sltiu        t0, gp, -1489
                  add          t6, s4, s3
                  bge          t3, a1, sub_4_j8 #branch to jump instr
                  sll          t5, s7, s0
sub_4_j8:         jalr         t3, s3, 140 #jump sub_4 -> sub_5
sub_4_7:          jal          t3, 11f
0:                jal          ra, 17f
1:                jal          t1, 9f
2:                jal          ra, 8f
3:                jal          t1, 18f
4:                jal          t1, 14f
5:                jal          t2, 16f
6:                jal          ra, 2b
7:                jal          ra, 13f
8:                jal          ra, 7b
9:                jal          t5, 5b
10:               jal          ra, 15f
11:               jal          a5, 1b
12:               jal          ra, 4b
13:               jal          ra, 19f
14:               jal          a7, 6b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               jal          ra, 10b
18:               jal          ra, 0b
19:               sll          a5, s2, a7
sub_4_0:          jal          t3, 8f
0:                jal          t1, 18f
1:                jal          gp, 12f
2:                jal          ra, 23f
3:                jal          gp, 5f
4:                jal          ra, 20f
5:                jal          t1, 2b
6:                jal          ra, 10f
7:                jal          ra, 25f
8:                jal          ra, 9f
9:                jal          ra, 26f
10:               jal          s2, 3b
11:               jal          ra, 13f
12:               jal          ra, 17f
13:               jal          ra, 16f
14:               jal          ra, 0b
15:               jal          t4, 6b
16:               jal          ra, 21f
17:               jal          ra, 14b
18:               jal          ra, 22f
19:               jal          a6, 24f
20:               jal          t4, 19b
21:               jal          t1, 4b
22:               jal          s4, 15b
23:               jal          t1, 27f
24:               jal          t1, 7b
25:               jal          sp, 1b
26:               jal          t1, 11b
27:               xor          s3, a4, s8
sub_4_2:          jal          t3, 0f
0:                jal          ra, 14f
1:                jal          t4, 8f
2:                jal          ra, 7f
3:                jal          t6, 5f
4:                jal          ra, 24f
5:                jal          ra, 12f
6:                jal          gp, 26f
7:                jal          t1, 25f
8:                jal          t0, 28f
9:                jal          s3, 3b
10:               jal          s10, 1b
11:               jal          t2, 19f
12:               jal          t1, 17f
13:               jal          t1, 4b
14:               jal          ra, 21f
15:               jal          ra, 2b
16:               jal          ra, 22f
17:               jal          ra, 27f
18:               jal          s4, 20f
19:               jal          ra, 15b
20:               jal          t1, 6b
21:               jal          ra, 10b
22:               jal          t1, 29f
23:               jal          ra, 9b
24:               jal          ra, 23b
25:               jal          ra, 16b
26:               jal          t1, 11b
27:               jal          t1, 18b
28:               jal          ra, 13b
29:               xor          a7, s2, s3
sub_4_5:          jal          t3, 12f
0:                jal          ra, 3f
1:                jal          s6, 22f
2:                jal          t1, 10f
3:                jal          t1, 7f
4:                jal          ra, 2b
5:                jal          t1, 4b
6:                jal          ra, 19f
7:                jal          s3, 20f
8:                jal          t0, 17f
9:                jal          ra, 5b
10:               jal          t1, 18f
11:               jal          t1, 9b
12:               jal          ra, 13f
13:               jal          s7, 0b
14:               jal          ra, 23f
15:               jal          ra, 21f
16:               jal          s8, 14b
17:               jal          t0, 11b
18:               jal          ra, 1b
19:               jal          t1, 15b
20:               jal          ra, 8b
21:               jal          ra, 16b
22:               jal          ra, 6b
23:               sltu         s4, s0, s3
sub_4_1:          jal          t3, 6f
0:                jal          t1, 13f
1:                jal          ra, 11f
2:                jal          t1, 10f
3:                jal          ra, 4f
4:                jal          t1, 2b
5:                jal          ra, 0b
6:                jal          t1, 1b
7:                jal          ra, 14f
8:                jal          t1, 5b
9:                jal          t1, 15f
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          ra, 3b
13:               jal          ra, 12b
14:               jal          ra, 8b
15:               nop
sub_4_6:          jal          t3, 0f
0:                jal          a4, 3f
1:                jal          ra, 9f
2:                jal          ra, 1b
3:                jal          ra, 21f
4:                jal          s4, 16f
5:                jal          sp, 15f
6:                jal          t0, 11f
7:                jal          ra, 18f
8:                jal          t1, 20f
9:                jal          s6, 4b
10:               jal          ra, 5b
11:               jal          s2, 12f
12:               jal          ra, 10b
13:               jal          t1, 6b
14:               jal          t1, 13b
15:               jal          ra, 2b
16:               jal          s5, 22f
17:               jal          ra, 14b
18:               jal          a6, 17b
19:               jal          ra, 7b
20:               jal          ra, 23f
21:               jal          t1, 8b
22:               jal          sp, 25f
23:               jal          t1, 24f
24:               jal          ra, 19b
25:               sltiu        s1, s7, 981
                  sll          t5, a1, t5
                  srl          s8, a7, a1
                  sub          gp, t2, ra
                  nop
                  bltu         s2, zero, 12f
                  srli         ra, t6, 23
                  sra          t3, t3, s6
                  sltiu        s4, sp, -260
                  andi         s7, a6, 1670
                  nop
                  xori         s3, a6, 1486
                  sra          t1, gp, t2
12:               srai         a4, sp, 4
                  xori         s4, ra, -1592
                  sub          s4, s3, a7
                  bgeu         sp, s3, 30f
                  and          t0, a5, s9
                  blt          a4, tp, 23f
                  srl          a7, s7, s0
                  or           a3, t3, s0
                  bgeu         zero, s2, 36f
                  sll          gp, s3, a1
                  bgeu         ra, s9, 29f
23:               bge          t3, zero, 31f
                  bltu         a1, ra, 26f
                  andi         a6, gp, -1690
26:               xor          gp, s6, a2
                  bge          a0, a4, 47f
                  andi         s8, t6, 364
29:               add          a7, a6, tp
30:               slli         gp, t2, 11
31:               bne          a6, s3, 51f
                  nop
                  blt          a3, s4, 53f
                  sltiu        s4, s8, -1278
                  bne          s6, s5, 52f
36:               bltu         t1, t0, 52f
                  nop
                  beq          a1, a5, 47f
                  srli         s6, s9, 19
                  add          gp, s0, a4
                  slt          ra, t0, a2
                  srai         t2, sp, 4
                  sra          a6, s10, gp
                  sra          ra, t0, s8
                  bge          tp, s1, 53f
                  lui          s10, 773274
47:               sll          s7, a4, sp
                  xori         s7, a3, 65
                  bltu         s0, s5, 53f
                  slti         t4, s4, -1427
51:               sltu         s9, t6, a4
52:               beq          s8, s8, 57f
53:               blt          s10, t3, 61f
                  or           s11, s8, a1
                  andi         t5, t1, -590
                  beq          s2, t6, 67f
57:               sll          a0, t5, t0
                  slt          a6, a1, s6
                  add          t4, tp, t1
                  addi         t1, sp, 119
61:               auipc        a3, 639116
                  srli         t5, s3, 25
                  sll          sp, s6, s5
                  auipc        gp, 869961
                  bgeu         a5, s4, 71f
                  bne          zero, zero, 85f
67:               add          s3, a1, t1
                  xori         sp, s1, -817
                  addi         s3, s0, 1952
                  sra          s6, s1, a0
71:               slli         t1, a1, 8
                  and          t4, s2, s2
                  add          s1, s8, s0
                  and          t4, gp, s0
                  srl          s3, a5, s1
                  beq          t6, t6, 94f
                  srai         s7, t4, 26
                  sltu         gp, s1, a4
                  sltu         t4, gp, a6
                  srl          s3, s0, t3
                  bltu         tp, t5, 84f
                  bgeu         t3, ra, 85f
                  blt          a0, a5, 92f
84:               bne          sp, t4, 90f
85:               addi         t6, ra, -292
                  bltu         zero, a6, 103f
                  bltu         t1, s3, 102f
                  slli         a5, ra, 2
                  nop
90:               addi         s11, s2, 292
                  xor          s4, a0, a1
92:               bltu         a6, t2, 102f
                  add          t1, s3, ra
94:               srl          ra, a6, t4
                  blt          s4, s2, 100f
                  srli         zero, ra, 16
                  srl          a3, s10, a1
                  sub          s8, s11, s2
                  ori          s5, s2, 1027
100:              xori         t2, s7, -1348
                  auipc        t6, 458399
102:              add          t5, a3, zero
103:              sub          t5, s5, a7
                  bne          t4, s1, 112f
                  slti         t2, zero, 1486
                  or           s3, s8, t2
                  beq          t0, zero, 111f
                  xori         s11, sp, -806
                  srl          s5, s6, a2
                  sltu         a6, s0, a0
111:              or           gp, a7, a5
112:              srai         s8, t6, 10
                  sra          a3, a0, t3
                  srli         ra, tp, 29
                  xor          s7, t5, s1
                  srli         sp, s6, 3
                  andi         s11, a6, 115
                  xor          t6, s1, a3
                  bltu         a3, sp, 139f
                  nop
                  beq          s6, a4, 141f
                  and          t0, s0, a5
                  bltu         t0, s11, 139f
                  nop
                  beq          s8, a6, 131f
                  sltiu        s6, zero, -1017
                  bgeu         s4, t6, 145f
                  auipc        s2, 487233
                  ori          t3, s1, -85
                  srai         a4, a0, 21
131:              xor          s10, s4, s3
                  blt          s9, a1, 140f
                  slti         a5, t6, -1174
                  sub          zero, t0, tp
                  lui          t6, 92074
                  lui          s11, 113425
                  add          a3, a4, s8
                  lui          t5, 160055
139:              srai         zero, s3, 25
140:              beq          t2, t2, 142f
141:              sltu         s2, s2, s3
142:              blt          a3, a6, 151f
                  bne          a6, t0, 148f
                  ori          s1, s10, 1061
145:              srli         s0, a0, 0
                  sll          a3, s10, zero
                  sltiu        s11, s9, 1248
148:              lui          t3, 715606
                  nop
sub_4_3:          jal          t3, 1f
0:                jal          ra, 11f
1:                jal          ra, 9f
2:                jal          t0, 12f
3:                jal          t1, 10f
4:                jal          s4, 0b
5:                jal          ra, 7f
6:                jal          s10, 8f
7:                jal          t0, 4b
8:                jal          t0, 5b
9:                jal          ra, 6b
10:               jal          ra, 13f
11:               jal          t1, 2b
12:               jal          ra, 3b
13:               srli         s10, t3, 12
                  or           t5, tp, t0
151:              nop
                  srl          t6, t3, t4
                  sltu         t6, a7, a1
                  auipc        gp, 774006
                  nop
                  xori         a5, t6, 105
                  sub          s2, a6, ra
                  lui          sp, 327399
                  bne          s2, t4, 175f
                  srl          t3, s0, tp
                  xor          s0, s1, t1
                  bltu         t3, zero, 172f
                  sub          ra, a5, s9
                  slli         s6, t5, 28
                  auipc        a7, 210789
                  andi         t6, t0, 1135
                  bgeu         s6, gp, 175f
                  bgeu         t4, gp, 179f
                  srai         s7, t1, 0
                  sra          a0, tp, t1
                  slti         t3, t1, -1816
172:              slli         sp, s1, 13
                  slli         t0, t5, 0
                  sltiu        t5, a6, -177
175:              auipc        t1, 342475
                  sub          a0, a5, s0
                  slli         ra, a7, 4
                  sra          s8, sp, s10
179:              blt          a1, s9, 196f
                  addi         s10, zero, 449
                  slti         a7, s11, 596
                  sltu         a3, a3, s4
                  addi         a0, a0, -406
                  slt          s5, sp, t1
                  beq          s8, a2, 200f
                  sltiu        s0, s0, -612
                  andi         a4, s5, -243
                  slti         sp, s5, 600
                  xor          a0, s2, s4
                  srli         zero, ra, 18
                  sra          s11, s8, gp
                  bne          a1, a1, 209f
                  xor          a5, t4, a3
                  add          zero, a1, s9
                  slt          t1, s4, s2
196:              sra          t2, t5, a7
sub_4_4:          jal          t3, 14f
0:                jal          s10, 10f
1:                jal          s4, 3f
2:                jal          t4, 27f
3:                jal          ra, 21f
4:                jal          t1, 6f
5:                jal          t1, 1b
6:                jal          t2, 23f
7:                jal          ra, 16f
8:                jal          t0, 28f
9:                jal          a0, 8b
10:               jal          ra, 2b
11:               jal          t1, 0b
12:               jal          a6, 24f
13:               jal          ra, 22f
14:               jal          sp, 20f
15:               jal          t1, 18f
16:               jal          ra, 13b
17:               jal          ra, 11b
18:               jal          s5, 12b
19:               jal          ra, 9b
20:               jal          ra, 17b
21:               jal          ra, 25f
22:               jal          s2, 5b
23:               jal          ra, 7b
24:               jal          ra, 26f
25:               jal          t1, 19b
26:               jal          gp, 4b
27:               jal          ra, 15b
28:               sub          a4, t3, t5
                  and          a5, t2, gp
                  sll          a0, t2, t3
                  bltu         s10, s11, 207f
200:              sll          t5, s1, gp
                  sltu         s0, a0, tp
                  bgeu         a6, s10, 221f
                  bne          a5, sp, 212f
                  sltu         s3, s1, s6
                  auipc        s11, 465512
                  nop
207:              bgeu         tp, t1, 215f
                  srl          t6, a6, gp
209:              bge          t4, s0, 217f
                  bge          s3, s9, 217f
                  bgeu         gp, gp, 231f
212:              xor          t2, s10, t3
                  beq          a5, a5, 219f
                  nop
215:              bne          s5, s4, 220f
                  slli         s7, zero, 31
217:              addi         t1, s8, -631
                  or           a7, s2, t2
219:              add          t1, t6, a0
220:              add          s8, s2, s9
221:              nop
                  slti         s4, t0, 398
                  andi         s4, a7, -1105
                  or           a0, t4, a6
                  or           s1, zero, t0
                  xor          s2, s8, s6
                  slt          sp, a6, a2
                  sltu         t4, a2, t2
                  or           s6, a2, s3
                  auipc        t3, 951821
231:              bgeu         s11, t1, 234f
                  sub          sp, tp, a4
                  sltu         a3, t4, zero
234:              bne          s5, a1, 240f
                  bne          t5, t0, 238f
                  slt          t2, s5, zero
                  sll          gp, tp, s7
238:              sltu         t3, t2, t0
                  sltu         a3, tp, s4
240:              bltu         t5, a7, 255f
                  slt          sp, sp, s10
                  nop
                  ori          a5, a0, -1576
                  bne          s2, t0, 253f
                  sra          ra, zero, s7
                  slti         t6, s4, -1999
                  sll          s9, a3, tp
                  slti         a4, s6, 1432
                  xori         gp, a7, 1544
                  sltiu        zero, t6, 1156
                  srl          t0, s5, t6
                  xor          sp, sp, a2
253:              slli         s4, s10, 28
                  lui          s1, 590070
255:              sltiu        t3, s0, 1958
                  add          s8, sp, s11
                  auipc        t2, 980577
                  or           t1, s5, a2
                  or           t5, s7, zero
                  nop
                  bgeu         zero, t3, 278f
                  add          s9, s4, a0
                  add          s8, a4, a5
                  nop
sub_4_8:          jal          t3, 10f
0:                jal          s2, 6f
1:                jal          s11, 0b
2:                jal          s1, 17f
3:                jal          s10, 1b
4:                jal          ra, 14f
5:                jal          t2, 15f
6:                jal          ra, 7f
7:                jal          t1, 8f
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          ra, 12f
11:               jal          t1, 9b
12:               jal          t1, 5b
13:               jal          t5, 11b
14:               jal          ra, 2b
15:               jal          a7, 16f
16:               jal          gp, 13b
17:               xori         ra, s0, -959
                  auipc        a7, 466717
                  bne          a1, s10, 286f
                  xor          sp, zero, a7
                  xor          s4, gp, zero
                  andi         sp, t3, 1093
                  beq          a1, gp, 290f
                  lui          s2, 982176
                  ori          s1, t5, -192
                  sra          a0, t3, tp
                  addi         a5, a2, 21
                  slt          t1, a1, a1
                  xori         s9, ra, -788
                  andi         s1, s1, 1569
278:              and          zero, s9, sp
                  bne          gp, s10, 282f
                  sltu         s11, gp, s2
                  srli         t1, a2, 31
282:              or           t4, a2, a0
                  ori          s0, ra, -333
                  auipc        s11, 346291
                  srl          t6, ra, a3
286:              srai         t3, s7, 10
                  lui          t0, 207012
                  srl          s6, t2, a6
                  bgeu         t0, s2, 307f
290:              bge          t2, s6, 293f
                  add          gp, gp, a3
                  slli         ra, s4, 15
293:              andi         s7, s10, -73
                  nop
                  nop
                  sltiu        zero, a6, 1241
                  sub          a3, s9, t3
                  sltiu        s11, a7, 1834
                  add          s2, a0, s1
                  bltu         s0, a5, 315f
                  sltu         s6, t6, a7
                  slt          s9, s4, a6
                  sra          s11, s1, tp
                  auipc        zero, 924235
                  sra          t3, t3, s2
                  sll          sp, zero, s5
307:              sub          s1, a4, a6
                  slti         a7, t2, -786
                  sra          s0, tp, s6
                  xori         a3, s1, -1103
                  bgeu         s0, a4, 327f
                  slt          a4, s3, a6
                  blt          s8, s4, 321f
                  or           t0, t5, t0
315:              addi         t1, a4, 417
                  addi         ra, tp, -205
                  nop
                  lui          t0, 778717
                  or           t2, a1, s0
                  bgeu         s5, a5, 326f
321:              and          t4, t1, t2
                  blt          s7, zero, 324f
                  sll          a3, s7, s8
324:              or           gp, t3, zero
                  andi         t2, ra, -1263
326:              sub          a0, s11, a7
327:              sll          s6, s11, s1
                  add          a7, a4, tp
                  beq          s10, s1, 345f
                  add          zero, t2, a7
                  sra          s1, s9, s3
                  lui          s10, 201202
                  sub          s3, a2, a2
                  bltu         t4, s6, 342f
                  sltu         zero, ra, s3
                  beq          s9, s11, 341f
                  sra          a6, s2, gp
                  bne          a0, s9, 344f
                  ori          s7, t3, -1358
                  add          t5, a1, s8
341:              sll          s6, s10, s2
342:              bge          t5, s10, 359f
                  ori          a7, s2, 1049
344:              slti         a7, s3, 483
345:              bge          s10, a3, 354f
                  bne          a6, t1, 350f
                  nop
                  ori          s5, s4, 513
                  ori          t3, s3, -1407
350:              blt          t5, a3, 356f
                  or           zero, s3, s11
                  andi         gp, s1, -642
                  bne          tp, s11, 372f
354:              add          s1, a2, a7
                  blt          t5, t0, 370f
356:              xor          s4, s0, t1
                  bne          s3, s7, 365f
                  auipc        t1, 848366
359:              and          s2, s3, gp
                  slli         t0, tp, 16
                  bge          a2, zero, 372f
                  sub          s1, t4, s8
                  lui          s9, 948261
                  slli         s2, tp, 11
365:              and          s1, t3, t1
                  srai         s5, t6, 10
                  slt          s2, sp, a2
                  slli         a4, a4, 17
                  beq          a1, a4, 374f
370:              srl          s11, s4, a2
                  ori          s9, s3, -1105
372:              sltu         a0, t0, s4
                  slt          s3, s11, t2
374:              sll          s10, s6, s3
                  or           s9, s1, s1
                  slti         gp, a1, 166
                  addi         t0, s6, -93
                  slli         t1, s0, 9
                  sll          t1, zero, s11
                  auipc        a7, 965500
                  srai         s1, sp, 25
                  beq          ra, s4, 402f
                  sltu         a7, s10, s8
                  beq          s7, t4, 392f
                  bne          ra, s9, 392f
                  sll          a3, a2, s4
                  or           s11, t0, t5
                  sltiu        zero, a1, -1181
                  bge          a4, zero, 397f
                  bgeu         sp, ra, 400f
                  sltu         a0, a2, s6
392:              add          t4, t6, a7
                  sub          t3, zero, zero
                  sltiu        a5, s7, 961
                  nop
                  add          s5, a5, s9
397:              bltu         a5, s6, 403f
                  bltu         a6, t6, 418f
                  andi         a6, t2, -1751
400:              sra          a0, a1, s10
                  sll          s3, a3, tp
402:              srai         s6, t5, 6
403:              lui          s9, 40837
                  lui          a0, 66100
                  xori         s5, t6, 1847
                  nop
                  lui          s11, 670423
                  sra          a5, t0, a7
                  srl          ra, a6, a3
                  sltiu        t4, t6, -1216
                  slt          a0, t2, sp
                  andi         sp, a4, -378
                  srli         s1, s0, 28
                  sra          t5, s5, s7
                  add          gp, s4, s5
                  bge          t0, zero, 418f
                  lui          a4, 5856
418:              xori         t0, a5, -306
                  and          s8, s5, a0
                  beq          s5, t0, 428f
                  sltiu        a6, t6, -277
                  slli         t4, s2, 15
                  nop
                  srli         s6, s0, 14
                  lui          t0, 6365
                  add          t0, s3, a5
                  or           t5, a6, t6
428:              xor          a3, t6, t2
                  slli         a7, s8, 28
                  sra          s8, s9, s3
                  ori          t4, a4, -1664
                  slt          s4, t0, zero
                  beq          s10, a6, 448f
                  slt          t4, a5, s1
                  ori          s4, a7, -407
                  bge          s2, t5, 444f
                  sll          t4, s4, s2
                  sltiu        t3, s11, -1622
                  blt          a1, a0, 442f
                  bltu         s8, t0, 447f
                  beq          s1, zero, 445f
442:              xor          a0, sp, a6
                  auipc        s6, 129383
444:              bne          a5, a6, 447f
445:              beq          s5, t0, 454f
                  srai         t6, a6, 24
447:              andi         s0, a6, -420
448:              beq          a4, a4, 456f
                  addi         s1, sp, 618
                  ori          t2, ra, -397
                  blt          gp, s7, 471f
                  srli         s11, a1, 25
                  bne          gp, s3, 469f
454:              andi         s6, s7, -1951
                  srai         a4, a3, 5
456:              bgeu         s8, s11, 471f
                  sll          t4, s3, s7
                  slti         s1, s0, 964
                  beq          t4, t5, 470f
                  xori         a3, s7, -1830
                  add          s1, a6, ra
                  beq          a1, a2, 478f
                  or           gp, zero, t6
                  slli         s5, s8, 25
                  srai         t6, t0, 22
                  srli         s3, a7, 8
                  bne          t5, t6, 484f
                  ori          t6, s10, -2010
469:              or           t3, s1, t0
470:              sub          a4, s3, t0
471:              slt          s5, tp, a0
                  bltu         a4, s7, 480f
                  ori          s8, s9, 142
                  sltu         a5, t4, a1
                  bltu         ra, s11, 481f
                  slli         s1, zero, 0
                  sll          s1, s9, t2
478:              srl          t6, s1, a4
                  slt          zero, t2, s8
480:              slt          s5, s3, s7
481:              srai         s5, s7, 26
                  srli         s7, gp, 19
                  sra          t6, a5, a6
484:              lui          a5, 138313
                  sltu         sp, gp, t0
                  srai         t2, a7, 28
                  and          s2, s2, s6
                  ori          t6, s0, -633
                  or           s10, t6, s7
                  srl          s2, s10, a0
                  addi         s7, s9, -830
                  or           s10, tp, t6
                  xori         t6, s3, 1293
                  srl          s5, ra, a6
                  srai         t0, a5, 2
                  lui          t2, 330960
                  sra          gp, t4, s9
                  ori          t4, a0, -1488
                  lw           t3, 4(a1)
                  sltiu        a6, t1, -855
                  slt          a3, t6, a7
                  lui          a5, 911169
                  addi         a1, a1, 16
                  lui          s8, 891268
                  slt          a0, sp, a5
738:              addi x6, x28, 0
738:              jalr x6, x6, 0
sub_2:            sltiu        s2, s10, -678
                  andi         a4, s5, -160
                  srli         s10, s4, 9
                  bne          s10, t2, sub_2_stack_p
                  srai         s6, s0, 15
sub_2_stack_p:    addi         a1, a1, -20
                  add          a4, s5, a7
                  lui          s6, 257985
                  sw           t3, 4(a1)
                  nop
                  bge          a5, s1, 20f
                  srl          s1, s7, s4
                  bne          tp, a6, 5f
                  sltiu        s4, a6, -465
                  sltu         s7, s5, sp
5:                srai         s4, s9, 29
                  and          s3, s5, zero
                  sra          t6, s3, s7
                  sll          a6, s8, a1
                  nop
                  andi         t1, tp, 589
                  xori         t1, gp, 1421
                  bne          s7, s0, 22f
                  slt          sp, a5, t0
                  sra          a5, s5, s11
                  bltu         s2, t0, 22f
                  sltiu        s11, s0, -1052
                  slti         t5, s8, -1331
                  or           s4, t0, t5
                  lui          a4, 736607
20:               slli         s2, a0, 5
                  bge          tp, t1, 22f
22:               sub          a3, s9, gp
                  srli         s1, s11, 20
                  add          ra, s3, sp
                  lw           t3, 4(a1)
                  xori         t6, t3, -198
                  sub          zero, a7, a3
                  sll          gp, a7, t6
                  addi         a1, a1, 20
                  auipc        s1, 1018227
                  addi         a6, s7, -1411
                  sra          t1, t1, t0
                  srli         gp, s9, 21
44:               addi x5, x28, 0
44:               jalr x5, x5, 0
sub_3:            sltiu        t6, s10, -940
                  bltu         t5, t1, sub_3_stack_p
sub_3_stack_p:    addi         a1, a1, -32
                  addi         t2, t0, 430
                  slli         a4, a2, 29
                  sw           t3, 4(a1)
                  addi         s5, s9, 1356
                  sll          t2, zero, s8
                  srli         t5, s6, 17
                  slt          a6, a7, a5
                  add          gp, s0, s7
                  la           a5, sub_5
                  add          gp, a0, zero
                  srl          t1, s6, ra
                  addi         a5, a5, 859
                  ori          a0, a5, -1327
                  xor          t2, s8, s10
                  andi         zero, s8, 84
                  andi         ra, tp, -347
sub_3_j7:         jalr         t3, a5, -858 #jump sub_3 -> sub_5
sub_3_1:          jal          t3, 6f
0:                jal          a4, 10f
1:                jal          t1, 0b
2:                jal          ra, 5f
3:                jal          ra, 4f
4:                jal          t1, 8f
5:                jal          a4, 1b
6:                jal          t1, 3b
7:                jal          ra, 2b
8:                jal          ra, 9f
9:                jal          t0, 7b
10:               sra          s11, t0, a3
                  beq          s3, t6, 11f
                  xor          a0, a5, s0
                  srli         t4, s10, 30
                  slt          s9, a0, s5
                  auipc        s10, 327926
                  andi         t2, gp, 1281
                  addi         sp, gp, -820
                  or           t1, s5, a6
                  slt          gp, tp, s3
                  auipc        a3, 520428
                  bgeu         s5, a7, 25f
11:               sltiu        a7, s5, -1986
                  slli         t6, s10, 1
                  sltiu        a5, s10, -256
                  nop
                  sll          a5, s10, a4
                  sub          s7, t2, s2
                  srai         t1, tp, 19
                  blt          t4, ra, 22f
                  bne          s10, s9, 29f
                  or           s5, s7, t3
                  addi         zero, s1, 1968
22:               bne          t1, s4, 36f
                  bne          zero, s1, 25f
                  sltu         t2, t3, a0
25:               beq          a5, s4, 42f
                  ori          t5, zero, 1460
                  srl          s9, tp, t0
                  lui          t6, 1041763
29:               srli         a7, a7, 0
                  and          s10, a0, a7
                  slt          t5, zero, t5
                  bne          gp, s9, 48f
                  nop
                  bne          s6, a0, 50f
                  sub          a6, s5, a5
36:               nop
                  and          s5, tp, t3
                  sltu         s8, a2, ra
                  slti         t1, s6, 1904
                  xori         t1, s4, -1115
                  slli         a7, sp, 25
42:               srl          s6, zero, ra
                  sltu         zero, t3, a1
                  sra          t6, a2, s0
                  slti         a5, a3, -248
                  xor          s3, s8, s1
sub_3_0:          jal          t3, 18f
0:                jal          ra, 5f
1:                jal          a3, 6f
2:                jal          ra, 8f
3:                jal          ra, 4f
4:                jal          t1, 20f
5:                jal          t1, 13f
6:                jal          ra, 10f
7:                jal          s5, 1b
8:                jal          t1, 16f
9:                jal          ra, 19f
10:               jal          a3, 14f
11:               jal          ra, 15f
12:               jal          sp, 3b
13:               jal          t2, 11b
14:               jal          t1, 12b
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          t1, 0b
18:               jal          t1, 9b
19:               jal          t1, 17b
20:               slti         s6, t6, -1080
                  bge          s2, s9, 48f
48:               add          s9, s7, a0
                  srli         a0, s1, 0
50:               ori          t0, t6, -1781
                  slti         s2, t1, 1375
                  blt          s10, s5, 61f
                  bge          a0, t0, 72f
                  addi         t2, a2, -1664
                  xor          s2, s0, s9
                  blt          s0, s8, 57f
57:               add          a5, t3, zero
                  slti         a6, sp, 121
                  slli         s11, t0, 12
                  slli         s5, a1, 22
61:               bge          t6, s7, 79f
                  auipc        a7, 122002
                  addi         s9, t5, 2
                  or           t0, tp, s7
                  slt          s1, a1, t0
                  srl          a0, s4, tp
                  bge          t0, t1, 85f
                  bltu         gp, zero, 70f
                  srai         s8, s6, 30
70:               sll          s10, gp, s4
                  andi         t5, s7, -1751
72:               bge          s7, t0, 74f
                  bgeu         s8, t4, 87f
74:               andi         ra, a7, 22
                  nop
                  add          s8, a5, gp
                  srl          t4, s8, s7
                  slti         s3, a2, 1391
79:               and          s6, a6, a1
                  sltu         s4, s1, s7
                  srl          s2, sp, s10
                  beq          a7, s10, 98f
                  ori          a3, a5, -976
                  slt          zero, s5, t1
85:               xor          s8, s1, s5
                  lui          a4, 931518
87:               nop
                  auipc        a4, 80504
                  slli         gp, s7, 23
                  ori          s6, t3, 1732
                  or           a6, t6, ra
                  and          s10, t5, ra
                  addi         a0, s4, -1642
                  or           s7, a4, sp
                  and          s1, ra, a3
                  srli         s11, tp, 8
                  bne          a7, a3, 108f
98:               beq          s8, a1, 115f
                  xor          s10, t6, t0
                  bgeu         ra, s0, 112f
                  sra          s9, t0, a3
                  bgeu         a1, s8, 113f
                  ori          sp, a2, -801
                  srli         t1, s11, 15
                  ori          s11, sp, 1132
                  sub          a7, s4, a7
                  addi         a0, s11, 702
108:              or           s2, s5, a2
                  sll          s4, t4, tp
                  addi         t3, tp, 400
                  ori          s7, s1, -1444
112:              sub          s6, t5, zero
113:              addi         sp, a4, 1603
                  bge          s8, s0, 115f
115:              srl          a3, s4, a2
                  lw           t3, 4(a1)
                  addi         a1, a1, 32
                  andi         a5, a2, -1443
                  slt          t5, a7, gp
                  ori          a7, s1, -575
175:              addi x25, x28, 0
175:              jalr x25, x25, 0
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
                  add x12, x11, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x27, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x27, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x27, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x27, x30, ecall_handler
                  li x30, 0x1
                  beq x27, x30, instr_fault_handler
                  li x30, 0x5
                  beq x27, x30, load_fault_handler
                  li x30, 0x7
                  beq x27, x30, store_fault_handler
                  li x30, 0xc
                  beq x27, x30, pt_fault_handler
                  li x30, 0xd
                  beq x27, x30, pt_fault_handler
                  li x30, 0xf
                  beq x27, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

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
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x11, x12, zero
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
                  add x11, x12, zero
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
                  add x11, x12, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x11, x12, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x11, x12, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x11, x12, zero
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
