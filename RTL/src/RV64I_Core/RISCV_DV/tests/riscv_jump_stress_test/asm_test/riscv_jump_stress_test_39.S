.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x3, 0x3e85a458
                  li x4, 0x100b3919
                  li x5, 0x80000000
                  li x6, 0xf84eccc7
                  li x7, 0x0
                  li x8, 0xfcb89cb1
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xf
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x36e87630
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0xfd6f11fc
                  li x20, 0x1
                  li x21, 0xffb9277b
                  li x22, 0xe717486b
                  li x23, 0xf2b11c9e
                  li x24, 0x0
                  li x25, 0xf61c54a7
                  li x26, 0x0
                  li x28, 0xfc64bb20
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x0
                  la x27, user_stack_end
main:             slt          t5, a7, zero
                  slli         t0, a5, 28
                  la           t4, sub_1
                  addi         a1, t6, 994
                  and          tp, s11, s1
                  xor          s8, s5, s4
                  add          a0, sp, a5
                  addi         t4, t4, 66
                  slt          t2, s9, t3
                  add          a5, s9, s11
                  bne          s6, t6, main_j2 #branch to jump instr
                  xori         s5, t2, 1361
                  srli         t6, t4, 2
main_j2:          jalr         tp, t4, -65 #jump main -> sub_1
main_1:           jal          tp, 20f
0:                jal          ra, 8f
1:                jal          gp, 18f
2:                jal          a5, 16f
3:                jal          ra, 17f
4:                jal          ra, 25f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          t1, 24f
8:                jal          ra, 5b
9:                jal          t4, 26f
10:               jal          ra, 4b
11:               jal          s9, 22f
12:               jal          t0, 11b
13:               jal          ra, 3b
14:               jal          a2, 10b
15:               jal          ra, 23f
16:               jal          t1, 14b
17:               jal          s6, 15b
18:               jal          gp, 9b
19:               jal          s9, 21f
20:               jal          ra, 19b
21:               jal          ra, 13b
22:               jal          t1, 7b
23:               jal          ra, 12b
24:               jal          ra, 6b
25:               jal          ra, 1b
26:               ori          a1, a6, -1389
main_0:           jal          tp, 25f
0:                jal          s6, 5f
1:                jal          ra, 20f
2:                jal          ra, 19f
3:                jal          ra, 30f
4:                jal          ra, 14f
5:                jal          a0, 23f
6:                jal          ra, 16f
7:                jal          a2, 0b
8:                jal          t1, 4b
9:                jal          tp, 12f
10:               jal          ra, 28f
11:               jal          gp, 26f
12:               jal          t1, 3b
13:               jal          ra, 11b
14:               jal          t1, 7b
15:               jal          ra, 17f
16:               jal          ra, 2b
17:               jal          ra, 1b
18:               jal          s2, 13b
19:               jal          ra, 21f
20:               jal          t1, 24f
21:               jal          ra, 10b
22:               jal          t0, 9b
23:               jal          s4, 29f
24:               jal          t0, 6b
25:               jal          s8, 15b
26:               jal          ra, 22b
27:               jal          ra, 18b
28:               jal          ra, 8b
29:               jal          t1, 27b
30:               slt          s7, a6, a7
                  ori          a0, gp, 139
                  sra          gp, tp, t5
                  slt          s3, t6, t3
                  bltu         a7, s1, 11f
                  bge          a7, a6, 22f
                  bge          s8, a7, 23f
                  sltu         zero, sp, s9
                  andi         ra, a6, -1348
                  sltu         ra, t1, t1
                  or           s7, a5, s9
                  addi         s6, sp, 1045
11:               sll          s8, s8, t4
                  blt          t0, tp, 26f
                  ori          s10, s7, -42
                  slt          a6, s3, t6
                  xori         a3, s9, -1803
                  sltiu        t0, s8, 1386
                  sltu         s8, t4, t0
                  srai         s1, s0, 28
                  sra          t5, s2, zero
                  slti         t5, t0, 278
                  xori         s0, a3, 88
22:               lui          s1, 727002
23:               slti         s9, t6, -1726
                  blt          a7, s0, 29f
                  andi         zero, s2, 523
26:               bne          t2, sp, 28f
                  auipc        s1, 375771
28:               or           t3, s0, a3
29:               xori         s3, t6, -50
                  blt          s1, a4, 36f
                  addi         t3, s10, -1876
                  srli         t5, s10, 29
                  nop
                  addi         t0, t0, -1073
                  slt          t1, sp, a2
36:               lui          ra, 766191
                  bgeu         s10, a7, 43f
                  add          ra, t6, s7
                  slti         a5, a2, -1960
                  srl          s10, t4, a4
                  blt          a1, a7, 45f
                  slti         a0, s3, -1962
43:               bne          a6, t6, 59f
                  srli         s4, t1, 28
45:               addi         t6, s6, 732
                  xor          t5, s6, s10
                  add          zero, a4, a1
                  auipc        s10, 649333
                  nop
                  auipc        s8, 984211
                  srli         s4, t0, 11
                  slti         t5, t2, -1905
                  srli         s0, t3, 23
                  xori         a3, t4, 1365
                  blt          tp, s11, 65f
                  ori          a0, s0, -417
                  auipc        s7, 647137
                  bgeu         t6, ra, 73f
59:               sltu         s8, a5, a0
                  or           s8, a1, a4
                  auipc        t4, 737429
                  sub          a0, t1, s7
                  addi         s6, t4, -24
                  addi         s4, zero, -867
                  la           s2, sub_2
                  and          t2, a4, t1
                  sltu         s4, s9, a3
                  addi         s2, s2, 896
                  bltu         s0, t6, main_j1 #branch to jump instr
                  or           a0, t2, s3
main_j1:          jalr         tp, s2, -895 #jump main -> sub_2
                  ori          a3, s0, -1418
                  slli         a3, tp, 23
                  blt          t3, s5, 73f
                  sltiu        gp, tp, -1435
                  ori          s9, t0, -1908
65:               or           s2, s8, s2
                  sra          zero, sp, a7
                  sub          a0, s4, s4
                  xor          ra, s6, t3
                  srl          ra, a4, s11
                  slt          a3, t2, tp
                  andi         zero, s7, 1913
                  srli         ra, s3, 14
73:               bge          a2, a3, 83f
                  xor          a7, a7, a6
                  bne          s1, t0, 87f
                  srai         a2, gp, 17
                  sltu         s6, ra, a2
                  sll          s7, t4, s11
                  slt          s10, a0, s2
                  xor          a0, sp, a5
                  sub          t5, t0, a3
                  srai         s3, s7, 1
83:               bne          a6, t6, 94f
                  sub          a6, t1, t6
                  add          s4, t5, s5
                  sub          s3, s3, a6
87:               blt          t5, s4, 88f
88:               srai         s4, a3, 8
                  srl          t2, t6, zero
                  srli         s0, s9, 13
                  slti         s7, a0, 945
                  sltiu        a2, zero, 1242
                  beq          a5, a6, 104f
94:               bne          t2, t3, 112f
                  lui          s1, 1036648
                  ori          a3, s10, -759
                  sll          s9, t5, sp
                  addi         t6, s8, 784
                  sra          s10, t2, s1
                  beq          a6, s9, 119f
                  ori          ra, t5, -56
                  xori         t2, a2, -1494
                  sub          s7, a5, a1
104:              sltu         t6, s9, tp
                  slti         t2, a6, -206
                  sub          a0, a7, s0
                  sra          t1, a7, gp
                  bltu         s6, t5, 115f
                  andi         t0, zero, -1519
                  blt          a0, a4, 124f
                  beq          s5, s1, 120f
112:              sltiu        gp, t0, -753
                  slli         a7, tp, 12
                  add          a6, t6, gp
115:              sra          t1, a2, t1
                  add          s2, s4, zero
                  lui          t3, 876036
                  xori         a7, t0, -600
119:              xori         a5, t4, -1288
120:              and          t4, t2, s5
                  xori         s1, t5, -448
                  add          zero, s0, t6
                  andi         a3, s1, -1273
124:              sltu         s6, a0, zero
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            lui          s2, 429533
                  slli         t2, a4, 15
                  addi         s11, s11, -36
                  sw           tp, 4(s11)
                  lui          s9, 519452
                  andi         s4, s11, 1574
                  la           t6, sub_4
                  addi         t6, t6, -303
                  sltu         t3, zero, t2
                  beq          zero, a1, sub_2_j4 #branch to jump instr
                  srli         s2, a5, 12
                  sltu         s2, s3, t6
                  addi         a6, a2, -2020
                  nop
                  srli         a7, s8, 0
                  nop
                  sll          t4, t2, ra
sub_2_j4:         jalr         tp, t6, 304 #jump sub_2 -> sub_4
                  andi         t4, t2, -1922
                  slt          s3, t6, t2
                  srai         a3, s1, 8
                  slti         t2, gp, -241
                  ori          a6, s7, 1123
                  srli         tp, s4, 28
                  nop
                  bne          a5, s1, 21f
                  andi         t4, a6, -1679
                  ori          tp, zero, 1951
                  beq          zero, s5, 30f
                  sra          s6, ra, s1
                  sltu         t6, a4, s0
                  srl          ra, s6, zero
                  sll          ra, a0, s0
                  bne          s6, a6, 20f
                  bgeu         t0, t0, 28f
                  addi         s8, a7, 1787
                  add          s6, t5, sp
                  addi         s4, t3, 1676
20:               bltu         s8, a5, 31f
21:               bge          ra, a3, 24f
                  slli         a2, s2, 15
                  andi         s10, t0, -949
24:               srai         a7, a2, 9
                  sll          gp, a7, a1
                  bne          s10, t0, 34f
                  sub          t1, t6, gp
28:               slli         ra, s7, 9
                  srli         a3, t1, 27
30:               sub          t2, sp, t0
31:               and          s7, a7, a5
                  srai         t6, s10, 3
                  sra          gp, a2, t3
34:               nop
                  addi         a0, t3, -1069
                  sra          zero, a0, t6
                  srai         ra, s8, 2
                  add          s4, a4, s9
                  sra          a7, s7, ra
                  and          a6, ra, t4
                  andi         s2, s4, 1126
                  addi         t2, tp, 1668
                  sub          a1, a6, t5
                  xor          ra, s6, t6
                  slli         s7, s2, 13
                  srai         s8, t6, 11
                  lw           tp, 4(s11)
                  add          t6, t4, a0
                  addi         s11, s11, 36
                  and          t3, s10, a1
                  srl          t2, s7, sp
70:               addi x16, x4, 1
70:               jalr x16, x16, 0
sub_4:            bne          s9, s2, sub_4_stack_p
sub_4_stack_p:    addi         s11, s11, -64
                  srli         s5, gp, 8
                  sw           tp, 4(s11)
                  addi         a6, t1, 15
                  auipc        a6, 923505
sub_4_29:         jal          tp, 10f
0:                jal          ra, 20f
1:                jal          t1, 22f
2:                jal          s7, 5f
3:                jal          ra, 24f
4:                jal          s3, 16f
5:                jal          t1, 4b
6:                jal          a2, 21f
7:                jal          ra, 11f
8:                jal          ra, 18f
9:                jal          ra, 23f
10:               jal          t1, 9b
11:               jal          s3, 14f
12:               jal          t3, 3b
13:               jal          gp, 1b
14:               jal          t1, 17f
15:               jal          ra, 0b
16:               jal          ra, 6b
17:               jal          ra, 2b
18:               jal          t1, 7b
19:               jal          ra, 12b
20:               jal          ra, 8b
21:               jal          ra, 13b
22:               jal          a6, 19b
23:               jal          s10, 15b
24:               slti         s6, s10, 1523
sub_4_8:          jal          tp, 6f
0:                jal          ra, 10f
1:                jal          t6, 0b
2:                jal          t1, 12f
3:                jal          t0, 9f
4:                jal          a5, 11f
5:                jal          gp, 8f
6:                jal          t1, 3b
7:                jal          ra, 4b
8:                jal          t0, 1b
9:                jal          ra, 7b
10:               jal          ra, 2b
11:               jal          s1, 5b
12:               and          s10, tp, a3
sub_4_25:         jal          tp, 14f
0:                jal          gp, 6f
1:                jal          t5, 20f
2:                jal          t1, 25f
3:                jal          ra, 2b
4:                jal          t1, 30f
5:                jal          ra, 27f
6:                jal          t1, 28f
7:                jal          tp, 11f
8:                jal          ra, 16f
9:                jal          t4, 18f
10:               jal          ra, 29f
11:               jal          t1, 1b
12:               jal          s10, 3b
13:               jal          ra, 9b
14:               jal          ra, 22f
15:               jal          a2, 17f
16:               jal          ra, 19f
17:               jal          t0, 26f
18:               jal          t1, 15b
19:               jal          t1, 4b
20:               jal          ra, 10b
21:               jal          ra, 24f
22:               jal          ra, 12b
23:               jal          ra, 8b
24:               jal          ra, 23b
25:               jal          ra, 13b
26:               jal          ra, 5b
27:               jal          t1, 0b
28:               jal          ra, 7b
29:               jal          ra, 21b
30:               ori          a6, s9, 1968
sub_4_34:         jal          tp, 28f
0:                jal          gp, 25f
1:                jal          tp, 6f
2:                jal          ra, 26f
3:                jal          gp, 30f
4:                jal          t0, 21f
5:                jal          ra, 9f
6:                jal          ra, 23f
7:                jal          ra, 22f
8:                jal          tp, 7b
9:                jal          a5, 27f
10:               jal          ra, 20f
11:               jal          t1, 18f
12:               jal          t1, 4b
13:               jal          t1, 5b
14:               jal          ra, 8b
15:               jal          ra, 13b
16:               jal          tp, 0b
17:               jal          t1, 14b
18:               jal          ra, 19f
19:               jal          t1, 12b
20:               jal          ra, 1b
21:               jal          ra, 17b
22:               jal          ra, 29f
23:               jal          tp, 15b
24:               jal          ra, 10b
25:               jal          t1, 11b
26:               jal          ra, 16b
27:               jal          ra, 2b
28:               jal          ra, 24b
29:               jal          t1, 3b
30:               lui          ra, 833017
sub_4_22:         jal          tp, 9f
0:                jal          t1, 4f
1:                jal          ra, 6f
2:                jal          t1, 5f
3:                jal          t0, 1b
4:                jal          ra, 2b
5:                jal          t1, 3b
6:                jal          t0, 10f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          a5, 7b
10:               sltiu        t1, t3, -749
sub_4_6:          jal          tp, 10f
0:                jal          s4, 6f
1:                jal          ra, 7f
2:                jal          a3, 9f
3:                jal          ra, 1b
4:                jal          ra, 12f
5:                jal          a7, 4b
6:                jal          t0, 5b
7:                jal          ra, 2b
8:                jal          s10, 0b
9:                jal          ra, 8b
10:               jal          a6, 11f
11:               jal          ra, 3b
12:               slti         s8, sp, -1053
sub_4_1:          jal          tp, 21f
0:                jal          t0, 22f
1:                jal          s2, 13f
2:                jal          ra, 17f
3:                jal          a3, 19f
4:                jal          ra, 20f
5:                jal          ra, 1b
6:                jal          gp, 3b
7:                jal          ra, 24f
8:                jal          ra, 0b
9:                jal          s5, 7b
10:               jal          ra, 2b
11:               jal          tp, 6b
12:               jal          a3, 18f
13:               jal          t0, 9b
14:               jal          t0, 11b
15:               jal          t4, 23f
16:               jal          ra, 10b
17:               jal          ra, 14b
18:               jal          ra, 4b
19:               jal          ra, 8b
20:               jal          ra, 16b
21:               jal          ra, 15b
22:               jal          s2, 5b
23:               jal          ra, 12b
24:               slli         gp, s7, 17
sub_4_26:         jal          tp, 21f
0:                jal          t0, 26f
1:                jal          t1, 24f
2:                jal          ra, 16f
3:                jal          s8, 23f
4:                jal          a1, 0b
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          gp, 18f
8:                jal          t1, 9f
9:                jal          t1, 5b
10:               jal          a2, 7b
11:               jal          ra, 20f
12:               jal          ra, 25f
13:               jal          t1, 1b
14:               jal          t1, 17f
15:               jal          ra, 10b
16:               jal          t1, 19f
17:               jal          ra, 12b
18:               jal          ra, 11b
19:               jal          s0, 8b
20:               jal          t1, 6b
21:               jal          ra, 22f
22:               jal          t1, 3b
23:               jal          ra, 15b
24:               jal          t1, 4b
25:               jal          t1, 2b
26:               jal          t1, 27f
27:               ori          t1, a5, 1931
sub_4_9:          jal          tp, 0f
0:                jal          ra, 14f
1:                jal          t1, 20f
2:                jal          t1, 3f
3:                jal          ra, 11f
4:                jal          t0, 15f
5:                jal          ra, 2b
6:                jal          ra, 19f
7:                jal          ra, 1b
8:                jal          t6, 5b
9:                jal          s1, 13f
10:               jal          ra, 9b
11:               jal          t6, 7b
12:               jal          ra, 6b
13:               jal          ra, 18f
14:               jal          t1, 10b
15:               jal          ra, 22f
16:               jal          t1, 12b
17:               jal          t1, 16b
18:               jal          ra, 8b
19:               jal          ra, 4b
20:               jal          ra, 21f
21:               jal          ra, 17b
22:               sub          s10, t5, t1
sub_4_5:          jal          tp, 13f
0:                jal          ra, 5f
1:                jal          t4, 7f
2:                jal          a2, 1b
3:                jal          ra, 17f
4:                jal          ra, 20f
5:                jal          t1, 2b
6:                jal          t1, 19f
7:                jal          ra, 4b
8:                jal          t6, 18f
9:                jal          t1, 11f
10:               jal          ra, 12f
11:               jal          a7, 10b
12:               jal          ra, 0b
13:               jal          ra, 8b
14:               jal          t1, 9b
15:               jal          t1, 6b
16:               jal          t3, 21f
17:               jal          ra, 14b
18:               jal          t2, 3b
19:               jal          a3, 16b
20:               jal          s10, 15b
21:               sll          s0, a5, s3
sub_4_11:         jal          tp, 10f
0:                jal          t1, 13f
1:                jal          a6, 2f
2:                jal          s7, 8f
3:                jal          ra, 16f
4:                jal          ra, 19f
5:                jal          t1, 3b
6:                jal          a7, 5b
7:                jal          s7, 14f
8:                jal          a2, 11f
9:                jal          ra, 15f
10:               jal          t1, 7b
11:               jal          t1, 6b
12:               jal          ra, 17f
13:               jal          a1, 1b
14:               jal          ra, 9b
15:               jal          ra, 12b
16:               jal          t1, 4b
17:               jal          ra, 18f
18:               jal          s1, 0b
19:               nop
sub_4_0:          jal          tp, 18f
0:                jal          s2, 26f
1:                jal          ra, 3f
2:                jal          t5, 1b
3:                jal          t1, 23f
4:                jal          ra, 5f
5:                jal          ra, 16f
6:                jal          t1, 0b
7:                jal          t6, 12f
8:                jal          t1, 25f
9:                jal          t1, 17f
10:               jal          t1, 15f
11:               jal          ra, 2b
12:               jal          ra, 21f
13:               jal          ra, 22f
14:               jal          s8, 4b
15:               jal          ra, 8b
16:               jal          tp, 6b
17:               jal          ra, 20f
18:               jal          gp, 13b
19:               jal          s7, 10b
20:               jal          t6, 24f
21:               jal          t1, 14b
22:               jal          ra, 7b
23:               jal          ra, 9b
24:               jal          ra, 27f
25:               jal          ra, 11b
26:               jal          t1, 19b
27:               slli         t2, t6, 22
sub_4_13:         jal          tp, 8f
0:                jal          ra, 9f
1:                jal          ra, 15f
2:                jal          ra, 17f
3:                jal          ra, 10f
4:                jal          t1, 11f
5:                jal          ra, 3b
6:                jal          t1, 0b
7:                jal          s5, 4b
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          ra, 13f
12:               jal          ra, 5b
13:               jal          ra, 16f
14:               jal          ra, 7b
15:               jal          s0, 14b
16:               jal          ra, 6b
17:               lui          a3, 731105
sub_4_27:         jal          tp, 9f
0:                jal          a2, 10f
1:                jal          ra, 4f
2:                jal          t1, 15f
3:                jal          ra, 7f
4:                jal          t1, 16f
5:                jal          t4, 8f
6:                jal          ra, 18f
7:                jal          ra, 30f
8:                jal          ra, 22f
9:                jal          t1, 5b
10:               jal          a2, 20f
11:               jal          ra, 28f
12:               jal          t1, 11b
13:               jal          s8, 19f
14:               jal          ra, 12b
15:               jal          ra, 17f
16:               jal          t1, 25f
17:               jal          ra, 14b
18:               jal          s8, 2b
19:               jal          gp, 6b
20:               jal          tp, 3b
21:               jal          ra, 24f
22:               jal          ra, 21b
23:               jal          ra, 0b
24:               jal          t2, 1b
25:               jal          tp, 27f
26:               jal          t0, 29f
27:               jal          ra, 26b
28:               jal          s1, 23b
29:               jal          ra, 13b
30:               srli         zero, s7, 9
sub_4_30:         jal          tp, 3f
0:                jal          ra, 8f
1:                jal          ra, 13f
2:                jal          s1, 5f
3:                jal          s6, 10f
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          t1, 4b
7:                jal          t1, 9f
8:                jal          gp, 2b
9:                jal          ra, 1b
10:               jal          ra, 6b
11:               jal          t1, 7b
12:               jal          ra, 0b
13:               sra          t6, s10, tp
sub_4_31:         jal          tp, 7f
0:                jal          t1, 11f
1:                jal          ra, 8f
2:                jal          gp, 21f
3:                jal          ra, 17f
4:                jal          ra, 2b
5:                jal          ra, 16f
6:                jal          ra, 23f
7:                jal          s0, 19f
8:                jal          ra, 3b
9:                jal          t1, 22f
10:               jal          ra, 12f
11:               jal          ra, 14f
12:               jal          ra, 1b
13:               jal          ra, 10b
14:               jal          ra, 20f
15:               jal          tp, 9b
16:               jal          ra, 4b
17:               jal          a0, 0b
18:               jal          t1, 5b
19:               jal          s7, 13b
20:               jal          ra, 6b
21:               jal          ra, 24f
22:               jal          ra, 18b
23:               jal          ra, 15b
24:               slli         s8, a0, 9
sub_4_2:          jal          tp, 6f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          ra, 12f
3:                jal          ra, 21f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 13f
7:                jal          s1, 1b
8:                jal          t1, 19f
9:                jal          tp, 16f
10:               jal          t1, 2b
11:               jal          ra, 9b
12:               jal          gp, 14f
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          t1, 20f
16:               jal          t1, 4b
17:               jal          ra, 8b
18:               jal          ra, 3b
19:               jal          s3, 5b
20:               jal          t1, 17b
21:               nop
sub_4_23:         jal          tp, 17f
0:                jal          t1, 4f
1:                jal          t0, 18f
2:                jal          ra, 11f
3:                jal          ra, 20f
4:                jal          s4, 13f
5:                jal          ra, 9f
6:                jal          t5, 7f
7:                jal          t1, 10f
8:                jal          a0, 3b
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          s1, 14f
12:               jal          t1, 15f
13:               jal          a1, 2b
14:               jal          t1, 12b
15:               jal          ra, 16f
16:               jal          tp, 1b
17:               jal          s10, 0b
18:               jal          t5, 19f
19:               jal          s5, 5b
20:               lui          t4, 1046463
sub_4_18:         jal          tp, 20f
0:                jal          t3, 15f
1:                jal          ra, 22f
2:                jal          t1, 11f
3:                jal          t1, 0b
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          s0, 16f
7:                jal          ra, 9f
8:                jal          t3, 7b
9:                jal          ra, 19f
10:               jal          ra, 6b
11:               jal          ra, 12f
12:               jal          ra, 4b
13:               jal          ra, 2b
14:               jal          ra, 24f
15:               jal          ra, 26f
16:               jal          t1, 29f
17:               jal          t3, 28f
18:               jal          ra, 25f
19:               jal          ra, 5b
20:               jal          s6, 23f
21:               jal          ra, 18b
22:               jal          t0, 27f
23:               jal          t0, 14b
24:               jal          t1, 1b
25:               jal          a3, 30f
26:               jal          t0, 17b
27:               jal          s9, 13b
28:               jal          s2, 21b
29:               jal          t1, 8b
30:               or           s8, gp, ra
sub_4_3:          jal          tp, 1f
0:                jal          a0, 10f
1:                jal          t0, 2f
2:                jal          t1, 5f
3:                jal          ra, 0b
4:                jal          ra, 3b
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               sltiu        a3, s9, 1001
sub_4_17:         jal          tp, 4f
0:                jal          ra, 2f
1:                jal          t1, 13f
2:                jal          gp, 10f
3:                jal          t1, 9f
4:                jal          ra, 6f
5:                jal          a1, 1b
6:                jal          t3, 3b
7:                jal          s9, 12f
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          t1, 7b
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               srli         zero, a5, 13
sub_4_15:         jal          tp, 22f
0:                jal          t1, 4f
1:                jal          ra, 6f
2:                jal          ra, 14f
3:                jal          s3, 8f
4:                jal          t1, 9f
5:                jal          ra, 17f
6:                jal          ra, 23f
7:                jal          ra, 0b
8:                jal          tp, 20f
9:                jal          ra, 13f
10:               jal          t2, 19f
11:               jal          ra, 21f
12:               jal          ra, 1b
13:               jal          tp, 11b
14:               jal          tp, 10b
15:               jal          t0, 12b
16:               jal          ra, 5b
17:               jal          ra, 2b
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               jal          ra, 16b
21:               jal          ra, 15b
22:               jal          ra, 3b
23:               ori          a7, s7, -1755
sub_4_14:         jal          tp, 3f
0:                jal          ra, 4f
1:                jal          s3, 10f
2:                jal          a6, 16f
3:                jal          tp, 0b
4:                jal          t1, 14f
5:                jal          t0, 1b
6:                jal          t1, 12f
7:                jal          ra, 17f
8:                jal          t1, 2b
9:                jal          ra, 7b
10:               jal          t1, 6b
11:               jal          t0, 9b
12:               jal          ra, 8b
13:               jal          ra, 11b
14:               jal          ra, 15f
15:               jal          ra, 5b
16:               jal          ra, 13b
17:               sltiu        tp, zero, -311
sub_4_10:         jal          tp, 1f
0:                jal          t1, 5f
1:                jal          ra, 8f
2:                jal          t1, 12f
3:                jal          t1, 2b
4:                jal          t6, 3b
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          t1, 9f
9:                jal          gp, 7b
10:               jal          tp, 6b
11:               jal          t1, 10b
12:               slti         t4, t6, -1019
sub_4_4:          jal          tp, 1f
0:                jal          s5, 12f
1:                jal          gp, 6f
2:                jal          t1, 8f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          t1, 9f
6:                jal          ra, 7f
7:                jal          ra, 10f
8:                jal          s0, 13f
9:                jal          ra, 4b
10:               jal          a2, 0b
11:               jal          ra, 2b
12:               jal          ra, 15f
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               jal          a7, 11b
16:               and          s9, s9, s4
sub_4_21:         jal          tp, 28f
0:                jal          a5, 13f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          t1, 20f
4:                jal          t1, 18f
5:                jal          t1, 19f
6:                jal          gp, 27f
7:                jal          ra, 25f
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 0b
11:               jal          ra, 14f
12:               jal          ra, 9b
13:               jal          t1, 17f
14:               jal          t1, 8b
15:               jal          ra, 6b
16:               jal          t1, 30f
17:               jal          ra, 21f
18:               jal          ra, 26f
19:               jal          ra, 23f
20:               jal          t1, 2b
21:               jal          ra, 7b
22:               jal          s5, 1b
23:               jal          t1, 24f
24:               jal          ra, 11b
25:               jal          a7, 3b
26:               jal          s10, 16b
27:               jal          t1, 22b
28:               jal          t0, 29f
29:               jal          t1, 10b
30:               sltu         s3, t1, t5
sub_4_7:          jal          tp, 1f
0:                jal          ra, 16f
1:                jal          t1, 8f
2:                jal          ra, 19f
3:                jal          ra, 6f
4:                jal          t5, 15f
5:                jal          s0, 24f
6:                jal          ra, 21f
7:                jal          t1, 10f
8:                jal          t1, 9f
9:                jal          ra, 5b
10:               jal          gp, 4b
11:               jal          t1, 20f
12:               jal          a6, 7b
13:               jal          t1, 26f
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          ra, 13b
17:               jal          ra, 23f
18:               jal          ra, 25f
19:               jal          ra, 18b
20:               jal          s9, 22f
21:               jal          ra, 2b
22:               jal          s0, 14b
23:               jal          gp, 11b
24:               jal          t1, 12b
25:               jal          gp, 0b
26:               or           s3, a5, a2
sub_4_32:         jal          tp, 7f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          ra, 13f
3:                jal          s5, 9f
4:                jal          t0, 3b
5:                jal          ra, 11f
6:                jal          t0, 10f
7:                jal          tp, 5b
8:                jal          t1, 2b
9:                jal          ra, 15f
10:               jal          tp, 14f
11:               jal          tp, 8b
12:               jal          t1, 1b
13:               jal          t1, 12b
14:               jal          t1, 0b
15:               xor          s3, t3, a5
sub_4_24:         jal          tp, 18f
0:                jal          tp, 12f
1:                jal          ra, 3f
2:                jal          t1, 24f
3:                jal          ra, 2b
4:                jal          ra, 15f
5:                jal          s9, 23f
6:                jal          ra, 14f
7:                jal          ra, 10f
8:                jal          ra, 20f
9:                jal          t1, 16f
10:               jal          s6, 9b
11:               jal          ra, 17f
12:               jal          t1, 19f
13:               jal          ra, 11b
14:               jal          ra, 5b
15:               jal          tp, 25f
16:               jal          gp, 6b
17:               jal          ra, 7b
18:               jal          s7, 22f
19:               jal          ra, 1b
20:               jal          ra, 13b
21:               jal          t1, 8b
22:               jal          s3, 0b
23:               jal          ra, 4b
24:               jal          ra, 21b
25:               slti         s3, a1, -382
                  add          s3, s10, s11
                  srli         s7, t3, 18
                  xor          a5, s5, s3
                  lui          gp, 98491
                  bge          a5, s5, 17f
                  add          s7, t6, t3
                  ori          s7, a3, 1157
                  srai         s1, t4, 17
                  bltu         s7, s2, 13f
                  add          s5, t2, s5
                  sub          a2, a4, t4
                  andi         s2, a2, -1713
                  slt          a5, t6, s11
