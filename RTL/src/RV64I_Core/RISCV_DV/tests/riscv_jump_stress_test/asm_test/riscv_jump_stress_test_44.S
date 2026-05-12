.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x87722f33
                  li x2, 0x8
                  li x3, 0xcca87825
                  li x4, 0x0
                  li x5, 0xf440572f
                  li x6, 0xa31cc305
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x6
                  li x10, 0x0
                  li x11, 0xf
                  li x12, 0xf5e972ae
                  li x13, 0xf849e439
                  li x14, 0x4
                  li x15, 0xe
                  li x16, 0xf995f209
                  li x17, 0xfb8bc74d
                  li x18, 0x2
                  li x19, 0x5
                  li x20, 0x0
                  li x21, 0xf9aee18f
                  li x22, 0x0
                  li x23, 0x2
                  li x24, 0xf0b4a863
                  li x25, 0x4f42a0a4
                  li x27, 0x80000000
                  li x29, 0x906e86e6
                  li x30, 0x80000000
                  li x31, 0xf8b0833c
                  la x28, user_stack_end
main:             jal          ra, 7f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          gp, 10f
3:                jal          ra, 5f
4:                jal          t1, 3b
5:                jal          ra, 2b
6:                jal          tp, 9f
7:                jal          t1, 1b
8:                jal          ra, 0b
9:                jal          sp, 8b
10:               and          a3, tp, s6
                  andi         gp, sp, 1142
                  srl          s3, t6, gp
                  bltu         gp, t6, 14f
                  add          tp, s2, s9
                  bne          s6, s0, 5f
                  srai         a0, a5, 27
                  srli         a1, a0, 8
                  la           s7, sub_1
                  auipc        zero, 791851
                  addi         tp, sp, 578
                  sltu         zero, s5, a3
                  srai         s5, s1, 25
                  addi         s7, s7, -363
                  add          sp, tp, ra
                  auipc        ra, 677611
main_j1:          jalr         ra, s7, 363 #jump main -> sub_1
5:                and          a6, tp, tp
                  blt          a0, tp, 16f
                  slli         t1, s7, 1
                  xor          t0, s6, t0
                  or           a0, a7, t6
                  slti         t5, s9, 906
                  srl          a3, s6, t3
                  add          gp, t5, s4
                  bgeu         t1, s1, 18f
14:               auipc        s2, 101168
                  nop
16:               xori         s1, s11, 852
                  addi         s3, a2, -2029
18:               srl          t5, s9, a1
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            srli         t1, sp, 19
                  nop
                  xori         s8, a6, 917
                  auipc        a1, 961615
                  xori         zero, a0, -585
                  sltu         s4, t4, s6
                  blt          s9, t2, sub_1_stack_p
sub_1_stack_p:    addi         t3, t3, -20
                  slt          s4, s3, t6
                  sw           ra, 4(t3)
                  lui          tp, 41670
                  or           s8, t3, ra
                  add          tp, a4, t5
                  bne          tp, ra, sub_1_j2 #branch to jump instr
                  sra          ra, s9, zero
                  or           s11, t3, sp
                  slt          s6, gp, t5
                  xor          zero, s0, sp
                  ori          t0, zero, 753
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  andi         s0, s0, 656
                  slli         s4, s0, 17
                  addi         gp, a7, 1069
                  sltu         ra, s6, s8
                  xor          a3, a0, a6
                  slli         s1, t4, 16
                  sub          s1, s11, s7
                  slt          ra, a3, s10
                  andi         a0, s11, -786
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  xori         a2, sp, 776
                  ori          a3, s0, 1411
                  srl          s1, s6, t2
                  lui          zero, 739525
                  blt          s11, s8, sub_1_j4 #branch to jump instr
                  sra          a1, s8, a2
                  xor          s2, a7, a4
                  sll          s11, s4, zero
                  slt          a2, s1, s11
sub_1_j4:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srai         a3, a0, 9
                  nop
                  slt          s1, s9, a0
                  xori         zero, tp, 1802
                  addi         s0, a0, -354
                  xor          s4, a0, tp
                  bge          t1, s10, 7f
7:                and          t2, t4, tp
                  xor          s7, a0, s4
                  srai         s1, t6, 23
                  xori         a3, t5, 1601
                  srli         a5, a2, 13
                  srli         t2, a7, 7
                  srli         zero, a4, 29
                  bne          a7, t0, 33f
                  srai         t6, s6, 23
                  nop
                  xori         a0, a1, 1330
                  xori         s3, ra, 1622
                  sltiu        a6, t5, 1276
                  sltu         tp, a3, a1
                  sltu         sp, s8, a1
                  sltu         s5, t3, s0
                  srli         a5, s2, 18
                  srli         a0, t4, 14
                  andi         t5, s11, 590
                  srai         s6, s7, 31
                  slti         s0, s0, -781
                  nop
                  sltu         s3, a6, a5
                  slli         t0, t3, 13
                  lui          sp, 441216
                  srai         s3, gp, 22
33:               ori          s4, t3, -79
                  srli         sp, t6, 30
                  andi         s2, s2, 164
                  slti         a7, s7, -754
                  bne          t1, s9, 45f
                  bltu         t0, a2, 45f
                  slli         s7, a4, 6
                  slli         a6, t0, 13
                  srli         s7, s10, 22
                  auipc        a1, 281016
                  bltu         t3, s9, 45f
                  srli         s7, s1, 17
45:               xori         t2, a6, 913
                  addi         s9, t6, 1386
                  lw           ra, 4(t3)
                  auipc        a0, 291555
                  sra          s2, t5, a5
                  addi         t3, t3, 20
                  xori         s4, s9, -1375
                  xori         t5, t5, -854
                  nop
                  slt          a6, t4, t6
                  slt          t0, s7, a4
96:               addi x27, x1, 0
96:               jalr x27, x27, 0
sub_3:            auipc        a2, 710182
                  xori         tp, s4, -778
                  sll          a2, t3, a3
                  xori         t1, t3, -479
                  srl          a6, s10, a1
                  addi         t3, t3, -44
                  srli         t1, s4, 11
                  sw           ra, 4(t3)
                  ori          s4, zero, 456
                  srli         a7, t3, 22
                  slt          s2, s7, s4
                  and          a7, s6, s5
                  bgeu         t1, a1, sub_3_j6 #branch to jump instr
                  add          a2, s1, a2
                  slt          t1, tp, gp
                  srai         s5, s1, 28
                  sltiu        t5, s9, 1348
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  sltiu        a1, gp, -1204
                  slti         zero, a5, 431
                  beq          a6, ra, sub_3_j7 #branch to jump instr
                  sltu         a5, t2, a0
                  xori         s4, t0, 509
                  slli         a7, s8, 28
                  lui          a2, 707583
sub_3_j7:         jal          ra, sub_4 #jump sub_3 -> sub_4
sub_3_0:          jal          ra, 11f
0:                jal          s1, 9f
1:                jal          ra, 22f
2:                jal          ra, 29f
3:                jal          t5, 25f
4:                jal          ra, 5f
5:                jal          t1, 7f
6:                jal          ra, 4b
7:                jal          a4, 23f
8:                jal          a3, 26f
9:                jal          a4, 8b
10:               jal          s3, 14f
11:               jal          ra, 1b
12:               jal          ra, 24f
13:               jal          t0, 28f
14:               jal          ra, 19f
15:               jal          s9, 18f
16:               jal          ra, 3b
17:               jal          a6, 6b
18:               jal          ra, 17b
19:               jal          a6, 20f
20:               jal          ra, 12b
21:               jal          t5, 2b
22:               jal          ra, 10b
23:               jal          ra, 16b
24:               jal          ra, 0b
25:               jal          s4, 21b
26:               jal          ra, 13b
27:               jal          s6, 15b
28:               jal          a4, 27b
29:               nop
sub_3_2:          jal          ra, 4f
0:                jal          ra, 6f
1:                jal          t5, 7f
2:                jal          ra, 12f
3:                jal          a2, 0b
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          t0, 1b
7:                jal          s3, 10f
8:                jal          ra, 3b
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          tp, 5b
13:               jal          t1, 14f
14:               andi         zero, s3, 1601
sub_3_3:          jal          ra, 2f
0:                jal          ra, 14f
1:                jal          ra, 12f
2:                jal          ra, 7f
3:                jal          t0, 21f
4:                jal          ra, 19f
5:                jal          t1, 15f
6:                jal          s8, 16f
7:                jal          ra, 6b
8:                jal          t1, 5b
9:                jal          ra, 10f
10:               jal          t1, 20f
11:               jal          t1, 23f
12:               jal          ra, 25f
13:               jal          s6, 11b
14:               jal          ra, 17f
15:               jal          ra, 24f
16:               jal          t6, 22f
17:               jal          ra, 8b
18:               jal          ra, 1b
19:               jal          t1, 27f
20:               jal          ra, 26f
21:               jal          ra, 18b
22:               jal          ra, 0b
23:               jal          t1, 3b
24:               jal          ra, 13b
25:               jal          ra, 9b
26:               jal          ra, 4b
27:               auipc        a5, 194304
sub_3_15:         jal          ra, 6f
0:                jal          t1, 9f
1:                jal          ra, 2f
2:                jal          ra, 10f
3:                jal          t1, 8f
4:                jal          t1, 0b
5:                jal          ra, 1b
6:                jal          a5, 4b
7:                jal          t5, 5b
8:                jal          ra, 7b
9:                jal          t1, 3b
10:               ori          t2, s0, -1406
sub_3_17:         jal          ra, 9f
0:                jal          ra, 1f
1:                jal          t1, 10f
2:                jal          s0, 11f
3:                jal          ra, 5f
4:                jal          tp, 7f
5:                jal          ra, 0b
6:                jal          t1, 4b
7:                jal          t1, 8f
8:                jal          t1, 3b
9:                jal          ra, 6b
10:               jal          ra, 2b
11:               sltu         a2, a3, s3
sub_3_18:         jal          ra, 11f
0:                jal          a5, 20f
1:                jal          sp, 14f
2:                jal          t1, 5f
3:                jal          ra, 10f
4:                jal          sp, 8f
5:                jal          t1, 4b
6:                jal          t1, 1b
7:                jal          s6, 19f
8:                jal          a7, 16f
9:                jal          ra, 17f
10:               jal          ra, 15f
11:               jal          a4, 18f
12:               jal          t1, 7b
13:               jal          tp, 21f
14:               jal          ra, 3b
15:               jal          t0, 9b
16:               jal          t1, 0b
17:               jal          s1, 13b
18:               jal          sp, 12b
19:               jal          t1, 2b
20:               jal          t1, 6b
21:               ori          a1, s11, 297
sub_3_8:          jal          ra, 7f
0:                jal          t1, 6f
1:                jal          t5, 0b
2:                jal          s11, 11f
3:                jal          t0, 5f
4:                jal          t1, 12f
5:                jal          t1, 13f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          tp, 3b
9:                jal          ra, 14f
10:               jal          gp, 9b
11:               jal          ra, 1b
12:               jal          t5, 2b
13:               jal          t1, 4b
14:               xori         zero, a0, 1304
sub_3_4:          jal          ra, 10f
0:                jal          a2, 13f
1:                jal          ra, 0b
2:                jal          ra, 12f
3:                jal          ra, 15f
4:                jal          t1, 6f
5:                jal          ra, 1b
6:                jal          ra, 7f
7:                jal          gp, 11f
8:                jal          ra, 4b
9:                jal          t1, 2b
10:               jal          ra, 14f
11:               jal          ra, 5b
12:               jal          s9, 3b
13:               jal          t1, 9b
14:               jal          ra, 8b
15:               srl          t0, s5, gp
sub_3_7:          jal          ra, 2f
0:                jal          ra, 11f
1:                jal          t1, 4f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          t1, 8f
5:                jal          ra, 7f
6:                jal          t2, 9f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          s4, 0b
10:               jal          t1, 6b
11:               andi         a1, tp, -540
sub_3_5:          jal          ra, 7f
0:                jal          s5, 21f
1:                jal          ra, 18f
2:                jal          gp, 9f
3:                jal          t1, 12f
4:                jal          t1, 26f
5:                jal          gp, 25f
6:                jal          s4, 2b
7:                jal          tp, 24f
8:                jal          ra, 19f
9:                jal          ra, 4b
10:               jal          a4, 5b
11:               jal          ra, 13f
12:               jal          ra, 0b
13:               jal          ra, 16f
14:               jal          ra, 27f
15:               jal          ra, 3b
16:               jal          ra, 17f
17:               jal          ra, 10b
18:               jal          t0, 23f
19:               jal          t5, 11b
20:               jal          s5, 22f
21:               jal          ra, 8b
22:               jal          ra, 15b
23:               jal          t1, 14b
24:               jal          ra, 20b
25:               jal          tp, 6b
26:               jal          ra, 1b
27:               srai         sp, s5, 20
sub_3_6:          jal          ra, 13f
0:                jal          ra, 4f
1:                jal          ra, 17f
2:                jal          ra, 11f
3:                jal          sp, 2b
4:                jal          t1, 5f
5:                jal          ra, 7f
6:                jal          t1, 12f
7:                jal          s3, 16f
8:                jal          ra, 14f
9:                jal          ra, 6b
10:               jal          t1, 0b
11:               jal          ra, 10b
12:               jal          s4, 3b
13:               jal          a0, 8b
14:               jal          gp, 15f
15:               jal          ra, 9b
16:               jal          ra, 1b
17:               nop
sub_3_14:         jal          ra, 17f
0:                jal          ra, 5f
1:                jal          a4, 18f
2:                jal          tp, 6f
3:                jal          ra, 9f
4:                jal          ra, 22f
5:                jal          s6, 1b
6:                jal          s11, 0b
7:                jal          ra, 3b
8:                jal          ra, 24f
9:                jal          sp, 14f
10:               jal          ra, 12f
11:               jal          a4, 10b
12:               jal          t1, 16f
13:               jal          ra, 21f
14:               jal          sp, 11b
15:               jal          ra, 25f
16:               jal          ra, 15b
17:               jal          t0, 20f
18:               jal          t1, 4b
19:               jal          t0, 23f
20:               jal          ra, 13b
21:               jal          s3, 7b
22:               jal          s3, 8b
23:               jal          sp, 26f
24:               jal          t1, 19b
25:               jal          sp, 2b
26:               auipc        sp, 219394
sub_3_11:         jal          ra, 4f
0:                jal          ra, 2f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          t5, 6f
6:                jal          gp, 8f
7:                jal          a3, 0b
8:                jal          t1, 1b
9:                jal          ra, 11f
10:               jal          t1, 7b
11:               jal          ra, 12f
12:               slti         s2, a7, 367
sub_3_12:         jal          ra, 16f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          gp, 0b
4:                jal          ra, 2b
5:                jal          ra, 21f
6:                jal          t2, 15f
7:                jal          t1, 18f
8:                jal          s8, 3b
9:                jal          a6, 23f
10:               jal          t1, 14f
11:               jal          gp, 12f
12:               jal          ra, 13f
13:               jal          ra, 10b
14:               jal          t1, 4b
15:               jal          ra, 22f
16:               jal          ra, 8b
17:               jal          s2, 1b
18:               jal          ra, 19f
19:               jal          ra, 11b
20:               jal          ra, 17b
21:               jal          ra, 7b
22:               jal          ra, 9b
23:               nop
sub_3_10:         jal          ra, 0f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          t1, 5f
3:                jal          t6, 6f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          t1, 9f
8:                jal          s9, 2b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               sltiu        a6, s0, 834
sub_3_16:         jal          ra, 12f
0:                jal          ra, 11f
1:                jal          t0, 8f
2:                jal          gp, 5f
3:                jal          sp, 1b
4:                jal          ra, 2b
5:                jal          s3, 17f
6:                jal          ra, 16f
7:                jal          gp, 18f
8:                jal          s2, 7b
9:                jal          tp, 6b
10:               jal          tp, 15f
11:               jal          a0, 14f
12:               jal          a4, 10b
13:               jal          ra, 4b
14:               jal          ra, 9b
15:               jal          t1, 13b
16:               jal          s5, 3b
17:               jal          tp, 0b
18:               slti         a4, s8, 1727
                  andi         zero, t5, -1406
                  sll          a2, a1, s7
                  lui          s8, 497953
                  slli         s0, t4, 30
                  srai         t5, ra, 10
                  slt          a2, t6, t3
                  srai         gp, s10, 0
                  sub          s7, s9, a0
                  sltiu        s5, a6, -1305
                  slti         s6, t6, -1431
                  srli         t2, s8, 14
                  add          s3, sp, s6
                  sub          s11, s3, s6
                  srai         a1, t1, 30
                  sltu         s1, s7, a1
                  srl          s11, a3, t1
                  blt          t5, a3, 21f
                  ori          s9, t4, -436
                  ori          s9, s7, -825
                  sub          t2, a4, s10
                  slli         s8, a5, 7
21:               slt          s4, tp, s10
                  and          tp, a3, zero
                  or           a2, sp, a3
                  srli         s8, s1, 25
                  slli         zero, s11, 7
                  auipc        a3, 511899
                  lui          s0, 187048
                  or           s8, s10, a5
                  blt          s9, a2, 47f
                  bge          zero, a1, 34f
                  addi         t2, t0, -1085
                  ori          a4, s6, -384
                  add          t6, t0, a0
34:               or           s8, tp, zero
                  beq          t6, s3, 50f
                  or           zero, s7, t4
                  xori         s6, s3, 532
                  beq          s0, s2, 49f
                  sub          a0, t5, s6
                  sub          gp, t2, s7
                  bge          s9, ra, 61f
                  nop
                  bltu         s1, gp, 46f
                  bge          tp, t6, 53f
                  sltiu        a0, s7, -1481
46:               lui          ra, 369870
47:               sltiu        gp, tp, 710
                  beq          a1, s2, 68f
49:               add          gp, t3, s8
50:               bltu         a6, a3, 54f
                  srl          sp, s4, t3
                  sll          s9, zero, t6
53:               addi         t0, a1, 344
54:               xor          s8, a3, s4
                  beq          t0, t3, 73f
                  sltu         a2, t2, t0
                  addi         s6, t6, -1973
                  and          s3, t3, t0
                  sltiu        t2, s1, -925
                  add          a7, t4, t3
61:               srli         gp, t6, 26
                  xor          a1, a0, a1
                  srl          s11, s9, a6
                  nop
                  ori          a2, t0, -1430
                  addi         gp, t3, -14
                  lui          s9, 461934
68:               ori          s3, tp, -780
                  sra          a7, tp, sp
                  sltu         a5, a5, a5
                  xori         t0, s4, -843
                  addi         a7, t4, 754
