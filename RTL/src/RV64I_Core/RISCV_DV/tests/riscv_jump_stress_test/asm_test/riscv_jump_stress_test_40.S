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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xfcdb978a
                  li x4, 0x3
                  li x5, 0xf90163d7
                  li x6, 0xfd3fa419
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xe
                  li x10, 0x0
                  li x11, 0xb
                  li x12, 0x0
                  li x13, 0x7
                  li x14, 0xf
                  li x15, 0x0
                  li x16, 0xffaae5d2
                  li x17, 0x0
                  li x18, 0xc1ed575a
                  li x19, 0xfc554677
                  li x21, 0xa
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x3
                  li x25, 0x0
                  li x26, 0x3
                  li x27, 0xf
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0xd62452da
                  la x30, user_stack_end
main:             sll          sp, t6, t4
                  lui          a2, 680606
                  la           s10, sub_2
                  sll          zero, s9, zero
                  nop
                  sub          sp, t6, s8
                  sub          sp, a0, a7
                  slli         a6, a0, 27
                  lui          sp, 316903
                  slti         s7, s7, -901
                  addi         s10, s10, -938
                  sll          t2, a7, t1
main_j2:          jalr         ra, s10, 938 #jump main -> sub_2
                  ori          t4, a1, -1823
                  sltu         t2, t1, s10
                  nop
                  la           s11, sub_3
                  sra          a0, sp, zero
                  addi         s11, s11, -852
                  slti         ra, s4, -1097
                  xor          a1, sp, s2
                  nop
                  slli         s0, s10, 20
                  addi         tp, s10, 1505
main_j3:          jalr         ra, s11, 852 #jump main -> sub_3
                  addi         gp, a5, -552
                  srli         s6, tp, 11
                  andi         s3, t6, -230
                  la           a2, sub_1
                  sltu         s1, a7, a4
                  nop
                  sltu         t1, t1, s5
                  addi         a2, a2, -323
                  slli         gp, s6, 19
                  bge          tp, s9, main_j4 #branch to jump instr
                  srl          s10, a3, a2
main_j4:          jalr         ra, a2, 323 #jump main -> sub_1
                  la           s2, sub_5
                  sltiu        s11, t3, 669
                  xori         a2, sp, 497
                  addi         t3, a2, -740
                  slti         t2, a0, -1507
                  addi         s2, s2, 123
                  sra          s3, s10, s10
main_j5:          jalr         ra, s2, -123 #jump main -> sub_5
                  sub          t6, s7, t4
                  slti         t6, t3, -942
                  la           s2, sub_4
                  and          t1, a0, s7
                  addi         s2, s2, 612
                  sll          s6, a1, a7
                  and          tp, t3, s0
                  or           t1, s4, a3
                  slli         a4, t0, 17
                  addi         a3, t4, -638
main_j6:          jalr         ra, s2, -611 #jump main -> sub_4
main_0:           jal          ra, 0f
0:                jal          t1, 7f
1:                jal          t3, 17f
2:                jal          a4, 9f
3:                jal          t1, 19f
4:                jal          t1, 13f
5:                jal          t4, 14f
6:                jal          ra, 16f
7:                jal          t1, 3b
8:                jal          ra, 20f
9:                jal          ra, 11f
10:               jal          s3, 5b
11:               jal          t1, 8b
12:               jal          t1, 1b
13:               jal          ra, 12b
14:               jal          t1, 18f
15:               jal          ra, 6b
16:               jal          ra, 10b
17:               jal          s2, 2b
18:               jal          t6, 4b
19:               jal          t1, 15b
20:               sltiu        a3, s0, 811
                  xori         s6, s2, -1783
                  and          s10, s3, a4
                  bne          a2, s6, 19f
                  bltu         a4, s10, 17f
                  addi         s8, s9, -775
                  srl          sp, a3, s10
                  sra          t2, s0, s4
                  slt          s1, t0, t2
                  slt          t3, zero, zero
                  sra          a1, s11, a5
                  slti         t6, s0, -765
                  la           gp, sub_1
                  srl          s11, a6, zero
                  andi         s1, s3, 4
                  addi         gp, gp, 850
                  sltiu        a6, a1, -1712
                  nop
                  and          ra, s6, a7
                  srli         tp, a4, 31
main_j1:          jalr         ra, gp, -849 #jump main -> sub_1
                  beq          sp, s7, 19f
                  auipc        a7, 1036842
                  xor          a7, s3, a5
                  bne          s11, s10, 19f
                  slli         sp, s3, 4
                  nop
                  srl          s7, s4, a3
                  sltu         s11, s1, a1
                  lui          gp, 535556
                  beq          s0, t0, 19f
17:               ori          s9, s2, -2025
                  srl          a7, s8, s6
19:               srli         a5, tp, 22
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            slli         s3, s4, 31
                  add          s6, t4, ra
                  srai         zero, a6, 3
                  slli         s9, t4, 1
                  sll          sp, tp, t6
                  srai         s9, s4, 19
                  nop
                  sra          a7, s9, a7
                  addi         t5, t5, -24
                  sw           ra, 4(t5)
                  slti         sp, t5, 1788
sub_5_45:         jal          ra, 7f
0:                jal          t1, 3f
1:                jal          ra, 15f
2:                jal          ra, 0b
3:                jal          ra, 14f
4:                jal          ra, 1b
5:                jal          ra, 17f
6:                jal          ra, 9f
7:                jal          gp, 11f
8:                jal          ra, 16f
9:                jal          t0, 2b
10:               jal          s0, 4b
11:               jal          ra, 12f
12:               jal          ra, 6b
13:               jal          ra, 5b
14:               jal          s7, 8b
15:               jal          ra, 13b
16:               jal          ra, 10b
17:               slti         tp, s3, 662
sub_5_11:         jal          ra, 1f
0:                jal          sp, 12f
1:                jal          ra, 15f
2:                jal          ra, 7f
3:                jal          s8, 11f
4:                jal          t1, 13f
5:                jal          t1, 2b
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          t1, 4b
9:                jal          t1, 8b
10:               jal          gp, 5b
11:               jal          a0, 10b
12:               jal          t1, 16f
13:               jal          a6, 14f
14:               jal          t1, 3b
15:               jal          t1, 6b
16:               slli         a3, s11, 31
sub_5_7:          jal          ra, 17f
0:                jal          gp, 3f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          ra, 15f
9:                jal          ra, 8b
10:               jal          ra, 11f
11:               jal          t1, 12f
12:               jal          ra, 13f
13:               jal          ra, 0b
14:               jal          a2, 18f
15:               jal          t6, 6b
16:               jal          a5, 14b
17:               jal          s9, 10b
18:               jal          ra, 19f
19:               lui          t4, 863475
sub_5_48:         jal          ra, 11f
0:                jal          sp, 12f
1:                jal          gp, 22f
2:                jal          gp, 17f
3:                jal          ra, 15f
4:                jal          a0, 9f
5:                jal          t1, 7f
6:                jal          ra, 1b
7:                jal          ra, 18f
8:                jal          ra, 0b
9:                jal          a3, 6b
10:               jal          t1, 2b
11:               jal          gp, 21f
12:               jal          a1, 13f
13:               jal          ra, 19f
14:               jal          ra, 4b
15:               jal          t0, 20f
16:               jal          ra, 5b
17:               jal          ra, 16b
18:               jal          t1, 8b
19:               jal          t1, 3b
20:               jal          ra, 14b
21:               jal          ra, 10b
22:               add          s9, sp, a6
sub_5_5:          jal          ra, 11f
0:                jal          t1, 21f
1:                jal          t1, 14f
2:                jal          s0, 7f
3:                jal          gp, 0b
4:                jal          ra, 19f
5:                jal          ra, 24f
6:                jal          ra, 1b
7:                jal          a3, 20f
8:                jal          ra, 23f
9:                jal          t1, 22f
10:               jal          ra, 16f
11:               jal          ra, 10b
12:               jal          ra, 6b
13:               jal          a7, 25f
14:               jal          tp, 26f
15:               jal          ra, 2b
16:               jal          ra, 4b
17:               jal          ra, 3b
18:               jal          ra, 5b
19:               jal          s10, 15b
20:               jal          ra, 13b
21:               jal          ra, 8b
22:               jal          t1, 18b
23:               jal          t1, 12b
24:               jal          ra, 17b
25:               jal          ra, 9b
26:               or           tp, s2, a5
sub_5_30:         jal          ra, 19f
0:                jal          ra, 12f
1:                jal          t0, 13f
2:                jal          a4, 3f
3:                jal          ra, 14f
4:                jal          ra, 15f
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          ra, 17f
9:                jal          t1, 6b
10:               jal          ra, 20f
11:               jal          t1, 9b
12:               jal          ra, 18f
13:               jal          ra, 11b
14:               jal          ra, 1b
15:               jal          ra, 2b
16:               jal          ra, 10b
17:               jal          ra, 4b
18:               jal          ra, 16b
19:               jal          ra, 8b
20:               sll          zero, a6, s11
sub_5_41:         jal          ra, 4f
0:                jal          gp, 21f
1:                jal          t1, 6f
2:                jal          ra, 0b
3:                jal          ra, 12f
4:                jal          t1, 18f
5:                jal          s3, 3b
6:                jal          s8, 14f
7:                jal          ra, 19f
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          s8, 16f
11:               jal          ra, 7b
12:               jal          sp, 13f
13:               jal          ra, 8b
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          t1, 20f
17:               jal          s1, 22f
18:               jal          sp, 11b
19:               jal          ra, 15b
20:               jal          ra, 2b
21:               jal          ra, 5b
22:               srl          s7, t3, s8
sub_5_16:         jal          ra, 16f
0:                jal          t1, 8f
1:                jal          t1, 26f
2:                jal          t6, 7f
3:                jal          t1, 9f
4:                jal          ra, 14f
5:                jal          ra, 12f
6:                jal          ra, 4b
7:                jal          ra, 11f
8:                jal          t1, 22f
9:                jal          ra, 29f
10:               jal          ra, 28f
11:               jal          tp, 18f
12:               jal          ra, 25f
13:               jal          ra, 30f
14:               jal          ra, 24f
15:               jal          ra, 6b
16:               jal          t1, 19f
17:               jal          ra, 0b
18:               jal          a2, 17b
19:               jal          t1, 3b
20:               jal          ra, 21f
21:               jal          a2, 13b
22:               jal          ra, 10b
23:               jal          ra, 2b
24:               jal          ra, 20b
25:               jal          ra, 1b
26:               jal          ra, 15b
27:               jal          t1, 5b
28:               jal          ra, 27b
29:               jal          ra, 23b
30:               sll          s10, t5, t0
sub_5_26:         jal          ra, 18f
0:                jal          ra, 20f
1:                jal          t1, 14f
2:                jal          t1, 11f
3:                jal          ra, 6f
4:                jal          ra, 22f
5:                jal          a7, 9f
6:                jal          t1, 0b
7:                jal          gp, 17f
8:                jal          a0, 4b
9:                jal          ra, 7b
10:               jal          ra, 19f
11:               jal          a5, 1b
12:               jal          ra, 5b
13:               jal          ra, 24f
14:               jal          s10, 8b
15:               jal          ra, 16f
16:               jal          ra, 13b
17:               jal          ra, 2b
18:               jal          s2, 21f
19:               jal          ra, 15b
20:               jal          sp, 10b
21:               jal          t0, 12b
22:               jal          t1, 23f
23:               jal          a7, 3b
24:               sltu         ra, t6, s8
sub_5_33:         jal          ra, 16f
0:                jal          ra, 3f
1:                jal          ra, 14f
2:                jal          t1, 6f
3:                jal          t1, 21f
4:                jal          s1, 17f
5:                jal          sp, 22f
6:                jal          t1, 11f
7:                jal          ra, 23f
8:                jal          ra, 0b
9:                jal          ra, 4b
10:               jal          t0, 18f
11:               jal          ra, 13f
12:               jal          a5, 8b
13:               jal          t1, 1b
14:               jal          s7, 5b
15:               jal          sp, 10b
16:               jal          ra, 9b
17:               jal          t1, 15b
18:               jal          t1, 2b
19:               jal          s6, 24f
20:               jal          ra, 25f
21:               jal          ra, 19b
22:               jal          t1, 7b
23:               jal          ra, 12b
24:               jal          ra, 20b
25:               xor          s3, s11, s8
sub_5_24:         jal          ra, 3f
0:                jal          a7, 8f
1:                jal          ra, 18f
2:                jal          ra, 10f
3:                jal          t1, 9f
4:                jal          t1, 11f
5:                jal          ra, 19f
6:                jal          ra, 12f
7:                jal          ra, 13f
8:                jal          ra, 15f
9:                jal          ra, 0b
10:               jal          t1, 7b
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          t1, 6b
14:               jal          ra, 17f
15:               jal          t1, 1b
16:               jal          ra, 5b
17:               jal          ra, 16b
18:               jal          ra, 4b
19:               slt          a4, zero, s2
sub_5_32:         jal          ra, 11f
0:                jal          ra, 14f
1:                jal          ra, 0b
2:                jal          s3, 18f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 1b
6:                jal          s2, 17f
7:                jal          ra, 13f
8:                jal          ra, 7b
9:                jal          ra, 3b
10:               jal          ra, 15f
11:               jal          ra, 16f
12:               jal          ra, 4b
13:               jal          ra, 10b
14:               jal          ra, 9b
15:               jal          ra, 5b
16:               jal          ra, 8b
17:               jal          t1, 12b
18:               ori          s11, s1, 500
sub_5_35:         jal          ra, 9f
0:                jal          ra, 16f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          s8, 10f
4:                jal          ra, 21f
5:                jal          tp, 11f
6:                jal          s9, 22f
7:                jal          a7, 28f
8:                jal          a1, 27f
9:                jal          ra, 2b
10:               jal          ra, 17f
11:               jal          ra, 20f
12:               jal          ra, 6b
13:               jal          s7, 15f
14:               jal          a5, 24f
15:               jal          sp, 25f
16:               jal          ra, 29f
17:               jal          t1, 14b
18:               jal          ra, 19f
19:               jal          sp, 26f
20:               jal          ra, 13b
21:               jal          tp, 5b
22:               jal          t3, 18b
23:               jal          t1, 0b
24:               jal          ra, 1b
25:               jal          ra, 12b
26:               jal          ra, 23b
27:               jal          ra, 4b
28:               jal          s6, 8b
29:               sltu         a4, t6, s11
sub_5_34:         jal          ra, 9f
0:                jal          ra, 15f
1:                jal          t2, 14f
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          t1, 16f
5:                jal          s9, 0b
6:                jal          ra, 4b
7:                jal          s0, 6b
8:                jal          t0, 12f
9:                jal          t1, 8b
10:               jal          tp, 7b
11:               jal          a5, 5b
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          s0, 17f
15:               jal          ra, 10b
16:               jal          s7, 3b
17:               srl          zero, gp, s9
sub_5_3:          jal          ra, 5f
0:                jal          a6, 4f
1:                jal          tp, 7f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          gp, 8f
5:                jal          ra, 10f
6:                jal          t1, 13f
7:                jal          ra, 20f
8:                jal          a3, 19f
9:                jal          t1, 21f
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          t1, 14f
13:               jal          t1, 18f
14:               jal          t1, 16f
15:               jal          ra, 3b
16:               jal          ra, 11b
17:               jal          a0, 1b
18:               jal          ra, 17b
19:               jal          ra, 12b
20:               jal          ra, 22f
21:               jal          t4, 6b
22:               sltiu        s9, s4, -808
sub_5_31:         jal          ra, 2f
0:                jal          ra, 7f
1:                jal          t1, 3f
2:                jal          ra, 1b
3:                jal          ra, 4f
4:                jal          s6, 8f
5:                jal          ra, 9f
6:                jal          ra, 12f
7:                jal          ra, 5b
8:                jal          tp, 10f
9:                jal          s10, 11f
10:               jal          s7, 0b
11:               jal          ra, 6b
12:               jal          gp, 13f
13:               sltiu        gp, tp, 1045
sub_5_37:         jal          ra, 11f
0:                jal          ra, 12f
1:                jal          t1, 0b
2:                jal          tp, 18f
3:                jal          t0, 27f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          tp, 10f
7:                jal          s3, 16f
8:                jal          t1, 26f
9:                jal          tp, 13f
10:               jal          ra, 20f
11:               jal          ra, 5b
12:               jal          t1, 17f
13:               jal          t0, 28f
14:               jal          t1, 6b
15:               jal          ra, 19f
16:               jal          t0, 22f
17:               jal          ra, 21f
18:               jal          t1, 7b
19:               jal          sp, 1b
20:               jal          ra, 8b
21:               jal          t1, 14b
22:               jal          ra, 9b
23:               jal          ra, 25f
24:               jal          ra, 15b
25:               jal          ra, 24b
26:               jal          ra, 4b
27:               jal          ra, 23b
28:               sll          s9, t1, s3
sub_5_14:         jal          ra, 16f
0:                jal          ra, 13f
1:                jal          t1, 4f
2:                jal          t1, 21f
3:                jal          ra, 19f
4:                jal          tp, 0b
5:                jal          t1, 10f
6:                jal          ra, 8f
7:                jal          t1, 17f
8:                jal          ra, 14f
9:                jal          t1, 12f
10:               jal          ra, 15f
11:               jal          ra, 3b
12:               jal          a7, 1b
13:               jal          s8, 22f
14:               jal          s11, 11b
15:               jal          s10, 24f
16:               jal          ra, 9b
17:               jal          ra, 18f
18:               jal          ra, 5b
19:               jal          t1, 20f
20:               jal          t1, 2b
21:               jal          t4, 7b
22:               jal          t1, 23f
23:               jal          t1, 6b
24:               sll          zero, s8, s5
sub_5_13:         jal          ra, 5f
0:                jal          ra, 14f
1:                jal          t1, 29f
2:                jal          ra, 4f
3:                jal          t1, 9f
4:                jal          t1, 18f
5:                jal          ra, 10f
6:                jal          a0, 20f
7:                jal          ra, 17f
8:                jal          ra, 25f
9:                jal          t1, 23f
10:               jal          ra, 22f
11:               jal          sp, 26f
12:               jal          ra, 6b
13:               jal          s10, 28f
14:               jal          s3, 27f
15:               jal          ra, 11b
16:               jal          ra, 15b
17:               jal          ra, 2b
18:               jal          t2, 12b
19:               jal          ra, 24f
20:               jal          ra, 21f
21:               jal          ra, 13b
22:               jal          s7, 3b
23:               jal          ra, 7b
24:               jal          t1, 1b
25:               jal          t1, 16b
26:               jal          ra, 19b
27:               jal          ra, 8b
28:               jal          ra, 0b
29:               srai         t3, gp, 26
sub_5_38:         jal          ra, 20f
0:                jal          ra, 11f
1:                jal          t1, 9f
2:                jal          ra, 8f
3:                jal          ra, 19f
4:                jal          ra, 15f
5:                jal          t0, 0b
6:                jal          s10, 16f
7:                jal          tp, 4b
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          a2, 7b
11:               jal          a4, 13f
12:               jal          gp, 17f
13:               jal          ra, 10b
14:               jal          ra, 12b
15:               jal          s2, 21f
16:               jal          t1, 3b
17:               jal          t1, 5b
18:               jal          ra, 1b
19:               jal          s2, 18b
20:               jal          ra, 2b
21:               srli         s0, a1, 8
sub_5_39:         jal          ra, 1f
0:                jal          t1, 9f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 10f
6:                jal          s10, 8f
7:                jal          ra, 6b
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               srl          a2, a0, t5
sub_5_25:         jal          ra, 2f
0:                jal          ra, 3f
1:                jal          t1, 8f
2:                jal          ra, 1b
3:                jal          a0, 7f
4:                jal          t1, 0b
5:                jal          ra, 4b
6:                jal          ra, 9f
7:                jal          t1, 6b
8:                jal          ra, 5b
9:                jal          t6, 10f
10:               ori          sp, s10, 1163
sub_5_8:          jal          ra, 0f
0:                jal          t1, 4f
1:                jal          t3, 7f
2:                jal          t0, 9f
3:                jal          t1, 11f
4:                jal          t4, 3b
5:                jal          t1, 8f
6:                jal          a6, 1b
7:                jal          a1, 10f
8:                jal          ra, 12f
9:                jal          t3, 5b
10:               jal          ra, 2b
11:               jal          ra, 6b
12:               ori          t6, s11, -1604
sub_5_18:         jal          ra, 14f
0:                jal          t1, 29f
1:                jal          ra, 9f
2:                jal          sp, 17f
3:                jal          ra, 22f
4:                jal          a7, 19f
5:                jal          t1, 21f
6:                jal          s0, 26f
7:                jal          t1, 5b
8:                jal          t1, 15f
9:                jal          ra, 18f
10:               jal          ra, 20f
11:               jal          a6, 13f
12:               jal          tp, 10b
13:               jal          ra, 7b
14:               jal          a3, 23f
15:               jal          t1, 6b
16:               jal          a3, 27f
17:               jal          tp, 28f
18:               jal          ra, 4b
19:               jal          ra, 2b
20:               jal          ra, 0b
21:               jal          tp, 25f
22:               jal          ra, 24f
23:               jal          s3, 1b
24:               jal          t1, 12b
25:               jal          t1, 16b
26:               jal          ra, 11b
27:               jal          ra, 3b
28:               jal          ra, 8b
29:               slt          s6, s10, s7
sub_5_28:         jal          ra, 13f
0:                jal          ra, 7f
1:                jal          a2, 11f
2:                jal          a4, 4f
3:                jal          ra, 10f
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          t1, 15f
8:                jal          ra, 6b
9:                jal          a4, 16f
10:               jal          a7, 8b
11:               jal          ra, 12f
12:               jal          t1, 9b
13:               jal          ra, 3b
14:               jal          t1, 5b
15:               jal          sp, 2b
16:               ori          a6, a0, 475
sub_5_12:         jal          ra, 3f
0:                jal          s2, 9f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          t1, 6f
4:                jal          ra, 11f
5:                jal          s1, 4b
6:                jal          s10, 1b
7:                jal          ra, 8f
8:                jal          t1, 0b
9:                jal          t4, 5b
10:               jal          s10, 2b
11:               srai         t6, t6, 19
sub_5_0:          jal          ra, 17f
0:                jal          ra, 5f
1:                jal          ra, 13f
2:                jal          a3, 16f
3:                jal          s6, 1b
4:                jal          s6, 8f
5:                jal          ra, 21f
6:                jal          t1, 14f
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          a5, 2b
10:               jal          t1, 3b
11:               jal          ra, 19f
12:               jal          ra, 22f
13:               jal          ra, 12b
14:               jal          ra, 20f
15:               jal          t1, 7b
16:               jal          t1, 10b
17:               jal          s10, 0b
18:               jal          gp, 4b
19:               jal          ra, 15b
20:               jal          gp, 18b
21:               jal          ra, 11b
22:               xori         s1, s2, -1234
sub_5_9:          jal          ra, 13f
0:                jal          ra, 6f
1:                jal          ra, 16f
2:                jal          ra, 4f
3:                jal          t1, 0b
4:                jal          tp, 1b
5:                jal          tp, 3b
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          t2, 14f
10:               jal          ra, 11f
11:               jal          t1, 17f
12:               jal          t1, 2b
13:               jal          t1, 8b
14:               jal          t1, 12b
15:               jal          ra, 7b
16:               jal          ra, 15b
17:               or           a7, s1, t1
sub_5_47:         jal          ra, 22f
0:                jal          ra, 25f
1:                jal          ra, 12f
2:                jal          ra, 6f
3:                jal          ra, 17f
4:                jal          ra, 23f
5:                jal          ra, 10f
6:                jal          ra, 16f
7:                jal          ra, 14f
8:                jal          ra, 9f
9:                jal          ra, 4b
10:               jal          ra, 27f
11:               jal          a6, 7b
12:               jal          t1, 21f
13:               jal          ra, 2b
14:               jal          t1, 30f
15:               jal          t1, 8b
16:               jal          t0, 0b
17:               jal          ra, 15b
18:               jal          ra, 1b
19:               jal          t1, 29f
20:               jal          ra, 26f
21:               jal          t1, 20b
22:               jal          t3, 24f
23:               jal          s8, 5b
24:               jal          t1, 18b
25:               jal          ra, 3b
26:               jal          ra, 28f
27:               jal          gp, 11b
28:               jal          t1, 19b
29:               jal          t0, 13b
30:               xori         t3, t5, 1826
sub_5_27:         jal          ra, 3f
0:                jal          ra, 6f
1:                jal          ra, 12f
2:                jal          ra, 10f
3:                jal          t4, 4f
4:                jal          ra, 1b
5:                jal          ra, 18f
6:                jal          t1, 2b
7:                jal          ra, 19f
8:                jal          t3, 16f
9:                jal          ra, 8b
10:               jal          t1, 17f
11:               jal          ra, 14f
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          a1, 15f
15:               jal          ra, 20f
16:               jal          t1, 13b
17:               jal          a6, 5b
18:               jal          s2, 11b
19:               jal          ra, 9b
20:               xor          s0, a3, sp
sub_5_40:         jal          ra, 2f
0:                jal          s11, 5f
1:                jal          ra, 12f
2:                jal          s9, 10f
3:                jal          t1, 0b
4:                jal          tp, 13f
5:                jal          s1, 6f
6:                jal          ra, 1b
7:                jal          ra, 11f
8:                jal          a0, 14f
9:                jal          ra, 7b
10:               jal          t0, 8b
11:               jal          tp, 15f
12:               jal          ra, 4b
13:               jal          s10, 9b
14:               jal          a1, 3b
15:               sub          a6, s7, a4
sub_5_23:         jal          ra, 17f
0:                jal          ra, 3f
1:                jal          ra, 18f
2:                jal          ra, 6f
3:                jal          ra, 15f
4:                jal          t1, 2b
5:                jal          t1, 10f
6:                jal          ra, 11f
7:                jal          gp, 0b
8:                jal          ra, 9f
9:                jal          t1, 16f
10:               jal          ra, 14f
11:               jal          ra, 1b
12:               jal          ra, 4b
13:               jal          ra, 8b
14:               jal          ra, 7b
15:               jal          s10, 13b
16:               jal          ra, 12b
17:               jal          ra, 5b
18:               jal          t1, 19f
19:               slti         a4, t4, -301
sub_5_15:         jal          ra, 10f
0:                jal          s3, 6f
1:                jal          ra, 13f
2:                jal          gp, 12f
3:                jal          t3, 7f
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          gp, 1b
7:                jal          t1, 4b
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          ra, 2b
11:               jal          t1, 3b
12:               jal          ra, 5b
13:               or           s6, s4, s2
sub_5_20:         jal          ra, 10f
0:                jal          t1, 1f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          t4, 4b
6:                jal          ra, 16f
7:                jal          t1, 6b
8:                jal          ra, 15f
9:                jal          ra, 12f
10:               jal          t4, 3b
11:               jal          t1, 8b
12:               jal          t1, 0b
13:               jal          ra, 11b
14:               jal          a5, 13b
15:               jal          gp, 5b
16:               sra          t3, s0, s5
sub_5_6:          jal          ra, 27f
0:                jal          t1, 21f
1:                jal          t1, 9f
2:                jal          s1, 29f
3:                jal          ra, 11f
4:                jal          t1, 24f
5:                jal          tp, 15f
6:                jal          ra, 4b
7:                jal          s10, 13f
8:                jal          ra, 7b
9:                jal          ra, 16f
10:               jal          ra, 18f
11:               jal          t3, 17f
12:               jal          ra, 2b
13:               jal          ra, 10b
14:               jal          t6, 5b
15:               jal          ra, 30f
16:               jal          ra, 0b
17:               jal          sp, 20f
18:               jal          ra, 12b
19:               jal          t6, 8b
20:               jal          ra, 19b
21:               jal          ra, 3b
22:               jal          a5, 1b
23:               jal          t1, 26f
24:               jal          sp, 25f
25:               jal          s10, 22b
26:               jal          t1, 28f
27:               jal          ra, 6b
28:               jal          s1, 14b
29:               jal          t1, 23b
30:               sra          a6, a2, a3
sub_5_43:         jal          ra, 14f
0:                jal          ra, 20f
1:                jal          ra, 26f
2:                jal          s3, 23f
3:                jal          ra, 11f
4:                jal          t1, 1b
5:                jal          t1, 15f
6:                jal          a3, 25f
7:                jal          s11, 2b
8:                jal          s0, 7b
9:                jal          gp, 19f
10:               jal          ra, 5b
11:               jal          t1, 12f
12:               jal          s0, 8b
13:               jal          s3, 18f
14:               jal          t1, 0b
15:               jal          ra, 24f
16:               jal          ra, 3b
17:               jal          ra, 4b
18:               jal          ra, 17b
19:               jal          ra, 22f
20:               jal          ra, 10b
21:               jal          t6, 13b
22:               jal          t1, 16b
23:               jal          t1, 21b
24:               jal          ra, 6b
25:               jal          t1, 9b
26:               slli         zero, t3, 19
                  srl          s11, s2, s3
                  andi         a7, s1, 1289
                  or           t4, s10, s5
                  blt          t5, a4, 16f
                  beq          s7, t6, 16f
                  sub          t1, a4, t2
                  xor          sp, a2, t3
                  sll          s1, t3, a4
                  nop
                  and          s2, t4, a2
                  ori          gp, a3, -942
                  srl          a5, s10, a2
                  ori          t6, s5, -870
                  addi         s8, s7, -1404
                  or           t0, s10, a2
                  and          t3, s3, s9
