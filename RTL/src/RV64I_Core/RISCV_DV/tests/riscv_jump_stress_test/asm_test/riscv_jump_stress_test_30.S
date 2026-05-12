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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x234d16f
                  li x4, 0x0
                  li x5, 0xf7a01f98
                  li x6, 0xf2e90e97
                  li x7, 0x9
                  li x8, 0x5
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xf9fcf90f
                  li x12, 0xf1490d63
                  li x13, 0x80000000
                  li x14, 0x9
                  li x15, 0x0
                  li x17, 0x80000000
                  li x18, 0xde7fd07e
                  li x19, 0x700532d2
                  li x20, 0x7
                  li x21, 0xf757353c
                  li x23, 0x80000000
                  li x24, 0xffa38623
                  li x25, 0x1
                  li x26, 0x80000000
                  li x27, 0x4a0623af
                  li x28, 0x8
                  li x29, 0x0
                  li x30, 0xf35033c2
                  li x31, 0x7
                  la x16, user_stack_end
main:             srai         a4, t5, 2
                  sub          a0, t3, a4
                  la           gp, sub_1
                  slt          t2, s3, t0
                  lui          s11, 706158
                  slli         a4, s5, 18
                  addi         gp, gp, -120
                  and          t0, t4, s0
                  andi         zero, s11, -1318
                  sll          t3, t6, ra
                  bltu         a5, t1, main_j2 #branch to jump instr
                  and          s9, t2, sp
main_j2:          jalr         t1, gp, 121 #jump main -> sub_1
main_0:           jal          t1, 7f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          t1, 4f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          t1, 2b
9:                jal          ra, 8b
10:               sll          t5, t0, t4
                  slt          tp, t6, s3
                  auipc        a1, 976096
                  srli         t6, a3, 19
                  nop
                  srli         t3, s2, 8
                  bne          t2, a1, 13f
                  srl          sp, ra, s6
                  slt          a3, s3, zero
                  la           s0, sub_1
                  addi         s0, s0, 327
                  or           a1, s3, s11
                  and          s5, s10, s5
                  sra          zero, a3, a1
main_j1:          jalr         t1, s0, -326 #jump main -> sub_1
                  addi         t5, t0, -907
                  sltiu        ra, a0, -1458
                  slli         zero, t2, 5
                  beq          a6, s6, 17f
                  sub          a5, t0, s6
                  sltu         t0, s4, s9
                  nop
13:               addi         s1, tp, -827
                  beq          s0, t3, 17f
                  sra          gp, a7, a4
                  srli         s10, a3, 14
17:               srai         sp, tp, 21
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sltiu        a7, zero, 761
                  or           sp, s5, a0
                  sll          gp, a3, s8
                  sltu         a1, zero, a5
                  slt          t6, s8, a5
                  addi         a6, a6, -52
                  sw           t1, 4(a6)
                  add          s0, s3, t0
                  andi         sp, a3, 932
                  ori          s5, s1, -5
sub_3_0:          jal          t1, 6f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          t1, 8f
3:                jal          ra, 0b
4:                jal          t1, 5f
5:                jal          t1, 11f
6:                jal          ra, 10f
7:                jal          t1, 1b
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          t1, 2b
11:               nop
                  add          t2, a0, s4
                  slti         s9, ra, -1509
                  auipc        s5, 1024491
                  slti         s4, gp, 1945
                  sltiu        t2, s1, -148
                  ori          ra, t6, 93
                  auipc        tp, 210356
                  srai         s0, s10, 23
                  blt          s2, s8, 24f
                  bne          a0, s9, 11f
                  sltu         s3, s11, a3
11:               nop
                  auipc        ra, 481926
                  lui          t3, 981930
                  sra          t1, t0, a6
                  or           s5, a3, s2
                  bge          s10, zero, 18f
                  bltu         t3, t2, 26f
18:               xor          a1, zero, t4
                  addi         sp, s5, 1896
                  sub          zero, a0, s4
                  add          a3, t6, s8
                  srl          a3, s1, s4
                  sub          s4, s10, s10
24:               andi         s1, t2, -885
                  lui          a7, 412496
26:               add          a5, s7, s0
                  srl          a4, s3, a3
                  and          ra, a3, s10
                  andi         zero, a3, -327
                  blt          s2, tp, 45f
                  bgeu         s3, s10, 40f
                  sub          s0, s6, s4
                  bge          a6, s0, 53f
                  or           s11, s7, s6
                  sltu         a0, s2, s8
                  sltiu        a3, s10, 1003
                  auipc        t3, 929952
                  slli         t3, s5, 26
                  sll          s0, t6, a6
40:               add          a3, t1, s11
                  slti         s7, s1, -381
                  sra          t1, s3, s9
                  sll          t6, zero, s11
                  auipc        s1, 67647
45:               bge          t3, s1, 58f
                  sltiu        s4, gp, -870
                  nop
                  nop
                  srli         t6, s7, 31
                  addi         a7, t1, 120
                  sra          a3, a0, s1
                  xor          tp, s0, a4
53:               or           s7, s10, s10
                  xori         t2, s9, -589
                  sra          zero, zero, a2
                  or           gp, a7, s9
                  slt          t2, s8, s10
58:               lui          a5, 927609
                  sltiu        s4, s7, 427
                  bne          a7, gp, 74f
                  beq          a5, t6, 62f
62:               sltiu        s2, gp, -882
                  slti         tp, a5, -245
                  blt          a4, s10, 74f
                  sub          zero, t5, s8
                  bge          a0, a7, 74f
                  sra          a4, a6, t6
                  xor          zero, s0, s7
                  sub          s3, t6, s1
                  srli         a2, a3, 11
                  beq          zero, t4, 74f
                  bne          gp, ra, 74f
                  srai         s4, t3, 15
74:               slt          s7, gp, a2
                  srl          s11, s8, t2
                  lw           t1, 4(a6)
                  auipc        tp, 268966
                  xori         a0, s7, -1273
                  ori          ra, s0, -414
                  addi         a6, a6, 52
                  slli         t5, a7, 26
                  or           t0, tp, s6
                  nop
107:              addi x2, x6, 1
107:              jalr x2, x2, 0
sub_5:            bgeu         t3, a4, sub_5_stack_p
sub_5_stack_p:    addi         a6, a6, -8
                  sltiu        s9, s6, 1662
                  auipc        s5, 840342
                  sw           t1, 4(a6)
                  sll          a3, a2, s11
                  nop
                  slli         a4, a5, 12
                  beq          tp, s7, 14f
                  and          s11, s11, s11
                  slt          zero, a1, s2
                  auipc        t3, 869781
                  ori          t1, t2, -1641
                  nop
                  beq          s3, zero, 15f
                  bltu         t5, a5, 15f
                  sltu         a1, s1, s4
                  sub          s7, a3, t5
                  sltu         a7, zero, s3
                  sub          s11, tp, s2
                  beq          t3, ra, 15f
14:               bne          s6, s9, 15f
15:               srli         a1, s6, 9
                  or           s0, t5, ra
                  xor          s1, a5, a0
                  lw           t1, 4(a6)
                  auipc        t2, 667899
                  sra          s11, s4, s0
                  sltiu        sp, t0, -580
                  auipc        a3, 532755
                  addi         a6, a6, 8
                  srai         ra, s4, 12
                  add          s8, a1, t1
                  auipc        t2, 982125
                  slli         a4, s6, 18
35:               addi x11, x6, 0
35:               jalr x11, x11, 0
sub_1:            slli         s5, s5, 4
                  sltu         s4, s9, a2
                  ori          s0, zero, -261
                  bltu         a7, a7, sub_1_stack_p
                  slt          s1, a2, t6
sub_1_stack_p:    addi         a6, a6, -44
                  sll          s2, s3, a1
                  add          a2, s9, a6
                  sw           t1, 4(a6)
                  sll          zero, s9, s4
                  la           a5, sub_2
                  and          a4, s8, sp
                  auipc        t6, 659525
                  addi         a5, a5, -761
                  ori          s0, s3, -1826
                  bgeu         a4, s3, sub_1_j5 #branch to jump instr
                  slt          s7, s0, t6
                  slti         s8, s7, -1239
sub_1_j5:         jalr         t1, a5, 762 #jump sub_1 -> sub_2
                  addi         s8, t3, -1777
                  slli         s7, zero, 8
                  and          a5, s7, s8
                  xori         ra, a1, -136
                  la           s10, sub_3
                  sub          s4, s0, s6
                  ori          gp, t4, -1298
                  srai         s5, s6, 27
                  addi         s10, s10, 855
                  sub          ra, s1, t6
sub_1_j6:         jalr         t1, s10, -854 #jump sub_1 -> sub_3
sub_1_8:          jal          t1, 5f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          a0, 7f
4:                jal          t0, 8f
5:                jal          s10, 9f
6:                jal          tp, 10f
7:                jal          ra, 2b
8:                jal          s4, 11f
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               auipc        a7, 435710
sub_1_4:          jal          t1, 20f
0:                jal          ra, 18f
1:                jal          t1, 7f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          ra, 21f
5:                jal          t1, 16f
6:                jal          ra, 8f
7:                jal          t1, 2b
8:                jal          ra, 17f
9:                jal          ra, 15f
10:               jal          t2, 13f
11:               jal          ra, 9b
12:               jal          t2, 11b
13:               jal          a5, 14f
14:               jal          gp, 6b
15:               jal          ra, 5b
16:               jal          ra, 1b
17:               jal          ra, 4b
18:               jal          ra, 19f
19:               jal          ra, 12b
20:               jal          t3, 0b
21:               or           s3, gp, s4
sub_1_6:          jal          t1, 9f
0:                jal          s1, 7f
1:                jal          t1, 6f
2:                jal          t1, 15f
3:                jal          ra, 5f
4:                jal          t0, 13f
5:                jal          ra, 12f
6:                jal          t1, 3b
7:                jal          t1, 1b
8:                jal          t2, 4b
9:                jal          t3, 10f
10:               jal          ra, 11f
11:               jal          ra, 8b
12:               jal          t1, 14f
13:               jal          ra, 0b
14:               jal          ra, 2b
15:               ori          a2, a6, -697
sub_1_2:          jal          t1, 19f
0:                jal          t1, 9f
1:                jal          t1, 30f
2:                jal          ra, 29f
3:                jal          ra, 21f
4:                jal          ra, 24f
5:                jal          ra, 25f
6:                jal          s8, 0b
7:                jal          t1, 12f
8:                jal          ra, 23f
9:                jal          ra, 1b
10:               jal          t1, 3b
11:               jal          t1, 10b
12:               jal          s3, 6b
13:               jal          tp, 26f
14:               jal          t1, 7b
15:               jal          t1, 28f
16:               jal          ra, 22f
17:               jal          sp, 2b
18:               jal          t1, 16b
19:               jal          ra, 20f
20:               jal          ra, 8b
21:               jal          gp, 17b
22:               jal          a5, 5b
23:               jal          t1, 18b
24:               jal          ra, 15b
25:               jal          ra, 4b
26:               jal          ra, 11b
27:               jal          ra, 13b
28:               jal          ra, 27b
29:               jal          ra, 14b
30:               slt          tp, gp, s6
sub_1_7:          jal          t1, 27f
0:                jal          ra, 6f
1:                jal          ra, 26f
2:                jal          ra, 7f
3:                jal          t1, 14f
4:                jal          ra, 29f
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          ra, 17f
10:               jal          ra, 3b
11:               jal          t3, 22f
12:               jal          ra, 8b
13:               jal          ra, 16f
14:               jal          t1, 23f
15:               jal          a2, 28f
16:               jal          t2, 15b
17:               jal          ra, 25f
18:               jal          ra, 2b
19:               jal          tp, 13b
20:               jal          t0, 1b
21:               jal          t1, 19b
22:               jal          ra, 12b
23:               jal          a5, 18b
24:               jal          ra, 21b
25:               jal          t1, 24b
26:               jal          ra, 0b
27:               jal          t2, 20b
28:               jal          a4, 10b
29:               slli         s0, ra, 13
sub_1_3:          jal          t1, 12f
0:                jal          t6, 16f
1:                jal          gp, 11f
2:                jal          ra, 17f
3:                jal          ra, 24f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          a5, 19f
7:                jal          t1, 5b
8:                jal          t1, 26f
9:                jal          a2, 21f
10:               jal          a4, 20f
11:               jal          gp, 15f
12:               jal          ra, 1b
13:               jal          ra, 18f
14:               jal          t5, 25f
15:               jal          ra, 3b
16:               jal          ra, 7b
17:               jal          ra, 14b
18:               jal          t1, 22f
19:               jal          a0, 8b
20:               jal          ra, 4b
21:               jal          a1, 13b
22:               jal          ra, 23f
23:               jal          ra, 0b
24:               jal          t5, 2b
25:               jal          a2, 10b
26:               xori         s8, a2, -313
sub_1_5:          jal          t1, 24f
0:                jal          ra, 15f
1:                jal          t1, 4f
2:                jal          ra, 20f
3:                jal          s2, 7f
4:                jal          ra, 10f
5:                jal          ra, 13f
6:                jal          t0, 0b
7:                jal          sp, 16f
8:                jal          tp, 12f
9:                jal          ra, 2b
10:               jal          ra, 21f
11:               jal          s7, 8b
12:               jal          ra, 6b
13:               jal          s3, 18f
14:               jal          sp, 17f
15:               jal          ra, 3b
16:               jal          ra, 27f
17:               jal          ra, 23f
18:               jal          ra, 11b
19:               jal          t5, 5b
20:               jal          s3, 26f
21:               jal          s5, 22f
22:               jal          ra, 9b
23:               jal          ra, 1b
24:               jal          s9, 14b
25:               jal          s8, 19b
26:               jal          ra, 25b
27:               xori         a3, a6, 1559
sub_1_9:          jal          t1, 5f
0:                jal          s3, 2f
1:                jal          t1, 6f
2:                jal          t1, 24f
3:                jal          t3, 20f
4:                jal          ra, 23f
5:                jal          ra, 19f
6:                jal          s7, 17f
7:                jal          t1, 14f
8:                jal          s3, 9f
9:                jal          t3, 1b
10:               jal          sp, 21f
11:               jal          ra, 7b
12:               jal          gp, 16f
13:               jal          ra, 15f
14:               jal          t1, 10b
15:               jal          t1, 22f
16:               jal          s0, 4b
17:               jal          ra, 3b
18:               jal          ra, 13b
19:               jal          ra, 12b
20:               jal          ra, 18b
21:               jal          sp, 0b
22:               jal          a4, 11b
23:               jal          gp, 8b
24:               sra          s9, a3, s4
sub_1_1:          jal          t1, 11f
0:                jal          s3, 17f
1:                jal          a5, 21f
2:                jal          ra, 23f
3:                jal          ra, 8f
4:                jal          t1, 16f
5:                jal          t3, 15f
6:                jal          tp, 3b
7:                jal          ra, 9f
8:                jal          t1, 13f
9:                jal          t6, 6b
10:               jal          ra, 24f
11:               jal          sp, 2b
12:               jal          ra, 0b
13:               jal          t1, 10b
14:               jal          t1, 22f
15:               jal          t1, 19f
16:               jal          s9, 12b
17:               jal          s7, 20f
18:               jal          t1, 5b
19:               jal          ra, 14b
20:               jal          t1, 1b
21:               jal          ra, 18b
22:               jal          ra, 7b
23:               jal          ra, 4b
24:               auipc        s11, 836069
                  andi         gp, a2, 414
                  sll          a5, a0, s5
                  srai         zero, s11, 20
                  lui          s0, 440945
                  xor          s7, a2, s10
                  sltu         a3, s3, s6
                  sltu         t5, s11, t6
                  lui          s3, 643805
                  addi         a4, s7, -354
                  sra          s11, a2, t2
                  or           t2, ra, s9
                  blt          a4, s3, 14f
                  srl          ra, t6, a6
                  slti         s3, s10, -1708
14:               bge          s7, t5, 21f
                  auipc        s11, 731761
                  sub          s3, t6, t1
                  bne          zero, t0, 37f
                  bne          a0, s3, 21f
                  blt          a2, t5, 36f
                  srl          s2, a1, t6
21:               sra          s2, t5, zero
                  slti         a4, t0, -306
                  and          ra, s1, t2
                  bltu         tp, s2, 30f
                  srli         s3, zero, 5
                  nop
                  srai         s2, a1, 1
                  add          a0, zero, a7
                  slt          t1, s2, a0
30:               slt          sp, sp, s11
                  slt          ra, s3, a4
                  sra          a5, t5, s9
                  sll          s0, t1, tp
                  add          t0, a0, s10
                  xori         a4, t6, 1016
36:               bge          s11, tp, 37f
37:               add          s10, t0, s6
                  and          s7, t2, a1
                  bne          a5, a6, 47f
                  sll          s8, a3, ra
                  bne          s11, s11, 46f
                  xor          s7, tp, zero
                  blt          t2, s7, 59f
                  sltiu        s8, a3, -1057
                  sll          s4, a0, a4
46:               andi         a7, t4, 1976
47:               sub          sp, t5, t3
                  andi         zero, sp, 1772
                  sll          s2, a3, t1
                  addi         a7, s9, 1443
                  beq          gp, s9, 52f
52:               bltu         t5, sp, 64f
                  srl          s4, s9, ra
                  srli         a7, a4, 22
                  auipc        s4, 554648
                  bgeu         s7, t0, 76f
                  bge          t6, a2, 67f
                  sra          s9, a4, t0
59:               blt          s11, a2, 77f
                  sra          t0, a4, s11
                  sll          s1, s2, s4
                  slti         s1, ra, -1062
                  slt          a3, s8, s9
64:               sub          a3, s2, s10
                  addi         gp, a7, -1214
                  xori         t3, s7, 492
67:               bltu         sp, s5, 75f
                  ori          tp, sp, 1943
                  srli         s11, s1, 0
                  sltiu        sp, s2, 560
                  and          t5, s9, zero
                  sll          ra, s9, s6
                  sltiu        s5, t0, -562
                  srai         zero, gp, 24
75:               srai         t3, s5, 22
76:               sub          a3, t2, sp
77:               srli         a4, s9, 13
                  slti         t2, s6, -915
                  sltiu        t1, s5, 1299
                  xori         s0, s9, 1644
                  xor          a0, s11, a3
                  bge          t4, sp, 89f
                  srli         zero, s4, 13
                  srli         a0, a0, 26
                  auipc        s10, 737710
                  sra          s1, t5, gp
                  or           t6, s6, a2
                  add          s1, a3, t2
89:               slli         s2, a0, 3
                  sltu         zero, t6, tp
                  beq          s11, t4, 92f
92:               lui          ra, 919431
                  blt          t4, s8, 102f
                  ori          a4, t0, 1694
                  srai         a7, s1, 4
                  blt          gp, s4, 103f
                  auipc        s2, 896233
                  sll          t1, s9, t3
                  or           s0, s5, t4
                  blt          s10, a5, 110f
                  sll          tp, t3, s8
102:              ori          a1, t0, 1636
103:              beq          s4, a4, 121f
                  nop
                  slli         s3, s2, 12
                  bge          a0, s6, 121f
                  slti         s10, t4, -1342
                  bltu         s0, a1, 116f
                  sub          s8, s0, ra
110:              and          a7, s9, s6
                  blt          s3, a5, 126f
                  ori          s3, s11, 1686
                  bne          ra, t1, 119f
                  add          a4, a7, tp
                  auipc        a3, 698663
116:              addi         ra, s2, -70
                  addi         s2, s0, 1159
                  sub          a5, s10, s6
119:              slti         s5, a3, -20
                  beq          s6, ra, 134f
121:              and          a7, ra, t4
                  and          s5, s9, s10
                  srl          t1, a1, a7
                  auipc        s4, 760179
                  srli         s10, t6, 2
126:              sltu         s1, s6, t2
                  or           ra, t6, tp
                  beq          a1, s11, 144f
                  slli         sp, zero, 30
                  addi         a1, s6, 773
                  srli         s5, a3, 26
                  blt          a3, a3, 139f
                  ori          s2, a4, 2014
134:              sll          s4, a6, a0
                  bgeu         tp, zero, 144f
                  or           tp, a2, t0
                  auipc        ra, 524617
                  blt          zero, t4, 146f
139:              nop
                  bltu         a1, t0, 141f
141:              bgeu         gp, a6, 157f
                  andi         a4, zero, 1440
                  add          a7, t4, s5
144:              slt          s4, a2, sp
                  ori          t5, t6, 1077
146:              srli         a5, a2, 23
                  blt          s4, sp, 157f
                  sltiu        t3, t6, -1444
                  lui          s0, 475522
                  lui          t6, 501617
                  srl          a2, s8, s7
                  xor          t6, s7, ra
                  slt          t5, tp, s8
                  auipc        s3, 19425
                  sltu         s5, s1, s2
                  blt          a5, a6, 173f
157:              sltiu        a2, s9, 1359
                  sltiu        s8, a5, -1160
                  and          gp, t1, s10
                  slti         s1, a3, 1488
                  bgeu         t1, a1, 166f
                  andi         a4, s9, -1198
                  sltu         t5, a4, s8
                  or           t0, a4, s7
                  sra          ra, s0, s2
166:              slt          s7, t2, a0
                  nop
                  xori         t6, s7, 1663
                  sub          t0, t0, sp
                  andi         s1, s11, -1186
                  sra          s7, a0, s11
                  and          tp, s4, s0
173:              sltiu        t5, a6, 1547
                  sltiu        sp, t4, -118
                  srli         a3, zero, 23
                  srli         s4, s0, 17
                  beq          t4, a1, 187f
                  bltu         s0, s5, 179f
179:              sltiu        a1, a2, -717
                  and          a1, gp, t2
                  xori         sp, t4, 877
                  sra          t1, a5, a5
                  bne          a2, tp, 184f
184:              blt          zero, t0, 200f
                  sll          t1, t2, s3
                  srli         s10, a4, 12