73:               blt          t4, t3, 91f
                  auipc        s9, 336553
                  beq          t6, a0, 91f
                  or           t6, s4, a4
                  lui          s3, 842176
                  bltu         s11, a3, 86f
                  bge          s9, s2, 86f
                  beq          t2, t2, 91f
                  ori          s0, s6, -1148
                  sra          sp, zero, s7
                  slli         a6, a7, 26
                  or           a4, ra, s1
                  ori          zero, s11, 527
86:               srl          t0, s0, s3
                  srai         a3, s9, 1
                  xori         s9, s10, 454
                  sltu         s3, t4, s6
                  slti         t0, a5, -1741
91:               addi         a4, s9, 1030
                  slli         t1, t4, 20
                  ori          t2, s0, -990
                  add          a3, gp, a2
                  nop
                  slli         t5, s1, 5
                  srli         t1, sp, 0
                  addi         s11, zero, -1871
                  slti         s11, s10, 814
                  sltu         a7, s0, a4
                  beq          sp, t0, 120f
                  andi         s7, s3, -945
                  slt          s2, s1, a5
                  xor          a5, t5, s9
                  sra          t5, t0, t1
                  ori          sp, gp, -865
                  srli         a0, s11, 24
                  andi         a7, a1, 1103
                  srai         a5, a7, 1
                  xori         a0, a5, 484
                  bge          a6, a5, 122f
                  sra          gp, s6, t6
                  ori          t6, t1, -10
                  sra          t6, s0, s4
                  blt          s7, t0, 125f
                  nop
                  bltu         a3, a5, 128f
                  slt          s6, a6, s8
                  or           s7, gp, s10
120:              blt          t1, tp, 124f
                  and          a4, s3, s0
122:              or           s9, s8, ra
                  beq          s1, ra, 130f
124:              bltu         t3, s7, 132f
125:              srai         s1, a0, 9
                  blt          t4, a0, 143f
                  nop
128:              sub          t5, a6, gp
                  bgeu         a4, s5, 136f
130:              sll          s1, a0, s10
                  bne          a6, a2, 138f
132:              auipc        a7, 126308
                  bltu         a0, s10, 138f
                  lui          t1, 528189
                  slli         a0, a3, 25
136:              srl          gp, gp, t6
                  sltiu        s3, sp, 523
138:              slt          a0, t0, a3
                  ori          t5, s5, 2040
                  auipc        a4, 635778
                  sub          s1, s5, a1
                  srai         s5, a6, 21
143:              nop
                  add          s4, zero, s3
                  slli         a6, t4, 19
                  sltiu        s0, sp, 1322
                  srai         a4, tp, 15
                  bltu         a5, s5, 157f
                  lui          s6, 689612
                  ori          s2, zero, -243
                  blt          t2, s5, 153f
                  srl          zero, s10, ra
153:              ori          t5, a2, -1542
                  or           s5, a3, s8
                  and          s8, a6, a6
                  andi         t0, t1, 1534
157:              auipc        s2, 226274
                  bgeu         s3, s6, 159f
159:              srl          a6, a2, a7
                  srl          sp, a0, a2
                  srli         t1, a4, 28
                  srl          t6, t4, s1
                  blt          gp, t3, 178f
                  nop
                  andi         s5, t0, 98
                  bltu         s1, s5, 173f
                  srli         s0, t6, 3
                  add          s3, t1, s10
                  sra          a5, a4, tp
                  slti         a0, s8, -1504
                  nop
                  slt          s8, s3, s6
173:              bltu         a4, s9, 182f
                  add          gp, s5, t2
                  and          s0, s2, s7
                  bne          s7, a4, 195f
                  sub          t0, gp, s7
178:              blt          s11, tp, 186f
                  sltiu        sp, t4, 2034
                  nop
                  sll          a4, s7, s2
182:              beq          a5, tp, 187f
                  andi         s1, s5, -1400
                  xori         a7, a3, 668
                  xor          sp, t0, t4
186:              ori          t5, t0, 783
187:              xor          sp, s1, s4
                  bgeu         s11, a6, 193f
                  srli         t1, s11, 24
                  slt          s9, s6, a0
                  bltu         s0, a2, 211f
                  blt          s3, s6, 209f
193:              lui          s5, 925858
                  slli         zero, gp, 17
195:              or           a0, s8, t6
                  bgeu         a7, s11, 214f
                  xori         a6, ra, -614
                  xor          s7, a3, a6
                  sll          t0, s6, s4
                  or           t6, a5, a0
                  xori         t0, s4, 989
                  nop
                  auipc        a4, 994660
                  addi         tp, s1, 552
                  srli         a0, a5, 6
                  lui          a5, 957454
                  or           s4, t1, s7
                  bge          t6, s6, 226f
209:              andi         s2, s4, 1249
                  slti         a1, s7, -1784
211:              slli         a5, tp, 0
                  sra          a4, s4, t0
                  sltu         a4, a4, a4
214:              ori          s2, gp, 972
                  xori         a2, a1, -1926
                  slli         t6, s1, 9
                  srli         a0, a5, 8
                  slt          s5, s3, t0
                  srai         s11, t5, 9
                  sra          a2, t5, s5
                  blt          sp, s5, 232f
                  srl          a7, s6, t2
                  slli         t5, t5, 30
                  slt          a3, t1, t2
                  slt          gp, t6, gp
226:              srli         a6, t2, 22
                  or           s7, tp, a7
                  auipc        t1, 991380
                  slti         s2, s8, -1275
                  bltu         tp, t0, 237f
                  nop
232:              sltu         zero, t3, t1
                  slti         s0, a3, -772
                  srl          a7, a4, a7
                  xori         t1, s8, -1517
                  auipc        s4, 92968
237:              slti         gp, t2, -1266
                  slt          s2, a0, a5
                  andi         a5, s5, -1911
                  slli         tp, a6, 20
                  bne          s9, t3, 259f
                  slti         a3, zero, 863
                  add          a3, a4, a2
                  bgeu         a7, s7, 253f
                  bne          t5, s5, 249f
                  bne          sp, s1, 254f
                  srli         s2, a1, 2
                  and          s0, a3, a3
249:              add          tp, t3, a0
                  nop
                  sltu         a3, s5, a2
                  sub          a6, t5, s0
253:              srai         t2, s4, 16
254:              slli         a6, t1, 21
                  ori          a0, a6, 525
                  slti         a3, s9, 576
                  lui          s5, 867805
                  sub          a2, a2, a1
259:              andi         sp, t6, 998
                  nop
                  sltiu        s8, a3, -896
                  sltiu        zero, gp, 1115
                  sltiu        t5, s6, -1951
                  sub          s0, s4, s11
                  sll          s8, s9, t0
                  sra          zero, a7, a2
                  xor          a4, t6, a6
                  srai         a3, t3, 20
                  sltu         t5, s8, a6
                  add          a7, s0, s2
                  sub          s2, t0, s7
                  sra          ra, s0, s3
                  bltu         t5, s0, 293f
                  beq          zero, gp, 285f
                  slti         a6, a5, -579
                  lui          t5, 483275
                  bne          a1, s5, 293f
                  bltu         a0, a3, 288f
                  beq          a0, a3, 283f
                  or           a0, a0, t5
                  srli         s5, a1, 28
                  srai         t1, sp, 11
283:              or           t0, ra, a3
                  bne          t6, s5, 285f
285:              bgeu         s8, s3, 288f
                  srl          t0, a5, t2
                  ori          gp, s5, -59
288:              add          t2, s6, s9
                  and          s0, s3, ra
                  slti         ra, t4, 105
                  ori          s3, t0, 94
                  nop
293:              addi         a0, ra, 783
                  sra          t5, s10, t0
                  nop
                  srai         a1, t1, 0
                  slt          s3, t3, t6
                  xori         ra, t1, 1285
                  addi         s3, t0, -519
                  sltu         s2, s9, s9
                  sltu         s3, s6, a0
                  or           s4, a3, t2
                  slt          s1, s6, t6
                  andi         t2, gp, 948
                  srl          a7, a1, s4
                  addi         s1, s1, 1498
                  auipc        a5, 412070
                  slli         tp, t4, 19
                  bgeu         t6, a2, 320f
                  xori         s9, t3, 963
                  ori          a4, a5, -1113
                  sltiu        s0, t4, -40
                  sltiu        t5, a7, 295
                  srli         s8, t4, 5
                  sltu         t6, a3, s8
                  bge          s7, s10, 323f
                  lui          a1, 214848
                  addi         s3, t6, 1995
                  bge          t1, s9, 326f
320:              bne          sp, s3, 324f
                  srli         tp, a4, 11
                  add          gp, s10, s7
323:              add          t2, s8, sp
324:              sub          tp, s10, s2
                  ori          s2, a1, 739
326:              srai         a2, a6, 3
                  ori          a2, t3, 1268
                  srl          a5, s4, s2
                  srli         s1, tp, 3
                  bgeu         t5, t6, 341f
                  bge          s9, s6, 333f
                  add          s8, a1, s11
333:              add          gp, a7, s1
                  srai         t5, s9, 9
                  slt          t6, t0, t6
                  sra          s6, a5, gp
                  srli         a2, tp, 28
                  slti         s1, a0, 1063
sub_3_13:         jal          ra, 13f
0:                jal          ra, 19f
1:                jal          ra, 8f
2:                jal          sp, 5f
3:                jal          ra, 16f
4:                jal          gp, 0b
5:                jal          ra, 9f
6:                jal          s3, 1b
7:                jal          ra, 21f
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          ra, 3b
11:               jal          ra, 22f
12:               jal          ra, 4b
13:               jal          a2, 15f
14:               jal          t1, 7b
15:               jal          t1, 14b
16:               jal          s9, 20f
17:               jal          ra, 23f
18:               jal          ra, 2b
19:               jal          s3, 10b
20:               jal          ra, 17b
21:               jal          t1, 11b
22:               jal          tp, 18b
23:               andi         s8, s4, -1175
                  andi         s9, t6, 1017
                  and          s11, s3, s7
341:              sub          tp, t2, gp
                  and          a3, a5, sp
                  add          s8, a1, t4
                  srl          a1, s2, t6
                  bltu         s11, a0, 349f
                  addi         a2, s11, 1683
                  sub          a0, ra, s7
                  bltu         a1, s4, 367f
349:              bgeu         s6, s3, 357f
                  bltu         sp, t1, 357f
                  slti         a3, s2, -1426
                  andi         a5, s1, -1102
                  bltu         s6, tp, 362f
                  bge          s4, sp, 355f
355:              bltu         a1, sp, 362f
                  ori          zero, a6, 901
357:              srai         t0, a3, 21
                  nop
                  slti         s6, a6, 698
                  andi         s8, s2, -476
                  lui          t1, 705301
362:              bltu         a1, s11, 377f
                  bgeu         s8, a4, 383f
                  andi         t0, s8, 837
                  nop
                  bne          t1, a5, 374f
367:              nop
                  beq          tp, s0, 388f
                  add          ra, s2, t3
                  sltu         t5, t2, a3
                  sub          s7, sp, a5
                  or           s6, s3, tp
                  and          s6, s0, a7
374:              xori         s7, zero, 404
                  srli         s9, t4, 4
                  srai         a3, a6, 23
377:              sub          s4, a2, gp
                  sltiu        s7, t5, 434
                  andi         s9, t5, 38
                  blt          a0, s7, 384f
                  xor          t2, s8, a4
                  nop
383:              nop
384:              auipc        s4, 714274
                  blt          a2, a3, 401f
                  srai         s11, t2, 19
                  bge          s0, s10, 392f
388:              bge          a7, s9, 395f
                  sltu         s0, s11, a4
                  sub          gp, s11, ra
                  bltu         tp, a2, 396f
392:              srli         ra, t5, 25
                  auipc        s9, 917333
                  blt          a5, a2, 405f
395:              srai         tp, s8, 19
396:              blt          a5, a0, 407f
                  slli         zero, t2, 20
                  bne          s5, t1, 400f
                  addi         t5, sp, -1039
400:              and          a7, t6, t1
401:              nop
                  bne          t6, s11, 413f
                  addi         s1, s6, 297
                  slti         s6, sp, 959
405:              xori         a4, t0, -1994
                  bgeu         gp, s8, 424f
407:              auipc        s1, 927101
                  blt          sp, t0, 426f
                  sub          a4, s11, s1
                  bltu         t3, s7, 414f
                  srl          t2, t6, t2
                  andi         a2, t2, -724
413:              beq          s4, t3, 416f
414:              srai         zero, t2, 29
                  nop
416:              auipc        s9, 401056
                  slti         t0, gp, 1411
                  auipc        s7, 210462
                  sll          s2, s9, a5
                  bgeu         s5, ra, 438f
                  sltu         a7, a6, s10
                  bgeu         zero, a3, 429f
                  bge          sp, tp, 434f
424:              or           a6, t3, s8
                  nop
426:              bne          gp, a7, 443f
                  slti         zero, a0, 1667
                  xori         a7, t1, -1348
429:              xor          t5, a6, t0
                  sra          s9, s3, a0
                  srli         s11, s9, 27
                  sub          s8, a4, s6
                  slti         a7, a1, -1378
434:              slt          s0, ra, s2
                  srl          a7, a4, s11
                  nop
                  xori         t6, gp, 308
438:              slt          s6, zero, tp
                  addi         s8, a7, 1094
                  and          gp, zero, t3
                  add          s7, a1, t3
                  bltu         t5, s4, 452f
443:              ori          s3, a7, -344
                  slt          gp, ra, a1
                  slli         t2, s6, 22
                  nop
                  sub          a4, a4, a0
                  andi         zero, s8, 1506
                  xori         a5, sp, -520
                  xor          s4, t3, tp
                  slli         s7, s5, 28
452:              bne          s7, s1, 461f
                  srl          a3, s0, t5
                  addi         s2, s2, -254
                  add          s9, s8, sp
                  xori         t2, a6, -1933
                  srli         s1, s1, 10
                  beq          a2, s11, 468f
                  lui          ra, 653153
                  add          sp, t6, t3
461:              or           tp, a1, s0
                  blt          s10, s8, 469f
                  sra          a6, gp, t3
                  ori          t1, t3, 1964
                  and          t1, a0, s6
                  bge          s6, t5, 475f
                  slti         t0, s9, 797
468:              lui          s7, 309572
469:              lui          t2, 148147
                  srli         a1, s7, 31
                  addi         a0, t2, -954
                  addi         a2, sp, 916
                  sub          zero, s9, s10
                  ori          t2, t3, -1936
475:              bge          s0, s3, 483f
                  andi         a3, a4, 1870
                  slt          s6, sp, a0
                  beq          t1, a7, 481f
                  bge          a3, s6, 497f
                  srli         a4, s5, 20
481:              sub          s5, s0, s7
                  blt          a6, ra, 500f
483:              ori          t5, s8, 1526
                  blt          t4, gp, 489f
                  addi         zero, s5, -291
                  sub          a6, s4, s1
                  add          t5, t1, a3
                  xori         s8, s7, 1604
489:              andi         t2, s9, 640
                  bne          s0, gp, 510f
                  srai         zero, tp, 1
                  sll          a0, s5, s11
                  auipc        s4, 441685
                  beq          ra, sp, 498f
                  add          s5, s6, s7
                  addi         s2, tp, -1838
497:              srli         a3, t4, 29
498:              srli         ra, a0, 21
                  srai         a3, s0, 14
500:              sltiu        s7, s7, -1087
                  sll          a7, tp, s7
                  blt          s1, ra, 513f
                  srl          s7, s4, t0
                  sltiu        s5, s8, -293
                  sll          s9, s6, s2
                  and          s11, s5, s1
                  beq          a5, s4, 523f
                  bltu         s0, gp, 512f
                  auipc        s3, 269339
510:              bne          a2, s5, 519f
                  blt          a3, s0, 530f
512:              slti         a7, a1, 1723
513:              auipc        t6, 682436
                  sll          a7, a0, a4
                  add          a1, t6, a5
                  bgeu         a2, s10, 520f
                  sll          s3, t1, t6
                  andi         sp, t1, 348
519:              bge          t4, s5, 526f
520:              srai         a6, s3, 4
                  addi         a6, a1, -1142
                  bne          s3, t6, 527f
523:              sll          t2, a1, t5
                  and          a1, t6, a3
                  bne          t0, gp, 542f
526:              blt          a1, a3, 534f
527:              bltu         a6, t0, 547f
                  bne          t0, s2, 546f
                  addi         s11, s11, -150
530:              sra          a4, t5, a5
                  srl          t0, t5, a2
                  bltu         ra, zero, 547f
                  sltiu        t1, s9, -1230
534:              bne          a4, t6, 536f
                  beq          s6, t0, 546f
536:              sll          tp, s2, t4
                  ori          t2, s8, -1590
                  sll          s3, s7, a7
                  sltiu        s4, t6, 1350
                  xori         a4, a6, 1274
                  add          s6, s5, a4
542:              lui          s0, 15389
                  addi         a7, t2, 1459
                  and          gp, s9, sp
                  slti         s4, s8, 1651
546:              srai         a3, gp, 1
547:              bgeu         a0, s2, 558f
                  sub          t0, t3, s7
                  xor          s2, t1, a0
                  and          a1, s2, s0
                  bne          s11, t5, 552f
552:              bgeu         s9, gp, 559f
                  sra          s1, zero, s2
                  beq          s1, a7, 561f
                  sra          a6, s1, ra
                  bltu         a3, t5, 567f
                  blt          a3, s6, 565f
558:              slli         tp, t2, 19
559:              sra          a4, a0, zero
                  auipc        t5, 333353
561:              sub          t5, zero, sp
                  xor          s8, t3, s4
                  xori         a7, a7, 2026
                  bne          a0, s3, 584f
565:              xori         t0, s2, -81
                  srl          s4, s10, s5
567:              bltu         s7, s6, 578f
                  sll          gp, gp, a5
                  nop
                  srl          a0, a4, s1
                  ori          s9, sp, -1080
                  nop
                  sltu         s0, s0, a4
                  add          s2, s1, t1
                  slt          s7, tp, s0
                  bgeu         t2, t4, 581f
                  bgeu         s5, t0, 584f
578:              addi         s6, a3, -606
                  ori          a0, a0, 352
                  sll          a4, t1, s5
581:              blt          a1, a7, 599f
                  slli         s4, tp, 11
                  xori         t1, t4, -1088
584:              srl          s9, a2, t2
                  xor          a6, a4, s1
                  srl          s2, ra, t1
                  srai         t0, a4, 31
                  andi         a1, s10, 1548
                  srai         sp, t5, 3
                  andi         t2, sp, 144
                  sub          a6, ra, a2
                  srai         s8, sp, 2
                  sra          a5, s6, s11
                  addi         a6, sp, 420
                  auipc        s9, 835589
                  sll          zero, t3, gp
                  slt          a3, a7, sp
                  bge          t2, a5, 609f