13:               sltiu        a0, a4, 1015
                  xori         a2, a3, -19
                  bne          a6, ra, 16f
16:               bgeu         a5, s11, 22f
17:               bltu         a0, t0, 33f
                  addi         ra, s9, 1933
                  bge          s5, s3, 31f
                  addi         t0, a7, -1324
                  add          s6, a7, s4
22:               srai         s1, s10, 13
                  bltu         t5, a6, 41f
                  blt          sp, tp, 38f
                  ori          t4, s6, 1557
                  xori         s2, s6, -308
                  xori         t4, t1, 194
                  sub          tp, s10, a6
                  bgeu         t3, s8, 34f
                  ori          a1, s4, -1598
31:               bltu         a1, t4, 51f
                  bne          t4, a4, 50f
33:               sltu         a7, t0, s10
34:               auipc        t5, 115391
                  beq          ra, s5, 51f
                  slti         t4, sp, -1257
                  srai         ra, tp, 13
38:               xor          t1, t6, a6
                  ori          t5, tp, -744
                  sll          t6, s3, t0
41:               or           s10, s2, s4
                  sltu         s5, a1, s2
                  slli         a7, sp, 16
                  or           t4, s10, s8
                  sub          s5, tp, t1
                  srl          s5, a3, a4
                  bltu         a1, sp, 57f
                  xori         s3, s9, 600
                  auipc        s1, 689198
50:               xor          a0, ra, a5
51:               sub          s2, t0, t5
                  blt          s7, a3, 69f
                  sra          a6, s0, t2
                  bltu         zero, s7, 55f
55:               beq          s9, s11, 64f
                  srai         s7, s7, 21
57:               sltiu        s4, s0, 1943
                  add          t0, s6, tp
                  addi         a6, t6, 1938
                  and          ra, s7, t5
                  lui          a0, 287454
                  beq          a0, s6, 66f
                  beq          a7, sp, 66f
64:               or           t5, t2, t2
                  slt          s1, t3, s11
66:               addi         s2, a6, 1749
                  ori          a0, s7, 1919
                  nop
69:               slli         t2, t0, 29
                  srl          t2, t0, gp
                  srli         s3, t2, 27
                  srl          tp, s9, gp
                  bltu         tp, s6, 82f
                  slt          s2, s0, ra
                  blt          s9, t3, 83f
                  beq          a6, a1, 80f
                  sub          t6, s10, a3
                  lui          t4, 88190
                  bge          t6, ra, 97f
80:               slti         t6, t3, 1773
                  bgeu         sp, a3, 98f
82:               sub          s6, t0, s5
83:               ori          s3, s2, -1494
                  slli         s2, sp, 10
                  sll          a6, t6, s5
                  auipc        t6, 616404
                  sra          s7, t3, t6
                  bne          ra, s1, 104f
                  or           gp, a1, s1
                  sra          t0, a3, gp
                  addi         a5, a0, 479
                  slt          t1, a3, a7
                  andi         t2, ra, 1639
                  sub          a1, tp, s4
                  xori         s8, s1, -731
                  nop
97:               bge          gp, t5, 101f
98:               bne          s11, a7, 107f
                  ori          a1, t0, 239
                  sra          a3, s8, t1
101:              auipc        a5, 490406
                  auipc        a0, 268306
                  sltu         t5, gp, a0
104:              xor          t6, a6, t5
                  bgeu         s0, s9, 117f
                  srli         s7, s2, 9
107:              bne          s4, s4, 125f
                  bne          s10, s10, 121f
                  andi         s8, ra, -1069
                  srai         ra, s3, 6
                  sll          s6, t2, tp
                  slli         t0, s1, 10
                  bltu         s11, t6, 121f
                  xor          a0, gp, sp
                  bge          s0, t1, 121f
                  srai         a1, a3, 30
117:              bltu         t6, s7, 134f
                  slli         t1, s1, 5
                  sll          s8, a0, t4
                  srli         t4, a6, 13
121:              sltu         a7, s1, t1
                  lui          s0, 600343
                  slti         gp, a0, 1117
                  and          gp, tp, zero
125:              srli         ra, a7, 2
                  sra          t2, t1, a3
                  xor          t4, s4, zero
                  ori          gp, a7, -531
                  bge          t5, a2, 138f
                  sra          a3, s0, s6
                  lui          s9, 742529
                  nop
                  nop
134:              nop
                  addi         s6, a7, 1854
                  beq          a7, s6, 140f
                  auipc        t3, 1002262
138:              slli         zero, a4, 16
                  sll          t6, s7, s5
140:              bge          t1, t0, 153f
                  sll          s0, s4, s4
                  nop
                  slti         a7, s10, -230
                  add          s2, s4, s5
                  blt          t4, t0, 154f
                  nop
                  lui          s9, 240017
                  sll          a0, t0, s5
                  beq          a7, s10, 169f
                  ori          s7, t2, -1778
                  blt          a3, a0, 155f
                  and          gp, ra, s1
153:              lui          t1, 353445
154:              sra          t4, a1, a3
155:              nop
                  lui          ra, 594340
                  sll          s2, s6, s4
                  sltu         a7, a2, t2
                  srl          s6, s6, zero
                  lui          tp, 982420
                  slt          s3, a2, t5
                  auipc        t4, 425252
                  bltu         a7, s10, 173f
                  bge          zero, s3, 178f
                  lui          ra, 499746
                  or           t1, tp, s10
                  bgeu         a4, gp, 172f
                  and          a7, gp, s3
169:              sub          a7, gp, a7
                  slli         t2, s0, 12
                  lui          s6, 454578
172:              addi         t5, t4, 1211
173:              or           s3, s11, a3
                  bgeu         a7, s4, 182f
                  sll          a3, s11, s5
                  addi         t6, t2, 477
                  blt          s6, s4, 178f
178:              and          ra, sp, t5
                  slt          s3, a1, s8
                  sub          s1, gp, a7
                  slt          s6, a2, s6
182:              sll          s7, gp, t3
                  sltu         tp, s6, s3
                  sra          a2, s7, zero
                  srai         s3, zero, 7
                  bgeu         zero, t3, 204f
                  and          gp, a3, a4
                  srl          s2, s7, s4
                  andi         t3, a4, -858
                  slli         a5, s11, 29
                  sll          t0, t5, t1
                  bgeu         ra, gp, 195f
                  slti         t3, a5, 1214
                  sltiu        t1, t1, -1920
195:              sra          a0, s4, gp
                  sra          s10, a0, a2
                  addi         s7, a7, 590
                  blt          s6, s2, 206f
                  or           s4, gp, a1
                  lui          ra, 643596
                  andi         s5, a7, -1326
                  sltu         s0, s4, a2
                  sltu         a0, a5, s3
204:              sra          t2, t6, a3
                  auipc        s0, 1020557
206:              lui          s9, 589422
                  xori         t1, t1, 1835
                  addi         t6, s4, 700
                  slt          t4, s7, s11
                  sra          ra, s2, gp
                  addi         zero, a4, -1553
                  slt          s10, t0, t1
                  sra          t4, a7, a5
                  bgeu         a4, s11, 231f
                  andi         a6, s0, 506
                  bgeu         a7, s11, 234f
                  sub          a2, t2, gp
                  bne          a3, tp, 231f
                  lui          t4, 71146
                  blt          s3, s6, 221f
221:              sll          t5, t2, a5
                  sll          s6, t4, a0
                  beq          s9, s9, 232f
                  sltu         zero, s0, t5
                  blt          a4, sp, 243f
                  slti         s5, s1, 1385
                  srl          a6, s0, s6
                  srai         a5, t0, 24
                  addi         s2, sp, -1693
                  nop
231:              nop
232:              add          t3, s0, s1
                  srai         a3, s2, 27
234:              slti         a0, tp, -1935
                  ori          a5, t4, 429
                  bne          a2, s1, 252f
                  srli         t6, ra, 28
                  auipc        s2, 531235
                  blt          ra, s5, 257f
                  addi         s0, a3, 1721
                  bltu         s1, s4, 253f
                  sub          a1, a1, s2
243:              andi         s7, s10, -1523
                  or           a2, s5, s0
                  or           s0, s4, t0
                  sra          ra, s10, gp
                  add          tp, a6, s11
                  sub          a1, a1, s1
                  bge          ra, a2, 261f
                  sra          a0, a1, a4
                  andi         s0, a1, -1285
252:              sltu         t1, tp, t5
253:              lui          s9, 399156
                  slli         s8, ra, 2
                  blt          a3, a3, 271f
                  addi         s0, t4, -574
257:              sltiu        s8, zero, -1262
                  or           a6, a1, sp
                  auipc        ra, 181774
                  srl          s5, a5, s2
261:              bltu         a5, a7, 265f
                  bltu         s2, s10, 278f
                  and          s3, s0, a1
                  xori         t1, s1, -1686
265:              lui          a7, 414429
                  bge          s7, s8, 271f
                  slli         t5, tp, 28
                  slli         s1, s10, 26
                  sll          a1, a2, a7
                  slli         s1, s1, 15
271:              addi         t6, s8, -1971
                  xori         t0, ra, -835
                  or           tp, s0, s1
                  addi         zero, s0, -62
                  ori          t0, t3, -1876
                  bne          a3, s8, 292f
                  bgeu         tp, t6, 293f
278:              slti         s9, a3, -820
                  bne          s5, a5, 292f
                  xor          s5, s10, gp
                  slti         a2, t6, -1945
                  blt          t3, tp, 299f
                  bltu         s9, s1, 300f
                  nop
                  sltu         s7, a1, tp
                  slt          t5, a5, t1
                  or           a1, t4, a1
                  srl          s6, sp, s7
                  srai         a7, a0, 17
                  bltu         a7, gp, 308f
                  bne          a3, s3, 303f
292:              add          a0, t5, a2
293:              lui          t2, 890450
                  blt          t1, t3, 314f
                  nop
                  and          a0, t0, t6
                  sltiu        s7, s2, 377
                  slli         t4, t6, 12
299:              xori         t3, s9, 676
300:              beq          sp, t6, 305f
                  beq          s4, t5, 319f
                  srl          t6, t6, a4
303:              sra          s1, s8, a6
                  bge          s8, s5, 310f
305:              ori          t5, s11, 1162
                  addi         gp, a6, 507
                  bltu         sp, a3, 321f
308:              blt          t3, a5, 326f
                  xori         s0, a2, 761
310:              addi         ra, t5, 355
                  lui          s2, 933960
                  sll          t6, s11, s7
                  bge          s0, t2, 331f
314:              srli         a6, t1, 16
                  beq          t1, ra, 316f
316:              slli         s4, t2, 8
                  addi         s7, a5, -785
                  nop
319:              beq          s3, s8, 332f
                  blt          a3, a2, 323f
321:              bne          t5, ra, 329f
                  sltiu        t4, s0, -512
323:              or           a2, s2, s5
                  add          zero, ra, s3
                  sll          t4, s6, a5
326:              ori          s4, t3, 619
                  or           s7, s6, a1
                  xor          a1, gp, gp
329:              bge          sp, a5, 333f
                  sltu         t5, t5, t2
331:              sll          tp, t1, s2
332:              lui          s7, 353546
333:              slli         a2, sp, 15
                  bge          s10, ra, 350f
                  sltiu        t1, s4, -1275
                  srli         s2, gp, 12
                  blt          t5, tp, 341f
                  slt          s0, s2, t1
                  andi         s9, a0, -560
                  addi         s7, a1, -249
341:              blt          a6, t6, 346f
                  sltiu        a5, a4, -1344
                  and          s0, sp, ra
                  sub          s6, a0, s11
                  bge          a0, t3, 349f
346:              slt          a0, a4, s0
                  or           a7, t1, zero
                  lui          a0, 344712
349:              xori         s8, a6, -1970
350:              sltu         s6, a2, t6
                  xor          s5, t5, s9
                  add          t4, a2, a0
                  andi         a5, s4, -1615
                  ori          tp, t5, -270
                  sltiu        a6, t2, 1275
                  srli         s9, a3, 3
                  blt          s7, a6, 366f
                  sltu         a5, a2, t2
                  sltiu        s9, t0, 538
                  sub          zero, sp, s1
                  bne          a1, s5, 370f
                  addi         s1, t0, 1126
                  bge          t4, t4, 375f
                  auipc        s0, 333667
                  bne          s3, a5, 373f
366:              srl          a0, s0, a6
                  lui          s1, 799922
                  andi         ra, a4, -1935
                  and          t0, s5, a6
370:              xor          t6, s7, ra
                  nop
                  sll          gp, zero, s8
373:              srai         a1, t5, 9
                  add          s6, a1, s3
375:              bltu         sp, tp, 385f
                  srai         gp, s4, 25
                  lui          gp, 838591
                  sub          a0, t3, s3
                  andi         a6, t5, 1541
                  bge          s1, s8, 381f
381:              or           s8, ra, gp
                  blt          sp, a5, 391f
                  blt          s7, a0, 399f
                  xori         s8, a0, -438