16:               or           s0, a6, sp
                  slti         s2, s6, -11
                  bltu         s7, t2, 38f
                  auipc        a6, 230523
                  and          t0, s6, s5
                  bne          s3, s9, 41f
                  bgeu         t4, tp, 30f
                  auipc        s7, 718328
                  or           ra, s2, s11
                  auipc        a3, 630410
                  auipc        t3, 589153
                  srli         tp, ra, 31
                  bltu         s10, s0, 35f
                  bge          s3, s2, 43f
30:               bne          t4, s11, 50f
                  auipc        a4, 109644
                  xor          a0, t6, a6
                  slt          gp, a1, a4
                  ori          s8, zero, 724
35:               xor          s3, s9, a1
                  and          s7, s2, a0
                  srl          tp, t6, sp
38:               xori         a0, zero, 220
                  bge          tp, s7, 45f
                  bgeu         t0, t6, 58f
41:               srli         a4, t3, 28
                  sltu         ra, s5, s6
43:               slt          s8, sp, s5
                  sltiu        s2, s1, -359
45:               sltu         t0, s1, t1
                  srl          t0, a6, s7
                  slli         s8, s9, 30
                  srli         sp, a3, 12
                  srai         t3, zero, 27
50:               bne          s5, t1, 61f
                  or           a0, t5, s6
                  slt          t2, tp, a2
                  bne          a5, s9, 62f
                  auipc        s6, 348806
                  srl          sp, s9, s11
                  bltu         sp, s1, 67f
                  or           a2, s8, gp
58:               lui          ra, 918054
                  lui          s0, 199382
                  beq          a3, t6, 75f
61:               sll          s8, a2, s1
62:               slli         a3, s4, 5
                  xor          s1, s3, zero
                  sra          s6, s11, s8
                  or           tp, s5, ra
                  ori          s10, a7, 1015
67:               blt          t5, s11, 77f
                  beq          s11, t1, 73f
                  sub          s7, s5, sp
                  sltiu        s11, a7, -1216
                  slli         a3, t5, 24
                  and          s9, s8, tp
73:               srl          t2, s2, s2
                  sub          t3, s11, a7
75:               sltu         t2, s6, t6
                  beq          s7, a2, 82f
77:               addi         tp, t6, -988
                  andi         t2, t0, 1845
                  bne          a5, s10, 92f
                  srl          ra, a2, s4
                  sub          a1, t0, a6
82:               srai         a4, a2, 9
                  srai         s9, s3, 28
                  sub          sp, s6, ra
                  addi         s10, t4, 189
                  xori         a5, t4, 1607
                  xori         a5, t3, -931
                  slli         sp, t5, 8
                  auipc        a4, 469320
                  blt          s9, zero, 100f
                  bgeu         s6, a7, 101f
92:               lui          t0, 63156
                  sltu         s0, t4, zero
                  beq          zero, s3, 100f
                  bne          a2, s9, 98f
                  slti         t4, zero, 1025
                  xor          a2, zero, a0
98:               sub          t2, a3, s4
                  nop
100:              bge          gp, a6, 112f
101:              bge          a6, s7, 112f
                  andi         s8, s4, -1729
                  ori          a2, s1, -1862
                  lui          s7, 289342
                  ori          t6, s5, -1112
                  nop
                  blt          s5, s11, 114f
                  srli         s11, sp, 22
                  andi         a3, s0, -148
                  xor          t0, s4, s0
                  lui          tp, 110508
112:              bge          gp, s0, 119f
                  bne          t1, s9, 130f
114:              slli         s9, s8, 24
                  add          a0, zero, t5
                  blt          s5, s7, 128f
                  and          t0, t2, a3
                  sra          tp, s10, a6
119:              xori         zero, t3, -1891
                  srli         tp, s8, 10
                  and          t1, gp, s2
                  or           t2, a3, t4
                  srai         t1, s4, 19
                  bge          a1, a3, 129f
                  sra          tp, tp, a7
                  andi         t4, zero, 1423
                  bltu         s3, s1, 132f
128:              bgeu         a4, a1, 135f
129:              srai         s6, t1, 4
130:              sub          tp, t4, s3
                  lui          ra, 374499
132:              addi         t4, a1, 452
                  bge          s6, t3, 140f
                  slti         a6, s2, -943
135:              bne          zero, s0, 141f
                  srl          tp, a5, s7
                  sll          a4, t0, a1
                  lui          s7, 453804
                  srai         s10, s6, 6
140:              xori         t1, s2, 1740
141:              lui          ra, 803551
                  bne          s1, s9, 147f
                  srli         tp, a7, 23
                  beq          a7, a3, 156f
                  lui          t0, 240011
                  sra          s3, t2, s7
147:              slt          s7, t0, s1
                  auipc        a6, 444537
                  srli         a1, s9, 29
                  lui          s11, 301443
                  xor          zero, s11, s10
                  sub          t3, s3, s1
                  xori         s2, zero, 213
                  lui          tp, 607239
                  xori         s0, zero, 302
156:              and          a7, s4, t1
                  bne          a5, s1, 167f
                  add          a4, t3, sp
                  bne          zero, a5, 179f
                  bne          ra, t2, 171f
                  srl          s2, t1, ra
                  ori          s7, t3, 531
                  auipc        a1, 13799
                  add          s7, t0, gp
                  nop
                  sub          a7, a0, t6
167:              add          s6, s6, a2
                  srli         zero, t6, 30
                  srli         ra, t6, 7
                  blt          t4, tp, 176f
171:              xor          t3, s5, t2
                  srl          s8, ra, t3
                  ori          t1, a0, 954
                  beq          a1, s4, 194f
                  blt          sp, s4, 192f
176:              addi         a4, s0, -585
                  xor          a1, s5, ra
                  and          s0, t3, a7
179:              bgeu         t0, s9, 184f
                  and          t0, t1, s9
                  bne          s5, sp, 199f
                  xor          s3, s9, s4
                  slt          t1, t6, s8
184:              andi         s10, a5, -736
                  srl          a0, t1, s6
                  srli         t2, gp, 13
                  sub          a5, s7, s10
                  slti         sp, s2, 1535
                  bne          s4, s0, 204f
                  sltu         t1, s9, t6
                  and          t3, zero, t3
192:              bge          a5, s0, 201f
                  sub          t4, ra, a1
194:              xor          s10, s10, t3
                  slli         s9, s10, 11
                  bgeu         sp, t1, 199f
                  srl          t2, a2, s8
                  bne          s3, s10, 210f
199:              sub          a4, s10, s8
                  lui          a4, 1001981
201:              lui          t3, 335364
                  srli         a7, s6, 16
                  beq          s11, ra, 211f
204:              slt          s0, a0, zero
                  blt          t6, t6, 211f
                  or           s9, s7, tp
                  sra          a2, s10, a0
                  or           a5, a2, s5
                  sltu         s6, s1, s0
210:              andi         t4, s4, -1703
211:              bge          s5, zero, 216f
                  sltiu        s2, s4, -1238
                  blt          a3, gp, 223f
                  and          s1, s2, a3
                  or           s2, t4, zero
216:              andi         t3, s3, -1022
                  addi         s7, t5, -1125
                  sltiu        s7, sp, 1395
                  bge          s9, zero, 226f
                  blt          t6, s5, 231f
                  sub          a5, a0, s3
                  blt          s8, zero, 232f
223:              sub          t1, tp, s7
                  srai         a6, s0, 5
                  add          s2, s0, a7
226:              slti         t3, s11, -607
                  blt          sp, s3, 247f
                  sra          s0, tp, ra
                  sltiu        ra, a6, 1520
                  srli         a7, a6, 1
231:              srai         s2, s11, 31
232:              and          t1, tp, s2
                  sll          a1, a2, t5
                  sra          s7, s6, s7
                  andi         tp, tp, 1862
                  xori         a4, a5, -1324
                  blt          t5, a3, 249f
                  xor          tp, s1, sp
                  bge          gp, s6, 253f
                  ori          t4, s10, 10
                  andi         t0, s5, -1392
                  srl          a2, t5, s1
                  srai         gp, s3, 10
                  nop
                  ori          t4, s2, -1278
                  auipc        s1, 534973
247:              beq          gp, a3, 258f
                  blt          a5, s8, 261f
249:              srl          a2, t0, zero
                  auipc        t1, 23070
                  auipc        s6, 566803
                  xor          a3, tp, t1
253:              bne          a3, a6, 266f
                  bge          a6, s7, 274f
                  addi         s7, s7, -1002
                  auipc        s10, 716981
                  ori          t4, s6, 255
258:              addi         t3, s8, -1428
                  bltu         s4, a4, 272f
                  srl          t3, t3, t2
261:              auipc        s10, 127959
                  beq          s5, s11, 272f
                  xor          a2, a5, t1
                  nop
                  nop
266:              auipc        s2, 518624
                  sll          a7, s8, s9
                  beq          t5, a0, 274f
                  slli         zero, t2, 10
                  xori         zero, s8, -1242
                  andi         tp, a3, -1160
272:              or           s2, t4, s7
                  and          gp, t0, a1
274:              ori          t4, ra, -735
                  bgeu         zero, t0, 285f
                  xori         a2, a4, 1703
                  auipc        s2, 320271
                  andi         sp, tp, -692
                  bne          tp, zero, 294f
                  srai         a6, zero, 28
                  xor          t3, s8, a2
                  ori          gp, t5, -687
                  andi         tp, a7, -204
                  srl          t6, t0, s9
285:              slli         s11, a3, 18
                  bne          s3, s7, 300f
                  andi         s0, t3, -1793
                  lui          t6, 120435
                  nop
                  blt          s1, t0, 307f
                  srl          a6, s10, s2
                  auipc        sp, 790753
                  bgeu         sp, s2, 313f
294:              bltu         a6, s8, 302f
                  srli         a3, t2, 22
                  srai         a2, a7, 16
                  sra          s6, zero, ra
                  srli         s10, t0, 22
                  bge          s7, a0, 304f
300:              nop
                  andi         t0, s11, -746
302:              slti         t1, s11, -254
                  or           a7, t6, gp
304:              or           t0, a0, a6
                  bge          t2, s5, 312f
                  and          s7, s1, s2
307:              beq          s6, s4, 312f
                  sltu         t6, ra, s10
                  slli         s0, ra, 3
                  addi         s2, a7, -197
                  auipc        a2, 1000572
312:              and          a1, s10, zero
313:              nop
                  srai         s8, s2, 29
                  xori         s10, s5, -1921
                  lui          t1, 750096
                  nop
                  slt          t6, ra, t5
                  or           s0, a1, s11
                  xori         gp, s2, 175
                  or           a3, s2, t2
                  xor          s11, t5, s3
                  srl          s2, s1, a5
                  beq          ra, s2, 329f
                  blt          a2, a1, 331f
                  sltiu        a2, s2, -740
                  sub          s1, t0, s4
                  or           a4, t2, t6
329:              xori         s9, sp, 778
                  bne          s2, s7, 342f
331:              srl          s0, t0, s0
                  auipc        s8, 795362
                  bne          zero, t5, 345f
                  slli         a3, a3, 12
                  or           a0, t6, a6
                  slli         a6, t0, 13
                  srli         s6, a7, 11
                  and          t2, t5, t1
                  lui          a3, 521629
                  bltu         t5, t5, 358f
                  sra          a2, a6, t6
342:              add          sp, t2, gp
                  sltiu        a2, s1, 751
                  sll          t0, tp, ra
345:              srai         t2, a3, 30
                  xori         sp, s10, -1887
                  xori         t1, a2, -1045
                  bne          a3, t2, 355f
                  auipc        a1, 966559
                  bne          t5, s8, 359f
                  add          a0, a0, zero
                  sll          s11, t3, a1
                  bgeu         a3, t4, 364f
                  or           t6, s5, a0
355:              srl          s0, s2, s0
                  andi         s0, t6, -279
                  addi         t2, s10, 1499
358:              bge          a5, tp, 365f
359:              lui          ra, 719034
                  srl          t2, a3, a4
                  beq          t1, s3, 373f
                  sltu         a6, s4, a4
                  sub          a6, gp, a7
364:              srl          a5, a6, s9
365:              lui          a1, 938234
                  and          t6, a0, a0
                  slti         a2, t1, -918
                  bltu         a6, a1, 379f
                  andi         a2, a7, -1146
                  blt          s5, a2, 380f
                  add          gp, t1, a2
                  xori         t2, s9, 1257
373:              addi         s9, a4, -1731
                  beq          a1, s2, 387f
                  lui          s9, 990994
                  srl          s1, t2, s9
                  addi         zero, tp, -1458
                  nop
379:              sll          s10, s4, a5
380:              xor          zero, s2, t5
                  bne          ra, t1, 387f
                  andi         t6, sp, 906
                  srli         s7, a1, 23
                  srai         s6, tp, 19
                  or           t4, t4, zero
                  xor          t0, a2, a4
387:              add          a7, s0, t2
                  xor          s3, ra, s9
                  srl          t4, t2, t6
                  bltu         s2, a7, 401f
                  or           s10, a7, a1
                  andi         s9, s8, 540
                  and          a7, s0, gp
                  bge          s4, t6, 397f
                  sltiu        s8, s0, 1193
                  nop
397:              nop
                  auipc        t0, 493108
                  srli         a3, s11, 24
                  xor          s7, t2, a7
401:              srai         t1, t4, 12
                  slli         sp, s7, 26
                  bne          t5, t0, 423f
                  sll          a7, a1, t1
                  beq          t1, gp, 417f
                  srl          gp, s11, s5
                  add          s0, gp, s8
                  and          gp, a4, a7
                  bge          a6, s5, 416f
                  srl          a7, t6, sp
                  bge          a3, t1, 431f
                  beq          s1, gp, 417f
                  blt          a7, a2, 431f
                  sltu         sp, a0, t1
                  xori         s11, t0, -196
416:              nop
417:              ori          s10, t5, -687
                  slti         tp, a6, -395
                  auipc        a5, 676985
                  sltiu        t4, t2, 78
                  add          a4, t5, a6
                  auipc        s3, 978748