599:              xori         a3, a3, 693
                  and          s2, s11, s8
                  sra          tp, s6, t1
                  sub          a1, t2, zero
                  srl          a6, zero, zero
                  xori         t1, tp, 252
                  sltu         tp, t0, zero
                  srai         ra, a5, 23
                  bge          gp, s0, 611f
                  xori         t6, a0, 32
609:              sub          s4, s8, s0
                  nop
611:              bgeu         s4, tp, 622f
                  slli         s0, t5, 18
                  xor          a0, gp, tp
                  blt          s2, t5, 633f
                  srl          s8, s10, s1
                  andi         gp, a2, 389
                  add          t0, sp, gp
                  slt          a4, t0, s11
                  or           a7, s6, s5
                  or           a3, t4, tp
                  srai         t6, t3, 11
622:              nop
                  slti         s2, a5, 360
                  and          t1, sp, t5
                  addi         s5, s4, -179
                  andi         gp, s5, 1393
                  sltu         s0, t0, t0
                  lui          a2, 203925
                  bge          t6, s6, 644f
                  auipc        a6, 665353
                  and          zero, ra, a1
                  sltiu        a1, ra, -1151
633:              slti         t5, ra, -21
                  slt          t5, a0, s6
                  slli         a6, s9, 12
                  srai         sp, t3, 28
                  bltu         sp, a3, 641f
                  slli         zero, a6, 0
                  nop
                  auipc        sp, 814870
641:              beq          s8, tp, 643f
                  beq          gp, t5, 647f
643:              srl          a6, a4, a5
644:              sltiu        a0, t6, -484
                  beq          s1, tp, 663f
                  bgeu         a4, a4, 666f
647:              and          s11, s11, zero
                  sll          ra, s0, t5
                  srai         ra, a5, 18
                  sll          tp, s8, a6
                  bne          s2, a6, 669f
                  bltu         a4, t4, 660f
                  bge          t3, t4, 656f
                  add          a1, s10, t5
                  add          gp, a4, s6
656:              nop
                  bne          s11, s7, 667f
                  beq          a2, t0, 669f
                  nop
660:              slt          t0, s1, s3
                  auipc        ra, 212525
                  nop
663:              bgeu         t5, s1, 667f
                  bne          a6, s7, 673f
                  beq          a7, a7, 672f
666:              sltu         s6, sp, s8
667:              auipc        a2, 428839
                  blt          a0, s7, 675f
669:              beq          ra, s0, 686f
                  sltu         s1, s6, a7
                  bltu         t4, s0, 680f
672:              sra          a5, ra, t0
673:              or           s5, s7, s10
                  srli         s9, t2, 20
675:              beq          s2, t0, 682f
                  andi         s5, s0, 537
                  srl          a6, t3, t6
sub_3_9:          jal          ra, 4f
0:                jal          t1, 8f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          ra, 11f
4:                jal          sp, 5f
5:                jal          ra, 3b
6:                jal          gp, 9f
7:                jal          t1, 1b
8:                jal          a6, 2b
9:                jal          t1, 10f
10:               jal          ra, 0b
11:               jal          a2, 7b
12:               ori          s5, s8, -1001
                  or           t1, s6, t6
                  xori         s1, sp, 888
680:              bne          a5, s7, 681f
681:              blt          t0, t5, 697f
682:              sltiu        zero, s0, 182
                  lui          a2, 782878
                  srli         a1, gp, 30
                  or           s5, gp, zero
686:              slti         a2, t5, -764
                  slt          gp, a1, s2
                  addi         t2, s1, 1810
                  blt          gp, s9, 696f
                  lui          a2, 388306
                  slt          sp, s4, sp
                  xori         gp, s7, 501
                  ori          s2, t5, 351
                  bne          a6, zero, 712f
                  bgeu         s7, tp, 714f
696:              slti         s4, a4, -284
697:              bne          t4, s10, 704f
                  sub          t0, t5, a0
                  add          t0, s2, s3
                  lui          s4, 613301
sub_3_1:          jal          ra, 11f
0:                jal          t1, 19f
1:                jal          s7, 22f
2:                jal          t0, 20f
3:                jal          t1, 18f
4:                jal          t5, 23f
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          ra, 1b
8:                jal          ra, 25f
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          sp, 2b
12:               jal          tp, 0b
13:               jal          ra, 16f
14:               jal          a2, 8b
15:               jal          t1, 12b
16:               jal          a1, 21f
17:               jal          ra, 5b
18:               jal          ra, 17b
19:               jal          t1, 4b
20:               jal          ra, 26f
21:               jal          ra, 9b
22:               jal          ra, 13b
23:               jal          ra, 27f
24:               jal          ra, 6b
25:               jal          ra, 15b
26:               jal          gp, 24b
27:               lui          a1, 82365
                  sll          zero, s4, zero
                  lui          a3, 613022
                  slli         t5, s8, 19
704:              srl          s6, s9, a3
                  srai         s11, t0, 13
                  sltu         gp, gp, a3
                  srli         s9, s4, 0
                  slt          a0, s10, sp
                  and          t5, a0, t1
                  bltu         a6, sp, 728f
                  xor          s6, a1, sp
712:              andi         a7, sp, 1005
                  srl          a1, a3, s3
714:              slt          t5, a3, s0
                  slt          s6, a7, s11
                  blt          s10, a7, 734f
                  slli         a3, s9, 28
                  sra          a3, t3, a3
                  slli         s1, s7, 15
                  srl          t1, t4, ra
                  auipc        s7, 215243
                  and          t2, s1, t4
                  bge          a1, gp, 740f
                  srai         t2, ra, 14
                  bgeu         s11, t0, 728f
                  sub          s9, a0, s7
                  ori          t5, tp, -688
728:              auipc        s6, 679164
                  slti         a6, s1, 699
                  lui          a5, 459289
                  bne          t3, s5, 733f
                  blt          s1, s8, 739f
733:              ori          zero, a5, 654
734:              slt          gp, a4, s10
                  sll          t6, zero, s2
                  srli         ra, s6, 7
                  auipc        s7, 259008
                  sltiu        s1, t2, -853
739:              ori          a2, s6, 954
740:              sll          s7, t5, s8
                  blt          t1, t0, 745f
                  and          s0, sp, a6
                  srli         a7, a5, 16
                  srli         t2, gp, 31
745:              srli         a4, sp, 19
                  srl          s5, ra, ra
                  slt          a1, a3, t3
                  sra          ra, s8, gp
                  add          a5, s10, s4
                  lui          a4, 715000
                  lui          a4, 631527
                  sll          ra, gp, sp
                  add          s6, a6, a7
                  xor          s1, t3, t6
                  bltu         t2, s8, 759f
                  bne          t5, a4, 761f
                  ori          t1, t4, 314
                  and          a3, s7, t3
759:              slli         s9, a6, 10
                  or           t6, sp, t5
761:              bltu         s7, a1, 772f
                  slli         t6, a6, 27
                  sra          t2, s9, a6
                  sltiu        s8, t6, 302
                  xori         s6, tp, -2044
                  add          a6, a3, s5
                  addi         a4, gp, -464
                  lui          ra, 2231
                  addi         a1, a6, 952
                  sub          a2, zero, a2
                  blt          s4, ra, 780f
772:              slli         t0, gp, 18
                  sltu         gp, s8, a3
                  blt          s3, a4, 783f
                  lui          s1, 350893
                  lui          a0, 241121
                  srai         s5, s11, 21
                  srai         tp, s4, 19
                  add          a4, t4, ra
780:              sub          t0, a5, a2
                  slt          s6, t1, a1
                  bltu         a4, s10, 797f
783:              andi         t5, a3, 444
                  srli         t0, s7, 31
                  sll          a1, ra, t2
                  ori          s6, a4, -1065
                  blt          t2, gp, 794f
                  bge          s9, a0, 796f
                  ori          s0, s8, 1121
                  sll          s4, t5, ra
                  add          a2, s2, tp
                  and          a2, s3, a5
                  bne          s8, s7, 803f
794:              bgeu         a5, gp, 798f
                  auipc        a4, 695225
796:              slt          a3, gp, s5
797:              sub          gp, t4, s4
798:              bne          s7, s6, 809f
                  srai         a0, sp, 29
                  or           s2, s4, s7
                  srai         s7, a2, 17
                  xori         s1, t4, 1288
803:              auipc        s6, 856470
                  sltiu        zero, t0, -849
                  blt          a0, a3, 821f
                  sltu         a2, t4, s7
                  srli         a3, t5, 15
                  or           a3, a1, t0
809:              addi         t6, a0, 669
                  bgeu         ra, a5, 821f
                  add          gp, t6, t0
                  bltu         ra, s8, 832f
                  bne          a3, s8, 833f
                  bne          a0, a6, 822f
                  addi         a1, t5, 1892
                  auipc        t2, 770326
                  srl          t0, tp, t0
                  addi         t6, s3, 690
                  sltu         t1, a2, t4
                  slt          a5, s5, s5
821:              addi         s9, s11, 426
822:              sub          s11, t3, a1
                  xor          s11, t0, a3
                  lui          s4, 887000
                  bltu         a0, ra, 826f
826:              srai         a0, t3, 20
                  sltiu        s1, a1, -485
                  blt          t2, a0, 839f
                  blt          s0, s2, 834f
                  bltu         s2, t4, 837f
                  auipc        a3, 405573
832:              srai         a6, s8, 25
833:              ori          a7, a7, 724
834:              andi         s1, s10, 2003
                  bgeu         s10, tp, 839f
                  srli         a0, a7, 15
837:              beq          a5, s3, 845f
                  bne          t1, t5, 849f
839:              slli         a6, t2, 22
                  sra          gp, a6, a0
                  bne          tp, a1, 846f
                  or           s7, t6, a7
                  sltu         t5, s1, s4
                  add          a2, s11, ra
845:              bgeu         t5, s3, 849f
846:              beq          a5, a0, 857f
                  add          t0, a2, tp
                  auipc        a1, 610041
849:              srl          t2, t3, gp
                  xor          s2, s2, s1
                  srai         a4, s9, 6
                  sll          t5, s4, t3
                  bltu         s7, s8, 868f
                  nop
                  nop
                  beq          ra, s11, 866f
857:              bge          a1, t3, 866f
                  sub          a1, a3, s10
                  sltiu        a6, s9, 1121
                  bgeu         a2, s1, 878f
                  sra          a3, s3, a2
                  sltu         s7, s3, t4
                  bge          gp, t4, 865f
                  addi         s11, a0, -862
865:              bge          t5, gp, 870f
866:              slt          a2, a5, t6
                  lui          t6, 907903
868:              auipc        a1, 220359
                  auipc        a0, 88849
870:              sub          s7, s2, s4
                  slti         a5, s9, -731
                  addi         s2, a4, -388
                  srl          a2, a7, s10
                  beq          t3, a1, 892f
                  srl          s3, s6, t5
                  bltu         t5, tp, 883f
                  sltu         sp, s6, t6
878:              add          s5, gp, t1
                  xor          s3, a3, a1
                  andi         t6, a3, 1586
                  bltu         a6, a5, 888f
                  sub          a5, t3, s9
883:              bltu         s6, a6, 900f
                  slti         gp, t5, -605
                  add          a1, a3, s1
                  nop
                  slli         s6, t4, 11
888:              sra          t2, t2, s8
                  bge          t6, s7, 900f
                  blt          zero, a6, 893f
                  slti         a0, s11, -1986
892:              bgeu         a5, s2, 901f
893:              slli         t6, s1, 4
                  srli         s1, t4, 7
                  slt          s6, a4, a2
                  sra          s2, t5, s9
                  sra          gp, s9, zero
                  andi         s0, t6, 1360
                  andi         tp, s10, -1632
900:              slti         a7, s7, 1477
901:              and          ra, a3, tp
                  sltu         a2, s10, sp
                  ori          s6, t4, -234
                  slt          a3, s0, t2
                  xori         a5, t2, 642
                  ori          s3, a4, 1092
                  xori         s8, a5, -1507
                  beq          s11, s2, 924f
                  sub          sp, a0, t2
                  andi         t2, sp, 678
                  xor          s3, a4, t0
                  sltu         a1, gp, t2
                  lui          a2, 549865
                  auipc        s11, 42867
                  sltu         s5, s8, s4
                  ori          gp, s10, -1131
                  andi         a2, s1, -856
                  sll          s6, zero, s5
                  sra          tp, t5, tp
                  xor          a0, a7, ra
                  slli         gp, s10, 13
                  srli         s11, t0, 13
                  sltiu        sp, t1, -16
924:              or           gp, s2, a0
                  lui          sp, 348346
                  andi         a0, tp, 1263
                  ori          t5, t6, -1886
                  or           s7, tp, s5
                  sll          gp, t4, s6
                  slt          a2, s1, s6
                  andi         gp, t6, -1475
                  sltiu        s5, t4, 806
                  sltiu        a7, a4, 229
                  addi         a1, t4, -1873
                  addi         s3, t5, -1201
                  slti         a4, a5, 1008
                  bne          zero, a6, 955f
                  andi         t2, zero, -837
                  lui          ra, 171046
                  bne          t6, s3, 959f
                  xor          a6, t6, t3
                  auipc        ra, 99099
                  sll          sp, a1, s10
                  sub          a0, s7, t2
                  bne          a2, t3, 959f
                  srl          a6, s5, t2
                  srli         s5, ra, 19
                  beq          tp, a3, 959f
                  and          t6, t5, s9
                  beq          t3, s7, 957f
                  sltiu        t5, s1, 883
                  blt          t3, s6, 959f
                  xori         gp, t6, 1450
                  slli         s11, t1, 25
955:              ori          a0, s7, 1704
                  sltu         s7, t3, t5
957:              add          a1, s10, sp
                  bgeu         a3, t1, 959f
959:              slt          s2, s10, s9
                  sub          s6, s10, t6
                  srli         s4, a6, 5
                  ori          t5, s7, -1952
                  lw           ra, 4(t3)
                  addi         a1, s9, -248
                  or           t2, a0, s5
                  addi         t3, t3, 44
                  auipc        s7, 710424
                  auipc        s5, 676050
                  srai         s0, s10, 20
                  srl          tp, s2, s8
                  slli         s4, s2, 17
1384:             addi x14, x1, 1
1384:             jalr x14, x14, 0
sub_2:            blt          t5, zero, sub_2_stack_p
                  srai         s3, s4, 19
sub_2_stack_p:    addi         t3, t3, -8
                  sw           ra, 4(t3)
                  srai         a4, s2, 14
                  sra          s9, a2, a7
                  sub          t1, a6, a3
                  xori         s0, t6, 472
                  lui          a0, 5255
                  slt          s9, s4, s3
                  sub          ra, a1, a5
                  nop
                  slt          s9, t5, gp
                  lui          t6, 122859
                  xor          sp, s8, t3
sub_2_j5:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  blt          t2, a5, 1f
1:                ori          a1, t2, -1157
                  sltiu        t1, t5, -1457
                  blt          a0, zero, 22f
                  srai         s6, gp, 0
                  sltiu        a0, s1, -414
                  srai         a4, a4, 18
                  auipc        a6, 266700
                  slt          s3, a6, a7
                  bne          t2, s5, 22f
                  bge          s3, t5, 11f
11:               xori         a2, zero, -558
                  bge          t1, t6, 22f
                  add          a6, t6, s0
                  beq          zero, a6, 22f
                  sltiu        a1, s7, -1291
                  sll          a6, s8, a1
                  bgeu         a6, t3, 22f
                  addi         tp, s0, 1544
                  sub          t5, t0, s5
                  slt          s2, t4, a0
                  xor          s1, a7, s8
22:               or           t0, a6, s4
                  lw           ra, 4(t3)
                  sub          s8, a7, a6
                  addi         t3, t3, 8
                  addi         s3, ra, -1655
                  sll          s11, a6, s10
                  nop
                  xori         a1, a5, 906
                  slt          t1, a2, t6
                  srl          t0, s0, zero
                  srai         s6, t1, 8
49:               addi x17, x1, 1
49:               jalr x17, x17, 0
sub_4:            slti         a2, sp, -493
                  nop
                  bgeu         tp, t0, sub_4_stack_p
                  auipc        a2, 689157
                  nop
                  srl          a0, a0, s10
                  add          s0, t6, a3
                  and          sp, s6, t4
                  srli         s6, t4, 30
sub_4_stack_p:    addi         t3, t3, -64
                  slli         s5, t0, 2
                  sw           ra, 4(t3)
                  andi         t1, s11, -429