187:              sltu         s0, s5, t0
                  srl          a5, ra, t2
                  and          s2, s7, a6
                  sltiu        ra, zero, 909
                  add          tp, s4, t1
                  ori          a7, t6, 956
                  slti         t1, t6, -778
                  bne          t6, a5, 209f
                  slt          a0, a4, s8
                  sltiu        s3, t6, 1097
                  bne          a2, zero, 203f
                  bltu         a1, a4, 218f
                  srai         s3, t2, 20
200:              sltiu        a2, s8, 295
                  sltiu        s3, s11, -454
                  bgeu         a6, s6, 209f
203:              nop
                  bne          s3, s6, 213f
                  sll          zero, zero, s5
                  bne          s2, t0, 213f
                  bge          t4, a3, 214f
                  andi         s9, t6, -1772
209:              sub          t2, ra, s0
                  srl          s3, a2, s10
                  bne          ra, s11, 223f
                  or           s10, s3, a2
213:              sltu         tp, s1, t3
214:              nop
                  blt          s11, t2, 221f
                  nop
                  nop
218:              and          t5, a7, a2
                  bne          s5, s3, 237f
                  bltu         s5, a5, 223f
221:              xori         t2, t1, -26
                  srl          t6, t3, a4
223:              nop
                  or           t3, a1, t6
                  sltiu        s2, t6, 788
                  blt          s6, a6, 240f
                  beq          t2, s2, 234f
                  xori         s3, s4, -797
                  srl          zero, s4, s5
                  nop
                  srai         tp, tp, 13
                  addi         s9, s3, -726
                  bltu         a7, s10, 248f
234:              nop
                  auipc        s8, 657933
                  beq          s9, s11, 256f
237:              sll          a4, a5, sp
                  bne          s11, s3, 246f
                  add          gp, s11, t4
240:              add          s8, s6, t5
                  blt          zero, a3, 259f
                  srl          s5, a4, t1
                  xor          s5, s5, a7
                  slli         s3, sp, 24
                  lui          s8, 397374
246:              or           s4, s11, t3
                  sra          gp, tp, a6
248:              or           s2, s10, tp
                  sll          zero, t3, a2
                  andi         t1, s4, 975
                  addi         a5, ra, 2047
                  beq          a1, a5, 260f
                  nop
                  ori          t3, s3, -1699
                  sra          ra, s9, s6
256:              srli         sp, a7, 27
                  nop
                  and          sp, gp, ra
259:              sll          a1, zero, t5
260:              sll          s11, s3, s9
                  bgeu         ra, t4, 264f
                  auipc        s4, 789699
                  sra          s2, s10, s11
264:              sra          t2, a3, s6
                  beq          a6, t3, 274f
                  bge          t6, sp, 267f
267:              beq          s8, s6, 270f
                  bltu         a6, a4, 276f
                  nop
270:              slt          a4, a2, s5
                  sra          s7, t4, s5
                  bltu         s4, t5, 279f
                  slt          a0, s4, a3
274:              addi         s0, t2, -240
                  srl          s2, s7, a7
276:              auipc        s9, 557538
                  nop
                  and          t3, s1, s8
279:              slti         s3, a6, 1324
                  xori         s8, t0, 276
                  add          t0, ra, a2
                  sra          s9, s8, tp
                  srai         a0, s8, 20
                  sll          s9, a0, a3
                  bne          gp, t2, 294f
                  xori         s9, s1, 1664
                  ori          s8, a7, -1333
                  sltu         t1, a1, t5
                  sltiu        a5, a4, 1054
                  xor          s8, s8, a7
                  ori          a4, a6, 1089
                  slti         a2, a7, 1236
                  slli         s1, t4, 26
294:              bgeu         s7, s1, 300f
                  xori         s11, s10, -1573
                  add          s7, s11, s11
                  bgeu         s0, t0, 305f
                  and          t3, s3, a7
                  ori          s1, a5, -2021
300:              ori          a0, s1, 978
                  slli         a3, s7, 15
                  xori         t0, t6, 926
                  slli         tp, t4, 14
                  sra          a7, tp, s0
305:              blt          s6, ra, 313f
                  xori         t1, zero, 1771
                  ori          gp, s4, -1545
                  srl          a0, a2, s6
                  slti         s5, t6, 370
                  bgeu         s9, s1, 326f
                  bltu         s3, t4, 312f
312:              sra          s11, t6, s0
313:              sra          gp, s11, a5
                  addi         t5, s1, -1943
                  xor          s9, s8, a7
                  beq          tp, sp, 323f
                  slti         s9, a1, -1713
                  sltiu        sp, s6, -299
                  sll          s5, s0, t0
                  bge          gp, a5, 340f
                  nop
                  ori          zero, t2, -674
323:              and          a7, a3, gp
                  slli         s5, sp, 0
                  andi         s9, gp, 497
326:              and          t3, s2, a3
                  auipc        zero, 1014936
                  bgeu         s9, a5, 329f
329:              bge          zero, s3, 344f
                  srli         t0, t3, 7
                  srli         s1, a4, 25
                  xori         sp, ra, -95
                  bltu         s4, s3, 342f
                  bne          a5, t0, 352f
                  bgeu         s6, t0, 353f
                  addi         a0, zero, -980
                  ori          ra, gp, -1996
                  slt          s9, s3, gp
                  bge          gp, a1, 356f
340:              srli         gp, a5, 6
                  nop
342:              slli         s2, ra, 29
                  bne          tp, t4, 346f
344:              xor          s4, s10, s8
                  sll          a1, t1, s11
346:              sltu         s7, a6, t6
                  lui          s2, 88332
                  srli         ra, s5, 13
                  addi         a2, t5, 805
                  la           t5, sub_4
                  andi         ra, tp, -1863
                  sra          gp, s4, a4
                  andi         ra, a0, 1246
                  and          s2, t4, a0
                  addi         t5, t5, 371
                  add          t1, s5, a7
                  and          s7, s8, t3
sub_1_j4:         jalr         t1, t5, -371 #jump sub_1 -> sub_4
                  nop
                  slt          s2, a4, a0
                  sll          t6, t1, s10
                  beq          gp, s9, 370f
                  bgeu         s10, a7, 358f
352:              xori         s4, s6, 971
353:              sltiu        gp, tp, -164
                  and          ra, s1, s4
                  bltu         t5, sp, 367f
356:              add          a7, a1, t1
                  xori         a7, a1, -1382
358:              add          s1, s11, a7
                  nop
                  auipc        a4, 420639
                  slti         sp, s7, 866
                  andi         t0, s3, 1243
                  bge          s3, t6, 368f
                  bne          t2, t3, 371f
                  nop
                  nop
367:              sltiu        s1, s11, -232
368:              beq          s2, ra, 378f
                  sra          s1, a4, a7
370:              nop
371:              add          a0, s6, s8
                  nop
                  xor          zero, t4, a3
                  blt          t1, a6, 384f
                  srli         tp, t1, 12
                  bne          s4, s8, 391f
                  sra          a7, s9, t1
378:              nop
                  blt          s11, s6, 395f
                  xor          a1, s2, s1
                  bltu         t0, t4, 387f
                  la           ra, sub_5
                  addi         ra, ra, -708
                  andi         s9, s10, 1931
                  ori          a2, s1, -1351
                  nop
                  andi         s10, s3, 1469
                  bge          s9, a7, sub_1_j3 #branch to jump instr
                  sltiu        s2, a4, 357
sub_1_j3:         jalr         t1, ra, 709 #jump sub_1 -> sub_5
                  bltu         t6, s3, 396f
                  and          t0, a5, s5
384:              sltu         s10, a6, s3
                  andi         s11, t1, 1820
                  bgeu         a1, s0, 389f
387:              srl          t2, zero, sp
                  sltu         ra, s5, t3
389:              and          s5, a6, s10
                  add          s2, t3, tp
391:              nop
                  srl          gp, s5, t5
                  bne          s4, t6, 399f
                  blt          s2, t1, 410f
395:              srli         gp, s0, 16
396:              nop
                  sltu         s10, t3, s6
                  bgeu         s4, t6, 416f
399:              slli         s8, tp, 6
                  lui          s0, 728693
                  sll          s5, s4, s4
                  sltu         a7, t4, sp
                  nop
                  bltu         s0, ra, 412f
                  sub          s9, a6, t0
                  bge          s8, t4, 407f
407:              sub          t3, s0, s1
                  sub          zero, t3, t5
                  srli         s11, a2, 31
410:              bgeu         a4, ra, 415f
                  sltiu        s7, a2, -179
412:              ori          a5, t0, -432
                  sltiu        s3, s6, 1942
                  blt          gp, s8, 421f
415:              sub          t3, s6, s7
416:              or           t5, a7, s10
                  xori         t6, s2, -1201
                  slli         s3, zero, 18
                  bne          a4, a4, 426f
                  auipc        s4, 979467
421:              lui          s9, 243415
                  srai         zero, s9, 2
                  bge          s4, a6, 443f
                  srli         t6, s1, 13
                  add          s5, sp, t2
426:              add          a4, zero, s4
                  srl          t5, s2, s4
                  andi         t2, a7, -1449
                  addi         t0, s2, -278
                  addi         t2, s2, -1505
                  sra          sp, s8, zero
                  srl          t0, t3, s6
                  sub          s0, a5, a4
                  auipc        t0, 891775
                  add          a1, tp, t3
                  bge          a4, s2, 450f
                  auipc        s11, 44088
                  lui          t5, 588194
                  sra          s7, t3, ra
                  slti         gp, s2, 175
                  srli         ra, a2, 10
                  xori         t0, s1, -1813
443:              srai         zero, s5, 17
                  bgeu         a3, a6, 453f
                  or           s11, s6, t6
                  beq          t0, s9, 449f
                  srli         s7, t2, 8
                  srl          s9, ra, s0
449:              slt          a0, a0, a2
450:              sltiu        s5, t2, 314
                  slli         a5, t3, 5
                  lui          t5, 651463
453:              slli         s0, t6, 10
                  lui          s1, 765574
                  srai         s9, a1, 24
                  xori         t3, a3, -1042
                  slti         t1, tp, 1532
                  xori         gp, a5, 1384
                  srl          s10, s8, s1
                  andi         s9, tp, 1457
                  sub          s0, s1, s1
                  ori          s5, ra, -1099
                  add          s5, a1, s7
                  bgeu         a7, t6, 480f
                  or           a4, a7, a2
                  andi         ra, s9, -1926
                  bge          a5, s11, 475f
                  sub          a5, a6, s2
                  add          zero, s10, s3
                  beq          t2, a3, 477f
                  xor          s5, s7, a7
                  slti         t3, a0, 1104
                  add          s8, s8, t6
                  sra          a0, t0, t5
475:              addi         t1, s3, 549
                  sltu         t2, t1, a3
477:              sra          s11, tp, s1
                  auipc        t1, 210623
                  srli         tp, s4, 9
480:              auipc        sp, 247249
                  add          tp, t6, s9
                  bne          zero, s1, 502f
                  blt          s4, s1, 498f
                  sltiu        s4, a3, -400
                  slti         s4, t4, 509
                  lui          s9, 1046966
                  and          s7, s0, t5
                  srl          s2, a5, s8
                  slti         a1, ra, -1552
                  srl          s1, s10, s3
                  or           t2, t3, t2
                  nop
                  bne          gp, s0, 502f
                  srl          s3, s1, s10
                  bgeu         a7, s9, 507f
                  nop
                  slt          a5, s0, s5
498:              srl          t2, a1, tp
                  sltiu        tp, s7, 1241
                  blt          t1, zero, 501f
501:              bge          s3, t3, 508f
502:              lui          t5, 639979
                  bltu         a5, a4, 518f
                  sra          t0, a5, t5
                  bgeu         s10, t3, 513f
                  nop
507:              xori         a5, s3, 1732
508:              sltu         a3, sp, a7
                  srli         a4, gp, 13
                  auipc        a2, 12487
                  bgeu         s3, tp, 517f
                  srai         ra, t0, 3
513:              ori          s4, a7, 687
                  bne          t0, s7, 524f
                  slti         sp, s7, -1337
                  bgeu         sp, a7, 526f
517:              lui          s1, 625285
518:              andi         s9, a2, -1745
                  andi         s3, a5, 220
                  srai         gp, t3, 10
                  bne          a0, s10, 522f
522:              bne          ra, s5, 529f
                  srl          s8, t6, a0
524:              srai         a7, a2, 9
                  sll          t2, zero, ra
sub_1_0:          jal          t1, 19f
0:                jal          t1, 16f
1:                jal          s10, 4f
2:                jal          ra, 3f
3:                jal          t1, 24f
4:                jal          gp, 10f
5:                jal          ra, 12f
6:                jal          s4, 0b
7:                jal          ra, 9f
8:                jal          ra, 11f
9:                jal          ra, 21f
10:               jal          ra, 5b
11:               jal          ra, 20f
12:               jal          ra, 13f
13:               jal          ra, 23f
14:               jal          ra, 8b
15:               jal          ra, 26f
16:               jal          t0, 1b
17:               jal          t1, 6b
18:               jal          ra, 22f
19:               jal          ra, 18b
20:               jal          a1, 7b
21:               jal          ra, 2b
22:               jal          tp, 17b
23:               jal          ra, 25f
24:               jal          gp, 15b
25:               jal          t5, 14b
26:               srli         tp, s0, 26
526:              ori          s5, t4, 1137
                  srai         t0, s2, 30
                  bltu         s2, s3, 529f
529:              ori          a3, t4, 1228
                  sub          s5, s7, t5
                  lw           t1, 4(a6)
                  nop
                  addi         a6, a6, 44
                  srli         s9, s7, 2
                  addi         s8, a5, 1178
                  andi         t3, s3, 1825
841:              addi x1, x6, 1
841:              jalr x1, x1, 0
sub_2:            bgeu         a5, s7, sub_2_stack_p
sub_2_stack_p:    addi         a6, a6, -28
                  or           s2, s8, a0
                  sw           t1, 4(a6)
                  andi         t0, s3, -2033
                  slt          t5, s7, s9
sub_2_10:         jal          t1, 0f
0:                jal          ra, 17f
1:                jal          ra, 4f
2:                jal          a2, 10f
3:                jal          ra, 2b
4:                jal          ra, 12f
5:                jal          ra, 13f
6:                jal          a2, 8f
7:                jal          tp, 18f
8:                jal          ra, 16f
9:                jal          t6, 6b
10:               jal          ra, 11f
11:               jal          t1, 15f
12:               jal          ra, 14f
13:               jal          tp, 3b
14:               jal          s10, 9b
15:               jal          t1, 7b
16:               jal          ra, 5b
17:               jal          ra, 1b
18:               nop
sub_2_2:          jal          t1, 15f
0:                jal          ra, 2f
1:                jal          t0, 21f
2:                jal          ra, 16f
3:                jal          ra, 13f
4:                jal          ra, 11f
5:                jal          tp, 12f
6:                jal          ra, 1b
7:                jal          ra, 5b
8:                jal          t1, 0b
9:                jal          t1, 6b
10:               jal          ra, 19f
11:               jal          t1, 14f
12:               jal          t1, 17f
13:               jal          ra, 18f
14:               jal          ra, 9b
15:               jal          ra, 10b
16:               jal          ra, 4b
17:               jal          ra, 3b
18:               jal          ra, 20f
19:               jal          ra, 7b
20:               jal          ra, 8b
21:               and          s8, gp, s0
sub_2_9:          jal          t1, 18f
0:                jal          ra, 2f
1:                jal          t6, 8f
2:                jal          ra, 11f
3:                jal          ra, 1b
4:                jal          t6, 9f
5:                jal          s0, 10f
6:                jal          sp, 12f
7:                jal          t1, 0b
8:                jal          sp, 19f
9:                jal          a7, 13f
10:               jal          ra, 15f
11:               jal          ra, 16f
12:               jal          ra, 4b
13:               jal          ra, 21f
14:               jal          ra, 7b
15:               jal          sp, 14b
16:               jal          ra, 17f
17:               jal          t1, 20f
18:               jal          ra, 3b
19:               jal          ra, 5b
20:               jal          t1, 6b
21:               srl          a4, t2, gp
sub_2_6:          jal          t1, 13f
0:                jal          a2, 1f
1:                jal          t1, 14f
2:                jal          t0, 4f
3:                jal          ra, 5f
4:                jal          s10, 10f
5:                jal          t1, 2b
6:                jal          s0, 7f
7:                jal          s8, 12f
8:                jal          ra, 11f
9:                jal          sp, 0b
10:               jal          ra, 6b
11:               jal          ra, 3b
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               auipc        s0, 46412
sub_2_1:          jal          t1, 17f
0:                jal          ra, 1f
1:                jal          ra, 4f
2:                jal          s10, 8f
3:                jal          s9, 20f
4:                jal          a1, 16f
5:                jal          ra, 6f
6:                jal          t1, 19f
7:                jal          ra, 0b
8:                jal          ra, 7b
9:                jal          ra, 15f
10:               jal          s3, 14f
11:               jal          ra, 5b
12:               jal          ra, 11b
13:               jal          t1, 9b
14:               jal          ra, 12b
15:               jal          t1, 3b
16:               jal          ra, 18f
17:               jal          t1, 10b
18:               jal          ra, 13b
19:               jal          ra, 2b
20:               andi         s7, a7, -823
sub_2_3:          jal          t1, 8f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          a5, 1b
6:                jal          t1, 10f
7:                jal          ra, 6b
8:                jal          a5, 5b
9:                jal          t1, 2b
10:               jal          t1, 4b
11:               xor          a1, s1, s7
sub_2_7:          jal          t1, 0f
0:                jal          ra, 20f
1:                jal          ra, 8f
2:                jal          ra, 10f
3:                jal          a4, 16f
4:                jal          t6, 14f
5:                jal          t1, 12f
6:                jal          t1, 9f
7:                jal          ra, 21f
8:                jal          a4, 2b
9:                jal          t1, 13f
10:               jal          a1, 6b
11:               jal          t1, 1b
12:               jal          t1, 17f
13:               jal          ra, 19f
14:               jal          ra, 3b
15:               jal          t2, 7b
16:               jal          gp, 5b
17:               jal          ra, 15b
18:               jal          ra, 4b
19:               jal          ra, 18b
20:               jal          ra, 11b
21:               sltiu        t3, s10, -1886
sub_2_11:         jal          t1, 11f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          ra, 23f
3:                jal          s2, 18f
4:                jal          ra, 30f
5:                jal          ra, 21f
6:                jal          a7, 4b
7:                jal          t1, 5b
8:                jal          s8, 26f
9:                jal          ra, 1b
10:               jal          sp, 25f
11:               jal          t0, 16f
12:               jal          ra, 28f
13:               jal          ra, 8b
14:               jal          t1, 2b
15:               jal          t1, 24f
16:               jal          t1, 27f
17:               jal          t1, 12b
18:               jal          a7, 9b
19:               jal          a0, 22f
20:               jal          t1, 14b
21:               jal          ra, 13b
22:               jal          s10, 6b
23:               jal          a2, 0b
24:               jal          ra, 17b
25:               jal          t1, 19b
26:               jal          tp, 15b
27:               jal          ra, 20b
28:               jal          gp, 29f
29:               jal          ra, 3b
30:               addi         t1, tp, 546
sub_2_5:          jal          t1, 23f
0:                jal          s0, 25f
1:                jal          sp, 18f
2:                jal          ra, 5f
3:                jal          t1, 10f
4:                jal          ra, 26f
5:                jal          ra, 21f
6:                jal          gp, 19f
7:                jal          ra, 14f
8:                jal          gp, 22f
9:                jal          t5, 11f
10:               jal          t1, 9b
11:               jal          ra, 24f
12:               jal          t1, 20f
13:               jal          sp, 17f
14:               jal          ra, 16f
15:               jal          s9, 12b
16:               jal          ra, 2b
17:               jal          s7, 6b
18:               jal          t1, 7b
19:               jal          s8, 8b
20:               jal          ra, 13b
21:               jal          t5, 4b
22:               jal          ra, 0b
23:               jal          ra, 3b
24:               jal          ra, 15b
25:               jal          gp, 1b
26:               lui          s4, 103157
sub_2_8:          jal          t1, 13f
0:                jal          ra, 5f
1:                jal          a2, 14f
2:                jal          t1, 6f
3:                jal          t1, 2b
4:                jal          t1, 11f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          ra, 0b
9:                jal          s2, 8b
10:               jal          s1, 7b
11:               jal          a5, 3b
12:               jal          ra, 4b
13:               jal          sp, 12b
14:               or           s9, s5, s9
                  bne          t3, sp, 12f
                  xori         s4, s3, -718
                  bge          a5, t6, 3f
3:                slt          t5, gp, a4
                  srl          s10, t1, s9
                  or           t6, s3, a2
                  beq          s4, s5, 9f
                  xori         a3, s7, 180
                  srai         a5, s9, 30
9:                slti         a3, a2, -1550
                  nop
                  ori          sp, t2, 90
12:               and          s2, s10, s1
                  srli         a1, a6, 11
                  slt          t1, s4, s4
                  xor          s8, t3, zero
                  slti         a5, a5, -882
                  addi         t6, a0, 1512
                  andi         s8, t3, 1923
                  bge          a4, t3, 35f
                  sra          sp, s4, s0
                  slti         s8, a1, 1567
                  sltiu        s9, t2, 1290
                  andi         s1, s4, -159
                  srai         s8, s7, 10
                  sltu         sp, a6, tp
                  andi         s4, s9, -1458
                  sltiu        t5, s4, 256
                  bgeu         a3, s10, 44f
                  srl          s10, a4, gp
                  blt          s9, t2, 43f
                  blt          a4, s6, 36f
                  srai         a7, a0, 1
                  sub          a1, t6, s5
                  sll          a5, t6, s8
35:               bge          s11, t4, 44f
36:               sll          s11, s10, s7
                  andi         s8, s11, 1062
                  sub          a5, t4, s9
                  or           s8, s11, t6
                  xori         s10, t1, 997
                  blt          s9, t2, 60f
                  and          s1, a6, s4