385:              ori          s9, sp, 1487
                  lui          a1, 187828
                  bgeu         s5, s8, 404f
                  srli         s10, s2, 14
                  or           s5, s6, s5
                  add          tp, t3, s10
391:              or           t5, a0, t1
                  sra          s9, a2, s2
                  bge          t6, s2, 407f
                  or           a0, s7, zero
                  bgeu         a5, t6, 413f
                  srai         a1, a5, 10
                  auipc        zero, 447977
sub_4_16:         jal          tp, 0f
0:                jal          s3, 21f
1:                jal          ra, 4f
2:                jal          ra, 22f
3:                jal          ra, 18f
4:                jal          ra, 7f
5:                jal          t1, 14f
6:                jal          t1, 5b
7:                jal          ra, 9f
8:                jal          a6, 2b
9:                jal          s10, 8b
10:               jal          t1, 12f
11:               jal          t1, 23f
12:               jal          ra, 1b
13:               jal          t1, 16f
14:               jal          a6, 20f
15:               jal          t4, 6b
16:               jal          ra, 24f
17:               jal          t3, 3b
18:               jal          t2, 10b
19:               jal          t1, 11b
20:               jal          t1, 17b
21:               jal          ra, 19b
22:               jal          ra, 13b
23:               jal          ra, 15b
24:               auipc        s10, 964903
                  andi         a5, tp, -388
399:              auipc        t5, 9022
                  addi         s8, s5, -242
                  addi         t5, a7, -1719
                  bgeu         s7, a5, 411f
                  sltu         s8, s6, s6
404:              slti         s4, s8, 957
                  and          t4, t4, s11
                  and          t6, a2, zero
407:              auipc        s4, 748259
                  bge          s5, a0, 416f
                  addi         a0, gp, -1925
                  srl          s1, a1, s9
411:              bltu         ra, s4, 416f
                  bltu         s6, t5, 428f
413:              xori         s1, a2, -424
                  srl          s5, s1, s7
                  bne          t4, s11, 419f
416:              sra          t6, s1, s1
                  sltu         s8, zero, a4
                  sub          a3, s5, sp
419:              sltu         a0, a4, s3
                  srai         ra, gp, 21
                  blt          t6, t5, 427f
                  beq          a3, s5, 434f
                  auipc        s9, 977078
                  ori          tp, s11, -568
                  and          s4, s4, s9
                  bge          s1, a2, 427f
427:              bne          t3, s4, 440f
428:              auipc        s8, 1023004
                  sub          t6, a7, t4
                  srli         s5, s7, 20
                  slt          t5, s1, a2
                  sltu         s0, s11, s3
                  xori         a3, a6, -2040
434:              srli         a5, t0, 11
                  srli         t2, s2, 15
                  xori         a7, s3, 1568
                  sra          s0, a6, s9
                  bltu         ra, s7, 442f
                  bge          s4, t2, 452f
440:              beq          s7, s4, 458f
                  bge          s7, a6, 449f
442:              slli         t0, s3, 6
                  and          a0, t4, sp
                  bgeu         a1, a5, 462f
                  slti         t5, s0, 947
                  beq          s3, t6, 462f
                  srl          s3, a2, s8
                  bne          zero, t6, 465f
449:              auipc        s4, 441274
                  sra          s5, tp, t6
                  nop
452:              add          a0, t2, s8
                  andi         s6, s6, -1789
                  nop
                  auipc        a3, 222420
                  srai         a1, a1, 14
                  addi         t1, a1, 1404
458:              sll          a5, a2, a5
                  bgeu         a5, s2, 468f
                  or           s5, sp, s4
                  sub          s7, s9, s1
462:              sub          s1, s5, s11
                  blt          sp, s4, 483f
                  xori         ra, t4, -666
465:              srl          s8, t4, gp
                  slt          t0, a7, a3
                  sub          s6, t3, a3
468:              slli         tp, a4, 29
                  ori          zero, zero, -1784
                  beq          t3, t2, 480f
                  sub          t0, a4, a6
                  bgeu         s2, s5, 476f
                  sll          s10, t3, s1
                  bne          s0, a6, 483f
                  sltu         t2, a4, zero
476:              sub          t4, a7, tp
                  nop
                  bgeu         gp, ra, 496f
                  bltu         s2, a0, 484f
480:              slt          s0, sp, s5
                  srli         s9, a0, 9
                  add          a7, t1, s9
483:              andi         s8, s7, -1302
484:              sltu         a5, gp, a5
                  and          t4, t0, s6
                  ori          t3, gp, -1649
                  beq          s2, a7, 499f
                  sll          t5, sp, s8
                  bltu         a6, s0, 492f
                  nop
                  slti         s2, s8, 167
492:              xori         s0, s8, 1225
                  add          zero, s9, a4
                  sltu         t0, gp, a5
                  slti         a2, a6, -2005
496:              sub          tp, t5, sp
                  and          s2, a6, s5
                  ori          s0, s0, 189
499:              bgeu         s4, s11, 500f
500:              nop
                  ori          zero, a0, -1363
                  xor          s0, t2, s8
                  and          t2, a4, a1
                  addi         s3, ra, 1278
                  sll          a7, s0, s2
                  srl          s9, s10, s10
                  sub          s1, t5, t1
                  nop
                  bgeu         gp, t1, 518f
                  sll          a0, s2, a5
                  or           a7, a4, s0
                  bne          a6, t0, 530f
                  xori         t4, zero, -1110
                  srli         a1, s3, 4
                  sltu         s5, s5, s0
                  add          s6, a4, a7
                  lui          t4, 21920
518:              or           a0, a2, a0
                  bge          s0, t6, 523f
                  lui          a3, 728072
                  sra          t1, s11, a5
                  srli         s4, s11, 5
523:              sltiu        a6, a2, 1759
                  bge          s11, t6, 529f
                  srli         t5, s6, 2
                  xori         s2, a0, -1920
                  slti         t4, a1, -1178
                  xor          t4, s6, zero
529:              auipc        s7, 285907
530:              bltu         s10, t5, 531f
531:              bgeu         t4, s5, 541f
                  ori          t6, zero, 1971
                  and          s8, ra, a3
                  andi         ra, zero, 214
                  sltu         ra, s1, s11
                  or           t0, ra, s3
                  slti         ra, a0, -1565
                  blt          s5, s0, 554f
                  xor          t3, a3, s10
                  nop
541:              sll          t5, s7, s9
                  bge          t3, s9, 556f
                  add          t1, s2, t5
                  bne          s0, s3, 548f
                  bgeu         t1, s9, 553f
                  slt          t4, s10, s0
                  slti         s10, a0, -407
548:              xori         s2, t3, -1792
                  add          s9, s2, t2
                  sub          s7, t6, t5
                  sll          a1, s6, t3
                  xor          a5, s0, s4
553:              add          t5, a0, a1
554:              lui          s10, 146603
                  sltu         a2, s10, s0
556:              auipc        tp, 126235
sub_4_33:         jal          tp, 10f
0:                jal          t1, 7f
1:                jal          ra, 9f
2:                jal          t1, 16f
3:                jal          ra, 18f
4:                jal          t1, 23f
5:                jal          t1, 24f
6:                jal          t1, 3b
7:                jal          t4, 6b
8:                jal          ra, 21f
9:                jal          t1, 20f
10:               jal          ra, 15f
11:               jal          ra, 5b
12:               jal          tp, 19f
13:               jal          ra, 2b
14:               jal          ra, 1b
15:               jal          ra, 12b
16:               jal          ra, 4b
17:               jal          a0, 22f
18:               jal          s3, 17b
19:               jal          t1, 13b
20:               jal          ra, 11b
21:               jal          s6, 0b
22:               jal          t6, 14b
23:               jal          t0, 8b
24:               auipc        s2, 884052
                  sltiu        a7, t2, -1749
                  blt          a4, a4, 574f
                  sltiu        a0, a5, 1602
                  slli         s8, s1, 26
                  lui          t6, 620270
                  srai         a6, s4, 4
                  sltiu        s10, s8, 937
                  sltiu        zero, s10, -1561
                  xori         s4, t3, 1891
                  srai         t5, s2, 20
                  xori         tp, t6, 1887
                  andi         gp, s8, 1332
                  sltu         t1, a6, s6
                  ori          zero, ra, -1356
                  ori          s10, t0, -84
                  bge          a7, s9, 590f
                  bgeu         t1, s1, 586f
574:              slli         a7, s7, 25
                  sra          t2, t3, t0
                  auipc        a6, 343518
                  slt          ra, s1, gp
                  add          zero, s5, t4
                  or           s0, gp, s1
                  srli         t6, a2, 13
                  sll          t4, s4, s1
                  lui          s3, 565973
                  or           s3, s11, s0
                  slt          a0, t4, t2
                  xor          s5, s5, s9
586:              slt          t5, t5, s5
                  and          s2, t3, t1
                  or           ra, a3, a1
                  bltu         a4, ra, 594f
590:              slli         t4, zero, 8
                  blt          ra, a3, 608f
                  bge          ra, s11, 598f
                  xor          a2, a4, a4
594:              or           s2, a2, ra
                  slt          s3, t5, s11
                  nop
                  add          a6, a4, s6
598:              lui          t0, 141536
                  andi         t5, s2, 1859
                  andi         t2, s2, -1130
                  xori         tp, t4, -1946
                  beq          ra, a4, 614f
                  slti         t3, gp, -1504
                  bltu         s2, ra, 617f
                  slli         s8, s4, 23
                  sltu         tp, t1, t3
                  xori         t5, t5, 1265
608:              bgeu         a0, s9, 611f
                  and          tp, a0, a1
                  sltu         t4, zero, zero
611:              ori          t1, s0, -847
                  blt          t0, s8, 616f
                  sra          s5, sp, a0
614:              srl          s1, sp, t2
                  and          s4, t3, s7
616:              and          s2, a0, ra
617:              lui          t2, 283439
                  nop
                  blt          a5, zero, 627f
                  srai         a2, tp, 2
                  beq          s8, s10, 637f
                  slti         a2, t5, 903
                  bltu         s4, s4, 632f
                  andi         t0, a2, 1773
                  xori         gp, s10, 1102
                  nop
627:              bne          a1, sp, 645f
                  lui          ra, 315851
                  andi         s0, s9, 1093
                  srli         a3, s5, 11
                  srai         t2, t1, 15
632:              srl          ra, s2, a2
                  srai         a6, s11, 16
                  blt          zero, s1, 635f
635:              bltu         t6, t0, 653f
                  sll          t5, s5, s8
637:              bltu         sp, gp, 657f
                  bge          a2, s2, 647f
                  srli         s1, s4, 13
                  beq          a4, a0, 652f
                  bgeu         s0, s10, 658f
                  sltu         zero, t4, a4
                  or           t6, s1, t3
                  ori          a6, a2, -1660
645:              andi         t0, sp, -397
                  sra          t4, t1, s5
647:              bge          s8, s4, 656f
                  and          t6, s8, a4
                  srl          s8, t3, s4
                  sll          s2, gp, s7
                  lui          t4, 905974
652:              lui          a6, 954338
653:              ori          s10, s2, -1166
                  slli         t5, ra, 1
                  blt          a5, a5, 663f
656:              sra          t0, sp, s7
657:              sub          s4, s9, a1
658:              blt          s11, a3, 676f
                  slti         s4, s9, 1934
                  nop
                  add          t4, a6, ra
                  lui          a2, 431464
663:              bge          s10, a0, 675f
                  nop
                  andi         t1, gp, 1818
                  xor          tp, a2, t3
                  srl          s0, zero, s0
                  blt          s4, zero, 688f
                  sll          a0, t2, a6
                  auipc        t1, 680512
                  bge          ra, a3, 689f
                  xori         s9, s6, -1020
                  sub          s6, t4, a6
                  beq          s1, s0, 687f
675:              blt          t2, s7, 691f
676:              bltu         s10, s4, 690f
                  andi         a2, s9, -1443
                  srli         t2, t4, 13
                  slli         a5, zero, 0
                  auipc        a1, 986207
                  andi         a1, a7, -1322
                  sll          t4, a3, s11
                  xor          gp, t4, t2
                  auipc        s7, 511585
                  blt          s9, ra, 701f
                  auipc        a7, 722509
687:              nop
688:              ori          s4, gp, -1741
689:              sltu         a6, s6, a4
690:              bltu         t0, a2, 707f
691:              lui          t6, 545078
                  slli         t3, tp, 10
                  bgeu         s8, a4, 701f
                  ori          t2, s10, 190
                  lui          s10, 648949
                  bgeu         gp, s6, 713f
                  srli         zero, s11, 13
                  slt          s4, s4, s5
                  slli         s9, a6, 6
                  addi         tp, sp, 699
701:              srai         a0, a7, 22
                  bltu         s11, t0, 711f
                  sub          tp, a4, t0
                  slt          t0, s11, s7
                  bltu         s9, t3, 714f
                  srai         gp, s8, 15
707:              xori         a1, a2, 1970
                  lui          t2, 844901
                  ori          t4, a6, 1765
                  sltu         ra, s10, ra
711:              add          t0, t6, t4
                  srli         s6, tp, 3
713:              slti         a1, s6, -1138
714:              lui          s2, 656767
                  ori          a7, t5, -1780
                  addi         zero, s0, 489
                  sra          s3, s0, s1
                  lui          s10, 1044334
                  bne          s2, s5, 720f
720:              slli         t6, a3, 23
                  or           a6, s2, s8
                  or           s8, a0, s0
                  sltu         a2, zero, a6
                  sra          zero, s1, s5
                  srl          s1, s0, a6
                  nop
                  andi         a5, t1, 1745
                  srl          a0, gp, s10
                  ori          a2, t3, -1559
                  lui          t2, 302178
                  srli         s1, a0, 20
                  or           s4, s9, a4
                  beq          gp, t3, 743f
                  slt          s1, s3, s10
                  nop
                  addi         ra, s8, -1798
                  slli         s0, ra, 4
                  srli         a1, gp, 13
                  slt          s9, a0, s9
                  bltu         s10, a1, 744f
                  srai         t5, a4, 17
                  bne          ra, a1, 745f
743:              auipc        s8, 117417
744:              sra          gp, t2, t6
745:              sub          t0, a2, t3
                  sltu         s3, a1, s3
                  ori          s1, a4, -122
                  nop
                  sltu         s4, s6, t4
                  xor          t1, zero, t2
                  srl          a6, a7, a7
                  and          t4, a5, s5
                  auipc        s0, 246878
                  bgeu         a5, t6, sub_4_j5 #branch to jump instr
                  and          s8, s0, s5
sub_4_j5:         jal          tp, sub_5 #jump sub_4 -> sub_5
                  bne          s6, s0, 761f
                  sltiu        gp, t1, -293
                  and          s1, a3, s5
                  auipc        zero, 322342
                  bne          s0, s0, 759f
                  andi         t4, s5, -1177
                  sltiu        t0, s5, -1425
                  sll          a7, s11, ra
                  sltu         s5, s5, s8
                  sltiu        s2, s3, 252
759:              or           t2, a6, s9
                  bne          sp, s1, 761f
761:              xori         a6, s8, -450
                  slt          t0, s9, a2
                  beq          gp, a4, 767f
                  srl          zero, t5, t4
                  bne          a0, s7, 769f
                  add          a7, a1, a0
767:              slt          s9, a1, s11
                  beq          t2, a4, 786f
769:              blt          s2, s3, 774f
                  slli         s7, t2, 2
                  srai         t2, tp, 26
                  srli         t0, sp, 6
                  bltu         s11, t1, 786f
774:              srl          a0, s8, s7
                  sltu         a3, a7, s3
                  add          t6, ra, t3
                  bltu         s1, s4, 793f
                  xori         t1, s2, -1579
                  srai         gp, s10, 23
                  slt          a3, a4, t4
                  bne          ra, t1, 799f
                  slti         t5, t6, -667
                  andi         zero, s10, -21
                  sltiu        a5, t5, 1268
                  blt          s6, s5, 790f
786:              lui          a1, 934021
                  srl          zero, s8, a4
                  beq          t1, s3, 792f
                  or           ra, s8, s11
790:              bgeu         a0, s6, 793f
                  sltiu        t2, t2, -1073
792:              xor          a3, a6, s8
793:              or           a2, sp, s4
                  srai         a2, tp, 13
                  sll          a1, a4, t5
                  andi         t3, s3, 488
                  slli         a7, s5, 1
                  bne          s0, s3, 808f
799:              srai         s8, s8, 1
                  add          a1, s11, t0
                  lui          t4, 253110
                  blt          s9, s10, 811f
                  lui          zero, 658862
                  slti         t3, s4, 1551
                  bge          t6, a6, 823f
                  blt          a4, s0, 812f
                  bgeu         tp, s6, 823f
808:              bltu         tp, sp, 826f
                  bne          s9, ra, 825f
                  sll          t4, s5, a1
811:              add          tp, a2, s4
812:              add          ra, s1, a4
                  slt          a3, t3, a0
                  or           t5, s9, a1
                  addi         s4, a5, -1079
                  addi         s3, t4, -598
                  bge          sp, a1, 821f
                  beq          gp, a0, 830f
                  auipc        t3, 246368
                  slt          s3, zero, s2
821:              and          a1, s4, s7
                  sub          gp, a0, sp
823:              nop
sub_4_12:         jal          tp, 8f
0:                jal          s2, 2f
1:                jal          ra, 24f
2:                jal          t1, 17f
3:                jal          ra, 18f
4:                jal          ra, 16f
5:                jal          ra, 21f
6:                jal          ra, 26f
7:                jal          s6, 23f
8:                jal          ra, 5b
9:                jal          tp, 12f
10:               jal          ra, 28f
11:               jal          ra, 25f
12:               jal          s6, 13f
13:               jal          tp, 10b
14:               jal          t1, 4b
15:               jal          ra, 6b
16:               jal          ra, 3b
17:               jal          t1, 15b
18:               jal          t1, 9b
19:               jal          ra, 7b
20:               jal          ra, 0b
21:               jal          t1, 20b
22:               jal          t4, 1b
23:               jal          ra, 11b
24:               jal          ra, 19b
25:               jal          ra, 14b
26:               jal          ra, 27f
27:               jal          ra, 22b
28:               addi         a5, a0, -731
                  andi         t2, s7, -1181
825:              andi         gp, t4, -1882
826:              slli         a0, s5, 10
                  add          s3, s8, t0
                  sltiu        a7, t3, 63
                  srli         zero, a5, 10
830:              sll          s10, t0, t1
                  sll          t1, a6, s9
                  bge          a2, a0, 833f
833:              srai         s8, s4, 6
                  sltu         a2, a7, t6
                  nop
                  nop
                  sltiu        s9, a0, -34
                  addi         s10, a0, -1104
                  srai         a1, s4, 18
                  add          gp, a1, s2
                  sltu         t5, s11, t1
                  bge          sp, t4, 855f
                  and          t3, s8, gp
                  bgeu         a1, s1, 857f
                  slli         s3, sp, 24
                  xor          s0, s5, s0
                  and          t6, s1, t4
                  srl          a0, ra, a2
                  nop
                  beq          s2, s4, 868f
                  slti         s10, s0, -475
                  and          s3, zero, t3
                  and          zero, tp, a3
                  auipc        t0, 765794
855:              nop
                  bne          a3, a6, 870f
857:              or           s4, s3, s8
                  auipc        zero, 504747
                  or           s3, s8, s3
                  slti         a5, s10, -1477
                  bltu         sp, tp, 878f
                  addi         a2, sp, -884
                  bne          a5, s9, 871f
                  srai         gp, ra, 23
                  sll          s1, s4, t1
                  auipc        t4, 139728
                  addi         a2, s10, -827
868:              srai         gp, t6, 17
                  slt          s6, s0, a7
870:              sltiu        s6, s11, -1754
871:              sra          a0, t3, tp
                  slti         a3, s6, -539
                  sub          a3, t0, s1
                  nop
                  sltiu        a1, s9, 560
                  sll          a1, s2, sp
                  srai         t5, s1, 28
878:              addi         a7, gp, -280
                  nop
                  srli         zero, s3, 20
                  slti         a1, s1, 1552
                  add          s1, s2, s1
                  xor          s4, a2, tp
                  srai         a3, a1, 30
                  sll          a3, s4, s5
                  slt          s1, s3, a7
                  bge          s5, s3, 903f
                  nop
                  slt          a6, s4, s3
                  addi         s6, a1, 693
                  srli         s8, a0, 23
                  nop
                  lui          a6, 873953
                  slt          s7, a1, gp
                  beq          s10, a5, 915f
                  bgeu         s8, t6, 914f
                  srai         a3, ra, 22
                  xori         t2, t1, -717
                  slti         a2, gp, 52
                  ori          s9, a4, -994
                  bne          t0, s7, 910f
                  nop
903:              or           t2, s3, t2
                  sub          t6, a4, a2
                  sra          s3, a2, ra
                  slti         s7, ra, -1600
                  sub          t1, s9, s9
                  bltu         t0, s6, 916f
                  blt          a4, a3, 921f
910:              bge          s8, a7, 914f
                  beq          s2, t6, 912f
912:              sub          s1, s11, s5
                  beq          a2, t4, 918f
914:              or           s10, s8, a3
915:              blt          a7, zero, 932f
916:              bltu         t2, s4, 921f
                  beq          t3, zero, 926f
918:              lui          t2, 981521
                  bltu         s10, s4, 933f
                  slt          a2, s1, s1
921:              lui          s4, 707818
                  sltu         tp, a7, a7
                  addi         t5, s2, -2023
                  srai         ra, gp, 16
                  sll          s2, t6, sp
926:              blt          sp, t3, 944f
                  lui          s10, 892475
                  bltu         s9, tp, 948f
                  sll          t1, s10, s8
                  bge          gp, s9, 933f
                  ori          s2, t3, 1537