sub_4_3:          jal          ra, 10f
0:                jal          s0, 6f
1:                jal          ra, 0b
2:                jal          ra, 9f
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          a3, 11f
7:                jal          t1, 16f
8:                jal          ra, 13f
9:                jal          ra, 4b
10:               jal          a3, 5b
11:               jal          t1, 15f
12:               jal          t1, 8b
13:               jal          ra, 2b
14:               jal          ra, 7b
15:               jal          a5, 3b
16:               ori          a7, s5, -77
sub_4_17:         jal          ra, 9f
0:                jal          ra, 12f
1:                jal          t5, 4f
2:                jal          ra, 8f
3:                jal          ra, 5f
4:                jal          gp, 7f
5:                jal          ra, 11f
6:                jal          t1, 0b
7:                jal          gp, 3b
8:                jal          t0, 1b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          ra, 6b
12:               or           a1, t2, s0
sub_4_18:         jal          ra, 0f
0:                jal          ra, 4f
1:                jal          a3, 10f
2:                jal          ra, 6f
3:                jal          sp, 7f
4:                jal          ra, 1b
5:                jal          ra, 13f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          t1, 5b
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          ra, 2b
12:               jal          a0, 11b
13:               sll          s0, a3, s2
sub_4_21:         jal          ra, 4f
0:                jal          a1, 2f
1:                jal          ra, 9f
2:                jal          ra, 12f
3:                jal          ra, 23f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          t1, 21f
7:                jal          ra, 18f
8:                jal          t1, 6b
9:                jal          t1, 13f
10:               jal          ra, 19f
11:               jal          ra, 0b
12:               jal          t1, 16f
13:               jal          s7, 14f
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          ra, 8b
17:               jal          s7, 22f
18:               jal          ra, 10b
19:               jal          ra, 20f
20:               jal          ra, 24f
21:               jal          ra, 15b
22:               jal          ra, 1b
23:               jal          ra, 7b
24:               lui          s1, 17888
sub_4_6:          jal          ra, 15f
0:                jal          ra, 14f
1:                jal          t5, 21f
2:                jal          ra, 23f
3:                jal          ra, 6f
4:                jal          a2, 2b
5:                jal          s5, 10f
6:                jal          ra, 1b
7:                jal          ra, 12f
8:                jal          s5, 16f
9:                jal          ra, 7b
10:               jal          t1, 19f
11:               jal          s5, 9b
12:               jal          t1, 17f
13:               jal          ra, 18f
14:               jal          ra, 13b
15:               jal          ra, 20f
16:               jal          s11, 5b
17:               jal          sp, 24f
18:               jal          ra, 3b
19:               jal          t1, 25f
20:               jal          ra, 0b
21:               jal          t1, 8b
22:               jal          t1, 27f
23:               jal          t2, 26f
24:               jal          t1, 22b
25:               jal          ra, 4b
26:               jal          ra, 11b
27:               ori          t6, a3, -718
sub_4_11:         jal          ra, 15f
0:                jal          ra, 4f
1:                jal          a0, 14f
2:                jal          ra, 17f
3:                jal          ra, 11f
4:                jal          ra, 8f
5:                jal          t0, 9f
6:                jal          t1, 0b
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 16f
10:               jal          t1, 7b
11:               jal          gp, 13f
12:               jal          t1, 1b
13:               jal          t1, 10b
14:               jal          t1, 6b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               lui          s11, 127656
sub_4_23:         jal          ra, 22f
0:                jal          s7, 18f
1:                jal          t1, 2f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          s11, 20f
5:                jal          a5, 15f
6:                jal          ra, 0b
7:                jal          t1, 4b
8:                jal          s3, 1b
9:                jal          t1, 19f
10:               jal          ra, 5b
11:               jal          ra, 10b
12:               jal          t1, 25f
13:               jal          t1, 11b
14:               jal          t1, 26f
15:               jal          ra, 3b
16:               jal          ra, 12b
17:               jal          t1, 14b
18:               jal          ra, 16b
19:               jal          ra, 24f
20:               jal          s4, 27f
21:               jal          ra, 8b
22:               jal          ra, 17b
23:               jal          ra, 6b
24:               jal          t1, 23b
25:               jal          ra, 21b
26:               jal          ra, 9b
27:               sub          a2, s6, s1
sub_4_24:         jal          ra, 24f
0:                jal          gp, 4f
1:                jal          t1, 20f
2:                jal          t6, 17f
3:                jal          a0, 25f
4:                jal          ra, 10f
5:                jal          ra, 18f
6:                jal          ra, 13f
7:                jal          ra, 11f
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          tp, 1b
11:               jal          ra, 19f
12:               jal          t1, 3b
13:               jal          ra, 5b
14:               jal          ra, 12b
15:               jal          s11, 16f
16:               jal          ra, 23f
17:               jal          t1, 0b
18:               jal          t1, 22f
19:               jal          sp, 2b
20:               jal          ra, 6b
21:               jal          t1, 14b
22:               jal          gp, 21b
23:               jal          ra, 8b
24:               jal          ra, 15b
25:               addi         s7, s6, 1990
sub_4_12:         jal          ra, 9f
0:                jal          ra, 19f
1:                jal          t1, 28f
2:                jal          ra, 18f
3:                jal          ra, 27f
4:                jal          ra, 13f
5:                jal          ra, 12f
6:                jal          ra, 2b
7:                jal          ra, 5b
8:                jal          s4, 1b
9:                jal          ra, 10f
10:               jal          t1, 4b
11:               jal          gp, 30f
12:               jal          a2, 25f
13:               jal          ra, 8b
14:               jal          t1, 20f
15:               jal          ra, 11b
16:               jal          ra, 24f
17:               jal          s8, 15b
18:               jal          sp, 17b
19:               jal          ra, 26f
20:               jal          tp, 29f
21:               jal          ra, 6b
22:               jal          t1, 3b
23:               jal          ra, 7b
24:               jal          t1, 23b
25:               jal          ra, 14b
26:               jal          sp, 21b
27:               jal          s4, 0b
28:               jal          ra, 16b
29:               jal          ra, 22b
30:               sltu         s0, s9, t1
sub_4_14:         jal          ra, 11f
0:                jal          ra, 1f
1:                jal          ra, 17f
2:                jal          ra, 6f
3:                jal          ra, 23f
4:                jal          t1, 18f
5:                jal          ra, 19f
6:                jal          ra, 15f
7:                jal          s3, 26f
8:                jal          t1, 4b
9:                jal          ra, 10f
10:               jal          s1, 12f
11:               jal          ra, 9b
12:               jal          ra, 5b
13:               jal          tp, 2b
14:               jal          s11, 16f
15:               jal          tp, 25f
16:               jal          ra, 24f
17:               jal          a4, 3b
18:               jal          ra, 27f
19:               jal          ra, 14b
20:               jal          ra, 8b
21:               jal          tp, 13b
22:               jal          ra, 21b
23:               jal          a6, 7b
24:               jal          t2, 22b
25:               jal          t6, 0b
26:               jal          t0, 20b
27:               srl          s11, s6, s6
sub_4_26:         jal          ra, 5f
0:                jal          s4, 22f
1:                jal          a2, 26f
2:                jal          t1, 0b
3:                jal          s9, 12f
4:                jal          t1, 25f
5:                jal          ra, 14f
6:                jal          s8, 4b
7:                jal          ra, 20f
8:                jal          ra, 2b
9:                jal          sp, 18f
10:               jal          ra, 11f
11:               jal          gp, 17f
12:               jal          t1, 1b
13:               jal          s5, 10b
14:               jal          ra, 9b
15:               jal          ra, 8b
16:               jal          a3, 7b
17:               jal          s6, 15b
18:               jal          tp, 24f
19:               jal          a5, 21f
20:               jal          ra, 19b
21:               jal          ra, 6b
22:               jal          sp, 16b
23:               jal          t6, 13b
24:               jal          ra, 23b
25:               jal          a1, 3b
26:               addi         sp, s2, -1710
sub_4_16:         jal          ra, 9f
0:                jal          ra, 10f
1:                jal          gp, 2f
2:                jal          t1, 15f
3:                jal          ra, 14f
4:                jal          t0, 20f
5:                jal          a5, 21f
6:                jal          gp, 5b
7:                jal          t1, 13f
8:                jal          sp, 1b
9:                jal          t1, 3b
10:               jal          ra, 27f
11:               jal          t1, 26f
12:               jal          t6, 11b
13:               jal          ra, 16f
14:               jal          gp, 7b
15:               jal          t0, 0b
16:               jal          t1, 6b
17:               jal          ra, 22f
18:               jal          ra, 8b
19:               jal          t1, 4b
20:               jal          ra, 24f
21:               jal          a7, 23f
22:               jal          gp, 12b
23:               jal          t1, 18b
24:               jal          ra, 25f
25:               jal          ra, 28f
26:               jal          t1, 19b
27:               jal          ra, 17b
28:               xor          t2, t3, t1
sub_4_1:          jal          ra, 20f
0:                jal          ra, 1f
1:                jal          a0, 9f
2:                jal          s4, 19f
3:                jal          ra, 15f
4:                jal          t5, 16f
5:                jal          ra, 2b
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          a7, 11f
10:               jal          ra, 0b
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               jal          ra, 17f
14:               jal          t0, 13b
15:               jal          tp, 18f
16:               jal          t1, 6b
17:               jal          t1, 12b
18:               jal          ra, 5b
19:               jal          s5, 21f
20:               jal          ra, 14b
21:               sll          t2, a5, a6
sub_4_7:          jal          ra, 8f
0:                jal          s3, 11f
1:                jal          s2, 13f
2:                jal          ra, 0b
3:                jal          ra, 9f
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          t1, 4b
7:                jal          gp, 10f
8:                jal          ra, 6b
9:                jal          a1, 12f
10:               jal          s4, 3b
11:               jal          gp, 5b
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               auipc        zero, 516841
sub_4_22:         jal          ra, 17f
0:                jal          t1, 6f
1:                jal          ra, 15f
2:                jal          s11, 10f
3:                jal          t0, 2b
4:                jal          a4, 3b
5:                jal          t1, 20f
6:                jal          ra, 18f
7:                jal          ra, 1b
8:                jal          ra, 7b
9:                jal          ra, 14f
10:               jal          s4, 19f
11:               jal          a7, 16f
12:               jal          s2, 8b
13:               jal          ra, 5b
14:               jal          t1, 12b
15:               jal          ra, 13b
16:               jal          ra, 21f
17:               jal          ra, 4b
18:               jal          ra, 11b
19:               jal          ra, 9b
20:               jal          ra, 0b
21:               sub          t5, ra, tp
sub_4_0:          jal          ra, 0f
0:                jal          ra, 20f
1:                jal          t1, 12f
2:                jal          a3, 17f
3:                jal          a2, 8f
4:                jal          a6, 18f
5:                jal          t1, 6f
6:                jal          ra, 9f
7:                jal          t6, 4b
8:                jal          a6, 16f
9:                jal          ra, 21f
10:               jal          ra, 2b
11:               jal          t1, 7b
12:               jal          ra, 22f
13:               jal          s0, 10b
14:               jal          s8, 3b
15:               jal          ra, 5b
16:               jal          ra, 11b
17:               jal          ra, 15b
18:               jal          s6, 1b
19:               jal          ra, 13b
20:               jal          a5, 19b
21:               jal          ra, 14b
22:               slt          s6, t1, t2
sub_4_8:          jal          ra, 5f
0:                jal          t1, 3f
1:                jal          t1, 0b
2:                jal          s3, 9f
3:                jal          ra, 10f
4:                jal          ra, 21f
5:                jal          ra, 12f
6:                jal          ra, 20f
7:                jal          s6, 18f
8:                jal          ra, 22f
9:                jal          ra, 7b
10:               jal          sp, 14f
11:               jal          s9, 13f
12:               jal          ra, 6b
13:               jal          ra, 15f
14:               jal          ra, 16f
15:               jal          gp, 1b
16:               jal          ra, 4b
17:               jal          gp, 11b
18:               jal          s6, 23f
19:               jal          ra, 17b
20:               jal          t6, 19b
21:               jal          t0, 8b
22:               jal          ra, 2b
23:               or           a3, s11, s3
sub_4_4:          jal          ra, 8f
0:                jal          sp, 12f
1:                jal          ra, 3f
2:                jal          sp, 13f
3:                jal          t1, 15f
4:                jal          ra, 17f
5:                jal          t1, 7f
6:                jal          a4, 10f
7:                jal          s4, 4b
8:                jal          t1, 0b
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          t0, 2b
13:               jal          ra, 11b
14:               jal          ra, 16f
15:               jal          a0, 14b
16:               jal          t1, 6b
17:               sub          gp, s3, t1
sub_4_19:         jal          ra, 2f
0:                jal          ra, 1f
1:                jal          s2, 3f
2:                jal          ra, 10f
3:                jal          ra, 7f
4:                jal          ra, 12f
5:                jal          ra, 0b
6:                jal          t1, 8f
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          t1, 4b
10:               jal          ra, 11f
11:               jal          t1, 5b
12:               slli         s1, a0, 15
sub_4_20:         jal          ra, 7f
0:                jal          ra, 3f
1:                jal          a6, 9f
2:                jal          t1, 6f
3:                jal          ra, 13f
4:                jal          t2, 8f
5:                jal          ra, 10f
6:                jal          t1, 0b
7:                jal          t1, 2b
8:                jal          ra, 17f
9:                jal          ra, 11f
10:               jal          ra, 12f
11:               jal          ra, 16f
12:               jal          t1, 15f
13:               jal          t1, 5b
14:               jal          ra, 4b
15:               jal          ra, 1b
16:               jal          t1, 14b
17:               or           a1, tp, s9
                  slti         a5, s11, 1654
                  xor          s6, t1, zero
                  auipc        a2, 300351
                  bge          s3, s5, 21f
                  sll          t0, t3, t4
                  slt          s6, s1, s3
                  sra          a5, t0, s8
                  auipc        t1, 14790
                  slti         s2, s8, -1633
                  srl          s5, s1, t3
                  bgeu         t4, tp, 17f
                  sra          s4, s9, s3
                  slt          a3, a7, zero
                  nop
                  addi         s2, a0, -1802
                  auipc        t1, 1031625
                  srai         ra, a5, 1
17:               srli         sp, ra, 11
                  xor          s6, t0, a3
                  add          ra, a4, sp
                  ori          s5, t2, -1822
21:               auipc        a5, 451506
                  and          a6, t3, s10
                  andi         t2, a3, 1972
                  addi         a5, t4, -876
                  blt          zero, t1, 29f
                  and          gp, s1, ra
                  sll          ra, s1, gp
                  srai         s1, s4, 31
29:               bgeu         s6, a1, 43f
                  addi         s6, a4, -1583
                  xori         a6, s5, -1966
                  bltu         s7, s3, 35f
                  slt          t2, s2, s5
                  sltiu        s5, s1, -292
35:               sub          sp, s3, t6
                  or           zero, s10, ra
                  blt          t6, s9, 41f
                  bne          sp, a7, 52f
                  bne          s3, t5, 47f
                  slli         a0, t6, 3
41:               srai         s6, a1, 12
                  add          t5, a2, a2
43:               andi         s9, gp, 586
                  bgeu         a5, a1, 52f
                  srli         s6, a3, 1
                  slti         s2, s4, -688
47:               slt          gp, s0, t1
                  srai         s11, s9, 25
                  add          a1, ra, tp
                  beq          s0, s9, 70f
                  slli         a2, a6, 22
52:               auipc        t1, 902592
                  sltu         a7, s4, s10
                  srli         s1, s0, 13
                  sra          s5, a1, sp
                  xori         a5, s6, -246
                  bgeu         tp, s1, 73f
                  beq          a5, t0, 60f
                  slti         a7, s0, 1033
60:               auipc        a0, 62847
                  srl          s2, a0, a6
                  sll          zero, s9, zero
                  beq          s4, gp, 68f
                  slti         s1, a6, 1125
                  auipc        s11, 52829
                  sll          s0, s0, s8
                  sltu         s3, t3, s0
68:               andi         t5, a4, -498
                  lui          tp, 495313
70:               beq          a6, a2, 89f
                  bge          t2, s2, 74f
                  xor          s2, a5, sp
73:               bltu         s1, a1, 92f
74:               lui          a5, 57316
                  srli         zero, a6, 2
                  blt          sp, t5, 86f
                  nop
                  slli         a0, s2, 1
                  sub          t0, a4, s8
                  sra          tp, sp, s8
                  sltiu        gp, s7, 611
                  bltu         t0, s6, 86f
                  bltu         t3, t2, 98f
                  sltiu        t1, s11, -135
                  auipc        s5, 548407
86:               bge          a7, s3, 102f
                  sltiu        s11, t5, 1923
                  and          t5, s1, zero
89:               addi         s3, t3, -2012
                  slli         tp, a4, 18
                  addi         tp, t0, 1240
92:               nop
                  ori          a4, a5, 105
                  slli         sp, s3, 22
                  sll          s0, t4, s6
                  ori          s0, s7, -1196
                  slt          t1, a1, a4
98:               bge          a2, s4, 99f
99:               andi         zero, a3, -1355
                  lui          gp, 214135
                  slli         a3, a6, 4
102:              sub          s4, a0, s5
                  sub          t1, a1, s10
                  or           a4, s11, a4
                  xor          a6, s3, zero
                  srl          a1, s11, t1
                  sltiu        a0, ra, 2006
                  auipc        s11, 346378
                  ori          a6, t6, 1101
                  slt          s7, s4, s4
                  bge          t2, a0, 116f
                  bge          ra, ra, 118f
                  srl          gp, a7, s3
                  beq          zero, t5, 125f
                  slt          ra, a5, a0
116:              sltu         s1, s0, s1
                  blt          t0, s9, 129f
118:              sltu         a4, t3, ra
                  nop
                  beq          s4, tp, 138f
                  slti         sp, ra, -1358
                  and          a0, a2, t2
                  lui          s5, 960785
                  auipc        a2, 265602
125:              bltu         tp, s10, 145f
                  slt          a2, s2, gp
                  sub          tp, t2, s5
                  or           ra, t2, s5
129:              srl          a0, t2, gp
                  slti         s3, zero, 26
                  auipc        t2, 7413
                  lui          s6, 1012501
                  srai         t0, t0, 5
                  beq          a0, t3, 142f
                  srli         a7, s3, 26
                  srl          s8, a1, a3
                  blt          a7, tp, 139f
138:              sub          s5, a4, tp
139:              sltiu        s4, a6, -224
                  slli         s9, t3, 18
                  sltiu        a6, zero, 842
142:              addi         a5, tp, 496
                  add          sp, gp, a4
                  auipc        t5, 82524
145:              bge          s4, t0, 160f
                  addi         a1, t1, 852
                  addi         s6, s11, -1943
                  slli         t1, s1, 14
                  srai         zero, t4, 10
                  bge          t4, gp, 166f
                  sltiu        gp, t0, 1193
                  sra          s2, s1, a6
                  add          s4, tp, s5
                  srl          a1, a4, a1
                  beq          zero, ra, 158f
                  xori         tp, t2, -1623
                  srli         a2, a4, 29
158:              addi         tp, s10, -136
                  xor          a0, s6, s2
160:              slti         t0, a2, 483
                  sra          t6, t2, s1
                  xor          a3, a5, t3
                  slti         s4, a5, -282
                  sll          a5, s3, a7
                  slt          a1, gp, s10
166:              slt          a2, tp, a7
                  ori          s1, sp, 1463
                  slt          s4, a7, gp
                  sltiu        a1, t4, -948
                  nop
                  srli         ra, zero, 12
                  blt          s9, s11, 180f
                  bne          s7, s6, 179f
                  auipc        t1, 932123
                  bgeu         t1, s6, 194f
                  bge          t1, s0, 191f
                  srai         a7, t4, 31
                  ori          s8, a2, -523
179:              sll          s11, s11, s11
180:              bne          zero, t4, 183f
                  bge          t3, s2, 197f
                  and          t6, s3, s1
183:              sra          t6, t1, ra
                  bge          s1, a1, 192f
                  sub          a1, t3, s6
                  slti         s1, gp, -983
                  xor          s4, ra, t5
                  add          s5, a3, s6
                  nop
                  beq          s1, s7, 194f
191:              lui          s6, 478556
192:              srai         a2, t6, 23
                  andi         t1, s7, 325
194:              and          s6, tp, t3
                  auipc        a7, 988118
                  auipc        t5, 387667
197:              bltu         s7, s7, 211f
                  sll          t1, a4, a1
                  srai         t1, t2, 3
                  or           a6, ra, s0
                  sra          ra, t3, t1
                  addi         s6, s8, 970
                  or           s4, gp, sp
                  ori          a4, sp, 1241
                  slti         t2, s7, -374
                  nop
                  bltu         s0, s8, 215f
                  sltiu        t1, s8, 639
                  andi         t5, a0, 199
                  srli         s8, a7, 26