423:              slli         a5, s7, 18
                  sll          t3, s2, a1
                  sub          s9, t3, zero
                  slti         a3, t0, 11
                  slti         a7, t0, 1121
                  addi         a4, a6, -820
                  bgeu         a4, s9, 435f
                  and          sp, a2, s10
431:              xori         a1, s8, 1518
                  bgeu         s6, a0, 439f
                  beq          a7, t5, 445f
                  andi         t2, t5, 1253
435:              sra          t1, a1, t6
                  addi         s2, s7, 2042
                  xori         t1, zero, -1231
                  nop
439:              beq          s1, ra, 450f
                  blt          t4, sp, 451f
                  sub          t2, sp, t2
                  nop
                  sltu         gp, sp, t0
                  blt          s9, t5, 461f
445:              sltu         t4, a2, s10
                  bltu         s6, a3, 452f
                  xor          t2, tp, sp
                  bne          s7, a2, 453f
sub_5_36:         jal          ra, 5f
0:                jal          s2, 10f
1:                jal          a6, 3f
2:                jal          a4, 0b
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          t0, 9f
7:                jal          t1, 11f
8:                jal          s0, 6b
9:                jal          gp, 1b
10:               jal          t1, 7b
11:               sltiu        s9, zero, -1728
                  bge          s11, s3, 461f
450:              or           s10, s1, a1
451:              srli         t3, t4, 4
452:              sltiu        ra, s5, 1913
453:              bne          a1, s3, 473f
                  bge          s1, s6, 469f
                  sra          a6, s5, s9
                  srli         a0, sp, 11
                  srli         s3, s8, 31
                  sltiu        t4, sp, 1769
                  addi         s10, t5, 1332
                  slt          tp, a6, a5
461:              sll          s3, s11, t0
                  bne          a2, s10, 475f
                  beq          t0, zero, 471f
                  srl          s2, a3, s2
                  blt          t6, t6, 472f
                  slli         zero, s6, 18
                  xori         sp, t2, 38
                  blt          ra, zero, 473f
469:              slt          t1, a4, ra
                  sltiu        a5, a1, 720
471:              sll          t0, t1, s5
sub_5_2:          jal          ra, 12f
0:                jal          t1, 7f
1:                jal          a5, 0b
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          t1, 2b
5:                jal          ra, 8f
6:                jal          s11, 4b
7:                jal          ra, 13f
8:                jal          ra, 11f
9:                jal          sp, 6b
10:               jal          gp, 14f
11:               jal          ra, 3b
12:               jal          t1, 15f
13:               jal          s2, 9b
14:               jal          t1, 1b
15:               jal          ra, 5b
16:               xor          s10, a3, zero
472:              slli         s8, t4, 14
473:              add          t6, s4, a1
                  slli         a7, t6, 26
475:              sra          s9, t5, s10
                  srai         t6, s0, 10
                  sll          a3, tp, a2
                  sltu         s6, t4, zero
                  add          t0, s2, t0
                  sltu         sp, s9, t3
                  sltu         t4, a0, gp
                  bltu         t2, s8, 492f
                  slt          a2, s3, s6
                  sll          s10, t0, s5
                  add          a5, s1, s11
                  sll          gp, s7, t5
                  srli         s10, t3, 19
                  slt          s8, a5, s0
                  add          sp, a6, t1
                  bltu         s2, s9, 500f
                  addi         a7, s5, -1215
492:              bltu         s5, gp, 506f
                  addi         t2, s5, -1604
                  blt          t4, s11, 497f
                  srl          s3, s7, a1
                  sub          a3, t1, s6
497:              slti         s7, ra, 380
                  srai         s11, s5, 25
                  nop
500:              sltu         s2, s0, a7
                  sra          s0, s0, a4
                  srli         a3, a7, 26
                  nop
                  slt          zero, a4, t3
                  add          a6, a6, s0
506:              andi         s11, t5, 1218
                  sltu         s1, t6, s4
                  lui          a2, 263847
                  add          a6, t3, s7
                  bgeu         s5, s3, 521f
                  andi         t4, s11, -324
                  sltiu        s8, gp, -391
                  auipc        a4, 607471
                  addi         t0, t0, 428
                  slt          s2, s4, t2
                  add          t4, tp, t6
                  bgeu         a7, zero, 527f
                  lui          zero, 987165
                  andi         s1, s1, -948
                  blt          a1, a2, 529f
521:              ori          s1, s9, -755
                  xori         s3, a7, 1430
                  lui          t6, 685709
                  sra          a7, a1, s7
                  sra          tp, s0, t2
                  bgeu         t0, s0, 539f
527:              beq          s4, t1, 533f
                  ori          s8, s5, 117
529:              or           s9, t0, zero
                  bne          t0, t6, 550f
                  slli         a6, a4, 16
                  and          a2, gp, a6
533:              and          a3, a2, s11
                  bge          t3, a5, 540f
sub_5_42:         jal          ra, 16f
0:                jal          t1, 5f
1:                jal          ra, 15f
2:                jal          ra, 14f
3:                jal          a4, 2b
4:                jal          t1, 9f
5:                jal          t1, 17f
6:                jal          t1, 8f
7:                jal          s6, 13f
8:                jal          tp, 11f
9:                jal          t3, 6b
10:               jal          t1, 0b
11:               jal          ra, 18f
12:               jal          a5, 10b
13:               jal          t0, 3b
14:               jal          t1, 12b
15:               jal          ra, 7b
16:               jal          a6, 1b
17:               jal          t3, 4b
18:               jal          ra, 19f
19:               jal          ra, 20f
20:               and          s6, a6, t6
                  bne          a4, gp, 545f
                  sra          t4, a4, a0
                  srl          t6, t2, a4
                  addi         sp, a6, 1012
539:              nop
540:              andi         s6, s5, 404
                  slli         tp, a4, 16
                  lui          a6, 532287
                  andi         s1, s1, 1606
                  or           a2, s6, t1
545:              slti         a5, zero, 665
                  sltu         a0, zero, t0
                  bltu         s6, s3, 567f
                  srl          s0, t6, t2
                  sltiu        zero, sp, 197
550:              sltiu        a6, s11, 842
                  slli         t2, s11, 21
                  slti         t1, t1, -410
                  add          s6, a7, t4
                  sub          a2, t1, s1
                  slt          t0, t2, s10
                  sltiu        a5, ra, -1434
                  sltu         s3, s2, gp
                  blt          s8, a3, 568f
                  xor          sp, ra, s3
                  slt          s2, t5, ra
                  srl          ra, gp, t5
                  bgeu         s8, s5, 573f
                  add          s9, tp, s1
                  addi         s0, a1, -1412
                  ori          ra, t1, 1354
                  srli         t2, tp, 20
567:              bgeu         t5, t4, 576f
568:              xor          a3, t1, t3
                  slt          s7, s9, t0
                  slt          zero, sp, s10
                  sub          a7, s9, sp
                  sltiu        t1, t5, 45
573:              or           s10, s4, s4
                  xori         t3, a3, -1093
                  xor          t4, t1, t1
576:              bge          a4, a6, 583f
                  sltu         ra, t6, s11
                  srli         a5, a1, 20
                  lui          a2, 634024
                  addi         a7, a7, -1601
                  sltiu        s11, s7, 1166
                  or           s11, s4, a1
583:              sltu         s6, s1, s4
                  add          sp, s8, s1
                  andi         s2, s2, 1829
                  or           ra, a6, t5
                  bge          s4, s8, 592f
                  nop
                  auipc        s2, 743088
                  and          t0, s10, s0
                  andi         s2, s3, 613
592:              sub          s11, tp, t5
                  sltiu        t2, a4, -2044
                  auipc        a5, 554432
                  sltu         s11, t6, a3
                  slti         s3, s9, -456
                  auipc        s0, 790482
                  auipc        sp, 854984
                  slt          a0, a1, s8
                  bgeu         s6, s11, 610f
                  slli         s7, s3, 23
                  nop
                  bgeu         s1, s5, 614f
                  slti         zero, s8, 1274
                  sltu         t1, s4, a0
                  slli         a6, a1, 5
                  lui          s8, 863724
                  sub          s6, s6, a0
                  bgeu         s11, s3, 616f
610:              sltu         sp, t6, s10
                  sra          s10, t4, t2
                  lui          s10, 937193
                  srl          ra, tp, a7
614:              slti         t2, t3, 1703
                  bne          a6, s6, 623f
616:              and          s3, t6, s5
                  andi         s9, t3, 1799
                  bne          s4, s0, 633f
                  slti         s0, a2, 1611
                  srli         a5, tp, 12
                  beq          s4, ra, 633f
                  bge          gp, s6, 635f
623:              lui          s6, 77163
                  slti         sp, t3, -1386
                  or           a6, a4, a4
                  lui          s0, 476314
                  add          s6, a4, s4
                  and          t2, t6, a2
                  add          a6, s3, t5
                  slli         sp, s3, 14
                  bge          sp, s7, 651f
                  srli         a6, a0, 24
633:              addi         a7, s9, -491
                  bne          zero, a6, 641f
635:              sra          t1, a2, s2
                  sll          a3, t2, s10
                  nop
                  slt          s0, a7, s9
                  lui          sp, 1011870
                  beq          a3, s11, 660f
641:              sltu         a4, t2, a7
                  sub          s7, a4, t5
                  sll          t3, s2, s8
                  xor          s1, s2, ra
                  bltu         s8, s10, 650f
                  srl          a1, s5, t1
                  slt          a4, s11, gp
                  auipc        s0, 181503
                  add          s2, a4, a2
650:              sra          a7, ra, a4
651:              ori          ra, sp, 1092
                  sltu         sp, s5, a3
                  slti         a0, a1, 1293
                  bge          s4, sp, 657f
                  srl          t1, s1, s4
                  xori         s3, s7, 1809
657:              sltu         t1, t1, s0
                  or           t3, t5, a6
                  or           t4, a5, t0
660:              sltiu        s10, s10, -558
                  sltu         s7, s7, a3
                  beq          ra, a3, 668f
                  sll          a6, s3, a6
                  xori         t2, tp, -1844
                  nop
                  or           t0, ra, s1
                  srai         a2, zero, 10
668:              auipc        t4, 420077
                  xori         a0, s3, -500
                  bgeu         s7, s1, 676f
                  lui          s3, 920655
                  srli         s0, s9, 30
                  ori          s3, a2, 1409
                  and          zero, gp, s11
                  sll          t6, t3, s2
676:              ori          s10, s6, 652
                  blt          s4, s1, 689f
                  xori         s9, s10, 1934
                  srli         a3, s5, 17
                  andi         t0, zero, 2037
                  bne          s8, a4, 699f
                  sltiu        s8, a6, 1855
                  bltu         s7, s2, 700f
                  blt          a1, s2, 698f
                  sra          s1, s9, zero
                  sltu         a3, a2, a7
                  sll          t0, a7, t5
                  beq          s11, s11, 699f
689:              bltu         a7, a4, 694f
                  srai         a7, tp, 18
                  nop
                  addi         a2, a5, 1403
                  slt          t0, s9, s6
694:              add          a7, s1, s11
                  slti         gp, s9, -399
                  sub          s2, a6, t6
                  blt          gp, t1, 709f
698:              or           s8, gp, s8
699:              srai         s10, s7, 1
700:              addi         s7, t0, -1684
                  bge          t1, zero, 714f
                  ori          a2, s4, 712
                  bne          gp, a1, 710f
                  auipc        t3, 67096
                  slti         a0, a1, 1797
                  and          t4, t0, t4
                  bne          s6, s1, 713f
                  add          s10, s1, a5
709:              blt          gp, s3, 729f
710:              slti         s8, s6, 262
                  and          s8, gp, s11
                  bgeu         ra, s11, 721f
713:              sltiu        a6, t6, -1149
714:              slt          s8, s2, s7
                  auipc        gp, 1037068
                  slli         a0, s0, 6
                  addi         a3, s9, -953
                  bltu         s5, ra, 726f
                  blt          s6, t1, 729f
                  srl          t2, a0, t6
721:              srli         t6, s6, 24
                  ori          s3, s3, -1044
                  srl          s6, s2, a4
                  slt          t6, t6, t1
                  blt          t0, t0, 728f
726:              slli         a3, s11, 8
                  bge          zero, ra, 737f
728:              slt          s7, t6, t0
729:              add          s3, zero, s1
                  addi         s10, t5, 1950
                  bne          s0, s1, 746f
                  sll          s8, s4, s11
                  blt          tp, t4, 738f
                  or           s8, t0, a1
                  sltu         t2, a7, s9
                  bge          t3, a2, 756f
737:              sltiu        a6, s9, 1015
738:              andi         a7, t5, 1526
                  bge          a5, s6, 746f
                  bne          a1, s11, 745f
                  lui          t4, 1014971
                  sra          s6, s3, ra
                  or           t1, a4, s5
                  sltiu        s1, t1, -433
745:              blt          a7, s3, 750f
746:              sltiu        sp, ra, -400
                  lui          a3, 768120
                  add          a6, s4, s1
                  srl          t2, a1, t1
750:              xor          sp, s11, t5
                  blt          s4, gp, 763f
                  slt          s6, a0, t4
                  sltu         zero, zero, t5
                  auipc        t2, 928620
                  beq          t3, a2, 767f
756:              and          t4, a6, t4
                  srl          s2, t2, s6
                  or           t1, s8, s7
                  bltu         t0, a3, 773f
                  and          s0, a5, t6
                  beq          s6, sp, 772f
                  slt          s6, s2, t3
763:              sltu         s0, sp, a0
                  slti         t1, s6, -21
                  auipc        s3, 3919
                  ori          sp, t5, 1428
767:              srli         s9, t1, 23
                  ori          t3, s0, 1309
                  bne          s0, a1, 775f
                  bltu         a7, s0, 780f
                  and          t1, a0, tp
772:              srai         a6, s5, 20
773:              bgeu         t1, s3, 786f
                  bgeu         t6, s10, 786f
775:              sltu         s2, a6, t3
                  bne          t5, s4, 787f
                  sltiu        s0, a7, 758
                  andi         a4, a5, 2009
                  andi         gp, t6, -1544
780:              add          tp, tp, s5
                  sll          s11, a7, ra
                  addi         t0, s2, -550
                  add          t6, t4, t4
                  sra          a6, s7, t6
                  srl          a1, a1, t5
786:              sll          tp, s6, a7
787:              andi         s9, s6, 2004
                  srl          tp, a2, s8
                  sra          s3, tp, t2
                  bgeu         t6, t0, 807f
                  andi         s8, a1, 1827
                  bge          t4, a0, 799f
                  beq          sp, t3, 806f
                  xori         tp, s1, 1674
sub_5_1:          jal          ra, 7f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          a6, 4f
3:                jal          s8, 0b
4:                jal          ra, 3b
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          gp, 13f
8:                jal          ra, 12f
9:                jal          t1, 2b
10:               jal          t1, 11f
11:               jal          t1, 6b
12:               jal          t1, 1b
13:               jal          ra, 5b
14:               xor          t3, a3, s6
                  xori         gp, t5, -487
                  add          a5, a4, s9
                  auipc        s9, 619760
                  nop
799:              addi         a7, t4, 1601
                  bne          s9, s1, 818f
                  or           s0, gp, sp
                  bne          tp, t4, 813f
                  and          s9, s5, t3
                  sltu         s0, a2, s0
                  bne          a4, a6, 825f
806:              srli         t4, gp, 26
807:              blt          s2, t6, 813f
                  or           a3, t4, t3
                  bne          s6, t3, 819f
                  blt          t2, gp, 821f
                  ori          s9, ra, -1887
                  ori          s6, s7, 2024
813:              sltiu        tp, s2, -1424
                  lui          s10, 17610
                  xori         s0, a7, 530
                  xori         t1, s4, 1751
                  sltiu        tp, t3, 652
818:              ori          s11, s9, 1423
819:              add          s9, s11, s8
                  blt          s11, a4, 834f
821:              addi         sp, a6, 697
                  and          t6, t3, s6
                  srl          a5, zero, t1
                  sltiu        t3, ra, -1972
825:              nop
                  sll          s3, a2, s7
                  ori          a4, s9, 234
                  add          t6, s11, gp
                  srli         s3, a2, 10
                  or           zero, s5, s4
                  bne          s10, a5, 851f
                  srl          s9, a1, s6
                  blt          s10, s4, 846f
834:              andi         gp, a7, -1407
                  beq          s10, s8, 846f
                  add          gp, zero, a7
                  slt          a2, a7, t3
                  ori          a1, t4, -83
                  or           s10, s7, s6
                  andi         sp, s2, 282
                  slli         a1, s3, 17
                  beq          sp, s0, 848f
                  xori         s2, a3, 807
                  srl          a6, a0, s10
                  srli         s9, t3, 6
846:              ori          t3, t3, -1106
                  or           s2, a0, a1
848:              bne          s6, a1, 860f
                  xor          zero, t2, a4
                  xori         t3, s9, -921
851:              sub          a1, a1, a1
                  slti         s1, s1, 1947
                  sub          s10, a3, s11
                  ori          t2, a6, 768
                  bltu         s3, s9, 873f
                  xori         s9, s8, -832
                  beq          t6, s1, 863f
                  and          a4, ra, t0
                  sltu         t4, a0, t3
860:              ori          t2, a1, -160
                  auipc        t4, 432521
                  add          s6, t2, a0
863:              and          t2, s4, s4
                  add          a5, sp, tp
                  or           a6, t2, s2
                  srl          a3, zero, zero
                  xor          a3, gp, gp
                  sltu         tp, gp, a4
                  sra          s8, tp, ra
                  add          s9, s1, s7
                  bltu         a6, a0, 880f
                  slti         a5, a2, -1894
873:              auipc        ra, 781710
                  bge          s1, a1, 879f
                  srli         t3, gp, 6
                  slt          t3, a4, s0
                  bge          t6, a4, 892f
                  sra          a1, t0, a7
879:              or           s3, a0, a2
880:              sltu         a4, tp, s2
                  nop
                  beq          s1, s1, 887f
                  auipc        s7, 372214
                  or           zero, s11, ra
                  lui          a5, 260551
                  slti         s6, t4, -1061
887:              and          zero, a6, s0
                  srai         s10, s5, 2
                  sll          s3, s2, sp
                  slli         a0, s1, 30
                  sub          a0, a1, s0
892:              srl          s2, tp, t0
                  slli         s7, a2, 31
                  xor          tp, t0, t6
sub_5_4:          jal          ra, 3f
0:                jal          t1, 16f
1:                jal          s3, 9f
2:                jal          ra, 18f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          t1, 15f
6:                jal          ra, 8f
7:                jal          ra, 14f
8:                jal          t1, 0b
9:                jal          s1, 17f
10:               jal          t1, 7b
11:               jal          ra, 13f
12:               jal          t1, 11b
13:               jal          gp, 4b
14:               jal          t6, 1b
15:               jal          t1, 6b
16:               jal          ra, 2b
17:               jal          t1, 19f
18:               jal          gp, 10b
19:               add          s1, t5, sp
                  bne          s6, s11, 907f
                  andi         t6, s1, 1501
                  andi         t1, a3, 1745
                  slt          t1, s0, ra
                  sra          a0, t5, sp
                  blt          s3, t1, 911f
                  addi         s2, s6, -1408
                  srli         t4, t6, 6
                  sub          s3, s11, a7
                  sltiu        s2, s3, -2000
                  sub          zero, s3, a4
                  auipc        ra, 873094
907:              sub          s8, t2, s2
                  slti         s8, a5, -1864
                  slti         s10, sp, 1520
                  add          a2, t4, s11
911:              beq          s0, s6, 924f
                  sll          s11, s5, s1
                  sll          t4, a5, s7
                  slt          t0, a1, t4
                  add          ra, a0, a7
                  srl          t3, s1, s6
                  addi         tp, t3, -1922
                  add          zero, s2, s1
                  slli         ra, s6, 11
                  slti         a5, t0, -1657
                  xor          t2, a0, s0
                  sub          t3, t6, s11
                  srl          t0, ra, t0
924:              srai         a0, tp, 12
                  bgeu         s9, s8, 942f
                  bge          s5, t5, 933f
                  nop
                  slli         s3, s8, 18
                  ori          a1, s1, 852
                  sll          ra, s5, t4
                  lui          a1, 291886
                  bltu         s4, ra, 942f
933:              slti         a6, t6, -876
                  slti         s9, t1, 259
                  bne          a1, s8, 941f
                  nop
                  lui          a7, 649758
                  beq          t2, a7, 941f
                  sub          s11, a5, a1
                  srl          t1, a6, a5
941:              lui          s3, 1022656
942:              slli         t0, a1, 1
                  bne          s4, a0, 950f
                  nop
                  srl          a7, s2, s0
                  blt          a7, tp, 966f
                  sltiu        a7, a0, 1659
                  sra          t4, s1, t1
                  slti         a3, a3, -1369
950:              lui          a3, 462515
                  blt          t5, a6, 959f
                  xori         s6, zero, -2033
                  sub          t6, a3, s5
                  slti         t2, s5, -1461
                  sll          s3, s4, sp
                  blt          a3, s10, 976f
                  bge          a7, a7, 969f
                  sra          s6, s11, a4
959:              srl          t3, a5, tp
                  srai         s11, t2, 28
                  xor          s2, s3, sp
                  slli         zero, a4, 12
                  bgeu         s7, t2, 970f
                  sra          a2, a7, gp
                  add          s1, a4, t1
966:              auipc        a1, 353119
                  srl          t4, a3, s3
                  sll          a2, a6, a4
969:              beq          a1, ra, 974f
970:              sra          a5, s2, a2
                  bgeu         zero, a7, 981f
                  bgeu         t6, a7, 977f
                  srli         s1, t1, 16
974:              sltu         gp, a2, gp
                  bge          s7, t5, 987f
976:              beq          s9, tp, 991f
977:              addi         s3, s0, 1433
                  sltu         zero, s0, s11
                  sra          s8, s4, s9
                  ori          tp, t6, 117