932:              beq          a0, s11, 949f
933:              srli         s2, a0, 5
                  srli         a6, s1, 23
                  sltiu        s5, a1, 1526
                  xori         tp, s8, -1075
                  slti         tp, s3, 254
                  bne          gp, sp, 942f
                  sub          zero, a3, t3
                  slli         s2, s6, 13
                  bne          s10, t5, 953f
942:              nop
                  bne          a4, sp, 953f
944:              bne          s2, zero, 960f
                  add          s5, s7, s5
                  blt          a6, zero, 964f
                  bgeu         s11, s7, 948f
948:              lui          t6, 817341
949:              slt          a6, a7, a2
                  bltu         a7, t4, 956f
                  beq          s2, a3, 969f
                  slli         t1, t1, 2
953:              sra          a7, s8, t2
                  xori         ra, s4, 370
                  andi         s9, s10, 651
956:              add          a7, s7, sp
                  sll          tp, tp, a6
                  lui          t0, 115824
                  and          s6, ra, s1
960:              sltu         a1, t0, s5
                  xor          s8, t6, a1
                  bge          a0, tp, 975f
                  bgeu         s0, a4, 975f
964:              xori         t6, s6, -1190
                  bge          s5, a4, 981f
                  slli         t4, s9, 27
                  beq          s9, zero, 968f
968:              lui          s7, 352069
969:              slt          s5, s5, s4
                  lui          a6, 997293
                  sra          a6, s5, s11
                  sra          a0, s11, s4
                  and          s1, t6, s0
                  srai         a3, s11, 20
975:              xor          t3, t5, t3
                  or           t5, a7, s8
                  sltiu        s5, a2, -733
                  lui          ra, 1011475
                  ori          a2, s0, -729
                  blt          s10, a0, 989f
981:              sltu         tp, a5, a4
                  blt          t5, t5, 998f
                  srli         t3, a4, 21
                  sub          s4, t0, s6
                  srli         s3, s9, 20
                  sltu         t1, t2, s2
                  and          a2, s6, s6
                  slt          t5, tp, s0
989:              lui          s4, 517829
                  auipc        zero, 747937
                  xori         t5, t0, 329
                  blt          t4, s8, 1000f
                  bgeu         gp, a6, 1011f
                  or           s5, s8, t1
                  srai         s7, a6, 18
                  slli         a3, a3, 31
                  xor          t0, a5, s8
998:              bne          zero, s5, 1011f
                  lui          a1, 567128
1000:             addi         t3, a0, 573
                  slli         t0, a2, 16
                  or           s6, t4, a3
                  lui          a1, 390149
                  slti         t3, s9, -266
                  or           a7, s2, s1
                  srl          t5, tp, a5
                  bge          sp, ra, 1016f
                  or           zero, t0, sp
                  bne          a6, s9, 1018f
                  srai         s7, a3, 22
1011:             srl          s8, gp, s10
                  nop
                  xori         a1, sp, -735
                  slt          a3, s4, s5
                  auipc        s9, 981297
1016:             sltu         a7, s1, a0
                  xori         ra, s8, -985
1018:             andi         gp, a6, -935
                  bge          a3, t4, 1023f
                  sub          s5, s0, gp
                  sra          a6, t0, a2
                  auipc        s0, 60367
1023:             sltu         t4, s11, t6
                  nop
                  slti         t2, sp, 150
                  slti         s1, a5, -263
                  srli         tp, s3, 13
                  sub          a7, s9, s2
                  slli         s3, a3, 11
                  srai         s4, s6, 31
                  ori          s2, t5, -1256
                  lui          t4, 87799
                  sub          s1, a7, zero
                  sll          a1, s5, s2
                  addi         t6, s6, -1542
                  srai         s4, s10, 15
                  bltu         t4, s6, 1041f
                  addi         a3, a2, -1079
                  bgeu         t5, s10, 1044f
                  srli         s10, s5, 8
1041:             bne          ra, t1, 1046f
                  auipc        a0, 627318
                  or           s9, a4, t5
1044:             bge          s8, s11, 1052f
                  or           tp, a1, a0
1046:             slli         a2, a3, 28
                  slti         t0, gp, -279
                  addi         s0, gp, -96
                  sltu         s8, a4, t4
                  xori         a3, a1, -1865
                  slli         tp, a7, 20
1052:             sll          s0, s10, s6
                  sltu         a7, s10, tp
                  sltu         t1, gp, s3
                  beq          s3, a3, 1072f
                  slti         s9, s5, -878
                  xori         t2, t0, -742
                  bne          s5, s4, 1074f
                  sll          a5, s8, sp
                  auipc        t6, 544590
                  slli         zero, t5, 12
                  blt          s3, gp, 1063f
1063:             sltu         t5, a7, t1
                  bge          tp, s7, 1081f
                  srli         a0, a4, 17
                  nop
                  andi         gp, t2, -1082
                  auipc        a7, 728582
                  bgeu         a3, s2, 1075f
                  or           s6, s4, s0
                  slli         t6, tp, 6
1072:             srl          s9, s11, sp
                  and          ra, s8, s3
1074:             slli         t6, t6, 20
1075:             slt          a1, s7, t5
                  bgeu         s6, a1, 1096f
                  slli         zero, t0, 1
                  xor          s5, s1, zero
                  nop
                  srli         s3, s2, 30
1081:             beq          a4, s1, 1095f
                  slli         a2, t3, 18
                  lui          s9, 445581
                  add          s8, s6, zero
                  slti         s7, zero, -210
                  srl          s5, s9, t1
                  andi         s8, a5, -355
                  srli         s7, a7, 17
                  sub          a1, a7, a5
                  addi         tp, s5, -1733
                  bne          s10, zero, 1109f
                  sub          s5, s1, s8
                  sltiu        ra, s6, 1432
                  sra          ra, t2, t5
1095:             blt          a6, s6, 1105f
1096:             add          s10, s2, s8
                  addi         gp, a7, -1506
                  sub          gp, a3, gp
                  lui          a2, 639829
                  sll          gp, t6, t5
                  nop
                  xor          s8, s2, a7
                  slli         t4, t6, 14
                  bne          tp, zero, 1116f
1105:             bge          s2, zero, 1110f
                  slt          a7, s4, s2
                  bgeu         a5, s2, 1110f
                  and          s1, t1, s2
1109:             bge          t0, a5, 1122f
1110:             andi         a5, a7, -2041
                  and          s3, sp, s11
                  slti         tp, zero, -1147
                  and          s6, s4, t2
                  xor          s6, s9, gp
                  nop
1116:             sub          t6, a1, gp
                  nop
                  and          s2, a1, s11
                  nop
                  and          t1, s6, t0
                  add          a0, s0, t0
1122:             andi         t1, s11, 1621
                  sub          a2, a4, a4
                  bne          s9, s3, 1133f
                  lui          s8, 167046
                  andi         zero, a6, 1291
                  slt          a1, s5, s0
                  beq          t4, s5, 1132f
                  xori         a2, s1, -1285
                  bne          s9, t4, 1134f
                  bgeu         s4, tp, 1140f
1132:             or           t6, s10, t5
1133:             xori         a3, gp, 431
1134:             and          s5, t5, a3
                  bge          gp, s1, 1143f
                  add          t4, s8, s6
                  addi         s5, s8, -1929
                  xor          s9, s4, a7
                  beq          s3, s7, 1148f
1140:             srli         a6, gp, 21
                  xori         t3, s4, -1839
                  sll          s0, a2, t3
1143:             addi         a5, a4, -831
                  addi         s6, t0, -1101
                  and          a6, t4, s7
                  or           t3, a7, t5
                  bltu         s7, t3, 1148f
1148:             andi         a0, sp, -1148
                  srai         a1, a7, 24
                  add          t6, zero, a6
                  srai         a0, zero, 20
                  lui          ra, 825810
                  bltu         t0, t5, 1165f
                  nop
                  blt          a0, a6, 1173f
                  srl          s2, t5, s0
                  add          a2, t1, tp
                  andi         t4, t2, -1143
                  bltu         s0, a2, 1164f
                  sltu         a1, s4, sp
                  bne          s4, s8, 1179f
                  srl          s5, t4, s4
                  or           t4, s2, a4
1164:             and          t5, a0, s7
1165:             add          t1, t1, t1
                  srai         t1, s3, 23
                  nop
                  srli         gp, a4, 18
                  bgeu         sp, s4, 1185f
                  ori          t6, t5, 1073
                  slli         s8, a1, 18
                  sll          tp, a5, a3
sub_4_28:         jal          tp, 3f
0:                jal          ra, 17f
1:                jal          ra, 12f
2:                jal          ra, 21f
3:                jal          ra, 5f
4:                jal          ra, 19f
5:                jal          ra, 18f
6:                jal          ra, 1b
7:                jal          t1, 15f
8:                jal          ra, 4b
9:                jal          t0, 11f
10:               jal          t1, 7b
11:               jal          ra, 10b
12:               jal          ra, 0b
13:               jal          ra, 2b
14:               jal          t1, 20f
15:               jal          t1, 14b
16:               jal          ra, 8b
17:               jal          ra, 9b
18:               jal          tp, 16b
19:               jal          ra, 6b
20:               jal          ra, 13b
21:               auipc        a1, 501496
1173:             slli         s9, t5, 22
                  xori         a0, a6, 743
                  sltiu        s7, s9, 1585
                  sll          a7, a5, zero
                  srai         a6, s5, 20
                  auipc        t0, 481054
1179:             and          s4, a2, s4
                  beq          t0, s3, 1193f
                  or           zero, a0, t1
                  bne          s10, sp, 1199f
                  bge          t2, t0, 1201f
                  bgeu         ra, s3, 1192f
1185:             xori         t3, a1, 334
                  auipc        s10, 380524
                  srli         s4, tp, 31
                  auipc        t4, 219446
                  blt          s9, ra, 1205f
                  beq          s0, s8, 1194f
                  srai         s0, a3, 23
1192:             ori          a5, t6, 376
1193:             and          a1, s11, a3
1194:             sra          a5, t2, s6
                  bgeu         s0, a1, 1204f
                  slt          a6, t0, t0
                  srli         a0, s0, 11
                  srl          zero, a2, s5
1199:             srl          s2, s9, s3
                  blt          a0, a2, 1218f
1201:             slli         t6, s1, 9
                  and          a1, t3, a3
                  bge          t1, a4, 1207f
1204:             sra          s9, t6, t0
1205:             slli         s2, s6, 12
                  sltiu        t1, s11, 16
sub_4_35:         jal          tp, 5f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          ra, 16f
3:                jal          ra, 18f
4:                jal          tp, 10f
5:                jal          ra, 13f
6:                jal          a1, 17f
7:                jal          t1, 1b
8:                jal          s9, 20f
9:                jal          t1, 3b
10:               jal          gp, 6b
11:               jal          ra, 21f
12:               jal          ra, 15f
13:               jal          ra, 14f
14:               jal          t1, 0b
15:               jal          tp, 8b
16:               jal          ra, 7b
17:               jal          a0, 19f
18:               jal          ra, 12b
19:               jal          ra, 2b
20:               jal          t1, 4b
21:               lui          t3, 924059
1207:             addi         s8, s8, 274
                  bge          s3, s1, 1220f
                  slt          t6, s0, t0
                  auipc        ra, 81607
                  slt          t6, s8, a5
                  sll          a5, a6, a0
                  ori          a5, s8, 162
                  auipc        gp, 1027935
                  or           s7, s8, t3
                  bltu         s11, a6, 1224f
                  lui          t0, 1039224
1218:             lui          s1, 1022832
                  slli         a6, s2, 2
1220:             bgeu         t0, a6, 1229f
                  or           tp, s0, t2
                  blt          s6, t5, 1223f
1223:             sra          s3, t0, s0
1224:             srai         s4, s9, 11
                  bne          a4, t6, 1234f
                  lui          a5, 257964
                  sltu         s7, sp, a1
                  slti         t5, ra, 750
1229:             blt          s9, gp, 1247f
                  beq          a6, s3, 1246f
                  ori          t3, s9, -1895
                  blt          s11, a3, 1244f
                  andi         a1, s11, 631
1234:             srl          s6, s9, s9
                  addi         t3, s3, 854
                  and          t5, s9, s8
                  slti         s8, a3, 1109
                  blt          s0, a2, 1246f
                  lui          s9, 1021676
                  blt          t2, t5, 1243f
                  srl          s9, gp, s9
                  slli         s0, t2, 5
1243:             bge          s11, s11, 1249f
1244:             and          a1, t2, t6
                  slli         t6, zero, 27
1246:             auipc        s5, 485414
1247:             xori         t5, sp, -1553
                  nop
1249:             bltu         a3, s11, 1265f
                  sub          s2, a3, s9
                  or           s4, a3, s2
                  sll          a6, t6, s3
                  or           t3, a2, a7
                  slti         zero, s4, -830
                  sltiu        s9, t6, -1958
                  bne          t6, t5, 1276f
                  or           t4, t3, s5
                  auipc        ra, 39681
                  xori         t5, gp, 1654
                  auipc        t4, 672088
                  blt          a7, a3, 1278f
                  slt          t1, t2, s11
                  beq          s11, a2, 1280f
                  srai         s8, t3, 20
1265:             lui          a3, 254870
                  slt          s3, t1, ra
                  bge          s10, t1, 1285f
                  bltu         a7, s1, 1273f
                  auipc        a3, 357122
                  bge          s10, s2, 1284f
                  srai         s8, sp, 5
                  auipc        s8, 213220
1273:             addi         t6, s9, 943
                  xor          a6, sp, s11
                  sll          s9, sp, s5
1276:             bltu         a0, a0, 1292f
                  or           s0, a5, a2
1278:             sra          tp, a1, t0
                  sra          t1, a4, t4
1280:             srli         a6, s7, 30
                  beq          t2, a1, 1285f
                  bne          a0, tp, 1295f
                  srl          ra, ra, t2
1284:             sll          t6, zero, a2
1285:             bgeu         t2, t2, 1289f
                  add          ra, a5, s8
                  andi         s1, t5, -1396
                  bge          s8, t0, 1306f
1289:             add          s0, zero, s1
                  sltiu        a2, s7, 799
                  auipc        t0, 38558
1292:             addi         s1, tp, 1665
                  sra          t1, s11, ra
                  sll          tp, s11, s4
1295:             sltu         t5, a7, a3
                  bge          t2, s11, 1297f
1297:             or           t4, t4, s7
                  blt          s10, sp, 1303f
                  bne          a1, t1, 1312f
                  beq          s2, ra, 1310f
                  nop
                  srli         s6, t0, 20
1303:             auipc        s3, 389420
                  addi         s0, t5, -771
                  bge          s3, s11, 1318f
1306:             slli         s9, t4, 28
                  add          t2, a3, s7
                  sra          a6, s10, a4
                  bltu         zero, s1, 1327f
1310:             srai         a2, s4, 21
                  sltiu        t1, s0, -462
1312:             beq          s11, s8, 1324f
                  bgeu         gp, s4, 1329f
                  add          s10, s4, t2
                  sltu         a3, tp, tp
                  srai         t1, t5, 9
                  beq          s9, s10, 1321f
1318:             andi         t4, ra, -1757
                  slti         a2, s5, 1814
                  addi         s1, a4, -303
1321:             xor          t3, s5, a3
                  xor          ra, s1, s4
                  bltu         t6, s8, 1341f
1324:             slti         t6, s6, -1147
                  ori          a1, s6, 1342
                  ori          s7, a5, -1603
1327:             or           s8, s1, a4
                  auipc        t5, 540453
1329:             sub          s9, t3, a1
                  srli         s8, tp, 19
                  or           s6, t6, a4
                  bgeu         a1, t2, 1349f
                  xor          zero, t3, a0
                  bgeu         zero, t0, 1354f
                  slt          a7, s2, a7
                  andi         t0, s6, 164
                  or           a5, t1, t2
                  bne          t3, t0, 1342f
                  slli         a3, s6, 8
                  add          ra, a5, a4
1341:             lui          s10, 670829
1342:             srai         s3, tp, 20
                  xori         s6, tp, -553
                  bltu         a2, t3, 1345f
1345:             add          gp, s1, t6
                  and          s0, gp, s3
                  slli         s8, s5, 27
                  beq          a6, s5, 1349f
1349:             srai         t0, a2, 28
                  sub          a3, a5, t1
                  bne          t6, s5, 1357f
                  lui          a3, 217338
                  beq          t6, s2, 1358f
1354:             slt          a5, s11, t0
                  andi         a0, t1, 1211
                  xor          s10, s3, a5
1357:             addi         t3, ra, -1820
1358:             sll          s0, a6, s7
                  andi         s6, zero, -179
                  or           s5, a6, s2
                  xor          s0, t6, s5
                  xori         s3, t4, 595
                  srl          s1, s7, s8
                  bge          a1, a6, 1367f
                  bgeu         s11, s5, 1373f
                  and          gp, sp, s2
1367:             bge          a7, a2, 1383f
                  bltu         a6, t6, 1377f
                  or           s10, tp, tp
                  sll          a6, a7, t1
                  nop
                  or           t0, t5, s11
1373:             srai         s8, zero, 14
                  blt          ra, s1, 1388f
                  sltu         gp, s3, s0
                  bne          s5, s3, 1392f
1377:             slli         a7, s5, 4
                  bgeu         s4, s4, 1396f
                  sltu         a3, t6, s8
                  lui          t4, 96770
                  xor          ra, t0, zero
                  lui          a3, 990833
1383:             auipc        s7, 332038
                  addi         t1, s6, 1171
                  srai         t1, t0, 24
                  andi         a3, tp, -635
                  sra          t5, s6, s9
1388:             ori          t6, a4, 1564
                  auipc        s9, 47628
                  sltiu        s3, s4, -981
                  addi         t4, t2, 986
1392:             slt          s8, t1, a0
                  ori          tp, t5, -1030
                  bltu         t2, a1, 1403f
                  bge          t1, a5, 1412f
1396:             bltu         tp, s1, 1400f
                  sltiu        a3, t5, 2019
                  sltiu        s3, t4, -543
                  sltu         s7, zero, t1
1400:             bgeu         gp, s3, 1408f
                  sub          a7, s4, t6
                  add          s5, zero, tp
1403:             slti         t0, a1, -186
                  slti         t5, s10, 1155
                  and          t4, a4, s11
                  auipc        s10, 301656
                  sra          s7, s2, s7
1408:             bltu         a3, ra, 1420f
                  ori          s6, s5, -1741
                  lui          t3, 1017457
                  lui          s10, 824454
1412:             slt          a2, t1, s11
                  sltiu        t3, s0, -70
                  srli         tp, sp, 17
                  addi         a2, a2, -738
                  sub          s6, s0, t6
                  xori         zero, s10, -26
                  sltiu        s3, t5, 265
                  lui          t2, 850391
1420:             blt          s0, s0, 1433f
                  blt          s9, zero, 1430f
                  bgeu         s3, s7, 1432f
                  srl          a3, s8, a7
                  bltu         s4, t6, 1442f
                  nop
                  add          s2, s0, a1
                  bgeu         s6, zero, 1432f
                  xor          s6, t5, s1
                  bge          s10, t3, 1434f
1430:             bne          s5, zero, 1438f
                  slti         s2, s7, 663
1432:             sub          a6, a4, s0
1433:             lui          s7, 388394
1434:             sll          s10, s0, s6
                  bgeu         t5, s11, 1452f
                  sltiu        t1, a6, 397
                  andi         t6, t2, 1421
1438:             xori         t5, t3, 1339
                  sltu         t1, s5, t1
                  sltiu        gp, s4, -705
                  xor          t2, ra, s2
1442:             srl          a1, s7, a0
                  bge          s6, s2, 1459f
                  slt          t3, t0, ra
                  or           a3, sp, s1
                  addi         s1, s10, 958
                  sll          s0, t6, s7
                  xori         s8, a5, 905
                  sll          s2, t6, s7
                  addi         s0, s4, -555
                  or           s5, s1, sp
1452:             slli         s7, a3, 12
                  lui          t3, 382932
                  bgeu         t5, t6, 1466f
                  add          t1, s11, a2
                  xori         zero, sp, 876
                  and          t6, s2, t5
                  srl          s1, s11, s9
1459:             srai         tp, s10, 11
                  slt          zero, a5, zero
                  srl          a0, ra, t5
                  slt          a2, a3, a6
                  srai         s9, s5, 5
                  blt          t4, s9, 1468f
                  sltu         a1, s10, t2
1466:             sltiu        s7, t4, 1887
                  sub          a5, a5, t0
1468:             nop
                  srl          s7, t2, s1
                  srli         a7, a6, 4
                  sll          t2, s10, a4
                  lui          s0, 145495
                  xori         s5, a2, 179
                  sll          a1, t0, s8
                  and          s9, tp, s5
                  slt          zero, s8, s9
                  srli         s10, s6, 8
                  srl          t2, s9, t3
                  xori         t5, gp, -1297
                  sltu         ra, a4, s4
                  sub          s6, s8, s10
                  xori         a5, s5, -1361
                  srai         s2, s3, 7
                  xor          t2, s5, a6
                  lui          a5, 352539
                  sltu         a5, s1, s11
                  or           t1, s11, s0
                  beq          a3, a2, 1489f
1489:             sll          s5, s6, a3
                  slt          gp, t5, s4
                  add          s1, ra, gp
                  or           ra, s4, t5
                  sltu         ra, s8, s2
                  srai         s5, t5, 1
                  auipc        t4, 112717
                  andi         t4, s10, 546
                  sub          zero, a4, s0
                  slti         s0, zero, 1248
                  xori         t4, s7, -1064
                  auipc        s4, 601858
                  sra          a7, a2, gp
                  andi         t3, ra, 88
                  bgeu         a6, a1, 1519f
                  slli         s9, s7, 26
                  srli         s7, gp, 31
                  add          s0, s6, sp
                  nop
                  srl          s5, sp, a6
                  beq          t2, tp, 1519f
                  sll          s6, s9, s11
                  addi         zero, s0, 1830
                  lui          s0, 196055
                  slti         t6, t5, 1270
                  or           s2, s2, t2
                  beq          t6, t5, 1531f
                  bge          s3, a7, 1520f
                  bltu         s11, a3, 1535f
                  sltiu        t6, t1, 1604