211:              lui          s9, 1016975
                  and          zero, t5, s9
                  srli         s11, zero, 1
                  auipc        s2, 747970
215:              bgeu         gp, tp, 225f
                  bge          t0, s0, 236f
                  bltu         s2, ra, 236f
                  bne          a4, zero, 233f
                  add          ra, s1, t2
                  bgeu         s0, t3, 234f
                  sll          a2, a7, s6
                  xori         t5, a5, 919
                  srl          s9, a0, a5
                  and          ra, s4, t6
225:              slti         s8, s5, 463
                  blt          a7, a1, 237f
                  srli         a7, s8, 19
                  srl          tp, s5, t4
                  blt          t0, s4, 230f
230:              sra          zero, a0, a5
                  slli         t2, t5, 26
                  lui          gp, 266981
sub_4_2:          jal          ra, 11f
0:                jal          t1, 14f
1:                jal          ra, 8f
2:                jal          t1, 17f
3:                jal          ra, 6f
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          a5, 9f
7:                jal          ra, 4b
8:                jal          sp, 13f
9:                jal          ra, 12f
10:               jal          ra, 16f
11:               jal          s11, 10b
12:               jal          ra, 18f
13:               jal          ra, 20f
14:               jal          s8, 3b
15:               jal          t1, 19f
16:               jal          t0, 15b
17:               jal          s0, 0b
18:               jal          ra, 1b
19:               jal          t0, 7b
20:               sub          s1, s7, s5
233:              add          a6, a2, sp
234:              lui          a2, 608295
                  auipc        s1, 404709
236:              sltiu        a3, t1, 1793
237:              or           t6, a6, s10
                  or           s0, s6, tp
                  ori          s9, t3, -36
                  slt          s4, ra, t1
                  add          s5, s8, a1
                  sltu         zero, a4, ra
                  beq          a5, s9, 263f
                  slli         t5, s3, 10
                  nop
                  andi         s2, a2, 320
                  and          a1, s0, t5
                  slt          s2, a2, s7
                  sll          a2, a0, a3
                  lui          tp, 257667
                  bne          s1, s2, 269f
                  sub          t2, sp, t3
                  or           a4, s2, t1
                  xori         gp, a0, -310
                  srli         sp, a3, 10
                  bgeu         a4, t3, 263f
                  slli         s1, a1, 29
                  add          sp, s1, t2
                  bgeu         sp, s1, 261f
                  ori          t6, t1, 1693
261:              sltiu        s3, zero, 1644
                  and          a3, a6, s8
263:              xori         gp, a5, -1233
                  xori         a2, s6, 1888
                  and          s5, t5, s0
                  sra          s9, s1, t2
                  ori          t6, s9, 1773
                  sub          s4, s11, s9
269:              sra          tp, tp, a5
                  srl          s9, t6, a5
                  ori          t2, s6, 1075
                  srai         s0, s5, 10
                  sra          t1, a7, s2
                  bge          a4, ra, 292f
                  auipc        s11, 119851
                  nop
                  bgeu         t4, s10, 279f
                  andi         sp, a1, 580
279:              srl          s3, a3, s9
                  lui          ra, 934967
                  sltu         s7, s10, a0
                  add          s5, s7, t3
                  srl          t0, t2, a3
                  sra          a5, s10, s6
                  nop
                  slti         ra, s7, 581
                  add          tp, s8, a3
sub_4_25:         jal          ra, 13f
0:                jal          ra, 16f
1:                jal          a2, 6f
2:                jal          t0, 11f
3:                jal          ra, 8f
4:                jal          ra, 17f
5:                jal          t1, 14f
6:                jal          t1, 4b
7:                jal          ra, 0b
8:                jal          s3, 19f
9:                jal          t1, 12f
10:               jal          s1, 7b
11:               jal          ra, 5b
12:               jal          ra, 1b
13:               jal          t0, 9b
14:               jal          t1, 15f
15:               jal          sp, 10b
16:               jal          t5, 3b
17:               jal          ra, 18f
18:               jal          a2, 2b
19:               auipc        s4, 387420
                  sra          zero, s2, s10
                  xori         s9, t4, 1130
                  slti         s9, t0, -1671
                  sltiu        t5, t1, -794
292:              srai         tp, sp, 6
                  sra          s2, s8, a2
                  ori          s1, s3, -1017
                  beq          s8, t0, 307f
                  or           t1, s11, t6
                  bge          zero, t0, 301f
                  lui          a0, 185060
                  bne          s2, s8, 304f
                  andi         t0, t4, -1235
301:              lui          a5, 16570
                  srl          a0, t1, a7
                  beq          t5, tp, 307f
304:              sub          s11, s2, t1
                  bne          t6, t6, 310f
                  sltiu        t5, s7, 116
307:              and          a5, a5, a5
                  srai         a0, a1, 8
                  slt          t2, s5, s5
310:              add          s5, s7, a5
                  srl          a1, s8, t1
                  srl          a1, s11, zero
                  srli         zero, t1, 7
                  and          s7, ra, a1
                  xori         t6, a7, -1044
                  addi         a6, a6, 787
                  xor          s5, s5, t5
                  slti         a7, a4, 1292
                  andi         t6, s9, 1638
                  srai         t2, ra, 7
                  srl          s11, t5, t5
                  srli         a7, gp, 8
                  blt          s3, a1, 327f
                  auipc        a2, 120764
                  slli         a1, s10, 20
                  nop
327:              or           s3, t0, s8
                  sltiu        a3, s1, 1068
                  srai         s4, s3, 29
                  bne          s6, t1, 349f
                  slt          s6, t6, gp
                  srli         s4, t2, 0
                  sra          t5, s6, a0
                  lui          a5, 265144
                  sltu         s6, gp, t4
                  or           gp, a0, gp
                  andi         a1, s2, -1015
                  sltiu        s7, s4, 1032
                  nop
                  sll          t0, zero, ra
                  xori         t2, t3, 1417
                  nop
                  add          s3, t1, t3
                  bne          a7, a3, 364f
                  lui          a7, 355919
                  bge          s9, a6, 350f
                  beq          t3, s0, 355f
                  srli         s3, t2, 2
349:              bne          s5, a4, 354f
350:              bltu         t1, s8, 358f
                  srli         s6, a1, 15
                  sra          s1, gp, a2
                  sub          s8, t2, tp
354:              bge          gp, a4, 360f
355:              xor          a3, s2, s7
                  andi         s5, sp, 1866
                  bgeu         s8, sp, 373f
358:              sra          zero, sp, t4
                  or           s5, t3, s11
360:              bltu         t4, a2, 363f
                  sll          a7, zero, t3
                  bltu         a4, t4, 363f
363:              bgeu         t3, s1, 366f
364:              slti         a2, s6, -445
                  andi         zero, t1, 1438
366:              nop
                  addi         s8, t4, 275
                  bge          s5, a6, 372f
                  bne          a0, ra, 381f
                  addi         s2, a6, 1388
                  auipc        tp, 349385
372:              srl          s1, a3, a6
373:              lui          s11, 718758
                  nop
                  blt          s9, t1, 390f
                  auipc        t0, 300305
                  or           t0, t3, s8
                  srai         s11, s11, 29
                  srli         a4, t3, 22
                  sll          tp, s2, s4
381:              bne          a6, sp, 395f
                  srl          t0, a0, a0
                  addi         s3, s1, 1728
                  slt          a1, a6, a6
                  lui          tp, 998712
                  srli         s0, t1, 25
                  addi         a3, s1, 1004
                  lui          tp, 672472
                  beq          ra, t1, 408f
390:              sll          a7, a2, a5
                  beq          a4, t0, 396f
                  slt          s11, gp, ra
                  xori         a1, t5, -1870
                  add          ra, s5, a2
395:              bgeu         a2, s10, 411f
396:              nop
                  bltu         s6, a7, 412f
                  bge          s7, a2, 408f
                  sll          s9, s1, ra
                  slti         a7, s3, 285
                  xor          t5, tp, sp
                  slt          s3, s4, s1
                  bltu         s4, s10, 411f
                  ori          s1, s1, 1992
                  addi         s8, s7, 476
                  sub          s1, s3, a0
                  bltu         a3, tp, 427f
408:              slli         ra, t4, 26
                  ori          s2, s8, -1280
                  slt          s9, s10, a1
411:              xori         s8, s3, 715
412:              srl          a4, s7, s4
                  add          zero, s1, t5
                  sub          gp, s7, s6
                  auipc        s0, 623873
                  bltu         s6, s8, 427f
                  bltu         s1, a0, 419f
                  sltu         s2, a4, s2
419:              nop
                  srai         t6, t4, 18
                  slti         a6, s9, 335
                  slli         sp, s6, 26
                  srai         a6, a4, 15
                  sll          s2, s5, s3
                  sltu         s1, s9, ra
                  sub          a5, s3, t4
427:              lui          s9, 882237
                  auipc        a4, 759411
                  sub          a2, t0, a6
                  lui          sp, 565143
                  beq          a7, a0, 449f
                  addi         s1, t0, -1625
                  slt          a1, s7, ra
                  sltiu        sp, t3, -206
                  sll          gp, s7, a5
                  lui          s4, 994749
                  and          t5, t0, s6
                  sltiu        s9, t6, 1604
                  sub          t2, t3, t4
                  slti         a4, tp, 898
                  xor          a4, gp, a4
                  auipc        s7, 414098
                  xor          a4, t1, s4
                  sub          t0, s8, s4
                  sra          s8, s11, t1
                  sltiu        a4, t2, 1362
                  addi         s6, gp, -840
                  sub          a0, a6, s0
449:              sltu         ra, gp, t3
                  add          zero, sp, s10
                  slli         s8, s10, 16
                  sltiu        a5, t5, -66
                  xor          t1, a6, s8
                  srai         s7, s2, 5
                  sub          s5, gp, s4
                  auipc        zero, 453462
                  nop
                  sltu         t1, ra, t0
                  ori          s7, a6, 1286
                  bge          a5, gp, 474f
                  xori         s6, t5, -523
                  bge          s1, t5, 480f
                  bgeu         t6, s1, 465f
                  sll          a0, zero, s9
465:              sltiu        s2, s8, -814
                  bgeu         s6, s4, 473f
                  andi         sp, t6, 560
                  srai         gp, s3, 19
                  sltu         tp, a2, t6
                  srl          a6, t2, ra
                  slt          t1, gp, a7
                  bge          a0, a5, 477f
473:              slli         a1, a5, 5
474:              bge          t2, gp, 478f
                  add          t2, s11, t6
                  beq          a2, t0, 478f
477:              srai         s11, s1, 7
478:              slt          s11, ra, a6
                  add          s3, t0, s4
480:              srl          s2, t5, s3
                  nop
                  lui          a6, 817568
                  srli         a1, s6, 23
                  bge          s3, t3, 486f
                  slti         a7, t2, -130
486:              sll          s0, t2, s10
                  blt          s1, a7, 502f
                  bgeu         a7, s5, 507f
                  beq          s11, s0, 505f
                  xor          s3, a3, a5
                  bltu         s3, a7, 499f
                  or           zero, a0, zero
                  nop
                  or           s2, s3, t1
                  sra          a3, s2, s4
                  ori          s7, s11, 297
                  sra          sp, t0, a7
                  bne          t3, s2, 516f
499:              and          sp, s3, a7
                  and          sp, ra, s4
                  slli         a3, t2, 13
502:              srli         s5, a7, 18
                  add          s7, t4, sp
                  nop
505:              or           a3, t4, s5
                  andi         sp, a6, -2017
507:              nop
                  bgeu         s7, t5, 528f
                  bltu         s4, a4, 510f
510:              slli         tp, a3, 5
                  slli         s7, a7, 15
                  bge          s1, s3, 515f
                  xori         a2, s9, 1506
                  sltu         ra, a3, s0
515:              nop
516:              add          t0, a0, sp
                  xori         s11, a0, 1953
                  sub          s2, s4, t2
                  bne          t6, sp, 529f
                  slli         s2, a3, 8
                  add          ra, ra, t0
                  sltiu        s0, ra, 1478
                  xori         gp, a0, 93
                  xor          a5, a1, a1
                  sll          a6, s8, t5
                  nop
                  sltiu        a7, t4, 1975
528:              bne          sp, a5, 540f
529:              xor          tp, t5, s6
                  beq          a0, t5, 534f
                  bne          a1, a7, 551f
                  sll          s11, s7, s2
                  slt          s11, t5, t3
534:              auipc        zero, 649613
                  and          t1, s5, zero
                  bge          a0, s11, 544f
                  nop
                  blt          a2, a5, 557f
                  bgeu         s8, a1, 545f
540:              sra          a5, s6, ra
                  beq          a4, a7, 552f
                  bge          t1, t3, 547f
                  xori         s1, t3, -1242
544:              ori          s0, s8, -1719
545:              or           a1, s5, tp
                  sll          s2, s1, a5
547:              slti         a3, zero, 694
                  bgeu         s10, t5, 562f
                  slt          s6, sp, a4
                  slli         t1, s8, 5
551:              sll          s9, t6, tp
552:              bne          t3, s9, 566f
                  sll          s7, gp, s9
                  bge          t1, t2, 557f
                  sll          s11, a4, s8
                  sll          a4, a5, t1
557:              or           s9, a1, t2
                  xor          s9, a1, a5
                  sltu         s0, t0, gp
                  srli         a2, zero, 15
                  slt          zero, t1, a0
562:              srl          t6, s7, a3
                  bne          tp, a6, 571f
                  auipc        t1, 140320
                  xor          a7, tp, a0
566:              bgeu         s5, zero, 570f
                  ori          t2, tp, -890
                  slt          ra, s3, t4
                  sra          s5, s9, ra
570:              andi         sp, t4, -713
571:              slli         a0, t1, 27
                  and          a2, a3, zero
                  bltu         s10, s9, 591f
                  sub          a4, sp, s10
                  slt          a2, a1, t4
                  sltu         a1, a1, gp
                  bgeu         s2, a7, 584f
                  sltu         t2, s9, a7
                  auipc        gp, 515478
                  xori         s1, tp, 528
                  bgeu         t5, s11, 597f
                  blt          gp, s3, 597f
                  bltu         tp, a2, 595f
584:              or           ra, s11, s9
                  add          a2, a3, a2
                  srli         s7, t0, 25
                  bgeu         zero, s10, 590f
                  sltiu        t0, s2, 1816
                  xor          s1, t0, a0
590:              sltiu        a0, a5, -497
591:              sltiu        a6, s6, 242
                  andi         s9, a4, -1414
                  xor          s6, sp, a6
                  andi         s11, s1, -146
595:              blt          t0, a4, 609f
                  srl          a1, s0, s0
597:              bne          s8, s3, 605f
                  bgeu         s11, t6, 605f
                  auipc        a5, 385037
                  bge          t0, s0, 604f
                  sltiu        s7, tp, -1459
                  ori          tp, s10, -1616
                  sltiu        a4, t4, 1989
604:              srl          a2, s5, t4
605:              nop
                  sltu         s2, a3, a5
                  sra          t5, t0, sp
                  slli         s6, s2, 29
609:              auipc        s2, 831341
                  add          a5, ra, t3
                  auipc        t5, 109647
                  slti         a4, s1, 916
                  slli         s4, s7, 26
                  andi         gp, t5, -1544
                  andi         a3, t6, -1582
                  srli         s6, ra, 27
                  beq          a2, s4, 628f
                  slti         t0, a3, 770
                  sra          s11, s3, sp
                  slti         s7, s1, -692
                  bne          s8, t6, 627f
                  sltiu        t6, t3, 862
                  sltiu        s5, a7, -1834
                  auipc        a0, 716535
                  srl          a2, s10, a6
                  ori          gp, s6, 189
627:              bltu         sp, s7, 631f
628:              srai         s8, s1, 16
                  andi         s9, t2, -616
                  and          t6, s11, t0
631:              sltiu        a7, ra, 1034
                  or           s6, s0, s3
                  bne          a2, t6, 651f
                  slti         gp, t2, -692
                  sra          s6, t5, t3
                  sra          s4, a3, tp
                  sra          ra, s0, s10
                  slt          t6, a7, a4
                  sub          t6, s4, t2
                  nop
                  slt          tp, t2, a5
                  xori         s4, a6, 1045
                  slt          t6, t2, a4
                  nop
                  blt          s9, gp, 655f
                  sltu         a5, s4, a3
                  xor          t0, a2, s10
                  srl          a3, s11, a1
                  srl          s4, a2, zero
                  slli         a2, s11, 22
651:              lui          a2, 392575
                  beq          ra, a0, 655f
                  bge          t2, a5, 657f
                  srai         a4, t2, 22
655:              srli         a2, s10, 27
                  blt          s11, a1, 676f
657:              nop
                  add          a7, s7, s3
                  and          s8, a7, t3
                  bltu         a5, s9, 662f
                  blt          s0, s9, 669f
662:              bgeu         ra, t3, 682f
                  and          s11, s8, a0
                  andi         s5, a6, 146
                  add          t0, s2, a7
                  or           zero, s4, s8
                  andi         a2, a4, -874
                  lui          a7, 743553
669:              xor          s8, ra, s0
                  beq          ra, a7, 685f
                  andi         s4, s2, 114
                  sra          s0, gp, a6
                  bltu         t1, s6, 678f
                  bne          a6, s0, 690f
                  xori         a2, s3, 1620
676:              lui          s8, 728726
                  beq          a1, ra, 682f
678:              sra          s1, ra, s7
                  and          s7, a2, t1
                  bgeu         t2, tp, 696f
                  bne          ra, s3, 695f
682:              beq          s3, s5, 700f
                  bgeu         t5, s7, 684f
684:              sll          s3, s0, s9
685:              addi         s5, t6, -355
                  xori         s5, a4, 804
                  srl          ra, a6, tp
                  nop
                  nop
690:              bgeu         t0, a5, 709f
                  bne          s2, a3, 693f
                  or           s6, t5, tp
693:              xori         s3, t0, 1558
                  slt          a0, s9, t5
695:              srai         t5, t6, 1
696:              sltu         zero, s0, gp
                  nop
                  bge          s10, a4, 713f
                  and          zero, s9, a1
700:              auipc        t5, 715192
                  srli         a2, s10, 17
                  srai         a6, t4, 25
                  bne          s5, a4, 722f