981:              bgeu         t1, t4, 986f
                  slt          s8, t3, a5
                  blt          s10, a1, 995f
                  auipc        s3, 3984
                  bne          ra, a3, 1005f
986:              bge          s4, t1, 992f
987:              beq          t4, t6, 995f
                  slti         s11, s11, 1815
                  slt          a7, a3, t4
                  addi         s2, s7, 1043
991:              slli         a3, s9, 14
992:              beq          s7, a6, 998f
                  sra          a5, ra, a6
                  blt          a4, s1, 1008f
995:              nop
                  beq          a6, ra, 1008f
                  bge          s3, a1, 1004f
998:              sll          gp, s9, s1
sub_5_21:         jal          ra, 20f
0:                jal          ra, 9f
1:                jal          ra, 22f
2:                jal          t2, 4f
3:                jal          t1, 7f
4:                jal          a4, 12f
5:                jal          ra, 2b
6:                jal          t1, 5b
7:                jal          ra, 17f
8:                jal          ra, 10f
9:                jal          t1, 26f
10:               jal          ra, 19f
11:               jal          ra, 13f
12:               jal          ra, 21f
13:               jal          ra, 25f
14:               jal          ra, 8b
15:               jal          ra, 18f
16:               jal          ra, 1b
17:               jal          ra, 0b
18:               jal          a7, 28f
19:               jal          ra, 24f
20:               jal          tp, 11b
21:               jal          t1, 15b
22:               jal          ra, 6b
23:               jal          ra, 14b
24:               jal          ra, 27f
25:               jal          t4, 23b
26:               jal          tp, 16b
27:               jal          a6, 3b
28:               sltiu        t0, tp, 1594
                  srli         a3, a3, 22
                  bne          t6, s5, 1020f
                  slti         a1, s6, 1209
                  addi         a0, s3, -829
                  sra          a1, t0, tp
1004:             sltu         gp, t1, a2
1005:             bne          tp, sp, 1012f
                  addi         t0, a7, -59
                  add          a0, a1, s4
1008:             xori         a6, gp, -1324
                  sltiu        zero, s2, -145
                  blt          s10, a4, 1019f
                  bltu         s10, tp, 1029f
1012:             beq          t6, s2, 1019f
                  slli         a5, a4, 15
                  auipc        a7, 696512
                  addi         a5, t5, -941
                  andi         a6, s5, 996
                  sltu         s6, t1, a4
                  lui          a5, 534541
1019:             andi         s3, t5, -1351
1020:             xor          a0, s0, ra
                  lui          s1, 461784
                  slti         sp, t3, -748
                  lui          s10, 845820
                  beq          a7, s4, 1030f
                  xor          a2, s10, gp
                  sll          ra, a5, a7
                  srli         a1, a1, 16
                  bltu         a6, a3, 1045f
1029:             sub          s11, t4, s7
1030:             and          sp, a7, a5
                  add          s11, s3, a1
                  bge          t4, s6, 1042f
                  slti         s1, t5, 35
                  beq          a4, t3, 1037f
                  bne          s5, s11, 1040f
                  ori          zero, s5, -70
1037:             or           a2, a6, s5
                  andi         a2, s6, 219
                  blt          a2, s3, 1050f
1040:             xor          a4, s7, s10
                  slli         t1, s4, 13
1042:             blt          t0, s3, 1053f
                  srai         t2, s6, 24
                  srai         a0, zero, 12
1045:             sltiu        a4, a5, 1285
                  slti         s8, s6, -1832
                  slli         s1, a1, 16
                  beq          a0, a3, 1059f
                  xori         a0, t3, 1140
1050:             addi         s2, ra, -1991
                  andi         sp, s8, 1578
                  sltu         s11, t3, s5
1053:             xor          t2, s8, a5
                  nop
                  slti         s11, t3, 71
                  sll          a6, a2, tp
                  addi         t1, gp, -1136
                  bne          s11, a2, 1068f
1059:             beq          s1, a0, 1069f
                  xor          t2, s7, a2
                  slti         tp, zero, 361
                  lui          t2, 746629
                  andi         s10, t1, 1106
                  xori         s11, a4, -1256
                  srli         s9, a6, 28
                  sll          t4, t5, t1
                  srli         zero, s9, 15
1068:             auipc        a3, 962015
1069:             sll          s11, s0, t3
                  srl          ra, t1, s0
                  xori         t0, sp, -1551
                  or           s1, s1, s8
                  sra          a5, ra, a5
                  ori          tp, t6, 1059
                  or           s8, sp, s11
                  srli         t2, s6, 16
                  sltu         s6, tp, t0
                  sltiu        t4, t2, -1021
                  srli         zero, s11, 15
                  slli         gp, s3, 18
                  ori          t0, s2, -730
                  srl          s0, s8, t0
                  bge          s1, tp, 1096f
                  and          s3, s0, a6
                  or           s2, s10, t5
                  xor          a0, t0, t3
                  addi         t6, t2, -1901
                  slt          tp, a4, a1
                  slli         s7, s2, 29
                  sra          s7, a5, t0
                  or           s0, a1, t2
                  lui          a3, 139127
                  xor          ra, s2, a6
                  addi         s1, t0, -1323
                  or           s7, s2, a3
1096:             xor          a2, t0, a7
                  slli         s0, a6, 2
                  bne          s11, tp, 1118f
                  andi         s6, s0, 505
                  bltu         t0, ra, 1113f
                  add          s3, s7, tp
                  blt          s2, s6, 1122f
                  lui          t2, 857958
                  srli         s2, s2, 12
                  or           s6, zero, a5
                  or           s3, s7, s10
                  and          ra, t1, sp
                  sltiu        s11, s3, 964
                  sltiu        s7, a1, -1836
                  sltu         s1, a2, t5
                  slti         s10, tp, 319
                  srli         s7, s7, 23
1113:             xor          t0, a3, t5
                  xori         zero, t0, 244
                  xori         t3, s4, 712
                  sra          s3, gp, t2
                  sub          gp, s6, s11
1118:             srai         s3, a7, 11
                  srl          a3, a1, t5
                  bgeu         a6, s2, 1131f
                  slli         a7, a7, 26
1122:             addi         s9, t3, 910
                  ori          zero, t2, 434
                  srl          s0, t2, a3
                  slt          s9, ra, s2
                  and          s2, sp, a6
                  sub          a7, zero, t3
                  sll          a0, s3, a2
                  sltiu        s2, s9, 858
                  ori          s10, tp, -1725
1131:             sll          a5, tp, s11
                  auipc        t6, 499331
                  auipc        a6, 974029
                  andi         s11, sp, -132
                  addi         ra, s5, -836
                  sra          a6, s10, s5
                  srl          a2, s1, t5
                  sltiu        a2, a3, 991
                  slli         zero, a7, 30
                  srai         s2, a5, 26
                  and          s3, a1, zero
                  andi         a1, sp, -1662
                  sra          t6, a4, a4
                  andi         gp, s8, 587
                  and          s7, t5, s3
                  and          s3, s4, s4
                  srli         s2, t1, 6
                  andi         s9, a1, 163
                  auipc        s7, 751713
                  lui          s11, 427253
                  srai         s6, t2, 30
                  srai         a3, s6, 26
                  sll          s7, t0, a5
                  lui          t0, 852436
                  and          t1, t4, a5
                  slt          a2, s3, zero
                  slt          s1, s2, s10
                  slti         s8, s3, 1265
                  sra          t2, gp, s7
                  beq          a5, t1, 1170f
                  sll          t3, s2, a6
                  add          ra, a3, t0
                  bne          t6, gp, 1169f
                  ori          s1, tp, 871
                  blt          s10, a5, 1176f
                  srai         s1, s9, 19
                  srl          s6, s5, gp
                  sub          t2, t1, t6
1169:             ori          t0, s10, -1588
1170:             add          a2, t6, a1
                  bne          a7, a3, 1180f
                  slti         s3, s8, 631
                  nop
                  and          s11, t1, s9
                  xor          a5, t2, t5
1176:             andi         t0, t3, 166
                  beq          zero, zero, 1190f
                  or           sp, a0, gp
                  xori         zero, s4, -1172
1180:             bgeu         s2, s11, 1185f
                  add          s6, t2, t6
                  nop
                  ori          s0, s3, -719
                  bgeu         s10, s6, 1192f
1185:             srl          zero, t1, gp
                  srai         gp, a2, 0
                  srl          sp, a1, s6
                  slt          gp, s11, a0
                  sltiu        s6, s4, -357
1190:             xor          s6, a1, a2
                  lui          t1, 776105
1192:             sll          s10, t0, s9
                  sub          t6, t5, s11
                  sltu         s6, t0, a5
                  sltu         a6, a2, s11
                  auipc        a0, 470983
                  slli         s2, t4, 31
                  srl          s3, t6, s2
                  sub          a3, t6, t0
                  blt          t1, a0, 1218f
                  xor          a4, zero, t0
                  bge          s11, s9, 1217f
                  slli         s10, tp, 10
                  or           a2, a4, a1
                  srli         t2, t2, 9
                  srl          sp, t2, t0
                  slt          s8, t4, t0
                  lui          a7, 567092
                  srl          sp, t5, zero
                  blt          t1, a5, 1216f
                  xor          s7, t4, t3
                  xor          a2, s10, s8
                  ori          t6, ra, -1801
                  andi         a3, s1, 187
                  sll          s1, t3, t2
1216:             bgeu         a1, s6, 1222f
1217:             bltu         s5, s5, 1227f
1218:             xori         zero, s5, -532
                  srai         t0, t6, 7
                  srli         a1, s9, 28
                  sub          t0, a5, ra
1222:             srai         t2, s7, 6
                  beq          s8, s3, 1237f
                  sltiu        s0, s3, 911
                  bgeu         s4, s1, 1237f
                  sltiu        a3, s10, -223
1227:             sltiu        s8, s1, -1494
                  sub          tp, s0, s3
                  and          ra, s6, t3
                  or           tp, a3, t3
                  addi         s7, t5, -1433
                  and          s11, a0, t0
                  bltu         t6, ra, 1240f
                  lui          t3, 987676
                  srl          s9, a5, t6
                  slti         t6, a1, 388
1237:             sltu         a2, a2, s10
                  or           a5, s11, s2
                  sra          ra, s10, t6
1240:             add          a5, s6, a5
                  blt          a0, s0, 1258f
                  slli         s2, s9, 27
                  beq          a3, a5, 1254f
                  beq          t3, s9, 1257f
                  sltiu        s3, s11, 786
                  sra          t3, sp, zero
                  and          s3, a2, t4
                  nop
                  and          a2, a3, tp
                  slli         t6, s11, 24
                  xori         t1, t5, -426
                  bne          a2, s10, 1257f
                  sll          s10, s4, t3
1254:             blt          s5, t5, 1264f
                  srli         ra, t3, 23
                  srl          t4, s0, t6
1257:             slt          s10, gp, t2
1258:             sra          s10, t2, s0
                  sra          t1, s5, t3
                  lui          a5, 702337
                  or           a5, s5, a5
                  bgeu         a4, s10, 1267f
                  xor          a4, t3, tp
1264:             sltu         s11, s8, zero
                  or           t0, s4, a4
                  sra          zero, s5, zero
1267:             bltu         s3, s1, 1279f
                  andi         s7, t1, -1415
                  slt          zero, a2, s11
                  beq          s1, t1, 1282f
                  bge          s3, ra, 1278f
                  add          t0, s6, a0
                  nop
                  sll          s3, tp, s7
                  sll          a2, t6, a3
                  add          s10, s8, a1
                  sra          ra, ra, t2
1278:             sll          a7, s6, t3
1279:             blt          a3, gp, 1282f
                  auipc        a5, 665370
                  sltu         s3, a6, t3
1282:             beq          a1, t4, 1302f
                  sltiu        s7, t3, 1575
sub_5_29:         jal          ra, 24f
0:                jal          ra, 3f
1:                jal          ra, 19f
2:                jal          a7, 23f
3:                jal          ra, 25f
4:                jal          ra, 22f
5:                jal          s10, 4b
6:                jal          t1, 7f
7:                jal          ra, 8f
8:                jal          tp, 2b
9:                jal          ra, 12f
10:               jal          s9, 6b
11:               jal          ra, 17f
12:               jal          a5, 1b
13:               jal          t2, 14f
14:               jal          t3, 5b
15:               jal          t0, 13b
16:               jal          t1, 20f
17:               jal          ra, 10b
18:               jal          t1, 0b
19:               jal          ra, 15b
20:               jal          ra, 18b
21:               jal          s6, 26f
22:               jal          s9, 16b
23:               jal          ra, 9b
24:               jal          sp, 11b
25:               jal          ra, 21b
26:               slli         zero, a0, 3
                  sra          a7, s2, tp
                  bltu         sp, a0, 1292f
                  or           a1, t0, a3
                  srai         s9, t5, 1
                  bltu         sp, a5, 1308f
                  sra          t4, zero, a1
                  bne          t3, s6, 1297f
                  lui          s10, 272078
1292:             addi         a2, s6, -784
                  xori         zero, s9, -1729
                  sll          tp, ra, t6
                  auipc        t3, 257052
                  ori          gp, t5, 1293
1297:             nop
                  bltu         t3, t1, 1311f
                  or           t3, t5, s3
                  sra          s11, t3, s5
                  addi         s3, t0, -409
1302:             and          t0, s11, s5
                  ori          a3, s3, -1922
                  slt          gp, a0, zero
                  sub          a5, ra, t6
                  andi         a7, a7, 1311
                  beq          a7, sp, 1318f
1308:             auipc        s1, 855175
                  xori         s1, a5, 422
                  slli         a1, s2, 3
1311:             or           zero, s1, t6
                  sltiu        gp, t1, 216
                  blt          zero, a0, 1321f
                  srl          s1, sp, a4
                  bltu         t5, s11, 1330f
                  beq          t1, s1, 1319f
                  slti         s10, t3, -1766
1318:             sltiu        t0, t5, 630
1319:             xor          s8, s11, ra
                  and          s6, a6, s10
1321:             srl          s7, a1, s8
                  bltu         s10, a3, 1335f
                  sltiu        t4, a4, 2013
                  and          s6, t2, sp
                  srli         a3, s0, 0
                  lui          a7, 963504
                  or           t6, s9, tp
                  sub          a0, s2, gp
                  or           a0, s9, t3
1330:             andi         t6, t3, 1589
                  xor          s0, a4, a1
                  nop
                  srai         ra, s5, 2
                  blt          t3, s8, 1346f
1335:             sltiu        a0, s0, -245
                  sltu         s3, s5, a2
                  srai         t1, t1, 4
                  bltu         s1, s11, 1344f
                  slli         zero, t1, 15
                  addi         t6, a1, -1775
                  xor          t3, t4, s3
                  ori          ra, a4, 284
                  bltu         t3, a0, 1350f
1344:             sll          s3, t0, s3
                  add          s7, s7, a5
1346:             sltiu        s6, t2, -1575
                  slti         s9, t4, -937
                  bne          a5, t1, 1358f
                  srai         a4, sp, 3
1350:             sltiu        s7, a1, 1835
                  bne          sp, a0, 1356f
                  blt          a6, t6, 1370f
                  auipc        sp, 397581
                  beq          zero, s10, 1359f
                  and          tp, a4, t0
1356:             slti         ra, s8, 16
                  or           ra, t1, a0
1358:             slt          t0, a2, a2
1359:             bne          s11, a7, 1376f
                  srl          s2, s0, s6
                  beq          a2, t3, 1371f
                  slti         s11, s9, 636
                  beq          a5, ra, 1383f
                  slti         a2, t2, 856
                  addi         s6, t3, 179
                  sll          t4, a0, s0
                  or           a5, s2, zero
                  xori         s7, s6, -696
                  xori         a6, a7, -851
1370:             bne          zero, s10, 1382f
1371:             or           a0, s2, s5
                  or           s1, zero, s4
                  sltiu        s8, t0, 341
                  ori          t0, a2, -189
                  sra          s0, s4, t2
1376:             bne          a2, s9, 1385f
                  beq          s6, a4, 1388f
                  andi         a5, s3, 1596
                  auipc        t6, 136607
                  sltu         s11, a6, s4
                  slt          t1, ra, s3
1382:             ori          a4, s11, 984
1383:             bgeu         t4, s5, 1393f
                  ori          s7, tp, -143
1385:             sltu         s7, s2, a3
                  bne          a2, t6, 1400f
                  beq          a1, t2, 1393f
1388:             blt          s8, s3, 1394f
                  bne          a3, a1, 1396f
                  lui          a2, 751767
                  nop
                  bge          a7, s6, 1412f
1393:             srl          t1, s6, tp
1394:             bne          s2, s9, 1399f
                  xor          s3, zero, a6
1396:             blt          s4, t0, 1407f
                  bltu         a3, s11, 1409f
                  addi         s6, tp, -1212
1399:             srl          s11, s5, t4
1400:             sltiu        t1, s6, -472
                  beq          s1, a4, 1421f
                  sltiu        ra, t6, 1845
                  auipc        zero, 328280
                  srl          a6, s0, ra
                  blt          s10, s6, 1425f
                  bgeu         tp, t5, 1426f
1407:             and          a3, a5, a0
                  blt          s4, a7, 1414f
1409:             srl          t3, a1, t3
                  sub          s6, s5, a4
                  bgeu         a0, a5, 1422f
1412:             nop
                  bgeu         s9, s0, 1425f
1414:             add          a3, sp, a2
                  slli         a0, s0, 11
                  bne          a6, zero, 1423f
                  bne          s4, t4, 1429f
                  sra          s9, a0, a2
                  bne          s3, t0, 1424f
                  beq          s10, s5, 1437f
1421:             bgeu         a4, t3, 1435f
1422:             slti         a7, a3, -1921
1423:             blt          s1, s8, 1436f
1424:             or           t0, a5, t5
1425:             auipc        t6, 728286
1426:             or           t4, t4, s2
                  add          a5, s1, t4
                  sra          a4, a6, a4
1429:             bgeu         s8, a2, 1437f
                  beq          t5, t4, 1433f
                  srli         zero, s3, 7
                  bge          t1, s11, 1437f
1433:             srai         a2, s0, 14
                  nop
1435:             lui          a6, 549884
1436:             bltu         s7, s1, 1443f
1437:             srl          s9, ra, a0
                  beq          ra, a2, 1448f
                  bgeu         t1, s6, 1449f
                  srai         s10, s10, 23
                  andi         a7, t2, -407
                  srli         gp, t4, 26
1443:             xor          s6, t2, t4
                  sub          t0, ra, a1
                  sltu         a2, t5, s11
                  ori          sp, a6, 623
                  or           a6, a5, t5
1448:             slli         s9, s10, 28
1449:             add          s7, ra, s7
                  srl          t0, t0, a7
                  auipc        sp, 500839
                  bge          s9, t4, 1457f
                  srl          a0, a2, t0
                  sub          s1, s3, s9
                  slli         a1, a3, 29
                  andi         t0, t0, -195
1457:             xori         s9, s9, -1338
                  and          a2, s5, s3
                  sub          s3, s0, s11
                  sub          a1, s8, a7
                  andi         t1, ra, 1027
                  srai         a2, s8, 4
                  auipc        zero, 970234
                  xor          t1, s4, tp
                  blt          a7, s4, 1483f
                  srli         tp, s11, 20
                  bgeu         sp, a6, 1477f
                  and          s1, s0, sp
                  sltiu        gp, s4, -195
                  add          t4, s0, t2
                  slti         a1, t6, 1020
                  auipc        t2, 615441
                  sll          t1, tp, t5
                  slli         s11, s2, 24
                  or           a2, ra, a5
                  add          tp, a0, t3
1477:             slli         zero, t0, 28
                  sub          a0, t4, gp
                  sll          t6, t5, t2
                  lui          a0, 595850
                  bge          s9, a6, 1487f
                  srl          t0, a7, a5
1483:             slt          a7, tp, a0
                  sltu         a1, a5, s8
                  andi         s2, s1, -711
                  beq          s0, a3, 1499f
1487:             sub          ra, s7, a6
                  srli         a4, a0, 10
                  addi         t2, s6, -1883
                  sra          a3, s3, a6
                  bgeu         t4, t4, 1497f
                  sra          a3, s0, sp
                  sltiu        a7, s4, 220
                  bltu         s11, a5, 1509f
                  or           s1, t4, t0
                  slt          s6, a0, a3
1497:             sll          sp, s5, a6
                  xor          ra, s11, a5
1499:             srli         t2, a3, 26
                  sltu         ra, a2, t3
                  slli         s9, s6, 22
                  sltiu        s6, tp, 537
                  srai         s10, s8, 23
                  srl          zero, s10, s5
                  bltu         s7, t5, 1516f
                  slti         s3, a3, 1011
                  sll          a1, a4, s2
                  slti         gp, t2, 95
1509:             andi         a5, s11, 1518
                  sltiu        ra, a3, 1222
                  slli         s6, t2, 15
                  slti         a7, s11, 1737
                  andi         a3, gp, -1030
                  blt          zero, s7, 1521f
                  bltu         s0, s5, 1527f
1516:             add          ra, t5, ra
                  auipc        s3, 370129
                  add          s3, gp, t4
                  addi         s11, ra, 1445
                  lui          a1, 1011257
1521:             bge          s11, s10, 1530f
                  xor          s9, t5, ra
                  srai         s9, s4, 11
sub_5_10:         jal          ra, 6f
0:                jal          ra, 7f
1:                jal          t1, 3f
2:                jal          s7, 0b
3:                jal          s1, 8f
4:                jal          a5, 11f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          t1, 9f
8:                jal          t4, 5b
9:                jal          sp, 10f
10:               jal          ra, 4b
11:               sltiu        zero, s4, -213
                  ori          t6, a4, -1800
                  sltiu        t1, t2, -1901
                  srl          sp, a5, t6