43:               ori          s0, s11, -2015
44:               sll          s7, s5, a2
                  or           t2, s10, sp
                  lui          a2, 729913
                  ori          zero, s7, -1123
                  add          s5, a2, t6
                  bltu         s6, ra, 50f
50:               auipc        t0, 479265
                  bne          s3, s1, 53f
                  lui          a5, 40908
53:               or           s10, s6, s9
                  add          s5, a4, s8
                  sub          s3, a7, s3
                  ori          s4, t2, -399
                  nop
                  auipc        t0, 952525
                  srai         s1, s10, 23
60:               sltu         s5, a7, t4
                  addi         a1, zero, 532
                  slt          s5, s8, s5
                  add          s0, s1, s4
                  bgeu         a4, a3, 68f
                  slt          a4, t3, a0
                  srai         s4, t0, 5
                  addi         s5, t0, -173
68:               sltiu        s2, zero, -282
                  add          s2, s9, ra
                  bne          s3, s11, 77f
                  sub          s0, s1, a7
                  bltu         s9, s3, 76f
                  bne          t3, zero, 86f
                  or           a5, s0, t0
                  lui          s8, 715977
76:               srai         s1, a1, 19
77:               srli         zero, s8, 12
                  slli         ra, s2, 13
                  andi         ra, a4, -65
                  ori          sp, a1, 476
                  sll          s8, gp, ra
                  and          t1, s4, s10
                  srai         s7, a5, 10
                  blt          ra, s8, 98f
                  add          t0, sp, a0
86:               slti         t6, a2, -1040
                  xori         t5, a1, 740
                  nop
                  bltu         tp, a3, 101f
                  sub          s1, t4, t2
                  add          ra, t3, s5
                  bne          s9, sp, 98f
                  add          ra, s4, a1
                  andi         s2, s1, -52
                  xor          gp, s8, s4
                  bltu         s11, t6, 108f
                  sra          a1, a3, s10
98:               bne          t1, a4, 111f
                  auipc        a1, 787050
                  and          s2, a5, s11
101:              srli         t5, a7, 25
                  xor          tp, a2, s2
                  slli         a1, ra, 6
                  sub          a4, t1, t4
                  sll          a5, sp, t5
                  sltiu        a0, a7, -591
                  ori          s2, t0, 1606
108:              slli         a0, s10, 16
                  xor          a5, s1, zero
                  sltiu        a2, s2, 414
111:              sra          a1, a1, s8
                  sltiu        s3, t4, -1762
                  bge          a5, sp, 118f
                  sub          t3, a1, s7
                  slt          tp, s3, s7
                  xor          t2, s2, s8
                  sltiu        s1, t6, -26
118:              auipc        t0, 501934
                  srai         s5, s2, 28
                  sll          s2, t2, a5
                  sltu         s2, a0, t1
                  and          t1, a4, s3
                  srl          t6, t0, t3
                  blt          s10, s8, 126f
                  auipc        t6, 418377
126:              sltiu        s10, a1, 744
                  srl          s7, tp, s9
                  srli         s5, s4, 25
                  or           t1, t5, a1
                  srli         t5, s1, 24
                  sltiu        gp, sp, -1721
                  srli         s2, a2, 10
                  bgeu         s2, gp, 144f
                  and          t1, s0, t4
                  srl          t3, a1, ra
                  xor          a0, s5, s0
                  or           a4, t4, s7
                  bge          s7, a3, 149f
                  bge          zero, t4, 154f
                  add          s3, a0, sp
                  xor          a7, s10, a3
                  add          s1, s3, s7
                  and          s4, t0, a0
144:              sltu         s5, a4, s10
                  andi         s2, a7, -1621
                  add          s5, tp, s3
                  add          tp, s11, s9
                  andi         t0, s6, 1458
149:              or           zero, s1, a5
                  bgeu         zero, s9, 156f
                  beq          sp, s3, 167f
                  xori         s3, a7, -522
                  blt          s6, t0, 155f
154:              auipc        sp, 133981
155:              nop
156:              slli         zero, a1, 11
                  slli         s8, s5, 0
                  xor          s2, a2, tp
                  and          t3, sp, gp
                  slli         zero, zero, 23
                  bltu         t6, gp, 164f
                  and          a3, s1, t4
                  sub          a2, gp, a3
164:              blt          t1, s10, 177f
                  bne          s3, t6, 184f
                  addi         a7, a5, -1451
167:              slli         t5, a6, 16
                  bgeu         a0, tp, 173f
                  auipc        t5, 1026497
                  nop
                  and          tp, t6, a2
                  addi         s8, s1, 1987
173:              sltiu        t2, s7, -529
                  srai         t1, t5, 9
                  bne          t4, s2, 179f
                  ori          a3, s4, 226
177:              xor          t1, a7, s5
                  slti         a2, t3, -207
179:              srl          s9, a6, t1
                  and          s7, sp, sp
                  sltu         s5, s3, a0
                  nop
                  slli         s3, s7, 6
184:              addi         a2, a0, 1353
                  srli         sp, s2, 13
                  slli         t1, s2, 20
sub_2_4:          jal          t1, 2f
0:                jal          ra, 22f
1:                jal          ra, 28f
2:                jal          ra, 12f
3:                jal          t1, 18f
4:                jal          t1, 0b
5:                jal          ra, 21f
6:                jal          ra, 4b
7:                jal          s8, 13f
8:                jal          s11, 5b
9:                jal          ra, 8b
10:               jal          ra, 19f
11:               jal          ra, 17f
12:               jal          t1, 26f
13:               jal          ra, 6b
14:               jal          ra, 25f
15:               jal          ra, 10b
16:               jal          ra, 23f
17:               jal          ra, 27f
18:               jal          ra, 9b
19:               jal          ra, 16b
20:               jal          ra, 14b
21:               jal          t0, 24f
22:               jal          ra, 11b
23:               jal          ra, 1b
24:               jal          s5, 29f
25:               jal          t6, 7b
26:               jal          ra, 15b
27:               jal          ra, 3b
28:               jal          ra, 20b
29:               auipc        s2, 24566
sub_2_0:          jal          t1, 5f
0:                jal          ra, 13f
1:                jal          ra, 12f
2:                jal          s7, 16f
3:                jal          t1, 6f
4:                jal          ra, 7f
5:                jal          t1, 8f
6:                jal          t1, 10f
7:                jal          t5, 11f
8:                jal          t1, 14f
9:                jal          tp, 0b
10:               jal          a3, 1b
11:               jal          sp, 17f
12:               jal          ra, 9b
13:               jal          ra, 4b
14:               jal          ra, 15f
15:               jal          t1, 2b
16:               jal          ra, 3b
17:               jal          t1, 18f
18:               slli         t3, s0, 27
                  ori          t1, s11, -1607
                  sll          s9, s10, t2
                  andi         s1, tp, 1729
                  blt          sp, t0, 191f
191:              sll          a3, gp, a3
                  sra          sp, s9, s1
                  slli         s10, a4, 6
                  ori          s3, zero, 1354
                  srli         a7, t6, 2
                  add          s7, s2, a5
                  srl          a5, t3, t5
                  add          a1, a4, s7
                  addi         s10, t0, 1593
                  and          s5, t4, t4
                  xor          a0, a1, tp
                  slti         s4, zero, -571
                  andi         gp, s0, -604
                  sra          t5, s7, t2
                  andi         t5, ra, -819
                  bltu         s3, s7, 208f
                  nop
208:              srai         a4, s9, 0
                  sub          t1, t6, s1
                  addi         a4, gp, -659
                  bge          t0, zero, 214f
                  or           a1, s0, zero
                  nop
214:              srli         s5, s6, 3
                  bltu         gp, s3, 226f
                  srai         a3, sp, 30
                  auipc        a5, 733312
                  lui          sp, 525153
                  slti         ra, a0, 1534
                  slt          s4, s3, zero
                  srl          s10, a4, a4
                  blt          a2, tp, 229f
                  and          t6, s9, s10
                  bne          t6, t2, 237f
                  addi         s11, t0, 952
226:              sra          t0, t6, zero
                  srl          gp, s4, a1
                  sll          s2, s7, s9
229:              sub          zero, s7, a1
                  bne          t0, ra, 242f
                  slli         s3, zero, 12
                  or           a7, a2, t1
                  sll          a2, a5, sp
                  sra          t3, t4, s2
                  lui          s1, 938433
                  and          gp, a4, zero
237:              slli         t1, s2, 27
                  sub          s8, t2, t1
                  sub          s0, s9, s9
                  slt          s1, a1, t1
                  blt          s10, s6, 246f
242:              or           t0, a0, a2
                  sltiu        t0, s5, 1937
                  sra          s7, tp, tp
                  nop
246:              bne          t5, s8, 249f
                  bge          s3, a3, 260f
                  bgeu         a3, t3, 264f
249:              blt          s11, s6, 262f
                  sra          a3, s8, s6
                  beq          s8, sp, 264f
                  andi         s3, a0, -1016
                  nop
                  and          t2, t2, a1
                  xori         a2, gp, -21
                  sra          a7, s8, s7
                  slt          s11, s0, a3
                  srai         s9, a0, 26
                  beq          a3, zero, 263f
260:              slti         tp, s6, -658
                  bge          t5, t0, 276f
262:              or           s3, t1, s10
263:              lui          t6, 703033
264:              addi         a2, t3, 248
                  addi         s0, zero, -877
                  add          s0, t2, t2
                  xor          a7, a0, a1
                  xori         a4, a6, 1455
                  slli         s7, t6, 14
                  andi         t0, s0, -1440
                  or           s7, t3, zero
                  addi         ra, s4, -921
                  xori         a7, s7, 1075
                  srai         zero, t2, 29
                  ori          t5, zero, 687
276:              slti         a5, a6, 564
                  blt          s6, a4, 289f
                  addi         t5, a1, -185
                  nop
                  slt          s10, a0, ra
                  blt          t3, a5, 295f
                  srli         t0, t4, 20
                  bgeu         s5, sp, 284f
284:              sltu         gp, t0, a1
                  bge          s10, t4, 301f
                  blt          s0, s11, 292f
                  addi         a7, ra, 1422
                  bgeu         gp, s0, 300f
289:              slt          s3, t4, a2
                  andi         sp, a2, 847
                  add          tp, s9, s11
292:              sra          a4, a2, t4
                  or           t5, s4, a7
                  srli         t6, gp, 21
295:              bge          a0, s6, 301f
                  or           t3, a0, a0
                  and          s8, t0, t6
                  sll          tp, s3, tp
                  srli         s0, a1, 26
300:              srai         zero, s0, 18
301:              sltiu        t6, s3, 656
                  addi         s10, s11, 938
                  and          ra, t1, gp
                  srl          s2, a4, s3
                  bge          a3, s1, 307f
                  lui          a3, 157354
307:              andi         a2, s3, -59
                  bltu         t0, a1, 324f
                  bltu         a1, s2, 318f
                  sra          t0, s3, a1
                  xori         s1, zero, -1417
                  andi         t1, s10, 35
                  or           s9, zero, a1
                  nop
                  or           sp, sp, a1
                  or           s5, s5, s9
                  bltu         s4, s11, 328f
318:              lui          s4, 745982
                  nop
                  addi         s10, a3, -718
                  sub          s9, s4, s4
                  lui          a5, 542216
                  ori          s9, s7, -776
324:              blt          s2, s0, 326f
                  add          a3, t5, s8
326:              blt          t1, t2, 328f
                  srai         a4, s9, 7
328:              xor          t6, gp, t3
                  lui          a7, 244557
                  slti         a2, s9, -688
                  sll          t1, s5, a3
                  xor          s5, t4, s9
                  srai         a1, t0, 5
                  slli         sp, a2, 8
                  xori         a3, a4, -1934
                  auipc        t1, 544742
                  blt          s4, ra, 338f
338:              sltu         a4, gp, a1
                  xor          a3, a3, a1
                  slt          s4, t3, ra
                  srli         t0, s4, 26
                  add          s3, t1, a3
                  nop
                  bne          a2, gp, 358f
                  bltu         t3, s0, 354f
                  srli         s7, a1, 25
                  or           a5, s11, s6
                  srl          s2, ra, a7
                  bge          t0, gp, 360f
                  slli         tp, s9, 19
                  sltu         zero, ra, a3
                  lui          t3, 584718
                  bne          a4, t0, 365f
354:              srai         s2, a5, 3
                  slti         t2, s2, 38
                  slt          t0, s3, tp
                  beq          t2, a0, 361f
358:              addi         s2, tp, 866
                  bltu         t3, s7, 372f
360:              slti         a2, s2, -1341
361:              addi         sp, a5, 1967
                  sra          sp, a3, t3
                  slti         a5, a3, -69
                  ori          a3, s11, -693
365:              srl          t5, a2, gp
                  slt          a1, s6, a6
                  sll          a4, s9, t2
                  andi         a1, a1, -481
                  beq          t1, t1, 385f
                  lui          t2, 407330
                  or           tp, s5, s5
372:              nop
                  sra          s1, s1, t2
                  addi         s9, s2, 1826
                  sll          sp, a5, s3
                  lui          a1, 110884
                  bge          s10, a0, 396f
                  slt          s9, s9, a0
                  bgeu         a6, s1, 391f
                  auipc        s9, 131714
                  xori         s9, s4, 238
                  sub          a4, a3, s11
                  beq          s4, a2, 387f
                  or           a7, a7, t1
385:              sltiu        s11, sp, -1153
                  andi         s0, t2, -1275
387:              sll          t5, a4, s5
                  auipc        a7, 530327
                  slt          s2, a5, ra
                  sltiu        tp, t3, -937
391:              ori          a2, t3, -1895
                  nop
                  or           ra, s11, s10
                  sltiu        t0, t5, -567
                  beq          s1, s3, 400f
396:              nop
                  beq          s9, a4, 399f
                  sub          t3, zero, t6
399:              bge          t4, s0, 410f
400:              slli         s3, s6, 14
                  xor          s8, s9, s1
                  and          t2, s10, s6
                  andi         t1, s1, -1905
                  slt          s2, gp, gp
                  sub          t0, s10, s6
                  xori         a4, s3, -294
                  andi         s3, a4, 1645
                  bge          ra, s5, 421f
                  srai         t0, s9, 13
410:              srai         s5, s1, 21
                  sltu         t0, a6, t2
                  bge          t1, s2, 415f
                  srl          zero, s5, s4
                  and          s10, a6, s8
415:              beq          t5, s10, 420f
                  beq          t2, gp, 429f
                  sub          s10, a1, a7
                  auipc        tp, 170871
                  or           t5, a4, sp
420:              bltu         ra, a1, 421f
421:              slti         s2, ra, -1471
                  slti         s1, a6, 975
                  sll          s3, a0, a3
                  auipc        tp, 28053
                  sub          a7, t2, t0
                  slli         tp, t2, 17
                  bne          s3, zero, 430f
                  xori         s2, s9, 1886
429:              bltu         s11, a0, 441f
430:              blt          s9, s9, 446f
                  sltiu        t1, s9, -1729
                  xori         s3, s2, -274
                  bltu         a4, a5, 446f
                  bne          s7, a1, 440f
                  srai         s3, zero, 13
                  andi         a1, t4, -1648
                  addi         s4, s0, 1474
                  sltiu        a7, s3, -241
                  auipc        s0, 917347
440:              addi         a2, t5, 759
441:              slli         s7, s6, 1
                  blt          t1, tp, 458f
                  sub          a5, s8, gp
                  slti         zero, a3, -607
                  sltiu        s0, s10, 226
446:              bgeu         s11, s4, 453f
sub_2_12:         jal          t1, 4f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          t1, 10f
6:                jal          t1, 9f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          a5, 5b
10:               jal          tp, 3b
11:               jal          ra, 1b
12:               sltu         s1, s11, s7
                  add          sp, s6, a2
                  auipc        sp, 710713
                  xor          t3, t4, s3
                  nop
                  sltu         t5, t4, s5
                  bgeu         t0, s6, 458f
453:              addi         a2, s6, -985
                  auipc        s5, 23368
                  sltiu        ra, a6, -1205
                  srai         sp, t6, 4
                  slt          gp, s1, s11
458:              xor          s3, s10, ra
                  srli         s4, s1, 0
                  bltu         t1, a2, 475f
                  lui          s11, 111297
                  ori          t1, a7, -994
                  ori          s7, a7, -1297
                  xori         gp, s10, -1999
                  ori          t2, t4, -1251
                  xori         s4, t2, 496
                  add          t3, gp, t1
                  bne          s7, t4, 470f
                  sra          a2, t1, a5
470:              nop
                  and          t6, s11, a4
                  addi         t5, s9, -636
                  lui          ra, 500240
                  srli         ra, s5, 22
475:              bgeu         s7, s8, 487f
                  auipc        a1, 573981
                  sra          t0, a7, s7
                  slli         s10, s1, 19
                  lui          s1, 787818
                  sltiu        a1, sp, 1765
                  slli         ra, t6, 19
                  xori         a1, a7, 320
                  or           s4, s10, s4
                  slt          ra, a5, a3
                  andi         s5, a1, -1764
                  nop
487:              srl          t6, t5, s9
                  add          a1, s5, t3
                  xor          s4, a7, s11
                  auipc        s11, 754660
                  lui          ra, 264133
                  bgeu         s8, s1, 497f
                  lui          t3, 921404
                  slt          a1, s2, s1
                  srl          a2, tp, t4
                  add          t2, s0, a7
497:              bge          t3, s4, 510f
                  andi         a4, t2, 1963
                  xor          t5, s5, t5
                  sra          s2, s10, a7
                  slti         a2, s10, 377
                  and          s7, s2, a5
                  sra          s11, t1, s3
                  sll          gp, zero, a5
                  srli         s11, s4, 15
                  add          s3, s4, t4
                  or           s9, a3, t5
                  andi         t6, sp, 491
                  sub          t3, a0, s5
510:              bltu         t3, s2, 526f
                  bge          a4, t4, 525f
                  sll          a7, s1, t5
                  srli         a7, t3, 30
                  srai         a7, t4, 31
                  srai         a2, t0, 0
                  sll          s5, t6, s4
                  sltiu        s3, t4, -1129
                  slli         s3, a4, 19
                  sub          sp, t3, tp
                  sltu         t1, t6, zero
                  or           ra, t1, t2
                  lui          gp, 879006
                  and          s2, t1, a6
                  or           s3, zero, s9
525:              sltiu        s7, s6, -1373
526:              beq          a7, a1, 535f
                  ori          a4, a0, 29
                  srli         a1, sp, 27
                  bne          a0, s0, 534f
                  slti         ra, a4, 880
                  slli         a2, s7, 2
                  srai         a3, a1, 16
                  addi         s11, s1, 1668
534:              sra          s3, gp, s2
535:              and          tp, s1, t3
                  xori         s9, gp, 830
                  slli         t1, a5, 5
                  addi         s4, a5, -938
                  bgeu         s2, gp, 551f
                  add          a7, a3, zero
                  beq          t5, tp, 544f
                  slt          s0, t4, s3
                  bltu         s9, a4, 549f
544:              sll          a3, a1, a5
                  slli         s5, sp, 27
                  nop
                  bgeu         s1, s7, 551f
                  xor          a4, s1, t2
549:              srli         tp, ra, 14
                  srai         a5, t5, 10
551:              srli         s4, t3, 22
                  srai         t0, s8, 20
                  slt          a2, t2, s1
                  beq          s5, ra, 558f
                  or           t3, sp, gp
                  lui          s1, 239208
                  bltu         a6, a2, 576f
558:              bne          s4, s11, 560f
                  slt          a3, s1, s1
560:              sltiu        s8, s4, -1397
                  blt          a6, s0, 577f
                  bge          s10, ra, 575f
                  and          a0, a5, s2
                  lui          s2, 298853
                  bge          t3, s5, 568f
                  slli         s3, t5, 8
                  slli         sp, a1, 23
568:              or           t0, a6, s11
                  sra          s8, t1, t3
                  srli         zero, s6, 7
                  srl          a1, a7, s7
                  srli         s1, a4, 15
                  xor          a7, s7, s4
                  addi         s10, tp, -626
575:              andi         s9, s10, -2023
576:              bltu         s6, t0, 591f
577:              or           a5, s1, gp
                  bne          s3, t3, 591f
                  andi         s4, tp, 911
                  sltu         a7, ra, a6
                  bgeu         s4, a7, 592f
                  blt          t2, t6, 584f
                  slti         s3, a3, -853
584:              slti         tp, a2, -1893
                  sra          a3, gp, ra
                  addi         t0, a3, 1784
                  bne          s10, a0, 589f
                  xor          a3, s4, s4
589:              sltu         s3, sp, a2
                  nop
591:              nop
592:              sll          s8, t3, s3
                  srai         gp, tp, 21
                  srl          s9, s0, a3
                  slt          a2, a4, s10
                  srai         t5, t0, 30
                  lui          s8, 317779
                  slli         t1, s2, 7
                  bge          t3, s1, 600f
600:              sltu         a2, a0, a6
                  sll          s1, s9, t6
                  blt          t1, t6, 609f
                  sll          a1, a3, t5
                  srli         s3, s8, 16
                  addi         s7, tp, 193
                  sra          t6, t5, t6
                  add          t0, s9, s0
                  slli         s5, s11, 20
609:              addi         s0, t4, -1783
                  srl          s0, t1, s2
                  sltiu        s2, a3, 1341
                  sll          sp, t5, t4
                  srl          a1, a3, a0
                  add          gp, s11, s7
                  srli         s8, a3, 20
                  bltu         t0, s4, 622f
                  bge          t6, tp, 633f
                  srl          s3, ra, a2
                  bge          s11, t0, 631f
                  slt          s7, s11, a5
                  sltu         s8, a7, t6
622:              sltu         t3, a6, s1
                  sra          s3, a3, t3
                  srl          a2, s2, s10
                  addi         t3, s0, 1637
                  sll          a4, a6, gp
                  nop
                  slli         t6, zero, 18
                  add          a2, t6, s9
                  slli         t2, tp, 26