sub_4_15:         jal          ra, 14f
0:                jal          t1, 7f
1:                jal          t1, 11f
2:                jal          s1, 15f
3:                jal          t1, 10f
4:                jal          s11, 19f
5:                jal          ra, 1b
6:                jal          t1, 20f
7:                jal          a7, 6b
8:                jal          ra, 2b
9:                jal          t1, 8b
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               jal          s3, 5b
13:               jal          gp, 12b
14:               jal          t1, 16f
15:               jal          sp, 18f
16:               jal          t6, 17f
17:               jal          a3, 9b
18:               jal          t0, 13b
19:               jal          ra, 0b
20:               auipc        s1, 909272
                  andi         a1, t5, 1456
                  bge          s0, t6, 713f
                  add          s2, t6, t3
                  and          zero, t4, s3
                  srai         s0, t1, 6
709:              srli         sp, sp, 17
                  xor          t1, s11, s0
                  addi         t5, s6, -1541
                  slt          s1, s9, s11
713:              sra          s9, t5, a3
                  sub          t0, s2, s6
                  slt          t0, s3, t4
                  nop
                  sra          a3, s6, zero
                  blt          s5, gp, 732f
                  srl          t2, s4, sp
                  and          s1, s3, s0
                  auipc        s4, 470982
722:              bltu         s2, s10, 725f
                  sra          a4, ra, t1
                  lui          s6, 512078
725:              srai         s1, s0, 19
                  slli         a3, s7, 0
                  bgeu         a7, a6, 747f
                  sub          s5, s8, s1
                  bgeu         s5, s7, 737f
                  srai         s2, t0, 4
                  ori          a0, s11, -443
732:              and          tp, s6, s9
                  xor          s1, s2, a3
                  slli         ra, s3, 12
                  srai         s4, t0, 29
                  blt          a5, s9, 742f
737:              lui          t1, 459038
                  xor          s11, ra, s3
                  sra          s5, a2, s4
                  bgeu         tp, s8, 754f
                  blt          s11, ra, 749f
742:              slli         s1, t1, 11
                  ori          t2, s1, -206
                  add          s3, s6, t3
                  add          a5, t5, sp
                  ori          tp, t1, 901
747:              srl          t5, s3, a1
                  add          tp, tp, s5
749:              or           s8, a0, gp
                  add          a0, s1, gp
                  sltiu        gp, t6, -98
                  andi         s2, a6, 1380
                  ori          zero, t5, 1857
754:              add          a2, s1, s4
                  srli         s2, s9, 22
                  addi         t5, a6, 1304
                  beq          a5, a6, 772f
sub_4_9:          jal          ra, 17f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          t0, 0b
3:                jal          ra, 4f
4:                jal          t1, 19f
5:                jal          ra, 14f
6:                jal          a1, 23f
7:                jal          ra, 24f
8:                jal          tp, 18f
9:                jal          ra, 20f
10:               jal          ra, 5b
11:               jal          t1, 12f
12:               jal          t1, 3b
13:               jal          t1, 2b
14:               jal          ra, 21f
15:               jal          ra, 9b
16:               jal          ra, 7b
17:               jal          a4, 13b
18:               jal          ra, 22f
19:               jal          s6, 16b
20:               jal          ra, 8b
21:               jal          ra, 15b
22:               jal          ra, 11b
23:               jal          s2, 10b
24:               sltiu        a3, s4, -941
                  bltu         t0, s6, 763f
                  slti         a2, s3, 14
                  lui          s2, 227886
                  auipc        a4, 318593
                  nop
763:              bltu         t4, s2, 765f
                  beq          s3, t2, 775f
765:              srai         a1, s9, 30
                  and          t1, s7, tp
                  sltiu        sp, t0, 2046
                  bge          sp, s10, 772f
                  xor          s1, a3, a1
                  sltu         t0, s1, a2
                  xori         s11, a4, 1541
772:              sll          t0, s8, t2
                  and          t5, t4, t6
                  slti         a2, t5, -286
775:              xori         s2, t1, -568
                  sub          a2, t2, t4
                  sub          a5, t0, t3
                  nop
                  srli         a2, s1, 17
                  add          a6, t3, t1
                  ori          sp, t4, -1555
                  and          s2, t3, s9
                  srl          s2, s0, a7
                  srl          s11, t6, t4
                  or           a2, t6, s0
                  slti         s0, tp, 1943
                  auipc        t6, 581870
                  blt          s8, gp, 792f
                  slti         t2, s11, 668
                  srl          s5, s5, s3
                  ori          t1, s4, -1478
792:              srai         s3, a4, 2
                  auipc        s6, 800420
                  sra          tp, t0, s11
                  blt          s9, s10, 798f
                  xori         s0, a7, 496
                  slli         a6, a7, 0
798:              bltu         s5, t5, 802f
                  srli         t2, s7, 5
                  or           a5, zero, s3
                  bgeu         s11, s2, 816f
802:              sra          s1, t3, s8
                  sra          a1, s8, s8
                  bgeu         a4, s9, 809f
                  beq          s4, a2, 806f
806:              auipc        sp, 270082
                  and          t6, s4, t2
                  add          gp, s3, s1
809:              srai         s4, a2, 25
                  srai         a0, a1, 8
                  lui          s9, 995727
                  slt          s0, t6, t3
                  bge          s4, s3, 832f
                  bltu         a2, s6, 832f
                  sltu         t5, t6, t0
816:              addi         a6, s6, 1457
                  xori         s3, a6, -141
                  sra          a2, a6, s0
                  slli         s0, a2, 22
                  slli         s3, s8, 9
                  slt          t5, t0, s3
                  bge          tp, ra, 840f
                  sltiu        s3, t5, 1369
                  ori          a7, t1, 1260
                  auipc        ra, 971051
                  sltu         s9, s1, s11
                  bne          a5, a0, 837f
                  or           a6, s2, s8
                  sltu         s5, tp, s7
                  auipc        a2, 888385
                  bgeu         s5, a2, 833f
832:              slti         a1, zero, -1906
833:              bgeu         zero, s1, 852f
                  blt          t5, t1, 850f
                  auipc        s1, 520466
                  bltu         a2, t3, 843f
837:              slt          s1, zero, tp
                  bltu         ra, s2, 858f
                  slti         a1, gp, 1817
840:              and          s8, a0, tp
                  blt          s4, t2, 853f
                  beq          t2, t4, 858f
843:              addi         t6, s0, 1228
                  sll          s7, a4, a5
                  sltiu        gp, sp, -688
                  sltiu        sp, s9, 1658
                  sltiu        s0, s1, 1284
                  sub          a5, t1, s2
                  blt          zero, t4, 857f
850:              or           s9, s11, tp
                  ori          a2, a0, 1579
sub_4_10:         jal          ra, 17f
0:                jal          ra, 8f
1:                jal          s1, 3f
2:                jal          ra, 9f
3:                jal          ra, 20f
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          ra, 13f
9:                jal          ra, 6b
10:               jal          ra, 19f
11:               jal          s11, 18f
12:               jal          ra, 14f
13:               jal          s0, 2b
14:               jal          ra, 1b
15:               jal          t1, 5b
16:               jal          ra, 4b
17:               jal          a1, 10b
18:               jal          t5, 0b
19:               jal          a0, 15b
20:               sltiu        a6, s4, -1382
852:              slti         s0, s3, -1106
853:              beq          s10, a5, 869f
                  bge          gp, s1, 873f
                  slli         a2, t0, 30
                  beq          t0, ra, 858f
857:              auipc        t2, 547797
858:              sub          s3, s11, t4
                  blt          s7, t0, 873f
                  sltiu        s11, zero, 760
                  nop
                  auipc        s7, 267310
                  bne          zero, s11, 878f
                  xor          s7, a6, a6
                  beq          s11, s6, 873f
                  xori         s5, a4, 1805
                  sra          a4, a2, ra
                  sub          t5, t5, s0
869:              slli         s5, t4, 0
                  bltu         gp, s3, 886f
                  blt          a7, t0, 876f
                  beq          s7, a7, 883f
873:              srl          s6, s0, s10
                  add          s0, a6, a7
                  sub          tp, a5, a6
876:              slli         t2, a7, 1
                  beq          t3, s4, 897f
878:              andi         t1, a5, 1867
                  sll          s2, s2, s4
                  add          s2, s6, a1
                  addi         ra, t0, 1051
                  sub          a7, sp, s6
883:              sub          s11, a5, s10
                  add          a1, t4, s2
                  xor          sp, zero, zero
886:              or           zero, t5, a0
                  sra          t2, t0, s10
                  bge          s10, gp, 907f
                  slt          s7, t3, sp
                  srl          s6, a1, gp
                  srl          a7, a3, t6
                  andi         t0, a1, 1727
                  bge          t1, a6, 901f
                  beq          t1, a5, 912f
                  addi         s1, s0, 1405
                  slt          a0, s9, a7
897:              srli         t1, s1, 4
                  nop
                  or           gp, sp, a6
                  xor          s5, t5, t0
901:              slti         a7, s5, 946
                  bne          a5, a7, 910f
                  nop
                  auipc        s5, 708354
                  nop
                  xor          s8, zero, s0
907:              sltiu        sp, sp, 802
                  srli         gp, t5, 25
                  andi         a4, t6, -307
910:              addi         t2, s10, -42
                  or           s5, a1, s0
912:              xori         s9, a2, 1280
                  srli         t0, t6, 8
                  blt          s6, s0, 924f
                  bge          s11, tp, 919f
                  lui          s0, 768920
                  sub          a1, s3, s3
                  slt          t1, s6, a0
919:              srai         a2, s2, 27
                  bgeu         s11, t0, 935f
                  auipc        a6, 464561
                  sub          s5, s0, a7
                  addi         s11, t4, -360
924:              sll          a2, a2, t4
                  sltu         s4, s11, a4
                  sub          a3, tp, t6
                  sra          gp, a1, s11
                  slt          a3, a7, t6
                  nop
                  lui          tp, 917629
                  bgeu         t5, s2, 936f
                  and          zero, t5, s7
                  blt          s8, a4, 935f
                  sltu         s11, a2, t1
935:              sub          s2, a4, s0
936:              add          s8, s10, a1
                  sltu         a7, a6, s2
                  sra          a5, zero, tp
                  addi         a5, gp, 941
                  srl          s11, tp, tp
                  nop
                  srl          a3, s7, t2
                  srli         s1, s8, 3
                  sltu         t0, tp, s7
                  auipc        a1, 124782
                  andi         gp, a5, 945
                  sltu         a4, s9, a7
                  srai         t5, t4, 29
                  sra          s0, s1, a1
                  sll          s5, a5, s2
sub_4_5:          jal          ra, 5f
0:                jal          s11, 18f
1:                jal          t1, 7f
2:                jal          ra, 21f
3:                jal          ra, 1b
4:                jal          t1, 0b
5:                jal          tp, 4b
6:                jal          ra, 8f
7:                jal          s8, 16f
8:                jal          ra, 11f
9:                jal          t1, 13f
10:               jal          a4, 9b
11:               jal          s9, 10b
12:               jal          ra, 3b
13:               jal          ra, 19f
14:               jal          t1, 6b
15:               jal          ra, 20f
16:               jal          t1, 2b
17:               jal          t1, 12b
18:               jal          ra, 17b
19:               jal          tp, 15b
20:               jal          ra, 23f
21:               jal          s1, 22f
22:               jal          ra, 14b
23:               or           gp, tp, s2
                  andi         s9, a5, 678
                  addi         s7, s3, -442
                  and          a6, s0, s3
                  xor          ra, a4, sp
                  andi         ra, s6, -548
                  or           ra, zero, s11
                  add          a6, t0, t0
                  xori         s3, s7, 1140
                  slt          a3, a3, s1
                  bgeu         a6, t0, 964f
                  bltu         s0, ra, 964f
                  beq          s4, s11, 966f
                  sra          t1, s4, s3
964:              lui          s8, 485630
                  andi         t0, t2, -1891
966:              bne          tp, s0, 984f
                  xor          s8, s9, s9
                  sltiu        s9, s2, 1582
                  bltu         ra, s10, 976f
                  srai         a0, a1, 24
                  srli         sp, s1, 22
                  auipc        ra, 333599
                  addi         s6, a5, -1662
                  addi         a5, t5, 283
                  srl          s1, s11, t2
976:              sra          a3, a6, zero
                  bge          a1, s6, 991f
                  addi         s9, s1, -740
                  bgeu         s9, s9, 980f
980:              andi         sp, a6, 1944
                  sub          s4, s9, a5
                  bne          s11, t5, 985f
                  srl          s11, a4, s5
984:              sra          a0, s11, s5
985:              sltiu        t0, a6, 568
                  bltu         s9, t2, 998f
                  and          tp, zero, t3
                  slti         s2, s5, -1829
                  bgeu         s6, t5, 1009f
                  nop
991:              slt          t1, sp, a2
                  or           a7, gp, s0
                  bltu         s11, s10, 999f
                  xori         ra, t5, -693
                  sra          a0, a5, s4
                  sltiu        a7, s3, 1174
                  sra          t1, s8, s4
998:              sra          s9, s10, t4
999:              and          s9, s0, t4
                  sll          a7, a6, t2
                  sltiu        s3, s2, 1277
                  sltu         a7, t1, a5
                  xori         s4, s5, 913
                  and          a6, a1, s0
                  slli         zero, a0, 26
                  sub          t6, a1, s6
                  addi         a7, a0, -27
                  bge          gp, s5, 1026f
1009:             sltu         a6, t2, s7
                  srli         t1, s7, 26
                  xori         t5, a5, -1354
                  bge          zero, s5, 1016f
                  slli         s0, s5, 5
                  or           s8, a1, s7
                  xori         gp, s7, -267
1016:             or           s0, s10, s8
                  sra          s5, a0, s1
                  sll          a6, tp, t3
                  xori         a0, tp, -1221
                  add          a0, zero, t1
                  sltiu        s9, t6, -1338
                  addi         a2, a0, -222
                  xori         s1, a6, -1806
                  srli         s2, s7, 8
                  addi         a5, s0, 1953
1026:             ori          a5, s7, -1758
                  beq          t4, a3, 1031f
                  auipc        a5, 1012515
                  sub          s7, s9, s9
                  sltu         t6, a1, gp
1031:             andi         s6, s0, 711
                  sra          s4, gp, s8
                  beq          a5, a1, 1041f
                  xor          s3, ra, s0
                  bgeu         s9, s4, 1050f
                  srl          a4, a7, a3
                  sll          a2, s1, t6
                  sll          zero, s11, s5
                  srl          a3, t5, zero
                  or           ra, a1, a6
1041:             xori         a0, t6, 1834
                  slti         t0, a7, 496
                  sltu         s4, a5, s10
                  and          s5, s6, t0
                  sub          sp, sp, s1
                  lui          tp, 1033615
                  xor          t0, t5, t0
                  srl          t5, t1, a4
                  slti         zero, t0, -468
1050:             ori          sp, s10, 595
                  srli         ra, s10, 27
                  xor          a5, t5, s4
                  bgeu         zero, sp, 1063f
                  add          a7, t3, ra
                  slli         t0, gp, 15
                  sll          sp, sp, t6
                  bge          t0, ra, 1059f
                  slti         t2, a1, -1428
1059:             sra          tp, s11, s5
                  srli         s6, t5, 24
                  srli         s11, s10, 13
                  auipc        t1, 250634
1063:             sra          a6, s5, s6
                  sll          a7, a1, t6
                  xor          s7, a2, tp
                  xor          zero, t6, t6
                  sltiu        s8, s8, 686
                  lui          t5, 26573
                  addi         tp, tp, -1928
                  sltu         t5, t3, s10
                  sltu         s9, s1, s9
                  sll          a5, s4, s6
                  add          t6, s10, a4
                  sub          s6, a0, t2
                  bge          s6, s5, 1087f
                  slti         ra, t5, 1642
                  bne          a1, gp, 1091f
                  sra          a2, t1, a6
                  xori         t1, a6, -1421
                  sra          t5, a0, zero
                  bge          a0, a1, 1100f
                  beq          a6, s11, 1093f
                  xor          sp, s6, t1
                  and          s4, t3, t5
                  bltu         a7, tp, 1092f
                  sra          s8, s4, s11
1087:             or           tp, gp, gp
                  xor          s8, t5, a3
                  addi         s8, a1, -1948
                  sltiu        s4, a6, -355
1091:             lui          s7, 819635
1092:             ori          t5, a4, -1440
1093:             bne          s0, s8, 1095f
                  ori          s7, s0, -1948
1095:             bge          s5, a5, 1096f
1096:             sltu         s8, a5, ra
                  srl          s8, s4, a0
                  sltiu        s8, s10, 651
                  slli         s9, s7, 25
1100:             xor          a5, s9, s10
                  add          t5, a2, t4
                  srai         s8, s4, 22
                  sltiu        a2, a0, -1909
                  bge          t3, s2, 1109f
                  auipc        ra, 383082
                  add          s2, s1, gp
                  srli         a6, t4, 25
                  addi         t6, a7, 654
1109:             slti         s3, t4, 7
                  sltu         a7, tp, s0
                  sra          a4, s7, t5
                  bgeu         a0, a7, 1128f
                  srl          a0, s7, s7
                  sra          gp, s0, a7
                  srai         s3, a5, 21
                  sub          s7, s8, t4
                  sra          t0, a6, t5
                  addi         s2, s1, -986
                  xori         a0, s7, 94
                  srli         s4, s3, 18
sub_4_13:         jal          ra, 13f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          sp, 0b
4:                jal          ra, 3b
5:                jal          s2, 4b
6:                jal          t1, 8f
7:                jal          tp, 6b
8:                jal          s8, 5b
9:                jal          s11, 7b
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          s1, 1b
13:               jal          ra, 9b
14:               sltu         s6, s7, s6
                  lui          s1, 355748
                  sltu         sp, s11, t0
                  srai         a1, a3, 9
                  nop
                  add          gp, zero, a4
                  blt          ra, s8, 1132f
                  beq          a2, s1, 1141f
1128:             blt          s2, a7, 1148f
                  slti         s3, a3, -1657
                  sltu         s7, zero, a4
                  bne          a7, t4, 1134f
1132:             bne          a5, t3, 1150f
                  slli         s9, a1, 9
1134:             lui          s8, 479491
                  sub          s8, t2, t1
                  bltu         a3, s6, 1155f
                  lui          a1, 495730
                  slli         s2, zero, 1
                  bltu         s5, s1, 1154f
                  add          ra, s5, t5
1141:             xori         tp, a5, 1842
                  and          t1, a7, a1
                  srl          t5, t3, tp
                  sltiu        s2, t5, 632
                  add          a6, a2, a5
                  bltu         s10, tp, 1166f
                  slt          s1, gp, t1
1148:             bge          s11, a1, 1152f
                  sra          zero, t3, s11
1150:             and          tp, a6, a1
                  add          s8, s9, ra
1152:             xor          s4, a4, a4
                  sub          a0, t5, s10