1527:             sub          gp, a3, t5
                  sltu         s9, a7, t3
                  bltu         s5, s1, 1540f
1530:             xori         s2, t4, 723
                  bne          t1, a6, 1551f
                  slti         a7, zero, -1668
                  addi         s11, t1, 1283
                  add          t3, t1, t0
                  auipc        t4, 533504
                  andi         zero, a3, -1140
                  and          s8, zero, t3
                  slli         a0, s6, 10
                  slli         s0, s3, 12
1540:             sll          zero, t6, s9
                  sltiu        s7, s0, 1203
                  bltu         t2, t4, 1547f
                  addi         zero, s5, 277
                  and          s10, t3, t3
                  srai         t1, sp, 9
                  srli         t6, t6, 28
1547:             add          a1, a4, a4
                  blt          a2, s2, 1554f
                  sll          a7, t5, t2
                  or           t6, a4, a5
1551:             slli         ra, a2, 6
                  lui          a4, 648167
                  slt          t0, ra, sp
1554:             srai         s11, s0, 2
                  sll          a4, a7, t2
                  bgeu         zero, s4, 1567f
                  sltiu        gp, t5, -1876
                  beq          s0, t0, 1561f
                  sltu         s6, gp, t2
                  andi         s8, a4, 1336
1561:             sra          s6, a6, s4
                  sra          a2, s1, t2
                  andi         s7, a0, -2036
                  bge          a2, ra, 1584f
                  lui          s1, 291303
                  beq          t5, s7, 1576f
1567:             ori          a5, s5, -1728
                  nop
                  andi         a4, ra, 1655
                  sltu         s9, t1, s3
                  slti         a1, s10, -1872
                  and          a7, s0, ra
                  add          t3, a2, zero
                  ori          a5, a0, 1437
                  bltu         t0, a0, 1580f
1576:             sltiu        a5, t5, 386
                  sub          gp, a0, a3
                  slt          s9, t1, t1
                  slt          t6, s3, ra
1580:             slt          a7, s10, a2
                  xor          sp, a4, t1
                  slt          t2, s10, t4
                  slli         s7, s1, 12
1584:             xor          t3, a5, a1
                  blt          t4, gp, 1592f
                  slt          gp, a1, s8
                  srli         gp, a4, 29
                  blt          s2, a1, 1593f
                  bne          a1, t6, 1597f
                  slti         t4, t0, 560
                  sll          t1, t4, s7
1592:             bge          a1, t6, 1606f
1593:             beq          s7, a2, 1610f
                  slli         s8, t5, 8
                  xor          s10, a0, a0
                  xor          t1, s9, a7
1597:             addi         s3, a0, 1440
                  auipc        s3, 836129
                  xori         t2, t1, -514
                  auipc        ra, 867187
                  srli         a3, t0, 8
                  sra          a3, a6, s10
                  srl          gp, t6, a2
                  add          s10, ra, a5
                  bge          a7, gp, 1616f
1606:             nop
                  ori          sp, s11, 1863
                  sll          tp, a4, s7
                  slt          s2, s0, a6
1610:             sub          s10, gp, s5
                  nop
                  xori         a3, t4, 976
                  slti         s11, a7, -139
                  slt          s10, a7, a2
                  ori          gp, s10, -161
1616:             nop
                  sltu         t1, tp, a4
                  srli         s10, s0, 15
                  and          a1, a6, a5
                  slli         a1, a5, 26
                  blt          s5, a6, 1627f
                  sltiu        s10, t4, -87
                  add          a2, a0, t3
                  sll          a0, a2, s0
                  slti         tp, s0, -120
                  xor          a5, ra, ra
1627:             beq          ra, t4, 1647f
                  add          sp, a4, gp
                  srli         a0, s10, 22
                  andi         t6, s5, 1419
                  andi         t3, a0, -849
                  ori          a1, t6, -881
                  bltu         s6, gp, 1651f
                  add          s1, zero, tp
                  auipc        s2, 892987
                  auipc        s10, 166437
                  add          s0, s2, s6
                  blt          s1, s5, 1650f
                  auipc        a7, 456431
sub_5_46:         jal          ra, 8f
0:                jal          t1, 2f
1:                jal          ra, 4f
2:                jal          t1, 1b
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          s6, 7f
6:                jal          ra, 0b
7:                jal          tp, 9f
8:                jal          ra, 5b
9:                jal          sp, 6b
10:               srl          s10, a1, t3
                  beq          s6, s2, 1647f
                  nop
                  add          s0, a0, a2
                  nop
                  lui          a4, 709670
                  beq          s2, s7, 1665f
                  bge          t6, zero, 1656f
1647:             sltiu        t1, t0, -931
                  bne          s6, s11, 1660f
                  auipc        tp, 654079
1650:             xor          a3, t4, t2
1651:             srai         tp, t0, 1
                  auipc        s9, 34636
                  srai         t6, s3, 5
                  srai         s10, s3, 8
                  srai         a7, a2, 25
1656:             srli         s1, t1, 29
                  bltu         a3, zero, 1672f
                  xori         ra, s6, -745
                  sra          s1, t0, a3
1660:             bge          t4, t4, 1666f
                  srai         t3, a0, 7
                  srl          t1, s1, a3
                  srli         tp, s4, 24
                  bge          a5, s2, 1677f
1665:             slti         s2, t2, -1335
1666:             lui          s8, 510183
                  addi         t4, zero, 1672
                  ori          s11, s2, 985
                  srli         s9, s4, 23
sub_5_44:         jal          ra, 2f
0:                jal          a0, 8f
1:                jal          t1, 13f
2:                jal          ra, 12f
3:                jal          t1, 7f
4:                jal          t1, 14f
5:                jal          ra, 4b
6:                jal          ra, 0b
7:                jal          ra, 10f
8:                jal          sp, 3b
9:                jal          t1, 1b
10:               jal          t1, 5b
11:               jal          ra, 6b
12:               jal          ra, 11b
13:               jal          ra, 15f
14:               jal          sp, 9b
15:               nop
                  slti         t4, a4, 434
                  slti         s1, gp, -67
1672:             sll          t2, s10, s4
                  sltiu        t2, tp, 1058
                  lui          t0, 526041
                  nop
                  srai         a1, s6, 30
1677:             sub          s7, s3, a1
                  bgeu         a2, s8, 1689f
                  sltu         a5, s8, a2
                  bge          gp, t0, 1689f
                  beq          a1, a6, 1693f
                  blt          t4, a7, 1695f
                  slt          a0, a0, a5
                  bltu         s9, t2, 1694f
                  ori          a7, s5, 229
                  auipc        s8, 552817
                  sltiu        ra, a6, -1383
                  xor          s7, s3, s1
1689:             bltu         zero, s11, 1696f
                  slli         s1, t2, 29
                  andi         s3, ra, 535
                  xor          tp, t6, t2
1693:             and          a7, s11, s7
1694:             sll          s0, s5, t3
1695:             bgeu         s5, s3, 1700f
1696:             ori          s7, s10, -66
                  sll          s1, t1, a6
                  blt          t1, s4, 1709f
                  srai         s2, a7, 2
1700:             sll          s9, t3, a0
                  sub          t1, t6, a4
                  bltu         t0, zero, 1710f
                  sltiu        t4, ra, 1948
                  sltu         ra, t1, s0
                  beq          a6, tp, 1725f
                  srl          a0, s11, t2
                  addi         a4, s7, -1801
                  xori         t1, a5, -111
1709:             nop
1710:             bgeu         s4, s9, 1717f
                  lui          ra, 356409
                  slt          zero, t4, zero
                  beq          t3, s3, 1719f
                  or           a1, gp, s7
                  add          s3, a6, s9
                  sll          s11, a6, a2
1717:             beq          a7, a4, 1722f
                  beq          gp, a3, 1723f
1719:             srl          s0, s2, a3
                  sltiu        a7, t6, -1920
                  ori          s2, a5, 1144
1722:             sra          tp, t6, t3
1723:             slli         s0, t4, 31
                  bge          ra, gp, 1730f
1725:             srl          s10, s10, s7
                  srai         s1, t5, 2
                  addi         s11, t0, -1218
                  srli         a7, t3, 5
                  lui          a3, 310672
1730:             lui          t2, 112819
                  and          zero, a7, t1
                  and          s3, s4, a1
                  andi         a4, s10, 1044
                  slti         t6, s2, -675
                  beq          t6, tp, 1741f
                  bne          t6, t1, 1749f
                  lui          s11, 751531
                  bgeu         t5, a3, 1752f
                  bltu         s3, zero, 1749f
                  slli         s1, ra, 8
1741:             slti         a4, tp, -1597
                  bne          a0, t6, 1754f
                  xori         s11, sp, -62
                  or           s1, a7, a6
                  add          t6, a3, s5
                  addi         a1, a4, -1200
                  srai         a0, s1, 25
                  sll          s0, s5, ra
1749:             sltu         t6, t3, t6
                  bne          a0, a6, 1757f
                  beq          s11, s3, 1768f
1752:             and          sp, t1, t5
                  srli         ra, s6, 4
1754:             bltu         a3, tp, 1767f
                  sub          a5, s7, t0
                  sll          ra, sp, s8
1757:             ori          t2, s4, -1592
                  bltu         t0, a3, 1765f
                  bge          s7, gp, 1769f
                  sltu         t4, t4, gp
                  sll          ra, a7, t1
                  andi         s9, s3, 720
                  srli         s8, s0, 19
                  bge          a2, t5, 1775f
1765:             xor          s2, s5, s3
                  sll          s9, sp, t0
1767:             lui          a2, 532118
1768:             sltiu        s10, t6, 1304
1769:             bge          a2, s8, 1781f
                  xori         a6, a2, -1685
                  lui          a4, 146442
                  sltu         gp, s11, a5
                  ori          s11, t0, 5
                  slli         a6, s10, 25
1775:             blt          s10, s11, 1793f
                  sltu         t2, a4, s8
                  addi         t0, s5, -1573
                  srl          zero, s8, t0
                  sub          s9, t2, a3
                  nop
1781:             slt          a6, s1, a3
                  and          s0, t5, a6
                  sltu         s3, t1, s3
                  bgeu         zero, a3, 1795f
                  slti         t0, a3, 507
                  nop
                  nop
                  sub          a2, s10, t0
                  addi         a5, a3, 1600
                  and          sp, zero, s0
                  or           t3, a7, s1
                  ori          a5, sp, -1307
1793:             slli         s8, a1, 1
                  beq          s8, s2, 1803f
1795:             and          a5, a7, s7
                  sltiu        a4, s2, 1551
                  sltu         s1, zero, gp
sub_5_17:         jal          ra, 25f
0:                jal          t1, 9f
1:                jal          ra, 13f
2:                jal          t2, 20f
3:                jal          ra, 8f
4:                jal          sp, 12f
5:                jal          ra, 19f
6:                jal          s6, 21f
7:                jal          ra, 1b
8:                jal          ra, 27f
9:                jal          ra, 18f
10:               jal          ra, 0b
11:               jal          s2, 24f
12:               jal          ra, 16f
13:               jal          ra, 6b
14:               jal          ra, 17f
15:               jal          ra, 3b
16:               jal          ra, 26f
17:               jal          ra, 4b
18:               jal          ra, 11b
19:               jal          gp, 2b
20:               jal          a0, 14b
21:               jal          ra, 10b
22:               jal          t1, 23f
23:               jal          ra, 28f
24:               jal          t4, 15b
25:               jal          ra, 7b
26:               jal          t4, 22b
27:               jal          t1, 5b
28:               sltiu        gp, a3, -1155
                  slt          t4, t2, t5
                  srai         s1, zero, 30
                  beq          ra, t5, 1820f
                  slt          s8, s6, a2
                  sub          s8, a1, a7
1803:             auipc        a1, 478005
                  slti         a4, a5, -595
                  add          tp, t1, s1
                  auipc        tp, 252804
                  bge          t6, zero, 1819f
                  bltu         s5, s11, 1818f
                  blt          a7, a6, 1829f
                  bgeu         t5, a7, 1813f
                  sltu         a2, zero, ra
                  srli         s2, s10, 22
1813:             and          t3, s10, a6
                  srl          t0, s5, s4
                  and          s2, t5, t0
                  sub          s10, a1, s1
                  and          s3, s10, s1
1818:             add          gp, s4, a6
1819:             slti         a0, t5, 1670
1820:             sub          s11, a4, t5
                  bgeu         tp, s4, 1836f
                  and          zero, s4, a5
                  slli         s2, gp, 27
                  xori         gp, s2, -607
                  srli         s2, s8, 30
                  sub          gp, ra, ra
                  ori          t0, a5, -661
                  auipc        t4, 276789
1829:             lui          t6, 540234
                  xori         a2, tp, 1889
                  bne          a2, a0, 1838f
                  slli         s6, a4, 23
                  and          t4, a5, s3
                  xor          a2, s5, a3
                  bltu         t3, a5, 1848f
1836:             sub          s8, s5, a1
                  or           a0, t3, s10
1838:             sltiu        s1, gp, 1433
                  slti         s11, t5, -282
                  slli         tp, a0, 31
                  or           s3, t4, t2
                  blt          t0, a0, 1855f
                  blt          s5, s1, 1855f
                  slli         s10, sp, 6
                  addi         a0, s6, -1499
                  add          t4, t3, s3
                  sltiu        t4, tp, 1139
1848:             add          a5, s4, s0
                  slli         gp, s2, 15
                  add          s11, ra, t0
                  bgeu         ra, t5, 1862f
                  slt          s1, ra, a5
                  sra          s6, t2, t1
                  beq          s2, t1, 1865f
1855:             lui          t1, 411072
                  add          a3, a4, a3
                  bge          s7, sp, 1863f
                  blt          s7, gp, 1878f
                  bne          s4, a4, 1865f
sub_5_19:         jal          ra, 9f
0:                jal          ra, 2f
1:                jal          ra, 5f
2:                jal          s0, 19f
3:                jal          ra, 17f
4:                jal          ra, 13f
5:                jal          ra, 12f
6:                jal          ra, 16f
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          ra, 20f
11:               jal          s0, 10b
12:               jal          ra, 4b
13:               jal          ra, 11b
14:               jal          t0, 15f
15:               jal          t1, 6b
16:               jal          ra, 1b
17:               jal          a5, 18f
18:               jal          t1, 14b
19:               jal          ra, 7b
20:               srli         a0, s9, 7
                  xori         a6, s6, -318
                  lui          s3, 123821
1862:             nop
1863:             slt          tp, a1, t6
                  and          t1, tp, a2
1865:             nop
                  srli         a6, a3, 29
                  xori         ra, gp, 1599
                  bge          ra, a4, 1871f
                  srli         a2, sp, 1
                  bge          s8, t5, 1880f
1871:             or           t3, s8, t6
                  nop
                  sub          t2, s9, a4
                  and          s7, t4, s4
                  or           t1, s1, t2
                  sll          s8, a5, t4
                  srai         s9, t0, 1
1878:             slli         s1, a3, 13
                  or           s6, t0, tp
1880:             srl          t4, s11, ra
                  bgeu         sp, s3, 1901f
                  addi         s3, t0, -138
                  and          t4, a1, s0
                  bne          s2, s4, 1893f
                  bgeu         s2, s2, 1893f
                  auipc        gp, 611469
                  beq          t4, s6, 1892f
                  sra          s3, sp, a1
                  and          s11, s2, s9
                  auipc        a6, 482144
                  sll          t1, t0, s10
1892:             addi         a5, tp, -523
1893:             bltu         t1, s5, 1903f
                  bge          tp, s7, 1906f
                  srli         s9, zero, 8
                  and          t6, s5, a6
                  auipc        s8, 53773
                  srli         t2, t4, 1
                  srl          a2, s4, a1
                  slti         s1, a6, 367
1901:             slt          gp, s5, a5
                  slti         s8, tp, -1065
1903:             blt          s1, s5, 1908f
                  sub          s0, s9, ra
                  beq          s5, a3, 1919f
1906:             bge          t4, a4, 1916f
                  xori         t2, s8, 698
1908:             bge          s9, gp, 1926f
                  sll          t3, s2, s4
                  srli         s10, a4, 14
                  auipc        a4, 870384
                  sub          a4, t6, s4
                  slti         t0, t2, 1261
                  lui          gp, 516406
                  auipc        ra, 977007
1916:             ori          ra, t5, -1315
                  sub          t4, a6, t1
                  bne          sp, t4, 1925f
1919:             slli         t3, s0, 25
                  ori          t6, a1, -195
                  slt          gp, t3, a5
                  sltu         s10, zero, s11
                  srai         s11, s9, 30
                  sll          s7, s8, a1
1925:             bge          a5, a5, 1932f
1926:             ori          a1, s3, -894
                  lui          s11, 899393
                  beq          s3, t4, 1939f
                  sub          a1, s11, a1
                  nop
                  bltu         s1, a5, 1948f
1932:             sltu         t2, ra, a3
                  nop
                  bne          t4, s3, 1940f
                  and          s11, t2, s7
                  ori          tp, a1, 1999
                  ori          t3, zero, 840
                  sub          s2, a3, s7
1939:             or           t2, s1, s3
1940:             ori          a4, s10, 2041
                  srl          s11, s9, sp
                  bltu         s5, zero, 1957f
                  beq          t6, s5, 1955f
                  beq          s10, s6, 1964f
                  slti         s11, t0, -1756
                  beq          gp, s11, 1951f
                  srai         s1, ra, 23
1948:             srai         a4, t4, 27
                  bne          s0, s6, 1961f
                  srli         t6, s11, 14
1951:             sub          t6, s5, t1
                  lui          zero, 165947
                  sltiu        a4, s9, -1040
                  andi         a0, t1, 1435
1955:             beq          s2, t6, 1960f
                  bne          a0, a7, 1976f
1957:             slti         tp, a0, 1988
                  slti         t4, t1, 1425
                  sll          zero, s4, s8
1960:             ori          a6, a1, 730
1961:             auipc        a6, 151227
                  srli         t0, s9, 2
                  sub          s10, t6, s2
1964:             lui          a5, 27253
                  slt          t2, t2, s8
                  ori          s9, s8, -130
                  sra          a0, t5, s6
                  bgeu         s4, s10, 1980f
                  sll          s11, a7, sp
                  xori         a1, zero, 698
                  sll          a3, t5, a7
                  sltu         s11, a3, a4
                  srl          a6, ra, ra
                  andi         t0, s9, 310
                  srai         a6, s5, 27
1976:             sra          s2, s6, s0
                  bgeu         s4, t4, 1987f
                  sll          a7, s3, t1
                  sll          s9, s3, gp
1980:             srl          a2, t4, a3
                  bgeu         s8, t5, 1999f
                  srl          tp, s10, a0
                  addi         ra, s8, -193
                  sltu         zero, a1, s8
                  and          a0, s0, t2
                  auipc        gp, 1023925
1987:             beq          t3, t6, 1994f
                  xori         t6, tp, 1599
                  lui          a4, 448930
                  xori         t6, t4, -1194
                  sra          a4, t0, t2
                  sra          t3, t3, zero
                  blt          t1, t6, 2001f
1994:             srli         a4, a3, 8
                  addi         t2, a2, -530
                  srli         s10, s5, 26
                  auipc        s8, 72143
                  sltiu        t3, s1, 1192
1999:             or           zero, a7, s7
                  srli         sp, ra, 28
2001:             ori          t3, t0, -1594
                  beq          a1, s4, 2022f
                  srli         sp, s8, 16
                  slli         t4, t2, 26
                  addi         sp, a5, -752
                  sltiu        s1, t6, 1425
                  srl          s1, a3, a1
                  slli         a0, t6, 26
                  lui          sp, 696546
                  addi         t0, t1, 1647
                  xori         a0, t6, 1774
                  slt          s11, s11, t0
                  add          t0, a7, s4
                  sub          a3, s0, s7
                  bgeu         ra, s6, 2024f
                  andi         tp, t0, 1961
                  add          sp, s8, s10
                  addi         s2, zero, -1723
                  blt          t0, zero, 2026f
                  xor          s7, zero, a0
                  sltu         s6, t6, a6
2022:             sub          t3, s0, a5
                  ori          gp, t5, -2021
2024:             srai         ra, tp, 20
                  sub          s3, s3, zero
2026:             sra          t1, t1, a5
                  and          a0, s5, t2
                  sub          a5, t0, a5
                  bne          s5, t2, 2040f
                  sra          t1, s2, a2
                  add          a3, a7, ra
                  srli         tp, s8, 23
                  lui          sp, 914052
                  sra          t3, t6, t0
                  sltu         s7, s4, a1
                  slli         s9, gp, 24
                  addi         s1, t5, -837
                  sll          a0, s6, gp
                  slt          a5, a4, a7
2040:             bltu         sp, sp, 2047f
                  beq          s0, s11, 2047f
                  xori         s6, s0, 1251
                  add          t6, s9, t5
                  srl          s8, t4, s7
                  and          s8, t1, t1
                  add          t0, s7, a6
2047:             srai         t3, t5, 20
                  and          a7, a4, a5
                  bne          a6, tp, 2060f
                  sra          zero, zero, t0
                  sltu         a1, s2, t3
                  blt          a0, t1, 2069f
                  lui          a2, 827800
                  slt          a6, s9, a6
                  bgeu         t2, t6, 2067f
                  slt          s7, s2, s0
                  sub          s7, s0, t4
                  andi         t4, s5, -1463
                  xori         a5, a4, -1292
2060:             srai         s1, gp, 24
                  beq          zero, a5, 2071f
                  beq          t3, t6, 2075f
                  auipc        t4, 671515
                  sub          s8, t5, s11
                  ori          s9, sp, -1729
                  beq          s10, s8, 2081f
2067:             bne          tp, sp, 2072f
                  add          sp, a7, t5