631:              sltu         t1, t4, a5
                  andi         s10, s8, -850
633:              beq          t0, s2, 634f
634:              slt          a4, t3, t0
                  blt          s10, a0, 648f
                  xor          a2, t0, s3
                  sltu         t6, gp, s1
                  srli         tp, a5, 0
                  sltu         t6, gp, s4
                  andi         s4, ra, -1638
                  bne          tp, s10, 652f
                  ori          s7, gp, 430
                  xor          a2, t2, tp
                  nop
                  nop
                  sltiu        a7, s6, -29
                  slt          a5, s11, a6
648:              slli         s11, zero, 23
                  bne          t2, a3, 668f
                  or           s7, t5, t1
                  auipc        s7, 1012378
652:              blt          s7, s6, 657f
                  slli         tp, s2, 10
                  bgeu         a7, a6, 665f
                  and          s3, s3, s3
                  sll          t5, s1, sp
657:              lui          s9, 138585
                  slti         s3, s4, 1369
                  bne          a7, a7, 663f
                  addi         a4, t4, -486
                  xori         s5, s7, 138
                  andi         s9, a3, -1409
663:              ori          t6, s10, 585
                  bne          t6, ra, 672f
665:              srli         a1, s1, 12
                  blt          s6, s3, 672f
                  xori         tp, a0, 93
668:              bne          s10, t5, 672f
                  xori         t1, t3, -1308
                  nop
                  sltu         s0, s3, a6
672:              srai         zero, t3, 2
                  lw           t1, 4(a6)
                  srl          a3, s1, s8
                  ori          a0, s6, 277
                  srai         ra, s11, 8
                  addi         a6, a6, 28
                  andi         sp, t4, -714
                  andi         s3, t1, -1592
                  sltiu        t0, t4, -814
                  srli         s10, t6, 9
                  slli         t3, s11, 22
                  xori         s5, a1, 1324
                  add          t2, s4, a3
972:              addi x10, x6, 0
972:              jalr x10, x10, 0
sub_4:            sltiu        ra, a1, -419
                  bge          t1, t0, sub_4_stack_p
                  and          zero, s1, t5
                  sltu         s4, s7, s4
sub_4_stack_p:    addi         a6, a6, -48
                  xori         ra, t2, -1993
                  auipc        a0, 380035
                  sll          s1, s4, s10
                  sw           t1, 4(a6)
                  srli         tp, a1, 12
                  srai         t3, sp, 2
                  addi         s1, a0, 629
sub_4_17:         jal          t1, 26f
0:                jal          gp, 24f
1:                jal          ra, 9f
2:                jal          s5, 3f
3:                jal          ra, 12f
4:                jal          ra, 2b
5:                jal          a7, 25f
6:                jal          ra, 0b
7:                jal          ra, 13f
8:                jal          ra, 16f
9:                jal          ra, 28f
10:               jal          s4, 19f
11:               jal          ra, 10b
12:               jal          t2, 21f
13:               jal          ra, 20f
14:               jal          ra, 18f
15:               jal          t3, 8b
16:               jal          tp, 1b
17:               jal          ra, 6b
18:               jal          ra, 23f
19:               jal          s7, 7b
20:               jal          ra, 4b
21:               jal          s2, 14b
22:               jal          ra, 17b
23:               jal          t1, 15b
24:               jal          ra, 11b
25:               jal          t0, 27f
26:               jal          t0, 5b
27:               jal          ra, 22b
28:               srai         s0, sp, 3
sub_4_0:          jal          t1, 25f
0:                jal          t1, 13f
1:                jal          t1, 0b
2:                jal          ra, 22f
3:                jal          ra, 16f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 29f
7:                jal          ra, 4b
8:                jal          t1, 17f
9:                jal          a5, 6b
10:               jal          ra, 9b
11:               jal          t1, 19f
12:               jal          ra, 11b
13:               jal          t1, 12b
14:               jal          s4, 8b
15:               jal          ra, 21f
16:               jal          ra, 24f
17:               jal          ra, 2b
18:               jal          ra, 14b
19:               jal          ra, 20f
20:               jal          sp, 28f
21:               jal          ra, 3b
22:               jal          t5, 5b
23:               jal          ra, 27f
24:               jal          ra, 18b
25:               jal          ra, 1b
26:               jal          ra, 23b
27:               jal          ra, 15b
28:               jal          t1, 26b
29:               slli         s8, a5, 29
sub_4_7:          jal          t1, 12f
0:                jal          t1, 8f
1:                jal          ra, 16f
2:                jal          tp, 11f
3:                jal          t1, 0b
4:                jal          ra, 14f
5:                jal          s0, 7f
6:                jal          ra, 18f
7:                jal          a2, 17f
8:                jal          ra, 13f
9:                jal          t1, 2b
10:               jal          ra, 5b
11:               jal          t2, 15f
12:               jal          t1, 9b
13:               jal          ra, 6b
14:               jal          gp, 3b
15:               jal          t1, 1b
16:               jal          s1, 10b
17:               jal          a7, 4b
18:               srli         ra, s8, 1
sub_4_3:          jal          t1, 12f
0:                jal          s10, 8f
1:                jal          ra, 11f
2:                jal          ra, 4f
3:                jal          ra, 13f
4:                jal          ra, 16f
5:                jal          ra, 6f
6:                jal          t2, 2b
7:                jal          ra, 3b
8:                jal          ra, 1b
9:                jal          gp, 0b
10:               jal          ra, 9b
11:               jal          t1, 5b
12:               jal          ra, 7b
13:               jal          ra, 15f
14:               jal          ra, 10b
15:               jal          ra, 14b
16:               nop
sub_4_6:          jal          t1, 16f
0:                jal          ra, 14f
1:                jal          t1, 13f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 22f
5:                jal          ra, 20f
6:                jal          ra, 15f
7:                jal          t6, 10f
8:                jal          gp, 18f
9:                jal          t6, 21f
10:               jal          ra, 5b
11:               jal          s1, 9b
12:               jal          s3, 17f
13:               jal          t1, 11b
14:               jal          ra, 4b
15:               jal          ra, 19f
16:               jal          ra, 8b
17:               jal          gp, 7b
18:               jal          s4, 1b
19:               jal          ra, 12b
20:               jal          ra, 2b
21:               jal          ra, 6b
22:               or           t0, a6, t4
sub_4_26:         jal          t1, 3f
0:                jal          ra, 11f
1:                jal          ra, 23f
2:                jal          ra, 8f
3:                jal          t1, 1b
4:                jal          ra, 2b
5:                jal          ra, 17f
6:                jal          gp, 18f
7:                jal          ra, 21f
8:                jal          ra, 24f
9:                jal          s4, 5b
10:               jal          t1, 22f
11:               jal          ra, 6b
12:               jal          ra, 9b
13:               jal          t1, 10b
14:               jal          ra, 15f
15:               jal          ra, 4b
16:               jal          t1, 12b
17:               jal          t1, 0b
18:               jal          ra, 13b
19:               jal          t1, 7b
20:               jal          sp, 16b
21:               jal          s4, 20b
22:               jal          ra, 14b
23:               jal          s9, 19b
24:               addi         tp, t3, -801
sub_4_8:          jal          t1, 22f
0:                jal          t1, 12f
1:                jal          a5, 13f
2:                jal          ra, 15f
3:                jal          ra, 7f
4:                jal          t1, 10f
5:                jal          ra, 3b
6:                jal          sp, 20f
7:                jal          a3, 6b
8:                jal          ra, 19f
9:                jal          ra, 0b
10:               jal          ra, 8b
11:               jal          t0, 21f
12:               jal          ra, 25f
13:               jal          s2, 14f
14:               jal          ra, 5b
15:               jal          gp, 23f
16:               jal          ra, 18f
17:               jal          t1, 24f
18:               jal          ra, 1b
19:               jal          t1, 2b
20:               jal          a7, 11b
21:               jal          ra, 17b
22:               jal          ra, 16b
23:               jal          a0, 9b
24:               jal          a1, 4b
25:               and          s5, s8, s0
sub_4_5:          jal          t1, 4f
0:                jal          t1, 9f
1:                jal          s8, 13f
2:                jal          ra, 7f
3:                jal          ra, 5f
4:                jal          t0, 14f
5:                jal          ra, 11f
6:                jal          s8, 1b
7:                jal          tp, 0b
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          ra, 6b
13:               jal          t1, 3b
14:               jal          t0, 12b
15:               sltiu        t5, t0, 1630
sub_4_4:          jal          t1, 7f
0:                jal          s0, 1f
1:                jal          ra, 8f
2:                jal          a7, 5f
3:                jal          ra, 10f
4:                jal          ra, 20f
5:                jal          ra, 6f
6:                jal          t5, 19f
7:                jal          gp, 12f
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          sp, 11f
11:               jal          ra, 15f
12:               jal          tp, 13f
13:               jal          t1, 0b
14:               jal          t1, 16f
15:               jal          ra, 4b
16:               jal          t1, 17f
17:               jal          a3, 3b
18:               jal          t1, 14b
19:               jal          t1, 9b
20:               ori          tp, sp, -1071
sub_4_25:         jal          t1, 9f
0:                jal          ra, 14f
1:                jal          t1, 4f
2:                jal          ra, 1b
3:                jal          s7, 18f
4:                jal          t1, 17f
5:                jal          t5, 12f
6:                jal          a7, 16f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          a3, 6b
10:               jal          a1, 7b
11:               jal          ra, 15f
12:               jal          s2, 3b
13:               jal          ra, 8b
14:               jal          ra, 13b
15:               jal          gp, 0b
16:               jal          ra, 10b
17:               jal          ra, 11b
18:               sll          ra, t2, s11
sub_4_2:          jal          t1, 6f
0:                jal          s10, 8f
1:                jal          t1, 7f
2:                jal          t1, 0b
3:                jal          t0, 2b
4:                jal          t0, 14f
5:                jal          ra, 3b
6:                jal          ra, 1b
7:                jal          ra, 11f
8:                jal          ra, 13f
9:                jal          ra, 5b
10:               jal          t1, 4b
11:               jal          ra, 12f
12:               jal          t1, 10b
13:               jal          ra, 15f
14:               jal          t0, 9b
15:               sltiu        t1, t6, -1128
sub_4_20:         jal          t1, 17f
0:                jal          ra, 12f
1:                jal          s0, 15f
2:                jal          gp, 4f
3:                jal          t1, 18f
4:                jal          t1, 21f
5:                jal          ra, 10f
6:                jal          a2, 1b
7:                jal          ra, 5b
8:                jal          s7, 3b
9:                jal          ra, 22f
10:               jal          sp, 8b
11:               jal          t0, 20f
12:               jal          ra, 6b
13:               jal          t1, 14f
14:               jal          t1, 11b
15:               jal          t0, 2b
16:               jal          tp, 13b
17:               jal          ra, 7b
18:               jal          t3, 16b
19:               jal          ra, 0b
20:               jal          ra, 19b
21:               jal          ra, 9b
22:               andi         s3, a7, -556
sub_4_29:         jal          t1, 0f
0:                jal          t1, 10f
1:                jal          a7, 8f
2:                jal          t1, 18f
3:                jal          ra, 12f
4:                jal          t0, 22f
5:                jal          ra, 16f
6:                jal          ra, 11f
7:                jal          t1, 17f
8:                jal          s7, 21f
9:                jal          ra, 6b
10:               jal          a7, 1b
11:               jal          t3, 13f
12:               jal          t1, 9b
13:               jal          a3, 15f
14:               jal          t1, 23f
15:               jal          t5, 4b
16:               jal          ra, 2b
17:               jal          t1, 14b
18:               jal          t1, 20f
19:               jal          t1, 7b
20:               jal          ra, 3b
21:               jal          ra, 5b
22:               jal          ra, 19b
23:               sra          gp, t4, s8
sub_4_15:         jal          t1, 0f
0:                jal          ra, 1f
1:                jal          s9, 4f
2:                jal          t1, 8f
3:                jal          t1, 2b
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          a2, 3b
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          a7, 5b
10:               sub          s11, t3, a3
sub_4_32:         jal          t1, 14f
0:                jal          ra, 19f
1:                jal          t1, 17f
2:                jal          ra, 18f
3:                jal          ra, 5f
4:                jal          t1, 21f
5:                jal          ra, 16f
6:                jal          t1, 4b
7:                jal          ra, 13f
8:                jal          t5, 7b
9:                jal          a0, 12f
10:               jal          ra, 6b
11:               jal          ra, 2b
12:               jal          ra, 10b
13:               jal          ra, 22f
14:               jal          sp, 9b
15:               jal          ra, 0b
16:               jal          ra, 15b
17:               jal          ra, 8b
18:               jal          t0, 1b
19:               jal          ra, 11b
20:               jal          ra, 3b
21:               jal          ra, 20b
22:               or           a2, zero, a2
sub_4_13:         jal          t1, 2f
0:                jal          tp, 13f
1:                jal          ra, 10f
2:                jal          t6, 11f
3:                jal          ra, 8f
4:                jal          ra, 12f
5:                jal          ra, 16f
6:                jal          t1, 20f
7:                jal          s9, 1b
8:                jal          ra, 14f
9:                jal          a3, 18f
10:               jal          ra, 6b
11:               jal          s9, 5b
12:               jal          tp, 19f
13:               jal          t1, 15f
14:               jal          tp, 4b
15:               jal          ra, 17f
16:               jal          t6, 3b
17:               jal          ra, 7b
18:               jal          t1, 0b
19:               jal          ra, 9b
20:               slti         s1, a6, 1461
sub_4_19:         jal          t1, 8f
0:                jal          t0, 9f
1:                jal          t1, 2f
2:                jal          t0, 5f
3:                jal          ra, 1b
4:                jal          t1, 3b
5:                jal          tp, 7f
6:                jal          t3, 0b
7:                jal          a5, 6b
8:                jal          t1, 4b
9:                jal          ra, 10f
10:               sltu         ra, t5, s7
sub_4_16:         jal          t1, 22f
0:                jal          t1, 8f
1:                jal          t1, 14f
2:                jal          ra, 13f
3:                jal          a0, 10f
4:                jal          ra, 15f
5:                jal          t1, 16f
6:                jal          t1, 26f
7:                jal          t6, 21f
8:                jal          t1, 11f
9:                jal          a7, 23f
10:               jal          t1, 0b
11:               jal          s7, 2b
12:               jal          ra, 5b
13:               jal          ra, 12b
14:               jal          ra, 20f
15:               jal          t1, 18f
16:               jal          t1, 9b
17:               jal          ra, 7b
18:               jal          ra, 6b
19:               jal          t1, 3b
20:               jal          ra, 25f
21:               jal          tp, 19b
22:               jal          gp, 24f
23:               jal          ra, 1b
24:               jal          t1, 17b
25:               jal          s8, 4b
26:               xor          s5, s8, t5
sub_4_11:         jal          t1, 15f
0:                jal          t3, 16f
1:                jal          ra, 26f
2:                jal          s10, 25f
3:                jal          ra, 9f
4:                jal          t1, 22f
5:                jal          ra, 17f
6:                jal          t1, 18f
7:                jal          ra, 2b
8:                jal          ra, 21f
9:                jal          gp, 1b
10:               jal          t6, 11f
11:               jal          t1, 14f
12:               jal          t1, 3b
13:               jal          ra, 12b
14:               jal          s11, 5b
15:               jal          ra, 27f
16:               jal          s5, 10b
17:               jal          s11, 7b
18:               jal          t5, 24f
19:               jal          ra, 8b
20:               jal          ra, 13b
21:               jal          t1, 0b
22:               jal          ra, 23f
23:               jal          s4, 28f
24:               jal          t1, 19b
25:               jal          ra, 20b
26:               jal          t1, 4b
27:               jal          ra, 6b
28:               slt          s0, t2, a1
sub_4_9:          jal          t1, 15f
0:                jal          s7, 12f
1:                jal          gp, 6f
2:                jal          ra, 9f
3:                jal          a4, 0b
4:                jal          ra, 26f
5:                jal          ra, 20f
6:                jal          ra, 3b
7:                jal          sp, 1b
8:                jal          ra, 24f
9:                jal          a4, 11f
10:               jal          ra, 16f
11:               jal          a3, 5b
12:               jal          t1, 2b
13:               jal          ra, 7b
14:               jal          ra, 18f
15:               jal          ra, 14b
16:               jal          ra, 25f
17:               jal          t1, 13b
18:               jal          ra, 21f
19:               jal          s0, 17b
20:               jal          t1, 22f
21:               jal          ra, 10b
22:               jal          t1, 8b
23:               jal          ra, 4b
24:               jal          gp, 23b
25:               jal          ra, 19b
26:               srl          s3, t3, t3
sub_4_24:         jal          t1, 17f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          ra, 1b
3:                jal          ra, 22f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          ra, 21f
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          ra, 5b
12:               jal          sp, 14f
13:               jal          ra, 0b
14:               jal          ra, 18f
15:               jal          t0, 4b
16:               jal          s0, 20f
17:               jal          ra, 12b
18:               jal          t6, 11b
19:               jal          s11, 8b
20:               jal          ra, 23f
21:               jal          ra, 10b
22:               jal          ra, 19b
23:               sll          a4, a4, s6
sub_4_18:         jal          t1, 15f
0:                jal          ra, 18f
1:                jal          ra, 13f
2:                jal          ra, 14f
3:                jal          t1, 12f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 16f
9:                jal          t1, 19f
10:               jal          s3, 8b
11:               jal          ra, 2b
12:               jal          a0, 20f
13:               jal          sp, 17f
14:               jal          ra, 0b
15:               jal          t1, 11b
16:               jal          ra, 6b
17:               jal          t1, 7b
18:               jal          ra, 3b
19:               jal          s9, 21f
20:               jal          ra, 1b
21:               slli         a7, s8, 14
sub_4_21:         jal          t1, 16f
0:                jal          gp, 11f
1:                jal          s5, 22f
2:                jal          ra, 9f
3:                jal          s1, 7f
4:                jal          ra, 3b
5:                jal          a1, 17f
6:                jal          ra, 5b
7:                jal          t1, 0b
8:                jal          ra, 13f
9:                jal          t0, 20f
10:               jal          s9, 12f
11:               jal          ra, 21f
12:               jal          ra, 1b
13:               jal          t1, 18f
14:               jal          ra, 4b
15:               jal          t1, 10b
16:               jal          ra, 14b
17:               jal          ra, 23f
18:               jal          ra, 6b
19:               jal          ra, 15b
20:               jal          ra, 8b
21:               jal          t1, 19b
22:               jal          t1, 2b
23:               addi         s9, sp, -560
sub_4_30:         jal          t1, 12f
0:                jal          ra, 13f
1:                jal          s3, 6f
2:                jal          t3, 1b
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          tp, 2b
8:                jal          ra, 7b
9:                jal          ra, 4b
10:               jal          s11, 0b
11:               jal          ra, 3b
12:               jal          ra, 8b
13:               jal          ra, 9b
14:               xor          t0, ra, s5
sub_4_14:         jal          t1, 13f
0:                jal          sp, 5f
1:                jal          ra, 6f
2:                jal          ra, 10f
3:                jal          t1, 14f
4:                jal          ra, 0b
5:                jal          gp, 11f
6:                jal          t1, 8f
7:                jal          ra, 12f
8:                jal          t1, 3b
9:                jal          a2, 2b
10:               jal          t1, 7b
11:               jal          ra, 15f
12:               jal          ra, 16f
13:               jal          gp, 1b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               sltu         s8, gp, s6
sub_4_23:         jal          t1, 20f
0:                jal          s4, 8f
1:                jal          t2, 13f
2:                jal          ra, 14f
3:                jal          t1, 29f
4:                jal          gp, 26f
5:                jal          t0, 10f
6:                jal          s9, 25f
7:                jal          ra, 15f
8:                jal          ra, 28f
9:                jal          ra, 27f
10:               jal          ra, 24f
11:               jal          t1, 23f
12:               jal          t1, 7b
13:               jal          ra, 22f
14:               jal          ra, 17f
15:               jal          ra, 5b
16:               jal          ra, 11b
17:               jal          t1, 3b
18:               jal          s8, 4b
19:               jal          a2, 1b
20:               jal          t1, 16b
21:               jal          a3, 18b
22:               jal          t1, 0b
23:               jal          t1, 21b
24:               jal          ra, 2b
25:               jal          gp, 12b
26:               jal          ra, 19b
27:               jal          t0, 6b
28:               jal          tp, 9b
29:               auipc        s10, 82013
sub_4_10:         jal          t1, 2f
0:                jal          a3, 1f
1:                jal          tp, 15f
2:                jal          t1, 16f
3:                jal          t6, 11f
4:                jal          ra, 14f
5:                jal          ra, 12f
6:                jal          s11, 3b
7:                jal          ra, 5b
8:                jal          ra, 20f
9:                jal          s8, 23f
10:               jal          t1, 4b
11:               jal          a1, 8b
12:               jal          t6, 10b
13:               jal          ra, 18f
14:               jal          ra, 9b
15:               jal          t2, 17f
16:               jal          ra, 6b
17:               jal          ra, 22f
18:               jal          ra, 19f
19:               jal          t1, 0b
20:               jal          ra, 13b
21:               jal          t1, 7b
22:               jal          ra, 21b
23:               sra          a7, t5, t5
                  add          ra, s1, t0
                  sltiu        gp, s3, 1228
                  sub          ra, s3, a3
                  srai         ra, s10, 5
                  nop
                  sll          s0, s1, s8
                  ori          s4, s9, -9
                  bne          s7, t4, 14f
                  bltu         tp, a4, 15f
                  or           t1, s3, s3
                  beq          t6, gp, 13f
                  or           a3, s11, s2
                  and          sp, s6, gp