1154:             xori         tp, tp, -1332
1155:             lui          a2, 1033975
                  addi         gp, a4, -1270
                  bne          t4, a6, 1165f
                  or           s1, t2, zero
                  sll          a6, t5, s8
                  sub          s1, s10, gp
                  bgeu         s10, zero, 1177f
                  srl          s6, t4, s3
                  xor          t2, s1, t4
                  srl          t1, s1, sp
1165:             bge          s0, s2, 1173f
1166:             ori          s6, t4, 649
                  sub          a4, a3, t5
                  and          s2, tp, s5
                  bltu         gp, s5, 1174f
                  add          a3, s10, s2
                  auipc        a1, 819884
                  bge          a4, a0, 1175f
1173:             or           a0, s7, t1
1174:             addi         a6, t6, 971
1175:             nop
                  bge          a1, s9, 1196f
1177:             bne          t6, t1, 1197f
                  auipc        s5, 37759
                  xori         a1, a3, 181
                  nop
                  sltiu        sp, s7, -150
                  sub          s5, t6, s7
                  auipc        s8, 606326
                  sltu         t2, s5, a0
                  beq          s8, ra, 1187f
                  slt          sp, t2, a1
1187:             auipc        s0, 19105
                  xor          tp, a5, t0
                  lui          t2, 498633
                  add          a0, a7, a4
                  beq          s3, s6, 1210f
                  bgeu         ra, a2, 1196f
                  xor          t0, s5, s9
                  sltiu        a0, t1, 204
                  srli         s7, a0, 17
1196:             sra          ra, a4, a0
1197:             blt          a3, t4, 1211f
                  bgeu         s10, a6, 1216f
                  lui          t6, 630714
                  slti         t1, t6, 1746
                  xor          s9, a4, a3
                  or           tp, a5, tp
                  sltu         s6, a5, t5
                  slli         s4, t6, 22
                  slli         a2, s2, 6
                  or           t5, a6, s5
                  add          gp, s4, t6
                  sltiu        a2, t6, 1585
                  slti         a5, t3, -453
1210:             bne          a5, s0, 1215f
1211:             sltiu        sp, t4, -1392
                  and          gp, a4, t4
                  slli         t0, ra, 23
                  sltiu        s11, t6, -530
1215:             xor          sp, s10, zero
1216:             nop
                  beq          s4, s7, 1225f
                  bgeu         s6, a6, 1222f
                  bgeu         s3, s9, 1225f
                  sra          s7, s7, s1
                  srl          a5, a1, t6
1222:             add          t1, a3, s4
                  sltiu        s9, s6, 1802
                  sub          t5, a6, sp
1225:             srai         s1, tp, 24
                  slti         tp, s1, -2038
                  addi         s11, t5, 2022
                  bne          zero, s1, 1242f
                  andi         s6, t4, -531
                  slti         tp, t3, 1743
                  srl          zero, sp, t5
                  bge          t6, a2, 1242f
                  auipc        s4, 1023490
                  bgeu         t2, a0, 1241f
                  auipc        a5, 149581
                  slti         a4, t0, -1179
                  bge          t4, s3, 1238f
1238:             slt          s8, a0, t4
                  xor          t5, a6, t5
                  or           s2, a7, t6
1241:             sltiu        tp, t5, -1485
1242:             or           a7, ra, t6
                  beq          t1, s0, 1246f
                  sub          s2, s6, zero
                  sltiu        s8, gp, 306
1246:             sltiu        s4, tp, -1078
                  bne          tp, s11, 1255f
                  bltu         a3, a6, 1266f
                  sll          gp, s10, a6
                  sltiu        ra, t0, -611
                  bltu         s5, tp, 1267f
                  bne          t1, s1, 1260f
                  xori         t2, s8, 982
                  srli         s0, a3, 7
1255:             sra          s11, tp, s8
                  add          a6, s2, sp
                  bne          ra, a0, 1272f
                  blt          t6, s7, 1277f
                  bge          tp, a2, 1261f
1260:             sub          t5, sp, a0
1261:             and          s7, s4, ra
                  bge          t1, t2, 1266f
                  add          zero, s3, s7
                  bgeu         sp, tp, 1275f
                  blt          t6, a0, 1281f
1266:             blt          s8, a6, 1278f
1267:             add          tp, ra, a2
                  beq          s6, t6, 1271f
                  andi         a2, a2, 544
                  blt          s11, s4, 1275f
1271:             blt          s8, a2, 1286f
1272:             or           zero, t6, a0
                  bge          t3, ra, 1281f
                  bltu         a5, t5, 1279f
1275:             beq          ra, s2, 1279f
                  sltiu        a0, gp, -1691
1277:             or           sp, t6, s3
1278:             ori          s2, tp, 529
1279:             sll          a7, s9, ra
                  nop
1281:             sub          ra, ra, s3
                  lui          t6, 162325
                  bge          t6, s2, 1302f
                  srl          s9, s8, t4
                  xor          a2, t1, a1
1286:             blt          a0, s10, 1289f
                  and          s11, zero, t6
                  nop
1289:             andi         t0, ra, 429
                  beq          t4, a1, 1308f
                  xori         tp, a1, 1847
                  slli         t6, s5, 6
                  slti         s7, s0, 1432
                  addi         s5, s4, -1582
                  or           s3, a0, s7
                  bgeu         tp, s3, 1312f
                  addi         a2, a3, 420
                  bne          s1, t4, 1299f
1299:             srl          s2, sp, t5
                  slti         a4, s3, 1613
                  xori         a4, a6, -160
1302:             bne          a2, s8, 1321f
                  or           a3, s2, sp
                  auipc        s6, 891527
                  slt          s5, t4, a1
                  slt          sp, s6, sp
                  or           s0, s9, a1
1308:             sltiu        s8, t3, 2027
                  bge          sp, s5, 1323f
                  auipc        zero, 385761
                  bne          tp, a6, 1316f
1312:             bltu         a4, ra, 1320f
                  beq          t1, s2, 1317f
                  sltiu        a7, s5, -67
                  andi         t6, s1, -92
1316:             or           a2, t2, t0
1317:             sra          t1, t6, s11
                  slt          a6, s2, s3
                  sll          t2, t5, s11
1320:             sra          s0, a0, s3
1321:             srai         a5, a5, 16
                  bne          s11, s6, 1334f
1323:             slt          tp, t0, a1
                  nop
                  auipc        s0, 377220
                  bge          t6, t3, 1346f
                  slli         s3, t1, 13
                  slti         a0, gp, -1748
                  slli         s0, t2, 6
                  xor          tp, gp, s5
                  ori          t2, t0, 1757
                  srai         t5, t3, 19
                  sub          s3, a2, a0
1334:             andi         s0, a1, -404
                  or           sp, t4, t6
                  beq          s6, s4, 1338f
                  bge          t6, t6, 1352f
1338:             bne          a7, t4, 1352f
                  add          a6, s3, t3
                  srli         s11, ra, 29
                  addi         a0, tp, 1148
                  ori          s6, a6, -1620
                  sltu         a3, s6, a6
                  blt          t2, s1, 1351f
                  add          s3, s1, t3
1346:             addi         s6, ra, 1642
                  lui          s0, 880580
                  add          s8, s1, a0
                  add          s9, a1, t1
                  andi         sp, s7, -450
1351:             bltu         a2, t1, 1352f
1352:             xor          a0, t3, a7
                  lw           ra, 4(t3)
                  sra          t0, s7, t4
                  slt          s1, a3, t1
                  add          t0, a7, a0
                  nop
                  srli         a4, t2, 15
                  addi         t3, t3, 64
                  sll          s11, a3, t4
1987:             addi x25, x1, 0
1987:             jalr x25, x25, 0
sub_5:            lui          t6, 931064
                  bge          s2, tp, sub_5_stack_p
                  slli         a5, sp, 23
sub_5_stack_p:    addi         t3, t3, -32
                  ori          gp, tp, 1131
                  sw           ra, 4(t3)
                  or           sp, a4, s6
                  andi         s0, s9, -341
                  and          s4, t5, t2
                  slli         t6, t5, 4
                  nop
                  sra          t0, tp, s3
                  auipc        zero, 141645
sub_5_2:          jal          ra, 5f
0:                jal          ra, 15f
1:                jal          ra, 13f
2:                jal          s9, 20f
3:                jal          ra, 10f
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          t1, 3b
7:                jal          ra, 16f
8:                jal          gp, 6b
9:                jal          t1, 0b
10:               jal          ra, 4b
11:               jal          ra, 19f
12:               jal          ra, 8b
13:               jal          t1, 11b
14:               jal          t5, 22f
15:               jal          t1, 14b
16:               jal          sp, 18f
17:               jal          t1, 1b
18:               jal          t1, 17b
19:               jal          ra, 21f
20:               jal          s2, 9b
21:               jal          t1, 12b
22:               nop
sub_5_10:         jal          ra, 26f
0:                jal          t1, 19f
1:                jal          s8, 3f
2:                jal          ra, 7f
3:                jal          a3, 9f
4:                jal          tp, 15f
5:                jal          ra, 16f
6:                jal          t1, 5b
7:                jal          s11, 17f
8:                jal          t0, 2b
9:                jal          t1, 4b
10:               jal          t1, 25f
11:               jal          t1, 10b
12:               jal          t1, 1b
13:               jal          tp, 11b
14:               jal          ra, 27f
15:               jal          ra, 24f
16:               jal          ra, 22f
17:               jal          t1, 23f
18:               jal          ra, 6b
19:               jal          ra, 14b
20:               jal          ra, 21f
21:               jal          a3, 13b
22:               jal          ra, 12b
23:               jal          s11, 0b
24:               jal          ra, 8b
25:               jal          ra, 18b
26:               jal          ra, 20b
27:               jal          t1, 28f
28:               slt          s11, a5, ra
sub_5_3:          jal          ra, 14f
0:                jal          t0, 12f
1:                jal          t1, 10f
2:                jal          s7, 6f
3:                jal          ra, 17f
4:                jal          ra, 2b
5:                jal          ra, 13f
6:                jal          s3, 18f
7:                jal          ra, 11f
8:                jal          ra, 20f
9:                jal          ra, 19f
10:               jal          ra, 15f
11:               jal          gp, 4b
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               jal          t1, 16f
15:               jal          ra, 0b
16:               jal          tp, 3b
17:               jal          ra, 1b
18:               jal          ra, 5b
19:               jal          ra, 7b
20:               nop
sub_5_1:          jal          ra, 12f
0:                jal          ra, 8f
1:                jal          s6, 5f
2:                jal          ra, 4f
3:                jal          t1, 0b
4:                jal          t1, 10f
5:                jal          ra, 6f
6:                jal          s7, 3b
7:                jal          s6, 9f
8:                jal          a0, 13f
9:                jal          t1, 1b
10:               jal          ra, 7b
11:               jal          t1, 2b
12:               jal          ra, 11b
13:               auipc        s1, 470318
sub_5_7:          jal          ra, 17f
0:                jal          a1, 4f
1:                jal          t1, 7f
2:                jal          ra, 1b
3:                jal          t1, 8f
4:                jal          ra, 20f
5:                jal          ra, 0b
6:                jal          ra, 18f
7:                jal          ra, 16f
8:                jal          t1, 14f
9:                jal          t0, 5b
10:               jal          s9, 6b
11:               jal          t1, 15f
12:               jal          ra, 3b
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          ra, 19f
16:               jal          ra, 13b
17:               jal          a3, 9b
18:               jal          ra, 21f
19:               jal          ra, 2b
20:               jal          ra, 12b
21:               sra          s6, a7, a3
sub_5_5:          jal          ra, 1f
0:                jal          s7, 9f
1:                jal          sp, 5f
2:                jal          t1, 22f
3:                jal          ra, 26f
4:                jal          s5, 11f
5:                jal          ra, 2b
6:                jal          t1, 13f
7:                jal          ra, 12f
8:                jal          ra, 4b
9:                jal          ra, 20f
10:               jal          t1, 18f
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          ra, 21f
14:               jal          s6, 8b
15:               jal          t1, 24f
16:               jal          ra, 0b
17:               jal          ra, 23f
18:               jal          t1, 25f
19:               jal          ra, 6b
20:               jal          sp, 19b
21:               jal          ra, 17b
22:               jal          ra, 10b
23:               jal          tp, 7b
24:               jal          a7, 27f
25:               jal          ra, 16b
26:               jal          t1, 15b
27:               sltiu        a7, s11, -1790
sub_5_4:          jal          ra, 21f
0:                jal          t1, 16f
1:                jal          ra, 11f
2:                jal          s1, 0b
3:                jal          ra, 22f
4:                jal          ra, 17f
5:                jal          ra, 18f
6:                jal          a6, 20f
7:                jal          t0, 6b
8:                jal          tp, 9f
9:                jal          t1, 19f
10:               jal          gp, 7b
11:               jal          a5, 5b
12:               jal          sp, 15f
13:               jal          ra, 14f
14:               jal          ra, 4b
15:               jal          ra, 8b
16:               jal          ra, 3b
17:               jal          ra, 1b
18:               jal          ra, 12b
19:               jal          tp, 23f
20:               jal          t1, 2b
21:               jal          t1, 10b
22:               jal          t1, 13b
23:               sub          a4, s9, s10
sub_5_6:          jal          ra, 2f
0:                jal          t1, 9f
1:                jal          t1, 4f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          t1, 10f
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          ra, 3b
9:                jal          a5, 5b
10:               jal          t1, 1b
11:               jal          ra, 6b
12:               xor          t1, s10, s1
                  sub          s3, s7, a2
                  xori         sp, a2, 154
                  slt          s2, s4, s5
                  sra          s0, gp, t5
                  slli         s8, s9, 8
                  slli         s5, sp, 13
                  auipc        s2, 750425
                  slli         t5, s9, 8
                  xori         t2, s11, -149
                  bne          s4, s3, 29f
                  bltu         t2, s8, 13f
                  srl          t5, s2, sp
                  xor          tp, a0, t1
13:               sra          s4, s8, tp
                  bgeu         a0, a0, 32f
                  sll          a0, t0, t3
                  sll          t1, s10, s7
                  sll          t6, s10, tp
                  slt          t6, a2, a4
                  add          s6, s2, s5
                  bgeu         a2, s4, 31f
                  sra          a2, s0, a4
                  slt          sp, t4, a7
                  srl          s3, s7, s3
                  xori         zero, t5, 635
                  sub          s3, a1, gp
                  slli         s7, a4, 31
                  slti         s2, a2, 577
                  and          a2, sp, s5
29:               bgeu         s5, a2, 39f
                  lui          t6, 436569
31:               and          s0, s6, t5
32:               sltiu        a2, t0, -1287
                  lui          a4, 834559
                  xor          a7, gp, s9
                  or           t5, s2, a6
                  sll          tp, t4, ra
                  sub          a7, a3, s1
                  beq          t4, s2, 46f
39:               auipc        s6, 619595
                  slli         tp, a6, 8
                  slli         s8, tp, 22
                  srai         zero, s6, 23
                  xori         t6, a0, -943
                  bltu         a2, a2, 56f
                  xori         s6, zero, -619
46:               bne          sp, a6, 64f
                  or           t5, s2, gp
                  sll          a5, s6, a7
                  ori          t1, s3, 1459
                  srl          a2, a5, a0
                  sub          t6, s0, a0
                  bne          t6, gp, 62f
                  slti         s11, zero, -393
                  bltu         t0, s6, 74f
                  blt          a0, s5, 60f
56:               auipc        s3, 556731
                  sra          t1, s0, a6
                  sltiu        s0, t1, -909
                  bge          s0, s1, 61f
60:               nop
61:               bltu         s1, a4, 75f
62:               blt          a0, t2, 78f
                  add          a3, t3, s11
64:               andi         a5, s0, 1216
                  nop
                  sltiu        a7, gp, -616
                  slli         s5, tp, 4
                  beq          s9, a4, 69f
69:               sltiu        s5, t2, -1761
                  srl          a3, a3, a0
                  sltu         a0, s0, a2
                  bne          t2, t6, 88f
                  srai         s9, s7, 3
74:               xori         a2, a6, 405
75:               auipc        a4, 972498
                  sll          s4, s8, s10
                  andi         s4, a7, -361
78:               sub          s1, t3, zero
                  bge          s9, a5, 89f
                  nop
                  sub          a2, s0, a2
                  and          s4, t1, tp
                  bge          a5, s4, 97f
                  sub          a7, a5, s0
                  bgeu         s1, t3, 102f
                  sll          s3, s7, s9
                  slti         t6, s9, -463
88:               andi         t0, a5, -465
89:               sub          a4, tp, a6
                  sll          t6, zero, s3
                  sra          t0, a0, t2
                  srl          gp, s5, s1
                  ori          a7, a4, -212
sub_5_9:          jal          ra, 16f
0:                jal          s11, 21f
1:                jal          ra, 7f
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 6f
6:                jal          t1, 4b
7:                jal          t1, 22f
8:                jal          ra, 15f
9:                jal          ra, 13f
10:               jal          ra, 9b
11:               jal          t1, 19f
12:               jal          a2, 5b
13:               jal          a4, 17f
14:               jal          ra, 3b
15:               jal          ra, 18f
16:               jal          gp, 20f
17:               jal          s9, 23f
18:               jal          ra, 0b
19:               jal          s3, 8b
20:               jal          s2, 14b
21:               jal          ra, 12b
22:               jal          ra, 11b
23:               lui          a2, 120705
                  addi         t2, a5, -563
                  andi         s2, t0, 1961
                  xor          s6, zero, s6
97:               bltu         a4, a3, 117f
                  or           t0, t6, ra
                  and          s7, a0, sp
                  bltu         s4, s9, 110f
                  bltu         a1, t0, 105f
102:              bne          t6, t3, 106f
                  bgeu         s7, t1, 118f
                  sra          tp, s2, s11
105:              srai         s0, s10, 16
106:              bne          s10, a2, 109f
                  slti         a1, t5, 1139
                  andi         a1, s0, 938
109:              slt          s2, a4, a3
110:              sub          s3, s11, a7
                  xor          a6, gp, s0
                  sub          tp, a0, s11
                  ori          t6, s10, 77
                  bne          s4, t2, 123f
                  blt          s0, zero, 130f
                  blt          sp, s11, 127f
117:              sltu         s2, sp, s7
118:              ori          s4, a4, -1232
                  sra          zero, s7, a0
                  nop
                  srli         s2, s4, 4
                  slti         s4, a3, 1082
123:              xori         a7, gp, -928
                  beq          t5, t0, 139f
                  auipc        s11, 221308
                  bltu         s11, t0, 139f
127:              lui          t5, 957427
                  ori          sp, tp, -1898
                  srai         t6, s9, 19