2069:             bne          s4, s9, 2072f
                  andi         sp, a7, -453
2071:             sltu         s1, s3, t4
2072:             srli         s9, t3, 5
                  nop
                  beq          a6, s4, 2085f
2075:             slli         s1, s9, 15
                  bge          t1, a5, 2090f
                  bltu         s5, ra, 2082f
                  bgeu         a0, s10, 2091f
                  bgeu         t2, s7, 2099f
                  sra          t1, s6, a2
2081:             xor          s7, t3, s5
2082:             xor          gp, ra, a0
                  sltu         s2, s11, a2
                  sub          a0, a6, t3
2085:             blt          a1, a7, 2091f
                  xori         s8, t3, -1841
                  lui          s8, 924200
                  xori         a7, t2, 177
                  bne          a2, a4, 2099f
2090:             sll          t6, s10, a1
2091:             sltu         s8, s8, a6
                  bge          a4, s2, 2098f
                  ori          sp, a3, 361
                  addi         t6, sp, -1786
                  sltu         s6, ra, s0
                  auipc        s9, 452082
                  xori         a1, a3, 397
2098:             sra          a2, s10, s6
2099:             srai         sp, zero, 21
                  slti         a0, t4, -657
                  sra          a2, a1, s2
                  ori          s2, s5, -413
                  lui          t1, 977298
                  or           a4, ra, s11
                  auipc        s7, 73646
                  add          s9, s5, zero
                  srl          zero, s11, t1
                  slli         s11, a7, 31
                  beq          a2, s11, 2115f
                  sltu         s0, a3, a2
                  addi         t2, a2, -634
                  slt          a4, a7, t6
                  addi         a3, s6, -90
                  add          a4, s1, s5
2115:             ori          t4, t0, 330
                  nop
                  bne          s0, a5, 2135f
                  andi         a4, tp, 249
                  xori         gp, s7, -225
                  bge          sp, t0, 2140f
                  slti         a7, a0, -517
                  slli         a7, a1, 4
                  srai         s2, s5, 3
                  sltu         sp, s3, s0
                  auipc        zero, 1021307
                  andi         a7, t0, -173
                  or           s7, t3, a6
                  ori          t2, s3, -155
                  slli         a1, t1, 23
                  auipc        s0, 218805
                  srl          a6, ra, t4
                  sltiu        t2, s8, -1254
                  bne          a1, tp, 2146f
                  sra          s2, s3, tp
2135:             lui          a4, 218552
                  lui          s6, 17706
                  srli         t4, t5, 0
                  xori         a6, s10, -1775
                  beq          gp, s5, 2159f
2140:             slt          ra, s9, a1
                  and          a0, s0, a7
                  srl          sp, s10, t3
                  andi         s0, s2, -1972
                  sll          s9, s3, ra
                  lui          a2, 201121
2146:             nop
                  or           s3, s2, s8
                  addi         s2, t2, -421
                  nop
                  xor          a7, a6, s2
                  bne          t0, t6, 2156f
                  xor          a6, a5, s1
                  xori         a3, s11, 563
                  nop
                  bltu         t0, s1, 2167f
2156:             nop
                  sltu         sp, t0, s7
                  sll          s9, a4, t3
2159:             bltu         s6, t4, 2164f
                  ori          s10, t4, 1721
                  andi         a6, s2, -606
                  nop
                  xori         t1, s6, 1974
2164:             sltiu        a0, gp, -1066
                  lui          s6, 782886
                  addi         s0, t3, -1336
2167:             auipc        a5, 198600
                  xor          a0, a0, t2
                  andi         a2, s5, -1552
                  sub          a2, s10, s0
                  sub          a4, t0, gp
                  xori         gp, tp, 392
                  slti         a2, a4, -1339
                  sltiu        a5, t3, -818
                  and          t4, t4, t1
                  sltiu        s7, s6, -1769
sub_5_22:         jal          ra, 19f
0:                jal          ra, 22f
1:                jal          t1, 9f
2:                jal          t6, 27f
3:                jal          ra, 29f
4:                jal          ra, 23f
5:                jal          gp, 7f
6:                jal          t1, 20f
7:                jal          ra, 14f
8:                jal          ra, 12f
9:                jal          ra, 5b
10:               jal          ra, 4b
11:               jal          t1, 10b
12:               jal          ra, 3b
13:               jal          ra, 1b
14:               jal          s0, 25f
15:               jal          s3, 28f
16:               jal          ra, 11b
17:               jal          ra, 26f
18:               jal          ra, 6b
19:               jal          t2, 0b
20:               jal          ra, 8b
21:               jal          t1, 2b
22:               jal          gp, 17b
23:               jal          a4, 18b
24:               jal          t1, 30f
25:               jal          sp, 16b
26:               jal          a3, 13b
27:               jal          ra, 24b
28:               jal          ra, 21b
29:               jal          t1, 15b
30:               add          a5, s11, s8
                  sltiu        s1, t6, -933
                  srl          t3, a2, ra
                  or           s0, s10, gp
                  srai         t1, s10, 22
                  srli         a6, gp, 29
                  srai         a3, t4, 20
                  beq          tp, t1, 2190f
                  and          a0, a0, s4
                  srli         tp, gp, 22
                  sltiu        ra, a3, -1698
                  slli         s11, a2, 2
                  sltiu        s10, ra, -1631
                  lui          s6, 778764
2190:             and          s9, a7, s1
                  xori         tp, s1, 1972
                  add          s2, a3, gp
                  slti         t3, a5, 1853
                  bge          t0, t3, 2197f
                  bltu         gp, s7, 2202f
                  beq          s7, s5, 2216f
2197:             slli         s3, sp, 22
                  bgeu         s3, t2, 2213f
                  slli         tp, a2, 30
                  sltu         s7, s9, a3
                  auipc        t0, 258226
2202:             sltiu        s3, t6, 1560
                  sra          a6, tp, a7
                  lui          s0, 373163
                  sll          sp, s10, a4
                  sra          s7, s5, a7
                  slti         sp, t4, -574
                  sra          t2, a6, a3
                  sltiu        a5, sp, -1102
                  add          a7, t2, a3
                  bltu         t1, t3, 2228f
                  sub          s6, gp, s3
2213:             add          sp, a6, s10
                  bltu         gp, s9, 2221f
                  blt          t3, a3, 2227f
2216:             bne          ra, s7, 2227f
                  addi         sp, t4, 1233
                  slli         ra, sp, 1
                  beq          t1, s11, 2225f
                  sltu         a6, t6, t6
2221:             beq          s6, t5, 2232f
                  sub          s2, sp, s8
                  addi         a5, a0, 1286
                  sll          s1, a2, s8
2225:             xor          s8, sp, t1
                  sltu         t1, s3, s4
2227:             bne          s11, zero, 2237f
2228:             nop
                  srli         zero, s6, 0
                  srl          s7, s9, ra
                  srai         s0, a2, 25
2232:             addi         s8, s7, 97
                  nop
                  auipc        a6, 665275
                  sra          t0, a7, a4
                  sub          s9, a5, t1
2237:             or           t1, sp, ra
                  bne          s4, s6, 2248f
                  bne          a6, s4, 2244f
                  sltu         s10, a0, s1
                  ori          a6, a0, 1232
                  sltu         s11, a4, s3
                  srai         a5, sp, 4
2244:             sltiu        gp, s7, -2012
                  xor          s7, s6, a6
                  auipc        s3, 739639
                  or           t6, t4, s9
2248:             sub          a7, s11, t2
                  sltiu        t1, t4, 373
                  nop
                  sll          s3, a0, s4
                  sub          a2, s2, a5
                  lui          sp, 132466
                  srl          t2, a3, sp
                  bltu         a7, s8, 2265f
                  bne          s6, tp, 2265f
                  nop
                  andi         a4, s3, -1246
                  bge          s4, sp, 2265f
                  sll          sp, t1, a2
                  xor          t1, gp, t5
                  sra          a3, sp, s5
                  sra          s1, a2, a2
                  bgeu         s0, s7, 2277f
2265:             bgeu         t2, zero, 2276f
                  and          s9, a6, a3
                  bltu         t1, s4, 2275f
                  sltiu        s8, s1, -1858
                  srl          a7, s7, a7
                  bgeu         a6, a1, 2282f
                  blt          t5, t5, 2285f
                  ori          s3, sp, -1389
                  blt          tp, ra, 2285f
                  ori          a2, a2, -613
2275:             srl          gp, t4, t5
2276:             nop
2277:             ori          t2, a0, 1918
                  sll          a6, t4, ra
                  beq          s0, t3, 2288f
                  slti         s6, s6, -76
                  slt          t4, a3, s8
2282:             srli         t1, s0, 27
                  srli         s2, s7, 20
                  sltu         a7, t0, t5
2285:             slt          t1, tp, s1
                  sra          s3, s2, t1
                  sll          s10, s6, s11
2288:             sltu         zero, t2, t2
                  nop
                  srl          s1, t3, s9
                  bge          a3, s0, 2298f
                  bne          zero, a2, 2309f
                  xor          t1, s4, s2
                  bne          s7, s9, 2312f
                  sra          a3, a0, tp
                  bgeu         tp, s0, 2306f
                  srai         s6, zero, 29
2298:             slli         s10, a1, 24
                  srl          t6, t0, t4
                  add          a2, zero, tp
                  sub          t0, a4, gp
                  andi         a7, t2, -175
                  sltu         a0, s6, ra
                  auipc        s2, 747903
                  sll          s7, zero, s2
2306:             slti         s3, s4, -204
                  sub          a7, s0, s7
                  srl          sp, s4, s5
2309:             bne          zero, s0, 2321f
                  xor          a7, s2, s0
                  bge          s8, sp, 2321f
2312:             blt          zero, s4, 2325f
                  slt          a5, t3, s1
                  srli         a0, a1, 4
                  addi         t0, s3, 1528
                  sra          a1, t5, s5
                  bge          gp, t4, 2320f
                  slt          s0, t4, a1
                  sll          t4, s1, a1
2320:             srai         a2, s3, 30
2321:             sll          s2, s9, a2
                  lui          s3, 467494
                  ori          t3, s0, -427
                  andi         sp, s7, -368
2325:             slli         a6, gp, 7
                  add          s8, t3, zero
                  srli         a0, s4, 2
                  slli         a0, s2, 3
                  and          a0, s0, t0
                  bge          t4, s2, 2341f
                  lui          s7, 908789
                  xor          t4, s11, a4
                  slli         sp, a0, 10
                  slli         a5, t1, 13
                  xor          a0, gp, a7
                  bltu         a2, t4, 2341f
                  andi         ra, t0, 1248
                  srai         tp, s5, 0
                  bne          t0, t6, 2359f
                  srli         a6, a4, 30
2341:             srl          tp, t5, a5
                  sra          a4, a5, s11
                  srai         s3, a1, 27
                  sltiu        a7, a7, -1894
                  slti         sp, gp, -1680
                  addi         t2, ra, -836
                  sub          s7, tp, tp
                  add          s6, t2, a5
                  addi         s10, a2, -1358
                  nop
                  lui          tp, 600708
                  sltu         t6, s11, s4
                  srai         a7, s0, 13
                  sub          tp, t2, s6
                  slli         s11, t3, 21
                  bge          s0, a5, 2363f
                  bltu         a6, a0, 2371f
                  bltu         s9, t3, 2373f
2359:             sll          a0, s9, s8
                  addi         t6, sp, 1728
                  slti         s0, t1, 971
                  bltu         a6, a7, 2369f
2363:             bltu         s6, t1, 2383f
                  xori         s8, s9, -272
                  bgeu         s11, a1, 2371f
                  add          a0, t4, t0
                  slt          t0, s4, t3
                  or           s10, t3, s8
2369:             xori         t2, s7, -1972
                  ori          a6, t6, -381
2371:             add          a7, tp, s6
                  ori          a5, s0, 711
2373:             blt          t5, a4, 2379f
                  bgeu         s3, ra, 2385f
                  sra          ra, a1, s3
                  bltu         a3, t6, 2388f
                  bltu         t4, gp, 2397f
                  sltiu        s2, s0, 1211
2379:             srai         s3, s9, 22
                  srli         t6, a3, 2
                  addi         a7, a5, -880
                  sltiu        s2, a2, -1475
2383:             or           t4, s3, a1
                  bgeu         s8, a4, 2389f
2385:             and          t6, s2, t5
                  lui          t0, 415962
                  slli         a0, a2, 9
2388:             slt          s7, a1, a2
2389:             ori          t0, s7, 1037
                  beq          a5, s0, 2403f
                  slti         s7, s5, -118
                  sll          s2, ra, s9
                  slli         t0, s6, 10
                  bge          a1, tp, 2402f
                  srai         s11, zero, 24
                  nop
2397:             sra          s8, zero, s3
                  bltu         ra, s8, 2409f
                  or           s2, s8, s4
                  bgeu         s11, t1, 2405f
                  sra          zero, a2, s10
2402:             sltiu        a7, a1, 1539
2403:             sltiu        ra, s8, -2027
                  bltu         a2, zero, 2414f
2405:             sll          s9, s7, s4
                  srl          s7, s8, s1
                  bge          zero, s10, 2413f
                  and          t2, a1, a6
2409:             sra          ra, sp, a1
                  blt          s9, sp, 2425f
                  bge          a7, t6, 2417f
                  slt          s0, t1, a2
2413:             bltu         s0, s2, 2420f
2414:             bge          ra, gp, 2421f
                  ori          s10, t5, -253
                  and          a4, a1, s1
2417:             ori          s9, s10, -905
                  xor          s8, a7, s2
                  bgeu         t4, t4, 2428f
2420:             addi         s9, a0, -1396
2421:             xor          s1, s6, a1
                  sltiu        s3, t2, -599
                  beq          gp, s1, 2433f
                  sll          s6, a1, s1
2425:             srai         a6, s3, 25
                  srli         s9, t2, 24
                  slt          s10, gp, s3
2428:             add          s9, a7, a5
                  sra          sp, a1, sp
                  slt          s6, a6, a0
                  sll          s7, s11, t2
                  beq          s10, a1, 2437f
2433:             sltu         zero, s4, ra
                  bltu         s2, s3, 2444f
                  bltu         a2, t2, 2447f
                  srli         s8, a5, 7
2437:             sltiu        a3, s0, -1677
                  slli         t3, s4, 18
                  ori          a5, t1, -381
                  and          s9, s1, a4
                  sub          s6, s7, s2
                  nop
                  sub          ra, zero, s4
2444:             sub          s3, gp, t3
                  srai         t1, a2, 31
                  srli         a4, t4, 4
2447:             srli         s0, a7, 23
                  auipc        s9, 191685
                  ori          s10, s11, 1624
                  bne          s6, t0, 2456f
                  xori         t3, gp, 967
                  sra          s6, s2, s2
                  bgeu         a4, s2, 2461f
                  nop
                  lui          a5, 656018
2456:             slti         sp, s4, -786
                  andi         s2, tp, -1457
                  slli         s8, s2, 13
                  slli         s2, s11, 29
                  bne          a1, t5, 2470f
2461:             slli         a4, s5, 22
                  or           t1, s1, t6
                  xori         s3, a4, -527
                  auipc        s11, 155433
                  and          a3, t0, s8
                  xori         a5, t1, -56
                  and          tp, s5, t0
                  auipc        t1, 197671
                  bltu         s0, tp, 2474f
2470:             addi         a6, a6, 1114
                  xori         t6, a0, -992
                  or           s1, s4, a5
                  bne          a4, ra, 2477f
2474:             andi         a7, s6, -527
                  lui          t3, 471108
                  add          a6, a4, t6
2477:             slt          t0, s6, s11
                  lw           ra, 4(t5)
                  sll          zero, s9, s1
                  addi         t5, t5, 24
                  sll          s8, s6, s1
                  andi         tp, s4, 518
                  srli         s9, s3, 20
                  addi         tp, s4, 388
                  slli         t1, a1, 16
                  slli         s1, t3, 27
                  srl          a0, t4, s0
3582:             addi x3, x1, 1
3582:             jalr x3, x3, 0
sub_1:            bne          a4, sp, sub_1_stack_p
                  sltiu        s0, sp, -824
                  auipc        a0, 748797
sub_1_stack_p:    addi         t5, t5, -12
                  sw           ra, 4(t5)
                  xor          sp, s10, s10
                  xori         a0, t1, -1665
                  sub          s11, t0, s11
                  slli         t6, s10, 7
                  or           sp, a3, a7
                  andi         s6, s1, -1723
                  ori          a5, t0, -1875
                  srai         t3, a6, 5
                  bge          s3, t5, 9f
                  bne          s2, t6, 9f
9:                add          t4, a4, t6
                  lw           ra, 4(t5)
                  xor          a3, s5, s0
                  slti         sp, t1, 442
                  add          sp, a2, s9
                  sll          a7, a5, zero
                  addi         t5, t5, 12
                  slli         s7, s11, 20
                  slt          s10, a1, s7
24:               addi x27, x1, 0
24:               jalr x27, x27, 0
sub_2:            sltiu        a2, s4, -1810
                  addi         t5, t5, -20
                  slt          a6, a7, a3
                  sra          t1, s0, tp
                  andi         t4, t3, 802
                  sw           ra, 4(t5)
                  and          a4, a3, s4
                  nop
sub_2_0:          jal          ra, 11f
0:                jal          t1, 6f
1:                jal          t1, 2f
2:                jal          ra, 17f
3:                jal          ra, 18f
4:                jal          t1, 9f
5:                jal          ra, 1b
6:                jal          ra, 19f
7:                jal          t2, 0b
8:                jal          ra, 5b
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 14f
12:               jal          ra, 20f
13:               jal          ra, 4b
14:               jal          a7, 3b
15:               jal          ra, 12b
16:               jal          t1, 13b
17:               jal          a4, 15b
18:               jal          ra, 7b
19:               jal          ra, 16b
20:               srai         s1, s8, 28
sub_2_2:          jal          ra, 5f
0:                jal          t1, 3f
1:                jal          ra, 24f
2:                jal          t1, 8f
3:                jal          gp, 19f
4:                jal          ra, 20f
5:                jal          s8, 13f
6:                jal          s2, 9f
7:                jal          s8, 21f
8:                jal          a1, 11f
9:                jal          a2, 17f
10:               jal          ra, 6b
11:               jal          a7, 10b
12:               jal          t1, 4b
13:               jal          gp, 7b
14:               jal          t1, 0b
15:               jal          t4, 22f
16:               jal          ra, 12b
17:               jal          t1, 18f
18:               jal          sp, 23f
19:               jal          s3, 1b
20:               jal          s2, 2b
21:               jal          ra, 16b
22:               jal          t1, 14b
23:               jal          ra, 15b
24:               jal          sp, 25f
25:               srl          a6, a3, s5
sub_2_1:          jal          ra, 0f
0:                jal          t1, 3f
1:                jal          t1, 5f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          a2, 2b
6:                jal          gp, 1b
7:                jal          gp, 6b
8:                jal          t0, 4b
9:                jal          ra, 8b
10:               or           s2, s10, t0
sub_2_3:          jal          ra, 6f
0:                jal          ra, 1f
1:                jal          ra, 15f
2:                jal          s0, 10f
3:                jal          ra, 12f
4:                jal          t1, 3b
5:                jal          ra, 8f
6:                jal          s1, 9f
7:                jal          s9, 14f
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          ra, 4b
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          t1, 5b
14:               jal          sp, 13b
15:               nop
                  add          s3, a7, s4
                  srl          a1, a3, s2
                  xor          zero, s1, s6
                  slti         a7, s7, 1133
                  nop
                  bgeu         ra, t1, 20f
                  sltiu        gp, gp, -1447
                  xor          a0, s3, s7
                  bgeu         s1, zero, 16f
                  nop
                  sra          t0, s11, s6
                  bne          s10, s2, 23f
                  bltu         zero, s6, 14f
                  sll          t1, a4, t0
14:               sltiu        t0, s8, -354
                  sll          ra, s0, s0
16:               auipc        sp, 341951
                  srl          a4, tp, s6
                  sll          a7, zero, s4
                  add          a2, s0, t2
20:               srl          a3, s2, s10
                  nop
                  and          t1, s4, s10
23:               bne          s4, t4, 30f
                  srl          t3, t3, a4
                  bltu         a5, s8, 27f
                  slli         t2, t4, 7
27:               blt          a4, t6, 47f
                  bge          s5, s9, 41f
                  sub          s11, a3, a1
30:               srai         t4, t3, 19
                  srli         t4, t5, 27
                  slt          s7, t6, t3
                  lui          a0, 138554
                  bne          s2, t0, 37f
                  sub          sp, t3, t6
                  sub          s3, gp, s10
37:               or           a3, a2, t4
                  sltiu        a2, tp, 1685
                  xor          s11, a3, a5
                  lui          zero, 448226
41:               andi         a3, a1, 1316
                  or           a1, a0, s0
                  auipc        a1, 238383
                  srai         s0, s10, 21
                  bge          s8, s8, 50f
                  bge          a6, t0, 57f
47:               srl          a1, s4, t6
                  srai         s1, s1, 5
                  or           a4, s0, s9
50:               blt          t5, s11, 63f
                  andi         s0, a7, 1184
                  beq          a2, s5, 55f
                  auipc        s11, 703315
                  bne          s10, s2, 74f
55:               sltiu        s10, s0, 1410
                  sltiu        a0, sp, -1738
57:               xor          t4, s7, tp
                  srl          a7, t6, s9
                  srai         s3, a0, 26
                  nop
                  sltiu        s10, a4, -336
                  xori         a7, a2, -1274
63:               andi         t2, s0, 243
                  add          s6, s1, t4
                  slli         t4, t5, 15
                  slli         a4, s9, 10
                  bgeu         s6, s8, 82f
                  sll          gp, s8, a3
                  srl          zero, s10, ra
                  sub          s11, t5, gp
                  addi         s11, a2, -984
                  lui          s7, 442329
                  add          t3, t2, s6