13:               ori          t3, s11, -1678
14:               blt          s8, s3, 22f
15:               srai         s10, t3, 1
                  sltiu        s7, s1, -43
                  slli         s2, a1, 26
                  sub          s4, a0, s8
                  slli         tp, a1, 5
                  andi         sp, s7, -1747
                  slli         a1, s7, 9
22:               bltu         a1, s6, 37f
                  and          t5, t4, a1
                  srli         t0, t1, 26
                  addi         zero, a3, -1690
                  sll          s1, s1, s11
                  beq          s2, a4, 33f
                  slt          a4, zero, a4
                  addi         s3, t5, -41
                  sub          a1, a0, a6
                  and          a3, s0, a1
                  bltu         ra, t3, 43f
33:               ori          ra, s3, 1956
                  sltu         a5, t0, s7
                  sub          t2, a3, zero
                  slti         t3, s5, -183
37:               sra          s8, s0, a2
                  auipc        s8, 425474
                  bgeu         s9, s0, 43f
                  or           zero, s3, s10
                  sltiu        a0, s1, 1171
                  sub          s7, a7, a5
43:               xori         a0, s6, 330
                  lui          a3, 177259
                  slt          a0, s8, a7
                  or           a1, s9, s4
                  bne          s2, s1, 61f
                  slti         s0, zero, 709
                  or           ra, a4, gp
                  sltiu        a2, s11, 321
                  xor          t3, a6, s3
                  bge          a6, ra, 60f
                  srl          s7, t2, a4
                  xori         t0, sp, -16
                  bgeu         a6, t4, 67f
                  bgeu         s3, t2, 75f
                  blt          a6, gp, 75f
                  slt          s3, s8, t6
                  xor          a2, t2, gp
60:               sltiu        t2, t3, -1471
61:               bge          t0, a1, 66f
                  add          s9, s2, t2
                  sll          zero, s0, s0
                  srl          s5, a3, s5
                  srl          s9, s1, s3
66:               bgeu         ra, a7, 78f
67:               sltu         t1, s3, a6
                  bltu         s4, s5, 71f
                  auipc        s11, 105044
                  auipc        t6, 542147
71:               beq          a4, t3, 75f
                  slti         s1, s11, -651
                  and          t0, t2, a2
                  sltu         s7, a7, a2
75:               srli         ra, s11, 20
                  bge          s6, a3, 95f
                  sltiu        a2, a2, 1115
78:               sltu         a3, a7, a1
                  srli         a0, a1, 31
                  srl          s3, s7, t0
                  srli         tp, s8, 31
                  bgeu         a4, t0, 84f
                  srai         t5, s0, 15
84:               srl          gp, t6, ra
                  slt          s1, s5, gp
                  slt          s2, s11, t6
                  auipc        t1, 13121
                  sltiu        a1, t0, -1107
                  srai         t1, s1, 15
                  andi         s10, s4, 1139
                  bgeu         a4, t2, 92f
92:               addi         s9, s9, -819
                  slt          s9, s9, t2
                  srli         s7, t3, 13
95:               sll          tp, a0, s0
                  srl          s7, t5, t5
                  andi         t6, gp, 1396
                  blt          zero, zero, 111f
                  srai         a1, s1, 28
                  slti         t3, s6, -1513
                  bne          s1, t0, 105f
                  sra          t5, s7, a5
                  addi         s1, s3, -237
                  bge          s6, a6, 119f
105:              beq          s5, t1, 107f
                  srl          a7, s9, t3
107:              slt          t5, a2, a5
                  bge          a0, a7, 114f
                  sub          t6, a2, sp
                  or           zero, zero, s1
111:              slli         a1, s4, 20
                  slt          s3, s10, a0
                  slli         t1, a2, 26
114:              auipc        s9, 206965
                  bge          s2, s6, 126f
                  andi         a1, a1, 1132
                  sltu         a4, sp, s10
                  sra          t6, s11, sp
119:              srai         s3, s1, 18
                  andi         t0, t4, -371
                  bltu         t2, a6, 127f
                  or           t0, t3, a6
                  sra          s8, a7, s7
                  auipc        a4, 752066
                  xori         a2, s7, 1118
126:              srl          tp, s4, a0
127:              andi         ra, s6, -1548
                  xori         a3, s8, 701
                  bge          s0, sp, 141f
                  auipc        s8, 127712
                  auipc        s1, 902723
                  bltu         zero, t6, 146f
                  auipc        t0, 473887
                  sll          s7, a3, zero
                  ori          zero, t5, 1921
                  slti         a1, s10, 980
                  or           a0, sp, s5
                  sub          s7, s5, a0
                  xor          a2, a4, t6
                  slt          a3, s1, a5
141:              srai         t5, a0, 8
                  bgeu         t4, s1, 144f
                  sra          a4, a1, t5
144:              srli         t5, a4, 12
                  auipc        zero, 614668
146:              sub          s7, a0, zero
                  srl          s8, a1, t1
                  or           t1, s8, s1
                  srli         tp, tp, 22
                  bgeu         t6, ra, 157f
                  and          zero, t2, s0
                  nop
                  nop
                  sltiu        zero, sp, 779
                  slti         s11, a4, -1514
                  addi         a3, t6, -1035
157:              xor          zero, a4, t4
                  slli         a7, a1, 9
                  andi         s9, s3, 1089
                  andi         tp, s0, -243
                  bltu         t6, a1, 173f
                  beq          a3, s6, 165f
                  xori         t2, s3, 674
                  xori         zero, t5, -796
165:              bgeu         a2, s1, 179f
                  bne          gp, t5, 170f
                  slli         ra, t2, 1
                  nop
                  slli         tp, gp, 11
170:              sub          s1, t3, t6
                  nop
                  bltu         s1, t2, 190f
173:              slti         s9, a7, 452
                  bltu         a6, s6, 188f
                  bltu         t5, t4, 194f
                  sra          a0, t6, a7
                  srai         a0, a3, 29
                  bne          tp, s0, 180f
179:              sltiu        t5, s4, -254
180:              nop
                  ori          t0, s7, 160
                  auipc        s7, 483979
                  ori          s1, zero, 485
                  sltu         a5, s9, zero
                  addi         ra, tp, -212
                  bge          t0, a5, 192f
                  srai         t6, a0, 24
188:              xor          s8, s0, t2
                  sltiu        s10, t0, 1870
190:              or           s4, gp, s4
                  bgeu         t1, t4, 195f
192:              sra          s11, sp, t3
                  slli         t6, t6, 13
194:              sra          gp, t5, tp
195:              slt          a4, t3, s3
                  and          s8, t0, t3
                  xor          a5, s5, s9
                  sll          a1, sp, t0
                  ori          tp, s5, 1840
                  bge          t4, s2, 208f
                  bltu         a1, s5, 207f
                  sll          t2, s8, t6
                  bne          sp, a7, 211f
                  sub          a7, a2, s5
                  slt          s10, s0, s3
                  or           t2, s2, s6
207:              bne          a7, s9, 220f
208:              bne          s5, a2, 227f
                  sltu         a7, gp, ra
                  bgeu         a7, a2, 213f
211:              blt          a3, t4, 213f
                  ori          a3, s2, 1078
213:              nop
                  srai         t1, s6, 13
                  sltiu        sp, t0, 1580
                  slli         tp, a3, 11
                  or           zero, s0, a4
                  sra          tp, s3, s5
                  auipc        t2, 994635
220:              or           tp, s10, zero
                  srai         a2, s11, 4
                  xor          a0, a6, s7
                  and          s7, s1, sp
                  auipc        a2, 221726
                  ori          t3, s4, -1378
                  srai         sp, sp, 20
227:              sub          gp, s2, a5
                  bge          a4, s3, 243f
                  bge          a4, s11, 241f
                  sll          s9, zero, a2
                  blt          t6, s6, 243f
                  bne          s6, sp, 243f
                  bgeu         s10, s9, 240f
                  bgeu         s5, a4, 239f
                  beq          tp, s0, 239f
                  sltu         t6, a0, s1
                  xori         tp, t5, -1093
                  andi         tp, s5, -243
239:              bge          a5, a5, 254f
240:              bgeu         s8, s1, 251f
241:              or           a4, a7, s0
                  or           t5, a5, tp
243:              xori         s2, a2, -86
                  addi         sp, s5, -146
                  or           s3, a5, s6
                  lui          ra, 890470
                  sltu         tp, a6, t1
                  bge          t3, a5, 250f
                  bgeu         t0, a2, 255f
250:              addi         gp, s3, -1353
251:              nop
                  sra          a5, s4, a6
                  srl          t0, s4, sp
254:              slti         a1, s9, 598
255:              sltu         a5, s5, t1
                  sll          a7, sp, s3
                  andi         a4, s3, 681
                  addi         t2, zero, 1013
                  and          s8, ra, a5
sub_4_22:         jal          t1, 2f
0:                jal          a0, 3f
1:                jal          t6, 8f
2:                jal          ra, 14f
3:                jal          ra, 6f
4:                jal          ra, 16f
5:                jal          t1, 12f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          t1, 15f
9:                jal          ra, 10f
10:               jal          s0, 0b
11:               jal          t1, 1b
12:               jal          s4, 17f
13:               jal          ra, 7b
14:               jal          s3, 9b
15:               jal          t1, 13b
16:               jal          ra, 11b
17:               slti         tp, t0, 168
                  xor          s8, a2, zero
                  bgeu         sp, s3, 262f
262:              add          gp, a7, a0
                  srl          t1, a4, s0
                  slt          s8, t4, s10
                  bltu         s3, tp, 284f
                  sra          t1, s1, s9
                  add          a2, a5, ra
                  beq          s2, s8, 279f
                  and          s1, a0, s8
                  xor          t3, gp, a0
                  srl          s1, a2, a6
                  add          s8, s9, t5
                  slli         s9, s7, 5
                  or           tp, a6, s6
                  add          a1, zero, s7
                  lui          s4, 631888
                  slli         s3, s0, 17
                  bne          t5, a2, 293f
279:              andi         s4, t3, -1601
                  xor          a4, a1, s1
                  lui          s0, 357616
                  auipc        tp, 862575
                  add          a0, a0, s11
284:              srai         a0, gp, 28
                  add          t3, gp, s7
                  sltu         zero, s9, s4
                  and          a3, t3, s11
                  sltu         s9, s0, ra
                  bgeu         a1, s2, 300f
                  srai         s9, s4, 21
                  srl          a3, t2, zero
                  xor          t3, s1, a7
293:              bne          s3, a2, 305f
                  sltu         s1, t4, t6
                  bltu         s10, s3, 309f
                  sll          s10, tp, s2
                  sub          a1, a4, a3
                  nop
                  srli         t6, s9, 10
300:              srli         s4, t1, 12
                  lui          a5, 548400
                  bne          a0, s5, 308f
                  bge          gp, tp, 306f
                  nop
305:              blt          s0, t4, 313f
306:              sll          s5, t1, a4
                  bne          t2, gp, 309f
308:              bltu         s4, a7, 320f
309:              slt          a4, s1, gp
                  xori         s1, s5, 211
                  bltu         t2, s11, 323f
                  bge          t6, s7, 330f
313:              andi         gp, gp, 486
                  sltiu        s8, t6, -28
                  bne          s11, a1, 322f
                  bge          zero, t1, 318f
                  and          a4, a3, t6
318:              bge          t6, a6, 322f
                  ori          s7, t5, -603
320:              sll          a4, sp, t5
                  ori          a5, s2, -909
322:              bne          s0, t1, 330f
323:              srai         a2, s3, 23
                  blt          s2, t0, 329f
                  slli         s11, s11, 3
                  sra          gp, s4, t5
                  bne          gp, s8, 340f
                  lui          gp, 922668
329:              srl          s1, zero, s11
330:              or           s7, s4, t5
                  slli         a7, zero, 2
                  add          s5, s0, a1
                  ori          s2, s8, -1488
                  add          s7, s5, t2
                  or           s1, a0, s3
                  blt          sp, t4, 340f
                  slti         s0, s9, -1063
                  add          t3, t0, s9
                  sltiu        s8, t1, 372
340:              andi         s7, a0, -2013
                  sub          s8, a7, s2
                  srl          a4, gp, s1
                  xor          sp, s1, t3
                  ori          s10, sp, 523
                  bgeu         a1, t0, 347f
                  auipc        s0, 33503
347:              slti         ra, s1, -1652
                  ori          s11, a2, 966
                  blt          s1, gp, 352f
                  sub          s8, t6, a4
                  slt          a4, s2, s4
352:              bne          t6, a7, 367f
                  ori          s1, a3, 866
                  slt          a0, s10, t5
                  ori          tp, t6, 469
                  or           a4, s6, s10
                  srli         t6, a6, 8
                  auipc        s9, 238519
                  slt          a3, t4, s10
                  addi         zero, s4, 665
                  auipc        a7, 833271
                  or           s7, a4, a6
                  addi         t5, zero, -1173
                  addi         s9, a0, -1092
                  xori         s3, a7, -1215
                  slt          t2, zero, sp
367:              and          t1, a7, a1
                  auipc        t0, 886239
                  xori         s0, t5, -1302
                  sltiu        s11, t5, 523
                  srai         s3, t4, 17
                  sltu         t3, ra, a5
                  beq          s0, a7, 392f
                  addi         s11, t4, -1405
                  bltu         s2, ra, 382f
                  blt          s9, a7, 382f
                  add          s0, a6, s4
                  andi         t2, sp, 1389
                  bne          a7, a3, 383f
                  lui          s3, 549059
                  sub          s2, s7, ra
382:              add          a3, a0, s3
383:              or           gp, s4, s6
                  bge          s1, s3, 385f
385:              bge          a0, a5, 399f
                  andi         s5, s5, -227
                  nop
                  auipc        tp, 11309
                  srl          a7, gp, a4
                  srl          tp, t2, s5
                  sub          sp, t2, sp
392:              sltiu        s0, a4, -2003
                  bne          s6, s10, 399f
                  beq          s6, t1, 413f
                  bge          s6, t0, 402f
                  sll          s8, t6, a6
                  ori          t5, t2, -150
                  nop
399:              auipc        t2, 788514
                  sltiu        t0, zero, 1243
                  andi         zero, s7, -1108
402:              bne          t0, s6, 417f
                  xori         gp, s10, 703
                  srai         s10, ra, 4
                  sub          gp, s0, s8
                  and          t1, gp, ra
                  nop
                  srli         t2, s5, 1
                  slli         a7, t2, 14
                  srai         s3, ra, 12
                  beq          gp, sp, 413f
                  srai         s3, a5, 7
413:              bge          zero, s4, 419f
                  addi         a1, tp, 983
                  srai         t5, t2, 22
sub_4_27:         jal          t1, 6f
0:                jal          s11, 22f
1:                jal          ra, 5f
2:                jal          t1, 8f
3:                jal          tp, 27f
4:                jal          a1, 16f
5:                jal          s10, 15f
6:                jal          tp, 0b
7:                jal          s10, 24f
8:                jal          t1, 17f
9:                jal          t1, 12f
10:               jal          t6, 29f
11:               jal          t1, 28f
12:               jal          t2, 7b
13:               jal          ra, 3b
14:               jal          s0, 9b
15:               jal          ra, 20f
16:               jal          t1, 23f
17:               jal          ra, 1b
18:               jal          ra, 25f
19:               jal          ra, 10b
20:               jal          ra, 19b
21:               jal          sp, 14b
22:               jal          t1, 26f
23:               jal          ra, 21b
24:               jal          ra, 13b
25:               jal          t1, 11b
26:               jal          ra, 18b
27:               jal          sp, 2b
28:               jal          ra, 4b
29:               sub          s7, s2, a2
                  sub          a4, a4, s11
417:              sltiu        s0, a1, 1325
                  slti         zero, s5, -946
419:              auipc        s9, 780453
                  auipc        t1, 257548
                  ori          s4, s0, 130
                  bgeu         s11, a2, 433f
                  auipc        t0, 150503
                  slli         s11, s6, 6
                  sltiu        ra, s6, 623
                  and          s0, s6, t6
                  andi         a3, s1, 992
                  auipc        t3, 10621
                  beq          gp, zero, 433f
                  nop
                  xor          a2, t0, zero
                  add          s7, s8, a6
433:              slti         t3, s5, 366
                  bge          a6, a4, 446f
                  lui          a0, 756226
                  lui          a2, 433228
                  srai         t2, s7, 7
                  slli         s3, t4, 9
                  srl          s9, ra, t0
                  srai         t0, ra, 1
                  slt          a1, t2, a3
                  srli         t5, s10, 10
                  slti         a0, a3, 15
                  add          a7, t4, a3
                  bltu         t5, t0, 456f
446:              blt          t2, t6, 452f
                  bne          s11, s5, 465f
                  bltu         a1, s5, 449f
449:              bltu         a2, a5, 455f
                  bltu         s9, s0, 458f
                  sll          tp, gp, a6
452:              slti         s7, a4, 1807
                  beq          t5, a0, 467f
                  sub          sp, t4, sp
455:              bge          a6, a6, 469f
456:              add          t3, a3, a5
                  xor          s1, t0, a6
458:              sltu         a4, t5, s7
                  slti         a3, s7, 952
                  slti         t5, a7, -1333
                  addi         s0, t3, -1008
                  nop
                  and          t0, s11, t4
                  andi         t1, sp, 1729
465:              bge          s10, sp, 480f
                  bltu         ra, gp, 470f
467:              slt          s10, s0, a4
                  bne          t4, t0, 480f
469:              lui          ra, 407364
470:              nop
                  add          s5, t5, s11
                  sltu         s5, t0, s8
                  lui          t0, 791592
                  srai         s5, a7, 13
                  andi         s9, s11, 437
                  bge          tp, s6, 478f
                  nop
478:              bge          s8, zero, 481f
                  xor          s11, sp, t0
480:              srl          s11, t4, s10
481:              xori         a5, s4, -130
                  auipc        s5, 137522
                  srli         s2, t4, 29
                  lui          s2, 305101
                  xori         t1, t2, 1738
                  bltu         t2, t1, 493f
                  ori          s3, a7, 639
                  or           s4, ra, t5
sub_4_31:         jal          t1, 1f
0:                jal          sp, 14f
1:                jal          s10, 9f
2:                jal          ra, 4f
3:                jal          a3, 5f
4:                jal          t6, 10f
5:                jal          ra, 2b
6:                jal          gp, 0b
7:                jal          ra, 15f
8:                jal          ra, 13f
9:                jal          ra, 11f
10:               jal          t1, 8b
11:               jal          t1, 6b
12:               jal          s9, 3b
13:               jal          t0, 7b
14:               jal          ra, 12b
15:               slti         s11, s10, -1775
                  bgeu         a7, s2, 508f
                  or           s8, t5, t4
                  sll          a5, s10, s2
                  bne          s3, a5, 500f
493:              slli         s9, ra, 16
                  addi         t6, sp, 652
                  slt          s10, tp, t4
                  srli         a7, gp, 5
                  srli         s0, a3, 30
                  beq          s11, s0, 511f
                  beq          t0, a7, 503f
500:              slti         a2, a5, 540
                  auipc        t5, 577211
                  and          a7, s0, a3
503:              bge          t1, t3, 506f
                  bltu         a6, s1, 509f
                  bgeu         t2, s0, 507f
506:              lui          ra, 20958
507:              add          a3, s3, s4
508:              sra          t0, s6, s3
509:              ori          s1, t3, 2009
                  or           s5, s3, a0
511:              andi         a3, t0, -405
                  lui          t0, 863131
                  sll          a1, s10, a5
                  sra          s1, a6, t1
                  bge          t1, s8, 527f
                  lui          s7, 26850
                  slli         a2, a0, 9
                  and          a3, a6, s4
                  sub          s0, t1, a3
                  slli         t1, s4, 11
                  or           gp, a2, t4
                  slti         s10, ra, -1574
                  bltu         a2, s8, 528f
                  xori         a3, s10, 1659
                  and          s1, gp, a6
                  slti         a5, s9, -1460
527:              bge          t2, t4, 541f
528:              slt          s4, a0, s6
                  bne          t1, s6, 537f
                  sltu         tp, sp, t6
                  slti         sp, s2, -1493
                  bltu         t3, s9, 547f
                  sra          a0, a0, s0
                  blt          s2, sp, 547f
                  bne          t2, a0, 554f
                  slt          t6, a1, s11
537:              sll          s1, a5, s4
                  slli         a5, t0, 13
                  bltu         a4, t6, 551f
                  bgeu         a6, a0, 558f
541:              bne          s7, a4, 543f
                  sub          a7, s6, sp
543:              bltu         t5, t1, 547f
                  bltu         s8, s1, 548f
                  xor          a0, t6, t2
                  add          s3, a7, zero
547:              or           a3, s9, zero
548:              auipc        t0, 445642
                  sltu         t6, s4, s6
                  ori          zero, ra, -1746
551:              and          s8, t6, s9
                  xori         zero, s3, -1033
                  ori          tp, gp, 296
554:              sub          s9, s4, tp
                  nop
                  slli         ra, s5, 17
                  slt          sp, sp, s11
558:              srli         zero, sp, 19
                  bne          a1, a7, 565f
                  ori          sp, a0, -1229
                  srai         t5, t5, 19
                  bltu         t6, s6, 581f
                  beq          a1, a3, 569f
                  srl          t6, a1, a6
565:              srl          s8, t5, a0
                  and          a4, t5, t4
                  bgeu         t3, s1, 575f
                  sub          s9, t3, a4
569:              blt          a3, a7, 570f
570:              blt          s6, t5, 576f
                  beq          t5, s10, 586f
                  sub          t6, zero, t0
                  nop
                  addi         a5, s9, 1286
575:              slt          t1, s10, t0
576:              srl          t0, s11, zero
                  lui          a3, 808813
                  sltiu        sp, zero, 1665
                  sra          gp, a2, tp
                  bne          s9, sp, 584f
581:              srli         s1, t3, 16
                  ori          a4, t2, -74
                  bge          s8, t4, 597f
584:              slli         a7, ra, 28
                  addi         t6, t5, -1372