130:              srai         s8, a7, 22
                  srai         ra, s11, 12
                  add          a5, s7, s8
                  sra          s1, s4, a0
                  slti         s3, a1, 1796
                  sra          s3, s2, sp
                  sll          s11, t4, a5
                  xori         a2, t6, 311
                  sltiu        s1, a6, 2012
139:              bgeu         t4, s6, 149f
                  or           t5, a5, s5
                  sltiu        a5, a4, -1252
                  srli         a4, s0, 30
                  add          tp, s6, zero
                  bgeu         s0, s5, 160f
                  beq          a7, t1, 146f
146:              sub          s8, a1, s9
                  andi         a2, s4, 1936
                  add          s9, s3, a6
149:              add          s3, s10, a7
                  lui          sp, 128393
                  and          s11, zero, t3
                  sra          s11, s1, a7
                  addi         a0, sp, 816
                  xori         gp, tp, -460
                  bne          s9, t3, 157f
                  nop
157:              andi         s0, a7, -1657
                  sll          t1, t3, s4
                  addi         s4, sp, -1951
160:              ori          s8, t4, 1087
                  ori          a7, gp, 379
                  or           s1, s9, s11
                  xor          a3, s3, t0
                  andi         ra, a5, 390
                  srl          s1, s8, a3
                  slli         s6, t1, 10
                  sltiu        tp, t3, 30
                  bgeu         a4, s4, 177f
                  sll          t1, s3, sp
                  slti         s4, s6, -111
                  blt          s5, t4, 174f
                  beq          s5, a4, 185f
                  sra          a2, t5, s1
174:              blt          s6, s6, 184f
                  slt          a2, a6, ra
                  bge          s4, gp, 180f
177:              slti         a2, s0, 49
                  addi         t1, s5, -753
                  sltu         s7, t4, ra
180:              srai         a4, a3, 29
                  bne          s5, s6, 199f
                  srli         t1, s2, 7
                  slli         s4, t0, 3
184:              add          t6, t3, s1
185:              andi         sp, a7, -1831
                  ori          s3, t4, -1759
                  bltu         tp, a4, 197f
                  and          s7, t5, s4
                  andi         a0, s8, 64
                  srli         t1, a7, 15
                  bge          sp, s10, 207f
                  lui          ra, 679960
                  add          s8, sp, s2
                  or           a1, ra, s4
                  addi         t0, gp, 129
                  sltiu        t1, ra, -399
197:              addi         zero, a0, -1578
                  lui          s2, 675074
199:              lui          s4, 579960
                  or           a4, t3, a4
                  sub          a0, tp, a0
                  auipc        s3, 791800
                  beq          s1, s7, 217f
                  sub          a2, t1, a4
                  xor          gp, t3, t4
                  and          s8, s10, a1
207:              sltu         zero, t3, s9
                  sll          tp, t6, a2
                  auipc        a3, 526505
                  xori         s0, t2, -623
                  or           t5, sp, t0
                  xori         a6, a4, 1392
                  nop
                  xori         s2, t3, -1733
                  blt          s1, gp, 226f
                  slli         a0, s11, 24
217:              bltu         t6, a4, 237f
                  auipc        a6, 1013757
                  nop
                  bne          gp, s1, 232f
                  addi         s3, s7, 1448
                  slt          a2, a2, a1
                  blt          s1, t3, 231f
                  sltiu        a1, s8, -753
                  srli         s9, t4, 29
226:              srli         a4, gp, 27
                  xori         sp, ra, 709
                  slti         a4, gp, -718
                  slti         s7, a1, 103
                  lui          t1, 252486
231:              bltu         t0, t5, 241f
232:              andi         s7, s10, 705
                  bge          t0, sp, 253f
                  add          gp, a7, t4
                  slli         s9, a1, 20
                  andi         s6, t3, 629
237:              sub          t1, a4, sp
                  ori          zero, a0, 1013
                  xori         s6, s2, 266
                  bge          a7, a5, 244f
241:              add          s8, t5, ra
sub_5_8:          jal          ra, 11f
0:                jal          ra, 4f
1:                jal          ra, 10f
2:                jal          a2, 8f
3:                jal          ra, 13f
4:                jal          sp, 20f
5:                jal          ra, 16f
6:                jal          t1, 7f
7:                jal          ra, 12f
8:                jal          ra, 1b
9:                jal          s7, 14f
10:               jal          ra, 19f
11:               jal          ra, 5b
12:               jal          ra, 3b
13:               jal          t1, 18f
14:               jal          s5, 0b
15:               jal          ra, 9b
16:               jal          a2, 17f
17:               jal          t0, 2b
18:               jal          ra, 15b
19:               jal          a0, 6b
20:               sll          ra, t2, a5
                  nop
                  srai         s6, gp, 23
244:              lui          s2, 198322
                  nop
                  bge          t5, a0, 261f
                  sra          a2, t0, a0
                  sltu         a3, sp, s8
                  andi         s5, s9, -1978
                  slt          a3, t4, s10
                  ori          t0, a4, 137
                  sub          s11, a6, s7
253:              srli         a6, t1, 9
                  slti         sp, t2, 406
                  lui          s3, 914060
                  bge          zero, s3, 270f
                  xor          a3, s10, tp
                  bltu         tp, zero, 275f
                  sra          zero, a6, t2
                  nop
261:              xori         t6, s0, 2013
                  srl          s7, s4, zero
                  or           s9, sp, a1
                  srai         a7, s8, 12
                  xori         a0, ra, 1683
                  beq          tp, t5, 281f
                  addi         s0, sp, -1242
                  sltiu        gp, a3, -592
                  bgeu         t0, a2, 284f
270:              ori          a4, s0, -1354
                  bltu         a1, s5, 289f
                  sll          s9, tp, t0
                  ori          s4, s9, 275
                  blt          t2, s4, 277f
275:              and          ra, zero, s4
                  srli         s9, t0, 9
277:              auipc        a0, 219518
                  ori          s3, sp, -495
                  addi         s0, a0, 1563
                  blt          s0, s8, 300f
281:              srli         a1, s9, 17
                  sub          a5, s0, s6
                  bltu         sp, s8, 288f
284:              xori         sp, tp, 122
                  beq          s6, a6, 296f
                  srl          a7, sp, s0
                  xori         tp, a7, 1254
288:              sltu         a7, a5, s3
289:              or           s7, s0, t0
                  xori         a3, s0, -1037
                  srli         t1, zero, 16
                  slli         s5, t3, 31
                  blt          a5, tp, 308f
                  srli         s6, a1, 18
                  add          tp, a0, s11
296:              and          s2, a1, a5
                  bge          s3, t4, 317f
                  beq          a6, s0, 309f
                  slli         zero, s3, 14
300:              srl          s4, t3, s8
                  and          gp, s4, tp
                  xori         s4, s5, -514
                  lui          t5, 961246
                  ori          t1, s10, 2027
                  or           a1, s6, a3
                  srl          s5, s0, ra
                  bne          s4, gp, 311f
308:              slti         sp, s1, 1262
309:              sll          sp, t3, s0
                  andi         s7, s8, 1283
311:              nop
                  sltu         s8, s11, s8
                  slti         t6, t1, -1817
                  xori         t5, s5, -338
                  slt          a4, a5, s11
                  xori         ra, s10, 388
317:              sltiu        a2, s10, 684
                  bltu         t2, zero, 320f
                  srl          s2, a7, s2
320:              andi         s4, t3, -1480
                  ori          a7, s6, -838
                  lui          t2, 543492
                  lui          s4, 350122
                  bne          s2, a5, 339f
                  ori          t2, zero, 1493
                  addi         t1, s5, 1856
                  lui          a5, 19140
                  ori          s1, s3, 89
                  addi         a0, a6, 625
                  sltu         s0, s1, gp
                  addi         tp, a3, 225
                  xori         a0, s0, -141
                  srl          tp, sp, ra
                  xori         s11, t1, 1413
                  or           t5, s10, s9
                  xori         sp, t4, 421
                  ori          tp, s6, 267
                  and          s7, a0, s4
339:              addi         t2, a3, 1083
                  sra          a5, t6, t1
                  srli         s5, a2, 19
                  addi         a3, tp, 1581
                  srl          s2, s6, sp
                  xori         t0, t3, -2022
                  xori         a7, a7, 1403
                  bne          a4, ra, 350f
                  sub          t0, t2, t3
                  slti         a7, a6, 1667
                  nop
350:              addi         a5, a1, -1475
                  add          s8, a7, a3
                  andi         a3, t6, 82
                  nop
                  beq          sp, zero, 366f
                  bgeu         s3, t4, 371f
                  andi         s5, s6, 1181
                  slli         a6, a2, 9
                  ori          a1, t6, -1656
                  beq          s10, s2, 369f
                  srl          t6, tp, gp
                  beq          s7, s9, 381f
                  auipc        s1, 910296
                  bne          tp, s3, 378f
                  bne          a5, a3, 374f
                  bltu         s9, a5, 375f
366:              srl          s0, zero, s0
                  andi         s7, a3, -1784
                  sltiu        zero, s10, 1405
369:              slti         sp, s7, -1667
                  or           t6, t1, sp
371:              lui          s5, 753692
                  xor          s0, a0, t1
                  sra          s5, s3, s11
374:              bltu         zero, s8, 384f
375:              slti         a3, s9, 1339
                  add          s9, t3, a1
                  andi         s2, s1, -838
378:              andi         s0, t4, -1155
                  bltu         tp, ra, 387f
                  auipc        sp, 102549
381:              sra          s9, s1, a7
                  slli         s0, s8, 4
                  ori          tp, s3, 1982
384:              xori         s0, t2, -1914
                  sltiu        s2, zero, 1392
                  sub          t1, s8, gp
387:              sll          a7, a0, sp
                  beq          ra, s3, 404f
                  or           a1, tp, t1
                  slt          s6, s8, s4
                  slti         s11, s1, 697
                  sltu         t6, tp, t4
                  slt          ra, s8, s2
                  or           a7, a4, t6
                  xori         t5, s10, 448
                  andi         t2, zero, -1018
                  sub          a4, tp, t1
                  slti         a6, s8, 1971
                  auipc        zero, 626284
                  bge          s1, s8, 401f
401:              sra          gp, t6, t3
                  bge          s8, s5, 419f
                  sltu         a0, s4, s11
404:              addi         s9, a0, 1624
                  ori          a2, s9, -1230
                  beq          a2, s8, 426f
                  ori          t5, s3, 325
                  bgeu         t2, a7, 422f
                  add          zero, s0, t5
                  bge          a6, t1, 424f
                  bltu         s8, a5, 414f
                  xor          s6, a2, a4
                  srl          tp, zero, s9
414:              sll          a3, s7, a4
                  sltu         s5, a3, t4
                  or           s11, s10, s5
                  srli         s11, s3, 10
                  xori         s6, t4, -1601
419:              and          s7, s0, gp
                  ori          zero, t2, 1308
                  nop
422:              nop
                  auipc        a2, 458071
424:              ori          s0, s7, -524
                  ori          s6, gp, -175
426:              xori         s3, a0, 1478
                  bge          s11, s7, 438f
                  ori          a4, s6, -29
                  andi         s4, t0, 862
                  xor          s9, a2, s4
                  ori          s8, zero, -1819
                  srli         s0, t6, 0
                  ori          s8, zero, -1730
                  sra          s5, zero, t1
                  xor          a4, a4, gp
                  nop
                  auipc        tp, 299124
438:              sra          a6, a7, a7
                  auipc        a4, 21562
                  lui          zero, 855234
                  slt          s0, gp, a3
                  blt          a2, t1, 445f
                  srli         a1, a5, 5
                  auipc        ra, 293964
445:              sltu         s3, s4, s10
                  bne          a7, a1, 459f
                  lui          a3, 854716
                  auipc        a7, 770377
                  auipc        s8, 541681
                  beq          a0, s11, 468f
                  bgeu         s8, t3, 469f
                  beq          zero, a7, 461f
                  and          ra, t4, a5
                  srli         a6, tp, 24
                  sltiu        a1, a4, 413
                  blt          s6, a0, 461f
                  sll          s1, t6, a4
                  sll          zero, s11, s6
459:              xori         a0, zero, 612
sub_5_0:          jal          ra, 17f
0:                jal          t0, 4f
1:                jal          ra, 9f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          t1, 15f
5:                jal          t1, 23f
6:                jal          ra, 8f
7:                jal          ra, 21f
8:                jal          ra, 20f
9:                jal          a5, 14f
10:               jal          sp, 18f
11:               jal          t5, 7b
12:               jal          t1, 1b
13:               jal          ra, 22f
14:               jal          ra, 19f
15:               jal          ra, 11b
16:               jal          t1, 2b
17:               jal          t1, 5b
18:               jal          ra, 16b
19:               jal          ra, 24f
20:               jal          t1, 3b
21:               jal          ra, 13b
22:               jal          ra, 12b
23:               jal          ra, 6b
24:               sub          s11, a7, s8
                  sra          a3, s8, s1
461:              sltiu        sp, t0, 1906
                  bltu         s1, s6, 472f
                  slli         s4, zero, 5
                  slli         s3, t1, 17
                  srl          ra, tp, s0
                  and          a4, sp, sp
                  bgeu         s11, gp, 482f
468:              sra          s7, t1, s7
469:              add          t6, s5, s10
                  blt          t4, t5, 488f
                  srli         t2, a4, 16
472:              beq          t6, a5, 480f
                  sltiu        a7, a6, -554
                  sll          zero, a2, s0
                  srai         s9, a7, 8
                  addi         s9, s3, -868
                  slli         t2, a6, 22
                  slt          tp, s10, a5
                  ori          s1, s3, -1790
480:              srl          a3, s4, t3
                  nop
482:              addi         zero, s7, -255
                  blt          a2, s10, 493f
                  add          a4, s10, a1
                  srli         t0, t2, 23
                  sltiu        s9, s5, 244
                  sltiu        s8, s0, -1327
488:              srli         a7, gp, 4
                  lui          s7, 381647
                  andi         s2, gp, -1367
                  slti         sp, ra, -134
                  beq          a0, gp, 510f
493:              sub          s11, s3, t1
                  bge          s3, s6, 496f
                  sra          t6, t1, a5
496:              or           t1, t5, tp
                  sra          t5, a4, a3
                  sra          tp, zero, s7
                  sub          s7, s2, t5
                  add          s11, t1, s1
                  xori         s5, s6, -583
                  srai         t1, a6, 29
                  sra          a6, a3, s5
                  beq          a4, s6, 508f
                  lui          tp, 301386
                  blt          a7, s3, 523f
                  slt          s0, t6, s11
508:              bge          t5, a6, 521f
                  or           s7, s1, a5
510:              slt          sp, ra, s0
                  andi         t0, t1, 1044
                  blt          zero, s8, 515f
                  nop
                  sra          s7, t2, s3
515:              addi         a2, t1, 1630
                  sll          t0, a3, a6
                  sra          s2, s3, a4
                  add          t2, zero, t6
                  andi         s2, t4, 1419
                  addi         a5, t4, 1741
521:              slti         s11, s8, 200
                  bltu         a6, a7, 532f
523:              bltu         sp, s11, 543f
                  sub          tp, t2, a5
                  and          s5, s6, t6
                  bgeu         t3, t4, 538f
                  blt          t0, t3, 543f
                  beq          t0, s7, 533f
                  xori         tp, s1, -635
                  slli         sp, gp, 15
                  slti         t0, a5, 1607
532:              srai         t0, sp, 11
533:              sltiu        a2, s5, -623
                  bne          s11, zero, 554f
                  add          a5, s9, s4
                  andi         a7, tp, 686
                  bgeu         s7, a2, 553f
538:              slli         s3, s3, 30
                  add          zero, s7, t2
                  sltu         sp, t1, s8
                  slt          s0, s2, t0
                  bge          a4, t2, 556f
543:              sltiu        sp, a6, -962
                  srai         s11, a2, 8
                  bltu         zero, a5, 559f
                  bge          s7, s9, 561f
                  bge          gp, t0, 556f
                  beq          a7, s7, 549f
549:              lui          a4, 38794
                  nop
                  slt          s2, t0, s10
                  srai         s1, t1, 29
553:              srl          s2, t3, s7
554:              ori          s7, s6, -1342
                  xori         a6, s11, 11
556:              bne          s11, s3, 571f
                  bne          s11, t3, 568f
                  sltu         sp, s6, a4
559:              sltu         a0, s10, zero
                  blt          s9, t1, 564f
561:              slt          t2, s4, t1
                  sub          gp, s5, s0
                  ori          a6, s3, 1633
564:              srl          t2, tp, t6
                  sll          t0, tp, t4
                  add          s7, t2, tp
                  slli         s1, s7, 16
568:              xori         s7, t5, -645
                  bgeu         s5, t0, 580f
                  sra          s11, s6, s4
571:              or           a3, t0, a0
                  sltu         s0, t3, t2
                  sub          s7, ra, s2
                  slli         s11, a1, 29
                  srl          a5, s6, s9
                  addi         t5, s10, -1015
                  beq          tp, s0, 597f
                  add          t0, s4, s6
                  beq          s1, sp, 582f
580:              beq          a5, ra, 590f
                  srl          a1, gp, s3
582:              slli         t6, s11, 23
                  srl          s11, a6, ra
                  and          sp, a4, s5
                  slt          s1, zero, s5
                  srli         ra, sp, 3
                  slt          s8, s8, zero
                  bgeu         s11, t3, 597f
                  beq          a1, s3, 593f
590:              sll          s3, s10, zero
                  bge          a5, s0, 592f
592:              addi         t5, t4, -1872
593:              xori         a2, a0, -521
                  add          s7, s11, s6
                  slti         t1, s3, -1443
                  bltu         s11, a6, 597f
597:              srai         s7, a5, 22
                  lw           ra, 4(t3)
                  slti         a1, tp, 1628
                  nop
                  slti         a2, t3, -1593
                  xor          zero, s11, s3
                  andi         a3, tp, 428
                  xori         tp, a3, 82
                  addi         t3, t3, 32
                  slt          a7, sp, a4
875:              addi x3, x1, 0
875:              jalr x3, x3, 0
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
                  add x26, x28, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x23, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x23, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x23, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x23, x5, ecall_handler
                  li x5, 0x1
                  beq x23, x5, instr_fault_handler
                  li x5, 0x5
                  beq x23, x5, load_fault_handler
                  li x5, 0x7
                  beq x23, x5, store_fault_handler
                  li x5, 0xc
                  beq x23, x5, pt_fault_handler
                  li x5, 0xd
                  beq x23, x5, pt_fault_handler
                  li x5, 0xf
                  beq x23, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x28, x26, zero
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
                  add x28, x26, zero
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
                  add x28, x26, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x28, x26, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x28, x26, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x28, x26, zero
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