74:               srai         t1, t1, 1
                  sra          t3, s5, a7
                  sub          a7, a2, a2
                  ori          s8, s4, 975
                  xori         s8, s7, 1712
                  andi         s7, s7, -1220
                  srli         t4, t0, 24
                  and          s6, s0, s3
82:               add          sp, a6, s6
                  bne          tp, s5, 101f
                  andi         a3, s6, 373
                  srli         s2, gp, 29
                  bne          a3, tp, 90f
                  sub          s3, t4, a0
                  bne          s3, s2, 99f
                  slli         s2, tp, 31
90:               or           zero, s0, gp
                  bltu         zero, gp, 111f
                  and          tp, a3, t0
                  srai         sp, s7, 19
                  slli         a2, s0, 26
                  lui          s11, 114307
                  srai         gp, t6, 26
                  srl          sp, s3, t0
                  bge          s1, a0, 115f
99:               lui          a4, 382482
                  srl          ra, a0, s4
101:              sll          s9, a4, s7
                  lui          s11, 198916
                  bltu         a4, s5, 109f
                  sltiu        a0, a3, -515
                  xor          a6, s2, sp
                  srl          zero, gp, sp
                  beq          s2, s1, 119f
                  bltu         a7, s1, 115f
109:              bltu         zero, t1, 123f
                  addi         s9, sp, 1047
111:              blt          s3, s3, 128f
                  xor          s9, s0, s0
                  beq          s0, s7, 118f
                  sltu         a0, a1, a1
115:              sra          a0, a3, s2
                  auipc        a7, 532706
                  and          s3, tp, t5
118:              bgeu         a6, a2, 137f
119:              beq          s5, s7, 134f
                  auipc        s11, 391623
                  bltu         s8, s10, 125f
                  sub          t2, tp, s11
123:              lui          gp, 239933
                  bltu         s0, s9, 125f
125:              sltiu        s9, ra, 1468
                  auipc        a3, 574440
                  slt          a6, sp, zero
128:              addi         t1, s1, 455
                  lui          a6, 682979
                  auipc        a5, 562967
                  sra          t2, s1, s4
                  addi         s6, s6, -18
                  srli         a2, ra, 11
134:              bgeu         t1, s1, 135f
135:              andi         a0, t2, -231
                  add          a0, t3, t4
137:              blt          s8, a2, 139f
                  or           s8, a3, t6
139:              bgeu         t3, t2, 159f
                  bne          t6, s10, 158f
                  blt          s6, t3, 156f
                  xori         a4, s3, -164
                  bne          s8, t1, 148f
                  sra          t1, a6, t6
                  bltu         s2, a3, 165f
                  xori         a4, s4, 1405
                  xori         a2, sp, -163
148:              bne          s9, sp, 151f
                  ori          s2, s2, 1021
                  addi         t3, s3, 222
151:              srl          s3, sp, s9
                  auipc        s6, 850104
                  sra          a2, ra, sp
                  nop
                  bltu         s1, ra, 172f
156:              nop
                  bltu         a7, sp, 161f
158:              addi         a1, s5, 641
159:              srai         a4, s3, 9
                  srai         s11, a4, 17
161:              srai         s2, a6, 16
                  xor          s7, ra, s0
                  bne          a7, t6, 170f
                  addi         s0, a7, -247
165:              srl          t1, t0, t6
                  sltiu        s0, a4, -511
                  slt          s3, a4, t5
                  slt          s1, a6, s2
                  srli         a0, s11, 31
170:              sltiu        zero, zero, -1699
                  bgeu         t1, s2, 183f
172:              slli         gp, s6, 5
                  ori          s0, s5, 425
                  sltiu        s10, gp, -2013
                  sltu         t0, a0, s7
                  and          sp, t0, a7
                  add          s7, gp, s8
                  andi         a4, a1, 1011
                  nop
                  srai         t6, t3, 13
                  bltu         s11, a6, 198f
                  nop
183:              srl          a6, t3, s8
                  xor          gp, ra, s11
                  sltiu        t2, s6, 591
                  sltiu        s0, a3, 315
                  bgeu         t1, s3, 200f
                  srli         t6, sp, 14
                  bgeu         zero, s10, 203f
                  and          zero, s2, s4
                  bltu         gp, a0, 193f
                  bltu         tp, zero, 208f
193:              beq          s8, tp, 208f
                  blt          s7, tp, 205f
                  auipc        s7, 482042
                  slt          s3, a5, s11
                  bltu         a1, a1, 208f
198:              srl          s1, a5, s9
                  blt          tp, a7, 208f
200:              srli         a7, a4, 28
                  srl          s0, a3, a1
                  slli         s3, t5, 10
203:              xori         s0, a4, 1136
                  lui          a0, 748234
205:              bltu         a7, a3, 208f
                  sll          gp, s8, ra
                  sll          t6, s1, t5
208:              add          s7, a1, a1
                  lw           ra, 4(t5)
                  srli         a5, a7, 19
                  sra          a6, ra, t6
                  srai         s7, a3, 25
                  addi         zero, t6, -372
                  srli         t4, s3, 24
                  addi         t5, t5, 20
                  slt          s1, s7, s3
                  sub          s3, s10, a5
                  lui          a3, 849440
                  xor          gp, s3, ra
306:              addi x13, x1, 1
306:              jalr x13, x13, 0
sub_4:            lui          tp, 171148
                  srli         s2, a5, 23
                  sub          zero, sp, s5
                  sll          t6, a3, t4
                  blt          s2, s8, sub_4_stack_p
                  and          s6, ra, gp
                  or           zero, s0, gp
                  slti         a4, t3, -1814
                  sll          a4, ra, t6
sub_4_stack_p:    addi         t5, t5, -52
                  sub          s11, t1, a2
                  sw           ra, 4(t5)
                  srl          a5, t1, t2
sub_4_1:          jal          ra, 16f
0:                jal          s6, 19f
1:                jal          t1, 11f
2:                jal          ra, 8f
3:                jal          a7, 18f
4:                jal          ra, 0b
5:                jal          s0, 9f
6:                jal          ra, 13f
7:                jal          t3, 5b
8:                jal          ra, 17f
9:                jal          s3, 20f
10:               jal          t2, 6b
11:               jal          ra, 21f
12:               jal          ra, 3b
13:               jal          gp, 14f
14:               jal          t1, 7b
15:               jal          ra, 1b
16:               jal          t1, 12b
17:               jal          ra, 10b
18:               jal          ra, 4b
19:               jal          s7, 2b
20:               jal          ra, 15b
21:               auipc        t0, 386442
sub_4_3:          jal          ra, 4f
0:                jal          t1, 1f
1:                jal          tp, 8f
2:                jal          sp, 3f
3:                jal          tp, 5f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          a1, 2b
9:                jal          ra, 0b
10:               jal          ra, 11f
11:               xori         a7, t6, -1916
sub_4_4:          jal          ra, 23f
0:                jal          ra, 15f
1:                jal          sp, 28f
2:                jal          ra, 27f
3:                jal          t1, 2b
4:                jal          a2, 16f
5:                jal          ra, 4b
6:                jal          t1, 0b
7:                jal          s9, 29f
8:                jal          ra, 7b
9:                jal          s0, 14f
10:               jal          ra, 13f
11:               jal          ra, 6b
12:               jal          ra, 22f
13:               jal          ra, 5b
14:               jal          t1, 11b
15:               jal          a0, 24f
16:               jal          ra, 12b
17:               jal          ra, 20f
18:               jal          ra, 19f
19:               jal          ra, 8b
20:               jal          ra, 3b
21:               jal          t1, 26f
22:               jal          ra, 18b
23:               jal          ra, 17b
24:               jal          t1, 25f
25:               jal          t1, 10b
26:               jal          t1, 1b
27:               jal          ra, 21b
28:               jal          t1, 9b
29:               slli         a7, t4, 24
sub_4_2:          jal          ra, 3f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          t1, 5f
4:                jal          t1, 14f
5:                jal          ra, 13f
6:                jal          tp, 11f
7:                jal          t6, 4b
8:                jal          s9, 16f
9:                jal          ra, 7b
10:               jal          s3, 9b
11:               jal          ra, 8b
12:               jal          ra, 15f
13:               jal          ra, 17f
14:               jal          gp, 12b
15:               jal          ra, 18f
16:               jal          t1, 0b
17:               jal          ra, 6b
18:               srl          t6, s2, s0
sub_4_0:          jal          ra, 0f
0:                jal          ra, 8f
1:                jal          s11, 3f
2:                jal          ra, 4f
3:                jal          t1, 5f
4:                jal          t1, 11f
5:                jal          ra, 7f
6:                jal          ra, 1b
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          t1, 6b
10:               jal          t1, 9b
11:               ori          t6, zero, 735
                  xor          s0, a7, t1
                  sltiu        s0, t4, -514
                  slli         s6, s9, 1
                  bge          a5, s4, 5f
                  and          a5, a2, tp
5:                bltu         s0, s10, 14f
                  bgeu         s2, s8, 20f
                  and          a2, s8, t6
                  ori          zero, sp, -20
                  srli         a5, t2, 21
                  sltu         a1, a7, tp
                  beq          s7, zero, 30f
                  sub          a6, t0, a2
                  nop
14:               andi         s9, s4, 302
                  srli         t6, zero, 2
                  lui          t4, 87998
                  slli         s7, sp, 1
                  nop
                  auipc        t3, 431235
20:               add          ra, t5, s2
                  slti         a2, s8, 914
                  slt          t2, s9, s5
                  beq          s11, tp, 31f
                  xor          tp, a7, a2
                  bltu         zero, s9, 34f
                  blt          t5, s10, 33f
                  and          t3, t5, s9
                  bltu         a3, a5, 35f
                  bne          t6, t3, 32f
30:               xor          s1, t0, a5
31:               nop
32:               slti         tp, ra, 997
33:               xor          s8, s11, t4
34:               bltu         s11, a1, 43f
35:               blt          a5, t1, 48f
                  xori         t2, a1, -260
                  xor          s9, t5, a6
                  and          tp, a7, s4
                  bltu         gp, s4, 47f
                  lui          s11, 841469
                  bne          s8, sp, 44f
                  auipc        s6, 856442
43:               beq          s6, t2, 55f
44:               sub          s6, t6, s7
                  bne          s6, s8, 47f
                  bgeu         tp, t5, 60f
47:               ori          a0, s8, -641
48:               bne          s6, s2, 65f
                  xor          t0, t6, tp
                  bgeu         t0, s8, 69f
                  and          t2, s8, a2
                  bltu         s11, t3, 56f
                  addi         t4, sp, -1353
                  bgeu         t4, a4, 56f
55:               slti         a3, sp, -1626
56:               sll          s0, sp, s6
                  sub          a4, s4, t4
                  sra          zero, t5, t3
                  bne          zero, s0, 79f
60:               bgeu         t4, s7, 65f
                  bne          s7, a6, 77f
                  lui          s8, 339415
                  slli         s10, t1, 3
                  and          tp, s7, a6
65:               ori          t1, s3, 2041
                  sra          t6, ra, a6
                  slli         t6, t4, 13
                  bltu         a6, s8, 79f
69:               srl          zero, a5, s5
                  andi         s8, ra, 1305
                  bne          s6, s4, 74f
                  add          s9, s6, a3
                  slt          a7, a1, s11
74:               xor          a4, a3, s11
                  xori         t1, a3, 800
                  and          s2, a5, s10
77:               bge          s3, t1, 88f
                  bge          s0, ra, 87f
79:               auipc        a2, 485235
                  nop
                  bltu         tp, t3, 92f
                  bge          t3, s4, 99f
                  lui          t4, 1025293
                  bne          zero, a5, 102f
                  auipc        s11, 603367
                  add          a6, a4, s6
87:               srli         a4, a3, 3
88:               sltu         a7, a1, s1
                  addi         gp, t5, 1107
                  xori         s9, s9, -496
                  sltu         ra, s9, a4
92:               srai         s7, a4, 24
                  bne          s4, s8, 98f
                  lui          s6, 6187
                  bgeu         s6, s11, 109f
                  slti         a2, a1, -367
                  add          t1, a2, s9
98:               slli         gp, s8, 24
99:               add          s10, t3, s5
                  bltu         s10, a7, 116f
                  bge          gp, t3, 119f
102:              slli         s3, sp, 6
                  srli         s10, tp, 8
                  add          ra, gp, t4
                  sra          a6, s0, a4
                  beq          s1, t6, 113f
                  srai         a3, t6, 18
                  bge          a4, t1, 117f
109:              xori         sp, s6, 1248
                  or           sp, t4, s9
                  and          s7, t1, a2
                  srai         a5, s0, 25
113:              bge          t4, t0, 124f
                  srl          ra, t3, s11
                  sltiu        a0, ra, -537
116:              nop
117:              addi         s0, a6, -240
                  lui          s11, 923037
119:              blt          s1, t0, 126f
                  bltu         a2, s6, 137f
                  ori          s9, a7, -1261
                  sub          a6, a7, s11
                  andi         t4, s1, -831
124:              bltu         s3, a6, 136f
                  bgeu         s11, t4, 128f
126:              lui          s2, 451444
                  srai         tp, s2, 30
128:              sub          t6, t1, ra
                  bgeu         a6, a7, 131f
                  ori          s6, t2, 1730
131:              and          tp, t4, a1
                  ori          s9, s2, 65
                  sltu         ra, s5, a4
                  bgeu         s8, t5, 142f
                  or           a6, t0, s5
136:              srli         s1, a5, 21
137:              xor          a5, s3, a6
                  sra          t2, t0, t4
                  srl          a0, zero, a6
                  auipc        a5, 429167
                  beq          zero, a3, 161f
142:              nop
                  auipc        a2, 537698
                  addi         a6, s1, 1755
                  sra          a3, t1, t3
                  nop
                  sub          ra, s7, s1
                  bltu         t5, s3, 157f
                  sltu         t1, t2, t6
                  slt          a5, s0, t3
                  ori          s7, s4, -1110
                  srai         a5, t2, 7
                  sltiu        t1, s6, 1703
                  xor          t6, a1, s0
                  bne          t3, a2, 174f
                  bne          tp, s0, 160f
157:              xori         s1, a5, -990
                  sra          s2, a6, s3
                  sltu         t3, t4, s5
160:              bne          t1, a0, 171f
161:              ori          t2, s11, -38
                  xori         t1, sp, 356
                  addi         t1, t6, -1966
                  blt          s1, s11, 172f
                  bgeu         zero, s2, 176f
                  slli         s7, a4, 1
                  sltu         sp, t4, s5
                  sll          t2, t4, s9
                  srli         s0, a3, 23
                  srai         gp, s4, 29
171:              sll          s9, s7, s1
172:              ori          t3, a3, -2047
                  slti         s8, s2, -2019
174:              lui          s9, 960051
                  srai         a2, gp, 19
176:              sra          s2, tp, s7
                  add          s6, s10, s8
                  bltu         t5, t3, 181f
                  sra          s7, s7, a7
                  slt          s7, a3, s9
181:              beq          a6, a6, 200f
                  xor          a5, s1, t1
                  lui          s7, 374061
                  bgeu         a5, a3, 186f
                  blt          s2, a7, 198f
186:              srai         t3, t3, 0
                  bgeu         a5, t5, 189f
                  andi         zero, zero, 406
189:              sltu         t1, t2, s5
                  andi         t6, s11, 1763
                  slt          ra, tp, tp
                  slt          s2, t1, t5
                  xori         t3, s10, -849
                  nop
                  bne          s9, s1, 212f
                  bne          s9, t2, 199f
                  srl          s9, s8, t6
198:              bne          s11, t1, 212f
199:              slti         s1, a6, -2023
200:              or           a5, tp, s6
                  bltu         a1, s6, 210f
                  or           s1, zero, t4
                  slli         tp, s1, 7
                  and          a7, a0, a1
                  and          s9, s5, a3
                  sra          s7, s6, a6
                  srai         a7, s4, 0
                  bgeu         s6, s2, 217f
                  xor          s2, ra, gp
210:              bgeu         a4, t1, 227f
                  auipc        s8, 1021562
212:              bge          tp, t5, 217f
                  slti         a1, s1, -1301
                  blt          t1, tp, 227f
                  sub          s0, t6, a7
                  beq          s1, a0, 235f
217:              xor          t0, a7, a6
                  bgeu         s0, s7, 230f
                  bne          s2, s8, 237f
                  lui          t0, 968440
                  bgeu         s3, s9, 230f
                  bge          s11, s11, 236f
                  addi         s1, t1, -1311
                  nop
                  sra          a5, s6, t6
                  srli         s0, a4, 3
227:              and          zero, a0, a3
                  sub          a2, s5, a2
                  slt          a6, tp, a1
230:              andi         a0, a0, 395
                  lui          s2, 985801
                  bge          a5, a3, 239f
                  nop
                  sra          s6, t1, ra
235:              lui          a4, 50097
236:              sub          a4, gp, t6
237:              slt          s9, gp, t2
                  xori         tp, ra, -323
239:              slli         t6, a4, 19
                  blt          s8, s4, 247f
                  xori         s8, t6, -160
                  or           a4, a6, t1
                  add          sp, a4, a2
                  blt          tp, s6, 246f
                  or           s9, s9, tp
246:              srl          ra, s4, t4
247:              blt          a4, sp, 256f
                  sltiu        s6, s2, -577
                  srli         gp, s8, 20
                  srl          s6, zero, a0
                  sra          sp, t6, s9
                  srli         s1, s10, 4
                  srli         s0, sp, 17
                  srl          s1, s10, s7
                  sll          s6, t2, t6
256:              srai         t0, a5, 21
                  nop
                  sra          a0, t4, gp
                  lw           ra, 4(t5)
                  lui          s7, 1018279
                  addi         t5, t5, 52
                  auipc        t6, 847341
                  lui          t1, 528718
                  sra          t3, a4, t4
                  add          t2, ra, s0
                  sltu         s7, gp, s1
380:              addi x28, x1, 0
380:              jalr x28, x28, 0
sub_3:            andi         s10, a2, 315
                  and          a3, t4, s3
                  sub          sp, t1, s1
                  addi         t5, t5, -56
                  sw           ra, 4(t5)
                  lui          t6, 237623
                  add          s2, a1, t5
                  srl          s6, s9, s11
                  sub          s9, t5, s8
                  sra          s8, s7, a0
                  auipc        s7, 279288
                  lui          s2, 549984
                  sltu         gp, t4, a7
                  slt          a2, tp, s2
                  ori          a5, t5, -1015
                  sub          s8, s3, a0
                  sltu         t0, s4, gp
                  blt          s9, t2, 23f
                  andi         a4, s6, -949
                  sll          sp, tp, tp
                  sltiu        a2, a1, -1291
                  addi         s10, s2, -1011
                  sltu         s11, s5, a0
                  sltu         zero, s10, sp
                  slt          a5, s11, a0
                  sltu         s3, t2, t3
                  sub          s0, s2, a1
                  nop
                  slti         s8, s10, 851
23:               andi         s9, tp, 2032
                  xori         s7, t5, 1259
                  lw           ra, 4(t5)
                  sltu         s10, a3, s7
                  srli         t1, s11, 31
                  xor          a2, s10, ra
                  addi         t5, t5, 56
                  sra          s8, t6, a5
                  add          a2, s7, s5
                  srai         tp, s11, 21
                  auipc        t4, 560248
                  slti         s9, a6, -1879
                  ori          zero, s4, 1931