586:              add          t0, t2, a0
                  slli         s4, ra, 11
                  srli         t6, a6, 15
                  bge          a4, s7, 596f
                  bgeu         s9, t5, 597f
                  blt          ra, s5, 602f
                  ori          s5, t0, 1846
                  srai         s10, t3, 7
                  nop
                  slli         zero, t4, 25
596:              srai         s3, s6, 8
597:              bne          a1, a2, 608f
                  bltu         ra, s9, 610f
                  bltu         s4, s2, 602f
                  nop
                  auipc        a7, 407158
602:              bltu         a7, a1, 604f
                  xor          a7, s2, t4
604:              slli         s5, sp, 26
                  slli         s2, tp, 25
                  sltu         tp, sp, a7
                  and          s0, a6, t5
608:              bltu         a4, s9, 620f
                  and          s9, ra, t0
610:              sub          a4, t5, a6
                  slti         t0, a7, 495
                  sltiu        t2, s2, -1141
                  addi         s3, ra, -1521
                  slli         t2, a4, 27
                  blt          zero, a3, 618f
                  slli         t3, t3, 9
                  slti         a0, ra, 495
618:              sltu         a4, t3, a5
                  srl          t5, a1, a4
620:              slt          a3, s9, s1
                  add          s11, s0, s11
                  nop
                  srai         s7, s10, 18
                  srl          s9, s3, s6
                  add          t5, t2, a6
                  bge          s8, a1, 628f
                  bgeu         a5, s9, 629f
628:              xori         tp, a5, 546
629:              bne          zero, t3, 633f
                  srai         s11, a2, 10
                  sll          s7, s2, s9
                  xori         tp, t4, -385
633:              xori         s1, a4, -764
                  lui          ra, 547446
                  srli         sp, a6, 20
                  bgeu         s2, t1, 640f
                  sltu         a7, t0, a4
                  sra          a1, t5, s8
                  auipc        s9, 360210
640:              xori         s1, a3, 1792
                  nop
                  sltiu        a3, s6, 1362
                  srl          a3, s10, t3
                  xor          a2, t5, sp
                  bge          t6, s8, 652f
                  or           a4, a2, a2
                  sub          t1, zero, s8
                  beq          a7, s2, 655f
                  or           a0, a7, ra
                  bltu         t1, s9, 665f
                  xor          a4, s3, s1
652:              nop
                  srai         s10, a1, 17
                  sll          s11, s11, a2
655:              sll          s8, s1, a0
                  slt          s0, s8, gp
                  srl          s10, a7, t1
                  xor          t5, s2, ra
                  slti         tp, s11, 1351
                  xori         zero, s8, -1290
                  ori          a5, t6, -836
                  xor          sp, t4, s1
                  or           s11, a0, a2
                  beq          s9, s2, 678f
665:              bge          ra, tp, 676f
                  addi         t1, t4, 791
                  andi         tp, s10, 507
                  srai         a2, a2, 25
                  slli         a3, t1, 27
                  andi         a0, a1, 1118
                  srl          t3, a4, t5
                  auipc        a3, 236498
                  bgeu         t5, s4, 685f
                  slli         t1, a4, 3
                  beq          s2, s3, 683f
676:              xor          t1, s1, a3
                  srai         s0, tp, 23
678:              addi         t6, s4, 1289
                  bltu         s4, gp, 691f
                  sll          a0, s2, t0
                  add          s0, t4, ra
                  bltu         s8, s10, 686f
683:              bgeu         s0, a2, 701f
                  addi         s8, t0, 2018
685:              and          a0, a5, s11
686:              auipc        s2, 209261
                  srl          tp, a6, s11
                  addi         tp, a4, -1652
                  slli         a1, a0, 1
                  and          s5, ra, t4
691:              sra          t1, a6, a0
                  sra          gp, t4, ra
                  xor          s9, a1, t6
                  bne          zero, a4, 697f
                  auipc        t3, 932974
                  srai         s7, s8, 8
697:              add          s1, t5, s11
                  slti         s8, s4, 818
                  ori          s11, s11, -1753
                  sltiu        sp, zero, -1864
701:              bgeu         s7, a0, 713f
                  xor          s1, s7, a1
                  bne          a0, a0, 711f
                  and          s0, s0, a0
                  auipc        a4, 109399
                  blt          s4, s4, 711f
                  auipc        tp, 234398
                  bltu         s9, zero, 714f
                  sub          s10, a4, s3
                  lui          gp, 340926
711:              blt          sp, s6, 725f
                  slli         a5, zero, 7
713:              bge          s6, s8, 732f
714:              sltu         s0, a7, t3
                  slt          s9, a3, s9
                  andi         a2, t4, 224
                  slti         a1, a4, 1077
                  sltiu        t3, t1, -350
                  sra          a7, t3, zero
                  xor          t1, a0, a1
                  blt          s6, s7, 723f
                  auipc        s3, 105225
723:              or           t2, ra, zero
                  lui          t2, 544993
725:              slti         s3, s11, 414
                  andi         a0, s2, -1831
                  nop
                  xori         sp, s3, -1191
                  and          a5, a2, s4
                  srai         t6, t4, 31
                  xor          a3, sp, t6
732:              xori         s10, s5, 1905
                  addi         t2, t4, 1352
                  sll          s11, gp, t3
                  or           tp, t2, tp
                  srl          s2, s0, s11
                  nop
                  sub          t5, a3, s3
                  srli         s0, s7, 18
                  beq          a7, tp, 755f
                  sltu         tp, t4, tp
                  sltiu        a0, t4, -176
                  srai         tp, t4, 30
                  sra          a1, s11, s8
                  andi         a4, t1, -901
                  slli         a5, s0, 29
                  auipc        a7, 546665
                  srli         s4, zero, 29
                  sub          a7, gp, a5
                  sltiu        a1, s8, -944
                  bltu         s0, t1, 762f
                  add          t3, s10, s3
                  auipc        t6, 208373
                  srli         s3, s3, 10
755:              or           zero, a4, s4
                  bge          a4, a5, 757f
757:              sll          t1, a3, a0
                  auipc        t6, 507083
                  srai         a4, t3, 7
                  add          a3, t6, s9
                  or           ra, a2, t6
762:              lui          t3, 679869
                  srl          s4, s7, s8
                  auipc        a2, 407379
                  and          sp, a6, a1
                  bne          a3, a2, 772f
                  auipc        t3, 934597
                  srl          s0, t4, tp
                  xor          gp, s6, s4
                  bgeu         t4, gp, 783f
                  addi         t3, s4, 887
772:              auipc        s5, 1024779
                  beq          t2, sp, 776f
                  nop
                  srai         ra, a6, 24
776:              sub          s7, tp, a1
                  slti         a3, t0, 1470
                  sll          ra, t0, t4
                  slli         s9, s3, 28
                  andi         s1, s4, -1879
                  sltiu        s10, t2, 1734
                  blt          t3, t1, 801f
783:              sll          a0, s1, s10
                  sltu         tp, gp, s1
                  bne          t5, a7, 791f
                  bgeu         t2, a7, 788f
                  bge          s11, a0, 795f
788:              bgeu         s1, s9, 792f
                  srli         gp, a3, 27
                  srai         s3, s7, 18
791:              andi         t2, a1, -760
792:              slt          a0, s4, t4
                  slti         tp, s10, -331
                  beq          t2, t5, 805f
795:              bltu         sp, s7, 810f
                  nop
                  srl          a0, s10, t1
                  bge          s0, tp, 811f
                  sltiu        zero, s3, 763
                  srai         t3, s3, 15
801:              bne          a1, a2, 820f
                  sltu         s1, s10, s5
                  sltiu        ra, s2, 1421
                  bltu         t5, a5, 822f
805:              addi         zero, t1, -1005
                  beq          sp, a3, 811f
                  bne          s6, s5, 809f
                  sub          s3, zero, a3
809:              srli         a4, a3, 26
810:              slti         t3, s10, -1240
811:              add          s10, s5, s8
                  xori         zero, s10, 331
                  sltu         t6, a3, gp
                  sltu         zero, a3, s7
                  bne          s7, t0, 827f
                  sra          t3, a7, t1
                  add          s10, t0, zero
                  xor          s0, s11, s4
                  srai         a5, s9, 25
820:              sltiu        t2, t4, -1697
                  slli         s0, s1, 8
822:              addi         s3, a2, 459
                  sltu         s1, s0, t0
                  ori          a5, t3, -686
                  sll          s5, a1, a7
                  bne          s6, s9, 830f
827:              and          t1, s9, s7
                  auipc        s4, 505522
                  bne          s4, s1, 831f
830:              andi         s4, s0, 605
831:              bgeu         t4, a0, 842f
                  addi         s1, t2, 1184
                  lui          s0, 374160
                  sltu         s10, a6, a5
                  bgeu         a1, t5, 841f
                  andi         a0, a6, 1432
                  sra          a2, s3, s5
                  ori          a5, a3, 1911
                  srai         a7, a7, 1
                  sll          ra, t5, s5
841:              bne          a5, a1, 844f
842:              add          s1, a1, a6
                  slti         s2, s2, -817
844:              blt          t4, t6, 845f
845:              sra          s3, ra, s5
                  andi         t3, s1, -1711
                  addi         s2, s2, -12
                  bne          s3, ra, 862f
                  srl          a2, t6, zero
                  and          ra, a4, tp
                  add          s10, s3, a7
                  addi         t6, s3, -1487
                  blt          t6, s0, 867f
                  addi         a2, a3, -1446
                  sltu         a0, a2, s5
                  slt          t0, s2, t5
                  sltiu        sp, a4, -1277
                  sra          s4, t4, a3
                  bltu         s1, s3, 865f
                  ori          a4, s1, -295
                  sltiu        t2, a7, -314
862:              blt          s10, a1, 868f
                  xori         s0, s8, -1649
                  bne          ra, s4, 879f
865:              auipc        t0, 296811
                  sra          sp, t3, t2
867:              bne          s4, s7, 875f
868:              sub          a0, ra, a3
                  sra          a7, s9, s6
                  slli         sp, a3, 9
                  xor          s9, s6, s8
                  xori         s2, a3, 671
                  auipc        a4, 401137
                  srai         t6, a6, 31
875:              add          s10, t5, a6
                  nop
                  slt          s10, s5, a4
                  add          t3, zero, s1
879:              sub          t3, t2, a6
                  andi         s5, a7, -54
                  srl          t0, s0, zero
                  slti         a1, a4, 110
                  sra          tp, tp, a3
                  sltu         tp, s1, s9
                  sll          t2, s10, s9
                  srli         a0, s1, 17
                  srli         s10, a0, 24
                  andi         s5, s1, 1167
                  lui          gp, 893330
                  bltu         s6, s3, 897f
                  bgeu         t4, s4, 903f
                  slti         s9, a1, -261
                  slt          t1, t1, s11
                  xori         a4, ra, -293
                  or           s9, s2, a1
                  srli         t5, t0, 25
897:              slti         a0, s10, 65
                  auipc        a2, 290228
                  srl          s11, s0, s5
                  sltu         s8, t3, s7
                  bltu         s9, tp, 905f
                  srl          s4, s11, s3
903:              and          s8, a1, s2
                  slti         sp, s4, 1206
905:              sltiu        t2, a5, 427
                  sltiu        s3, a4, -795
                  nop
                  srl          t2, s7, s1
                  andi         ra, a7, 268
                  andi         a7, t5, 1976
                  add          a5, s4, a1
                  xori         s0, s3, -527
                  slt          s2, s2, s3
                  nop
                  srli         a4, zero, 2
                  srl          s3, s10, a4
                  slli         zero, s7, 28
                  sltu         s7, s1, tp
                  srai         a0, s3, 5
                  slt          a7, s6, s0
                  srai         t2, gp, 3
                  and          s2, t0, t2
                  bne          s1, s4, 925f
                  xor          t5, t0, s7
925:              sub          t6, s4, a5
                  xor          s4, t2, s6
                  auipc        t2, 169838
                  addi         gp, zero, 477
                  addi         a7, t6, -1100
                  xor          t6, s10, s9
                  blt          t3, gp, 950f
                  nop
                  or           s2, t6, a0
                  addi         zero, s7, 960
                  slti         t5, a0, 900
                  srl          a7, t3, a0
                  lui          t3, 1036295
                  xori         a2, s2, 1410
                  add          a4, s2, t0
                  addi         t6, t1, 506
                  sub          t1, tp, zero
                  sltiu        gp, tp, -588
                  andi         a4, a7, 13
                  srl          s11, sp, s8
                  bge          s0, s2, 952f
                  xor          a1, t6, s9
                  andi         tp, a0, 394
                  srl          a3, sp, a3
                  srli         s3, s9, 24
950:              add          s0, s7, a7
                  bne          s3, s1, 954f
952:              srai         tp, s5, 30
                  sll          s10, s11, sp
954:              srli         gp, s0, 6
                  and          s3, t5, tp
                  srai         a2, s3, 28
                  beq          t5, t3, 969f
                  andi         a5, zero, -1867
                  bge          t4, s4, 963f
                  sub          s5, t4, s5
                  bge          zero, tp, 980f
                  slt          s0, s10, s3
963:              slt          s2, sp, s2
                  lui          gp, 302214
                  xori         a2, sp, -1538
                  blt          t5, t4, 978f
                  xor          s9, s0, s7
                  lui          a1, 936508
969:              srl          tp, s8, t3
                  sltu         s4, a3, tp
                  srl          s11, sp, s1
                  slti         a1, s3, 1911
                  slti         s7, s9, 865
                  srli         tp, a7, 29
                  sll          t5, a4, s8
                  sltiu        a4, s4, -502
                  nop
978:              xor          a2, s9, t3
                  nop
980:              xor          a7, t2, s1
                  and          s8, a6, s1
                  bltu         a2, a0, 990f
                  xori         a4, ra, -26
                  srli         ra, tp, 18
                  and          s5, s2, t3
                  slti         gp, t0, 1882
                  xori         s1, a2, -1186
                  nop
                  srai         s9, a1, 0
990:              xor          s5, t4, s7
                  srai         s4, a6, 6
                  sll          t5, s10, a2
                  sub          s5, a0, s1
                  add          t1, ra, zero
                  xori         t3, a7, 598
                  slt          t3, a6, a6
                  sltu         t1, s8, t1
                  bltu         s1, t0, 1012f
                  xori         s8, a0, -1585
                  and          t1, t5, s0
                  xor          t1, s5, s10
                  bltu         a7, s7, 1005f
                  xor          s11, sp, a7
                  or           t0, t1, t3
1005:             sltu         t0, ra, gp
                  xor          s5, tp, t1
                  add          s5, s0, s8
                  addi         gp, gp, 1630
                  xori         sp, a0, -350
                  sra          t5, sp, t1
                  ori          s4, s6, 748
1012:             xor          s3, ra, tp
                  or           t2, a4, s1
                  addi         s8, s3, -380
                  bne          zero, s7, 1027f
                  or           a3, a0, t5
                  bge          t1, a2, 1023f
                  ori          tp, a1, -720
                  srl          a5, t4, gp
                  sltu         gp, a2, t0
                  nop
                  nop
1023:             slti         ra, a5, 689
                  or           t6, s10, a2
                  srl          t2, t1, s2
                  srli         t6, a3, 7
1027:             addi         tp, ra, 454
                  xori         a2, a2, 508
                  srl          s10, s4, s9
sub_4_1:          jal          t1, 4f
0:                jal          sp, 3f
1:                jal          a3, 0b
2:                jal          sp, 5f
3:                jal          t1, 9f
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          ra, 18f
7:                jal          t1, 19f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               jal          ra, 21f
11:               jal          ra, 8b
12:               jal          a0, 14f
13:               jal          a1, 10b
14:               jal          ra, 23f
15:               jal          ra, 20f
16:               jal          ra, 2b
17:               jal          s1, 24f
18:               jal          s5, 22f
19:               jal          ra, 13b
20:               jal          t1, 16b
21:               jal          ra, 17b
22:               jal          t1, 15b
23:               jal          t1, 1b
24:               andi         t2, ra, -621
                  auipc        a3, 608212
                  srl          a7, s9, a1
                  sub          gp, s10, ra
                  bne          s5, a1, 1037f
                  bgeu         zero, s3, 1039f
                  sltu         s9, s2, s3
                  srai         a3, tp, 3
1037:             srl          s8, s10, t6
                  xor          s7, t4, s6
1039:             slli         t0, s8, 19
                  beq          s4, s8, 1058f
                  bge          s0, s6, 1047f
                  bgeu         s5, a5, 1048f
                  srli         a3, t2, 12
                  sll          s8, s11, s0
                  beq          s4, s6, 1047f
                  andi         s7, s2, 1020
1047:             addi         s4, s4, -1770
1048:             bne          a1, t6, 1063f
                  bge          s10, t4, 1053f
                  slli         s1, s3, 21
                  sll          a0, a0, s8
                  bne          a7, a0, 1065f
1053:             sra          s5, sp, s11
                  auipc        t2, 847918
                  andi         sp, s4, -1474
                  or           a2, a3, s1
                  sltu         t6, sp, s5
1058:             auipc        s2, 217089
                  bltu         a0, zero, 1071f
                  slti         a7, s5, 181
                  bltu         s2, a5, 1063f
                  nop
1063:             bltu         a0, sp, 1074f
                  or           zero, a1, t0
1065:             add          t3, t6, s8
                  auipc        a5, 924857
                  bge          s4, t5, 1070f
                  beq          t0, s1, 1070f
                  sra          t2, s9, s5
1070:             bgeu         s7, s1, 1081f
1071:             srli         t2, t6, 28
                  bgeu         s4, s2, 1079f
                  sltu         s2, s8, sp
1074:             slti         t3, s0, 825
                  addi         t0, s10, -644
                  slli         t1, zero, 7
                  xor          t2, a0, t2
                  bltu         ra, s10, 1086f
1079:             bgeu         a2, zero, 1086f
                  beq          s7, s6, 1095f
1081:             addi         t6, a0, -891
                  bgeu         sp, t4, 1096f
                  bne          t3, a0, 1084f
1084:             sll          a3, s9, t0
                  add          s11, a1, s9
1086:             or           t1, a7, ra
                  add          gp, s9, t0
                  srai         s7, s10, 15
                  sra          s1, s2, gp
                  xori         sp, s3, -1654
                  andi         sp, a3, -1270
                  add          s8, s1, t0
                  addi         s4, t2, -1291
                  blt          t6, t1, 1113f
1095:             bne          s6, a3, 1098f
1096:             addi         s1, a4, -385
                  or           zero, a5, t1
1098:             blt          ra, gp, 1111f
                  lui          a0, 383315
                  sltiu        s4, s7, 1530
                  andi         sp, t3, 1587
                  or           a3, a1, s9
                  srli         t0, ra, 1
                  lui          s5, 672534
                  nop
                  srl          s2, zero, a6
                  sra          t6, t2, zero
                  addi         t5, sp, -1481
                  sltu         a3, a0, s8
                  addi         t0, a0, -1170
1111:             bne          s7, a7, 1123f
                  sub          a4, a4, s7
1113:             and          a3, a7, a1
                  slli         a3, t2, 21
                  bltu         t0, t4, 1117f
                  srai         t2, s11, 15
1117:             slli         s11, s0, 12
                  bge          tp, s5, 1120f
                  bne          t0, t0, 1138f
1120:             ori          t3, t3, 122
                  slt          s7, a2, s7
                  slli         a5, t6, 28
1123:             beq          a5, sp, 1128f
                  beq          t6, sp, 1142f
                  blt          s7, a2, 1131f
                  srli         gp, s0, 18
                  or           s1, t5, t1
1128:             blt          a5, ra, 1143f
                  sll          t2, s0, s6
                  xori         t6, s0, -322
1131:             sltiu        t2, a0, 1579
                  srl          a0, s5, s9
                  slli         t5, s2, 21
                  xor          a0, a5, t6
                  sltiu        ra, s8, -1895
                  blt          s2, s6, 1148f
                  addi         s1, s8, -1128
1138:             bgeu         zero, a4, 1144f
                  srli         a1, a0, 20
                  bgeu         s9, a7, 1154f
                  slti         t5, ra, -92
1142:             sub          a4, s10, t6
1143:             slti         t5, s11, -854
1144:             ori          a2, a7, -326
                  xori         s5, s2, 279
                  lui          s5, 655470
                  auipc        s2, 852676
1148:             slti         t3, a4, -1698
                  srl          s7, s10, a3
                  xori         t1, s4, -849
                  srl          sp, a0, s1
                  xor          ra, s1, zero
                  beq          s1, s8, 1160f
1154:             srli         s3, tp, 10
                  slli         s4, tp, 8
                  bgeu         s11, zero, 1171f
                  andi         s1, ra, 836
                  auipc        sp, 666215
                  sll          a1, t2, s5
1160:             nop
                  sll          s7, t1, a6
                  sll          t2, t1, t0
                  slt          a3, s10, t3
                  srl          s0, t6, s9
                  slti         gp, t3, 1183
                  and          t6, zero, a3
                  sll          s1, t5, a2
                  add          t5, s5, s9
                  srl          s2, s5, a0
                  sll          s2, s0, s8
1171:             addi         s4, s1, -1251
                  beq          a4, t2, 1176f
                  sll          sp, s10, s7
                  srai         a0, t3, 25
                  nop
1176:             bne          zero, s11, 1182f
                  bgeu         t0, a6, 1184f
                  slli         s0, t2, 18
                  sltu         a2, a6, a3
                  bgeu         s9, t3, 1199f
                  add          a4, a2, a4
1182:             andi         zero, a7, -251
                  lui          sp, 830078
1184:             beq          a6, a3, 1196f
                  slli         t1, s11, 16
                  sltu         s10, s1, a1
                  sltu         a4, gp, t4
                  add          s2, a3, s6
                  addi         s11, a7, 192
                  auipc        s11, 923554
                  bne          t5, zero, 1195f
                  slli         gp, t5, 31
                  bne          s6, a5, 1196f
                  blt          ra, s3, 1208f