1519:             bge          t4, t6, 1522f
1520:             and          s10, tp, t5
                  bgeu         a1, s7, 1522f
1522:             sub          s9, s9, t1
                  addi         t1, a7, -806
                  beq          t0, ra, 1533f
                  srl          a3, gp, a3
                  srl          a0, s3, a1
                  xor          s3, s5, s6
                  srl          ra, a7, s3
                  beq          s10, a1, 1542f
                  andi         t6, s11, -1242
1531:             bne          zero, zero, 1544f
                  sra          tp, a2, t1
1533:             sltiu        a2, s11, 1520
                  srai         s8, a6, 0
1535:             beq          a6, tp, 1553f
                  nop
                  nop
                  slt          zero, a6, tp
                  sltiu        s8, gp, -1389
                  or           s5, s3, s3
                  sra          s5, s6, a5
1542:             add          s3, sp, t5
                  xor          a0, t3, s9
1544:             bne          sp, s10, 1561f
                  slli         s3, a3, 14
                  sltu         s7, a2, s8
                  auipc        t4, 879474
                  bltu         gp, s6, 1552f
                  addi         s4, s5, -856
                  slli         tp, s10, 16
                  bgeu         gp, gp, 1571f
1552:             slti         s10, t6, -806
1553:             bltu         s4, a1, 1562f
                  ori          s0, s7, 198
                  blt          a1, s3, 1573f
                  auipc        tp, 840427
                  add          s9, ra, t0
                  bltu         s10, s4, 1564f
                  ori          s1, s11, -604
                  lui          t5, 707786
1561:             nop
1562:             sltiu        t2, a5, 138
                  srl          a5, zero, a5
1564:             and          s8, ra, a3
                  slti         ra, a7, 1629
                  andi         a5, a4, -363
                  add          zero, s9, tp
                  sltiu        s7, ra, 1901
                  lui          s3, 458314
                  bgeu         a5, s11, 1575f
1571:             sltiu        a2, s3, 1120
sub_4_20:         jal          tp, 1f
0:                jal          tp, 14f
1:                jal          t1, 13f
2:                jal          ra, 8f
3:                jal          ra, 22f
4:                jal          ra, 23f
5:                jal          s2, 10f
6:                jal          ra, 3b
7:                jal          t0, 28f
8:                jal          ra, 19f
9:                jal          ra, 16f
10:               jal          s5, 17f
11:               jal          ra, 5b
12:               jal          ra, 9b
13:               jal          s10, 0b
14:               jal          t1, 4b
15:               jal          ra, 24f
16:               jal          s1, 6b
17:               jal          ra, 29f
18:               jal          ra, 21f
19:               jal          t1, 11b
20:               jal          t1, 27f
21:               jal          ra, 26f
22:               jal          s7, 18b
23:               jal          ra, 25f
24:               jal          t0, 7b
25:               jal          ra, 20b
26:               jal          ra, 15b
27:               jal          ra, 12b
28:               jal          tp, 2b
29:               addi         zero, s8, -1095
                  sll          s2, a5, a0
1573:             sra          a2, gp, a5
                  auipc        a1, 124266
1575:             slli         t2, s2, 13
                  xori         t3, a2, 1428
                  add          a7, s2, t1
                  sltu         a2, t5, tp
                  srai         t6, tp, 17
                  bge          a6, s3, 1588f
                  xori         t2, ra, 994
                  nop
                  bge          s4, s0, 1601f
                  andi         ra, s0, -1986
                  xori         s1, a4, 1089
                  bltu         a7, gp, 1598f
                  srli         t2, t5, 30
1588:             bltu         s5, t6, 1597f
                  blt          a4, a6, 1603f
                  sll          a7, a6, s8
                  srli         t2, s1, 24
                  auipc        t5, 659829
                  xori         s5, s2, -1575
                  and          a2, s6, s0
                  slti         a6, a0, 145
                  bgeu         gp, ra, 1600f
1597:             beq          a5, sp, 1614f
1598:             sra          a2, t1, t5
                  ori          s9, t6, -414
1600:             sll          a0, s0, t6
1601:             or           t4, s7, s2
                  lui          s0, 969397
1603:             andi         s10, s8, 183
                  or           t1, a5, s1
                  slti         a2, s6, 1482
                  sub          t2, s3, t5
                  andi         t5, sp, 1073
                  auipc        a6, 61249
                  sll          a3, s0, a6
                  add          s8, a6, s0
                  bne          s1, t1, 1621f
                  sra          t5, a7, s3
                  slli         s4, a5, 0
1614:             andi         a3, tp, -558
                  add          s9, s1, gp
                  bgeu         a7, t4, 1620f
                  sll          t3, s9, s9
                  auipc        a1, 757726
                  srli         ra, a6, 18
1620:             beq          s11, s7, 1638f
1621:             blt          t3, tp, 1634f
                  slli         a2, t0, 22
                  slti         s0, s2, 140
                  slt          a7, s0, s8
                  nop
                  bltu         a6, a2, 1642f
                  slti         t3, t0, 1245
                  slt          t4, t1, s7
                  auipc        t3, 707079
                  xori         s4, t1, -1381
sub_4_19:         jal          tp, 23f
0:                jal          ra, 11f
1:                jal          ra, 20f
2:                jal          t1, 7f
3:                jal          ra, 16f
4:                jal          t1, 1b
5:                jal          a3, 8f
6:                jal          t1, 18f
7:                jal          ra, 22f
8:                jal          t1, 9f
9:                jal          a6, 0b
10:               jal          ra, 4b
11:               jal          t1, 17f
12:               jal          ra, 21f
13:               jal          t1, 12b
14:               jal          ra, 15f
15:               jal          t1, 19f
16:               jal          ra, 2b
17:               jal          t1, 26f
18:               jal          ra, 5b
19:               jal          ra, 3b
20:               jal          t1, 14b
21:               jal          gp, 28f
22:               jal          ra, 24f
23:               jal          s5, 25f
24:               jal          ra, 27f
25:               jal          ra, 6b
26:               jal          ra, 10b
27:               jal          ra, 13b
28:               xor          t0, a2, tp
                  slt          t5, s6, sp
                  ori          a5, s3, -1735
                  lui          gp, 533045
1634:             lui          s2, 419072
                  slli         a6, gp, 30
                  bltu         t2, s10, 1645f
                  sltiu        s3, a7, -1609
1638:             xor          s1, s2, gp
                  slt          s6, s11, ra
                  blt          a3, s2, 1656f
                  auipc        s5, 608837
1642:             xor          zero, t4, ra
                  ori          s9, t4, -1165
                  sll          s5, t5, tp
1645:             xori         s6, a7, 754
                  sra          t2, s11, a0
                  bltu         s2, s1, 1664f
                  srai         a5, sp, 20
                  sra          a7, s1, t5
                  blt          a5, sp, 1651f
1651:             blt          s4, t0, 1669f
                  sltu         t6, a0, t4
                  add          t2, zero, a4
                  ori          s2, s3, 1843
                  andi         s1, s11, -846
1656:             andi         t6, sp, 230
                  slli         a0, s4, 0
                  slli         t2, s2, 20
                  bgeu         s9, ra, 1663f
                  srl          ra, a7, a3
                  bgeu         a4, sp, 1677f
                  xori         gp, t5, 1709
1663:             beq          a7, gp, 1664f
1664:             xori         s5, t6, 1651
                  bge          gp, gp, 1670f
                  sltu         a2, a1, t4
                  add          a7, s9, s3
                  xor          a5, a1, a7
1669:             beq          a5, s2, 1687f
1670:             blt          sp, s0, 1678f
                  nop
                  bge          ra, s6, 1678f
                  bgeu         t2, t6, 1681f
                  bltu         t2, a3, 1683f
                  bgeu         t1, t3, 1689f
                  ori          s2, s3, 628
1677:             lui          s5, 659045
1678:             beq          a2, s8, 1681f
                  slli         zero, a0, 15
                  srai         t0, s11, 31
1681:             sra          t1, t2, a5
                  sra          a7, t5, a3
1683:             srl          s4, s6, s6
                  lui          gp, 302379
                  sltu         a6, a5, a7
                  sll          tp, a5, s5
1687:             or           t0, t4, s3
                  bgeu         t0, a2, 1708f
1689:             beq          a7, t3, 1702f
                  and          t1, s5, s10
                  bne          a2, s8, 1709f
                  and          ra, t2, s0
                  xor          a7, t6, s8
                  sub          s7, t5, ra
                  xori         zero, s0, 1960
                  xor          t2, a3, a5
                  xori         t2, s0, -981
                  bltu         t5, s2, 1703f
                  bgeu         a3, tp, 1708f
                  bge          s3, a6, 1712f
                  xor          a6, s6, a3
1702:             slt          a3, t2, s6
1703:             add          ra, a0, a5
                  srai         tp, s1, 31
                  slli         zero, s7, 22
                  sltiu        a0, s0, 680
                  lui          tp, 1028465
1708:             srli         t3, t0, 10
1709:             bltu         tp, gp, 1721f
                  slt          t1, s5, a2
                  slli         a1, t2, 27
1712:             sltu         a5, gp, a3
                  bne          t0, t4, 1721f
                  sltu         t0, a2, a7
                  slti         a7, s11, 1569
                  lui          ra, 1005506
                  slli         a6, a4, 7
                  ori          a5, s11, -411
                  bltu         gp, t2, 1733f
                  nop
1721:             add          s8, t1, t0
                  beq          a0, t3, 1738f
                  sltiu        zero, sp, 1203
                  slti         t4, gp, 1088
                  andi         zero, s11, -845
                  bgeu         a5, s4, 1742f
                  xor          s4, s1, s7
                  sltu         t6, s9, a2
                  add          s9, s11, a6
                  sltiu        a2, s7, 193
                  srli         zero, a4, 17
                  xor          a2, a6, gp
1733:             addi         a2, a4, 1643
                  sub          s3, zero, s5
                  sra          t0, s2, a4
                  sra          a3, t6, sp
                  sra          t4, s11, s7
1738:             slt          t5, zero, s11
                  sll          s3, t2, t5
                  lui          s6, 186340
                  add          s9, a4, ra
1742:             sll          s3, a6, s8
                  bne          t6, a0, 1747f
                  addi         t0, a6, 361
                  ori          s8, a0, -318
                  bne          s3, a5, 1750f
1747:             srl          a5, a2, t5
                  sll          s6, s11, s2
                  auipc        t6, 950830
1750:             slli         a0, s8, 7
                  srai         t4, ra, 11
                  sltiu        gp, s2, 1812
                  sub          tp, a5, s5
                  ori          tp, s6, -1285
                  nop
                  sltu         s5, t4, t3
                  xor          a6, a1, s3
                  bge          s1, t5, 1775f
                  sltiu        s0, s11, 1427
                  add          t5, a4, s11
                  sll          s8, t1, a5
                  bge          s5, t4, 1768f
                  andi         s0, a0, -1151
                  slti         s1, t1, 423
                  xori         s0, tp, -1732
                  bge          s8, a7, 1784f
                  bne          s1, s7, 1785f
1768:             bltu         s0, s6, 1777f
                  bge          a4, gp, 1778f
                  sltiu        s3, a5, -600
                  srl          s3, t0, s10
                  sub          a7, t4, t4
                  auipc        s3, 665094
                  ori          a5, t3, -638
1775:             andi         t3, t4, 1316
                  srai         t0, s9, 3
1777:             bltu         a4, s10, 1794f
1778:             auipc        t0, 95867
                  xor          t3, s8, s7
                  slt          t2, t5, ra
                  srli         a2, s4, 2
                  nop
                  srai         a3, zero, 25
1784:             ori          s2, t1, 191
1785:             ori          a7, ra, -2006
                  bgeu         s7, s1, 1802f
                  beq          tp, s1, 1805f
                  addi         s4, tp, 1576
                  sltiu        s9, a4, -1881
                  bge          ra, s8, 1800f
                  bge          s1, a4, 1792f
1792:             xori         a7, t3, -1655
                  sra          s8, a7, a1
1794:             or           s9, zero, gp
                  andi         zero, s9, 1874
                  sltiu        s1, t1, -1752
                  ori          s2, s3, 1326
                  addi         s0, s10, -1587
                  and          a6, a4, s9
1800:             sub          t3, t4, a3
                  bne          t0, t0, 1810f
1802:             xor          s8, t6, s2
                  beq          a6, ra, 1811f
                  and          a2, ra, a5
1805:             add          s7, t0, s4
                  slt          a5, s1, s5
                  bltu         s9, a0, 1819f
                  xor          s7, t2, t6
                  srl          s10, t2, s9
1810:             sll          t2, a0, s8
1811:             and          zero, s9, a7
                  slt          t2, a3, s3
                  bgeu         s4, tp, 1817f
                  slli         zero, t6, 19
                  srl          t6, t3, tp
                  xori         t3, s6, -841
1817:             lui          s5, 250121
                  sltu         s2, a5, s0
1819:             bltu         s1, t5, 1824f
                  beq          zero, s4, 1823f
                  ori          t1, t3, 896
                  srai         a6, a4, 9
1823:             xori         s0, a2, 1533
1824:             ori          a3, s0, 758
                  nop
                  or           t2, t2, s3
                  add          a6, t2, a4
                  addi         s10, a2, 968
                  lw           tp, 4(s11)
                  or           s7, s6, s11
                  srli         t6, s10, 22
                  add          t1, t6, tp
                  nop
                  srai         s6, s2, 15
                  ori          s8, a2, 1191
                  addi         s11, s11, 64
                  slt          s8, s10, s0
                  sra          t2, s1, t6
                  srai         s7, s5, 9
                  sra          s2, sp, t1
2702:             addi x21, x4, 0
2702:             jalr x21, x21, 0
sub_3:            xor          a0, a4, s0
                  nop
                  addi         s11, s11, -16
                  sltu         a0, a0, t5
                  sw           tp, 4(s11)
                  srai         s9, s7, 3
                  nop
                  slti         s9, t3, 1142
                  srl          s2, zero, a3
                  sltu         t1, a7, a0
                  slli         zero, zero, 27
                  slt          s1, t6, s4
                  addi         t2, s0, -392
                  slti         a5, a6, -642
                  lui          zero, 870269
                  nop
                  bltu         s2, s3, 12f
                  and          s10, t3, t6
                  srl          s2, a5, s6
                  slt          a2, a1, s5
                  sltu         a6, s2, s4
                  slti         s9, a3, 1674
12:               andi         s0, a1, -1223
                  blt          a0, s6, 28f
                  addi         a2, s1, -898
                  xor          a3, a4, s7
                  blt          s7, t4, 18f
                  sra          s7, s1, s7
18:               slt          t1, t2, s1
                  bltu         a5, t4, 28f
                  xor          t3, s1, s4
                  bltu         s1, gp, 23f
                  bgeu         s0, s1, 24f
23:               bltu         t5, s5, 24f
24:               addi         a1, a1, 1208
                  srai         t4, a3, 25
                  srli         s6, s11, 25
                  slt          s7, t2, a1
28:               addi         gp, a3, 271
                  xor          a1, s7, ra
                  srl          s0, s3, s2
                  addi         s8, sp, 370
                  andi         s5, a0, -914
                  srai         zero, sp, 11
                  srai         s10, s7, 31
                  lw           tp, 4(s11)
                  xor          t2, s6, s11
                  addi         s11, s11, 16
                  ori          ra, a2, -485
49:               addi x9, x4, 1
49:               jalr x9, x9, 0
sub_5:            slt          a2, s1, zero
                  andi         a5, s0, -1335
                  andi         ra, zero, -1486
                  sll          t0, s1, a0
                  addi         s11, s11, -20
                  sltu         t4, s3, s3
                  slt          s3, t4, a3
                  sw           tp, 4(s11)
                  sll          a0, t4, sp
                  slli         a2, t2, 11
sub_5_10:         jal          tp, 22f
0:                jal          ra, 16f
1:                jal          ra, 17f
2:                jal          a1, 9f
3:                jal          t1, 20f
4:                jal          ra, 12f
5:                jal          t0, 25f
6:                jal          ra, 27f
7:                jal          s8, 8f
8:                jal          t3, 26f
9:                jal          ra, 0b
10:               jal          tp, 11f
11:               jal          ra, 13f
12:               jal          ra, 2b
13:               jal          ra, 1b
14:               jal          a3, 19f
15:               jal          t1, 6b
16:               jal          t6, 3b
17:               jal          ra, 23f
18:               jal          ra, 5b
19:               jal          ra, 15b
20:               jal          ra, 21f
21:               jal          t2, 14b
22:               jal          s7, 18b
23:               jal          ra, 4b
24:               jal          ra, 7b
25:               jal          t1, 24b
26:               jal          ra, 10b
27:               andi         s8, s5, 1156
sub_5_11:         jal          tp, 15f
0:                jal          t1, 20f
1:                jal          t1, 11f
2:                jal          ra, 24f
3:                jal          t6, 21f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          ra, 22f
7:                jal          ra, 13f
8:                jal          ra, 23f
9:                jal          t1, 6b
10:               jal          ra, 3b
11:               jal          ra, 10b
12:               jal          t1, 7b
13:               jal          ra, 5b
14:               jal          ra, 18f
15:               jal          a1, 9b
16:               jal          ra, 1b
17:               jal          ra, 12b
18:               jal          ra, 19f
19:               jal          ra, 16b
20:               jal          t2, 17b
21:               jal          ra, 0b
22:               jal          tp, 14b
23:               jal          s5, 26f
24:               jal          ra, 25f
25:               jal          t1, 4b
26:               jal          s6, 27f
27:               or           a6, gp, t1
sub_5_2:          jal          tp, 12f
0:                jal          s2, 23f
1:                jal          t1, 22f
2:                jal          ra, 24f
3:                jal          ra, 21f
4:                jal          ra, 16f
5:                jal          t1, 1b
6:                jal          a0, 0b
7:                jal          tp, 14f
8:                jal          t1, 20f
9:                jal          ra, 8b
10:               jal          ra, 11f
11:               jal          ra, 18f
12:               jal          tp, 3b
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               jal          a7, 5b
16:               jal          ra, 9b
17:               jal          t4, 25f
18:               jal          ra, 6b
19:               jal          s0, 4b
20:               jal          ra, 15b
21:               jal          t1, 10b
22:               jal          tp, 13b
23:               jal          ra, 19b
24:               jal          t1, 17b
25:               sltu         s10, s0, sp
sub_5_4:          jal          tp, 17f
0:                jal          t4, 8f
1:                jal          ra, 13f
2:                jal          ra, 11f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          t1, 4b
6:                jal          t1, 7f
7:                jal          ra, 15f
8:                jal          s7, 14f
9:                jal          ra, 0b
10:               jal          t1, 18f
11:               jal          ra, 12f
12:               jal          tp, 6b
13:               jal          ra, 5b
14:               jal          ra, 16f
15:               jal          ra, 1b
16:               jal          t1, 2b
17:               jal          ra, 9b
18:               ori          s4, t3, -1260
sub_5_0:          jal          tp, 6f
0:                jal          s9, 2f
1:                jal          t1, 9f
2:                jal          ra, 13f
3:                jal          a2, 8f
4:                jal          ra, 11f
5:                jal          t1, 15f
6:                jal          t2, 0b
7:                jal          t3, 5b
8:                jal          t1, 1b
9:                jal          t2, 16f
10:               jal          ra, 3b
11:               jal          t1, 7b
12:               jal          ra, 4b
13:               jal          ra, 14f
14:               jal          ra, 10b
15:               jal          ra, 17f
16:               jal          t1, 12b
17:               lui          a5, 389703
sub_5_5:          jal          tp, 10f
0:                jal          ra, 6f
1:                jal          ra, 16f
2:                jal          ra, 12f
3:                jal          ra, 22f
4:                jal          ra, 21f
5:                jal          ra, 19f
6:                jal          ra, 13f
7:                jal          a6, 2b
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          a6, 3b
11:               jal          ra, 14f
12:               jal          a5, 18f
13:               jal          a5, 20f
14:               jal          t6, 5b
15:               jal          ra, 1b
16:               jal          ra, 23f
17:               jal          t0, 7b
18:               jal          t1, 9b
19:               jal          t1, 24f
20:               jal          ra, 17b
21:               jal          t1, 15b
22:               jal          t1, 4b
23:               jal          s1, 8b
24:               lui          a5, 355236
sub_5_9:          jal          tp, 13f
0:                jal          ra, 17f
1:                jal          ra, 15f
2:                jal          tp, 5f
3:                jal          ra, 6f
4:                jal          t2, 3b
5:                jal          t1, 1b
6:                jal          t0, 0b
7:                jal          ra, 10f
8:                jal          ra, 18f
9:                jal          a6, 7b
10:               jal          s6, 2b
11:               jal          ra, 8b
12:               jal          ra, 11b
13:               jal          t1, 16f
14:               jal          t1, 19f
15:               jal          s0, 20f
16:               jal          ra, 4b
17:               jal          ra, 14b
18:               jal          ra, 9b
19:               jal          s7, 12b
20:               and          a5, sp, s6
sub_5_8:          jal          tp, 12f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          t0, 7f
3:                jal          gp, 10f
4:                jal          ra, 5f
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          t5, 13f
8:                jal          ra, 4b
9:                jal          tp, 0b
10:               jal          s10, 6b
11:               jal          ra, 1b
12:               jal          ra, 11b
13:               auipc        s8, 460550
sub_5_7:          jal          tp, 10f
0:                jal          ra, 8f
1:                jal          s3, 15f
2:                jal          ra, 1b
3:                jal          ra, 13f
4:                jal          ra, 2b
5:                jal          t0, 12f
6:                jal          s8, 11f
7:                jal          s1, 4b
8:                jal          ra, 9f
9:                jal          ra, 16f
10:               jal          ra, 14f
11:               jal          a6, 7b
12:               jal          a3, 3b
13:               jal          ra, 0b
14:               jal          ra, 6b
15:               jal          t5, 5b
16:               auipc        s2, 111911
sub_5_6:          jal          tp, 4f
0:                jal          ra, 14f
1:                jal          ra, 2f
2:                jal          ra, 17f
3:                jal          a6, 11f
4:                jal          a2, 16f
5:                jal          ra, 10f
6:                jal          ra, 7f
7:                jal          t1, 1b
8:                jal          t1, 15f
9:                jal          t1, 3b
10:               jal          a0, 6b
11:               jal          ra, 18f
12:               jal          ra, 5b
13:               jal          t1, 12b
14:               jal          ra, 8b
15:               jal          t1, 13b
16:               jal          t1, 0b
17:               jal          t1, 9b
18:               srai         a7, a0, 18
                  xor          a7, s8, s6
                  blt          t6, a5, 15f
                  slt          a6, s6, t2
                  srai         t0, s4, 25
                  auipc        gp, 267149
                  lui          tp, 92294
                  and          a0, s11, s10
                  xori         t5, t6, 1102
                  sltu         s1, t4, a7
                  blt          a0, a0, 22f
                  bgeu         s6, t6, 13f