42:               addi x10, x1, 1
42:               jalr x10, x10, 0
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
.word 0x7a3a605f, 0x0dee7009, 0x8c2ff250, 0xa8eb64d6, 0x3efc418c, 0x5698210f, 0xf1ee0e55, 0x58cc41ab
.word 0x1bd92d03, 0x2185ff81, 0x76ae229c, 0x5ec606da, 0xc4807ee5, 0x47a34fcf, 0x301ce044, 0x58fbe110
.word 0x123ae415, 0x4fe78b3f, 0x842baa44, 0x11f6ec61, 0x9b49c3e0, 0x3475fbb0, 0xfadb1c76, 0x2145884a
.word 0x533103ce, 0x82421561, 0xd49ef35f, 0x865a834d, 0x2d5281ed, 0xb2269539, 0x0b0cf194, 0x729d43af
.word 0xac355beb, 0x426ebde5, 0x2bd60cd8, 0x5e917e83, 0xc5531989, 0xda9c5ff5, 0xe8a46240, 0xd72a8a39
.word 0x4294cca1, 0x024d7c29, 0xb9e80317, 0x9e775399, 0x4ca73b1b, 0xe8d4c945, 0x32fc7d53, 0x37c53485
.word 0x8bf83b3f, 0x6d3b3629, 0xe2238ad1, 0x74352cfc, 0xea3327a9, 0x503ddc6f, 0x6147accf, 0x27644e63
.word 0xd54aa8f3, 0x19afb187, 0x4ae746f4, 0x45ef7c5a, 0xb9272f43, 0x49d8effa, 0xfbc60e77, 0x65b87400
.word 0xc0da6119, 0xa836658c, 0xca14d924, 0x2da55bca, 0x85971dd3, 0x4e57d60e, 0xa7a4ec32, 0x94220aa4
.word 0x9759839e, 0x05847a2a, 0xca4282c0, 0x22c2934f, 0xcebb9695, 0xbb967511, 0xb1176e8b, 0x822a2bf0
.word 0xd3675a01, 0x9e6a377c, 0x5620f200, 0xa5b418fe, 0x7ee38bd1, 0x4ed13679, 0x789ee1ad, 0x1ef9a5bf
.word 0xbd2e95ec, 0x8ac5eb76, 0xff6e6d0b, 0x0d06be32, 0xc9818887, 0xaf7c01d3, 0x878d2e97, 0xcfbd4819
.word 0xca9d3638, 0x09de8f25, 0x1a712fa7, 0x76ecdeba, 0x7c1cff6f, 0x6df90e21, 0x896f1976, 0xcad167ed
.word 0x3a2d4020, 0x51191abf, 0x3dbc1e39, 0x102fd502, 0xa46e3efc, 0x9790cf7f, 0x2c054d42, 0x14f574a5
.word 0x7b5c71b6, 0xc537cbff, 0xa4e18f25, 0x31ae0407, 0x90efc920, 0xf679b419, 0xb3f75b91, 0xac45ed45
.word 0xe7c788e7, 0x40ce37d0, 0x890ec66e, 0x5a5bdafe, 0x5046e720, 0x4978ea4d, 0x058dee83, 0x167b760a
.word 0x6136d786, 0x4974cfef, 0x9c3b87ed, 0x331acf23, 0xf5fecbca, 0x614d0f24, 0x4bfe9904, 0xcaa2b33d
.word 0x8df71e79, 0x22ed885c, 0x399a42f1, 0x15c4152a, 0xb6f25836, 0x5cdb371a, 0x5ed25a8c, 0x5bb0e428
.word 0x86f8736d, 0x065a0b4b, 0x93a9aa60, 0xe1bea4b9, 0xb2a361bc, 0xc778e2f0, 0x23640523, 0x87f2ea4c
.word 0xa37a504e, 0x227ecb16, 0x290e4c14, 0xcc379849, 0x89e3f650, 0x5c40262d, 0x26896143, 0xbfb9393e
.word 0x0407b5a2, 0xdfcc9e36, 0xf148e161, 0x227f6a15, 0x6b28dc27, 0x12abb44f, 0xb0218124, 0xe386424a
.word 0x01d87397, 0x03ebc8c7, 0xae4b4d39, 0xc58970e9, 0x77877d89, 0x40dcdd20, 0x233d29db, 0x774e93f5
.word 0xc145e2e1, 0x3b5d79ec, 0xfcc11eef, 0x35d3e02a, 0x37dda7d3, 0x1db5be65, 0x600bc31b, 0x2bd592a2
.word 0xc17952eb, 0x40097f72, 0xc33c3ef6, 0x0c11ee17, 0x9dc5af58, 0x10237431, 0x72018a35, 0x59dec978
.word 0x5e2e8503, 0xf10463e2, 0x2aed6550, 0xae323868, 0xc30d7eed, 0x86666fc3, 0x722c7e9c, 0x403bf0f9
.word 0x8c71bbe0, 0xb872fcd8, 0x1b51070b, 0x96bcae22, 0xc1f14ef0, 0xf9b1e741, 0xbcdb5381, 0x8891a313
.word 0xedc78a7a, 0xad4be6d4, 0xb5452910, 0xb4b9214b, 0xef185001, 0x8b0e3124, 0xc11ad867, 0x27df6a14
.word 0x418266d8, 0xb09c16c8, 0x8e69aff5, 0x4474058b, 0x1d9ef1ff, 0x94f40088, 0x8d2f4375, 0x56795ed1
.word 0x0e7ad514, 0x04211334, 0xcbc49470, 0x998f77ed, 0xca5acce7, 0x52ce91b4, 0x2ebe45a5, 0x19fe9a45
.word 0x429a4f3e, 0x6934a9f0, 0xea38f9f4, 0x4a289c1a, 0x5c1416e9, 0x9ff27d2c, 0xcdcf7e23, 0x9bce0f84
.word 0xb6e43d95, 0x38e3b1dc, 0xcde6b6b9, 0xf0246712, 0x1a6fd59f, 0x9ddf797d, 0x97dc04f9, 0xef01ac0e
.word 0x4a29b7fb, 0x656e597d, 0x8018acb2, 0x0964b95c, 0x97b11691, 0x36b1b71f, 0x17d68dca, 0x0853bbf9
.word 0xd434f177, 0xb6c14b5d, 0xc781e965, 0xac0d1cbd, 0x966563a4, 0x7bda3074, 0xc99a4237, 0x7a55050e
.word 0x6370795c, 0x586db0a6, 0xa65d8211, 0x7abae492, 0xa0a65cd8, 0xf67830ee, 0x5465ff4a, 0x0f52e8b2
.word 0xbf5993b0, 0x51f92b94, 0xd0f2fa75, 0x4ec3de35, 0x655ab998, 0x485a9bf5, 0xb59383ef, 0xc27acd44
.word 0x670c5de5, 0xc66ccf79, 0x9d787663, 0x41cda5dd, 0x53f1a5ca, 0x3fb97a68, 0x25a5f23a, 0xfac9080b
.word 0x689142c8, 0x52dfcf98, 0x21202d37, 0xf5b6e227, 0x0e4adac4, 0xe2df46b8, 0x9d3ec01a, 0x12593b0f
.word 0x31141a11, 0x184fe141, 0xc68bc62a, 0xf6aa8687, 0x0d7c26c9, 0x67ddd400, 0xa31818ed, 0x3c7c3ae5
.word 0x461fc114, 0xcfb4039d, 0xa73b7241, 0x377e4666, 0xdc5e6a99, 0xbb3f2e85, 0x53889e58, 0xe65c2017
.word 0xfa8efd58, 0xf93be748, 0x5e1064cd, 0x143c1aa5, 0xacd5806c, 0x49793481, 0x67dcfe23, 0x4f4b5876
.word 0xa4e1ef64, 0x823a1189, 0x18971de3, 0x28ff3afa, 0xd17ac453, 0x84c34747, 0x3f34ba9c, 0x8bbeda90
.word 0x3b102f8f, 0x54a8a5f1, 0xf45ae2de, 0xd45fe223, 0xf428986d, 0x83907e3e, 0x3b31593f, 0x78f5be15
.word 0x9d0eefbf, 0x6e8346dc, 0x291998ab, 0x87e79cb5, 0x203c370b, 0x6f74f820, 0x0153cbbc, 0xd91098b2
.word 0x947c79cf, 0x9200a7c1, 0xf72ee97b, 0xd22b97ff, 0x9277b42a, 0x57ae2163, 0x781be195, 0x519b9ecd
.word 0xd79eeecd, 0xfc32a181, 0xc689a6d8, 0xa6ee3ce4, 0x5e86036f, 0x62f92d75, 0x76c0044e, 0xd6c773a8
.word 0x837cfe03, 0x5800a1f7, 0xb19206a3, 0x12a7104f, 0x83c18394, 0xb547a2f9, 0x151fd321, 0x91e66f44
.word 0xc1fd8fa0, 0x5cafc7ed, 0x336c72e1, 0x3286bf88, 0x896f2ea4, 0x1101346a, 0x86b297b5, 0x1e297452
.word 0xf56b9d1a, 0xf3911274, 0x67449df7, 0x69c3ce8c, 0x269fbc84, 0x058b3141, 0xab5bc26e, 0xbe577a0a
.word 0x95d05a13, 0xfea50008, 0x75f134b9, 0x6f70caa9, 0xab65af5e, 0xee17c7ac, 0x5c4fa7d6, 0xde000288
.word 0x5cb3c921, 0x7352c2b3, 0xd626f1ea, 0x7fd4f11f, 0x75217e68, 0x2e8ffef8, 0x5f7860d1, 0x283239cf
.word 0x1017203d, 0x77e6267c, 0x6f661ec0, 0x9bad3642, 0xde48ec10, 0xcef7f70a, 0xdffe4359, 0x1f2d950a
.word 0xf3a42dbb, 0x71c02ffa, 0xcb9fe9e6, 0x73540ea4, 0xc381d148, 0xde6dec56, 0x4f644316, 0x2011e4d0
.word 0x86dd1a62, 0xbc981746, 0x68c977d4, 0x2f9291cf, 0x8d61756a, 0x37aa8fd3, 0x2a2a7a84, 0xc6412289
.word 0x6945a89b, 0xe358eca7, 0xa675cc63, 0x1cc7b330, 0xc05ba554, 0x49669ee0, 0xf08ce865, 0xdf954719
.word 0xd4a271ef, 0x0341f4e8, 0x1333a42d, 0x6012a640, 0x9a2ed0be, 0xfc79fb3f, 0x313baf6b, 0x5beced8b
.word 0x690e2ee0, 0x5abd1ac7, 0xe9e2b0a7, 0x9450abc5, 0xf4cd952d, 0xb40b322a, 0x8a329a44, 0xab386519
.word 0xf367425b, 0x07a76585, 0x63c4603e, 0x92aa7549, 0x620344e6, 0xa8ebc8a6, 0x1ed4c8f5, 0x50cfcd5f
.word 0x0564ef2c, 0x4f989454, 0xe2090275, 0x5ce98869, 0x60d500a5, 0x0dab4f45, 0x3ed35867, 0x28926cc3
.word 0xb9722834, 0xf042f8f9, 0xedfc8816, 0x78d5bcf7, 0xf11f1bde, 0x918a0ef4, 0x0496d922, 0xe3dd9178
.word 0x698dd31a, 0x94761e20, 0x1b36bb26, 0x01a8ec38, 0x0d89fd9b, 0xd3a49175, 0x6871de7a, 0x3717425c
.word 0xce99cf61, 0x1735c475, 0x44ce2db6, 0xe1dd1562, 0x8063dfc8, 0xb3df67fa, 0x078ed3da, 0x152c0d0b
.word 0x3d7204e0, 0x38e546d2, 0x61e75899, 0x7759c3f3, 0x8ad640aa, 0x7f35cbb3, 0x3fac3c14, 0x566d3612
.word 0x053f39b1, 0xb7395ffe, 0x2bc18ce6, 0x88456c5b
.section .region_1,"aw",@progbits;
region_1:
.word 0x44d31a41, 0xbc06061f, 0x9a1dcdba, 0xb6d96865, 0x2d857e05, 0x04c9b47f, 0x7952ebfd, 0xe78836b3
.word 0x62d3cba3, 0x8bd0f391, 0xfa52c70d, 0x1c9a1b12, 0x277bbf87, 0xa40dd5c2, 0x99cf43e0, 0x4c5b907c
.word 0x1f8eb0d5, 0x0a5c3ffb, 0x950085b6, 0x686a310e, 0x88344ae0, 0xd151a704, 0xadd0cb41, 0x11d355a3
.word 0xf639ae07, 0x97e321a7, 0x8a26b60e, 0xb08b71d7, 0xc49e7102, 0x104f9f1b, 0x96d1625b, 0x257307ab
.word 0x00d5900b, 0x200da388, 0xfb7a4976, 0xb0c57d90, 0x93e75363, 0x74d753a1, 0x9f89f223, 0xc2730c48
.word 0x703a60be, 0x97ec8ebb, 0xdf6d4f89, 0x6f35cb62, 0x2dd3eeef, 0xbf01dd00, 0xf36bb760, 0x8e998810
.word 0x9d28e560, 0xc344a550, 0xbf2d3cff, 0x159e855f, 0x3fd09a54, 0x5817d55c, 0xb2b81e6f, 0xeb746da0
.word 0x91ad0025, 0x6b480cd8, 0x4a5cb359, 0x78c43b42, 0x72f5ee9f, 0xd451cbd1, 0xe68ebab4, 0x2ef77895
.word 0x47d9974b, 0x8fc21287, 0x03ce66ff, 0xaeb114a8, 0xa4746b27, 0x833f92c4, 0xe196ca39, 0x67fd15a9
.word 0x3a39674f, 0x84ca84fb, 0xfea42fbb, 0xedc2fc83, 0x8495a10b, 0x2e5fb7e4, 0x11b58dd6, 0x53e81a58
.word 0x91945ccb, 0x051b8bc7, 0x5861c208, 0x6593847f, 0xa3ceb77d, 0x5cdd116a, 0x8ea080d0, 0xc2f373f1
.word 0xd48f7348, 0x7db38c0a, 0xf5f9943c, 0x57f19950, 0x3daf1d2c, 0xf759bb68, 0xf5a84990, 0x876701f3
.word 0xb040fb0d, 0xd0883cab, 0x1c780ff9, 0x3fe747e5, 0xe40a22be, 0xe03d701e, 0x063d399e, 0xbfe33ac8
.word 0xdd56e536, 0x4881d9ed, 0x5889c1fa, 0x9434e22e, 0x04c80619, 0x9d78c528, 0xee7600b1, 0x18461640
.word 0xfb38acf6, 0xf94e75d1, 0xf14a4e32, 0xeb057773, 0xc70ad5c5, 0x2b14c77b, 0x69d3386f, 0xe95b5030
.word 0x837ed4b6, 0xa8e5a00a, 0x574947a5, 0x30713b65, 0xb541dd88, 0xd7b8e210, 0x550bb578, 0xbe4e0d59
.word 0xfbb1a054, 0x13039e4e, 0x3e4d0f0b, 0x6122c93c, 0x7647d56c, 0xaee39051, 0xf4081a57, 0x73d8d209
.word 0xf852860b, 0x6e45771e, 0x3bb2d2f1, 0x55e4c7f0, 0x6d14d96c, 0xb001dd90, 0xf3d0710d, 0x0b4c7624
.word 0x6894a61c, 0xf06d1cc0, 0x5858a01b, 0xc050cc1b, 0xeace058f, 0x818a9fb1, 0xa6dc41ed, 0x634e5834
.word 0x53d0d09c, 0x5263754e, 0xa69f337b, 0x3e566340, 0xa4460236, 0x81dcf3c2, 0xdc615666, 0x8f02a884
.word 0x2c8d68cf, 0xfead380f, 0x76cee170, 0x0464a475, 0x07d6cb9e, 0xf7a1136a, 0xcfbe6223, 0xffb8e39d
.word 0x565c813a, 0x7278ebb8, 0xe8ea26fc, 0x4b40d3d4, 0x8d25efee, 0x9c2567e8, 0xf8eae660, 0x7ecd8551
.word 0x3708bee5, 0xc6ce570e, 0x8aa526bb, 0xc1e3f0cf, 0xacb84740, 0x7abc396f, 0x5dd8c893, 0xaa129969
.word 0xc538b364, 0xb32e01c2, 0x5f130f31, 0x35bc24fc, 0x18ba15df, 0xf5ad341a, 0x384f2ebf, 0xcf5c2e32
.word 0xfd2156d4, 0xf7e7c640, 0xf5f983c4, 0x209fc57d, 0x8728e270, 0xe8f120a8, 0x41b3982d, 0x5bafe666
.word 0xde58ac9a, 0xde0e077d, 0x2f5f6fc4, 0x9e0cc31a, 0x5ae76571, 0xc5a199f7, 0x0e2aab6d, 0x239390c9
.word 0x6f6a71d0, 0x6f0f2966, 0x46222132, 0x38ad15fa, 0x5e45cf58, 0xdd17cb63, 0xf1075622, 0x42740dc2
.word 0x02a1b0b9, 0x63cf51bf, 0xf513ded9, 0x6638df19, 0xa729cafa, 0xe937d013, 0x6beb78c8, 0x398217ab
.word 0xb301d663, 0x14d73471, 0xbaf0d8b1, 0xced4b620, 0xb6e4e2ed, 0x74f2fc44, 0xba70c7e2, 0x2638110c
.word 0x27443b63, 0x3edf2afd, 0xf742902b, 0x8994c172, 0xe3600854, 0x5ba335fb, 0xa1e00168, 0xfebf7301
.word 0xccc8b452, 0xc58e1f15, 0xbb2e0996, 0x7d2bf0eb, 0x04c2d900, 0x1486ec64, 0xb8d9c4f2, 0x4025314b
.word 0x1bcc7de6, 0xb61ec411, 0x50a2f77d, 0x801a2747, 0x95d7fefa, 0x2b8f3224, 0x9bed35f8, 0xe8a6e46c
.word 0x3148ca18, 0x71c6020d, 0x3288ddc6, 0x9c0902aa, 0x500c7617, 0xe87719b4, 0x7fd4148a, 0x7536f531
.word 0xdf62a11b, 0xa5665af5, 0x941c76be, 0xafa26e94, 0x0717e56c, 0x739601cc, 0x309d6ce0, 0xbc37e7ec
.word 0x6823b8c8, 0x983f4ca5, 0x62286f74, 0xf00b35b4, 0x6451c148, 0x3a7870ce, 0x92a75597, 0x5fe7387b
.word 0x7a78e2ac, 0x61efb369, 0x87f74ebe, 0x3334714c, 0xf1c89202, 0xb2c7f841, 0xa9098931, 0x5f5562e8
.word 0x61a7e228, 0xe152a4f6, 0xbc9ce7f1, 0x84bf52d9, 0x9430eb1c, 0x2cb00d1f, 0x159353e3, 0x5e4c1a4b
.word 0x516ef6f1, 0x4ffde20e, 0x073f6f0d, 0xc8a5cab2, 0xa4ebb131, 0x77835cfd, 0x0781485a, 0x65b8a0a5
.word 0xfcd555d3, 0xae65374e, 0x00524dec, 0xe00e1969, 0x627f09a6, 0xa42a47eb, 0x19e8c8ea, 0x889f4054
.word 0xb2d6f02f, 0xa3b453fb, 0x8c5fcf64, 0x017e3d77, 0x58c34bb6, 0x88a33b73, 0x5650435f, 0x45eb16f0
.word 0x497cc565, 0xc1d1450c, 0x234c706a, 0x1b1c6fda, 0xd4401357, 0x945c2cbb, 0x4b187b10, 0x24334ede
.word 0x8fb891f5, 0x5d6c9b16, 0xc3ccfeab, 0xd61f0a38, 0xa4ccbb16, 0x73ebdaab, 0xb90356ac, 0xe72c1f56
.word 0x32b151f6, 0x41712c5f, 0xa1c1d625, 0x15914868, 0x939fd0ab, 0x8292ab97, 0x71ce5350, 0xc24dc71f
.word 0x59a3ec12, 0xb50a0989, 0xb8e9d19e, 0x233f53be, 0x86583134, 0x383a27de, 0xedaa4f68, 0xb8f6a82e
.word 0xfa9f365f, 0xcbdfd82a, 0x7e5bb470, 0xe498fd25, 0x4427ebf1, 0x7c606096, 0x20f3b022, 0x5937d82c
.word 0x5b6b5c9d, 0x8ad4c3de, 0x4f008de4, 0x5c4cf624, 0x31381507, 0xe1f5355d, 0x2869664c, 0x6b13eb3a
.word 0x004b370e, 0x7e741478, 0x8160cacc, 0xcd95d727, 0xe66e14e5, 0xa92e2267, 0x915c3eb1, 0xadc3aa5b
.word 0x75e5556c, 0x2a225183, 0x24883667, 0x0d5aa76a, 0xe8e4c487, 0xcd74ee45, 0x570c1f66, 0x751e67e5
.word 0x4c13fcd4, 0x5c6380b3, 0x87426694, 0x1b0a91d2, 0x07808f5c, 0xa92b4259, 0x9c888834, 0x93a090a4
.word 0x29dd350a, 0x69c20339, 0x7ee0dc0e, 0x41252f17, 0xc06807ce, 0xcb9a8d7f, 0x9184d2a3, 0xac037c72
.word 0xea7464ca, 0xb07f3b51, 0x48d3f1ef, 0x134fef5b, 0xb4170a0e, 0x0031c0a3, 0x7d392444, 0xfe1c587b
.word 0xa97ed4a8, 0xc1ab7648, 0x5e4d5f7b, 0x11f22382, 0x55be42f4, 0x84bc383c, 0xd648eed3, 0x5908cc04
.word 0x0d7d7a9e, 0xe6665a1b, 0x28e6a257, 0xd2417125, 0x38419851, 0x72f7247a, 0xe4de75cc, 0x8052b9f0
.word 0xb537c026, 0x70736f31, 0xe7565f8c, 0x8443aeac, 0x436be860, 0x3ef8c97e, 0x5727c877, 0x10b19714
.word 0xc53e7438, 0x63acd0a8, 0x66116252, 0x999ca438, 0x67048251, 0x45cd2a06, 0xdb7770e1, 0xa963f42e
.word 0xa7dbc111, 0x4b720428, 0x3fb3bc10, 0x8e441c49, 0xf7d8bbda, 0x1a66d208, 0x0ba58d31, 0xc2bdad7d
.word 0xb076c4f6, 0xf0cc644b, 0x94deb39f, 0xae72c1b5, 0xe110c11e, 0x67f7181d, 0xb282dbae, 0x436e2a1e
.word 0x5f9fe5dd, 0x6ae101f0, 0xc2b2facb, 0xc6dc29d2, 0x3100dadf, 0x6578d5f4, 0x15ab1c0c, 0xd9206ef8
.word 0x35e9e13d, 0x7994c8d7, 0xa824b39a, 0x574c655e, 0x2c20ab70, 0x91bd55b2, 0x33d6838b, 0x6d173fed
.word 0xb7460483, 0xb936b761, 0x4ce77e00, 0xc93b6ac2, 0xf26a951b, 0xef2c717f, 0x76ffed08, 0x9ff70bf8
.word 0xf6d9b61f, 0x4b3fdcd0, 0xf6dad846, 0x09e8d5de, 0x11a4f862, 0xfc35e23d, 0x5cba95c0, 0x966c0955
.word 0x7eea5d23, 0x1d8d8a45, 0xa19beea0, 0xb5e07ce9, 0x98693eaa, 0xae914b00, 0x90c6d249, 0x88e9bf19
.word 0xf273ada1, 0x6e8a360b, 0x95631ff5, 0x1275b9fe
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x6, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x6, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x1
                  beq x6, x24, instr_fault_handler
                  li x24, 0x5
                  beq x6, x24, load_fault_handler
                  li x24, 0x7
                  beq x6, x24, store_fault_handler
                  li x24, 0xc
                  beq x6, x24, pt_fault_handler
                  li x24, 0xd
                  beq x6, x24, pt_fault_handler
                  li x24, 0xf
                  beq x6, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