1195:             and          a2, s5, t4
1196:             blt          s2, t4, 1204f
                  sltu         gp, s9, gp
                  sra          t6, sp, tp
1199:             sltiu        s1, a5, -960
                  bltu         a5, t0, 1204f
                  srai         s5, a0, 3
                  srl          sp, s6, zero
                  lui          gp, 490869
1204:             sltiu        sp, a3, -60
                  xori         s7, tp, 1042
                  or           a3, s3, gp
                  nop
1208:             xor          gp, a3, tp
                  sltiu        a2, s11, -80
                  bge          a5, s10, 1218f
                  or           a2, t0, tp
                  bge          t4, s7, 1223f
                  bge          t1, s5, 1224f
                  blt          t3, s1, 1216f
                  lui          s11, 895792
1216:             beq          s6, s4, 1217f
1217:             addi         a1, a0, 167
1218:             slt          s4, t0, a1
                  srl          s2, a4, t4
                  lui          a7, 882520
                  bltu         s9, sp, 1228f
                  srli         t6, a6, 13
1223:             or           tp, s10, s0
1224:             slli         a1, a5, 31
                  nop
                  bge          ra, ra, 1228f
                  auipc        t5, 278400
1228:             add          s7, s0, a2
                  and          s5, t2, s7
                  beq          s11, s11, 1241f
                  slti         t5, t5, -53
                  lui          a0, 454009
                  srli         a1, a1, 8
                  lui          tp, 687795
                  srli         t5, t0, 25
                  beq          t4, t5, 1250f
                  sll          s11, s5, s5
                  bge          ra, t1, 1242f
                  xori         s0, s10, 1419
                  auipc        a0, 595564
1241:             andi         s9, s11, -1131
1242:             auipc        a2, 625015
                  srli         s10, t2, 10
                  addi         s1, ra, -1481
                  beq          a2, s4, 1247f
                  lui          s7, 349203
1247:             bltu         tp, t2, 1252f
                  addi         s11, s4, -1578
                  srai         t6, a5, 12
sub_4_28:         jal          t1, 18f
0:                jal          ra, 17f
1:                jal          ra, 20f
2:                jal          ra, 1b
3:                jal          sp, 4f
4:                jal          ra, 14f
5:                jal          ra, 10f
6:                jal          ra, 12f
7:                jal          s7, 22f
8:                jal          t3, 13f
9:                jal          ra, 3b
10:               jal          ra, 19f
11:               jal          s5, 21f
12:               jal          ra, 11b
13:               jal          ra, 0b
14:               jal          ra, 2b
15:               jal          s7, 6b
16:               jal          a2, 5b
17:               jal          a3, 16b
18:               jal          gp, 15b
19:               jal          t1, 7b
20:               jal          t1, 8b
21:               jal          ra, 9b
22:               sltiu        s9, s5, -1817
1250:             and          a2, tp, t3
                  add          s8, s4, a5
1252:             slli         t3, ra, 3
                  sltu         t2, t5, s1
                  slli         s7, a2, 2
                  sra          s2, t6, zero
                  slt          s9, t6, s5
                  srl          a5, s10, s9
                  ori          t3, a3, 1182
                  xori         a4, s2, 2018
                  sra          zero, a5, a7
                  slti         t1, a1, -1859
                  sltiu        t1, s4, -639
                  xori         a3, a6, -930
                  xori         s11, a4, -737
                  slli         ra, ra, 20
                  and          s11, t4, t1
                  bge          s10, a4, 1280f
                  xor          s8, t4, a3
                  andi         a3, t3, 846
                  andi         s2, t1, 889
                  xori         tp, s0, -361
                  or           s10, t6, s2
                  sll          gp, a5, s1
                  srl          s4, a5, a2
                  sltu         t0, t6, s3
                  lui          s5, 549407
                  bltu         s10, t0, 1279f
                  xori         t3, zero, -1510
1279:             beq          a2, gp, 1282f
1280:             nop
                  sltu         t5, a3, a6
1282:             srai         a5, s2, 23
                  nop
                  slt          a7, s9, zero
                  slli         ra, sp, 24
                  bgeu         s10, zero, 1287f
1287:             lui          s8, 730611
                  nop
                  slti         t3, a0, 1947
sub_4_12:         jal          t1, 14f
0:                jal          ra, 2f
1:                jal          ra, 12f
2:                jal          t1, 17f
3:                jal          t1, 0b
4:                jal          ra, 19f
5:                jal          s4, 6f
6:                jal          ra, 21f
7:                jal          ra, 9f
8:                jal          ra, 13f
9:                jal          t1, 23f
10:               jal          s11, 4b
11:               jal          s10, 10b
12:               jal          s11, 7b
13:               jal          t1, 22f
14:               jal          t1, 18f
15:               jal          t1, 3b
16:               jal          t1, 5b
17:               jal          ra, 20f
18:               jal          ra, 8b
19:               jal          ra, 1b
20:               jal          ra, 11b
21:               jal          t1, 15b
22:               jal          t1, 16b
23:               sub          a5, t4, s10
                  bltu         s3, tp, 1309f
                  bltu         zero, a5, 1295f
                  sub          t1, a4, s5
                  xor          s2, s8, s1
                  andi         ra, t4, -1179
1295:             lui          t1, 645485
                  or           sp, s5, s5
                  srl          s3, zero, t6
                  beq          s6, t2, 1312f
                  srai         s7, s3, 11
                  slt          t3, s0, s11
                  srl          t6, s8, a0
                  bge          s0, t3, 1308f
                  and          s0, t5, t1
                  ori          t5, s7, -1497
                  ori          a7, s1, -251
                  sub          tp, s8, t2
                  slt          sp, s0, a5
1308:             nop
1309:             addi         t5, s1, -8
                  or           a1, s2, s1
                  ori          zero, s5, 1078
1312:             sll          a7, sp, s10
                  srai         t3, t3, 27
                  bge          s7, ra, 1332f
                  bgeu         tp, a2, 1318f
                  sltiu        ra, a5, -1781
                  slt          t2, t6, t3
1318:             nop
                  slt          gp, s9, a0
                  xor          s4, s11, s5
                  blt          s1, s10, 1325f
                  srl          s8, sp, a6
                  sltu         a2, t0, s3
                  blt          t4, s10, 1339f
1325:             sll          a5, s7, a1
                  bne          a5, t2, 1338f
                  bne          a1, s9, 1335f
                  addi         t0, t4, 590
                  sra          a4, s6, a5
                  auipc        gp, 622832
                  add          s0, t5, s3
1332:             slli         s5, s9, 14
                  nop
                  srl          a0, s11, a0
1335:             blt          s9, a4, 1342f
                  sltiu        gp, s9, 1625
                  slti         t0, tp, 139
1338:             sub          t5, s6, s1
1339:             xori         s11, t3, 1093
                  sub          zero, a3, ra
                  lui          a2, 977942
1342:             srl          s10, t5, a5
                  or           s0, s11, t6
                  slli         s11, a7, 15
                  bne          s11, s8, 1353f
                  bgeu         t3, a5, 1358f
                  addi         t5, a0, -1684
                  nop
                  srai         t3, s2, 3
                  ori          zero, a1, -1643
                  beq          a7, a6, 1362f
                  slli         a4, a3, 6
1353:             srl          s9, s9, t1
                  sub          s5, s11, s4
                  slli         s9, ra, 26
                  sll          zero, a2, t6
                  slt          a5, t1, t3
1358:             beq          a5, tp, 1364f
                  srl          s3, s2, a1
                  and          s10, s2, s8
                  sll          a1, sp, s10
1362:             bgeu         s5, a5, 1368f
                  bgeu         gp, a6, 1375f
1364:             blt          t6, t1, 1379f
                  bgeu         s5, a7, 1384f
                  lui          s2, 81824
                  addi         t3, s4, -1983
1368:             bge          s1, s4, 1376f
                  and          t3, tp, s1
                  srl          s7, s8, s5
                  slli         s1, ra, 5
                  bne          s7, s1, 1387f
                  sub          a3, a5, s6
                  bltu         gp, t1, 1377f
1375:             sltiu        a0, t0, 1191
1376:             sra          a3, t2, t6
1377:             and          s11, zero, s8
                  slti         s7, a5, 1281
1379:             srli         s10, tp, 3
                  bne          s10, t5, 1382f
                  bgeu         s4, t3, 1389f
1382:             sra          s2, a1, t3
                  auipc        s10, 868397
1384:             xor          a3, t1, sp
                  and          s11, s1, s6
                  sub          s11, s7, s8
1387:             auipc        a5, 657067
                  bltu         s4, ra, 1395f
1389:             nop
                  slt          s3, s8, s4
                  bge          t2, s11, 1405f
                  beq          ra, s7, 1393f
1393:             srli         s11, s10, 16
                  add          t5, a7, ra
1395:             or           a5, t3, s2
                  bgeu         zero, tp, 1402f
                  bne          s8, a7, 1416f
                  auipc        a0, 876896
                  beq          tp, s2, 1405f
                  srl          a2, t2, s7
                  slti         t0, s1, -1406
1402:             ori          s8, s11, -1078
                  sra          a3, s11, t0
                  sltu         t2, a0, s0
1405:             addi         a5, a1, 1799
                  addi         s3, s9, 1982
                  add          a5, s3, a5
                  ori          s11, ra, 617
                  sltu         s7, s1, a2
                  srai         t3, s9, 1
                  slli         s0, s8, 28
                  auipc        t3, 145962
                  beq          t6, s4, 1432f
                  sub          sp, a7, s9
                  lui          zero, 707753
1416:             sltu         s4, tp, tp
                  addi         s1, s0, -757
                  srai         s8, t2, 12
                  bne          tp, s2, 1432f
                  srl          s5, s0, a2
                  slt          a2, zero, s4
                  sltiu        s0, s7, -945
                  sub          ra, s7, s1
                  bltu         gp, s9, 1430f
                  lui          t0, 240590
                  sub          s11, s8, sp
                  beq          t1, t5, 1438f
                  bltu         t5, s4, 1439f
                  xor          t6, s3, a1
1430:             bge          t1, t2, 1432f
                  bltu         s1, t2, 1445f
1432:             beq          a7, t3, 1434f
                  xori         ra, s0, 251
1434:             slt          t3, s11, s6
                  or           t0, t5, a1
                  sltiu        t6, s11, -466
                  srl          t1, s9, s7
1438:             sra          s4, a7, sp
1439:             bgeu         s1, s10, 1444f
                  sltiu        a2, s8, 350
                  andi         a2, a3, 1616
                  bne          a3, s4, 1454f
                  blt          s1, s11, 1461f
1444:             xori         tp, s7, -1388
1445:             add          s3, s11, s8
                  sltu         s4, s4, a5
                  slt          a0, t5, t0
                  srai         a0, s5, 10
                  andi         tp, a6, 984
                  sll          s4, s0, t2
                  bgeu         s8, a7, 1455f
                  blt          s4, ra, 1456f
                  ori          a4, t3, 997
1454:             addi         s4, t1, 86
1455:             sltiu        t1, s0, 1967
1456:             srai         a7, ra, 2
                  bne          a6, t4, 1460f
                  lui          zero, 478041
                  slt          s2, t2, s4
1460:             bne          gp, t2, 1472f
1461:             auipc        s9, 920073
                  blt          gp, t5, 1477f
                  bgeu         t3, t5, 1467f
                  and          s10, s0, a7
                  or           a0, s1, zero
                  bltu         t0, a6, 1473f
1467:             andi         s1, s11, -1555
                  nop
                  sub          zero, s8, a4
                  slli         s11, tp, 11
                  bgeu         t5, tp, 1483f
1472:             sub          s9, t3, t5
1473:             or           t3, a5, s6
                  beq          t5, a3, 1482f
                  bgeu         a3, t0, 1486f
                  bgeu         s3, a1, 1477f
1477:             sll          a7, t5, s4
                  bne          tp, t3, 1492f
                  bge          s4, t5, 1485f
                  bgeu         s10, a5, 1483f
                  bltu         s11, tp, 1495f
1482:             ori          ra, a6, 915
1483:             sll          a0, t0, s7
                  blt          a0, s4, 1487f
1485:             xor          s3, t4, a2
1486:             add          s5, s2, s7
1487:             ori          gp, s9, 1479
                  bgeu         t5, s5, 1506f
                  sltiu        tp, gp, 1196
                  beq          a6, s5, 1505f
                  bge          s5, s7, 1503f
1492:             sltiu        t1, s4, -304
                  bne          ra, a6, 1505f
                  xori         s0, s10, 555
1495:             bgeu         a7, s6, 1501f
                  lui          t0, 95080
                  ori          gp, t0, 1673
                  bge          t6, s9, 1509f
                  sll          s4, tp, gp
                  sll          sp, a1, s7
1501:             bge          sp, t2, 1520f
                  sll          a3, a1, s5
1503:             bge          a4, a2, 1507f
                  bge          a0, a0, 1516f
1505:             lui          a4, 689625
1506:             beq          s3, zero, 1513f
1507:             xori         zero, a5, 1869
                  slt          tp, sp, tp
1509:             and          t5, t2, s6
                  sub          zero, s7, t1
                  ori          a0, t1, 1245
                  slt          gp, gp, s9
1513:             slti         s7, s4, -427
                  srl          a5, s4, s3
                  slli         a0, a1, 1
1516:             bge          a2, s10, 1524f
                  addi         s3, t5, 66
                  sll          a0, t0, a6
                  and          s1, a0, s1
1520:             sub          tp, a4, s7
                  slli         a1, s9, 8
                  slli         a5, s5, 5
                  beq          a0, s6, 1538f
1524:             and          a1, a2, s2
                  sub          ra, a7, a1
                  srai         a0, a7, 22
                  bge          t6, s4, 1532f
                  slti         s8, s1, 1252
                  sll          s1, s1, ra
                  srai         sp, a1, 20
                  sra          a7, s10, a7
1532:             srli         s10, s2, 16
                  ori          a3, a4, -1825
                  srl          s10, s1, s1
                  bne          s4, s9, 1539f
                  nop
                  bne          t5, a3, 1539f
1538:             auipc        t5, 652876
1539:             xori         s7, t5, 968
                  auipc        s5, 83873
                  addi         s2, s9, -449
                  and          a5, t1, sp
                  add          zero, s10, s8
                  bltu         a7, s3, 1557f
                  xori         a2, t3, 1872
                  slli         a2, tp, 24
                  ori          t5, s3, 1821
                  slt          tp, t0, s11
                  andi         s8, t1, 1348
                  slli         a7, t3, 27
                  add          s2, s8, sp
                  nop
                  add          s5, s11, t1
                  slli         a2, s1, 12
                  blt          gp, gp, 1562f
                  nop
1557:             sra          t3, a3, t5
                  xor          ra, a1, a7
                  addi         s7, t1, -1037
                  ori          tp, s8, -506
                  srl          t5, s0, s9
1562:             and          sp, s10, s8
                  add          s4, a3, a1
                  and          a3, a1, gp
                  xor          s2, sp, a5
                  bgeu         ra, t5, 1568f
                  add          s9, t4, s4
1568:             add          a2, t4, s6
                  xor          s2, a6, a3
                  blt          t1, s0, 1572f
                  beq          a7, s6, 1575f
1572:             xori         ra, a6, 333
                  sub          t1, a0, gp
                  sltiu        a7, sp, 1904
1575:             bltu         t6, s10, 1581f
                  bltu         s1, s9, 1595f
                  bgeu         a5, tp, 1579f
                  add          ra, zero, t1
1579:             xori         a5, t6, 679
                  xor          t2, s10, a6
1581:             sltiu        s0, s0, 1309
                  bne          s10, s7, 1588f
                  sll          t2, s7, s4
                  nop
                  nop
                  auipc        s10, 264579
                  sltiu        gp, sp, 1057
1588:             sltiu        s7, a7, 1378
                  sra          a3, s9, s3
                  sll          gp, s4, a4
                  addi         ra, a3, -173
                  srai         s5, gp, 7
                  bltu         s7, a7, 1598f
                  srli         a4, s6, 23
1595:             slli         s11, s9, 4
                  slli         s10, tp, 23
                  srli         ra, s1, 22
1598:             sll          zero, t4, t2
                  auipc        a3, 106964
                  lui          s1, 937282
                  slli         t2, t1, 28
                  slt          s1, tp, a0
                  sub          sp, t0, s8
                  sub          t5, zero, t6
                  or           a7, a7, a7
                  sll          a1, a4, a2
                  and          s9, a2, sp
                  beq          t3, a1, 1619f
                  sra          gp, a2, a5
                  xori         gp, s1, 1331
                  bgeu         zero, a3, 1619f
                  sra          a3, gp, a3
                  slt          s7, a2, a4
                  add          a3, a7, a6
                  bge          a3, t5, 1634f
                  bltu         s7, s11, 1622f
                  sltiu        a7, s6, -1916
                  bltu         a7, gp, 1620f
1619:             nop
1620:             beq          a4, s5, 1635f
                  slti         t6, s1, 32
1622:             sltu         s3, a5, s11
                  sll          s8, ra, s10
                  bgeu         ra, s10, 1639f
                  slli         s10, zero, 11
                  xori         zero, s9, 117
                  srli         a7, a0, 19
                  bne          s3, a2, 1642f
                  bge          s1, s6, 1637f
                  nop
                  auipc        t6, 851108
                  sltiu        s3, a0, 55
                  beq          s1, tp, 1645f
1634:             srli         a7, s3, 22
1635:             slti         s5, s11, -573
                  bne          a7, s1, 1639f
1637:             ori          a3, s4, 865
                  bltu         a5, a0, 1642f
1639:             bne          gp, t1, 1646f
                  add          a4, a2, t5
                  sltu         t1, s9, s2
1642:             sltiu        s5, tp, 1809
                  bgeu         s4, sp, 1644f
1644:             srl          ra, s0, a1
1645:             sra          t3, s3, s5
1646:             lui          zero, 965731
                  andi         a7, ra, -1879
                  blt          t5, s5, 1660f
                  bltu         gp, s1, 1653f
                  srai         a1, t6, 17
                  bgeu         a1, s1, 1657f
                  sra          a4, tp, s3
1653:             and          s5, t1, a3
                  xori         t0, s1, 2020
                  slt          s0, a0, s2
                  xor          t0, sp, a0
1657:             sra          s3, tp, s8
                  bltu         sp, t1, 1677f
                  bge          s1, s3, 1673f
1660:             slt          s8, s6, a1
                  sub          a7, s11, a3
                  sra          t3, a2, s7
                  nop
                  slti         tp, t4, 750
                  or           a0, a5, a3
                  bgeu         a3, t4, 1673f
                  slli         a5, s3, 9
                  blt          zero, t1, 1679f
                  xori         sp, a6, 829
                  and          s0, s11, t5
                  srai         s1, s6, 28
                  bltu         a4, s0, 1684f
1673:             bltu         sp, a2, 1677f
                  blt          tp, s11, 1677f
                  srl          s10, t6, a4
                  addi         ra, s1, 97
1677:             add          s1, s7, s5
                  nop
1679:             ori          t3, s8, -4
                  blt          s2, a7, 1682f
                  sltiu        s8, t4, -222
1682:             sltiu        t2, s5, -2028
                  xori         a0, a6, 1329
1684:             bgeu         a4, s10, 1685f
1685:             sltiu        t2, a0, -602
                  ori          s4, a3, -519
                  slli         s1, t1, 7
                  or           s3, s2, s5
                  lw           t1, 4(a6)
                  sltiu        s11, ra, 1733
                  addi         a1, s11, 1002
                  sll          a4, a0, a0
                  addi         a6, a6, 48
                  ori          sp, a7, 1490