sub_5_12:         jal          tp, 18f
0:                jal          ra, 11f
1:                jal          t1, 17f
2:                jal          t1, 15f
3:                jal          a2, 24f
4:                jal          ra, 20f
5:                jal          s7, 6f
6:                jal          ra, 23f
7:                jal          ra, 22f
8:                jal          s10, 0b
9:                jal          t4, 14f
10:               jal          t1, 13f
11:               jal          ra, 19f
12:               jal          ra, 7b
13:               jal          s2, 2b
14:               jal          a0, 5b
15:               jal          gp, 8b
16:               jal          ra, 21f
17:               jal          ra, 3b
18:               jal          ra, 16b
19:               jal          t1, 4b
20:               jal          t1, 1b
21:               jal          ra, 12b
22:               jal          t1, 9b
23:               jal          s5, 10b
24:               sltiu        s9, s8, 1193
                  sra          ra, tp, s6
                  srli         t4, s1, 27
13:               bltu         s5, zero, 33f
                  auipc        s8, 615165
15:               sltu         t3, s11, a0
                  andi         s5, s1, 227
                  addi         s9, a0, -251
                  ori          a7, t4, 1966
                  xor          s3, tp, t1
                  srai         s9, s6, 18
                  andi         s6, a6, -882
22:               srli         s8, a2, 3
                  slli         s8, ra, 23
                  auipc        t4, 1023275
                  sra          s1, t3, a1
                  sltu         s6, s10, t2
                  add          s6, s4, s6
                  add          s7, t1, s2
                  bne          a2, s8, 49f
                  sra          a2, a1, a3
                  nop
                  srli         ra, t4, 9
33:               bltu         s6, s0, 40f
                  srai         a6, s6, 0
                  lui          a0, 260304
                  lui          ra, 745346
                  andi         s7, t0, 686
                  and          a3, s10, s10
                  bne          s10, tp, 47f
40:               slt          a7, t6, s0
                  ori          s2, ra, -410
                  auipc        s10, 263036
                  xor          t2, t3, a6
                  sra          t4, a7, s7
                  or           t6, a6, s2
                  sltu         a5, t3, a3
47:               bgeu         a3, a2, 50f
                  srl          s0, tp, a6
49:               xor          s8, gp, s10
50:               bge          t4, t5, 57f
                  addi         gp, t2, 1611
                  bgeu         t6, a7, 62f
                  add          s8, t2, s5
                  bltu         s3, a7, 62f
                  xor          gp, s8, t4
                  srai         t4, ra, 1
57:               ori          s9, s5, 454
                  xori         s9, a3, -1893
                  srl          a6, s8, ra
                  or           s9, s11, a0
                  blt          a6, tp, 79f
62:               or           s7, zero, s3
                  bge          s2, s10, 67f
                  xor          s3, s6, t2
                  nop
                  andi         t6, gp, -1098
67:               andi         a6, ra, -1304
                  srai         t2, s2, 18
                  addi         t2, t1, 729
                  slli         a1, s8, 1
                  sltiu        zero, s8, -1242
                  lui          a0, 263282
                  add          gp, s4, s11
                  blt          s4, s2, 91f
                  blt          zero, gp, 81f
                  add          t5, t2, tp
                  lui          ra, 1035548
                  auipc        s9, 62385
79:               sltu         a3, s5, a3
                  addi         a6, t2, -1017
81:               xori         a7, s9, -1334
                  or           t3, t3, sp
                  sltu         t6, a5, a3
                  sll          s5, ra, s1
                  slli         ra, zero, 27
                  sltu         t4, a3, a2
                  bge          s9, a7, 89f
                  or           s2, s10, a3
89:               slli         s6, sp, 27
                  sra          s9, s4, t0
91:               bgeu         a7, s5, 103f
                  sub          a5, zero, t0
                  slti         s9, a6, 1567
                  slli         s6, a7, 21
                  and          t5, a5, tp
                  slli         tp, s7, 10
                  or           t3, s9, s11
                  add          t0, s4, zero
                  bgeu         a4, a5, 113f
                  sltu         s10, gp, a5
                  add          t6, s6, a3
                  lui          s9, 567983
103:              addi         a0, a3, 1432
                  srai         t2, a3, 21
                  or           a5, t5, a1
                  ori          s1, t3, 716
                  xori         s1, a6, -687
                  xor          a6, sp, s9
                  nop
                  lui          a7, 739625
                  or           a1, t1, a7
                  srli         a6, s7, 7
113:              sra          t5, zero, a0
                  slti         a6, a4, 810
                  lui          s2, 250172
                  xori         s7, s1, 222
                  ori          t4, s8, -1087
                  beq          s3, t5, 127f
                  auipc        t2, 609560
                  srai         zero, t2, 19
                  bne          t3, tp, 139f
                  slt          a6, s2, s3
                  lui          a7, 515641
                  xori         s10, a3, 1907
                  bltu         t3, a4, 137f
                  sll          s2, tp, t0
127:              or           s6, s5, a1
                  sltu         a5, s0, gp
                  add          t3, t0, t5
                  blt          s10, s11, 145f
                  and          t6, a2, tp
                  slli         t0, s2, 24
                  ori          gp, a3, 536
                  add          a5, ra, s5
                  sra          s2, s6, t2
                  slti         gp, s3, 674
137:              andi         s3, t3, -646
                  and          t6, s0, s5
139:              sltu         tp, t4, s0
sub_5_3:          jal          tp, 6f
0:                jal          t1, 14f
1:                jal          ra, 5f
2:                jal          ra, 17f
3:                jal          ra, 10f
4:                jal          a3, 3b
5:                jal          ra, 0b
6:                jal          ra, 15f
7:                jal          ra, 4b
8:                jal          ra, 11f
9:                jal          ra, 13f
10:               jal          a3, 1b
11:               jal          t1, 2b
12:               jal          a6, 7b
13:               jal          ra, 8b
14:               jal          ra, 19f
15:               jal          ra, 12b
16:               jal          ra, 20f
17:               jal          t1, 21f
18:               jal          t0, 16b
19:               jal          ra, 18b
20:               jal          ra, 9b
21:               or           s8, t4, sp
                  xori         s5, a2, 1897
                  bne          t1, t0, 148f
                  xori         t6, s9, 1284
                  or           s0, a3, t3
                  addi         s6, s3, -63
145:              sltiu        a5, s8, -440
                  sltiu        zero, s6, -2024
                  sltiu        t1, t2, 1082
148:              sltu         s3, a2, t2
                  srl          t0, t3, s8
                  blt          s9, s2, 161f
                  or           a0, t2, s9
                  srli         t4, a5, 7
                  add          s7, s11, t0
                  add          t1, s1, s3
                  addi         a0, s1, -150
                  add          s9, a6, s10
                  nop
                  srai         t5, s8, 24
                  srl          t2, s3, a7
                  srl          a5, t6, t3
161:              addi         a1, t0, 1255
                  lui          gp, 752847
                  auipc        s1, 734058
                  xori         t1, t4, -586
                  srai         a0, t5, 6
                  beq          zero, a7, 181f
                  ori          s9, a5, -1879
                  xori         gp, s2, 1366
                  and          t2, s6, gp
                  blt          zero, a1, 190f
                  and          a2, a2, s0
                  blt          a7, t3, 190f
                  sub          ra, t4, a5
                  sub          t4, a5, tp
                  sll          t3, a5, tp
                  sll          zero, sp, t4
                  bgeu         zero, a3, 185f
                  nop
                  nop
                  sltiu        a3, t6, -80
181:              srl          a0, s2, s7
                  bgeu         s7, a7, 193f
                  slli         s7, gp, 8
                  auipc        tp, 838391
185:              xor          zero, s3, a0
                  sll          a6, a4, ra
                  srli         s4, gp, 19
                  srli         s3, a3, 22
                  add          s2, t4, t3
190:              xori         tp, s6, -1512
                  sltu         s9, a2, s11
                  xor          zero, s11, s7
193:              ori          a2, t2, 1511
                  ori          s8, t6, -305
                  sltu         s2, s8, s4
                  auipc        a6, 176323
                  bltu         s11, a1, 214f
                  addi         t2, a3, 1467
                  bne          s8, s10, 216f
                  bne          tp, s11, 208f
                  sub          s0, s1, a4
                  sll          t3, s9, ra
                  bne          gp, a1, 220f
                  bltu         a4, t2, 224f
                  and          t3, t5, s9
                  sltiu        t6, tp, 166
                  bgeu         s2, ra, 210f
208:              or           t0, s4, a2
                  bgeu         a5, t4, 220f
210:              bgeu         t3, s10, 223f
                  lui          t5, 259748
                  slt          ra, s3, t3
                  slli         a3, s8, 8
214:              add          t3, s3, s4
                  ori          s1, a3, -199
216:              ori          s10, tp, 1494
                  ori          t6, a6, -75
                  sll          tp, t5, a0
                  srli         s7, s11, 6
220:              or           s0, tp, a2
                  and          a2, s9, t4
                  srai         t2, t2, 14
223:              blt          s10, t0, 241f
224:              or           t1, t5, s3
                  bltu         s10, sp, 243f
                  bltu         s4, t4, 236f
                  add          ra, s7, tp
                  or           s9, t6, t6
                  slli         gp, t5, 13
                  xori         ra, a0, -1267
                  slli         a7, t0, 4
                  auipc        ra, 640629
                  xor          t6, s8, s9
                  blt          a0, s4, 241f
                  srai         s10, t0, 7
236:              lui          s9, 299432
                  slti         s8, s5, -1895
                  srai         s1, t4, 11
                  sll          zero, a2, sp
                  andi         s4, s9, 558
241:              sltu         a3, s0, a1
                  sra          t3, s2, a7
243:              or           s1, s5, ra
                  lui          t4, 621872
                  beq          s8, s0, 252f
                  xori         gp, a5, -1118
                  ori          s9, s8, -1440
                  auipc        a0, 438565
                  sltiu        ra, t5, 1499
                  auipc        s1, 166003
                  bgeu         s9, s5, 260f
252:              or           s1, a7, s0
                  addi         tp, a5, -1311
                  beq          s7, s5, 258f
                  bge          zero, t4, 269f
                  blt          ra, a2, 276f
                  sra          gp, s9, t1
258:              xori         a3, s4, -706
                  sra          s8, s7, s6
260:              add          a3, zero, s2
                  ori          s2, a0, 247
                  ori          s9, t6, -36
                  sll          s8, s10, s0
                  sll          t6, a5, s7
                  bne          gp, a2, 268f
                  srl          t2, t3, zero
                  sub          a3, a2, s7
268:              nop
269:              bgeu         t1, a4, 271f
                  or           gp, t2, a2
271:              xori         ra, zero, -1493
                  addi         a7, s9, -1347
                  slti         t5, s2, 492
                  srai         s10, s10, 22
                  nop
276:              bgeu         s1, s5, 296f
                  xor          gp, tp, s1
                  sll          t0, a2, s3
                  andi         a2, s5, -164
                  and          s1, a4, t0
                  addi         t3, t5, -1045
                  xori         t4, s4, 459
                  sll          s2, s6, t2
                  add          s10, ra, gp
                  addi         t0, t2, 1905
                  xor          s3, t4, s0
                  andi         s9, s5, -35
                  xori         s4, a1, -177
                  and          t2, a2, a1
                  bne          t4, t3, 302f
                  slti         t4, t1, 897
                  srai         s5, gp, 12
                  sub          t0, t4, s7
                  or           a6, a1, zero
                  bltu         ra, s8, 306f
296:              bltu         s6, a2, 310f
                  add          ra, zero, a2
                  lui          ra, 282221
                  lui          t0, 345327
                  bne          s7, t4, 315f
                  andi         a7, a5, -1992
302:              andi         a1, gp, -1316
                  slti         a3, t1, 1475
                  addi         s0, zero, 1337
                  bltu         t5, t4, 323f
306:              sltu         a2, gp, t5
                  andi         s9, t5, -1649
                  sll          gp, t0, s2
                  sltu         s0, s2, sp
310:              auipc        t4, 195081
                  xori         t4, s6, -532
                  bltu         s0, s5, 319f
                  bge          tp, s2, 328f
                  and          t3, a1, a6
315:              and          t1, a1, zero
                  bltu         a1, s3, 324f
                  srli         s3, t1, 4
                  or           s10, a3, a7
319:              sll          s9, s1, a5
                  bgeu         t0, t3, 326f
                  srai         s7, zero, 16
                  auipc        tp, 1030625
323:              slt          t5, zero, s0
324:              lui          s3, 938005
                  slli         a3, a1, 8
326:              srai         gp, s7, 18
                  xori         t2, a7, -1400
328:              srli         s10, s4, 28
                  sub          s5, s0, a1
                  srai         s1, sp, 17
                  addi         s7, t4, -98
                  xor          zero, s2, s0
                  beq          s11, a3, 341f
                  blt          a5, s9, 346f
                  sltu         s10, t1, t0
                  slti         t4, a2, 667
                  andi         t4, a7, -559
                  sltiu        s2, a6, -86
                  addi         s9, a5, -1834
                  xori         s6, s1, 749
341:              slt          a7, s7, s0
                  xori         s10, s1, -2023
                  blt          s3, gp, 350f
                  sltiu        a3, sp, -850
                  lui          a2, 741537
346:              srai         s5, t5, 18
                  ori          a7, s1, -173
                  srl          a5, s2, t1
                  sltu         a7, t5, s4
350:              srli         a0, gp, 23
                  blt          ra, t4, 355f
                  srai         ra, a0, 15
                  slti         a2, a5, 303
                  bgeu         a5, s3, 367f
355:              sltiu        s0, t2, -592
                  srli         s10, zero, 1
                  lui          t4, 687972
sub_5_1:          jal          tp, 3f
0:                jal          a6, 14f
1:                jal          t1, 6f
2:                jal          ra, 17f
3:                jal          ra, 13f
4:                jal          ra, 15f
5:                jal          t3, 2b
6:                jal          ra, 12f
7:                jal          tp, 16f
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          a1, 18f
11:               jal          t0, 8b
12:               jal          ra, 19f
13:               jal          s3, 0b
14:               jal          ra, 10b
15:               jal          t1, 1b
16:               jal          s3, 9b
17:               jal          ra, 11b
18:               jal          ra, 7b
19:               slli         a5, s2, 10
                  andi         a3, a5, -521
                  and          a2, a0, s8
                  andi         a1, s0, -857
                  auipc        t0, 860172
                  slti         a6, tp, 722
                  xor          ra, t4, s11
                  sltiu        s1, a6, 1034
                  lui          tp, 833255
                  blt          t1, a5, 384f
367:              srli         t2, tp, 13
                  lui          a5, 498870
                  andi         s5, s10, -1850
                  nop
                  xori         s6, t4, -1653
                  nop
                  ori          s6, s11, 431
                  srli         ra, sp, 10
                  xor          t0, t5, t5
                  bge          s7, t6, 396f
                  bgeu         s7, t1, 387f
                  bne          zero, s9, 398f
                  add          tp, s2, s11
                  lui          s6, 483997
                  bgeu         a6, a3, 389f
                  add          t4, t4, tp
                  nop
384:              add          s9, t0, a7
                  andi         t4, a3, 1898
                  bltu         t3, a6, 403f
387:              sltiu        s10, s8, 1881
                  slti         s10, a0, -238
389:              srli         zero, t1, 29
                  bgeu         a4, s7, 397f
                  bne          s2, a7, 393f
                  add          a2, s7, a4
393:              slli         s7, t0, 30
                  sltiu        s10, t1, -814
                  beq          t6, s7, 407f
396:              beq          a6, t5, 410f
397:              nop
398:              slti         s3, s5, -1282
                  slli         a3, a3, 8
                  bne          s7, t6, 415f
                  bgeu         zero, s8, 404f
                  sra          s9, s9, s10
403:              addi         s3, t1, -1125
404:              bltu         s7, s9, 410f
                  lui          s2, 927731
                  bge          s2, a5, 424f
407:              and          t4, a0, s2
                  andi         ra, sp, 1369
                  slt          s8, t3, sp
410:              xor          t6, s2, gp
                  ori          a6, t1, -429
                  andi         a2, sp, -786
                  sll          ra, s10, a1
                  andi         zero, a0, 73
415:              sub          a6, zero, ra
                  auipc        s7, 806747
                  sra          tp, t3, s10
                  andi         s2, a7, 391
                  lui          a3, 917515
                  slti         a7, a0, 1786
                  bge          s7, gp, 436f
                  nop
                  blt          s1, s8, 426f
424:              bne          t3, s11, 438f
                  bgeu         zero, s0, 433f
426:              andi         a2, t4, -1677
                  nop
                  xori         gp, s5, 1826
                  ori          s2, s1, -1938
                  sltiu        zero, s1, 1065
                  sltu         t0, a2, tp
                  beq          s0, s6, 440f
433:              slti         gp, a7, 1047
                  slli         s1, s1, 6
                  blt          a2, s10, 444f
436:              slli         a7, s10, 9
                  and          t5, s8, a2
438:              bne          tp, t4, 456f
                  blt          s0, a3, 451f
440:              sra          a3, tp, a4
                  or           s5, s11, sp
                  xor          s6, s11, s4
                  sll          s3, s0, a3
444:              sll          gp, a3, s9
                  xori         t0, t0, 695
                  bge          a6, a4, 457f
                  srai         t1, s4, 2
                  addi         s5, t2, 1654
                  bge          t6, sp, 466f
                  slli         s3, a6, 10
451:              sra          s1, a1, s4
                  bge          t1, a4, 463f
                  slti         t4, s0, 711
                  bgeu         t5, zero, 474f
                  sltiu        ra, s11, -1466
456:              blt          t0, t0, 463f
457:              sub          t6, a2, s0
                  sub          t6, a4, t3
                  add          a6, a6, t1
                  srli         gp, t5, 8
                  bne          s11, s4, 473f
                  sra          t5, t4, t0
463:              slti         s5, s1, 942
                  sra          a7, s1, a3
                  srai         gp, a2, 16
466:              bne          t5, s0, 469f
                  xori         s10, s7, 1913
                  and          a5, t1, a0
469:              slli         t3, t4, 30
                  bltu         a4, tp, 483f
                  add          a6, s7, sp
                  slti         tp, a4, -1094
473:              slli         s1, s11, 6
474:              sra          zero, zero, s9
                  and          t5, s1, t2
                  srli         s5, t3, 27
                  auipc        t3, 289015
                  bge          a6, s2, 489f
                  blt          s0, t6, 486f
                  srl          tp, t6, a2
                  srai         t3, s11, 8
                  beq          s9, t2, 499f
483:              add          s1, s2, ra
                  or           a0, s8, s11
                  xori         s0, s3, -364
486:              srl          a3, t4, a4
                  slli         s0, t1, 20
                  bltu         s6, zero, 492f
489:              bltu         t0, t3, 507f
                  srai         s3, s1, 17
                  xori         t5, a0, -447
492:              beq          a2, t5, 510f
                  sll          s9, t0, s1
                  ori          gp, tp, -1562
                  srli         t5, t2, 4
                  and          zero, s9, t2
                  srli         t5, t3, 30
                  beq          a1, a5, 504f
499:              sltu         t4, tp, s9
                  xor          ra, a4, s5
                  bge          t5, zero, 518f
                  and          t4, t0, ra
                  slt          s2, t4, tp
504:              ori          a6, a0, 1907
                  andi         t5, a7, -363
                  sltu         s5, gp, s0
507:              or           a2, tp, a0
                  auipc        a2, 575329
                  xor          gp, a6, a6
510:              ori          s8, s0, 1155
                  nop
                  sltiu        ra, s3, 1695
                  add          a2, s3, s9
                  srli         t6, s2, 1
                  sra          s0, a5, t4
                  bgeu         s6, s7, 530f
                  ori          s6, s1, -1670
518:              sra          t2, gp, a5
                  ori          a6, a5, 603
                  srl          t1, t2, a2
                  or           t2, t5, a0
                  xori         s2, t4, 873
                  srai         s4, s3, 28
                  slti         t4, a4, -1768
                  sll          t3, s10, s6
                  bge          t6, s7, 534f
                  bgeu         s1, a4, 542f
                  ori          tp, t0, -688
                  xor          s1, a7, a7
530:              andi         s1, a4, -508
                  bge          t5, a6, 551f
                  addi         s6, s10, 1205
                  sltu         a7, s4, s2
534:              bne          a6, a3, 548f
                  or           tp, ra, a6
                  sltu         s0, a4, s1
                  and          gp, t6, t2
                  slti         s1, sp, -2042
                  xori         s3, t0, 554
                  sra          a1, s9, s2
                  lui          s6, 965624