2469:             addi x10, x6, 0
2469:             jalr x10, x10, 0
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
.word 0x39858ca6, 0xac5757ba, 0xb281a8b9, 0xcd502875, 0xd669e5e3, 0x989393fb, 0xb6f37555, 0xe82f78f6
.word 0xfb23d5cc, 0x103bb41b, 0xe6de7aff, 0x9de21f30, 0x848d15e2, 0x81fcc11d, 0xc0fad53e, 0xb5b96991
.word 0x64ded534, 0xca383282, 0x7da7cd83, 0xd6b31940, 0x79d6722d, 0xe6b9e452, 0x914be2ca, 0x0f82ce04
.word 0xac0155b7, 0x4cb046fd, 0x047249c3, 0x48edf27e, 0xe08de088, 0xb2d0c657, 0x46e68aa1, 0xc805b730
.word 0xa09e06f6, 0x3df8a8af, 0x2d78c4f7, 0xfe7324bf, 0x474622e5, 0x3806b5e3, 0x3f95750a, 0x6869b07b
.word 0x80d85c0b, 0x5a5bf684, 0xf220e11f, 0xb3fb17ea, 0x93924398, 0xdc91c91b, 0xaa209f2e, 0x3f61d64d
.word 0xae2ee7aa, 0x2d2e8873, 0x2cf4c9e5, 0x28bab002, 0xe3e8467d, 0xab9be8a4, 0x00bfbce0, 0x1e2c07fb
.word 0x9499bcc0, 0xc1112738, 0xa1baad12, 0xfc5673bb, 0x84fad007, 0xff2ac432, 0xb63f5bff, 0x60f5aa82
.word 0x42058439, 0xa2440f08, 0xaa4a044c, 0x556f7bf2, 0x446401a6, 0x2c660311, 0x597c506e, 0xbb9b3b6a
.word 0xa7888a1b, 0x46d33df2, 0xe3ecf681, 0x2320ae53, 0xd5ad9fe9, 0xa87657a5, 0xf8c5f55f, 0x660be00e
.word 0x82b3ce34, 0x20d349b3, 0x232486cc, 0xaccb85c6, 0x1919c877, 0x007feb9f, 0x2959f05a, 0xe51a47ad
.word 0x2810ff60, 0x8a2b3358, 0x0a8a1578, 0x93136563, 0x162014aa, 0x5b368620, 0xad0c87ac, 0x4c9b1de3
.word 0xa8551231, 0xf752a601, 0xc5cea354, 0x3c2a0de4, 0xb11b4937, 0x70e6bb52, 0x9b331dfc, 0x59956ad9
.word 0x2139d938, 0xa9fa56bc, 0xb4403841, 0x184cd746, 0x11274cc7, 0xb149a692, 0x375475a3, 0x8556ca66
.word 0x5c424657, 0x2c82df3e, 0xf7905f42, 0x7bac0f3b, 0x067a45ce, 0x18331a25, 0x2ca75466, 0x006c15a6
.word 0x3605a3a2, 0x1ddb908c, 0x81600cc1, 0xeeac6716, 0x8ca5411f, 0xc8aff79e, 0x5e3cc07e, 0x8eafcd6a
.word 0x2a13e242, 0x3e326a79, 0x2f08e6a3, 0x0e161449, 0x0eab6151, 0xcd639a54, 0x891a5aff, 0xb0be9c51
.word 0xf223f40f, 0xca508ffa, 0x7ffbd66f, 0x6a87bb85, 0x5f3793e0, 0x65b58427, 0x11624b1d, 0x244e87ae
.word 0x3862ba29, 0xdc6fdc60, 0x0b0da8bc, 0x31e7dd9a, 0x1af74948, 0x7f40b135, 0x75d924a6, 0x55d7bf81
.word 0x12cc2b95, 0xbfd7bd9a, 0xa8260c42, 0xa5d8338c, 0x78396839, 0xfac54347, 0x540e10a0, 0x8c9aae83
.word 0x2abdcc57, 0xd87dd75c, 0xdaf95cd1, 0x1f33c2c7, 0x84a4afe9, 0x5cfe7bc6, 0x2e4b1b11, 0xd63aad11
.word 0x1e3c19b4, 0xadd56e0d, 0x7c5e3510, 0x5f4e3202, 0xa53c4ffe, 0x42a0db29, 0xa7198a58, 0xab564d2e
.word 0x79fcc213, 0x2b1e40fa, 0x96e031f2, 0x9f7c528b, 0x1c284654, 0x7f8cad7a, 0x82b378a2, 0x2446f811
.word 0x556cc8bb, 0xdc9afab0, 0x746fba50, 0x6bdcf6a0, 0xdca894bc, 0x0fc9e961, 0xc993500c, 0xbc7294b2
.word 0x3133f6b6, 0xe163c2a5, 0x3c7c0133, 0x7be195a8, 0x15d182d9, 0xba83f50c, 0xe0029b4e, 0xdedbe4fb
.word 0xedf74c60, 0xa95a66ad, 0x8a2d01b5, 0xf4394f85, 0x785f6b42, 0xf1a785fa, 0x2f74ffc4, 0x821a67ca
.word 0x16ff4670, 0x76389718, 0x30c9d840, 0x93215de9, 0x254d1043, 0x2ea0e006, 0xd1c30ed8, 0x920e18cc
.word 0x877ce94f, 0x3fbf16c7, 0x2b346cd9, 0xe484b4ce, 0x31e86cce, 0xaeba0920, 0xd1b99594, 0x0ab2c6d1
.word 0xb82efd98, 0x06108d52, 0x71dcf5eb, 0x50f8794b, 0xdcbfe863, 0x18247a03, 0x86a40e9a, 0x3ac851d4
.word 0xe48a63d2, 0x04c4a1e3, 0x1433a59f, 0x08ffc149, 0x84fe98c2, 0xda614feb, 0xa1b45bcf, 0xabc942d7
.word 0x9092ea49, 0x84579d49, 0x5f74f39e, 0x00da74b0, 0xed7125af, 0xba99d660, 0x702fe36d, 0xa2afa88b
.word 0xbb395e33, 0x7447e578, 0x4344036c, 0x55b1a996, 0x5da33d97, 0xe33b7c0c, 0xe5b30dd0, 0x2d825c7f
.word 0xaf6bbba0, 0xe2c387d3, 0xf242850e, 0xf1aa69f7, 0xe996cec1, 0x7499a280, 0xbf1a3d21, 0xb6519035
.word 0x8efaac2c, 0x7c0d843f, 0xdc96d85f, 0xd260bc0c, 0xeadc6ba4, 0x4bd1f5cc, 0xbab7c6cc, 0x9cba1d02
.word 0x361ce750, 0xe11181db, 0xfd9e8282, 0x6561d66b, 0x4d17bfcf, 0x4c94d97c, 0xcb92dbbc, 0xb3486de9
.word 0x1b278544, 0xa8c01125, 0xab0d4b78, 0x6cde5038, 0x53bc9825, 0x5a0902ed, 0xaf44900a, 0x51270e73
.word 0x2b994de2, 0x134f0efe, 0x5ffcf56c, 0x124d5662, 0xdc47dd2f, 0xcd3e20da, 0x91e25788, 0x418b5cf9
.word 0xd59340fb, 0x1529bb63, 0x51d57244, 0x44353d8b, 0xb626824f, 0xa537a95e, 0x224e943e, 0x718eabc9
.word 0xf959a04a, 0x85e7db54, 0x219a9f9c, 0x35fe771f, 0x25d274f3, 0x587aeb85, 0xf849b4c6, 0x9a7bc695
.word 0xf59c8278, 0x81629dc9, 0x286f52b2, 0xc4551789, 0x717e3c3c, 0x7115bb06, 0x89f459d7, 0xbf1acb24
.word 0x6dc25d37, 0xfb7406f2, 0xf8115c75, 0x5fb513f3, 0x2a95b6dd, 0xf9e0ad21, 0xe87a198f, 0xf2511ac1
.word 0xd045deaf, 0x44fc62d5, 0xa2aa4183, 0xdc1b401c, 0xfc3d68a1, 0x77ebd2d7, 0xf70ae597, 0x0ff56446
.word 0xed9cdaf5, 0xb0e20df1, 0x2a8ad1b8, 0x8d947487, 0x8b0819e5, 0x9324bb61, 0xd845c745, 0x3dd277b1
.word 0x76afbce3, 0xdb26f0b5, 0x22104deb, 0xb4c82ccd, 0x0aaa12d0, 0xaec264e3, 0x87fdb3f3, 0x0a10ab62
.word 0x239a60b3, 0xb4a2cdba, 0x16ad4d75, 0x020785b0, 0x555a6228, 0x13356658, 0xe8eb4d6e, 0xea1d5170
.word 0x7156f313, 0x711ade50, 0x60c1216d, 0xe2b594c0, 0x277aa3ad, 0xc8003091, 0xa1233fd8, 0x1b1b936c
.word 0xa316bece, 0x7945120a, 0xbaf763e1, 0x89b90267, 0xde564c39, 0xff93009e, 0x4217e561, 0x561a5e9b
.word 0x146ddb77, 0x2b0e49f0, 0xfdf2b17d, 0x79a5095b, 0x46429744, 0x3e09bcef, 0xc74f7b56, 0x779af2ca
.word 0xddb5c03c, 0xba2d9662, 0x283df9cc, 0x6ab4489d, 0x1ac8d25f, 0xc2e56ed8, 0x1988abbb, 0xb674be77
.word 0x4a3a8120, 0xa2878305, 0xf957a1d6, 0x7e76a78e, 0x9de0e742, 0xe4b1e304, 0x36bcaa49, 0xc18bde6b
.word 0x1b5b5743, 0x16cda226, 0x49b39dba, 0x70a70885, 0x43bbf792, 0x04d1bda1, 0x1ecaf09d, 0xe9964e88
.word 0xedbc4b4a, 0x833fde04, 0x0fb03486, 0xca4dfc92, 0x7cf381d8, 0x20d15699, 0xd77cbbc7, 0x88a84273
.word 0x84ef099b, 0xf5627c84, 0x0192f2c3, 0x3e4ff5c7, 0x81f025f5, 0x2db24b43, 0xb9a48660, 0xf5da3797
.word 0x9cd9fb76, 0xa1f577f7, 0x93cf6e87, 0x31ed7288, 0xc8b4b139, 0x99af266d, 0x5701a555, 0xd87d070a
.word 0x995f06d8, 0x8c1a9c1c, 0x6acae7b0, 0x983c73e3, 0x27d7d5d5, 0xd844550e, 0x7ebb5261, 0xb365f433
.word 0xdfd6614d, 0xa79d805c, 0xadc265a9, 0xe836b282, 0x8bea2b81, 0x935fde4d, 0x96ec8ade, 0x60471455
.word 0xf454fc9b, 0xaa27fe08, 0x0cbd96ac, 0x8d3a649e, 0x42763d63, 0x42da5b93, 0xdf5fad0d, 0xf18a1637
.word 0xc7ed4426, 0xf9201675, 0x21c57b6a, 0x85448444, 0xf25d1cdc, 0x48a24c97, 0xebbdcf62, 0x85074479
.word 0x766a97b2, 0xbe81879f, 0x52fb775e, 0x464deeea, 0x8dc6ae61, 0xc12ad169, 0xeb33bb18, 0x410888db
.word 0xbfc134ed, 0x80a93625, 0xb93eebdf, 0xbc8489cc, 0xfac6c283, 0x4afb64df, 0x5a67dc97, 0xf95c0e28
.word 0xa22e16a1, 0xf777edcf, 0xec04886f, 0x3baf1c29, 0x1ddd1a40, 0x6291d16f, 0xe127a877, 0xf369dd83
.word 0x8f675fad, 0x1773250e, 0xe488edb2, 0x60a2bd1d, 0x90b74b0a, 0xa6e35b12, 0x74667bb3, 0xa172fc4c
.word 0x8425b3b4, 0xe9b7458c, 0x22a7e77d, 0x42234983
.section .region_1,"aw",@progbits;
region_1:
.word 0x2054c26c, 0x397d1c3d, 0xece45dac, 0xc980d394, 0x0c7c9e8f, 0x63dd049e, 0xd765d7c3, 0x4787ac33
.word 0xd755914e, 0x3a7ae4cc, 0x010444f5, 0x0a528619, 0x3762a887, 0x43ce2acc, 0x195309bf, 0x94d493ae
.word 0x8051d1b9, 0xdea606b6, 0x867d7f29, 0xe6d5430f, 0x0881b902, 0x5f211e33, 0x4e182ee6, 0x0b82a7f2
.word 0xe9311f02, 0xd7f8e8ba, 0x86e4a86f, 0xf0b2193a, 0x0db4adde, 0xab7632db, 0x45fa3701, 0x3c97949f
.word 0xb51c7770, 0x0c0b5df9, 0x74824924, 0x077ee003, 0x08c5c42f, 0xe011ae00, 0x195c3adf, 0x83e03301
.word 0x822652df, 0x3aa5a479, 0xeb8349ae, 0x2bcfe310, 0xf13a8aaa, 0xd558d73b, 0x147369b2, 0x730f3dd7
.word 0xb6835de4, 0xd6537a60, 0x0d359111, 0xaf3ab9b5, 0x20e2f251, 0x47fc0f95, 0xb01abf07, 0x319e6246
.word 0x14a555f7, 0x1fd3fa95, 0xefe995ba, 0x3d00ece6, 0xe31b53bd, 0xe3634e91, 0xae9215c5, 0x5ecd5777
.word 0xe1a4ffd6, 0x5622eb49, 0xd1120da0, 0x23006e03, 0x504b2a38, 0x2c5aa7fd, 0x542f0312, 0x77d863dd
.word 0x3f9fccf3, 0x081f450e, 0x0c3ae6db, 0x48cf6950, 0x7f30dc68, 0x0520bddc, 0x460dc0d7, 0xe59129fa
.word 0x53a3ca65, 0x83c82126, 0x90fa849f, 0xd8f45eab, 0x3dcd3e7a, 0x8fa489af, 0xe70a69b2, 0xa332958e
.word 0x4c74cabd, 0x8d508fdf, 0x65a22768, 0x0079be5c, 0x55537a0f, 0xe9016fd8, 0x9abe23b5, 0x344e631a
.word 0xe3b0ddfa, 0x754a6132, 0x3ef12bef, 0xec3f9ce7, 0x347c40a0, 0xb9a59df6, 0x91e97ea1, 0x3545aa27
.word 0xec62da50, 0xe6a56295, 0x35faa011, 0xd888e22c, 0x856b6a11, 0x83bf8487, 0xb808c36f, 0x9245977e
.word 0xbc9c8aca, 0x927fec9e, 0x6c6f100e, 0x2bc1e5d1, 0x4d9a4863, 0x427bdc52, 0xb499a6b8, 0xc451f632
.word 0xd46513eb, 0x5b6596e1, 0xfcbcb840, 0xfdc6c4cd, 0x8535447f, 0xe0be3c4f, 0xd2366eb0, 0x2df7a3bd
.word 0xc9d62c14, 0x8e5d1c98, 0x38100828, 0xd44cf98c, 0x21f17675, 0x3c7bdf9e, 0x99bbc038, 0x01101387
.word 0x979f0c98, 0xea6c2ce7, 0xa9cb16f1, 0xfc93e8ee, 0xda0ff2cc, 0xb5d34f02, 0x30a1c95a, 0x4733a54c
.word 0x7bed21c7, 0xb0fedb95, 0x718f673d, 0xf92e176f, 0x3386e12f, 0x217c2cf1, 0x6e40e5fd, 0xb8d8c91c
.word 0x6574e5a0, 0x8cdc71ee, 0xb0614040, 0x8bfe6cc8, 0x53fa107b, 0xc01e9c4d, 0xe4acaae5, 0xe355a4e3
.word 0x1e70c621, 0x51f5b7ca, 0x17c49088, 0x40e1e483, 0x2fc15cee, 0x9646a7be, 0x6c7e7352, 0x34c2905e
.word 0xeeafacc5, 0x2d36b41a, 0x69e5ea61, 0xf015be64, 0xaacc8de5, 0x65276233, 0xc52dc516, 0x524564e9
.word 0x246f532e, 0x01c53407, 0x7b907813, 0x510c07fb, 0x9484c701, 0xcacbef14, 0x5bfc2f18, 0x82961d45
.word 0x39f53444, 0xe56671b7, 0x1a3f1dc6, 0x12cf39e1, 0xd35b3f89, 0xf09316c6, 0x9c746f4e, 0x18fc66c7
.word 0x56b84e63, 0xa567f6cc, 0x1a102618, 0x3eea09bc, 0x16dbfdf3, 0xf8cabce6, 0xe3a7e38e, 0xfd8f5932
.word 0xdd52222b, 0xae40a542, 0xa6d47423, 0x2b6e17ef, 0x23d585a4, 0x8af15de1, 0xf5a28780, 0x6b12ac07
.word 0x3fabe334, 0xaa267762, 0xadb16cec, 0x0f0fb3fb, 0xb0021aba, 0xe7dce815, 0x846c23a0, 0x3aac5a87
.word 0x76ce64f1, 0x6e2fb9d0, 0x6c613afd, 0x880b46e9, 0x5cc70c8a, 0x26fa26eb, 0x83a490f7, 0x3f9c3444
.word 0x71ac3ab4, 0xbe7db90e, 0x15357a07, 0x245e8b62, 0x31e23fbe, 0x21cfef59, 0xcaeb3c16, 0x6b7da4ab
.word 0xdb8f435c, 0xa0df2a02, 0x5e849c72, 0xb0f6a53a, 0xa5145c5f, 0x927616fa, 0x9bc52bb7, 0xea486ffe
.word 0x76ba10a9, 0xf4b79b83, 0xccde3e76, 0x88d6a4ec, 0x6ba9d40c, 0x9c261470, 0xb6619cf0, 0xb7cce5d0
.word 0xddd46421, 0x693ab5e7, 0x515ffc99, 0x9380f988, 0x407fe7ac, 0xd5cfac27, 0x5e90041c, 0x3d3d5f88
.word 0xc867be19, 0xc04cf00d, 0x0db406ba, 0x70c03ffc, 0x6d2c808c, 0x147dbf6d, 0xd2c283a1, 0x286263ee
.word 0x05116eb2, 0x4fa1e8a8, 0xe0a79690, 0xef81624d, 0xba649f22, 0x6eb16722, 0x88e6389f, 0x38cca8c2
.word 0x7e928095, 0xf66da45e, 0x478a3f4f, 0x540f4303, 0x4cd560af, 0x8aae995e, 0xd48af36d, 0x91c0693e
.word 0x06f48c14, 0x66deb07e, 0xd4d05db1, 0xb6542908, 0x9d79ca9d, 0x3b67d24c, 0xb6ba5c6f, 0xbc83a1c3
.word 0x8d94f404, 0xc3557eff, 0x2be4e8af, 0xb01d4a07, 0x21ea637c, 0xf80c4fb4, 0x9184ac97, 0xc89e740b
.word 0xac33eb3e, 0x52913f80, 0x9868741a, 0x8bae1bf8, 0x0a1c8cc3, 0x31fdee61, 0x33b9b55a, 0x9385650d
.word 0x04b7ed5e, 0x34cf3b17, 0xb444fb7f, 0x0239c4ce, 0xd0a86e26, 0x26ba6493, 0xebc2c7e1, 0x5e0a0d64
.word 0x8b9eb5cc, 0xac389b13, 0xc943237f, 0x7a5c3257, 0xc6cc86dd, 0xac1a9bc1, 0xf43b6900, 0x4cfed04b
.word 0x730d245f, 0xf9bb2d8c, 0x1c4e60d8, 0xd4dcec31, 0x478914ba, 0x5735c2c3, 0xc2e4f7ff, 0x9ee65651
.word 0x2d437c5d, 0xb9ddab24, 0x9d8d1582, 0x8ba10af8, 0x5f1903d3, 0x26f2ae04, 0xc26e0d82, 0xe3005c48
.word 0x475e112f, 0x5ed0db53, 0xb8fa35c4, 0x50f21f49, 0x1c3c34ac, 0x371ecd87, 0x7f0321c8, 0xf4bf4e46
.word 0xaf59b737, 0x4bcf6966, 0x3eefe051, 0x6ae2a612, 0x2146a5cb, 0x8f7feb55, 0xaa258101, 0x5f17c6a4
.word 0x9f7e7aea, 0x6784f13b, 0x3b6f3927, 0xef8f0c0f, 0x2b76f692, 0x41c2b178, 0x7378183f, 0x935ef86a
.word 0x1e144fad, 0xd3187d6c, 0xecf4ec53, 0x543b9b61, 0x46810e5b, 0x9a01975e, 0xc442015e, 0x7eb33188
.word 0xf4368ff9, 0x8097a5c8, 0xdf531dbe, 0x7935f819, 0x08c9afac, 0xaf1a82be, 0x0196df59, 0xfb15be83
.word 0x6c244311, 0x9c784b2e, 0x14bfc397, 0x668c870e, 0x0208cbb0, 0x4eeb32d7, 0x82214716, 0xa881be54
.word 0xd16dd26a, 0x4c7336e8, 0xd028ebd8, 0x7491b8e2, 0x449e91b0, 0xe5baa306, 0xa0210abb, 0xb9e8614f
.word 0x29b1d08f, 0xe127d766, 0xd59b9b83, 0xeea77d20, 0x2ce2ce0b, 0xc3bb99c3, 0x3b4777d1, 0x6f1835ba
.word 0x886262da, 0x17c72272, 0x2eb4653b, 0x314e603f, 0x8a29ec99, 0xa846597b, 0xb12782ee, 0x641a4b86
.word 0x9dad7fd4, 0x4bca4873, 0x28a1f92a, 0xb0599da7, 0xc9f7e9d9, 0xf931d41c, 0xbef19f85, 0x82676bc4
.word 0xee9f4f41, 0x0946908c, 0x69ddeb7a, 0x31145a25, 0x8b6bf042, 0xf81117a2, 0xf645611b, 0x6bc9e34c
.word 0x679cc279, 0x721b59b6, 0x341a5543, 0xff4358a9, 0x1138995c, 0xdbc09cd7, 0xb45c8942, 0xb99abe55
.word 0xb626ca38, 0xd07a2625, 0x250d9e88, 0xecf2d9e0, 0xa70a8d8a, 0x1df76e20, 0xdf91bff8, 0x75f18f8b
.word 0x64ffa895, 0xbd21769c, 0xa43a0f60, 0x18d2e675, 0x10967d5c, 0x42b271d4, 0x8c0ad889, 0x706e2c21
.word 0xc48582eb, 0xee68c643, 0xda07feef, 0xc1e3b957, 0x8a5d7463, 0x1b9bbd15, 0x74b51b6c, 0xaa2dd07d
.word 0xf386d8eb, 0x6f46f1c4, 0xad19b233, 0x7c4d966d, 0x304a533d, 0x866b1f9f, 0xcd70957f, 0x4363d2ab
.word 0x750e7d84, 0xc4a2a8e6, 0x98b8d9f8, 0xa5203e29, 0xec4f3adc, 0x571c8352, 0x9edab990, 0xe327fb4e
.word 0x874afe2d, 0x641d038a, 0x3c6e7a31, 0x1d1a8cc1, 0x35c62bcc, 0x46a5b0d6, 0xc99a2a97, 0x86504acc
.word 0xb42ecdc7, 0xa0dcf85e, 0x5796a921, 0x8d679b77, 0x1f266a9c, 0x363e9da7, 0xc4ea14af, 0xd56efb84
.word 0x39755333, 0x982f374d, 0x9406a390, 0xe1a0c1be, 0x6db0ecdc, 0x2ca4a4d7, 0xfaa3f9bc, 0x9c4be9fa
.word 0x355afab6, 0x802f2055, 0xc687299a, 0x3181bcba
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x22, x16, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x2, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x2, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x1
                  beq x2, x25, instr_fault_handler
                  li x25, 0x5
                  beq x2, x25, load_fault_handler
                  li x25, 0x7
                  beq x2, x25, store_fault_handler
                  li x25, 0xc
                  beq x2, x25, pt_fault_handler
                  li x25, 0xd
                  beq x2, x25, pt_fault_handler
                  li x25, 0xf
                  beq x2, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x16, x22, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