542:              bltu         a2, s1, 553f
                  beq          zero, s4, 550f
                  xori         gp, t4, 1329
                  bgeu         a3, s8, 553f
                  add          t1, s3, a5
                  beq          a5, tp, 554f
548:              sltiu        t0, tp, -1634
                  sltu         s9, s5, t1
550:              slti         t4, s11, 1545
551:              blt          s8, a5, 563f
                  andi         s6, s2, -786
553:              xor          t2, a2, a6
554:              beq          s3, zero, 569f
                  bltu         gp, zero, 557f
                  slli         a7, t6, 3
557:              slt          a3, s10, t6
                  srli         a7, a2, 0
                  srli         a0, s7, 30
                  sltu         t4, s9, a7
                  auipc        a1, 5412
                  srai         a3, ra, 17
563:              auipc        t6, 428714
                  bne          s3, s7, 584f
                  slli         s2, a1, 29
                  blt          a4, t1, 569f
                  or           a1, t0, gp
                  addi         tp, sp, 1150
569:              ori          s2, t3, 1165
                  beq          tp, s5, 588f
                  ori          s5, zero, -549
                  sltiu        t6, t2, -1330
                  ori          s0, s4, -895
                  beq          zero, t4, 582f
                  bne          a1, a4, 585f
                  xor          s5, s10, a2
                  xor          s2, t4, s9
                  addi         t3, a1, -1759
                  and          tp, s7, t2
                  andi         t1, sp, 412
                  nop
582:              sltiu        ra, a1, -531
                  srai         a7, s1, 14
584:              nop
585:              beq          s3, t1, 594f
                  sltu         a1, s2, t2
                  bne          s9, s4, 607f
588:              sub          t6, t6, sp
                  ori          s3, t0, 1562
                  slli         t3, s6, 31
                  and          s4, a7, t6
                  bgeu         a4, t3, 606f
                  andi         s4, zero, -1475
594:              sra          s7, s11, s6
                  sltiu        zero, s11, 1869
                  bgeu         t5, s11, 616f
                  add          s8, gp, s3
                  slti         zero, a7, -1392
                  lui          t0, 105848
                  slli         s2, s2, 27
                  bgeu         s0, a1, 610f
                  and          a1, s3, t4
                  slli         t0, t2, 19
                  or           a7, t0, s3
                  addi         t2, s6, 458
606:              slt          zero, gp, a4
607:              andi         zero, s11, 1939
                  srai         a6, s5, 23
                  bgeu         t4, a2, 626f
610:              lui          s1, 380469
                  lui          a1, 1047544
                  sltu         a6, t6, a4
                  add          s2, t0, a3
                  nop
                  slli         s9, t2, 22
616:              xori         zero, a0, -493
                  or           s8, s1, s5
                  bgeu         s6, t0, 621f
                  add          t5, a6, s5
                  addi         s1, s4, -1010
621:              sltiu        s9, a6, -1203
                  addi         tp, a4, 1670
                  ori          a5, a4, -201
                  and          a3, a0, s6
                  lui          a0, 367220
626:              and          s9, t5, t6
                  bgeu         s4, t2, 638f
                  blt          a1, s7, 646f
                  andi         s2, t3, -1888
                  slt          a1, a6, s3
                  xor          s3, s3, t4
                  bge          t2, a6, 639f
                  sltiu        a0, tp, 427
                  sll          s9, gp, a3
                  bge          gp, s5, 655f
                  sltiu        a5, t1, 1088
                  sll          tp, a2, sp
638:              andi         a3, s3, 88
639:              addi         tp, s9, -197
                  sll          zero, s4, s7
                  add          s7, a2, sp
                  srli         s2, s4, 5
                  bltu         a6, gp, 656f
                  lui          s1, 493592
                  srai         t5, a1, 5
646:              and          gp, gp, t5
                  bgeu         s2, s4, 650f
                  slt          a1, a6, t5
                  srl          a1, s10, a0
650:              srli         t5, s1, 13
                  auipc        ra, 965228
                  xor          a5, ra, ra
                  bne          s1, s9, 660f
                  bgeu         t6, sp, 669f
655:              ori          a0, s5, 1782
656:              sltu         a1, a4, a0
                  and          s8, s7, a5
                  xor          zero, tp, s10
                  sltu         s1, ra, t0
660:              addi         a0, a0, -391
                  sll          t4, t2, sp
                  bge          s7, t0, 670f
                  slti         a5, gp, 763
                  xori         a3, a6, 1630
                  bltu         tp, s8, 683f
                  srai         s9, s7, 16
                  add          tp, t1, a1
                  slti         t0, s4, -933
669:              add          tp, s9, s5
670:              xor          a3, a3, s6
                  beq          s8, zero, 682f
                  addi         t3, t2, 1860
                  add          a6, s3, s6
                  xor          a0, s4, tp
                  bge          s8, s4, 687f
                  addi         t4, s3, -989
                  srli         t5, s5, 29
                  srli         s5, t2, 17
                  or           s10, a6, s5
                  ori          s5, t6, 1170
                  addi         zero, s7, -1857
682:              srl          s2, t1, s0
683:              and          a1, s11, s6
                  xor          a6, s4, s9
                  sltu         s2, a3, s5
                  beq          s11, a7, 687f
687:              sltiu        s9, s7, 1757
                  lw           tp, 4(s11)
                  lui          t6, 549673
                  sub          a7, tp, s5
                  addi         s11, s11, 20
                  xor          t2, a0, a4
998:              addi x16, x4, 0
998:              jalr x16, x16, 0
sub_1:            andi         t3, s6, -134
                  srli         s3, s11, 7
                  sra          s9, sp, s3
                  sub          s6, a5, s5
                  lui          t5, 13450
                  addi         s11, s11, -48
                  sw           tp, 4(s11)
                  addi         gp, t4, 827
                  add          a5, ra, s6
                  andi         s2, sp, 2018
                  la           gp, sub_3
                  sub          tp, t5, s9
                  nop
                  slli         s6, s11, 23
                  addi         gp, gp, 425
                  slti         s7, a0, -1251
                  andi         s4, s6, 904
                  bge          sp, s3, sub_1_j3 #branch to jump instr
                  xor          a0, s8, t6
sub_1_j3:         jalr         tp, gp, -424 #jump sub_1 -> sub_3
sub_1_3:          jal          tp, 10f
0:                jal          a2, 4f
1:                jal          ra, 12f
2:                jal          t0, 13f
3:                jal          t1, 9f
4:                jal          ra, 1b
5:                jal          t0, 15f
6:                jal          ra, 17f
7:                jal          ra, 8f
8:                jal          s6, 0b
9:                jal          ra, 16f
10:               jal          t1, 14f
11:               jal          ra, 5b
12:               jal          t0, 2b
13:               jal          s10, 6b
14:               jal          a7, 11b
15:               jal          ra, 3b
16:               jal          ra, 7b
17:               addi         t1, s4, -1266
sub_1_4:          jal          tp, 3f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          tp, 5f
4:                jal          tp, 2b
5:                jal          ra, 10f
6:                jal          t0, 7f
7:                jal          ra, 11f
8:                jal          s6, 0b
9:                jal          gp, 1b
10:               jal          s1, 9b
11:               sltu         t6, a0, t1
sub_1_2:          jal          tp, 19f
0:                jal          t1, 3f
1:                jal          ra, 12f
2:                jal          ra, 24f
3:                jal          s2, 23f
4:                jal          ra, 22f
5:                jal          ra, 2b
6:                jal          s1, 18f
7:                jal          s7, 10f
8:                jal          ra, 7b
9:                jal          ra, 16f
10:               jal          a0, 21f
11:               jal          ra, 20f
12:               jal          ra, 14f
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          ra, 6b
16:               jal          ra, 5b
17:               jal          ra, 13b
18:               jal          t0, 11b
19:               jal          ra, 1b
20:               jal          a0, 9b
21:               jal          s9, 0b
22:               jal          ra, 15b
23:               jal          ra, 17b
24:               sltiu        t6, s0, 1050
sub_1_0:          jal          tp, 0f
0:                jal          t1, 7f
1:                jal          gp, 16f
2:                jal          ra, 17f
3:                jal          ra, 20f
4:                jal          t1, 2b
5:                jal          ra, 23f
6:                jal          ra, 4b
7:                jal          ra, 1b
8:                jal          tp, 18f
9:                jal          ra, 21f
10:               jal          t0, 5b
11:               jal          a1, 13f
12:               jal          ra, 11b
13:               jal          ra, 19f
14:               jal          t1, 25f
15:               jal          ra, 24f
16:               jal          ra, 15b
17:               jal          ra, 22f
18:               jal          s4, 12b
19:               jal          t1, 10b
20:               jal          t1, 26f
21:               jal          tp, 14b
22:               jal          s1, 3b
23:               jal          s7, 9b
24:               jal          t1, 8b
25:               jal          ra, 6b
26:               addi         t4, s5, 168
                  sltiu        t1, s6, -553
                  bne          a1, s4, 5f
                  srai         s4, zero, 19
                  sra          t0, t4, t2
                  blt          s4, s11, 12f
5:                blt          ra, ra, 10f
                  beq          a5, a4, 22f
                  ori          s2, a5, -374
                  ori          s4, gp, -1605
                  bne          s2, zero, 17f
10:               srai         t1, t1, 18
                  bge          s1, t1, 31f
12:               sra          a2, a5, s3
                  xori         a0, a6, 1374
                  andi         s9, s11, -1850
                  add          t6, a5, s11
                  slti         s1, a6, -1755
17:               addi         a1, s3, -1253
                  srai         t0, t0, 6
                  auipc        a0, 789277
                  xori         s1, s9, -419
                  ori          s6, s3, -1815
22:               xori         a7, t6, -427
                  blt          t1, ra, 39f
                  auipc        t1, 376556
                  xori         s2, zero, 939
                  andi         t4, ra, -799
                  addi         s4, a5, -1270
                  sub          s1, sp, s10
                  sltiu        a7, s2, -2001
                  slti         a7, gp, -1202
31:               bgeu         ra, tp, 47f
                  and          zero, s8, s6
                  srli         a7, s8, 4
                  slti         t5, t1, -1345
                  blt          s8, s10, 45f
                  sll          a3, t3, s3
                  bltu         t5, s6, 49f
                  srli         a5, t2, 5
39:               ori          s10, t6, 714
                  lui          t3, 797448
                  blt          s1, s0, 47f
                  slti         a5, a0, 1776
                  xor          s0, t1, s7
                  lui          ra, 1026561
45:               slti         a3, s1, -1192
                  addi         a5, a2, -702
47:               sra          a1, t5, a7
                  sra          s7, t1, s9
49:               sra          ra, t5, a2
                  lui          s1, 764531
                  and          tp, t0, s11
                  andi         s7, a5, 1500
                  slli         a2, s2, 9
                  xori         tp, a5, -520
                  srli         t4, gp, 31
                  sltu         a7, zero, ra
                  sltiu        t0, s2, 1721
                  xor          s6, t2, t6
                  slli         s1, s10, 27
                  bltu         s10, sp, 69f
                  sra          a1, a5, ra
                  slti         s6, tp, 638
                  bgeu         t4, t4, 72f
                  bge          a2, ra, 69f
                  sltiu        s9, s10, 168
                  slt          a0, s1, s1
                  auipc        s1, 965025
                  andi         a7, a6, -882
69:               srli         a3, t6, 0
                  sll          s2, a7, s10
                  sub          a5, t2, a7
72:               bge          s9, t6, 74f
                  add          ra, t0, t5
74:               sub          t5, s8, t6
                  and          s3, s10, tp
                  bne          s11, t3, 87f
                  beq          ra, t2, 90f
                  sltiu        a5, zero, -1743
                  slti         s9, t5, 2031
                  slli         s8, t2, 0
                  sll          gp, a0, s9
                  bge          a1, zero, 89f
                  sltiu        a0, ra, -1570
                  blt          ra, t5, 93f
                  bne          tp, tp, 86f
86:               auipc        s9, 209306
87:               and          zero, t3, a0
                  add          s7, s8, gp
89:               andi         s10, a6, 1176
90:               lui          s10, 809714
                  sll          t4, s4, zero
                  or           t4, s9, t6
93:               ori          gp, s6, -247
                  or           s4, s0, s4
                  sra          s3, t5, sp
                  srai         t0, zero, 12
                  sub          t2, t1, sp
                  slti         s5, s9, 982
                  bne          s4, gp, 106f
                  srai         s0, t3, 1
                  xori         t4, t3, 1422
                  bne          s7, s8, 115f
                  sltiu        s9, a3, -886
                  xori         s0, s1, -1311
                  addi         s1, ra, 754
106:              lui          t6, 904398
                  srai         s5, s11, 0
                  bne          tp, s6, 110f
                  slti         a0, s7, 155
110:              srl          s4, t1, s1
                  slli         t2, t5, 1
                  srli         s1, a6, 23
                  beq          tp, a7, 125f
                  andi         t0, a6, -335
115:              sltiu        t5, s10, 142
                  or           t0, s0, zero
                  and          s9, s0, t6
                  sll          t0, s2, gp
                  ori          t1, s5, 1547
                  srli         s6, a1, 13
                  or           t1, a6, t4
                  srai         s2, s9, 10
                  nop
                  lui          tp, 1029428
125:              xori         t6, tp, -1163
                  or           t3, s3, a6
                  beq          t5, t0, 133f
                  nop
                  ori          s0, a4, 189
                  srl          a0, t3, a7
                  blt          s1, a3, 134f
                  beq          a4, s8, 134f
133:              slti         t4, a7, -336
134:              sub          s10, s10, t6
                  blt          t4, t2, 146f
                  auipc        a2, 508301
                  addi         a3, tp, 1480
                  sll          s7, s8, a6
                  sltu         s6, zero, s7
                  auipc        s2, 1032318
                  xori         a1, s2, 919
                  xori         s3, a3, -1802
                  srl          a7, sp, a2
                  beq          a0, s3, 164f
                  ori          gp, s8, 239
146:              sltiu        a0, a1, -270
                  sltiu        a3, a6, 288
                  bne          t5, s5, 164f
                  slli         a1, t6, 22
                  sra          s1, s0, a7
                  sra          s2, t0, s0
                  bge          s5, a5, 156f
                  xor          tp, a5, s5
                  blt          s7, s3, 167f
                  bgeu         a1, t4, 168f
156:              bltu         t2, zero, 168f
                  slti         t1, s5, -1027
                  sra          t0, t0, t1
                  sltu         a3, s11, a1
                  xor          a7, tp, sp
                  xor          s7, s6, tp
                  nop
                  slli         a0, t1, 18
164:              addi         ra, s9, 1690
                  and          s8, a0, t3
                  bltu         s10, t2, 175f
167:              srl          tp, a5, s4
168:              slli         t1, s7, 23
                  beq          a3, a0, 185f
                  sltu         s3, s8, a0
                  beq          s6, s7, 178f
                  sltiu        t0, s2, 525
                  andi         s0, gp, -1426
                  bltu         a2, s8, 194f
175:              and          s9, a1, a7
                  addi         s3, a7, -1881
                  srai         s9, tp, 6
178:              ori          a7, t2, 562
                  srl          s6, t2, a4
                  nop
                  slti         s6, a7, 1876
                  add          a2, s1, s10
sub_1_1:          jal          tp, 0f
0:                jal          ra, 24f
1:                jal          ra, 16f
2:                jal          s0, 17f
3:                jal          t4, 22f
4:                jal          ra, 14f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          t3, 21f
8:                jal          t1, 1b
9:                jal          tp, 19f
10:               jal          t1, 13f
11:               jal          ra, 20f
12:               jal          ra, 10b
13:               jal          a0, 23f
14:               jal          t1, 5b
15:               jal          t1, 25f
16:               jal          ra, 12b
17:               jal          t1, 6b
18:               jal          s8, 2b
19:               jal          ra, 4b
20:               jal          ra, 3b
21:               jal          t1, 15b
22:               jal          t1, 8b
23:               jal          t1, 18b
24:               jal          ra, 11b
25:               jal          ra, 26f
26:               nop
                  srai         a0, t3, 11
                  srl          t0, s8, t0
185:              addi         a0, t1, -1843
                  slt          a0, tp, s8
                  sltiu        s8, t0, 1656
                  slli         s8, s2, 29
                  slt          s10, a1, t0
                  bne          a1, s8, 206f
                  nop
                  blt          s0, s3, 199f
                  slli         s3, a1, 31
194:              bge          a1, t3, 196f
                  bne          a7, s8, 196f
196:              srli         s5, t3, 9
                  sll          a2, s9, s6
                  add          a5, t3, t1
199:              sub          t1, a2, t6
                  sll          a3, s6, s10
                  auipc        t4, 444797
                  sra          a3, a4, s5
                  bltu         a5, s0, 215f
                  and          a3, t1, s1
                  sub          t3, a7, sp
206:              slt          t6, a2, ra
                  beq          t2, t6, 223f
                  srli         a3, s9, 29
                  and          s7, s11, a3
                  andi         s3, s8, 1181
                  addi         a6, s6, 1858
                  sltiu        t4, a4, -76
                  andi         s3, gp, -835
                  xor          t3, s11, a4
215:              bne          s4, t5, 221f
                  blt          a5, s5, 236f
                  srai         t4, t2, 17
                  srli         ra, t5, 5
                  bgeu         t1, s7, 221f
                  slti         t4, s1, 592
221:              beq          s5, t0, 224f
                  srai         a1, sp, 21
223:              bgeu         s4, a6, 228f
224:              andi         a3, s3, -561
                  blt          a2, t0, 236f
                  blt          a4, t6, 237f
                  lui          gp, 22560
228:              sll          s10, a7, s2
                  beq          tp, sp, 245f
                  blt          t5, s3, 236f
                  slli         a7, t5, 0
                  bgeu         a7, s8, 241f
                  beq          s5, s10, 241f
                  srli         zero, s8, 14
                  xor          gp, a4, a5
236:              xor          s7, a0, s6
237:              xori         t6, a1, 274
                  blt          a5, t4, 246f
                  srai         s9, zero, 28
                  auipc        t4, 946266
241:              nop
                  and          s5, s1, a0
                  ori          s2, s1, 1466
                  sltiu        s9, s9, -1713
245:              sll          t1, t6, sp
246:              sltiu        s2, a7, -1009
                  bgeu         t5, a7, 257f
                  slt          s4, a7, s0
                  add          a5, t5, s2
                  bge          tp, gp, 259f
                  sltiu        s8, a4, 1944
                  ori          ra, a5, -1941
                  srai         s5, gp, 31
                  srli         s5, s3, 7
                  and          s2, a1, a2
                  sub          s9, t4, t6
257:              sra          gp, s11, t3
                  sra          s0, s10, gp
259:              srai         t3, zero, 28
                  srli         t1, s3, 21
                  xor          s3, s5, ra
                  lui          t0, 567447
                  and          t2, s1, s10
                  bne          s0, gp, 269f
                  xor          t1, a0, s11
                  blt          s10, tp, 268f
                  sll          a2, t1, a0
268:              add          t5, a2, a0
269:              bge          a5, a6, 277f
                  lui          s8, 176381
                  slti         t5, zero, -1801
                  andi         t6, a3, 1794
                  lui          a0, 668123
                  and          t3, a5, a5
                  sub          s2, t2, a6
                  or           a1, t2, gp
277:              or           gp, s9, a0
                  lw           tp, 4(s11)
                  sltu         s9, tp, t3
                  sub          s5, s5, s4
                  or           gp, s0, t5
                  nop
                  sll          s5, t5, t1
                  xori         a5, gp, 1910
                  xor          t0, ra, ra
                  addi         s11, s11, 48
                  sra          s1, s6, s4
                  xori         ra, s11, -1948
423:              addi x21, x4, 0
423:              jalr x21, x21, 0
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
.word 0xe08db4fe, 0x8170e859, 0x867e9c55, 0x281be9e0, 0xe750e8b4, 0x995fa01f, 0xc346e06a, 0xe875f957
.word 0xba86c9a2, 0x6760fd46, 0x5b2e83f0, 0x08272d98, 0xfea74886, 0x935781dd, 0x0b95c426, 0xf25fd1bf
.word 0x91fef01c, 0xc0d7889a, 0x66984213, 0x4125dedf, 0xb60062fd, 0xba91091e, 0x97e8ee2c, 0xae95c981
.word 0x35afd95a, 0xc6c479ad, 0x0e2e8a44, 0xafc5961e, 0x8b2c59b7, 0x65833b15, 0xee3b41b7, 0xb70a938b
.word 0xd536ad0f, 0x42c12813, 0x8ef6fa28, 0x2f8d7b7d, 0xc44a3eaf, 0x62ba1d64, 0xa6b204a4, 0x4b216a52
.word 0x95c12664, 0x84d79528, 0x4a2f3c85, 0x55d869be, 0x0c000477, 0xd1e33e74, 0x363ebe23, 0xf21c68cf
.word 0x70c0309b, 0x0447ec96, 0x0798f006, 0x810fcd26, 0xb9f003a0, 0xf12ea00f, 0x2f5ebab2, 0x5c709c67
.word 0xc2f0979c, 0x04f652c1, 0x1c7c7a4f, 0xb3de4435, 0xbf3d7d39, 0x5dafb4a8, 0xdc6ca811, 0x1ba97eac
.word 0x1dcf7726, 0x1cae8bde, 0xa2a272f4, 0xd52d6724, 0xf84be760, 0xd628aec5, 0x91720607, 0x469211bd
.word 0x3f5f4188, 0xf2f682af, 0x9a94441f, 0xe3dc0f9c, 0x047d2010, 0xb5b86c65, 0x57582609, 0xb94ccb3b
.word 0xa8958c5d, 0x445ef076, 0x3ae3be08, 0xffafb355, 0xc66ca9f0, 0x11995939, 0xab384597, 0x832068f8
.word 0x8845f5d8, 0x51d99e5b, 0x253edc03, 0xfd185af8, 0x5719d969, 0x10e6e4b9, 0x8c3fdad6, 0x788cf18a
.word 0xf2ba248d, 0x800c02ec, 0x397a6a22, 0xc1f56058, 0x14af979f, 0x1439d8e3, 0x48174426, 0xae4f5919
.word 0x8d4343da, 0x8c0b8963, 0x91a1686b, 0xcfd7f34a, 0x7e79f137, 0x448a80b5, 0x033ba39c, 0x70efda05
.word 0x5a81b3ad, 0x3c010c8d, 0xf116ab20, 0x575d1850, 0xa285cb63, 0x9fceeb1f, 0x7d8e6dbd, 0xcbd2ff81
.word 0x42ec63ba, 0xc4a4ef77, 0xb2e64259, 0xbeb8b851, 0xb37ab6c3, 0x810dfd68, 0x6c1443dd, 0xa2a30208
.word 0x6a3fdd7a, 0x2ba6c1ad, 0x3c199517, 0x522499db, 0x417bf1a0, 0xc7bab878, 0xac3bdfcf, 0x5308108a
.word 0xaee0eab3, 0xe1a79512, 0x85b548b2, 0x56dfc42e, 0x101574fa, 0x38479c21, 0x2be00ea6, 0xf7da20b6
.word 0xb4b26747, 0x97e1eef4, 0xd4925dac, 0xc42096a5, 0xbfd62bae, 0x448752a0, 0x5724b373, 0xbd40e333
.word 0xf58f32ea, 0x2ee4ce43, 0xa326f9eb, 0x97a0478a, 0xdfff925e, 0x67eff081, 0x37d4ead5, 0x55a4bbf4
.word 0x5b3ae89c, 0x3eba8dee, 0x220515c1, 0xf005ea75, 0x5960b671, 0x1fb383c1, 0x801fab4f, 0x034c7bac
.word 0x6ca1bc00, 0x68af7763, 0x9b2c54ad, 0x75dad4c8, 0x65b7effe, 0xd836b1b3, 0xf05503db, 0x430a06a9
.word 0x932f2c95, 0xad0a8c51, 0xab9bc4dc, 0xfce5fa67, 0x6135d3c5, 0xcd3bcde7, 0x67af0750, 0x86a280c4
.word 0xe8edbb0f, 0x0f7ff31a, 0x470ccdf4, 0x5dbccf33, 0xd6caf3c9, 0x8e448a53, 0xa898e4a9, 0x5122fda3
.word 0x78092650, 0x8f94183c, 0x4bd28684, 0x5c964728, 0xbd1518e3, 0xdd180e48, 0x83525ba5, 0xe48bba17
.word 0xb39778d6, 0x9c8a6443, 0x9e2de2a2, 0x2ac4a8ad, 0x9875b351, 0xdd75f812, 0x020fa949, 0xeca110da
.word 0x2cbe435a, 0x93c9dd8d, 0x0cad6142, 0x3eb35cca, 0x34ca23f6, 0xe88105c9, 0xb30d9ccc, 0x0629d07f
.word 0x2be72c88, 0xa1023eb1, 0xd01f4a69, 0x443631ab, 0x70b2c665, 0x7e2a7475, 0x518f4651, 0x5ae06ede
.word 0xc6c7700c, 0x283f932e, 0xb060daf2, 0x6f665f8a, 0x0135680c, 0x640ded0a, 0x7b95d3b9, 0xd11ebae6
.word 0x78720911, 0x861ce900, 0x0ae0d725, 0x0007397a, 0x6da7e6a2, 0x7fd8edb0, 0xeaa1b5a0, 0x6a31a471
.word 0x0f8a7173, 0xe5caf906, 0x3fa52700, 0x6119e531, 0x0f272ba5, 0x78562571, 0x509ced0a, 0x9d462128
.word 0x720c605c, 0xb99f2b9c, 0x01675fa3, 0x056595dc, 0x8f701509, 0x6b0488cc, 0x80953931, 0x49999450
.word 0xc447deae, 0x2f41c518, 0x47a6201f, 0xefdb69bb, 0x7a60fa81, 0xcf24694b, 0xcbd3f825, 0x84c502ae
.word 0xa62473aa, 0xf7047b5e, 0xf9f43815, 0x55129890, 0x24107324, 0x08c254ea, 0xd353591d, 0x1e332807
.word 0x37984789, 0xffa21157, 0x0f293b56, 0xa82f1156, 0x66915c46, 0x1458e6df, 0x74afdd95, 0xe81459a1
.word 0xed99b34f, 0xde921187, 0x76dbeefc, 0x2f7a682b, 0x62718cfc, 0xe09c21d9, 0x3d1a19d2, 0x089cc04a
.word 0x506acbb2, 0x6f44ee5a, 0x87002cd2, 0xe79ef959, 0x0b3243ac, 0x4856d94e, 0xcc6dced3, 0x2b49d928
.word 0x2dbb2bba, 0xa72cc618, 0x6ce42605, 0x183f1424, 0x8f835e66, 0x089ec5fc, 0x8851b049, 0xef62cae8
.word 0xe7a9415c, 0xded1a4f4, 0xcf0083c1, 0x4367c6a0, 0xb008bfbb, 0x24432569, 0xca6f48ab, 0x08d4612a
.word 0xb377dd45, 0x6657cd5c, 0x3ece7dc0, 0x1958259e, 0x6122d5c0, 0x3e9c5575, 0xdf83312b, 0x1d8387b9
.word 0x8ef49629, 0x8b790ae9, 0xb2841096, 0x79a09f4a, 0xdc49895b, 0xfe396f79, 0xd863baaa, 0xbb9a8a46
.word 0x4fab4f0b, 0xff277b94, 0x00142b60, 0x03095e3f, 0x06fab257, 0x20c7bed8, 0x01ad623c, 0xd983b4c4
.word 0x7361764c, 0x0ef92734, 0x48106304, 0xc4c29395, 0x013c884f, 0x27226a31, 0x56b57563, 0x56e77f4d
.word 0x9b98faf7, 0x47e17947, 0xb5f39292, 0xec52707e, 0x655619e8, 0x719bf94e, 0xf90be697, 0xaa418b85
.word 0x0d85c9e7, 0x98077480, 0x4fac0035, 0x59f88248, 0x44b9b73b, 0x2b87b027, 0x3d641874, 0xc00c0c57
.word 0x5d66d910, 0xd2af4227, 0x7e4a760d, 0xd5b90b75, 0xc1b27000, 0x05c2805c, 0x043b0392, 0xfe95ec8c
.word 0x8d58f320, 0x34086e67, 0x1b55b8a2, 0xcea1e6d6, 0x9e1d79d2, 0xe13a81f7, 0x41354cb6, 0x9a0da33d
.word 0x3ab7d0bd, 0x62ee1406, 0xf034b7c6, 0xd61f77bd, 0xe6a6e3cd, 0x01160ac6, 0xf8415cfa, 0x4f94ab1a
.word 0x8982a204, 0xb3270613, 0x53a40427, 0x903da389, 0x7c67430b, 0xc9a81625, 0x94c21f2e, 0xac97a93c
.word 0xe860879b, 0x790d4a9f, 0xe7b84b17, 0xbc5d1d77, 0x9c4aa924, 0xcdc5cd0a, 0x7d461c9c, 0xbf538fb6
.word 0x46d6382b, 0x389983b8, 0x8e260751, 0x19bef3e7, 0x94ef7aae, 0x3ff7da6e, 0x3f460e17, 0x891504e5
.word 0xe16595b3, 0x645fb86a, 0x863577a5, 0x7830ef28, 0x33a51be9, 0x8872f67a, 0x2caaa81f, 0x727e0145
.word 0x7e9913c2, 0xa8c0bf7b, 0x15fa6924, 0xe415bcae, 0xda8c4f3b, 0x99a98d37, 0x154c98bb, 0x1946b297
.word 0xa38dddf9, 0x4b09c0fa, 0x40817907, 0xd5199fc9, 0xef2c7d15, 0x5f1bbc85, 0xff1db8de, 0x8ec8139e
.word 0x2b61577f, 0xae91fea0, 0x484022f9, 0x45407db6, 0x02d13e8b, 0x61081a0b, 0x8d355c3f, 0x16028c42
.word 0xedcf0f1a, 0x61c018d7, 0x8a6629be, 0x4eec6f38, 0x04847c37, 0x42eefa9c, 0xa53f2e6b, 0x261e35dc
.word 0xb344793d, 0x011d6d12, 0x89000890, 0x7caa65b6, 0x8c5a2f7b, 0xb90048f1, 0x012fb3e1, 0x2f4ac6c8
.word 0xf09eb131, 0x7e4d4c86, 0x9fa30c40, 0xee2c8b6c, 0x087b1a0f, 0xe2175250, 0xfc205813, 0x91e81bc5
.word 0xcd37f981, 0x38147e73, 0x6feeb501, 0x9f2cd6f2, 0x7c57cafb, 0xb5aa0ca3, 0x0fa52d33, 0x5456e24e
.word 0x828d5ee5, 0x714250d1, 0x194c0dfd, 0x0021422a, 0xc18531b5, 0xb2fa8d5a, 0xf5a8c122, 0x27217e31
.word 0x2fd8f67e, 0x2e77dcd1, 0xb677ef8d, 0xc5105313, 0x2df3e733, 0xdd64f3c2, 0x4e1313c2, 0x9092ce57
.word 0xe6e9b63d, 0x0e7a72c2, 0xbd348f94, 0x3cad24ed, 0x25a5a998, 0x15f0337c, 0x4b70c840, 0xd9fd1c64
.word 0x1f23d291, 0x3e3942e2, 0x798c2c97, 0x541db440
.section .region_1,"aw",@progbits;
region_1:
.word 0x0122928d, 0x1f6117a3, 0x5e1c04c6, 0x536fd1e5, 0x7289db1b, 0x30cee4c5, 0x29fa83d0, 0x5eb067f8
.word 0x8174a57b, 0x163f4323, 0x545ece65, 0x6ac51134, 0x08eaff0e, 0x35c2ef66, 0x3ae42abb, 0x830d2a9c
.word 0xaedc3a7e, 0xcb94a567, 0x859aea67, 0x426dfd4e, 0xec8aed1a, 0xf7f13cf0, 0xa1a751ae, 0x5c4ddfc9
.word 0xaced4a95, 0x65531a29, 0x3bfe92bb, 0x68fe6dd2, 0xdfcc9e8f, 0x35b38cea, 0xa995a4d3, 0x1362fa8f
.word 0xb1425ce8, 0x22dba209, 0x6a15127d, 0x5b5abaa4, 0xee6e4240, 0x25b23b43, 0x6ff3a396, 0x078f858c
.word 0x637b8659, 0x996a9adb, 0xeb01ef33, 0x14e995a8, 0x3d069013, 0x86b0f0c4, 0x92a22070, 0xc6ea99af
.word 0x11cfe790, 0x5868524f, 0x5c26069c, 0xc9e521a8, 0x0c86658f, 0xa8b20afd, 0x2f80bb59, 0xb06922ef
.word 0x47a49e66, 0xe7610823, 0xa6357168, 0x05efe7fc, 0xfadaf6cf, 0x4a8029e0, 0x9edc98e4, 0x1d72ecf5
.word 0xd2a24ad3, 0x9092961b, 0x726b39b3, 0x99fcf81b, 0x68a8e4a6, 0x5225971c, 0x6d40ea1a, 0x5a596453
.word 0xe99aa747, 0xac266d1c, 0x6bef9724, 0xd8a97fff, 0x8a31f2e9, 0x9c035ecb, 0x2e44133b, 0xa05b5f41
.word 0x9d83abf8, 0x7d47b66c, 0x8597ac63, 0x0239f4a0, 0x9925849f, 0x973fc76f, 0x939f99ff, 0xd5f68b4f
.word 0xacd7d292, 0x6a6c7fb9, 0xfb55bec3, 0x21bba98e, 0x3c48f5d8, 0x0006c734, 0x4467a76a, 0xa297b1a4
.word 0x89a56913, 0xd61c3845, 0x85f8d487, 0xe8c08cff, 0x998e7211, 0x7d7d5c81, 0x4d3a8aa2, 0xf86cef79
.word 0xfa3c39e0, 0x316020c7, 0x56df8798, 0xdeb18f03, 0x6f92f62b, 0x226efba2, 0x807b973a, 0x9df5947b
.word 0xc8de698a, 0x2392d068, 0x86a1387c, 0x6cafb989, 0x992bcb40, 0xc225066b, 0x1894dcb0, 0xe3f3d38a
.word 0x90f3a1a2, 0x4e8d2ed4, 0x844fef50, 0x9cb024c8, 0xc45aa1f2, 0x58f2b090, 0x3357b574, 0x9d2bd6ec
.word 0x4d8e3280, 0xa9903341, 0x2cf2f66e, 0x58895edf, 0xb20b8613, 0x5db5befc, 0x508a1f2b, 0x0d2652ee
.word 0x39fce3e4, 0xfabfdc06, 0x54d9ef08, 0xf59667b1, 0x095e870d, 0x544c2524, 0xcf68b02e, 0xd2ddb41e
.word 0xdff8d9dd, 0xf87d12fd, 0x6f496071, 0xff95a36b, 0xb20005c5, 0x9e56090b, 0xf023b927, 0xbc4c1514
.word 0x14af6c3f, 0x34f35284, 0x879be052, 0x3e51cabe, 0xd5d46df8, 0x44c37f75, 0x1f24dd5d, 0x5ccdf997
.word 0x98da2fb9, 0x7046eea9, 0x47dbcec0, 0xa8911c9e, 0x6a2170a4, 0x95b9fed1, 0x6aa84a36, 0x10c1cdb5
.word 0xc457cd70, 0x2316c7af, 0xda9362b9, 0x75a06521, 0xa5f27b29, 0x300ef152, 0x26094722, 0xd5c19542
.word 0x423d6023, 0xf1597e48, 0xcd0208b6, 0xa66b00cc, 0x4ade2256, 0xe9a4d661, 0xdebf94d0, 0xe615cb87
.word 0x2b2d4555, 0xe4486461, 0x7df80267, 0x119dd3f9, 0xb533576c, 0x74411685, 0x02e891fa, 0xfc5b5034
.word 0x6e8cb48b, 0x790f05ac, 0x2d7aad73, 0x65cc62b4, 0x0f674f2c, 0xc0bc743b, 0x920897f9, 0x1e45b23b
.word 0xf3c7b08b, 0x4cacdc0f, 0xed367754, 0x6a8215f9, 0xad63cc67, 0xe722d309, 0x4654d511, 0x9281f513
.word 0x9cdc40b3, 0x6b60bc3f, 0x1bf50a92, 0xdf9cdae6, 0x4292782a, 0x82c72989, 0x4b32f795, 0x33dd4c2a
.word 0xe92546ce, 0x0c998b9e, 0x5854b0c6, 0x3927cd63, 0xabc14731, 0x80281904, 0x166fbddd, 0x004d693a
.word 0xcdd4d1f4, 0x853e31ac, 0x1decbede, 0x9bcb83f1, 0xd995780e, 0x06b19dad, 0xc0e24bac, 0xaf11459b
.word 0x52c38376, 0xf6e47176, 0x89e11232, 0x84c9346b, 0x7439e735, 0x72a29dc3, 0xc9260867, 0x931883c9
.word 0xb3a83648, 0xa747750e, 0x34a9b6a9, 0x181496cf, 0x41961a95, 0x2124e535, 0x393dfcea, 0x5a3e60c9
.word 0xd9fc150b, 0xfc21f352, 0x7cc71686, 0xf37521ea, 0x5c912c30, 0xb946a597, 0x68e35146, 0x542a9dfc
.word 0xb6140048, 0x6ec00549, 0x856a9502, 0xe21dd76e, 0x101414f2, 0x02d6a42c, 0x1f389b42, 0xa6a5737c
.word 0x086afa81, 0xe9939599, 0x2a43715d, 0xf3f77d8f, 0x74a67120, 0xc7777ce0, 0x3cc569e4, 0xae7d6b6f
.word 0xdb1a6bcc, 0xfd5c8467, 0x249b130b, 0x5f8f299e, 0x3e0a652e, 0xe55cfba4, 0x1b9376f5, 0x0ceb5dc9
.word 0x85efc851, 0x8862a3e1, 0x806be806, 0xc9ae4da5, 0x75051a8e, 0x1dea99ac, 0x8346ab76, 0x57fc0ae0
.word 0x98311318, 0xcee76571, 0x39b5b4e2, 0xcc8ec441, 0x5a6df4fb, 0xc054cf0e, 0x85c0d521, 0x3d38664f
.word 0x970c1c26, 0x32c664be, 0x842b8632, 0x3cb71ce7, 0x7c8fe998, 0x2d54aa93, 0x27e176d1, 0x5e1a96bb
.word 0xfbcd7251, 0x86aa481b, 0x7f6e67c3, 0xd43f3130, 0xeaed75c3, 0xec0a5adc, 0x9fe61125, 0x4ac249f8
.word 0x3714b75f, 0xdd7d1531, 0xcc50e3f1, 0xe76eb7cf, 0x44d5bb3c, 0xaec4ef0d, 0xa044d8c0, 0x6f0cc5c5
.word 0x86c07330, 0x5e0a4b72, 0x4d36366b, 0x403ef523, 0x7bbb6bfe, 0x8096e2d6, 0x4688434d, 0x9e34a58d
.word 0x7fddfc58, 0x56e4dba1, 0xf9cc27bd, 0x4fc9d659, 0x28c830de, 0x40383621, 0x09c05a2c, 0x958677ec
.word 0x89dd56a8, 0x0f88b532, 0x58c730f8, 0x3010f45d, 0xd0b81165, 0xb34da90d, 0x36f682d8, 0xa44ab685
.word 0xc8114cfd, 0x338970cb, 0x84d3bc0b, 0x565b60f7, 0xdb6bae7b, 0x5372396d, 0x22f11dad, 0x955daa52
.word 0xe0235517, 0x7fd75531, 0x1658fa21, 0x773d01b7, 0xd8c6bfdb, 0xb9d5ed57, 0x6db613d3, 0x88d7eaad
.word 0x76ff9ab2, 0xb5754cff, 0x3b52b12b, 0xc610a1df, 0x90243375, 0x49fa02e7, 0xac25c08a, 0xe7d82d2b
.word 0x1f8b7a41, 0x631f437e, 0x8853e615, 0x215591d4, 0xe3c5b99c, 0xb370d1fb, 0x6a2a90e4, 0x6203385d
.word 0x1e3e236d, 0xaf94c281, 0x7e2cf1f7, 0xe47b097e, 0xeae8ae93, 0x9364f749, 0x1422fb6e, 0xaa034d11
.word 0x95037a64, 0x7fe43ce7, 0x53cd8a70, 0x0b80aeeb, 0xc85bff65, 0xd077e958, 0xef2ae3c2, 0x88fd3939
.word 0x07160fca, 0x238d0dd8, 0xd09181cf, 0xfb2319ca, 0x3cc0e4ed, 0xf3b6698a, 0x1128b8e5, 0x605220b4
.word 0xb20bf0ea, 0x49a71c67, 0x3d3282d7, 0x8ddbc51e, 0xeb7372cd, 0x2c70cdb0, 0xa03675d6, 0x25480487
.word 0xdbf9a944, 0x70cfd1d2, 0x37635f76, 0x969d5b05, 0x490c3a34, 0x6bdc315e, 0x0590bfcb, 0x38523f46
.word 0x87d84d99, 0xa72deec4, 0xbf5a60af, 0x17481383, 0x67482edc, 0xfcdb473e, 0xa0404351, 0x57051a72
.word 0xe7ae208a, 0xc2c68ffd, 0x1c5797da, 0x5e66af0e, 0xa085f2a7, 0xf2298399, 0x5150d830, 0x460baba6
.word 0x9d4f77a8, 0x7211119e, 0x4c9a7ff1, 0x0d794e71, 0xf931525f, 0x9c0d3d9c, 0xea497c67, 0xa434ad6a
.word 0x4a07f7ca, 0xa7ca9d10, 0x419b1b61, 0x9e65cd56, 0xbc03dee7, 0x2561faba, 0xb25ffb22, 0xe123fd4c
.word 0x7988815f, 0x9f0039a1, 0x998bac88, 0xe0fefc70, 0xf732e5fc, 0x357f9f55, 0xf863171e, 0x07e93aba
.word 0xf92840cb, 0x246194f2, 0x3ed4c318, 0x2f022f7a, 0x71e32a31, 0x7a688cdd, 0x08d84aba, 0xee8c111c
.word 0x794d1b09, 0xba2621a5, 0x1f4a35aa, 0x7305cc57, 0x789cb7be, 0xba56adfe, 0x7522a139, 0xb10c3555
.word 0x7ac9c1fd, 0x02d8e5c8, 0x43a2175f, 0x6bcb5d6d, 0xd6eb7f2b, 0x25793ffc, 0xdc0bf744, 0x0cbfffc8
.word 0xd29969a2, 0x158c4212, 0x0de69222, 0x489cde1b, 0x75739829, 0x355fe05e, 0xc377e499, 0xaf293bac
.word 0xe6632f36, 0xcd94973e, 0xebcad748, 0xcbf4407b, 0x3eef60cc, 0xd9cd676b, 0xf7e3b90e, 0x66cc0065
.word 0x47810330, 0x13e88084, 0xd6329607, 0xe2d0ae03
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x18, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x18, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x18, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x18, x9, ecall_handler
                  li x9, 0x1
                  beq x18, x9, instr_fault_handler
                  li x9, 0x5
                  beq x18, x9, load_fault_handler
                  li x9, 0x7
                  beq x18, x9, store_fault_handler
                  li x9, 0xc
                  beq x18, x9, pt_fault_handler
                  li x9, 0xd
                  beq x18, x9, pt_fault_handler
                  li x9, 0xf
                  beq x18, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
